; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-blinkm.c_pt.bc'
source_filename = "../drivers/leds/leds-blinkm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.anon.86 = type { i8, i8, i8, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.blinkm_data = type { ptr, %struct.mutex, [3 x %struct.blinkm_led], i8, i8, i8, i8, i8, i8, [7 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.blinkm_led = type { ptr, %struct.led_classdev, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_leds_blinkm__291_742_blinkm_driver_init6 = internal global ptr @blinkm_driver_init, section ".initcall6.init", align 4
@blinkm_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr @blinkm_probe, ptr @blinkm_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @blinkm_id, ptr @blinkm_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_blinkm_driver_exit = internal global ptr @blinkm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author292 = internal constant [52 x i8] c"leds_blinkm.author=Jan-Simon Moeller <dl9pf@gmx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [46 x i8] c"leds_blinkm.description=BlinkM RGB LED driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [42 x i8] c"leds_blinkm.file=drivers/leds/leds-blinkm\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [24 x i8] c"leds_blinkm.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"blinkm\00", [25 x i8] zeroinitializer }, align 32
@blinkm_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"blinkm\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [2 x i16], [28 x i8] } { [2 x i16] [i16 9, i16 -2], [28 x i8] zeroinitializer }, align 32
@blinkm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@blinkm_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str, ptr null, ptr null, ptr @blinkm_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@blinkm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 597, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"couldn't register sysfs group\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"blinkm_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/leds/leds-blinkm.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@blinkm_probe._entry_ptr = internal global ptr @blinkm_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"blinkm-%d-%d-red\00", [47 x i8] zeroinitializer }, align 32
@blinkm_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 622, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"couldn't register LED %s\0A\00", [38 x i8] zeroinitializer }, align 32
@blinkm_probe._entry_ptr.10 = internal global ptr @blinkm_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"blinkm-%d-%d-green\00", [45 x i8] zeroinitializer }, align 32
@blinkm_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 639, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@blinkm_probe._entry_ptr.13 = internal global ptr @blinkm_probe._entry.12, section ".printk_index", align 4
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"blinkm-%d-%d-blue\00", [46 x i8] zeroinitializer }, align 32
@blinkm_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 656, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@blinkm_probe._entry_ptr.16 = internal global ptr @blinkm_probe._entry.15, section ".printk_index", align 4
@blinkm_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_red, ptr @dev_attr_green, ptr @dev_attr_blue, ptr @dev_attr_test, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_red = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @red_show, ptr @red_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_green = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @green_show, ptr @green_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_blue = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @blue_show, ptr @blue_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_test = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @test_show, ptr @test_store }, [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"red\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02X\0A\00", [26 x i8] zeroinitializer }, align 32
@blinkm_transfer_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 409, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"BlinkM: cmd %d not implemented yet.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"blinkm_transfer_hw\00", [45 x i8] zeroinitializer }, align 32
@blinkm_transfer_hw._entry_ptr = internal global ptr @blinkm_transfer_hw._entry, section ".printk_index", align 4
@blinkm_transfer_hw._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.4, i32 412, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"BlinkM: unknown command %d\0A\00", [36 x i8] zeroinitializer }, align 32
@blinkm_transfer_hw._entry_ptr.23 = internal global ptr @blinkm_transfer_hw._entry.21, section ".printk_index", align 4
@blinkm_cmds = internal constant { [17 x %struct.anon.86], [43 x i8] } { [17 x %struct.anon.86] [%struct.anon.86 { i8 110, i8 110, i8 3, i8 0, i8 64 }, %struct.anon.86 { i8 99, i8 99, i8 3, i8 0, i8 64 }, %struct.anon.86 { i8 104, i8 104, i8 3, i8 0, i8 64 }, %struct.anon.86 { i8 67, i8 67, i8 3, i8 0, i8 64 }, %struct.anon.86 { i8 72, i8 72, i8 3, i8 0, i8 64 }, %struct.anon.86 { i8 112, i8 112, i8 3, i8 0, i8 64 }, %struct.anon.86 { i8 111, i8 111, i8 0, i8 0, i8 64 }, %struct.anon.86 { i8 102, i8 102, i8 1, i8 0, i8 64 }, %struct.anon.86 { i8 116, i8 116, i8 1, i8 0, i8 64 }, %struct.anon.86 { i8 103, i8 103, i8 0, i8 3, i8 0 }, %struct.anon.86 { i8 87, i8 87, i8 7, i8 0, i8 64 }, %struct.anon.86 { i8 82, i8 82, i8 2, i8 5, i8 -128 }, %struct.anon.86 { i8 76, i8 76, i8 3, i8 0, i8 64 }, %struct.anon.86 { i8 65, i8 65, i8 4, i8 0, i8 64 }, %struct.anon.86 { i8 97, i8 97, i8 0, i8 1, i8 0 }, %struct.anon.86 { i8 90, i8 90, i8 0, i8 1, i8 0 }, %struct.anon.86 { i8 66, i8 66, i8 5, i8 0, i8 64 }], [43 x i8] zeroinitializer }, align 32
@store_color_common._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 165, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"BlinkM: value too large!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"store_color_common\00", [45 x i8] zeroinitializer }, align 32
@store_color_common._entry_ptr = internal global ptr @store_color_common._entry, section ".printk_index", align 4
@store_color_common.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.25, ptr @.str.4, ptr @.str.27, i8 0, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"leds_blinkm\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"next_red = %d, next_green = %d, next_blue = %d\0A\00", [48 x i8] zeroinitializer }, align 32
@store_color_common._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.25, ptr @.str.4, i32 189, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"BlinkM: can't set RGB\0A\00", [41 x i8] zeroinitializer }, align 32
@store_color_common._entry_ptr.30 = internal global ptr @store_color_common._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"green\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"blue\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"test\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"#Write into test to start test sequence!#\0A\00", [53 x i8] zeroinitializer }, align 32
@blinkm_led_common_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 450, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"BlinkM: unknown color.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"blinkm_led_common_set\00", [42 x i8] zeroinitializer }, align 32
@blinkm_led_common_set._entry_ptr = internal global ptr @blinkm_led_common_set._entry, section ".printk_index", align 4
@blinkm_led_common_set.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.36, ptr @.str.4, ptr @.str.37, i8 0, i8 114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"# DONE # next_red = %d, next_green = %d, next_blue = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@blinkm_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 696, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failure in blinkm_remove ignored. Continuing.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"blinkm_remove\00", [18 x i8] zeroinitializer }, align 32
@blinkm_remove._entry_ptr = internal global ptr @blinkm_remove._entry, section ".printk_index", align 4
@blinkm_remove._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 704, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@blinkm_remove._entry_ptr.41 = internal global ptr @blinkm_remove._entry.40, section ".printk_index", align 4
@blinkm_remove._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 710, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@blinkm_remove._entry_ptr.43 = internal global ptr @blinkm_remove._entry.42, section ".printk_index", align 4
@blinkm_remove._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 716, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@blinkm_remove._entry_ptr.45 = internal global ptr @blinkm_remove._entry.44, section ".printk_index", align 4
@blinkm_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.4, i32 560, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"enodev DEV ADDR = 0x%02X\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"blinkm_detect\00", [18 x i8] zeroinitializer }, align 32
@blinkm_detect._entry_ptr = internal global ptr @blinkm_detect._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [18 x i64] [i64 16, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 15, i64 16]
@___asan_gen_.48 = private unnamed_addr constant [14 x i8] c"blinkm_driver\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 730, i32 26 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 733, i32 14 }
@___asan_gen_.54 = private unnamed_addr constant [10 x i8] c"blinkm_id\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 722, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 20, i32 29 }
@___asan_gen_.60 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 592, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [13 x i8] c"blinkm_group\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 288, i32 37 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 597, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 611, i32 7 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 620, i32 5 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 628, i32 7 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 637, i32 5 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 645, i32 7 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 654, i32 5 }
@___asan_gen_.108 = private unnamed_addr constant [13 x i8] c"blinkm_attrs\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 280, i32 26 }
@___asan_gen_.111 = private unnamed_addr constant [13 x i8] c"dev_attr_red\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [15 x i8] c"dev_attr_green\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [14 x i8] c"dev_attr_blue\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [14 x i8] c"dev_attr_test\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 212, i32 8 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 142, i32 36 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 408, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 412, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [12 x i8] c"blinkm_cmds\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 107, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 165, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 183, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 189, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 232, i32 8 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 251, i32 8 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 276, i32 8 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 257, i32 5 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 450, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 455, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 696, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 704, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 710, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 716, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.217 = private constant [30 x i8] c"../drivers/leds/leds-blinkm.c\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 560, i32 3 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_blinkm_driver_exit, ptr @__initcall__kmod_leds_blinkm__291_742_blinkm_driver_init6, ptr @blinkm_detect._entry, ptr @blinkm_detect._entry_ptr, ptr @blinkm_driver_exit, ptr @blinkm_led_common_set._entry, ptr @blinkm_led_common_set._entry_ptr, ptr @blinkm_probe._entry, ptr @blinkm_probe._entry.12, ptr @blinkm_probe._entry.15, ptr @blinkm_probe._entry.8, ptr @blinkm_probe._entry_ptr, ptr @blinkm_probe._entry_ptr.10, ptr @blinkm_probe._entry_ptr.13, ptr @blinkm_probe._entry_ptr.16, ptr @blinkm_remove._entry, ptr @blinkm_remove._entry.40, ptr @blinkm_remove._entry.42, ptr @blinkm_remove._entry.44, ptr @blinkm_remove._entry_ptr, ptr @blinkm_remove._entry_ptr.41, ptr @blinkm_remove._entry_ptr.43, ptr @blinkm_remove._entry_ptr.45, ptr @blinkm_transfer_hw._entry, ptr @blinkm_transfer_hw._entry.21, ptr @blinkm_transfer_hw._entry_ptr, ptr @blinkm_transfer_hw._entry_ptr.23, ptr @store_color_common._entry, ptr @store_color_common._entry.28, ptr @store_color_common._entry_ptr, ptr @store_color_common._entry_ptr.30, ptr @blinkm_driver, ptr @.str, ptr @blinkm_id, ptr @normal_i2c, ptr @blinkm_probe.__key, ptr @.str.1, ptr @blinkm_group, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @blinkm_attrs, ptr @dev_attr_red, ptr @dev_attr_green, ptr @dev_attr_blue, ptr @dev_attr_test, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @blinkm_cmds, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.46, ptr @.str.47], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blinkm_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blinkm_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blinkm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blinkm_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blinkm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blinkm_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blinkm_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blinkm_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blinkm_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_red to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_green to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_blue to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_test to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blinkm_transfer_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blinkm_transfer_hw._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blinkm_cmds to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @store_color_common._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @store_color_common._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blinkm_led_common_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blinkm_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blinkm_remove._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blinkm_remove._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blinkm_remove._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blinkm_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @blinkm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @blinkm_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @blinkm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @blinkm_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blinkm_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %led = alloca [3 x ptr], align 4
  %blinkm_led_name = alloca [28 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %led) #8
  %0 = ptrtoint ptr %led to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %led, align 4, !annotation !125
  %1 = getelementptr inbounds [3 x ptr], ptr %led, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !125
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %blinkm_led_name) #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %3 = call ptr @memset(ptr %blinkm_led_name, i32 255, i32 28)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1348, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %i2c_addr = getelementptr inbounds %struct.blinkm_data, ptr %call.i, i32 0, i32 10
  %4 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 8, ptr %i2c_addr, align 1
  %fw_ver = getelementptr inbounds %struct.blinkm_data, ptr %call.i, i32 0, i32 11
  %5 = ptrtoint ptr %fw_ver to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -2, ptr %fw_ver, align 2
  %script_id = getelementptr inbounds %struct.blinkm_data, ptr %call.i, i32 0, i32 21
  %6 = ptrtoint ptr %script_id to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %script_id, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %client, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %update_lock = getelementptr inbounds %struct.blinkm_data, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @blinkm_probe.__key) #8
  %call2 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @blinkm_group) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end6, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %adapter70 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %addr72 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %led_cdev48 = getelementptr %struct.blinkm_data, ptr %call.i, i32 0, i32 2, i32 1, i32 1
  %brightness_set_blocking52 = getelementptr %struct.blinkm_data, ptr %call.i, i32 0, i32 2, i32 1, i32 1, i32 6
  %led_cdev21 = getelementptr %struct.blinkm_data, ptr %call.i, i32 0, i32 2, i32 0, i32 1
  %brightness_set_blocking = getelementptr %struct.blinkm_data, ptr %call.i, i32 0, i32 2, i32 0, i32 1, i32 6
  %arrayidx = getelementptr %struct.blinkm_data, ptr %call.i, i32 0, i32 2, i32 0
  %9 = ptrtoint ptr %led to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx, ptr %led, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %client, ptr %arrayidx, align 4
  %id14 = getelementptr %struct.blinkm_data, ptr %call.i, i32 0, i32 2, i32 0, i32 2
  %11 = ptrtoint ptr %id14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %id14, align 4
  %max_brightness = getelementptr %struct.blinkm_data, ptr %call.i, i32 0, i32 2, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 255, ptr %max_brightness, align 4
  %flags = getelementptr %struct.blinkm_data, ptr %call.i, i32 0, i32 2, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 65536, ptr %flags, align 4
  %14 = ptrtoint ptr %adapter70 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter70, align 8
  %nr = getelementptr inbounds %struct.i2c_adapter, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr, align 4
  %18 = ptrtoint ptr %addr72 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %addr72, align 2
  %conv = zext i16 %19 to i32
  %call18 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %blinkm_led_name, i32 noundef 28, ptr noundef nonnull @.str.7, i32 noundef %17, i32 noundef %conv)
  %20 = ptrtoint ptr %led_cdev21 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %blinkm_led_name, ptr %led_cdev21, align 4
  %21 = ptrtoint ptr %brightness_set_blocking to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @blinkm_led_red_set, ptr %brightness_set_blocking, align 4
  %call.i158 = call i32 @led_classdev_register_ext(ptr noundef %dev, ptr noundef %led_cdev21, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158)
  %cmp28 = icmp slt i32 %call.i158, 0
  br i1 %cmp28, label %do.end33, label %for.inc

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #11
  br label %cleanup

