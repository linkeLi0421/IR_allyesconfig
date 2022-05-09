; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-lm3533.c_pt.bc'
source_filename = "../drivers/leds/leds-lm3533.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.lm3533_led = type { ptr, %struct.lm3533_ctrlbank, %struct.led_classdev, i32, %struct.mutex, i32 }
%struct.lm3533_ctrlbank = type { ptr, ptr, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lm3533_led_platform_data = type { ptr, ptr, i16, i8 }
%struct.lm3533 = type { ptr, ptr, i32, i32, i8 }

@__initcall__kmod_leds_lm3533__205_752_lm3533_led_driver_init6 = internal global ptr @lm3533_led_driver_init, section ".initcall6.init", align 4
@lm3533_led_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @lm3533_led_probe, ptr @lm3533_led_remove, ptr @lm3533_led_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_lm3533_led_driver_exit = internal global ptr @lm3533_led_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author206 = internal constant [52 x i8] c"leds_lm3533.author=Johan Hovold <jhovold@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description207 = internal constant [42 x i8] c"leds_lm3533.description=LM3533 LED driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file208 = internal constant [42 x i8] c"leds_lm3533.file=drivers/leds/leds-lm3533\00", section ".modinfo", align 1
@__UNIQUE_ID_license209 = internal constant [24 x i8] c"leds_lm3533.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias210 = internal constant [39 x i8] c"leds_lm3533.alias=platform:lm3533-leds\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lm3533-leds\00", [20 x i8] zeroinitializer }, align 32
@lm3533_led_probe.__UNIQUE_ID_ddebug202 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"leds_lm3533\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lm3533_led_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/leds/leds-lm3533.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@lm3533_led_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 662, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no platform data\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lm3533_led_probe._entry_ptr = internal global ptr @lm3533_led_probe._entry, section ".printk_index", align 4
@lm3533_led_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 667, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"illegal LED id %d\0A\00", [45 x i8] zeroinitializer }, align 32
@lm3533_led_probe._entry_ptr.10 = internal global ptr @lm3533_led_probe._entry.8, section ".printk_index", align 4
@lm3533_led_attribute_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @lm3533_led_attribute_group, ptr null], [24 x i8] zeroinitializer }, align 32
@lm3533_led_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&led->mutex\00", [20 x i8] zeroinitializer }, align 32
@lm3533_led_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 699, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to register LED %d\0A\00", [37 x i8] zeroinitializer }, align 32
@lm3533_led_probe._entry_ptr.14 = internal global ptr @lm3533_led_probe._entry.12, section ".printk_index", align 4
@lm3533_led_set.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.15, ptr @.str.3, ptr @.str.16, i8 0, i8 30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lm3533_led_set\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s - %d\0A\00", [23 x i8] zeroinitializer }, align 32
@lm3533_led_pattern_enable.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.17, ptr @.str.3, ptr @.str.16, i8 0, i8 22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lm3533_led_pattern_enable\00", [38 x i8] zeroinitializer }, align 32
@lm3533_led_pattern_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.17, ptr @.str.3, i32 107, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to enable pattern %d (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@lm3533_led_pattern_enable._entry_ptr = internal global ptr @lm3533_led_pattern_enable._entry, section ".printk_index", align 4
@lm3533_led_get.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 0, i8 35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lm3533_led_get\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s - %u\0A\00", [23 x i8] zeroinitializer }, align 32
@lm3533_led_blink_set.__UNIQUE_ID_ddebug201 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.21, ptr @.str.3, ptr @.str.22, i8 0, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lm3533_led_blink_set\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s - on = %lu, off = %lu\0A\00", [38 x i8] zeroinitializer }, align 32
@lm3533_led_delay_set.__UNIQUE_ID_ddebug200 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 0, i8 65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lm3533_led_delay_set\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s - %lu: %u (0x%02x)\0A\00", [41 x i8] zeroinitializer }, align 32
@lm3533_led_delay_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 264, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to set delay (%02x)\0A\00", [36 x i8] zeroinitializer }, align 32
@lm3533_led_delay_set._entry_ptr = internal global ptr @lm3533_led_delay_set._entry, section ".printk_index", align 4
@lm3533_led_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @lm3533_led_attr_is_visible, ptr null, ptr @lm3533_led_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@lm3533_led_attributes = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @dev_attr_als_channel, ptr @dev_attr_als_en, ptr @dev_attr_falltime, ptr @dev_attr_id, ptr @dev_attr_linear, ptr @dev_attr_pwm, ptr @dev_attr_risetime, ptr null], [32 x i8] zeroinitializer }, align 32
@dev_attr_als_channel = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_als_channel, ptr @store_als_channel }, [36 x i8] zeroinitializer }, align 32
@dev_attr_als_en = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_als_en, ptr @store_als_en }, [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"als_channel\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"als_en\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@dev_attr_falltime = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_falltime, ptr @store_falltime }, [36 x i8] zeroinitializer }, align 32
@dev_attr_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_id, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_linear = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_linear, ptr @store_linear }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pwm = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, [36 x i8] zeroinitializer }, align 32
@dev_attr_risetime = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_risetime, ptr @store_risetime }, [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"falltime\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%x\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"id\00", [29 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"linear\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pwm\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"risetime\00", [23 x i8] zeroinitializer }, align 32
@lm3533_led_remove.__UNIQUE_ID_ddebug203 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.36, ptr @.str.3, ptr @.str.4, i8 0, i8 -75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lm3533_led_remove\00", [46 x i8] zeroinitializer }, align 32
@lm3533_led_shutdown.__UNIQUE_ID_ddebug204 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.37, ptr @.str.3, ptr @.str.4, i8 0, i8 -72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lm3533_led_shutdown\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.38 = private unnamed_addr constant [18 x i8] c"lm3533_led_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 744, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 746, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 654, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 662, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 667, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [28 x i8] c"lm3533_led_attribute_groups\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 630, i32 38 }
@___asan_gen_.77 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 685, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 699, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 123, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 88, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 106, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 141, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 288, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 259, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 264, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [27 x i8] c"lm3533_led_attribute_group\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 625, i32 37 }
@___asan_gen_.131 = private unnamed_addr constant [22 x i8] c"lm3533_led_attributes\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 597, i32 26 }
@___asan_gen_.134 = private unnamed_addr constant [21 x i8] c"dev_attr_als_channel\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [16 x i8] c"dev_attr_als_en\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 589, i32 8 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 418, i32 35 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 590, i32 8 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 468, i32 35 }
@___asan_gen_.152 = private unnamed_addr constant [18 x i8] c"dev_attr_falltime\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [12 x i8] c"dev_attr_id\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [16 x i8] c"dev_attr_linear\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [13 x i8] c"dev_attr_pwm\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [18 x i8] c"dev_attr_risetime\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 591, i32 8 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 347, i32 35 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 592, i32 8 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 593, i32 8 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 594, i32 8 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 595, i32 8 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 725, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.189 = private constant [30 x i8] c"../drivers/leds/leds-lm3533.c\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 738, i32 2 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_alias210, ptr @__UNIQUE_ID_author206, ptr @__UNIQUE_ID_description207, ptr @__UNIQUE_ID_file208, ptr @__UNIQUE_ID_license209, ptr @__exitcall_lm3533_led_driver_exit, ptr @__initcall__kmod_leds_lm3533__205_752_lm3533_led_driver_init6, ptr @lm3533_led_delay_set._entry, ptr @lm3533_led_delay_set._entry_ptr, ptr @lm3533_led_driver_exit, ptr @lm3533_led_pattern_enable._entry, ptr @lm3533_led_pattern_enable._entry_ptr, ptr @lm3533_led_probe._entry, ptr @lm3533_led_probe._entry.12, ptr @lm3533_led_probe._entry.8, ptr @lm3533_led_probe._entry_ptr, ptr @lm3533_led_probe._entry_ptr.10, ptr @lm3533_led_probe._entry_ptr.14, ptr @lm3533_led_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @lm3533_led_attribute_groups, ptr @lm3533_led_probe.__key, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @lm3533_led_attribute_group, ptr @lm3533_led_attributes, ptr @dev_attr_als_channel, ptr @dev_attr_als_en, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @dev_attr_falltime, ptr @dev_attr_id, ptr @dev_attr_linear, ptr @dev_attr_pwm, ptr @dev_attr_risetime, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_led_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_led_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_led_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_led_attribute_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_led_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_led_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_led_pattern_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_led_delay_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_led_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_led_attributes to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_als_channel to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_als_en to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_falltime to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_linear to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pwm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_risetime to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3533_led_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @lm3533_led_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lm3533_led_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @lm3533_led_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3533_led_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm3533_led_probe.__UNIQUE_ID_ddebug202, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lm3533_led_probe, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !114

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm3533_led_probe.__UNIQUE_ID_ddebug202, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %do.end14, label %if.end16

