; ModuleID = '/llk/IR_all_yes/drivers/leds/trigger/ledtrig-pattern.c_pt.bc'
source_filename = "../drivers/leds/trigger/ledtrig-pattern.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pattern_trig_data = type { ptr, [1024 x %struct.led_pattern], ptr, ptr, %struct.mutex, i32, i32, i32, i32, i8, i8, %struct.timer_list }
%struct.led_pattern = type { i32, i32 }
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

@pattern_led_trigger = internal global { %struct.led_trigger, [48 x i8] } { %struct.led_trigger { ptr @.str, ptr @pattern_trig_activate, ptr @pattern_trig_deactivate, ptr null, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr @pattern_trig_groups }, [48 x i8] zeroinitializer }, align 32
@__initcall__kmod_ledtrig_pattern__183_457_pattern_trig_init6 = internal global ptr @pattern_trig_init, section ".initcall6.init", align 4
@__exitcall_pattern_trig_exit = internal global ptr @pattern_trig_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [64 x i8] c"ledtrig_pattern.author=Raphael Teysseyre <rteysseyre@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author185 = internal constant [60 x i8] c"ledtrig_pattern.author=Baolin Wang <baolin.wang@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description186 = internal constant [48 x i8] c"ledtrig_pattern.description=LED Pattern trigger\00", section ".modinfo", align 1
@__UNIQUE_ID_file187 = internal constant [58 x i8] c"ledtrig_pattern.file=drivers/leds/trigger/ledtrig-pattern\00", section ".modinfo", align 1
@__UNIQUE_ID_license188 = internal constant [31 x i8] c"ledtrig_pattern.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pattern\00", [24 x i8] zeroinitializer }, align 32
@pattern_trig_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @pattern_trig_group, ptr null], [24 x i8] zeroinitializer }, align 32
@pattern_trig_activate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 398, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Hardware pattern ops validation failed\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pattern_trig_activate\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/leds/trigger/ledtrig-pattern.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pattern_trig_activate._entry_ptr = internal global ptr @pattern_trig_activate._entry, section ".printk_index", align 4
@pattern_trig_activate.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@pattern_trig_activate.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&data->timer)\00", [17 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@pattern_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 375, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Expected pattern of tuples\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pattern_init\00", [19 x i8] zeroinitializer }, align 32
@pattern_init._entry_ptr = internal global ptr @pattern_init._entry, section ".printk_index", align 4
@pattern_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.3, i32 382, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Pattern initialization failed with error %d\0A\00", [51 x i8] zeroinitializer }, align 32
@pattern_init._entry_ptr.13 = internal global ptr @pattern_init._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%u %u %n\00", [23 x i8] zeroinitializer }, align 32
@pattern_trig_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @pattern_trig_attrs_mode, ptr null, ptr @pattern_trig_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@pattern_trig_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_pattern, ptr @dev_attr_hw_pattern, ptr @dev_attr_repeat, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_repeat = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @repeat_show, ptr @repeat_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pattern = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pattern_show, ptr @pattern_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hw_pattern = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hw_pattern_show, ptr @hw_pattern_store }, [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"repeat\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%d %u \00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hw_pattern\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private unnamed_addr constant [20 x i8] c"pattern_led_trigger\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 440, i32 27 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 441, i32 10 }
@___asan_gen_.25 = private unnamed_addr constant [20 x i8] c"pattern_trig_groups\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 359, i32 38 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 397, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 405, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 408, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 375, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 381, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 230, i32 33 }
@___asan_gen_.76 = private unnamed_addr constant [19 x i8] c"pattern_trig_group\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 354, i32 37 }
@___asan_gen_.79 = private unnamed_addr constant [19 x i8] c"pattern_trig_attrs\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 347, i32 26 }
@___asan_gen_.82 = private unnamed_addr constant [16 x i8] c"dev_attr_repeat\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"dev_attr_pattern\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 311, i32 8 }
@___asan_gen_.88 = private unnamed_addr constant [20 x i8] c"dev_attr_hw_pattern\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 196, i32 8 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 158, i32 35 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 211, i32 8 }
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private constant [42 x i8] c"../drivers/leds/trigger/ledtrig-pattern.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 331, i32 8 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_author185, ptr @__UNIQUE_ID_description186, ptr @__UNIQUE_ID_file187, ptr @__UNIQUE_ID_license188, ptr @__exitcall_pattern_trig_exit, ptr @__initcall__kmod_ledtrig_pattern__183_457_pattern_trig_init6, ptr @pattern_init._entry, ptr @pattern_init._entry.11, ptr @pattern_init._entry_ptr, ptr @pattern_init._entry_ptr.13, ptr @pattern_trig_activate._entry, ptr @pattern_trig_activate._entry_ptr, ptr @pattern_trig_exit, ptr @pattern_led_trigger, ptr @.str, ptr @pattern_trig_groups, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @pattern_trig_activate.__key, ptr @.str.6, ptr @pattern_trig_activate.__key.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @pattern_trig_group, ptr @pattern_trig_attrs, ptr @dev_attr_repeat, ptr @dev_attr_pattern, ptr @dev_attr_hw_pattern, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pattern_led_trigger to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pattern_trig_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pattern_trig_activate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pattern_trig_activate.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pattern_trig_activate.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pattern_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pattern_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pattern_trig_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pattern_trig_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_repeat to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pattern to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hw_pattern to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pattern_trig_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @led_trigger_unregister(ptr noundef nonnull @pattern_led_trigger) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pattern_trig_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @led_trigger_register(ptr noundef nonnull @pattern_led_trigger) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pattern_trig_activate(ptr noundef %led_cdev) #2 align 64 {
entry:
  %size.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 8364, i32 noundef 3520, i32 noundef 2) #12
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %pattern_set = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 9
  %0 = ptrtoint ptr %pattern_set to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pattern_set, align 4
  %tobool1 = icmp ne ptr %1, null
  %pattern_clear = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 10
  %2 = ptrtoint ptr %pattern_clear to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pattern_clear, align 4
  %tobool3 = icmp ne ptr %3, null
  %xor41 = xor i1 %tobool1, %tobool3
  br i1 %xor41, label %do.end, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 11
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.1) #13
  %6 = ptrtoint ptr %pattern_set to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %pattern_set, align 4
  %7 = ptrtoint ptr %pattern_clear to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pattern_clear, align 4
  br label %if.end12