do.end33:                                         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %led_cdev21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %led_cdev21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef %23) #11
  br label %failred

do.end62:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %led_cdev48 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %led_cdev48, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef %25) #11
  br label %failgreen

do.end91:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %led_cdev77 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %led_cdev77, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef %27) #11
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %led_cdev98 = getelementptr inbounds %struct.blinkm_led, ptr %29, i32 0, i32 1
  call void @led_classdev_unregister(ptr noundef %led_cdev98) #8
  br label %failgreen

for.inc:                                          ; preds = %for.cond.preheader
  %arrayidx.1 = getelementptr %struct.blinkm_data, ptr %call.i, i32 0, i32 2, i32 1
  %arrayidx10.1 = getelementptr inbounds [3 x ptr], ptr %led, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %arrayidx.1, ptr %arrayidx10.1, align 4
  %31 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %client, ptr %arrayidx.1, align 4
  %id14.1 = getelementptr %struct.blinkm_data, ptr %call.i, i32 0, i32 2, i32 1, i32 2
  %32 = ptrtoint ptr %id14.1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %id14.1, align 4
  %max_brightness.1 = getelementptr %struct.blinkm_data, ptr %call.i, i32 0, i32 2, i32 1, i32 1, i32 2
  %33 = ptrtoint ptr %max_brightness.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 255, ptr %max_brightness.1, align 4
  %flags.1 = getelementptr %struct.blinkm_data, ptr %call.i, i32 0, i32 2, i32 1, i32 1, i32 3
  %34 = ptrtoint ptr %flags.1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 65536, ptr %flags.1, align 4
  %35 = ptrtoint ptr %adapter70 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adapter70, align 8
  %nr42.1 = getelementptr inbounds %struct.i2c_adapter, ptr %36, i32 0, i32 11
  %37 = ptrtoint ptr %nr42.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nr42.1, align 4
  %39 = ptrtoint ptr %addr72 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %addr72, align 2
  %conv44.1 = zext i16 %40 to i32
  %call45.1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %blinkm_led_name, i32 noundef 28, ptr noundef nonnull @.str.11, i32 noundef %38, i32 noundef %conv44.1)
  %41 = ptrtoint ptr %led_cdev48 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %blinkm_led_name, ptr %led_cdev48, align 4
  %42 = ptrtoint ptr %brightness_set_blocking52 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @blinkm_led_green_set, ptr %brightness_set_blocking52, align 4
  %call.i159.1 = call i32 @led_classdev_register_ext(ptr noundef %dev, ptr noundef %led_cdev48, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i159.1)
  %cmp57.1 = icmp slt i32 %call.i159.1, 0
  br i1 %cmp57.1, label %do.end62, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.blinkm_data, ptr %call.i, i32 0, i32 2, i32 2
  %arrayidx10.2 = getelementptr inbounds [3 x ptr], ptr %led, i32 0, i32 2
  %43 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %arrayidx.2, ptr %arrayidx10.2, align 4
  %44 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %client, ptr %arrayidx.2, align 4
  %id14.2 = getelementptr %struct.blinkm_data, ptr %call.i, i32 0, i32 2, i32 2, i32 2
  %45 = ptrtoint ptr %id14.2 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %id14.2, align 4
  %max_brightness.2 = getelementptr %struct.blinkm_data, ptr %call.i, i32 0, i32 2, i32 2, i32 1, i32 2
  %46 = ptrtoint ptr %max_brightness.2 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 255, ptr %max_brightness.2, align 4
  %flags.2 = getelementptr %struct.blinkm_data, ptr %call.i, i32 0, i32 2, i32 2, i32 1, i32 3
  %47 = ptrtoint ptr %flags.2 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 65536, ptr %flags.2, align 4
  %48 = ptrtoint ptr %adapter70 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %adapter70, align 8
  %nr71 = getelementptr inbounds %struct.i2c_adapter, ptr %49, i32 0, i32 11
  %50 = ptrtoint ptr %nr71 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nr71, align 4
  %52 = ptrtoint ptr %addr72 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %addr72, align 2
  %conv73 = zext i16 %53 to i32
  %call74 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %blinkm_led_name, i32 noundef 28, ptr noundef nonnull @.str.14, i32 noundef %51, i32 noundef %conv73)
  %led_cdev77 = getelementptr %struct.blinkm_data, ptr %call.i, i32 0, i32 2, i32 2, i32 1
  %54 = ptrtoint ptr %led_cdev77 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %blinkm_led_name, ptr %led_cdev77, align 4
  %brightness_set_blocking81 = getelementptr %struct.blinkm_data, ptr %call.i, i32 0, i32 2, i32 2, i32 1, i32 6
  %55 = ptrtoint ptr %brightness_set_blocking81 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @blinkm_led_blue_set, ptr %brightness_set_blocking81, align 4
  %call.i160 = call i32 @led_classdev_register_ext(ptr noundef %dev, ptr noundef %led_cdev77, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160)
  %cmp86 = icmp slt i32 %call.i160, 0
  br i1 %cmp86, label %do.end91, label %for.end