do.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.5) #10
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %8 = icmp ugt i32 %7, 3
  br i1 %8, label %do.end22, label %if.end25

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.9, i32 noundef %7) #10
  br label %cleanup

if.end25:                                         ; preds = %if.end16
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev3, i32 noundef 516, i32 noundef 3520) #7
  %tobool28.not = icmp eq ptr %call.i, null
  br i1 %tobool28.not, label %if.end25.cleanup_crit_edge, label %if.end30

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %3, ptr %call.i, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %cdev = getelementptr inbounds %struct.lm3533_led, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %cdev to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %cdev, align 4
  %default_trigger = getelementptr inbounds %struct.lm3533_led_platform_data, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %default_trigger to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %default_trigger, align 4
  %default_trigger34 = getelementptr inbounds %struct.lm3533_led, ptr %call.i, i32 0, i32 2, i32 14
  %15 = ptrtoint ptr %default_trigger34 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %default_trigger34, align 4
  %brightness_set_blocking = getelementptr inbounds %struct.lm3533_led, ptr %call.i, i32 0, i32 2, i32 6
  %16 = ptrtoint ptr %brightness_set_blocking to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @lm3533_led_set, ptr %brightness_set_blocking, align 4
  %brightness_get = getelementptr inbounds %struct.lm3533_led, ptr %call.i, i32 0, i32 2, i32 7
  %17 = ptrtoint ptr %brightness_get to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @lm3533_led_get, ptr %brightness_get, align 4
  %blink_set = getelementptr inbounds %struct.lm3533_led, ptr %call.i, i32 0, i32 2, i32 8
  %18 = ptrtoint ptr %blink_set to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @lm3533_led_blink_set, ptr %blink_set, align 4
  %brightness = getelementptr inbounds %struct.lm3533_led, ptr %call.i, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %brightness, align 4
  %groups = getelementptr inbounds %struct.lm3533_led, ptr %call.i, i32 0, i32 2, i32 12
  %20 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @lm3533_led_attribute_groups, ptr %groups, align 4
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id, align 4
  %id41 = getelementptr inbounds %struct.lm3533_led, ptr %call.i, i32 0, i32 3
  %23 = ptrtoint ptr %id41 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %id41, align 4
  %mutex = getelementptr inbounds %struct.lm3533_led, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.11, ptr noundef nonnull @lm3533_led_probe.__key) #7
  %cb = getelementptr inbounds %struct.lm3533_led, ptr %call.i, i32 0, i32 1
  %24 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %3, ptr %cb, align 4
  %25 = ptrtoint ptr %id41 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id41, align 4
  %add.i = add i32 %26, 2
  %id48 = getelementptr inbounds %struct.lm3533_led, ptr %call.i, i32 0, i32 1, i32 2
  %27 = ptrtoint ptr %id48 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add.i, ptr %id48, align 4
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 4
  %dev51 = getelementptr inbounds %struct.lm3533_led, ptr %call.i, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %dev51 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %dev51, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %31 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %32 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %parent, align 8
  %call.i125 = tail call i32 @led_classdev_register_ext(ptr noundef %33, ptr noundef %cdev, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125)
  %tobool56.not = icmp eq i32 %call.i125, 0
  br i1 %tobool56.not, label %if.end63, label %do.end60