if.end12:                                         ; preds = %do.end, %if.end.if.end12_crit_edge
  %is_indefinite = getelementptr inbounds %struct.pattern_trig_data, ptr %call1.i.i.i, i32 0, i32 9
  %8 = ptrtoint ptr %is_indefinite to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %is_indefinite, align 8
  %last_repeat = getelementptr inbounds %struct.pattern_trig_data, ptr %call1.i.i.i, i32 0, i32 7
  %9 = ptrtoint ptr %last_repeat to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %last_repeat, align 16
  %lock = getelementptr inbounds %struct.pattern_trig_data, ptr %call1.i.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @pattern_trig_activate.__key) #9
  %10 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %led_cdev, ptr %call1.i.i.i, align 4096
  %trigger_data1.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 26
  %11 = ptrtoint ptr %trigger_data1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call1.i.i.i, ptr %trigger_data1.i, align 4
  %timer = getelementptr inbounds %struct.pattern_trig_data, ptr %call1.i.i.i, i32 0, i32 11
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @pattern_trig_timer_function, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @pattern_trig_activate.__key.7) #9
  %activated = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 27
  %12 = ptrtoint ptr %activated to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %activated, align 4
  %flags = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 3
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and = and i32 %14, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.end12.cleanup_crit_edge, label %if.then21

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then21:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.i) #9
  %15 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %size.i, align 4
  %call.i = call ptr @led_get_default_pattern(ptr noundef %led_cdev, ptr noundef nonnull %size.i) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then21.pattern_init.exit_crit_edge, label %if.end.i

if.then21.pattern_init.exit_crit_edge:            ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %pattern_init.exit

if.end.i:                                         ; preds = %if.then21
  %16 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size.i, align 4
  %rem.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool1.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 11
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.9) #13
  br label %out.i

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = call fastcc i32 @pattern_trig_store_patterns(ptr noundef %led_cdev, ptr noundef null, ptr noundef nonnull %call.i, i32 noundef %17, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %do.end8.i, label %if.end3.i.out.i_crit_edge

if.end3.i.out.i_crit_edge:                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

do.end8.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev9.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 11
  %20 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev9.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.12, i32 noundef %call4.i) #13
  br label %out.i

out.i:                                            ; preds = %do.end8.i, %if.end3.i.out.i_crit_edge, %do.end.i
  call void @kfree(ptr noundef nonnull %call.i) #9
  br label %pattern_init.exit

pattern_init.exit:                                ; preds = %out.i, %if.then21.pattern_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #9
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %and23 = and i32 %23, -8388609
  store i32 %and23, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %pattern_init.exit, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %pattern_init.exit ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pattern_trig_deactivate(ptr noundef %led_cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %trigger_data = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 26
  %0 = ptrtoint ptr %trigger_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trigger_data, align 4
  %activated = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 27
  %2 = ptrtoint ptr %activated to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %activated, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %pattern_clear = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 10
  %4 = ptrtoint ptr %pattern_clear to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pattern_clear, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 %5(ptr noundef %led_cdev) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %timer = getelementptr inbounds %struct.pattern_trig_data, ptr %1, i32 0, i32 11
  %call5 = tail call i32 @del_timer_sync(ptr noundef %timer) #9
  tail call void @led_set_brightness(ptr noundef %led_cdev, i32 noundef 0) #9
  tail call void @kfree(ptr noundef %1) #9
  %6 = ptrtoint ptr %activated to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %activated, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pattern_trig_timer_function(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -8316
  %is_indefinite = getelementptr i8, ptr %t, i32 -4
  %0 = ptrtoint ptr %is_indefinite to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_indefinite, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %repeat = getelementptr i8, ptr %t, i32 -16
  %curr = getelementptr i8, ptr %t, i32 -120
  %next = getelementptr i8, ptr %t, i32 -116
  %delta_t13 = getelementptr i8, ptr %t, i32 -8
  %patterns.i74 = getelementptr i8, ptr %t, i32 -8312
  %npatterns.i80 = getelementptr i8, ptr %t, i32 -20
  %add.ptr.i81 = getelementptr i8, ptr %t, i32 -8320
  br label %for.cond

for.cond:                                         ; preds = %pattern_trig_update_patterns.exit88, %entry
  br i1 %tobool.not, label %land.lhs.true, label %for.cond.if.end_crit_edge

for.cond.if.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %for.cond
  %2 = ptrtoint ptr %repeat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %repeat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.cond.if.end_crit_edge
  %4 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %curr, align 4
  %brightness = getelementptr inbounds %struct.led_pattern, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %brightness, align 4
  %8 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %next, align 4
  %brightness2 = getelementptr inbounds %struct.led_pattern, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %brightness2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %brightness2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %11)
  %cmp = icmp eq i32 %7, %11
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  tail call void @led_set_brightness(ptr noundef %13, i32 noundef %7) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %15 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %curr, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %18) #9
  %add = add i32 %call2.i, %14
  %call7 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #9
  %19 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %next, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool10.not = icmp eq i32 %22, 0
  br i1 %tobool10.not, label %if.then11, label %if.then3.if.end12_crit_edge

if.then3.if.end12_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then11:                                        ; preds = %if.then3
  %23 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %next, align 4
  %25 = ptrtoint ptr %is_indefinite to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %is_indefinite, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  %cmp.i48 = icmp eq ptr %24, %patterns.i74
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i48, i1 false
  br i1 %or.cond.i, label %if.then.i49, label %if.then11.pattern_trig_update_patterns.exit_crit_edge