for.end:                                          ; preds = %for.inc.1
  %56 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %driver_data.i.i, align 4
  %update_lock.i.i = getelementptr inbounds %struct.blinkm_data, ptr %57, i32 0, i32 1
  %call1.i.i = call i32 @mutex_lock_interruptible_nested(ptr noundef %update_lock.i.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %for.end.blinkm_init_hw.exit_crit_edge, label %if.end.i.i

for.end.blinkm_init_hw.exit_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %blinkm_init_hw.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i186.i.i = call i32 @i2c_smbus_write_byte(ptr noundef %client, i8 noundef zeroext 111) #8
  call void @mutex_unlock(ptr noundef %update_lock.i.i) #8
  br label %blinkm_init_hw.exit

blinkm_init_hw.exit:                              ; preds = %if.end.i.i, %for.end.blinkm_init_hw.exit_crit_edge
  %call1.i = call fastcc i32 @blinkm_transfer_hw(ptr noundef %client, i32 noundef 0) #8
  br label %cleanup

failgreen:                                        ; preds = %do.end91, %do.end62
  %err.0 = phi i32 [ %call.i160, %do.end91 ], [ %call.i159.1, %do.end62 ]
  %58 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %led, align 4
  %led_cdev100 = getelementptr inbounds %struct.blinkm_led, ptr %59, i32 0, i32 1
  call void @led_classdev_unregister(ptr noundef %led_cdev100) #8
  br label %failred

failred:                                          ; preds = %failgreen, %do.end33
  %err.1 = phi i32 [ %err.0, %failgreen ], [ %call.i158, %do.end33 ]
  call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @blinkm_group) #8
  br label %cleanup

cleanup:                                          ; preds = %failred, %blinkm_init_hw.exit, %do.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %blinkm_init_hw.exit ], [ %call2, %do.end6 ], [ %err.1, %failred ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %blinkm_led_name) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %led) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blinkm_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %led_cdev = getelementptr %struct.blinkm_data, ptr %1, i32 0, i32 2, i32 0, i32 1
  tail call void @led_classdev_unregister(ptr noundef %led_cdev) #8
  %led_cdev.1 = getelementptr %struct.blinkm_data, ptr %1, i32 0, i32 2, i32 1, i32 1
  tail call void @led_classdev_unregister(ptr noundef %led_cdev.1) #8
  %led_cdev.2 = getelementptr %struct.blinkm_data, ptr %1, i32 0, i32 2, i32 2, i32 1
  tail call void @led_classdev_unregister(ptr noundef %led_cdev.2) #8
  %next_red = getelementptr inbounds %struct.blinkm_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %next_red to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %next_red, align 1
  %next_green = getelementptr inbounds %struct.blinkm_data, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %next_green to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %next_green, align 4
  %next_blue = getelementptr inbounds %struct.blinkm_data, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %next_blue to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %next_blue, align 1
  %call1 = tail call fastcc i32 @blinkm_transfer_hw(ptr noundef %client, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %next_hue = getelementptr inbounds %struct.blinkm_data, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %next_hue to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %next_hue, align 2
  %next_saturation = getelementptr inbounds %struct.blinkm_data, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %next_saturation to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %next_saturation, align 1
  %next_brightness = getelementptr inbounds %struct.blinkm_data, ptr %1, i32 0, i32 17
  %7 = ptrtoint ptr %next_brightness to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %next_brightness, align 4
  %call3 = tail call fastcc i32 @blinkm_transfer_hw(ptr noundef %client, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end8, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev9 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.38) #11
  br label %if.end10

if.end10:                                         ; preds = %do.end8, %if.end.if.end10_crit_edge
  %8 = ptrtoint ptr %next_red to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %next_red, align 1
  %call12 = tail call fastcc i32 @blinkm_transfer_hw(ptr noundef %client, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end17, label %if.end10.if.end19_crit_edge

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %dev18 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.38) #11
  br label %if.end19

if.end19:                                         ; preds = %do.end17, %if.end10.if.end19_crit_edge
  %9 = ptrtoint ptr %next_red to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %next_red, align 1
  %call21 = tail call fastcc i32 @blinkm_transfer_hw(ptr noundef %client, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %do.end26, label %if.end19.if.end28_crit_edge

if.end19.if.end28_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

do.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %dev27 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull @.str.38) #11
  br label %if.end28

if.end28:                                         ; preds = %do.end26, %if.end19.if.end28_crit_edge
  %dev29 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @sysfs_remove_group(ptr noundef %dev29, ptr noundef nonnull @blinkm_group) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blinkm_detect(ptr noundef %client, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #8
  %and.i = and i32 %call.i.i, 8126464
  call void @__sanitizer_cov_trace_const_cmp4(i32 8126464, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 8126464
  br i1 %cmp.i.not, label %entry.while.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end.i53.while.body_crit_edge, %entry.while.body_crit_edge
  %count.084 = phi i32 [ %count.0.op, %if.end.i53.while.body_crit_edge ], [ 99, %entry.while.body_crit_edge ]
  %call.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %client, i8 noundef zeroext 97) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i51 = icmp slt i32 %call.i, 0
  br i1 %cmp.i51, label %while.body.cleanup_crit_edge, label %if.end5

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %while.body
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #8
  %call.i52 = tail call i32 @i2c_smbus_read_byte(ptr noundef %client) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %cmp2.i = icmp slt i32 %call.i52, 0
  br i1 %cmp2.i, label %if.end5.cleanup_crit_edge, label %if.end.i53

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i53:                                       ; preds = %if.end5
  %conv4.i = trunc i32 %call.i52 to i8
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %conv4.i)
  %cmp10 = icmp ne i8 %conv4.i, 9
  %count.0.op = add nsw i32 %count.084, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.084)
  %cmp91 = icmp sgt i32 %count.084, 1
  %cmp = select i1 %cmp10, i1 %cmp91, i1 false
  br i1 %cmp, label %if.end.i53.while.body_crit_edge, label %while.end