do.end60:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.13, i32 noundef %35) #10
  br label %cleanup

if.end63:                                         ; preds = %if.end30
  %dev65 = getelementptr inbounds %struct.lm3533_led, ptr %call.i, i32 0, i32 2, i32 11
  %36 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev65, align 4
  %38 = ptrtoint ptr %dev51 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %dev51, align 4
  %max_current.i = getelementptr inbounds %struct.lm3533_led_platform_data, ptr %5, i32 0, i32 2
  %39 = ptrtoint ptr %max_current.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %max_current.i, align 4
  %call.i126 = tail call i32 @lm3533_ctrlbank_set_max_current(ptr noundef %cb, i16 noundef zeroext %40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i126)
  %tobool.not.i = icmp eq i32 %call.i126, 0
  br i1 %tobool.not.i, label %lm3533_led_setup.exit, label %if.end63.err_deregister_crit_edge

if.end63.err_deregister_crit_edge:                ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_deregister

lm3533_led_setup.exit:                            ; preds = %if.end63
  %pwm.i = getelementptr inbounds %struct.lm3533_led_platform_data, ptr %5, i32 0, i32 3
  %41 = ptrtoint ptr %pwm.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %pwm.i, align 2
  %call2.i = tail call i32 @lm3533_ctrlbank_set_pwm(ptr noundef %cb, i8 noundef zeroext %42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool69.not = icmp eq i32 %call2.i, 0
  br i1 %tobool69.not, label %if.end71, label %lm3533_led_setup.exit.err_deregister_crit_edge

lm3533_led_setup.exit.err_deregister_crit_edge:   ; preds = %lm3533_led_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_deregister

if.end71:                                         ; preds = %lm3533_led_setup.exit
  %call73 = tail call i32 @lm3533_ctrlbank_enable(ptr noundef %cb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end71.cleanup_crit_edge, label %if.end71.err_deregister_crit_edge

if.end71.err_deregister_crit_edge:                ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_deregister

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_deregister:                                   ; preds = %if.end71.err_deregister_crit_edge, %lm3533_led_setup.exit.err_deregister_crit_edge, %if.end63.err_deregister_crit_edge
  %ret.0 = phi i32 [ %call2.i, %lm3533_led_setup.exit.err_deregister_crit_edge ], [ %call73, %if.end71.err_deregister_crit_edge ], [ %call.i126, %if.end63.err_deregister_crit_edge ]
  tail call void @led_classdev_unregister(ptr noundef %cdev) #7
  br label %cleanup

cleanup:                                          ; preds = %err_deregister, %if.end71.cleanup_crit_edge, %do.end60, %if.end25.cleanup_crit_edge, %do.end22, %do.end14, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end22 ], [ %call.i125, %do.end60 ], [ %ret.0, %err_deregister ], [ -22, %do.end14 ], [ -22, %do.end.cleanup_crit_edge ], [ -12, %if.end25.cleanup_crit_edge ], [ 0, %if.end71.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3533_led_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm3533_led_remove.__UNIQUE_ID_ddebug203, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lm3533_led_remove, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !114

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm3533_led_remove.__UNIQUE_ID_ddebug203, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.36) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cb = getelementptr inbounds %struct.lm3533_led, ptr %1, i32 0, i32 1
  %call4 = tail call i32 @lm3533_ctrlbank_disable(ptr noundef %cb) #7
  %cdev = getelementptr inbounds %struct.lm3533_led, ptr %1, i32 0, i32 2
  tail call void @led_classdev_unregister(ptr noundef %cdev) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lm3533_led_shutdown(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm3533_led_shutdown.__UNIQUE_ID_ddebug204, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lm3533_led_shutdown, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !114

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm3533_led_shutdown.__UNIQUE_ID_ddebug204, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.37) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cb = getelementptr %struct.lm3533_led, ptr %1, i32 0, i32 1
  %call4 = tail call i32 @lm3533_ctrlbank_disable(ptr noundef %cb) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm3533_led_set.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lm3533_led_shutdown, %if.then.i)) #7
          to label %lm3533_led_set.exit [label %if.then.i], !srcloc !114

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr %struct.lm3533_led, ptr %1, i32 0, i32 2, i32 11
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm3533_led_set.__UNIQUE_ID_ddebug184, ptr noundef %3, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i32 noundef 0) #7
  br label %lm3533_led_set.exit