if.then11.pattern_trig_update_patterns.exit_crit_edge: ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %pattern_trig_update_patterns.exit

if.then.i49:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %repeat to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %repeat, align 4
  %dec.i = add i32 %28, -1
  store i32 %dec.i, ptr %repeat, align 4
  br label %pattern_trig_update_patterns.exit

pattern_trig_update_patterns.exit:                ; preds = %if.then.i49, %if.then11.pattern_trig_update_patterns.exit_crit_edge
  %29 = ptrtoint ptr %npatterns.i80 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %npatterns.i80, align 4
  %add.ptr.i = getelementptr %struct.led_pattern, ptr %patterns.i74, i32 %30
  %add.ptr5.i = getelementptr %struct.led_pattern, ptr %add.ptr.i, i32 -1
  %cmp6.i = icmp eq ptr %24, %add.ptr5.i
  %incdec.ptr.i = getelementptr %struct.led_pattern, ptr %24, i32 1
  %storemerge.i = select i1 %cmp6.i, ptr %patterns.i74, ptr %incdec.ptr.i
  %31 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %storemerge.i, ptr %next, align 4
  br label %if.end12

if.end12:                                         ; preds = %pattern_trig_update_patterns.exit, %if.then3.if.end12_crit_edge
  %32 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %next, align 4
  %34 = ptrtoint ptr %curr to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %curr, align 4
  %35 = ptrtoint ptr %is_indefinite to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %is_indefinite, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i54 = icmp eq i8 %36, 0
  %cmp.i56 = icmp eq ptr %33, %patterns.i74
  %or.cond.i57 = select i1 %tobool.not.i54, i1 %cmp.i56, i1 false
  br i1 %or.cond.i57, label %if.then.i60, label %if.end12.pattern_trig_update_patterns.exit69_crit_edge

if.end12.pattern_trig_update_patterns.exit69_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %pattern_trig_update_patterns.exit69

if.then.i60:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %repeat to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %repeat, align 4
  %dec.i59 = add i32 %38, -1
  store i32 %dec.i59, ptr %repeat, align 4
  br label %pattern_trig_update_patterns.exit69

pattern_trig_update_patterns.exit69:              ; preds = %if.then.i60, %if.end12.pattern_trig_update_patterns.exit69_crit_edge
  %39 = ptrtoint ptr %npatterns.i80 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %npatterns.i80, align 4
  %add.ptr.i62 = getelementptr %struct.led_pattern, ptr %patterns.i74, i32 %40
  %add.ptr5.i63 = getelementptr %struct.led_pattern, ptr %add.ptr.i62, i32 -1
  %cmp6.i64 = icmp eq ptr %33, %add.ptr5.i63
  %incdec.ptr.i65 = getelementptr %struct.led_pattern, ptr %33, i32 1
  %storemerge.i66 = select i1 %cmp6.i64, ptr %patterns.i74, ptr %incdec.ptr.i65
  %41 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %storemerge.i66, ptr %next, align 4
  br label %for.end.sink.split

if.else:                                          ; preds = %if.end
  %42 = ptrtoint ptr %delta_t13 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %delta_t13, align 4
  %44 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp16 = icmp ugt i32 %43, %45
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.else
  %46 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %next, align 4
  %48 = ptrtoint ptr %curr to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %curr, align 4
  %49 = ptrtoint ptr %is_indefinite to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %is_indefinite, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i73 = icmp eq i8 %50, 0
  %cmp.i75 = icmp eq ptr %47, %patterns.i74
  %or.cond.i76 = select i1 %tobool.not.i73, i1 %cmp.i75, i1 false
  br i1 %or.cond.i76, label %if.then.i79, label %if.then17.pattern_trig_update_patterns.exit88_crit_edge

if.then17.pattern_trig_update_patterns.exit88_crit_edge: ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %pattern_trig_update_patterns.exit88

if.then.i79:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %repeat to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %repeat, align 4
  %dec.i78 = add i32 %52, -1
  store i32 %dec.i78, ptr %repeat, align 4
  br label %pattern_trig_update_patterns.exit88

pattern_trig_update_patterns.exit88:              ; preds = %if.then.i79, %if.then17.pattern_trig_update_patterns.exit88_crit_edge
  %53 = ptrtoint ptr %npatterns.i80 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %npatterns.i80, align 4
  %add.ptr5.i82 = getelementptr %struct.led_pattern, ptr %add.ptr.i81, i32 %54
  %cmp6.i83 = icmp eq ptr %47, %add.ptr5.i82
  %incdec.ptr.i84 = getelementptr %struct.led_pattern, ptr %47, i32 1
  %storemerge.i85 = select i1 %cmp6.i83, ptr %patterns.i74, ptr %incdec.ptr.i84
  %55 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %storemerge.i85, ptr %next, align 4
  %56 = ptrtoint ptr %delta_t13 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %delta_t13, align 4
  br label %for.cond

if.end18:                                         ; preds = %if.else
  %57 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %add.ptr, align 4
  %59 = ptrtoint ptr %delta_t13 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %delta_t13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp.i90 = icmp eq i32 %60, 0
  br i1 %cmp.i90, label %if.end18.if.then.i92_crit_edge, label %lor.lhs.false.i

if.end18.if.then.i92_crit_edge:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i92

lor.lhs.false.i:                                  ; preds = %if.end18
  %61 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %curr, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %64)
  %cmp2.i = icmp ult i32 %64, 50
  br i1 %cmp2.i, label %lor.lhs.false.i.if.then.i92_crit_edge, label %if.end.i94

lor.lhs.false.i.if.then.i92_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i92

if.then.i92:                                      ; preds = %lor.lhs.false.i.if.then.i92_crit_edge, %if.end18.if.then.i92_crit_edge
  %65 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %curr, align 4
  %brightness.i = getelementptr inbounds %struct.led_pattern, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %brightness.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %brightness.i, align 4
  br label %pattern_trig_compute_brightness.exit

