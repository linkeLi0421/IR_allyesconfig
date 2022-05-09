; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-regulator.c_pt.bc'
source_filename = "../drivers/leds/leds-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.led_regulator_platform_data = type { ptr, i32 }
%struct.regulator_led = type { %struct.led_classdev, i32, %struct.mutex, ptr }

@__initcall__kmod_leds_regulator__289_195_regulator_led_driver_init6 = internal global ptr @regulator_led_driver_init, section ".initcall6.init", align 4
@regulator_led_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @regulator_led_probe, ptr @regulator_led_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_regulator_led_driver_exit = internal global ptr @regulator_led_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [64 x i8] c"leds_regulator.author=Antonio Ospite <ospite@studenti.unina.it>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [55 x i8] c"leds_regulator.description=Regulator driven LED driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [48 x i8] c"leds_regulator.file=drivers/leds/leds-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [27 x i8] c"leds_regulator.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias294 = internal constant [45 x i8] c"leds_regulator.alias=platform:leds-regulator\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"leds-regulator\00", [17 x i8] zeroinitializer }, align 32
@regulator_led_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 131, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no platform data\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"regulator_led_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/leds/leds-regulator.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@regulator_led_probe._entry_ptr = internal global ptr @regulator_led_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vled\00", [27 x i8] zeroinitializer }, align 32
@regulator_led_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 137, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Cannot get vcc for %s\0A\00", [41 x i8] zeroinitializer }, align 32
@regulator_led_probe._entry_ptr.9 = internal global ptr @regulator_led_probe._entry.7, section ".printk_index", align 4
@regulator_led_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 148, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid default brightness %d\0A\00", [33 x i8] zeroinitializer }, align 32
@regulator_led_probe._entry_ptr.12 = internal global ptr @regulator_led_probe._entry.10, section ".printk_index", align 4
@regulator_led_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&led->mutex\00", [20 x i8] zeroinitializer }, align 32
@regulator_led_brightness_set.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.3, ptr @.str.16, i8 0, i8 26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"leds_regulator\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"regulator_led_brightness_set\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"brightness: %d voltage: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@regulator_led_brightness_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.3, i32 112, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to set voltage %d: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@regulator_led_brightness_set._entry_ptr = internal global ptr @regulator_led_brightness_set._entry, section ".printk_index", align 4
@regulator_led_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 83, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to disable vcc: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"regulator_led_disable\00", [42 x i8] zeroinitializer }, align 32
@regulator_led_disable._entry_ptr = internal global ptr @regulator_led_disable._entry, section ".printk_index", align 4
@regulator_led_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 67, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to enable vcc: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"regulator_led_enable\00", [43 x i8] zeroinitializer }, align 32
@regulator_led_enable._entry_ptr = internal global ptr @regulator_led_enable._entry, section ".printk_index", align 4
@___asan_gen_.22 = private unnamed_addr constant [21 x i8] c"regulator_led_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 187, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 189, i32 15 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 131, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 135, i32 49 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 137, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 147, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 161, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 106, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 111, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 83, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.98 = private constant [33 x i8] c"../drivers/leds/leds-regulator.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 67, i32 3 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_alias294, ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_regulator_led_driver_exit, ptr @__initcall__kmod_leds_regulator__289_195_regulator_led_driver_init6, ptr @regulator_led_brightness_set._entry, ptr @regulator_led_brightness_set._entry_ptr, ptr @regulator_led_disable._entry, ptr @regulator_led_disable._entry_ptr, ptr @regulator_led_driver_exit, ptr @regulator_led_enable._entry, ptr @regulator_led_enable._entry_ptr, ptr @regulator_led_probe._entry, ptr @regulator_led_probe._entry.10, ptr @regulator_led_probe._entry.7, ptr @regulator_led_probe._entry_ptr, ptr @regulator_led_probe._entry_ptr.12, ptr @regulator_led_probe._entry_ptr.9, ptr @regulator_led_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @regulator_led_probe.__key, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulator_led_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulator_led_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulator_led_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulator_led_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulator_led_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulator_led_brightness_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulator_led_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulator_led_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @regulator_led_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @regulator_led_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @regulator_led_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @regulator_led_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regulator_led_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @devm_regulator_get_exclusive(ptr noundef %dev, ptr noundef nonnull @.str.6) #4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef %3) #7
  %4 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 500, i32 noundef 3520) #4
  %cmp14 = icmp eq ptr %call.i, null
  br i1 %cmp14, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %call.i87 = tail call i32 @regulator_list_voltage(ptr noundef %call3, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i87)
  %cmp.i88 = icmp slt i32 %call.i87, 1
  br i1 %cmp.i88, label %if.end16.led_regulator_get_max_brightness.exit_crit_edge, label %if.end.i

if.end16.led_regulator_get_max_brightness.exit_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %led_regulator_get_max_brightness.exit

