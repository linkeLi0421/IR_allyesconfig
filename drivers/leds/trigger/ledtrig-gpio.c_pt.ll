; ModuleID = '/llk/IR_all_yes/drivers/leds/trigger/ledtrig-gpio.c_pt.bc'
source_filename = "../drivers/leds/trigger/ledtrig-gpio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.led_trigger = type { ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gpio_trig_data = type { ptr, i32, i32, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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

@__initcall__kmod_ledtrig_gpio__227_198_gpio_led_trigger_init6 = internal global ptr @gpio_led_trigger_init, section ".initcall6.init", align 4
@gpio_led_trigger = internal global { %struct.led_trigger, [48 x i8] } { %struct.led_trigger { ptr @.str, ptr @gpio_trig_activate, ptr @gpio_trig_deactivate, ptr null, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr @gpio_trig_groups }, [48 x i8] zeroinitializer }, align 32
@__exitcall_gpio_led_trigger_exit = internal global ptr @gpio_led_trigger_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author228 = internal constant [54 x i8] c"ledtrig_gpio.author=Felipe Balbi <me@felipebalbi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [42 x i8] c"ledtrig_gpio.description=GPIO LED trigger\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [52 x i8] c"ledtrig_gpio.file=drivers/leds/trigger/ledtrig-gpio\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [28 x i8] c"ledtrig_gpio.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@gpio_trig_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @gpio_trig_group, ptr null], [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gpio_trig_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @gpio_trig_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@gpio_trig_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_desired_brightness, ptr @dev_attr_inverted, ptr @dev_attr_gpio, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_desired_brightness = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @gpio_trig_brightness_show, ptr @gpio_trig_brightness_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_inverted = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @gpio_trig_inverted_show, ptr @gpio_trig_inverted_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_gpio = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @gpio_trig_gpio_show, ptr @gpio_trig_gpio_store }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"desired_brightness\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@gpio_trig_brightness_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 65, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"invalid value\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"gpio_trig_brightness_store\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/leds/trigger/ledtrig-gpio.c\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gpio_trig_brightness_store._entry_ptr = internal global ptr @gpio_trig_brightness_store._entry, section ".printk_index", align 4
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"inverted\00", [23 x i8] zeroinitializer }, align 32
@gpio_trig_gpio_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.6, i32 128, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"couldn't read gpio number\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gpio_trig_gpio_store\00", [43 x i8] zeroinitializer }, align 32
@gpio_trig_gpio_store._entry_ptr = internal global ptr @gpio_trig_gpio_store._entry, section ".printk_index", align 4
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ledtrig-gpio\00", [19 x i8] zeroinitializer }, align 32
@gpio_trig_gpio_store._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.6, i32 146, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"request_irq failed with error %d\0A\00", [62 x i8] zeroinitializer }, align 32
@gpio_trig_gpio_store._entry_ptr.15 = internal global ptr @gpio_trig_gpio_store._entry.13, section ".printk_index", align 4
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"gpio_led_trigger\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 192, i32 27 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 193, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"gpio_trig_groups\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [16 x i8] c"gpio_trig_group\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 165, i32 1 }
@___asan_gen_.28 = private unnamed_addr constant [16 x i8] c"gpio_trig_attrs\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 159, i32 26 }
@___asan_gen_.31 = private unnamed_addr constant [28 x i8] c"dev_attr_desired_brightness\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [18 x i8] c"dev_attr_inverted\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [14 x i8] c"dev_attr_gpio\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 157, i32 8 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 73, i32 8 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 53, i32 22 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 63, i32 20 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 65, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 107, i32 8 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 128, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 144, i32 28 }
@___asan_gen_.82 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private constant [39 x i8] c"../drivers/leds/trigger/ledtrig-gpio.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 146, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_gpio_led_trigger_exit, ptr @__initcall__kmod_ledtrig_gpio__227_198_gpio_led_trigger_init6, ptr @gpio_led_trigger_exit, ptr @gpio_trig_brightness_store._entry, ptr @gpio_trig_brightness_store._entry_ptr, ptr @gpio_trig_gpio_store._entry, ptr @gpio_trig_gpio_store._entry.13, ptr @gpio_trig_gpio_store._entry_ptr, ptr @gpio_trig_gpio_store._entry_ptr.15, ptr @gpio_led_trigger, ptr @.str, ptr @gpio_trig_groups, ptr @gpio_trig_group, ptr @gpio_trig_attrs, ptr @dev_attr_desired_brightness, ptr @dev_attr_inverted, ptr @dev_attr_gpio, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_led_trigger to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_trig_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_trig_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_trig_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_desired_brightness to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_inverted to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_gpio to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_trig_brightness_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_trig_gpio_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_trig_gpio_store._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_led_trigger_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @led_trigger_register(ptr noundef nonnull @gpio_led_trigger) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gpio_led_trigger_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @led_trigger_unregister(ptr noundef nonnull @gpio_led_trigger) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_trigger_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_trig_activate(ptr noundef %led) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %led, ptr %call7.i.i, align 8
  %gpio = getelementptr inbounds %struct.gpio_trig_data, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %gpio to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -2, ptr %gpio, align 4
  %trigger_data1.i = getelementptr inbounds %struct.led_classdev, ptr %led, i32 0, i32 26
  %3 = ptrtoint ptr %trigger_data1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %trigger_data1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_trig_deactivate(ptr noundef %led) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %trigger_data.i = getelementptr inbounds %struct.led_classdev, ptr %led, i32 0, i32 26
  %0 = ptrtoint ptr %trigger_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trigger_data.i, align 4
  %gpio = getelementptr inbounds %struct.gpio_trig_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %3)
  %4 = icmp ult i32 %3, 2048
  br i1 %4, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %3) #8
  %call1.i = tail call i32 @gpiod_to_irq(ptr noundef %call.i) #8
  %call4 = tail call ptr @free_irq(i32 noundef %call1.i, ptr noundef %led) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_trig_brightness_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %trigger_data.i = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %trigger_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trigger_data.i, align 4
  %desired_brightness = getelementptr inbounds %struct.gpio_trig_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %desired_brightness to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %desired_brightness, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %5)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_trig_brightness_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %n) #2 align 64 {