if.end.i94:                                       ; preds = %lor.lhs.false.i
  %69 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %next, align 4
  %brightness4.i = getelementptr inbounds %struct.led_pattern, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %brightness4.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %brightness4.i, align 4
  %brightness6.i = getelementptr inbounds %struct.led_pattern, ptr %62, i32 0, i32 1
  %73 = ptrtoint ptr %brightness6.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %brightness6.i, align 4
  %sub.i = sub i32 %72, %74
  %75 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #9
  %mul.i = mul i32 %75, %60
  %div.i = udiv i32 %mul.i, %64
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp16.i = icmp sgt i32 %72, %74
  br i1 %cmp16.i, label %if.then17.i, label %if.else.i95

if.then17.i:                                      ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add i32 %div.i, %74
  br label %pattern_trig_compute_brightness.exit

if.else.i95:                                      ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #11
  %sub22.i = sub i32 %74, %div.i
  br label %pattern_trig_compute_brightness.exit

pattern_trig_compute_brightness.exit:             ; preds = %if.else.i95, %if.then17.i, %if.then.i92
  %retval.0.i96 = phi i32 [ %68, %if.then.i92 ], [ %add.i, %if.then17.i ], [ %sub22.i, %if.else.i95 ]
  tail call void @led_set_brightness(ptr noundef %58, i32 noundef %retval.0.i96) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %76 = load volatile i32, ptr @jiffies, align 128
  %add23 = add i32 %76, 5
  %call24 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add23) #9
  %77 = ptrtoint ptr %delta_t13 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %delta_t13, align 4
  %add26 = add i32 %78, 50
  br label %for.end.sink.split

for.end.sink.split:                               ; preds = %pattern_trig_compute_brightness.exit, %pattern_trig_update_patterns.exit69
  %.sink = phi i32 [ 0, %pattern_trig_update_patterns.exit69 ], [ %add26, %pattern_trig_compute_brightness.exit ]
  %79 = ptrtoint ptr %delta_t13 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %.sink, ptr %delta_t13, align 4
  br label %for.end

for.end:                                          ; preds = %for.end.sink.split, %land.lhs.true.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_set_brightness(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @led_get_default_pattern(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pattern_trig_store_patterns(ptr noundef %led_cdev, ptr noundef readonly %buf, ptr nocapture noundef readonly %buf_int, i32 noundef %count, i1 noundef zeroext %hw_pattern) unnamed_addr #2 align 64 {
entry:
  %cr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %hw_pattern to i8
  %trigger_data = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 26
  %0 = ptrtoint ptr %trigger_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trigger_data, align 4
  %lock = getelementptr inbounds %struct.pattern_trig_data, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %timer = getelementptr inbounds %struct.pattern_trig_data, ptr %1, i32 0, i32 11
  %call = tail call i32 @del_timer_sync(ptr noundef %timer) #9
  %is_hw_pattern = getelementptr inbounds %struct.pattern_trig_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %is_hw_pattern to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_hw_pattern, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pattern_clear = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 10
  %4 = ptrtoint ptr %pattern_clear to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pattern_clear, align 4
  %call1 = tail call i32 %5(ptr noundef %led_cdev) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %is_hw_pattern to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %is_hw_pattern, align 1
  %npatterns = getelementptr inbounds %struct.pattern_trig_data, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %npatterns to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %npatterns, align 4
  %tobool5.not = icmp eq ptr %buf, null
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cr.i) #9
  %sub.i = add i32 %count, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp27.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp27.not.i, label %if.then6.if.end9.thread51_crit_edge, label %if.then6.land.rhs.i_crit_edge

if.then6.land.rhs.i_crit_edge:                    ; preds = %if.then6
  br label %land.rhs.i

if.then6.if.end9.thread51_crit_edge:              ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.thread51

land.rhs.i:                                       ; preds = %if.end.i.land.rhs.i_crit_edge, %if.then6.land.rhs.i_crit_edge
  %8 = phi i32 [ %inc.i, %if.end.i.land.rhs.i_crit_edge ], [ 0, %if.then6.land.rhs.i_crit_edge ]
  %offset.028.i = phi i32 [ %add.i, %if.end.i.land.rhs.i_crit_edge ], [ 0, %if.then6.land.rhs.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %8)
  %cmp1.i = icmp ult i32 %8, 1024
  br i1 %cmp1.i, label %while.body.i, label %land.rhs.i.if.end9.thread51_crit_edge

land.rhs.i.if.end9.thread51_crit_edge:            ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.thread51

while.body.i:                                     ; preds = %land.rhs.i
  %9 = ptrtoint ptr %cr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %cr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %offset.028.i
  %arrayidx.i = getelementptr %struct.pattern_trig_data, ptr %1, i32 0, i32 1, i32 %8
  %brightness.i = getelementptr %struct.pattern_trig_data, ptr %1, i32 0, i32 1, i32 %8, i32 1
  %call.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.14, ptr noundef %brightness.i, ptr noundef %arrayidx.i, ptr noundef nonnull %cr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp6.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp6.not.i, label %lor.lhs.false.i, label %while.body.i.out.thread62_crit_edge

while.body.i.out.thread62_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread62

lor.lhs.false.i:                                  ; preds = %while.body.i
  %10 = ptrtoint ptr %npatterns to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %npatterns, align 4
  %brightness10.i = getelementptr %struct.pattern_trig_data, ptr %1, i32 0, i32 1, i32 %11, i32 1
  %12 = ptrtoint ptr %brightness10.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %brightness10.i, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %max_brightness.i = getelementptr inbounds %struct.led_classdev, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_brightness.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %17)
  %cmp11.i = icmp ugt i32 %13, %17
  br i1 %cmp11.i, label %lor.lhs.false.i.out.thread62_crit_edge, label %if.end.i

lor.lhs.false.i.out.thread62_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread62