if.end.i:                                         ; preds = %if.end16
  %call1.i = tail call i32 @regulator_set_voltage(ptr noundef %call3, i32 noundef %call.i87, i32 noundef %call.i87) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i.led_regulator_get_max_brightness.exit_crit_edge, label %if.end4.i

if.end.i.led_regulator_get_max_brightness.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %led_regulator_get_max_brightness.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call5.i = tail call i32 @regulator_count_voltages(ptr noundef %call3) #4
  br label %led_regulator_get_max_brightness.exit

led_regulator_get_max_brightness.exit:            ; preds = %if.end4.i, %if.end.i.led_regulator_get_max_brightness.exit_crit_edge, %if.end16.led_regulator_get_max_brightness.exit_crit_edge
  %retval.0.i = phi i32 [ %call5.i, %if.end4.i ], [ 1, %if.end16.led_regulator_get_max_brightness.exit_crit_edge ], [ 1, %if.end.i.led_regulator_get_max_brightness.exit_crit_edge ]
  %max_brightness = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %retval.0.i, ptr %max_brightness, align 4
  %brightness = getelementptr inbounds %struct.led_regulator_platform_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %brightness, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %retval.0.i)
  %cmp20 = icmp ugt i32 %7, %retval.0.i
  br i1 %cmp20, label %do.end24, label %if.end27

do.end24:                                         ; preds = %led_regulator_get_max_brightness.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %7) #7
  br label %cleanup

if.end27:                                         ; preds = %led_regulator_get_max_brightness.exit
  %brightness_set_blocking = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %brightness_set_blocking to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @regulator_led_brightness_set, ptr %brightness_set_blocking, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %call.i, align 4
  %flags = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %or = or i32 %13, 65536
  store i32 %or, ptr %flags, align 4
  %vcc33 = getelementptr inbounds %struct.regulator_led, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %vcc33 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call3, ptr %vcc33, align 4
  %call35 = tail call i32 @regulator_is_enabled(ptr noundef %call3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool.not = icmp eq i32 %call35, 0
  br i1 %tobool.not, label %if.end27.do.body38_crit_edge, label %if.then36

if.end27.do.body38_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body38

if.then36:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  %enabled = getelementptr inbounds %struct.regulator_led, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %enabled, align 4
  br label %do.body38

do.body38:                                        ; preds = %if.then36, %if.end27.do.body38_crit_edge
  %mutex = getelementptr inbounds %struct.regulator_led, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.13, ptr noundef nonnull @regulator_led_probe.__key) #4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i89 = tail call i32 @led_classdev_register_ext(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %cmp44 = icmp slt i32 %call.i89, 0
  br i1 %cmp44, label %do.body38.cleanup_crit_edge, label %if.end46

do.body38.cleanup_crit_edge:                      ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end46:                                         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %brightness, align 4
  %brightness49 = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %brightness49 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %brightness49, align 4
  %call53 = tail call i32 @regulator_led_brightness_set(ptr noundef nonnull %call.i, i32 noundef %18)
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %do.body38.cleanup_crit_edge, %do.end24, %if.end11.cleanup_crit_edge, %do.end8, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %4, %do.end8 ], [ -22, %do.end24 ], [ 0, %if.end46 ], [ -12, %if.end11.cleanup_crit_edge ], [ %call.i89, %do.body38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regulator_led_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @led_classdev_unregister(ptr noundef %1) #4
  %enabled.i = getelementptr inbounds %struct.regulator_led, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.regulator_led_disable.exit_crit_edge, label %if.end.i

entry.regulator_led_disable.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %regulator_led_disable.exit

if.end.i:                                         ; preds = %entry
  %vcc.i = getelementptr inbounds %struct.regulator_led, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %vcc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vcc.i, align 4
  %call.i = tail call i32 @regulator_disable(ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end2.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.18, i32 noundef %call.i) #7
  br label %regulator_led_disable.exit

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %enabled.i, align 4
  br label %regulator_led_disable.exit

regulator_led_disable.exit:                       ; preds = %if.end2.i, %do.end.i, %entry.regulator_led_disable.exit_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_exclusive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regulator_led_brightness_set(ptr noundef %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.regulator_led, ptr %led_cdev, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp = icmp eq i32 %value, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %enabled.i = getelementptr inbounds %struct.regulator_led, ptr %led_cdev, i32 0, i32 1
  %0 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.then.out_crit_edge, label %if.end.i

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end.i:                                         ; preds = %if.then
  %vcc.i = getelementptr inbounds %struct.regulator_led, ptr %led_cdev, i32 0, i32 3
  %2 = ptrtoint ptr %vcc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vcc.i, align 4
  %call.i = tail call i32 @regulator_disable(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end2.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 11
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.18, i32 noundef %call.i) #7
  br label %out

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %enabled.i, align 4
  br label %out

if.end:                                           ; preds = %entry
  %max_brightness = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 2
  %7 = ptrtoint ptr %max_brightness to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_brightness, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp1 = icmp ugt i32 %8, 1
  br i1 %cmp1, label %if.then2, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then2:                                         ; preds = %if.end
  %vcc = getelementptr inbounds %struct.regulator_led, ptr %led_cdev, i32 0, i32 3
  %9 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vcc, align 4
  %sub.i = add i32 %value, -1
  %call.i37 = tail call i32 @regulator_list_voltage(ptr noundef %10, i32 noundef %sub.i) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @regulator_led_brightness_set.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@regulator_led_brightness_set, %if.then7)) #4
          to label %do.end [label %if.then7], !srcloc !65