entry:
  %desired_brightness = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %trigger_data.i = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %trigger_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trigger_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desired_brightness) #8
  %4 = ptrtoint ptr %desired_brightness to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %desired_brightness, align 4, !annotation !59
  %call2 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.3, ptr noundef nonnull %desired_brightness)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp = icmp slt i32 %call2, 1
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %desired_brightness to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %desired_brightness, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %6)
  %cmp3 = icmp ugt i32 %6, 255
  br i1 %cmp3, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %desired_brightness4 = getelementptr inbounds %struct.gpio_trig_data, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %desired_brightness4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %desired_brightness4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %n, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desired_brightness) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_trig_inverted_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %trigger_data.i = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %trigger_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trigger_data.i, align 4
  %inverted = getelementptr inbounds %struct.gpio_trig_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %inverted to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %inverted, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %5)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_trig_inverted_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %n) #2 align 64 {
entry:
  %inverted = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %trigger_data.i = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %trigger_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trigger_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inverted) #8
  %4 = ptrtoint ptr %inverted to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %inverted, align 4, !annotation !59
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %inverted) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %inverted to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %inverted, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp4 = icmp ugt i32 %6, 1
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %inverted7 = getelementptr inbounds %struct.gpio_trig_data, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %inverted7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %inverted7, align 4
  %gpio = getelementptr inbounds %struct.gpio_trig_data, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %9)
  %10 = icmp ult i32 %9, 2048
  br i1 %10, label %if.then9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then9:                                         ; preds = %if.end6
  %11 = ptrtoint ptr %trigger_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %trigger_data.i, align 4
  %gpio.i = getelementptr inbounds %struct.gpio_trig_data, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %gpio.i, align 4
  %call.i.i = call ptr @gpio_to_desc(i32 noundef %14) #8
  %call1.i.i = call i32 @gpiod_get_raw_value_cansleep(ptr noundef %call.i.i) #8
  %inverted.i = getelementptr inbounds %struct.gpio_trig_data, ptr %12, i32 0, i32 2
  %15 = ptrtoint ptr %inverted.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %inverted.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i = icmp eq i32 %call1.i.i, 0
  %lnot.ext.i = zext i1 %tobool2.not.i to i32
  %tmp.0.i = select i1 %tobool.not.i, i32 %call1.i.i, i32 %lnot.ext.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tmp.0.i)
  %tobool3.not.i = icmp eq i32 %tmp.0.i, 0
  br i1 %tobool3.not.i, label %if.else11.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.then9
  %desired_brightness.i = getelementptr inbounds %struct.gpio_trig_data, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %desired_brightness.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %desired_brightness.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool5.not.i = icmp eq i32 %18, 0
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %12, align 4
  br i1 %tobool5.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @led_set_brightness_nosleep(ptr noundef %20, i32 noundef %18) #8
  br label %cleanup

if.else.i:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @led_set_brightness_nosleep(ptr noundef %20, i32 noundef 255) #8
  br label %cleanup