if.end.i:                                         ; preds = %lor.lhs.false.i
  %18 = ptrtoint ptr %cr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cr.i, align 4
  %add.i = add i32 %19, %offset.028.i
  %inc.i = add i32 %11, 1
  %20 = ptrtoint ptr %npatterns to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %inc.i, ptr %npatterns, align 4
  %cmp.i = icmp ult i32 %add.i, %sub.i
  br i1 %cmp.i, label %if.end.i.land.rhs.i_crit_edge, label %if.end.i.if.end9.thread51_crit_edge

if.end.i.if.end9.thread51_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.thread51

if.end.i.land.rhs.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp1.not.i = icmp eq i32 %count, 0
  br i1 %cmp1.not.i, label %if.else.if.end12_crit_edge, label %if.else.for.body.i_crit_edge

if.else.for.body.i_crit_edge:                     ; preds = %if.else
  br label %for.body.i

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.else.for.body.i_crit_edge
  %i.02.i = phi i32 [ %add7.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.else.for.body.i_crit_edge ]
  %arrayidx.i37 = getelementptr i32, ptr %buf_int, i32 %i.02.i
  %21 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i37, align 4
  %23 = ptrtoint ptr %npatterns to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %npatterns, align 4
  %brightness.i38 = getelementptr %struct.pattern_trig_data, ptr %1, i32 0, i32 1, i32 %24, i32 1
  %25 = ptrtoint ptr %brightness.i38 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %22, ptr %brightness.i38, align 4
  %add.i39 = or i32 %i.02.i, 1
  %arrayidx2.i = getelementptr i32, ptr %buf_int, i32 %add.i39
  %26 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx2.i, align 4
  %28 = load i32, ptr %npatterns, align 4
  %arrayidx5.i = getelementptr %struct.pattern_trig_data, ptr %1, i32 0, i32 1, i32 %28
  %29 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %27, ptr %arrayidx5.i, align 4
  %inc.i40 = add i32 %28, 1
  store i32 %inc.i40, ptr %npatterns, align 4
  %add7.i = add i32 %i.02.i, 2
  %cmp.i41 = icmp ult i32 %add7.i, %count
  br i1 %cmp.i41, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end12_crit_edge

for.body.i.if.end12_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end9.thread51:                                 ; preds = %if.end.i.if.end9.thread51_crit_edge, %land.rhs.i.if.end9.thread51_crit_edge, %if.then6.if.end9.thread51_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cr.i) #9
  br label %if.end12

out.thread62:                                     ; preds = %lor.lhs.false.i.out.thread62_crit_edge, %while.body.i.out.thread62_crit_edge
  %30 = ptrtoint ptr %npatterns to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %npatterns, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cr.i) #9
  br label %.sink.split

if.end12:                                         ; preds = %if.end9.thread51, %for.body.i.if.end12_crit_edge, %if.else.if.end12_crit_edge
  %31 = ptrtoint ptr %trigger_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %trigger_data, align 4
  %npatterns.i42 = getelementptr inbounds %struct.pattern_trig_data, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %npatterns.i42 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %npatterns.i42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i, label %if.end12.out.thread_crit_edge, label %if.end.i43

if.end12.out.thread_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread

if.end.i43:                                       ; preds = %if.end12
  %is_hw_pattern.i = getelementptr inbounds %struct.pattern_trig_data, ptr %32, i32 0, i32 10
  %35 = ptrtoint ptr %is_hw_pattern.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %is_hw_pattern.i, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool1.not.i = icmp eq i8 %36, 0
  br i1 %tobool1.not.i, label %if.end4.i, label %pattern_trig_start_pattern.exit

if.end4.i:                                        ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp.i45 = icmp ult i32 %34, 2
  br i1 %cmp.i45, label %out.thread66, label %if.end7.i

out.thread66:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %npatterns to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %npatterns, align 4
  br label %.sink.split

if.end7.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %delta_t.i = getelementptr inbounds %struct.pattern_trig_data, ptr %32, i32 0, i32 8
  %38 = ptrtoint ptr %delta_t.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %delta_t.i, align 4
  %patterns8.i = getelementptr inbounds %struct.pattern_trig_data, ptr %32, i32 0, i32 1
  %curr.i = getelementptr inbounds %struct.pattern_trig_data, ptr %32, i32 0, i32 2
  %39 = ptrtoint ptr %curr.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %patterns8.i, ptr %curr.i, align 4
  %add.ptr.i46 = getelementptr %struct.pattern_trig_data, ptr %32, i32 0, i32 1, i32 1
  %next.i = getelementptr inbounds %struct.pattern_trig_data, ptr %32, i32 0, i32 3
  %40 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr.i46, ptr %next.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %timer.i = getelementptr inbounds %struct.pattern_trig_data, ptr %32, i32 0, i32 11
  %expires.i = getelementptr inbounds %struct.pattern_trig_data, ptr %32, i32 0, i32 11, i32 1
  %42 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %expires.i, align 4
  call void @add_timer(ptr noundef %timer.i) #9
  br label %out.thread

pattern_trig_start_pattern.exit:                  ; preds = %if.end.i43
  %pattern_set.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 9
  %43 = ptrtoint ptr %pattern_set.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pattern_set.i, align 4
  %patterns.i = getelementptr inbounds %struct.pattern_trig_data, ptr %32, i32 0, i32 1
  %repeat.i = getelementptr inbounds %struct.pattern_trig_data, ptr %32, i32 0, i32 6
  %45 = ptrtoint ptr %repeat.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %repeat.i, align 4
  %call.i44 = call i32 %44(ptr noundef %led_cdev, ptr noundef %patterns.i, i32 noundef %34, i32 noundef %46) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool14.not = icmp eq i32 %call.i44, 0
  br i1 %tobool14.not, label %pattern_trig_start_pattern.exit.out.thread_crit_edge, label %out

pattern_trig_start_pattern.exit.out.thread_crit_edge: ; preds = %pattern_trig_start_pattern.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread

out.thread:                                       ; preds = %pattern_trig_start_pattern.exit.out.thread_crit_edge, %if.end7.i, %if.end12.out.thread_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %49