if.end.i53.while.body_crit_edge:                  ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end.i53
  %call.i55 = tail call i32 @i2c_smbus_write_byte(ptr noundef %client, i8 noundef zeroext 97) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %cmp.i56 = icmp slt i32 %call.i55, 0
  br i1 %cmp.i56, label %while.end.cleanup_crit_edge, label %if.end18

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %while.end
  tail call void @usleep_range_state(i32 noundef 20000, i32 noundef 30000, i32 noundef 2) #8
  %call.i61 = tail call i32 @i2c_smbus_read_byte(ptr noundef %client) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %cmp2.i62 = icmp slt i32 %call.i61, 0
  br i1 %cmp2.i62, label %if.end18.cleanup_crit_edge, label %if.end.i68

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i68:                                       ; preds = %if.end18
  %conv4.i64 = trunc i32 %call.i61 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %conv4.i64)
  %cmp27.not = icmp eq i8 %conv4.i64, 9
  br i1 %cmp27.not, label %if.end32, label %do.end

do.end:                                           ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #10
  %conv26 = and i32 %call.i61, 255
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46, i32 noundef %conv26) #11
  br label %cleanup

if.end32:                                         ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #10
  %call34 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull @.str, i32 noundef 20) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %do.end, %if.end18.cleanup_crit_edge, %while.end.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.end32 ], [ -19, %entry.cleanup_crit_edge ], [ %call.i55, %while.end.cleanup_crit_edge ], [ %call.i61, %if.end18.cleanup_crit_edge ], [ %call.i, %while.body.cleanup_crit_edge ], [ %call.i52, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blinkm_led_red_set(ptr nocapture noundef readonly %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %led_cdev, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %next_red.i = getelementptr inbounds %struct.blinkm_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %next_red.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %next_red.i, align 1
  %6 = trunc i32 %value to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %6)
  %cmp.i = icmp eq i8 %5, %6
  br i1 %cmp.i, label %entry.blinkm_led_common_set.exit_crit_edge, label %if.end.i

entry.blinkm_led_common_set.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %blinkm_led_common_set.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %next_red.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %next_red.i, align 1
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  %call28.i = tail call fastcc i32 @blinkm_transfer_hw(ptr noundef %9, i32 noundef 0) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @blinkm_led_common_set.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@blinkm_led_red_set, %if.then34.i)) #8
          to label %blinkm_led_common_set.exit [label %if.then34.i], !srcloc !126

if.then34.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  %dev36.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %next_red.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %next_red.i, align 1
  %conv38.i = zext i8 %13 to i32
  %next_green39.i = getelementptr inbounds %struct.blinkm_data, ptr %3, i32 0, i32 7
  %14 = ptrtoint ptr %next_green39.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %next_green39.i, align 4
  %conv40.i = zext i8 %15 to i32
  %next_blue41.i = getelementptr inbounds %struct.blinkm_data, ptr %3, i32 0, i32 8
  %16 = ptrtoint ptr %next_blue41.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %next_blue41.i, align 1
  %conv42.i = zext i8 %17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @blinkm_led_common_set.__UNIQUE_ID_ddebug290, ptr noundef %dev36.i, ptr noundef nonnull @.str.37, i32 noundef %conv38.i, i32 noundef %conv40.i, i32 noundef %conv42.i) #8
  br label %blinkm_led_common_set.exit

blinkm_led_common_set.exit:                       ; preds = %if.then34.i, %if.end.i, %entry.blinkm_led_common_set.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blinkm_led_green_set(ptr nocapture noundef readonly %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %led_cdev, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %next_green.i = getelementptr inbounds %struct.blinkm_data, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %next_green.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %next_green.i, align 4
  %6 = trunc i32 %value to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %6)
  %cmp10.i = icmp eq i8 %5, %6
  br i1 %cmp10.i, label %entry.blinkm_led_common_set.exit_crit_edge, label %if.end13.i

entry.blinkm_led_common_set.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %blinkm_led_common_set.exit

if.end13.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %next_green.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %next_green.i, align 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  %call28.i = tail call fastcc i32 @blinkm_transfer_hw(ptr noundef %9, i32 noundef 0) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @blinkm_led_common_set.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@blinkm_led_green_set, %if.then34.i)) #8
          to label %blinkm_led_common_set.exit [label %if.then34.i], !srcloc !126

if.then34.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  %dev36.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  %next_red37.i = getelementptr inbounds %struct.blinkm_data, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %next_red37.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %next_red37.i, align 1
  %conv38.i = zext i8 %13 to i32
  %14 = ptrtoint ptr %next_green.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %next_green.i, align 4
  %conv40.i = zext i8 %15 to i32
  %next_blue41.i = getelementptr inbounds %struct.blinkm_data, ptr %3, i32 0, i32 8
  %16 = ptrtoint ptr %next_blue41.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %next_blue41.i, align 1
  %conv42.i = zext i8 %17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @blinkm_led_common_set.__UNIQUE_ID_ddebug290, ptr noundef %dev36.i, ptr noundef nonnull @.str.37, i32 noundef %conv38.i, i32 noundef %conv40.i, i32 noundef %conv42.i) #8
  br label %blinkm_led_common_set.exit

blinkm_led_common_set.exit:                       ; preds = %if.then34.i, %if.end13.i, %entry.blinkm_led_common_set.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blinkm_led_blue_set(ptr nocapture noundef readonly %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %led_cdev, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %next_blue.i = getelementptr inbounds %struct.blinkm_data, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %next_blue.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %next_blue.i, align 1
  %6 = trunc i32 %value to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %6)
  %cmp20.i = icmp eq i8 %5, %6
  br i1 %cmp20.i, label %entry.blinkm_led_common_set.exit_crit_edge, label %if.end23.i

entry.blinkm_led_common_set.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %blinkm_led_common_set.exit

if.end23.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %next_blue.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %next_blue.i, align 1
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  %call28.i = tail call fastcc i32 @blinkm_transfer_hw(ptr noundef %9, i32 noundef 0) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @blinkm_led_common_set.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@blinkm_led_blue_set, %if.then34.i)) #8
          to label %blinkm_led_common_set.exit [label %if.then34.i], !srcloc !126

if.then34.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  %dev36.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  %next_red37.i = getelementptr inbounds %struct.blinkm_data, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %next_red37.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %next_red37.i, align 1
  %conv38.i = zext i8 %13 to i32
  %next_green39.i = getelementptr inbounds %struct.blinkm_data, ptr %3, i32 0, i32 7
  %14 = ptrtoint ptr %next_green39.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %next_green39.i, align 4
  %conv40.i = zext i8 %15 to i32
  %16 = ptrtoint ptr %next_blue.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %next_blue.i, align 1
  %conv42.i = zext i8 %17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @blinkm_led_common_set.__UNIQUE_ID_ddebug290, ptr noundef %dev36.i, ptr noundef nonnull @.str.37, i32 noundef %conv38.i, i32 noundef %conv40.i, i32 noundef %conv42.i) #8
  br label %blinkm_led_common_set.exit

blinkm_led_common_set.exit:                       ; preds = %if.then34.i, %if.end23.i, %entry.blinkm_led_common_set.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @red_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1.i = tail call fastcc i32 @blinkm_transfer_hw(ptr noundef %add.ptr.i, i32 noundef 9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %entry.show_color_common.exit_crit_edge, label %if.end.i

entry.show_color_common.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %show_color_common.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %red.i = getelementptr inbounds %struct.blinkm_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %red.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %.sink.i = load i8, ptr %red.i, align 1
  %conv7.i = zext i8 %.sink.i to i32
  %call8.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.18, i32 noundef %conv7.i) #8
  br label %show_color_common.exit

show_color_common.exit:                           ; preds = %if.end.i, %entry.show_color_common.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %entry.show_color_common.exit_crit_edge ], [ %call8.i, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @red_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %value.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #8
  %0 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %value.i, align 1, !annotation !125
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %1 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1.i = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %entry._crit_edge, label %if.end.i

entry._crit_edge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %12

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %value.i, align 1
  %next_red.i = getelementptr inbounds %struct.blinkm_data, ptr %2, i32 0, i32 6
  %5 = ptrtoint ptr %next_red.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %next_red.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @store_color_common.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@red_store, %if.then9.i)) #8
          to label %do.end17.i [label %if.then9.i], !srcloc !126

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %next_red.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %next_red.i, align 1
  %conv.i = zext i8 %7 to i32
  %next_green11.i = getelementptr inbounds %struct.blinkm_data, ptr %2, i32 0, i32 7
  %8 = ptrtoint ptr %next_green11.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %next_green11.i, align 4
  %conv12.i = zext i8 %9 to i32
  %next_blue13.i = getelementptr inbounds %struct.blinkm_data, ptr %2, i32 0, i32 8
  %10 = ptrtoint ptr %next_blue13.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %next_blue13.i, align 1
  %conv14.i = zext i8 %11 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @store_color_common.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %conv.i, i32 noundef %conv12.i, i32 noundef %conv14.i) #8
  br label %do.end17.i