lm3533_led_set.exit:                              ; preds = %if.then.i, %do.end
  %call6.i = tail call fastcc i32 @lm3533_led_pattern_enable(ptr noundef %1, i32 noundef 0) #7
  %call8.i = tail call i32 @lm3533_ctrlbank_set_brightness(ptr noundef %cb, i8 noundef zeroext 0) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3533_led_set(ptr noundef %cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %cdev, i32 -16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm3533_led_set.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lm3533_led_set, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !114

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr i8, ptr %cdev, i32 44
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm3533_led_set.__UNIQUE_ID_ddebug184, ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i32 noundef %value) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp = icmp eq i32 %value, 0
  br i1 %cmp, label %if.then5, label %do.end.if.end7_crit_edge

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call fastcc i32 @lm3533_led_pattern_enable(ptr noundef %add.ptr.i, i32 noundef 0)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.end.if.end7_crit_edge
  %cb = getelementptr i8, ptr %cdev, i32 -12
  %conv = trunc i32 %value to i8
  %call8 = tail call i32 @lm3533_ctrlbank_set_brightness(ptr noundef %cb, i8 noundef zeroext %conv) #7
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3533_led_get(ptr noundef %cdev) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !115
  %cb = getelementptr i8, ptr %cdev, i32 -12
  %call1 = call i32 @lm3533_ctrlbank_get_brightness(ptr noundef %cb, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm3533_led_get.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lm3533_led_get, %if.then6)) #7
          to label %do.end [label %if.then6], !srcloc !114

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr i8, ptr %cdev, i32 44
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1
  %conv = zext i8 %4 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm3533_led_get.__UNIQUE_ID_ddebug185, ptr noundef %2, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val, align 1
  %conv9 = zext i8 %6 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv9, %do.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3533_led_blink_set(ptr noundef %cdev, ptr nocapture noundef %delay_on, ptr nocapture noundef %delay_off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %cdev, i32 -16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm3533_led_blink_set.__UNIQUE_ID_ddebug201, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lm3533_led_blink_set, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !114

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr i8, ptr %cdev, i32 44
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %delay_on, align 4
  %4 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %delay_off, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm3533_led_blink_set.__UNIQUE_ID_ddebug201, ptr noundef %1, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef %3, i32 noundef %5) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %delay_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9846, i32 %7)
  %cmp = icmp ugt i32 %7, 9846
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %lor.lhs.false

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  %8 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %delay_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 77152, i32 %9)
  %cmp5 = icmp ugt i32 %9, 77152
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %if.end7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp8 = icmp eq i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp9 = icmp eq i32 %9, 0
  %or.cond = select i1 %cmp8, i1 %cmp9, i1 false
  br i1 %or.cond, label %if.then10, label %if.end7.if.end11_crit_edge

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %delay_on to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 500, ptr %delay_on, align 4
  %11 = ptrtoint ptr %delay_off to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 500, ptr %delay_off, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end7.if.end11_crit_edge
  %call.i = tail call fastcc zeroext i8 @lm3533_led_delay_set(ptr noundef %add.ptr.i, i8 noundef zeroext 114, ptr noundef %delay_on) #7
  %conv.i = zext i8 %call.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i)
  %tobool13.not = icmp eq i8 %call.i, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %call.i37 = tail call fastcc zeroext i8 @lm3533_led_delay_set(ptr noundef %add.ptr.i, i8 noundef zeroext 113, ptr noundef %delay_off) #7
  %conv.i38 = zext i8 %call.i37 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i37)
  %tobool17.not = icmp eq i8 %call.i37, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = tail call fastcc i32 @lm3533_led_pattern_enable(ptr noundef %add.ptr.i, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.end19 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ %conv.i, %if.end11.cleanup_crit_edge ], [ %conv.i38, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lm3533_ctrlbank_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lm3533_led_pattern_enable(ptr noundef %led, i32 noundef %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm3533_led_pattern_enable.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lm3533_led_pattern_enable, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !114

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.lm3533_led, ptr %led, i32 0, i32 2, i32 11
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm3533_led_pattern_enable.__UNIQUE_ID_ddebug183, ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef %enable) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mutex = getelementptr inbounds %struct.lm3533_led, ptr %led, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %flags = getelementptr inbounds %struct.lm3533_led, ptr %led, i32 0, i32 5
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool4.not = icmp eq i32 %enable, 0
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool5.not = icmp eq i32 %4, 0
  %or.cond = select i1 %tobool4.not, i1 true, i1 %tobool5.not
  %or.cond.not = xor i1 %or.cond, true
  %or.cond42 = select i1 %tobool4.not, i1 %tobool5.not, i1 false
  %or.cond43 = select i1 %or.cond.not, i1 true, i1 %or.cond42
  br i1 %or.cond43, label %do.end.out_crit_edge, label %if.end10

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end10:                                         ; preds = %do.end
  %id.i = getelementptr inbounds %struct.lm3533_led, ptr %led, i32 0, i32 3
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id.i, align 4
  %conv = and i32 %6, 255
  %mul = shl nuw nsw i32 %conv, 1
  %shl = shl nuw i32 1, %mul
  %conv12 = trunc i32 %shl to i8
  %.conv12 = select i1 %tobool4.not, i8 0, i8 %conv12
  %7 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %led, align 4
  %call16 = tail call i32 @lm3533_update(ptr noundef %8, i8 noundef zeroext 40, i8 noundef zeroext %.conv12, i8 noundef zeroext %conv12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end24, label %do.end21

do.end21:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %dev23 = getelementptr inbounds %struct.lm3533_led, ptr %led, i32 0, i32 2, i32 11
  %9 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.18, i32 noundef %conv, i32 noundef %enable) #10
  br label %out

if.end24:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %xor.i = xor i32 %12, 2
  store i32 %xor.i, ptr %flags, align 4
  br label %out

out:                                              ; preds = %if.end24, %do.end21, %do.end.out_crit_edge
  %ret.0 = phi i32 [ %call16, %do.end21 ], [ 0, %if.end24 ], [ 0, %do.end.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lm3533_ctrlbank_set_brightness(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lm3533_update(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lm3533_ctrlbank_get_brightness(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @lm3533_led_delay_set(ptr nocapture noundef readonly %led, i8 noundef zeroext %base, ptr nocapture noundef %delay) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 113, i8 %base)
  %cmp.not = icmp eq i8 %base, 113
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 9781)
  %t.0 = select i1 %cmp.not, i32 %1, i32 %2
  %mul.i = mul i32 %t.0, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 10043391, i32 %mul.i)
  %cmp.i = icmp ugt i32 %mul.i, 10043391
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = tail call i32 @llvm.umax.i32(i32 %mul.i, i32 10305536) #7
  %4 = tail call i32 @llvm.umin.i32(i32 %3, i32 76890112) #7
  %sub.i.i = add nsw i32 %4, -10043392
  %div1.i67.i = lshr i32 %sub.i.i, 19
  %mul.i.i = and i32 %sub.i.i, -524288
  %add5.i.i = add nuw nsw i32 %mul.i.i, 10305536
  %5 = trunc i32 %div1.i67.i to i8
  %conv6.i.i = or i8 %5, -128
  br label %lm3533_led_get_hw_delay.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1064959, i32 %mul.i)
  %cmp8.i = icmp ugt i32 %mul.i, 1064959
  br i1 %cmp8.i, label %if.then9.i, label %if.else23.i

if.then9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = tail call i32 @llvm.umax.i32(i32 %mul.i, i32 1130496) #7
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 9781248) #7
  %sub.i53.i = add nsw i32 %7, -1064960
  %div1.i5466.i = lshr i32 %sub.i53.i, 17
  %mul.i55.i = and i32 %sub.i53.i, -131072
  %add5.i56.i = add nuw nsw i32 %mul.i55.i, 1130496
  %8 = trunc i32 %div1.i5466.i to i8
  %conv6.i57.i = add nuw nsw i8 %8, 61
  br label %lm3533_led_get_hw_delay.exit