out:                                              ; preds = %pattern_trig_start_pattern.exit
  %47 = ptrtoint ptr %npatterns to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %npatterns, align 4
  call void @mutex_unlock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %cmp = icmp slt i32 %call.i44, 0
  br i1 %cmp, label %out._crit_edge, label %out._crit_edge69

out._crit_edge69:                                 ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %49

out._crit_edge:                                   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %48

.sink.split:                                      ; preds = %out.thread66, %out.thread62
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %48

48:                                               ; preds = %.sink.split, %out._crit_edge
  %err.165 = phi i32 [ %call.i44, %out._crit_edge ], [ -22, %.sink.split ]
  br label %49

49:                                               ; preds = %48, %out._crit_edge69, %out.thread
  %50 = phi i32 [ %err.165, %48 ], [ %count, %out._crit_edge69 ], [ %count, %out.thread ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @pattern_trig_attrs_mode(ptr nocapture noundef readonly %kobj, ptr noundef readonly %attr, i32 noundef %index) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cmp = icmp eq ptr %attr, @dev_attr_repeat
  %cmp2 = icmp eq ptr %attr, @dev_attr_pattern
  %or.cond = or i1 %cmp, %cmp2
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  %cmp3 = icmp eq ptr %attr, @dev_attr_hw_pattern
  br i1 %cmp3, label %land.lhs.true, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %pattern_set = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %pattern_set to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pattern_set, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.cleanup.sink.split_crit_edge

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %land.lhs.true.cleanup.sink.split_crit_edge, %if.then
  %.sink = phi ptr [ %mode, %if.then ], [ getelementptr inbounds (%struct.device_attribute, ptr @dev_attr_hw_pattern, i32 0, i32 0, i32 1), %land.lhs.true.cleanup.sink.split_crit_edge ]
  %4 = ptrtoint ptr %.sink to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i16 [ 0, %if.else.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %5, %cleanup.sink.split ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @repeat_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %trigger_data = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %trigger_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trigger_data, align 4
  %lock = getelementptr inbounds %struct.pattern_trig_data, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %last_repeat = getelementptr inbounds %struct.pattern_trig_data, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %last_repeat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_repeat, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.16, i32 noundef %5) #9
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @repeat_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %res = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %trigger_data = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %trigger_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trigger_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #9
  %4 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %res, align 4, !annotation !70
  %call.i = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %res) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp = icmp slt i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2 = icmp eq i32 %6, 0
  %or.cond = or i1 %cmp, %cmp2
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.pattern_trig_data, ptr %3, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %timer = getelementptr inbounds %struct.pattern_trig_data, ptr %3, i32 0, i32 11
  %call5 = call i32 @del_timer_sync(ptr noundef %timer) #9
  %is_hw_pattern = getelementptr inbounds %struct.pattern_trig_data, ptr %3, i32 0, i32 10
  %7 = ptrtoint ptr %is_hw_pattern to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_hw_pattern, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool6.not = icmp eq i8 %8, 0
  br i1 %tobool6.not, label %if.end4.if.end9_crit_edge, label %if.then7

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %pattern_clear = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %pattern_clear to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pattern_clear, align 4
  %call8 = call i32 %10(ptr noundef %1) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end4.if.end9_crit_edge
  %11 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %res, align 4
  %repeat = getelementptr inbounds %struct.pattern_trig_data, ptr %3, i32 0, i32 6
  %13 = ptrtoint ptr %repeat to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %repeat, align 4
  %last_repeat = getelementptr inbounds %struct.pattern_trig_data, ptr %3, i32 0, i32 7
  %14 = ptrtoint ptr %last_repeat to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %12, ptr %last_repeat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp11 = icmp eq i32 %12, -1
  %spec.select = zext i1 %cmp11 to i8
  %15 = getelementptr inbounds %struct.pattern_trig_data, ptr %3, i32 0, i32 9
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %spec.select, ptr %15, align 4
  %17 = ptrtoint ptr %trigger_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %trigger_data, align 4
  %npatterns.i = getelementptr inbounds %struct.pattern_trig_data, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %npatterns.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %npatterns.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %if.end9.pattern_trig_start_pattern.exit.thread_crit_edge, label %if.end.i

if.end9.pattern_trig_start_pattern.exit.thread_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %pattern_trig_start_pattern.exit.thread

if.end.i:                                         ; preds = %if.end9
  %is_hw_pattern.i = getelementptr inbounds %struct.pattern_trig_data, ptr %18, i32 0, i32 10
  %21 = ptrtoint ptr %is_hw_pattern.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %is_hw_pattern.i, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool1.not.i = icmp eq i8 %22, 0
  br i1 %tobool1.not.i, label %if.end4.i, label %pattern_trig_start_pattern.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp.i = icmp ult i32 %20, 2
  br i1 %cmp.i, label %pattern_trig_start_pattern.exit.thread38, label %if.end7.i

pattern_trig_start_pattern.exit.thread38:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %32

if.end7.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %delta_t.i = getelementptr inbounds %struct.pattern_trig_data, ptr %18, i32 0, i32 8
  %23 = ptrtoint ptr %delta_t.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %delta_t.i, align 4
  %patterns8.i = getelementptr inbounds %struct.pattern_trig_data, ptr %18, i32 0, i32 1
  %curr.i = getelementptr inbounds %struct.pattern_trig_data, ptr %18, i32 0, i32 2
  %24 = ptrtoint ptr %curr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %patterns8.i, ptr %curr.i, align 4
  %add.ptr.i = getelementptr %struct.pattern_trig_data, ptr %18, i32 0, i32 1, i32 1
  %next.i = getelementptr inbounds %struct.pattern_trig_data, ptr %18, i32 0, i32 3
  %25 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr.i, ptr %next.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %timer.i = getelementptr inbounds %struct.pattern_trig_data, ptr %18, i32 0, i32 11
  %expires.i = getelementptr inbounds %struct.pattern_trig_data, ptr %18, i32 0, i32 11, i32 1
  %27 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %expires.i, align 4
  call void @add_timer(ptr noundef %timer.i) #9
  br label %pattern_trig_start_pattern.exit.thread