do.end17.i:                                       ; preds = %if.then9.i, %if.end.i
  %call18.i = call fastcc i32 @blinkm_transfer_hw(ptr noundef %add.ptr.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %do.end17.i._crit_edge, label %store_color_common.exit

do.end17.i._crit_edge:                            ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %12

store_color_common.exit:                          ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #8
  br label %13

12:                                               ; preds = %do.end17.i._crit_edge, %entry._crit_edge
  %.str.29.sink.i = phi ptr [ @.str.24, %entry._crit_edge ], [ @.str.29, %do.end17.i._crit_edge ]
  %retval.0.ph.i = phi i32 [ %call1.i, %entry._crit_edge ], [ %call18.i, %do.end17.i._crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.29.sink.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #8
  br label %13

13:                                               ; preds = %12, %store_color_common.exit
  %14 = phi i32 [ %retval.0.ph.i, %12 ], [ %count, %store_color_common.exit ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @blinkm_transfer_hw(ptr noundef %client, i32 noundef %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %update_lock = getelementptr inbounds %struct.blinkm_data, ptr %1, i32 0, i32 1
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %update_lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %do.end75 [
    i32 3, label %if.end.sw.bb_crit_edge
    i32 0, label %if.end.sw.bb_crit_edge205
    i32 1, label %if.end.sw.bb_crit_edge206
    i32 2, label %if.end.sw.bb14_crit_edge
    i32 4, label %if.end.sw.bb14_crit_edge207
    i32 5, label %sw.bb27
    i32 6, label %sw.bb37
    i32 9, label %sw.bb39
    i32 16, label %if.end.do.end_crit_edge
    i32 8, label %if.end.do.end_crit_edge208
    i32 7, label %if.end.do.end_crit_edge209
    i32 11, label %if.end.do.end_crit_edge210
    i32 10, label %if.end.do.end_crit_edge211
    i32 12, label %if.end.do.end_crit_edge212
    i32 13, label %if.end.do.end_crit_edge213
    i32 15, label %if.end.do.end_crit_edge214
  ]

if.end.do.end_crit_edge214:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.do.end_crit_edge213:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.do.end_crit_edge212:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.do.end_crit_edge211:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.do.end_crit_edge210:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.do.end_crit_edge209:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.do.end_crit_edge208:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.sw.bb14_crit_edge207:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb14

if.end.sw.bb14_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb14

if.end.sw.bb_crit_edge206:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge205:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge205, %if.end.sw.bb_crit_edge206
  %next_red = getelementptr inbounds %struct.blinkm_data, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %next_red to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %next_red, align 1
  %args = getelementptr inbounds %struct.blinkm_data, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %args, align 2
  %next_green = getelementptr inbounds %struct.blinkm_data, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %next_green to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %next_green, align 4
  %arrayidx3 = getelementptr %struct.blinkm_data, ptr %1, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %arrayidx3, align 1
  %next_blue = getelementptr inbounds %struct.blinkm_data, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %next_blue to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %next_blue, align 1
  %arrayidx5 = getelementptr %struct.blinkm_data, ptr %1, i32 0, i32 9, i32 2
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx5, align 2
  %nr_args.i = getelementptr [17 x %struct.anon.86], ptr @blinkm_cmds, i32 0, i32 %cmd, i32 2
  %12 = ptrtoint ptr %nr_args.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %nr_args.i, align 1
  %cmdbyte.i = getelementptr [17 x %struct.anon.86], ptr @blinkm_cmds, i32 0, i32 %cmd, i32 1
  %14 = ptrtoint ptr %cmdbyte.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cmdbyte.i, align 1
  %call.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %client, i8 noundef zeroext %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.blinkm_write.exit_crit_edge, label %if.end.i

sw.bb.blinkm_write.exit_crit_edge:                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %blinkm_write.exit

if.end.i:                                         ; preds = %sw.bb
  %16 = lshr i32 49728, %cmd
  %17 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp3.not.i = icmp eq i32 %17, 0
  %18 = lshr i32 81343, %cmd
  %19 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp725.i = icmp ne i32 %19, 0
  %or.cond.i = select i1 %cmp3.not.i, i1 %cmp725.i, i1 false
  br i1 %or.cond.i, label %for.body.preheader.i, label %if.end.i.blinkm_write.exit_crit_edge

if.end.i.blinkm_write.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %blinkm_write.exit

for.body.preheader.i:                             ; preds = %if.end.i
  %20 = tail call i8 @llvm.umax.i8(i8 %13, i8 1) #8
  %umax.i = zext i8 %20 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.026.i = phi i32 [ 0, %for.body.preheader.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx9.i = getelementptr i8, ptr %args, i32 %i.026.i
  %21 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx9.i, align 1
  %call10.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %client, i8 noundef zeroext %22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  %inc.i = add nuw nsw i32 %i.026.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %umax.i)
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  %or.cond = select i1 %cmp11.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond, label %for.body.i.blinkm_write.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.blinkm_write.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %blinkm_write.exit

blinkm_write.exit:                                ; preds = %for.body.i.blinkm_write.exit_crit_edge, %if.end.i.blinkm_write.exit_crit_edge, %sw.bb.blinkm_write.exit_crit_edge
  %23 = ptrtoint ptr %args to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %args, align 2
  %red = getelementptr inbounds %struct.blinkm_data, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %red to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %red, align 4
  %26 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx3, align 1
  %green = getelementptr inbounds %struct.blinkm_data, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %green to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %green, align 1
  %29 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx5, align 2
  %blue = getelementptr inbounds %struct.blinkm_data, ptr %1, i32 0, i32 5
  %31 = ptrtoint ptr %blue to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %blue, align 2
  br label %cleanup.sink.split

sw.bb14:                                          ; preds = %if.end.sw.bb14_crit_edge, %if.end.sw.bb14_crit_edge207
  %next_hue = getelementptr inbounds %struct.blinkm_data, ptr %1, i32 0, i32 15
  %32 = ptrtoint ptr %next_hue to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %next_hue, align 2
  %args15 = getelementptr inbounds %struct.blinkm_data, ptr %1, i32 0, i32 9
  %34 = ptrtoint ptr %args15 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %args15, align 2
  %next_saturation = getelementptr inbounds %struct.blinkm_data, ptr %1, i32 0, i32 16
  %35 = ptrtoint ptr %next_saturation to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %next_saturation, align 1
  %arrayidx18 = getelementptr %struct.blinkm_data, ptr %1, i32 0, i32 9, i32 1
  %37 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %arrayidx18, align 1
  %next_brightness = getelementptr inbounds %struct.blinkm_data, ptr %1, i32 0, i32 17
  %38 = ptrtoint ptr %next_brightness to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %next_brightness, align 4
  %arrayidx20 = getelementptr %struct.blinkm_data, ptr %1, i32 0, i32 9, i32 2
  %40 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %arrayidx20, align 2
  %nr_args.i152 = getelementptr [17 x %struct.anon.86], ptr @blinkm_cmds, i32 0, i32 %cmd, i32 2
  %41 = ptrtoint ptr %nr_args.i152 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %nr_args.i152, align 1
  %cmdbyte.i153 = getelementptr [17 x %struct.anon.86], ptr @blinkm_cmds, i32 0, i32 %cmd, i32 1
  %43 = ptrtoint ptr %cmdbyte.i153 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %cmdbyte.i153, align 1
  %call.i154 = tail call i32 @i2c_smbus_write_byte(ptr noundef %client, i8 noundef zeroext %44) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154)
  %cmp.i155 = icmp slt i32 %call.i154, 0
  br i1 %cmp.i155, label %sw.bb14.blinkm_write.exit171_crit_edge, label %if.end.i159

sw.bb14.blinkm_write.exit171_crit_edge:           ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  br label %blinkm_write.exit171

if.end.i159:                                      ; preds = %sw.bb14
  %45 = lshr i32 49728, %cmd
  %46 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp3.not.i156 = icmp eq i32 %46, 0
  %47 = lshr i32 81343, %cmd
  %48 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp725.i157 = icmp ne i32 %48, 0
  %or.cond.i158 = select i1 %cmp3.not.i156, i1 %cmp725.i157, i1 false
  br i1 %or.cond.i158, label %for.body.preheader.i161, label %if.end.i159.blinkm_write.exit171_crit_edge

if.end.i159.blinkm_write.exit171_crit_edge:       ; preds = %if.end.i159
  call void @__sanitizer_cov_trace_pc() #10
  br label %blinkm_write.exit171

for.body.preheader.i161:                          ; preds = %if.end.i159
  %49 = tail call i8 @llvm.umax.i8(i8 %42, i8 1) #8
  %umax.i160 = zext i8 %49 to i32
  br label %for.body.i169

for.body.i169:                                    ; preds = %for.body.i169.for.body.i169_crit_edge, %for.body.preheader.i161
  %i.026.i165 = phi i32 [ 0, %for.body.preheader.i161 ], [ %inc.i162, %for.body.i169.for.body.i169_crit_edge ]
  %arrayidx9.i166 = getelementptr i8, ptr %args15, i32 %i.026.i165
  %50 = ptrtoint ptr %arrayidx9.i166 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx9.i166, align 1
  %call10.i167 = tail call i32 @i2c_smbus_write_byte(ptr noundef %client, i8 noundef zeroext %51) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i167)
  %cmp11.i168 = icmp slt i32 %call10.i167, 0
  %inc.i162 = add nuw nsw i32 %i.026.i165, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i162, i32 %umax.i160)
  %exitcond.not.i163 = icmp eq i32 %inc.i162, %umax.i160
  %or.cond203 = select i1 %cmp11.i168, i1 true, i1 %exitcond.not.i163
  br i1 %or.cond203, label %for.body.i169.blinkm_write.exit171_crit_edge, label %for.body.i169.for.body.i169_crit_edge

for.body.i169.for.body.i169_crit_edge:            ; preds = %for.body.i169
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i169

for.body.i169.blinkm_write.exit171_crit_edge:     ; preds = %for.body.i169
  call void @__sanitizer_cov_trace_pc() #10
  br label %blinkm_write.exit171

blinkm_write.exit171:                             ; preds = %for.body.i169.blinkm_write.exit171_crit_edge, %if.end.i159.blinkm_write.exit171_crit_edge, %sw.bb14.blinkm_write.exit171_crit_edge
  %52 = ptrtoint ptr %next_hue to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %next_hue, align 2
  %hue = getelementptr inbounds %struct.blinkm_data, ptr %1, i32 0, i32 12
  %54 = ptrtoint ptr %hue to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %hue, align 1
  %55 = ptrtoint ptr %next_saturation to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %next_saturation, align 1
  %saturation = getelementptr inbounds %struct.blinkm_data, ptr %1, i32 0, i32 13
  %57 = ptrtoint ptr %saturation to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %saturation, align 4
  %58 = ptrtoint ptr %next_brightness to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %next_brightness, align 4
  %brightness = getelementptr inbounds %struct.blinkm_data, ptr %1, i32 0, i32 14
  %60 = ptrtoint ptr %brightness to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %brightness, align 1
  br label %cleanup.sink.split

sw.bb27:                                          ; preds = %if.end
  %script_id = getelementptr inbounds %struct.blinkm_data, ptr %1, i32 0, i32 21
  %61 = ptrtoint ptr %script_id to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %script_id, align 4
  %args28 = getelementptr inbounds %struct.blinkm_data, ptr %1, i32 0, i32 9
  %63 = ptrtoint ptr %args28 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %args28, align 2
  %script_repeats = getelementptr inbounds %struct.blinkm_data, ptr %1, i32 0, i32 22
  %64 = ptrtoint ptr %script_repeats to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %script_repeats, align 1
  %arrayidx31 = getelementptr %struct.blinkm_data, ptr %1, i32 0, i32 9, i32 1
  %66 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %arrayidx31, align 1
  %script_startline = getelementptr inbounds %struct.blinkm_data, ptr %1, i32 0, i32 23
  %67 = ptrtoint ptr %script_startline to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %script_startline, align 2
  %arrayidx33 = getelementptr %struct.blinkm_data, ptr %1, i32 0, i32 9, i32 2
  %69 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %arrayidx33, align 2
  %call.i172 = tail call i32 @i2c_smbus_write_byte(ptr noundef %client, i8 noundef zeroext 112) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i172)
  %cmp.i173 = icmp slt i32 %call.i172, 0
  br i1 %cmp.i173, label %sw.bb27.cleanup.sink.split_crit_edge, label %for.body.i183