if.else23.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.umax.i32(i32 %mul.i, i32 16384) #7
  %10 = tail call i32 @llvm.umin.i32(i32 %9, i32 999424) #7
  %sub.i58.i = add nuw nsw i32 %10, 4186112
  %div1.i5965.i = lshr i32 %sub.i58.i, 14
  %11 = add nuw nsw i32 %10, 8192
  %add5.i61.i = and i32 %11, 2080768
  %12 = trunc i32 %div1.i5965.i to i8
  br label %lm3533_led_get_hw_delay.exit

lm3533_led_get_hw_delay.exit:                     ; preds = %if.else23.i, %if.then9.i, %if.then.i
  %t.0.i = phi i32 [ %add5.i.i, %if.then.i ], [ %add5.i56.i, %if.then9.i ], [ %add5.i61.i, %if.else23.i ]
  %val.0.i = phi i8 [ %conv6.i.i, %if.then.i ], [ %conv6.i57.i, %if.then9.i ], [ %12, %if.else23.i ]
  %add.i = add nuw nsw i32 %t.0.i, 500
  %div.i = udiv i32 %add.i, 1000
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm3533_led_delay_set.__UNIQUE_ID_ddebug200, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lm3533_led_delay_set, %if.then8)) #7
          to label %do.end [label %if.then8], !srcloc !114

if.then8:                                         ; preds = %lm3533_led_get_hw_delay.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.lm3533_led, ptr %led, i32 0, i32 2, i32 11
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %15 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %delay, align 4
  %conv9 = zext i8 %val.0.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm3533_led_delay_set.__UNIQUE_ID_ddebug200, ptr noundef %14, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i32 noundef %16, i32 noundef %div.i, i32 noundef %conv9) #7
  br label %do.end

do.end:                                           ; preds = %if.then8, %lm3533_led_get_hw_delay.exit
  %id.i.i = getelementptr inbounds %struct.lm3533_led, ptr %led, i32 0, i32 3
  %17 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id.i.i, align 4
  %conv.i.i = trunc i32 %18 to i8
  %mul.i34 = shl i8 %conv.i.i, 4
  %add.i35 = add i8 %mul.i34, %base
  %19 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %led, align 4
  %call12 = tail call i32 @lm3533_write(ptr noundef %20, i8 noundef zeroext %add.i35, i8 noundef zeroext %val.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.end.if.end21_crit_edge, label %do.end17

do.end.if.end21_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

do.end17:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev19 = getelementptr inbounds %struct.lm3533_led, ptr %led, i32 0, i32 2, i32 11
  %21 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev19, align 4
  %conv20 = zext i8 %add.i35 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.25, i32 noundef %conv20) #10
  br label %if.end21