pattern_trig_start_pattern.exit.thread:           ; preds = %if.end7.i, %if.end9.pattern_trig_start_pattern.exit.thread_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

pattern_trig_start_pattern.exit:                  ; preds = %if.end.i
  %pattern_set.i = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 9
  %28 = ptrtoint ptr %pattern_set.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pattern_set.i, align 4
  %patterns.i = getelementptr inbounds %struct.pattern_trig_data, ptr %18, i32 0, i32 1
  %repeat.i = getelementptr inbounds %struct.pattern_trig_data, ptr %18, i32 0, i32 6
  %30 = ptrtoint ptr %repeat.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %repeat.i, align 4
  %call.i35 = call i32 %29(ptr noundef %1, ptr noundef %patterns.i, i32 noundef %20, i32 noundef %31) #9
  call void @mutex_unlock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %cmp17 = icmp slt i32 %call.i35, 0
  br i1 %cmp17, label %pattern_trig_start_pattern.exit._crit_edge, label %pattern_trig_start_pattern.exit.cleanup_crit_edge

pattern_trig_start_pattern.exit.cleanup_crit_edge: ; preds = %pattern_trig_start_pattern.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

pattern_trig_start_pattern.exit._crit_edge:       ; preds = %pattern_trig_start_pattern.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %32

32:                                               ; preds = %pattern_trig_start_pattern.exit._crit_edge, %pattern_trig_start_pattern.exit.thread38
  %retval.0.i41 = phi i32 [ -22, %pattern_trig_start_pattern.exit.thread38 ], [ %call.i35, %pattern_trig_start_pattern.exit._crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %32, %pattern_trig_start_pattern.exit.cleanup_crit_edge, %pattern_trig_start_pattern.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.i41, %32 ], [ %count, %pattern_trig_start_pattern.exit.cleanup_crit_edge ], [ %count, %pattern_trig_start_pattern.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pattern_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %trigger_data = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %trigger_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trigger_data, align 4
  %lock.i = getelementptr inbounds %struct.pattern_trig_data, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %npatterns.i = getelementptr inbounds %struct.pattern_trig_data, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %npatterns.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %npatterns.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %entry.pattern_trig_show_patterns.exit_crit_edge, label %lor.lhs.false.i

entry.pattern_trig_show_patterns.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pattern_trig_show_patterns.exit

lor.lhs.false.i:                                  ; preds = %entry
  %is_hw_pattern.i = getelementptr inbounds %struct.pattern_trig_data, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %is_hw_pattern.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_hw_pattern.i, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not.i = icmp eq i8 %7, 0
  br i1 %tobool4.not.i, label %lor.lhs.false.i.for.body.i_crit_edge, label %lor.lhs.false.i.pattern_trig_show_patterns.exit_crit_edge

lor.lhs.false.i.pattern_trig_show_patterns.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pattern_trig_show_patterns.exit

lor.lhs.false.i.for.body.i_crit_edge:             ; preds = %lor.lhs.false.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %lor.lhs.false.i.for.body.i_crit_edge
  %i.028.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %lor.lhs.false.i.for.body.i_crit_edge ]
  %count.027.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %lor.lhs.false.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %count.027.i
  %sub.i = sub i32 4096, %count.027.i
  %arrayidx.i = getelementptr %struct.pattern_trig_data, ptr %3, i32 0, i32 1, i32 %i.028.i
  %brightness.i = getelementptr %struct.pattern_trig_data, ptr %3, i32 0, i32 1, i32 %i.028.i, i32 1
  %8 = ptrtoint ptr %brightness.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %brightness.i, align 4
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef nonnull @.str.17, i32 noundef %9, i32 noundef %11) #9
  %add.i = add i32 %call.i, %count.027.i
  %inc.i = add nuw i32 %i.028.i, 1
  %12 = ptrtoint ptr %npatterns.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %npatterns.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %13
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub9.i = add i32 %add.i, -1
  %arrayidx10.i = getelementptr i8, ptr %buf, i32 %sub9.i
  %14 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 10, ptr %arrayidx10.i, align 1
  br label %pattern_trig_show_patterns.exit

pattern_trig_show_patterns.exit:                  ; preds = %for.end.i, %lor.lhs.false.i.pattern_trig_show_patterns.exit_crit_edge, %entry.pattern_trig_show_patterns.exit_crit_edge
  %count.1.i = phi i32 [ 0, %lor.lhs.false.i.pattern_trig_show_patterns.exit_crit_edge ], [ %add.i, %for.end.i ], [ 0, %entry.pattern_trig_show_patterns.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  ret i32 %count.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pattern_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @pattern_trig_store_patterns(ptr noundef %1, ptr noundef %buf, ptr noundef null, i32 noundef %count, i1 noundef zeroext false)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_pattern_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %trigger_data = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %trigger_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trigger_data, align 4
  %lock.i = getelementptr inbounds %struct.pattern_trig_data, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %npatterns.i = getelementptr inbounds %struct.pattern_trig_data, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %npatterns.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %npatterns.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %entry.pattern_trig_show_patterns.exit_crit_edge, label %lor.lhs.false.i

entry.pattern_trig_show_patterns.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pattern_trig_show_patterns.exit

lor.lhs.false.i:                                  ; preds = %entry
  %is_hw_pattern.i = getelementptr inbounds %struct.pattern_trig_data, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %is_hw_pattern.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_hw_pattern.i, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %tobool4.not.i = icmp eq i8 %7, 1
  br i1 %tobool4.not.i, label %lor.lhs.false.i.for.body.i_crit_edge, label %lor.lhs.false.i.pattern_trig_show_patterns.exit_crit_edge

lor.lhs.false.i.pattern_trig_show_patterns.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pattern_trig_show_patterns.exit

lor.lhs.false.i.for.body.i_crit_edge:             ; preds = %lor.lhs.false.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %lor.lhs.false.i.for.body.i_crit_edge
  %i.028.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %lor.lhs.false.i.for.body.i_crit_edge ]
  %count.027.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %lor.lhs.false.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %count.027.i
  %sub.i = sub i32 4096, %count.027.i
  %arrayidx.i = getelementptr %struct.pattern_trig_data, ptr %3, i32 0, i32 1, i32 %i.028.i
  %brightness.i = getelementptr %struct.pattern_trig_data, ptr %3, i32 0, i32 1, i32 %i.028.i, i32 1
  %8 = ptrtoint ptr %brightness.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %brightness.i, align 4
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef nonnull @.str.17, i32 noundef %9, i32 noundef %11) #9
  %add.i = add i32 %call.i, %count.027.i
  %inc.i = add nuw i32 %i.028.i, 1
  %12 = ptrtoint ptr %npatterns.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %npatterns.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %13
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub9.i = add i32 %add.i, -1
  %arrayidx10.i = getelementptr i8, ptr %buf, i32 %sub9.i
  %14 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 10, ptr %arrayidx10.i, align 1
  br label %pattern_trig_show_patterns.exit