sw.bb27.cleanup.sink.split_crit_edge:             ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

for.body.i183:                                    ; preds = %sw.bb27
  %70 = ptrtoint ptr %args28 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %args28, align 1
  %call10.i181 = tail call i32 @i2c_smbus_write_byte(ptr noundef %client, i8 noundef zeroext %71) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i181)
  %cmp11.i182 = icmp slt i32 %call10.i181, 0
  br i1 %cmp11.i182, label %for.body.i183.cleanup.sink.split_crit_edge, label %for.body.i183.1

for.body.i183.cleanup.sink.split_crit_edge:       ; preds = %for.body.i183
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

for.body.i183.1:                                  ; preds = %for.body.i183
  %arrayidx9.i180.1 = getelementptr %struct.blinkm_data, ptr %1, i32 0, i32 9, i32 1
  %72 = ptrtoint ptr %arrayidx9.i180.1 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx9.i180.1, align 1
  %call10.i181.1 = tail call i32 @i2c_smbus_write_byte(ptr noundef %client, i8 noundef zeroext %73) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i181.1)
  %cmp11.i182.1 = icmp slt i32 %call10.i181.1, 0
  br i1 %cmp11.i182.1, label %for.body.i183.1.cleanup.sink.split_crit_edge, label %for.body.i183.2

for.body.i183.1.cleanup.sink.split_crit_edge:     ; preds = %for.body.i183.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

for.body.i183.2:                                  ; preds = %for.body.i183.1
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx9.i180.2 = getelementptr %struct.blinkm_data, ptr %1, i32 0, i32 9, i32 2
  %74 = ptrtoint ptr %arrayidx9.i180.2 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx9.i180.2, align 1
  %call10.i181.2 = tail call i32 @i2c_smbus_write_byte(ptr noundef %client, i8 noundef zeroext %75) #8
  br label %cleanup.sink.split

sw.bb37:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i186 = tail call i32 @i2c_smbus_write_byte(ptr noundef %client, i8 noundef zeroext 111) #8
  br label %cleanup.sink.split

sw.bb39:                                          ; preds = %if.end
  %red40 = getelementptr inbounds %struct.blinkm_data, ptr %1, i32 0, i32 3
  %76 = ptrtoint ptr %red40 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %red40, align 4
  %args41 = getelementptr inbounds %struct.blinkm_data, ptr %1, i32 0, i32 9
  %78 = ptrtoint ptr %args41 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %args41, align 2
  %green43 = getelementptr inbounds %struct.blinkm_data, ptr %1, i32 0, i32 4
  %79 = ptrtoint ptr %green43 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %green43, align 1
  %arrayidx45 = getelementptr %struct.blinkm_data, ptr %1, i32 0, i32 9, i32 1
  %81 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %arrayidx45, align 1
  %blue46 = getelementptr inbounds %struct.blinkm_data, ptr %1, i32 0, i32 5
  %82 = ptrtoint ptr %blue46 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %blue46, align 2
  %arrayidx48 = getelementptr %struct.blinkm_data, ptr %1, i32 0, i32 9, i32 2
  %84 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %arrayidx48, align 2
  %call.i191 = tail call i32 @i2c_smbus_write_byte(ptr noundef %client, i8 noundef zeroext 103) #8
  %call.i197 = tail call i32 @i2c_smbus_read_byte(ptr noundef %client) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i197)
  %cmp2.i = icmp slt i32 %call.i197, 0
  br i1 %cmp2.i, label %sw.bb39.blinkm_read.exit_crit_edge, label %if.end.i201

sw.bb39.blinkm_read.exit_crit_edge:               ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #10
  br label %blinkm_read.exit

if.end.i201:                                      ; preds = %sw.bb39
  %conv4.i = trunc i32 %call.i197 to i8
  %85 = ptrtoint ptr %args41 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv4.i, ptr %args41, align 1
  %call.i197.1 = tail call i32 @i2c_smbus_read_byte(ptr noundef %client) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i197.1)
  %cmp2.i.1 = icmp slt i32 %call.i197.1, 0
  br i1 %cmp2.i.1, label %if.end.i201.blinkm_read.exit_crit_edge, label %if.end.i201.1

if.end.i201.blinkm_read.exit_crit_edge:           ; preds = %if.end.i201
  call void @__sanitizer_cov_trace_pc() #10
  br label %blinkm_read.exit