if.end21:                                         ; preds = %do.end17, %do.end.if.end21_crit_edge
  %23 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div.i, ptr %delay, align 4
  %conv22 = trunc i32 %call12 to i8
  ret i8 %conv22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lm3533_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @lm3533_led_attr_is_visible(ptr nocapture noundef readonly %kobj, ptr noundef readonly %attr, i32 noundef %n) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mode3 = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %mode3 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mode3, align 4
  %cmp = icmp eq ptr %attr, @dev_attr_als_channel
  %cmp4 = icmp eq ptr %attr, @dev_attr_als_en
  %or.cond = or i1 %cmp, %cmp4
  br i1 %or.cond, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -16
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  %have_als = getelementptr inbounds %struct.lm3533, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %have_als to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %have_als, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %spec.select = select i1 %tobool.not, i16 0, i16 %1
  br label %if.end6

if.end6:                                          ; preds = %if.then, %entry.if.end6_crit_edge
  %mode.0 = phi i16 [ %1, %entry.if.end6_crit_edge ], [ %spec.select, %if.then ]
  ret i16 %mode.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_als_channel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !115
  %id.i = getelementptr i8, ptr %1, i32 400
  %3 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id.i, align 4
  %5 = trunc i32 %4 to i8
  %conv1.i = add i8 %5, 27
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %call3 = call i32 @lm3533_read(ptr noundef %7, i8 noundef zeroext %conv1.i, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %val, align 1
  %10 = and i8 %9, 1
  %narrow = add nuw nsw i8 %10, 1
  %add = zext i8 %narrow to i32
  %call4 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.27, i32 noundef %add) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call3, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_als_channel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %channel = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %channel) #7
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %channel, align 4, !annotation !115
  %call2 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %channel) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel, align 4
  %5 = add i32 %4, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %5)
  %6 = icmp ult i32 %5, -2
  br i1 %6, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %id.i = getelementptr i8, ptr %1, i32 400
  %7 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id.i, align 4
  %9 = trunc i32 %8 to i8
  %conv1.i = add i8 %9, 27
  %10 = trunc i32 %4 to i8
  %conv = add nsw i8 %10, -1
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 4
  %call7 = call i32 @lm3533_update(ptr noundef %12, i8 noundef zeroext %conv1.i, i8 noundef zeroext %conv, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  %len.call7 = select i1 %tobool8.not, i32 %len, i32 %call7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %len.call7, %if.end5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channel) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lm3533_read(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_als_en(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !115
  %id.i = getelementptr i8, ptr %1, i32 400
  %3 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id.i, align 4
  %5 = trunc i32 %4 to i8
  %conv1.i = add i8 %5, 27
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %call3 = call i32 @lm3533_read(ptr noundef %7, i8 noundef zeroext %conv1.i, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %val, align 1
  %10 = lshr i8 %9, 1
  %.lobit = and i8 %10, 1
  %11 = zext i8 %.lobit to i32
  %call7 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.29, i32 noundef %11) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ %call3, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_als_en(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %enable = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enable) #7
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %enable, align 4, !annotation !115
  %call2 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %enable) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %1, i32 -16
  %id.i = getelementptr i8, ptr %1, i32 400
  %3 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id.i, align 4
  %5 = trunc i32 %4 to i8
  %conv1.i = add i8 %5, 27
  %6 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  %. = select i1 %tobool4.not, i8 0, i8 2
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  %call7 = call i32 @lm3533_update(ptr noundef %9, i8 noundef zeroext %conv1.i, i8 noundef zeroext %., i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  %spec.select = select i1 %tobool8.not, i32 %len, i32 %call7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enable) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_falltime(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #7
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val.i, align 1, !annotation !115
  %id.i.i.i = getelementptr i8, ptr %1, i32 400
  %3 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id.i.i.i, align 4
  %conv.i.i.i = trunc i32 %4 to i8
  %mul.i.i = shl i8 %conv.i.i.i, 4
  %add.i.i = add i8 %mul.i.i, 117
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i.i, align 4
  %call3.i = call i32 @lm3533_read(ptr noundef %6, i8 noundef zeroext %add.i.i, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.show_risefalltime.exit_crit_edge

entry.show_risefalltime.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %show_risefalltime.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %val.i, align 1
  %conv.i = zext i8 %8 to i32
  %call4.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.31, i32 noundef %conv.i) #7
  br label %show_risefalltime.exit

show_risefalltime.exit:                           ; preds = %if.end.i, %entry.show_risefalltime.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.end.i ], [ %call3.i, %entry.show_risefalltime.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_falltime(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #7
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val.i, align 1, !annotation !115
  %call2.i = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.store_risefalltime.exit_crit_edge

entry.store_risefalltime.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %store_risefalltime.exit

lor.lhs.false.i:                                  ; preds = %entry
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %4)
  %cmp.i = icmp ugt i8 %4, 7
  br i1 %cmp.i, label %lor.lhs.false.i.store_risefalltime.exit_crit_edge, label %if.end.i

lor.lhs.false.i.store_risefalltime.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %store_risefalltime.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  %id.i.i.i = getelementptr i8, ptr %1, i32 400
  %5 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id.i.i.i, align 4
  %conv.i.i.i = trunc i32 %6 to i8
  %mul.i.i = shl i8 %conv.i.i.i, 4
  %add.i.i = add i8 %mul.i.i, 117
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i.i, align 4
  %call5.i = call i32 @lm3533_write(ptr noundef %8, i8 noundef zeroext %add.i.i, i8 noundef zeroext %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  %len.call5.i = select i1 %tobool6.not.i, i32 %len, i32 %call5.i
  br label %store_risefalltime.exit

store_risefalltime.exit:                          ; preds = %if.end.i, %lor.lhs.false.i.store_risefalltime.exit_crit_edge, %entry.store_risefalltime.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %lor.lhs.false.i.store_risefalltime.exit_crit_edge ], [ -22, %entry.store_risefalltime.exit_crit_edge ], [ %len.call5.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_id(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %id = getelementptr i8, ptr %1, i32 400
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.29, i32 noundef %3) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_linear(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !115
  %id.i = getelementptr i8, ptr %1, i32 400
  %3 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id.i, align 4
  %5 = trunc i32 %4 to i8
  %conv1.i = add i8 %5, 27
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %call3 = call i32 @lm3533_read(ptr noundef %7, i8 noundef zeroext %conv1.i, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %val, align 1
  %10 = lshr i8 %9, 2
  %.lobit = and i8 %10, 1
  %11 = zext i8 %.lobit to i32
  %call7 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.31, i32 noundef %11) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ %call3, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_linear(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %linear = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %linear) #7
  %2 = ptrtoint ptr %linear to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %linear, align 4, !annotation !115
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %linear) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %1, i32 -16
  %id.i = getelementptr i8, ptr %1, i32 400
  %3 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id.i, align 4
  %5 = trunc i32 %4 to i8
  %conv1.i = add i8 %5, 27
  %6 = ptrtoint ptr %linear to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %linear, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  %. = select i1 %tobool4.not, i8 0, i8 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  %call7 = call i32 @lm3533_update(ptr noundef %9, i8 noundef zeroext %conv1.i, i8 noundef zeroext %., i8 noundef zeroext 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  %spec.select = select i1 %tobool8.not, i32 %len, i32 %call7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %linear) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pwm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !115
  %cb = getelementptr i8, ptr %1, i32 -12
  %call2 = call i32 @lm3533_ctrlbank_get_pwm(ptr noundef %cb, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1
  %conv = zext i8 %4 to i32
  %call3 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.27, i32 noundef %conv) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_pwm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !115
  %call2 = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cb = getelementptr i8, ptr %1, i32 -12
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1
  %call3 = call i32 @lm3533_ctrlbank_set_pwm(ptr noundef %cb, i8 noundef zeroext %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  %len.call3 = select i1 %tobool4.not, i32 %len, i32 %call3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %len.call3, %if.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lm3533_ctrlbank_get_pwm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lm3533_ctrlbank_set_pwm(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_risetime(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #7
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val.i, align 1, !annotation !115
  %id.i.i.i = getelementptr i8, ptr %1, i32 400
  %3 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id.i.i.i, align 4
  %conv.i.i.i = trunc i32 %4 to i8
  %mul.i.i = shl i8 %conv.i.i.i, 4
  %add.i.i = add i8 %mul.i.i, 116
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i.i, align 4
  %call3.i = call i32 @lm3533_read(ptr noundef %6, i8 noundef zeroext %add.i.i, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.show_risefalltime.exit_crit_edge

entry.show_risefalltime.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %show_risefalltime.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %val.i, align 1
  %conv.i = zext i8 %8 to i32
  %call4.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.31, i32 noundef %conv.i) #7
  br label %show_risefalltime.exit

show_risefalltime.exit:                           ; preds = %if.end.i, %entry.show_risefalltime.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.end.i ], [ %call3.i, %entry.show_risefalltime.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_risetime(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #7
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val.i, align 1, !annotation !115
  %call2.i = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.store_risefalltime.exit_crit_edge

entry.store_risefalltime.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %store_risefalltime.exit

lor.lhs.false.i:                                  ; preds = %entry
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %4)
  %cmp.i = icmp ugt i8 %4, 7
  br i1 %cmp.i, label %lor.lhs.false.i.store_risefalltime.exit_crit_edge, label %if.end.i

lor.lhs.false.i.store_risefalltime.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %store_risefalltime.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  %id.i.i.i = getelementptr i8, ptr %1, i32 400
  %5 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id.i.i.i, align 4
  %conv.i.i.i = trunc i32 %6 to i8
  %mul.i.i = shl i8 %conv.i.i.i, 4
  %add.i.i = add i8 %mul.i.i, 116
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i.i, align 4
  %call5.i = call i32 @lm3533_write(ptr noundef %8, i8 noundef zeroext %add.i.i, i8 noundef zeroext %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  %len.call5.i = select i1 %tobool6.not.i, i32 %len, i32 %call5.i
  br label %store_risefalltime.exit

store_risefalltime.exit:                          ; preds = %if.end.i, %lor.lhs.false.i.store_risefalltime.exit_crit_edge, %entry.store_risefalltime.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %lor.lhs.false.i.store_risefalltime.exit_crit_edge ], [ -22, %entry.store_risefalltime.exit_crit_edge ], [ %len.call5.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lm3533_ctrlbank_set_max_current(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lm3533_ctrlbank_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !70, !72, !73, !75, !77, !78, !80, !82, !84, !85, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104}
!llvm.module.flags = !{!105, !106, !107, !108, !109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = !{ptr @__initcall__kmod_leds_lm3533__205_752_lm3533_led_driver_init6, !1, !"__initcall__kmod_leds_lm3533__205_752_lm3533_led_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-lm3533.c", i32 752, i32 1}
!2 = !{ptr @__exitcall_lm3533_led_driver_exit, !1, !"__exitcall_lm3533_led_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author206, !4, !"__UNIQUE_ID_author206", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-lm3533.c", i32 754, i32 1}
!5 = !{ptr @__UNIQUE_ID_description207, !6, !"__UNIQUE_ID_description207", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-lm3533.c", i32 755, i32 1}
!7 = !{ptr @__UNIQUE_ID_file208, !8, !"__UNIQUE_ID_file208", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-lm3533.c", i32 756, i32 1}
!9 = !{ptr @__UNIQUE_ID_license209, !8, !"__UNIQUE_ID_license209", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias210, !11, !"__UNIQUE_ID_alias210", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-lm3533.c", i32 757, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-lm3533.c", i32 746, i32 11}
!14 = !{ptr @lm3533_led_driver, !15, !"lm3533_led_driver", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-lm3533.c", i32 744, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/leds/leds-lm3533.c", i32 654, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @lm3533_led_probe.__UNIQUE_ID_ddebug202, !17, !"__UNIQUE_ID_ddebug202", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/leds/leds-lm3533.c", i32 662, i32 3}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @lm3533_led_probe._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @lm3533_led_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/leds/leds-lm3533.c", i32 667, i32 3}
!30 = !{ptr @lm3533_led_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @lm3533_led_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @lm3533_led_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/leds/leds-lm3533.c", i32 685, i32 2}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/leds/leds-lm3533.c", i32 699, i32 3}
!37 = !{ptr @lm3533_led_probe._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @lm3533_led_probe._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/leds/leds-lm3533.c", i32 123, i32 2}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @lm3533_led_set.__UNIQUE_ID_ddebug184, !40, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/leds/leds-lm3533.c", i32 88, i32 2}
!45 = !{ptr @lm3533_led_pattern_enable.__UNIQUE_ID_ddebug183, !44, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/leds/leds-lm3533.c", i32 106, i32 3}
!48 = !{ptr @lm3533_led_pattern_enable._entry, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @lm3533_led_pattern_enable._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/leds/leds-lm3533.c", i32 141, i32 2}
!52 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @lm3533_led_get.__UNIQUE_ID_ddebug185, !51, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/leds/leds-lm3533.c", i32 288, i32 2}
!56 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @lm3533_led_blink_set.__UNIQUE_ID_ddebug201, !55, !"__UNIQUE_ID_ddebug201", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/leds/leds-lm3533.c", i32 259, i32 2}
!60 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @lm3533_led_delay_set.__UNIQUE_ID_ddebug200, !59, !"__UNIQUE_ID_ddebug200", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/leds/leds-lm3533.c", i32 264, i32 3}
!64 = !{ptr @lm3533_led_delay_set._entry, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @lm3533_led_delay_set._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @lm3533_led_attribute_groups, !67, !"lm3533_led_attribute_groups", i1 false, i1 false}
!67 = !{!"../drivers/leds/leds-lm3533.c", i32 630, i32 38}
!68 = !{ptr @lm3533_led_attribute_group, !69, !"lm3533_led_attribute_group", i1 false, i1 false}
!69 = !{!"../drivers/leds/leds-lm3533.c", i32 625, i32 37}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/leds/leds-lm3533.c", i32 589, i32 8}
!72 = !{ptr @dev_attr_als_channel, !71, !"dev_attr_als_channel", i1 false, i1 false}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/leds/leds-lm3533.c", i32 418, i32 35}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/leds/leds-lm3533.c", i32 590, i32 8}
!77 = !{ptr @dev_attr_als_en, !76, !"dev_attr_als_en", i1 false, i1 false}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/leds/leds-lm3533.c", i32 468, i32 35}
!80 = !{ptr @lm3533_led_attributes, !81, !"lm3533_led_attributes", i1 false, i1 false}
!81 = !{!"../drivers/leds/leds-lm3533.c", i32 597, i32 26}
!82 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/leds/leds-lm3533.c", i32 591, i32 8}
!84 = !{ptr @dev_attr_falltime, !83, !"dev_attr_falltime", i1 false, i1 false}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/leds/leds-lm3533.c", i32 347, i32 35}
!87 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/leds/leds-lm3533.c", i32 592, i32 8}
!89 = !{ptr @dev_attr_id, !88, !"dev_attr_id", i1 false, i1 false}
!90 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/leds/leds-lm3533.c", i32 593, i32 8}
!92 = !{ptr @dev_attr_linear, !91, !"dev_attr_linear", i1 false, i1 false}
!93 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/leds/leds-lm3533.c", i32 594, i32 8}
!95 = !{ptr @dev_attr_pwm, !94, !"dev_attr_pwm", i1 false, i1 false}
!96 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/leds/leds-lm3533.c", i32 595, i32 8}
!98 = !{ptr @dev_attr_risetime, !97, !"dev_attr_risetime", i1 false, i1 false}
!99 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/leds/leds-lm3533.c", i32 725, i32 2}
!101 = !{ptr @lm3533_led_remove.__UNIQUE_ID_ddebug203, !100, !"__UNIQUE_ID_ddebug203", i1 false, i1 false}
!102 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/leds/leds-lm3533.c", i32 738, i32 2}
!104 = !{ptr @lm3533_led_shutdown.__UNIQUE_ID_ddebug204, !103, !"__UNIQUE_ID_ddebug204", i1 false, i1 false}
!105 = !{i32 1, !"wchar_size", i32 2}
!106 = !{i32 1, !"min_enum_size", i32 4}
!107 = !{i32 8, !"branch-target-enforcement", i32 0}
!108 = !{i32 8, !"sign-return-address", i32 0}
!109 = !{i32 8, !"sign-return-address-all", i32 0}
!110 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!111 = !{i32 7, !"uwtable", i32 1}
!112 = !{i32 7, !"frame-pointer", i32 2}
!113 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!114 = !{i64 2148969399, i64 2148969404, i64 2148969417, i64 2148969461, i64 2148969495, i64 2148969516}
!115 = !{!"auto-init"}