if.then7:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 11
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @regulator_led_brightness_set.__UNIQUE_ID_ddebug288, ptr noundef %12, ptr noundef nonnull @.str.16, i32 noundef %value, i32 noundef %call.i37) #4
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.then2
  %13 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vcc, align 4
  %call11 = tail call i32 @regulator_set_voltage(ptr noundef %14, i32 noundef %call.i37, i32 noundef %call.i37) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12.not = icmp eq i32 %call11, 0
  br i1 %cmp12.not, label %do.end.if.end20_crit_edge, label %do.end16

do.end.if.end20_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

do.end16:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev18 = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 11
  %15 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.17, i32 noundef %call.i37, i32 noundef %call11) #7
  br label %if.end20

if.end20:                                         ; preds = %do.end16, %do.end.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %ret.0 = phi i32 [ %call11, %do.end16 ], [ 0, %do.end.if.end20_crit_edge ], [ 0, %if.end.if.end20_crit_edge ]
  %enabled.i38 = getelementptr inbounds %struct.regulator_led, ptr %led_cdev, i32 0, i32 1
  %17 = ptrtoint ptr %enabled.i38 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %enabled.i38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i39 = icmp eq i32 %18, 0
  br i1 %tobool.not.i39, label %if.end.i43, label %if.end20.out_crit_edge

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end.i43:                                       ; preds = %if.end20
  %vcc.i40 = getelementptr inbounds %struct.regulator_led, ptr %led_cdev, i32 0, i32 3
  %19 = ptrtoint ptr %vcc.i40 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vcc.i40, align 4
  %call.i41 = tail call i32 @regulator_enable(ptr noundef %20) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %cmp.not.i42 = icmp eq i32 %call.i41, 0
  br i1 %cmp.not.i42, label %if.end2.i46, label %do.end.i45

do.end.i45:                                       ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i44 = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 11
  %21 = ptrtoint ptr %dev.i44 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i44, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.20, i32 noundef %call.i41) #7
  br label %out

if.end2.i46:                                      ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %enabled.i38 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %enabled.i38, align 4
  br label %out

out:                                              ; preds = %if.end2.i46, %do.end.i45, %if.end20.out_crit_edge, %if.end2.i, %do.end.i, %if.then.out_crit_edge
  %ret.1 = phi i32 [ 0, %if.then.out_crit_edge ], [ 0, %do.end.i ], [ 0, %if.end2.i ], [ %ret.0, %if.end20.out_crit_edge ], [ %ret.0, %do.end.i45 ], [ %ret.0, %if.end2.i46 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_count_voltages(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__initcall__kmod_leds_regulator__289_195_regulator_led_driver_init6, !1, !"__initcall__kmod_leds_regulator__289_195_regulator_led_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-regulator.c", i32 195, i32 1}
!2 = !{ptr @__exitcall_regulator_led_driver_exit, !1, !"__exitcall_regulator_led_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-regulator.c", i32 197, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-regulator.c", i32 198, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-regulator.c", i32 199, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias294, !11, !"__UNIQUE_ID_alias294", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-regulator.c", i32 200, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-regulator.c", i32 189, i32 15}
!14 = !{ptr @regulator_led_driver, !15, !"regulator_led_driver", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-regulator.c", i32 187, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/leds/leds-regulator.c", i32 131, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @regulator_led_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @regulator_led_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/leds/leds-regulator.c", i32 135, i32 49}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/leds/leds-regulator.c", i32 137, i32 3}
!28 = !{ptr @regulator_led_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @regulator_led_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/leds/leds-regulator.c", i32 147, i32 3}
!32 = !{ptr @regulator_led_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @regulator_led_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @regulator_led_probe.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/leds/leds-regulator.c", i32 161, i32 2}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/leds/leds-regulator.c", i32 106, i32 3}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @regulator_led_brightness_set.__UNIQUE_ID_ddebug288, !38, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/leds/leds-regulator.c", i32 111, i32 4}
!44 = !{ptr @regulator_led_brightness_set._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @regulator_led_brightness_set._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/leds/leds-regulator.c", i32 83, i32 3}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @regulator_led_disable._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @regulator_led_disable._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/leds/leds-regulator.c", i32 67, i32 3}
!53 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @regulator_led_enable._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @regulator_led_enable._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i64 2148955963, i64 2148955968, i64 2148955981, i64 2148956025, i64 2148956059, i64 2148956080}