if.end.i201.1:                                    ; preds = %if.end.i201
  %conv4.i.1 = trunc i32 %call.i197.1 to i8
  %arrayidx5.i.1 = getelementptr %struct.blinkm_data, ptr %1, i32 0, i32 9, i32 1
  %86 = ptrtoint ptr %arrayidx5.i.1 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv4.i.1, ptr %arrayidx5.i.1, align 1
  %call.i197.2 = tail call i32 @i2c_smbus_read_byte(ptr noundef %client) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i197.2)
  %cmp2.i.2 = icmp slt i32 %call.i197.2, 0
  br i1 %cmp2.i.2, label %if.end.i201.1.blinkm_read.exit_crit_edge, label %if.end.i201.2

if.end.i201.1.blinkm_read.exit_crit_edge:         ; preds = %if.end.i201.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %blinkm_read.exit

if.end.i201.2:                                    ; preds = %if.end.i201.1
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.2 = trunc i32 %call.i197.2 to i8
  %arrayidx5.i.2 = getelementptr %struct.blinkm_data, ptr %1, i32 0, i32 9, i32 2
  %87 = ptrtoint ptr %arrayidx5.i.2 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv4.i.2, ptr %arrayidx5.i.2, align 1
  br label %blinkm_read.exit

blinkm_read.exit:                                 ; preds = %if.end.i201.2, %if.end.i201.1.blinkm_read.exit_crit_edge, %if.end.i201.blinkm_read.exit_crit_edge, %sw.bb39.blinkm_read.exit_crit_edge
  %88 = ptrtoint ptr %args41 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %args41, align 2
  %90 = ptrtoint ptr %red40 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %red40, align 4
  %91 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx45, align 1
  %93 = ptrtoint ptr %green43 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %green43, align 1
  %94 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx48, align 2
  %96 = ptrtoint ptr %blue46 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %blue46, align 2
  br label %cleanup.sink.split

do.end:                                           ; preds = %if.end.do.end_crit_edge, %if.end.do.end_crit_edge208, %if.end.do.end_crit_edge209, %if.end.do.end_crit_edge210, %if.end.do.end_crit_edge211, %if.end.do.end_crit_edge212, %if.end.do.end_crit_edge213, %if.end.do.end_crit_edge214
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %cmd) #11
  br label %cleanup.sink.split

do.end75:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev76 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev76, ptr noundef nonnull @.str.22, i32 noundef %cmd) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end75, %do.end, %blinkm_read.exit, %sw.bb37, %for.body.i183.2, %for.body.i183.1.cleanup.sink.split_crit_edge, %for.body.i183.cleanup.sink.split_crit_edge, %sw.bb27.cleanup.sink.split_crit_edge, %blinkm_write.exit171, %blinkm_write.exit
  %retval.0.ph = phi i32 [ -22, %do.end75 ], [ 0, %sw.bb37 ], [ 0, %sw.bb27.cleanup.sink.split_crit_edge ], [ 0, %do.end ], [ 0, %blinkm_read.exit ], [ 0, %blinkm_write.exit171 ], [ 0, %blinkm_write.exit ], [ 0, %for.body.i183.2 ], [ 0, %for.body.i183.1.cleanup.sink.split_crit_edge ], [ 0, %for.body.i183.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @green_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1.i = tail call fastcc i32 @blinkm_transfer_hw(ptr noundef %add.ptr.i, i32 noundef 9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %entry.show_color_common.exit_crit_edge, label %if.end.i

entry.show_color_common.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %show_color_common.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %green.i = getelementptr inbounds %struct.blinkm_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %green.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %.sink.i = load i8, ptr %green.i, align 1
  %conv7.i = zext i8 %.sink.i to i32
  %call8.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.18, i32 noundef %conv7.i) #8
  br label %show_color_common.exit

show_color_common.exit:                           ; preds = %if.end.i, %entry.show_color_common.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %entry.show_color_common.exit_crit_edge ], [ %call8.i, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @green_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %value.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #8
  %0 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %value.i, align 1, !annotation !125
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %1 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1.i = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %entry._crit_edge, label %if.end.i

entry._crit_edge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %12

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %value.i, align 1
  %next_green.i = getelementptr inbounds %struct.blinkm_data, ptr %2, i32 0, i32 7
  %5 = ptrtoint ptr %next_green.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %next_green.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @store_color_common.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@green_store, %if.then9.i)) #8
          to label %do.end17.i [label %if.then9.i], !srcloc !126

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %next_red10.i = getelementptr inbounds %struct.blinkm_data, ptr %2, i32 0, i32 6
  %6 = ptrtoint ptr %next_red10.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %next_red10.i, align 1
  %conv.i = zext i8 %7 to i32
  %8 = ptrtoint ptr %next_green.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %next_green.i, align 4
  %conv12.i = zext i8 %9 to i32
  %next_blue13.i = getelementptr inbounds %struct.blinkm_data, ptr %2, i32 0, i32 8
  %10 = ptrtoint ptr %next_blue13.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %next_blue13.i, align 1
  %conv14.i = zext i8 %11 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @store_color_common.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %conv.i, i32 noundef %conv12.i, i32 noundef %conv14.i) #8
  br label %do.end17.i

do.end17.i:                                       ; preds = %if.then9.i, %if.end.i
  %call18.i = call fastcc i32 @blinkm_transfer_hw(ptr noundef %add.ptr.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %do.end17.i._crit_edge, label %store_color_common.exit

do.end17.i._crit_edge:                            ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %12

store_color_common.exit:                          ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #8
  br label %13

12:                                               ; preds = %do.end17.i._crit_edge, %entry._crit_edge
  %.str.29.sink.i = phi ptr [ @.str.24, %entry._crit_edge ], [ @.str.29, %do.end17.i._crit_edge ]
  %retval.0.ph.i = phi i32 [ %call1.i, %entry._crit_edge ], [ %call18.i, %do.end17.i._crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.29.sink.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #8
  br label %13

13:                                               ; preds = %12, %store_color_common.exit
  %14 = phi i32 [ %retval.0.ph.i, %12 ], [ %count, %store_color_common.exit ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blue_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1.i = tail call fastcc i32 @blinkm_transfer_hw(ptr noundef %add.ptr.i, i32 noundef 9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %entry.show_color_common.exit_crit_edge, label %if.end.i

entry.show_color_common.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %show_color_common.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %blue.i = getelementptr inbounds %struct.blinkm_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %blue.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %.sink.i = load i8, ptr %blue.i, align 1
  %conv7.i = zext i8 %.sink.i to i32
  %call8.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.18, i32 noundef %conv7.i) #8
  br label %show_color_common.exit

show_color_common.exit:                           ; preds = %if.end.i, %entry.show_color_common.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %entry.show_color_common.exit_crit_edge ], [ %call8.i, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blue_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %value.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #8
  %0 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %value.i, align 1, !annotation !125
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %1 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1.i = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %entry._crit_edge, label %if.end.i

entry._crit_edge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %12

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %value.i, align 1
  %next_blue.i = getelementptr inbounds %struct.blinkm_data, ptr %2, i32 0, i32 8
  %5 = ptrtoint ptr %next_blue.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %next_blue.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @store_color_common.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@blue_store, %if.then9.i)) #8
          to label %do.end17.i [label %if.then9.i], !srcloc !126

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %next_red10.i = getelementptr inbounds %struct.blinkm_data, ptr %2, i32 0, i32 6
  %6 = ptrtoint ptr %next_red10.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %next_red10.i, align 1
  %conv.i = zext i8 %7 to i32
  %next_green11.i = getelementptr inbounds %struct.blinkm_data, ptr %2, i32 0, i32 7
  %8 = ptrtoint ptr %next_green11.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %next_green11.i, align 4
  %conv12.i = zext i8 %9 to i32
  %10 = ptrtoint ptr %next_blue.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %next_blue.i, align 1
  %conv14.i = zext i8 %11 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @store_color_common.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %conv.i, i32 noundef %conv12.i, i32 noundef %conv14.i) #8
  br label %do.end17.i