pattern_trig_show_patterns.exit:                  ; preds = %for.end.i, %lor.lhs.false.i.pattern_trig_show_patterns.exit_crit_edge, %entry.pattern_trig_show_patterns.exit_crit_edge
  %count.1.i = phi i32 [ 0, %lor.lhs.false.i.pattern_trig_show_patterns.exit_crit_edge ], [ %add.i, %for.end.i ], [ 0, %entry.pattern_trig_show_patterns.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  ret i32 %count.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_pattern_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @pattern_trig_store_patterns(ptr noundef %1, ptr noundef %buf, ptr noundef null, i32 noundef %count, i1 noundef zeroext true)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_trigger_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !44, !46, !48, !49, !51, !53, !55, !57, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__initcall__kmod_ledtrig_pattern__183_457_pattern_trig_init6, !1, !"__initcall__kmod_ledtrig_pattern__183_457_pattern_trig_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/trigger/ledtrig-pattern.c", i32 457, i32 1}
!2 = !{ptr @__exitcall_pattern_trig_exit, !3, !"__exitcall_pattern_trig_exit", i1 false, i1 false}
!3 = !{!"../drivers/leds/trigger/ledtrig-pattern.c", i32 458, i32 1}
!4 = !{ptr @__UNIQUE_ID_author184, !5, !"__UNIQUE_ID_author184", i1 false, i1 false}
!5 = !{!"../drivers/leds/trigger/ledtrig-pattern.c", i32 460, i32 1}
!6 = !{ptr @__UNIQUE_ID_author185, !7, !"__UNIQUE_ID_author185", i1 false, i1 false}
!7 = !{!"../drivers/leds/trigger/ledtrig-pattern.c", i32 461, i32 1}
!8 = !{ptr @__UNIQUE_ID_description186, !9, !"__UNIQUE_ID_description186", i1 false, i1 false}
!9 = !{!"../drivers/leds/trigger/ledtrig-pattern.c", i32 462, i32 1}
!10 = !{ptr @__UNIQUE_ID_file187, !11, !"__UNIQUE_ID_file187", i1 false, i1 false}
!11 = !{!"../drivers/leds/trigger/ledtrig-pattern.c", i32 463, i32 1}
!12 = !{ptr @__UNIQUE_ID_license188, !11, !"__UNIQUE_ID_license188", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/leds/trigger/ledtrig-pattern.c", i32 441, i32 10}
!15 = !{ptr @pattern_led_trigger, !16, !"pattern_led_trigger", i1 false, i1 false}
!16 = !{!"../drivers/leds/trigger/ledtrig-pattern.c", i32 440, i32 27}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/leds/trigger/ledtrig-pattern.c", i32 397, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @pattern_trig_activate._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @pattern_trig_activate._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @pattern_trig_activate.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/leds/trigger/ledtrig-pattern.c", i32 405, i32 2}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @pattern_trig_activate.__key.7, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/leds/trigger/ledtrig-pattern.c", i32 408, i32 2}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/leds/trigger/ledtrig-pattern.c", i32 375, i32 3}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @pattern_init._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @pattern_init._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/leds/trigger/ledtrig-pattern.c", i32 381, i32 3}
!38 = !{ptr @pattern_init._entry.11, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @pattern_init._entry_ptr.13, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/leds/trigger/ledtrig-pattern.c", i32 230, i32 33}
!42 = !{ptr @pattern_trig_groups, !43, !"pattern_trig_groups", i1 false, i1 false}
!43 = !{!"../drivers/leds/trigger/ledtrig-pattern.c", i32 359, i32 38}
!44 = !{ptr @pattern_trig_group, !45, !"pattern_trig_group", i1 false, i1 false}
!45 = !{!"../drivers/leds/trigger/ledtrig-pattern.c", i32 354, i32 37}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/leds/trigger/ledtrig-pattern.c", i32 196, i32 8}
!48 = !{ptr @dev_attr_repeat, !47, !"dev_attr_repeat", i1 false, i1 false}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/leds/trigger/ledtrig-pattern.c", i32 158, i32 35}
!51 = !{ptr @dev_attr_pattern, !52, !"dev_attr_pattern", i1 false, i1 false}
!52 = !{!"../drivers/leds/trigger/ledtrig-pattern.c", i32 311, i32 8}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/leds/trigger/ledtrig-pattern.c", i32 211, i32 8}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/leds/trigger/ledtrig-pattern.c", i32 331, i32 8}
!57 = !{ptr @dev_attr_hw_pattern, !56, !"dev_attr_hw_pattern", i1 false, i1 false}
!58 = !{ptr @pattern_trig_attrs, !59, !"pattern_trig_attrs", i1 false, i1 false}
!59 = !{!"../drivers/leds/trigger/ledtrig-pattern.c", i32 347, i32 26}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i8 0, i8 2}
!70 = !{!"auto-init"}