if.else11.i:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %12, align 4
  call void @led_set_brightness_nosleep(ptr noundef %22, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else11.i, %if.else.i, %if.then6.i, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %n, %if.end6.cleanup_crit_edge ], [ %n, %if.then6.i ], [ %n, %if.else.i ], [ %n, %if.else11.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inverted) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_trig_irq(i32 noundef %irq, ptr nocapture noundef readonly %_led) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %trigger_data.i = getelementptr inbounds %struct.led_classdev, ptr %_led, i32 0, i32 26
  %0 = ptrtoint ptr %trigger_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trigger_data.i, align 4
  %gpio = getelementptr inbounds %struct.gpio_trig_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %3) #8
  %call1.i = tail call i32 @gpiod_get_raw_value_cansleep(ptr noundef %call.i) #8
  %inverted = getelementptr inbounds %struct.gpio_trig_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %inverted to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %inverted, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not = icmp eq i32 %call1.i, 0
  %lnot.ext = zext i1 %tobool2.not to i32
  %tmp.0 = select i1 %tobool.not, i32 %call1.i, i32 %lnot.ext
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tmp.0)
  %tobool3.not = icmp eq i32 %tmp.0, 0
  br i1 %tobool3.not, label %if.else11, label %if.then4

if.then4:                                         ; preds = %entry
  %desired_brightness = getelementptr inbounds %struct.gpio_trig_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %desired_brightness to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %desired_brightness, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @led_set_brightness_nosleep(ptr noundef %9, i32 noundef %7) #8
  br label %if.end13

if.else:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @led_set_brightness_nosleep(ptr noundef %9, i32 noundef 255) #8
  br label %if.end13

if.else11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void @led_set_brightness_nosleep(ptr noundef %11, i32 noundef 0) #8
  br label %if.end13

if.end13:                                         ; preds = %if.else11, %if.else, %if.then6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_set_brightness_nosleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_raw_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_trig_gpio_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %trigger_data.i = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %trigger_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trigger_data.i, align 4
  %gpio = getelementptr inbounds %struct.gpio_trig_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpio, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %5)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_trig_gpio_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %n) #2 align 64 {
entry:
  %gpio = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %trigger_data.i = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %trigger_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trigger_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio) #8
  %4 = ptrtoint ptr %gpio to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %gpio, align 4, !annotation !59
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.3, ptr noundef nonnull %gpio)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp = icmp slt i32 %call3, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %gpio4 = getelementptr inbounds %struct.gpio_trig_data, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %gpio4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gpio4, align 4
  %7 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gpio, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp5 = icmp eq i32 %6, %8
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %8)
  %9 = icmp ult i32 %8, 2048
  br i1 %9, label %if.end18, label %if.then9

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %6)
  %10 = icmp ult i32 %6, 2048
  br i1 %10, label %if.then12, label %if.then9.if.end16_crit_edge

if.then9.if.end16_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call ptr @gpio_to_desc(i32 noundef %6) #8
  %call1.i = call i32 @gpiod_to_irq(ptr noundef %call.i) #8
  %call15 = call ptr @free_irq(i32 noundef %call1.i, ptr noundef %1) #8
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.then9.if.end16_crit_edge
  %11 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %gpio, align 4
  %13 = ptrtoint ptr %gpio4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %gpio4, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end7
  %call.i58 = call ptr @gpio_to_desc(i32 noundef %8) #8
  %call1.i59 = call i32 @gpiod_to_irq(ptr noundef %call.i58) #8
  %call20 = call i32 @request_threaded_irq(i32 noundef %call1.i59, ptr noundef null, ptr noundef nonnull @gpio_trig_irq, i32 noundef 8323, ptr noundef nonnull @.str.12, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %if.else, label %do.end24

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call20) #12
  br label %cleanup

if.else:                                          ; preds = %if.end18
  %14 = ptrtoint ptr %gpio4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gpio4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %15)
  %16 = icmp ult i32 %15, 2048
  br i1 %16, label %if.then27, label %if.else.if.end31_crit_edge

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call.i60 = call ptr @gpio_to_desc(i32 noundef %15) #8
  %call1.i61 = call i32 @gpiod_to_irq(ptr noundef %call.i60) #8
  %call30 = call ptr @free_irq(i32 noundef %call1.i61, ptr noundef %1) #8
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.else.if.end31_crit_edge
  %17 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gpio, align 4
  %19 = ptrtoint ptr %gpio4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %gpio4, align 4
  %20 = ptrtoint ptr %trigger_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %trigger_data.i, align 4
  %gpio.i = getelementptr inbounds %struct.gpio_trig_data, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %gpio.i, align 4
  %call.i.i = call ptr @gpio_to_desc(i32 noundef %23) #8
  %call1.i.i = call i32 @gpiod_get_raw_value_cansleep(ptr noundef %call.i.i) #8
  %inverted.i = getelementptr inbounds %struct.gpio_trig_data, ptr %21, i32 0, i32 2
  %24 = ptrtoint ptr %inverted.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %inverted.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i = icmp eq i32 %call1.i.i, 0
  %lnot.ext.i = zext i1 %tobool2.not.i to i32
  %tmp.0.i = select i1 %tobool.not.i, i32 %call1.i.i, i32 %lnot.ext.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tmp.0.i)
  %tobool3.not.i = icmp eq i32 %tmp.0.i, 0
  br i1 %tobool3.not.i, label %if.else11.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end31
  %desired_brightness.i = getelementptr inbounds %struct.gpio_trig_data, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %desired_brightness.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %desired_brightness.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool5.not.i = icmp eq i32 %27, 0
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %21, align 4
  br i1 %tobool5.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @led_set_brightness_nosleep(ptr noundef %29, i32 noundef %27) #8
  br label %cleanup