do.end17.i:                                       ; preds = %if.then9.i, %if.end.i
  %call18.i = call fastcc i32 @blinkm_transfer_hw(ptr noundef %add.ptr.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %do.end17.i._crit_edge, label %store_color_common.exit

do.end17.i._crit_edge:                            ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %12

store_color_common.exit:                          ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #8
  br label %13

12:                                               ; preds = %do.end17.i._crit_edge, %entry._crit_edge
  %.str.29.sink.i = phi ptr [ @.str.24, %entry._crit_edge ], [ @.str.29, %do.end17.i._crit_edge ]
  %retval.0.ph.i = phi i32 [ %call1.i, %entry._crit_edge ], [ %call18.i, %do.end17.i._crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.29.sink.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #8
  br label %13

13:                                               ; preds = %12, %store_color_common.exit
  %14 = phi i32 [ %retval.0.ph.i, %12 ], [ %count, %store_color_common.exit ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.34) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %next_red.i = getelementptr inbounds %struct.blinkm_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %next_red.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %next_red.i, align 1
  %next_green.i = getelementptr inbounds %struct.blinkm_data, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %next_green.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 5, ptr %next_green.i, align 4
  %next_blue.i = getelementptr inbounds %struct.blinkm_data, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %next_blue.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 16, ptr %next_blue.i, align 1
  %call1.i = tail call fastcc i32 @blinkm_transfer_hw(ptr noundef %add.ptr, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %entry._crit_edge, label %if.end.i

entry._crit_edge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %11

if.end.i:                                         ; preds = %entry
  tail call void @msleep(i32 noundef 2000) #8
  %5 = ptrtoint ptr %next_red.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 37, ptr %next_red.i, align 1
  %6 = ptrtoint ptr %next_green.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 16, ptr %next_green.i, align 4
  %7 = ptrtoint ptr %next_blue.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 49, ptr %next_blue.i, align 1
  %call5.i = tail call fastcc i32 @blinkm_transfer_hw(ptr noundef %add.ptr, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end.i._crit_edge, label %if.end8.i

if.end.i._crit_edge:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %11

if.end8.i:                                        ; preds = %if.end.i
  tail call void @msleep(i32 noundef 2000) #8
  %next_hue.i = getelementptr inbounds %struct.blinkm_data, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %next_hue.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 80, ptr %next_hue.i, align 2
  %next_saturation.i = getelementptr inbounds %struct.blinkm_data, ptr %1, i32 0, i32 16
  %9 = ptrtoint ptr %next_saturation.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 16, ptr %next_saturation.i, align 1
  %next_brightness.i = getelementptr inbounds %struct.blinkm_data, ptr %1, i32 0, i32 17
  %10 = ptrtoint ptr %next_brightness.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 32, ptr %next_brightness.i, align 4
  %call9.i = tail call fastcc i32 @blinkm_transfer_hw(ptr noundef %add.ptr, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.end8.i._crit_edge, label %blinkm_test_run.exit

if.end8.i._crit_edge:                             ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %11

blinkm_test_run.exit:                             ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef 2000) #8
  br label %11

11:                                               ; preds = %blinkm_test_run.exit, %if.end8.i._crit_edge, %if.end.i._crit_edge, %entry._crit_edge
  %12 = phi i32 [ %count, %blinkm_test_run.exit ], [ %call9.i, %if.end8.i._crit_edge ], [ %call5.i, %if.end.i._crit_edge ], [ %call1.i, %entry._crit_edge ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !30, !31, !33, !35, !36, !38, !40, !41, !43, !45, !47, !48, !50, !52, !53, !54, !55, !57, !58, !59, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !79, !80, !82, !83, !85, !87, !88, !89, !90, !92, !93, !95, !96, !97, !98, !100, !101, !103, !104, !106, !107, !109, !111, !112, !113, !114}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @__initcall__kmod_leds_blinkm__291_742_blinkm_driver_init6, !1, !"__initcall__kmod_leds_blinkm__291_742_blinkm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-blinkm.c", i32 742, i32 1}
!2 = !{ptr @__exitcall_blinkm_driver_exit, !1, !"__exitcall_blinkm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author292, !4, !"__UNIQUE_ID_author292", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-blinkm.c", i32 744, i32 1}
!5 = !{ptr @__UNIQUE_ID_description293, !6, !"__UNIQUE_ID_description293", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-blinkm.c", i32 745, i32 1}
!7 = !{ptr @__UNIQUE_ID_file294, !8, !"__UNIQUE_ID_file294", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-blinkm.c", i32 746, i32 1}
!9 = !{ptr @__UNIQUE_ID_license295, !8, !"__UNIQUE_ID_license295", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-blinkm.c", i32 733, i32 14}
!12 = !{ptr @blinkm_driver, !13, !"blinkm_driver", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-blinkm.c", i32 730, i32 26}
!14 = !{ptr @blinkm_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-blinkm.c", i32 592, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/leds/leds-blinkm.c", i32 597, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @blinkm_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @blinkm_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/leds/leds-blinkm.c", i32 611, i32 7}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/leds/leds-blinkm.c", i32 620, i32 5}
!29 = !{ptr @blinkm_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @blinkm_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/leds/leds-blinkm.c", i32 628, i32 7}
!33 = !{ptr @blinkm_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!34 = !{!"../drivers/leds/leds-blinkm.c", i32 637, i32 5}
!35 = !{ptr @blinkm_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/leds/leds-blinkm.c", i32 645, i32 7}
!38 = !{ptr @blinkm_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!39 = !{!"../drivers/leds/leds-blinkm.c", i32 654, i32 5}
!40 = !{ptr @blinkm_probe._entry_ptr.16, !39, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @blinkm_group, !42, !"blinkm_group", i1 false, i1 false}
!42 = !{!"../drivers/leds/leds-blinkm.c", i32 288, i32 37}
!43 = !{ptr @blinkm_attrs, !44, !"blinkm_attrs", i1 false, i1 false}
!44 = !{!"../drivers/leds/leds-blinkm.c", i32 280, i32 26}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/leds/leds-blinkm.c", i32 212, i32 8}
!47 = !{ptr @dev_attr_red, !46, !"dev_attr_red", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/leds/leds-blinkm.c", i32 142, i32 36}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/leds/leds-blinkm.c", i32 408, i32 3}
!52 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @blinkm_transfer_hw._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @blinkm_transfer_hw._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/leds/leds-blinkm.c", i32 412, i32 3}
!57 = !{ptr @blinkm_transfer_hw._entry.21, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @blinkm_transfer_hw._entry_ptr.23, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @blinkm_cmds, !60, !"blinkm_cmds", i1 false, i1 false}
!60 = !{!"../drivers/leds/leds-blinkm.c", i32 107, i32 3}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/leds/leds-blinkm.c", i32 165, i32 3}
!63 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @store_color_common._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @store_color_common._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/leds/leds-blinkm.c", i32 183, i32 2}
!68 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @store_color_common.__UNIQUE_ID_ddebug289, !67, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/leds/leds-blinkm.c", i32 189, i32 3}
!72 = !{ptr @store_color_common._entry.28, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @store_color_common._entry_ptr.30, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/leds/leds-blinkm.c", i32 232, i32 8}
!76 = !{ptr @dev_attr_green, !75, !"dev_attr_green", i1 false, i1 false}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/leds/leds-blinkm.c", i32 251, i32 8}
!79 = !{ptr @dev_attr_blue, !78, !"dev_attr_blue", i1 false, i1 false}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/leds/leds-blinkm.c", i32 276, i32 8}
!82 = !{ptr @dev_attr_test, !81, !"dev_attr_test", i1 false, i1 false}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/leds/leds-blinkm.c", i32 257, i32 5}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/leds/leds-blinkm.c", i32 450, i32 3}
!87 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @blinkm_led_common_set._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @blinkm_led_common_set._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/leds/leds-blinkm.c", i32 455, i32 2}
!92 = !{ptr @blinkm_led_common_set.__UNIQUE_ID_ddebug290, !91, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!93 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/leds/leds-blinkm.c", i32 696, i32 3}
!95 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @blinkm_remove._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @blinkm_remove._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @blinkm_remove._entry.40, !99, !"_entry", i1 false, i1 false}
!99 = !{!"../drivers/leds/leds-blinkm.c", i32 704, i32 3}
!100 = !{ptr @blinkm_remove._entry_ptr.41, !99, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @blinkm_remove._entry.42, !102, !"_entry", i1 false, i1 false}
!102 = !{!"../drivers/leds/leds-blinkm.c", i32 710, i32 3}
!103 = !{ptr @blinkm_remove._entry_ptr.43, !102, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @blinkm_remove._entry.44, !105, !"_entry", i1 false, i1 false}
!105 = !{!"../drivers/leds/leds-blinkm.c", i32 716, i32 3}
!106 = !{ptr @blinkm_remove._entry_ptr.45, !105, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @blinkm_id, !108, !"blinkm_id", i1 false, i1 false}
!108 = !{!"../drivers/leds/leds-blinkm.c", i32 722, i32 35}
!109 = !{ptr @.str.46, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/leds/leds-blinkm.c", i32 560, i32 3}
!111 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @blinkm_detect._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @blinkm_detect._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @normal_i2c, !115, !"normal_i2c", i1 false, i1 false}
!115 = !{!"../drivers/leds/leds-blinkm.c", i32 20, i32 29}
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
!126 = !{i64 2148969963, i64 2148969968, i64 2148969981, i64 2148970025, i64 2148970059, i64 2148970080}