if.else.i:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @led_set_brightness_nosleep(ptr noundef %29, i32 noundef 255) #8
  br label %cleanup

if.else11.i:                                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %21, align 4
  call void @led_set_brightness_nosleep(ptr noundef %31, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else11.i, %if.else.i, %if.then6.i, %do.end24, %if.end16, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %n, %if.end16 ], [ %n, %if.end.cleanup_crit_edge ], [ %n, %if.else11.i ], [ %n, %if.else.i ], [ %n, %if.then6.i ], [ %call20, %do.end24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !22, !24, !26, !28, !29, !30, !31, !32, !33, !34, !36, !37, !39, !41, !42, !43, !44, !46, !48, !49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__initcall__kmod_ledtrig_gpio__227_198_gpio_led_trigger_init6, !1, !"__initcall__kmod_ledtrig_gpio__227_198_gpio_led_trigger_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/trigger/ledtrig-gpio.c", i32 198, i32 1}
!2 = !{ptr @__exitcall_gpio_led_trigger_exit, !1, !"__exitcall_gpio_led_trigger_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author228, !4, !"__UNIQUE_ID_author228", i1 false, i1 false}
!4 = !{!"../drivers/leds/trigger/ledtrig-gpio.c", i32 200, i32 1}
!5 = !{ptr @__UNIQUE_ID_description229, !6, !"__UNIQUE_ID_description229", i1 false, i1 false}
!6 = !{!"../drivers/leds/trigger/ledtrig-gpio.c", i32 201, i32 1}
!7 = !{ptr @__UNIQUE_ID_file230, !8, !"__UNIQUE_ID_file230", i1 false, i1 false}
!8 = !{!"../drivers/leds/trigger/ledtrig-gpio.c", i32 202, i32 1}
!9 = !{ptr @__UNIQUE_ID_license231, !8, !"__UNIQUE_ID_license231", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/leds/trigger/ledtrig-gpio.c", i32 193, i32 11}
!12 = !{ptr @gpio_led_trigger, !13, !"gpio_led_trigger", i1 false, i1 false}
!13 = !{!"../drivers/leds/trigger/ledtrig-gpio.c", i32 192, i32 27}
!14 = !{ptr @gpio_trig_groups, !15, !"gpio_trig_groups", i1 false, i1 false}
!15 = !{!"../drivers/leds/trigger/ledtrig-gpio.c", i32 165, i32 1}
!16 = !{ptr @gpio_trig_group, !15, !"gpio_trig_group", i1 false, i1 false}
!17 = !{ptr @gpio_trig_attrs, !18, !"gpio_trig_attrs", i1 false, i1 false}
!18 = !{!"../drivers/leds/trigger/ledtrig-gpio.c", i32 159, i32 26}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/leds/trigger/ledtrig-gpio.c", i32 73, i32 8}
!21 = !{ptr @dev_attr_desired_brightness, !20, !"dev_attr_desired_brightness", i1 false, i1 false}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/leds/trigger/ledtrig-gpio.c", i32 53, i32 22}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/leds/trigger/ledtrig-gpio.c", i32 63, i32 20}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/leds/trigger/ledtrig-gpio.c", i32 65, i32 3}
!28 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @gpio_trig_brightness_store._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @gpio_trig_brightness_store._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/leds/trigger/ledtrig-gpio.c", i32 107, i32 8}
!36 = !{ptr @dev_attr_inverted, !35, !"dev_attr_inverted", i1 false, i1 false}
!37 = !{ptr @dev_attr_gpio, !38, !"dev_attr_gpio", i1 false, i1 false}
!38 = !{!"../drivers/leds/trigger/ledtrig-gpio.c", i32 157, i32 8}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/leds/trigger/ledtrig-gpio.c", i32 128, i32 3}
!41 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @gpio_trig_gpio_store._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @gpio_trig_gpio_store._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/leds/trigger/ledtrig-gpio.c", i32 144, i32 28}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/leds/trigger/ledtrig-gpio.c", i32 146, i32 3}
!48 = !{ptr @gpio_trig_gpio_store._entry.13, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @gpio_trig_gpio_store._entry_ptr.15, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"auto-init"}
