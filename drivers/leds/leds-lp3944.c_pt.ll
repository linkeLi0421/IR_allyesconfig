; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-lp3944.c_pt.bc'
source_filename = "../drivers/leds/leds-lp3944.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lp3944_data = type { %struct.mutex, ptr, [8 x %struct.lp3944_led_data] }
%struct.lp3944_led_data = type { i8, i32, %struct.led_classdev, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lp3944_platform_data = type { [8 x %struct.lp3944_led], i8 }
%struct.lp3944_led = type { ptr, i32, i32 }

@__initcall__kmod_leds_lp3944__292_438_lp3944_driver_init6 = internal global ptr @lp3944_driver_init, section ".initcall6.init", align 4
@lp3944_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @lp3944_probe, ptr @lp3944_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lp3944_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lp3944_driver_exit = internal global ptr @lp3944_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author293 = internal constant [61 x i8] c"leds_lp3944.author=Antonio Ospite <ospite@studenti.unina.it>\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [46 x i8] c"leds_lp3944.description=LP3944 Fun Light Chip\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [42 x i8] c"leds_lp3944.file=drivers/leds/leds-lp3944\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [24 x i8] c"leds_lp3944.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lp3944\00", [25 x i8] zeroinitializer }, align 32
@lp3944_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lp3944\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@lp3944_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 371, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no platform data\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lp3944_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/leds/leds-lp3944.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lp3944_probe._entry_ptr = internal global ptr @lp3944_probe._entry, section ".printk_index", align 4
@lp3944_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 378, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"insufficient functionality!\0A\00", [35 x i8] zeroinitializer }, align 32
@lp3944_probe._entry_ptr.8 = internal global ptr @lp3944_probe._entry.6, section ".printk_index", align 4
@lp3944_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@lp3944_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 396, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lp3944 enabled\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@lp3944_probe._entry_ptr.13 = internal global ptr @lp3944_probe._entry.10, section ".printk_index", align 4
@lp3944_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 318, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"couldn't register LED %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lp3944_configure\00", [47 x i8] zeroinitializer }, align 32
@lp3944_configure._entry_ptr = internal global ptr @lp3944_configure._entry, section ".printk_index", align 4
@lp3944_configure._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.3, i32 331, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s couldn't set STATUS %d\0A\00", [37 x i8] zeroinitializer }, align 32
@lp3944_configure._entry_ptr.18 = internal global ptr @lp3944_configure._entry.16, section ".printk_index", align 4
@lp3944_led_set_brightness.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.3, ptr @.str.21, i8 0, i8 71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"leds_lp3944\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lp3944_led_set_brightness\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: %s, %d\0A\00", [20 x i8] zeroinitializer }, align 32
@lp3944_led_set_blink.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.22, ptr @.str.3, ptr @.str.23, i8 0, i8 68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lp3944_led_set_blink\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: OK hardware accelerated blink!\0A\00", [60 x i8] zeroinitializer }, align 32
@lp3944_led_set.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.24, ptr @.str.3, ptr @.str.25, i8 0, i8 43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lp3944_led_set\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: %s, status before normalization:%d\0A\00", [56 x i8] zeroinitializer }, align 32
@lp3944_led_set.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.24, ptr @.str.3, ptr @.str.26, i8 0, i8 53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: %s, reg:%d id:%d status:%d val:%#x\0A\00", [56 x i8] zeroinitializer }, align 32
@switch.table.lp3944_led_set = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\06\06\06\06\07\07\07\07", [24 x i8] zeroinitializer }, align 32
@switch.table.lp3944_led_set.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\01\02\03\00\01\02\03", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.28 = private unnamed_addr constant [14 x i8] c"lp3944_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 429, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 431, i32 14 }
@___asan_gen_.34 = private unnamed_addr constant [10 x i8] c"lp3944_id\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 422, i32 35 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 371, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 378, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 390, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 396, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 316, i32 5 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 329, i32 5 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 284, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 271, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 174, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private constant [30 x i8] c"../drivers/leds/leds-lp3944.c\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 213, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [28 x i8] c"switch.table.lp3944_led_set\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [31 x i8] c"switch.table.lp3944_led_set.27\00", align 1
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_lp3944_driver_exit, ptr @__initcall__kmod_leds_lp3944__292_438_lp3944_driver_init6, ptr @lp3944_configure._entry, ptr @lp3944_configure._entry.16, ptr @lp3944_configure._entry_ptr, ptr @lp3944_configure._entry_ptr.18, ptr @lp3944_driver_exit, ptr @lp3944_probe._entry, ptr @lp3944_probe._entry.10, ptr @lp3944_probe._entry.6, ptr @lp3944_probe._entry_ptr, ptr @lp3944_probe._entry_ptr.13, ptr @lp3944_probe._entry_ptr.8, ptr @lp3944_driver, ptr @.str, ptr @lp3944_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @lp3944_probe.__key, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @switch.table.lp3944_led_set, ptr @switch.table.lp3944_led_set.27], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3944_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3944_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3944_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3944_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3944_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3944_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3944_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3944_configure._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.lp3944_led_set to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.lp3944_led_set.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3944_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lp3944_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lp3944_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @lp3944_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3944_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %3) #5
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end8, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 3392, i32 noundef 3520) #5
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %client14 = getelementptr inbounds %struct.lp3944_data, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %client14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %client, ptr %client14, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @lp3944_probe.__key) #5
  %leds_size.i = getelementptr inbounds %struct.lp3944_platform_data, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %leds_size.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %leds_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp109.not.i = icmp eq i8 %11, 0
  br i1 %cmp109.not.i, label %if.end13.do.end24_crit_edge, label %if.end13.for.body.i_crit_edge

if.end13.for.body.i_crit_edge:                    ; preds = %if.end13
  br label %for.body.i

if.end13.do.end24_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end24

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end13.for.body.i_crit_edge
  %i.0110.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end13.for.body.i_crit_edge ]
  %arrayidx3.i = getelementptr %struct.lp3944_data, ptr %call.i, i32 0, i32 2, i32 %i.0110.i
  %client4.i = getelementptr %struct.lp3944_data, ptr %call.i, i32 0, i32 2, i32 %i.0110.i, i32 3
  %12 = ptrtoint ptr %client4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %client, ptr %client4.i, align 4
  %conv5.i = trunc i32 %i.0110.i to i8
  %13 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv5.i, ptr %arrayidx3.i, align 4
  %type.i = getelementptr [8 x %struct.lp3944_led], ptr %1, i32 0, i32 %i.0110.i, i32 1
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type.i, align 4
  %.off.i = add i32 %15, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %sw.bb.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

sw.bb.i:                                          ; preds = %for.body.i
  %arrayidx.i = getelementptr [8 x %struct.lp3944_led], ptr %1, i32 0, i32 %i.0110.i
  %type7.i = getelementptr %struct.lp3944_data, ptr %call.i, i32 0, i32 2, i32 %i.0110.i, i32 1
  %16 = ptrtoint ptr %type7.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %type7.i, align 4
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %ldev.i = getelementptr %struct.lp3944_data, ptr %call.i, i32 0, i32 2, i32 %i.0110.i, i32 2
  %19 = ptrtoint ptr %ldev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %ldev.i, align 4
  %max_brightness.i = getelementptr %struct.lp3944_data, ptr %call.i, i32 0, i32 2, i32 %i.0110.i, i32 2, i32 2
  %20 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %max_brightness.i, align 4
  %brightness_set_blocking.i = getelementptr %struct.lp3944_data, ptr %call.i, i32 0, i32 2, i32 %i.0110.i, i32 2, i32 6
  %21 = ptrtoint ptr %brightness_set_blocking.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @lp3944_led_set_brightness, ptr %brightness_set_blocking.i, align 4
  %blink_set.i = getelementptr %struct.lp3944_data, ptr %call.i, i32 0, i32 2, i32 %i.0110.i, i32 2, i32 8
  %22 = ptrtoint ptr %blink_set.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @lp3944_led_set_blink, ptr %blink_set.i, align 4
  %flags.i = getelementptr %struct.lp3944_data, ptr %call.i, i32 0, i32 2, i32 %i.0110.i, i32 2, i32 3
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 65536, ptr %flags.i, align 4
  %call.i.i42 = tail call i32 @led_classdev_register_ext(ptr noundef %dev, ptr noundef %ldev.i, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i42)
  %cmp14.i = icmp slt i32 %call.i.i42, 0
  br i1 %cmp14.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %ldev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ldev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef %25) #8
  br label %exit.i

if.end.i:                                         ; preds = %sw.bb.i
  %status.i = getelementptr [8 x %struct.lp3944_led], ptr %1, i32 0, i32 %i.0110.i, i32 2
  %26 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %status.i, align 4
  %brightness.i = getelementptr %struct.lp3944_data, ptr %call.i, i32 0, i32 2, i32 %i.0110.i, i32 2, i32 1
  %28 = ptrtoint ptr %brightness.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %brightness.i, align 4
  %29 = load i32, ptr %status.i, align 4
  %conv21.i = trunc i32 %29 to i8
  %call22.i = tail call fastcc i32 @lp3944_led_set(ptr noundef %arrayidx3.i, i8 noundef zeroext %conv21.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %do.end28.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

do.end28.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %ldev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ldev.i, align 4
  %32 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %status.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef %31, i32 noundef %33) #8
  br label %exit.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0110.i, 1
  %34 = ptrtoint ptr %leds_size.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %leds_size.i, align 4
  %conv.i43 = zext i8 %35 to i32
  %cmp.i44 = icmp ult i32 %inc.i, %conv.i43
  br i1 %cmp.i44, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.end24_crit_edge

for.inc.i.do.end24_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end24

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

exit.i:                                           ; preds = %do.end28.i, %do.end.i
  %err.2.i = phi i32 [ %call.i.i42, %do.end.i ], [ %call22.i, %do.end28.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0110.i)
  %.not.i = icmp eq i32 %i.0110.i, 0
  br i1 %.not.i, label %exit.i.cleanup_crit_edge, label %exit.i.for.body42.i_crit_edge

exit.i.for.body42.i_crit_edge:                    ; preds = %exit.i
  br label %for.body42.i

exit.i.cleanup_crit_edge:                         ; preds = %exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body42.i:                                     ; preds = %for.inc53.i.for.body42.i_crit_edge, %exit.i.for.body42.i_crit_edge
  %i.1114.in.i = phi i32 [ %i.1114.i, %for.inc53.i.for.body42.i_crit_edge ], [ %i.0110.i, %exit.i.for.body42.i_crit_edge ]
  %i.1114.i = add nsw i32 %i.1114.in.i, -1
  %type45.i = getelementptr [8 x %struct.lp3944_led], ptr %1, i32 0, i32 %i.1114.i, i32 1
  %36 = ptrtoint ptr %type45.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %type45.i, align 4
  %.off95.i = add i32 %37, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off95.i)
  %switch96.i = icmp ult i32 %.off95.i, 2
  br i1 %switch96.i, label %sw.bb46.i, label %for.body42.i.for.inc53.i_crit_edge

for.body42.i.for.inc53.i_crit_edge:               ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc53.i

sw.bb46.i:                                        ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #7
  %ldev49.i = getelementptr %struct.lp3944_data, ptr %call.i, i32 0, i32 2, i32 %i.1114.i, i32 2
  tail call void @led_classdev_unregister(ptr noundef %ldev49.i) #5
  br label %for.inc53.i

for.inc53.i:                                      ; preds = %sw.bb46.i, %for.body42.i.for.inc53.i_crit_edge
  %cmp40.i = icmp sgt i32 %i.1114.in.i, 1
  br i1 %cmp40.i, label %for.inc53.i.for.body42.i_crit_edge, label %lp3944_configure.exit

for.inc53.i.for.body42.i_crit_edge:               ; preds = %for.inc53.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body42.i

lp3944_configure.exit:                            ; preds = %for.inc53.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2.i)
  %cmp19 = icmp slt i32 %err.2.i, 0
  br i1 %cmp19, label %lp3944_configure.exit.cleanup_crit_edge, label %lp3944_configure.exit.do.end24_crit_edge

lp3944_configure.exit.do.end24_crit_edge:         ; preds = %lp3944_configure.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end24

lp3944_configure.exit.cleanup_crit_edge:          ; preds = %lp3944_configure.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end24:                                         ; preds = %lp3944_configure.exit.do.end24_crit_edge, %for.inc.i.do.end24_crit_edge, %if.end13.do.end24_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.11) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %lp3944_configure.exit.cleanup_crit_edge, %exit.i.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end24 ], [ -19, %do.end6 ], [ -12, %if.end8.cleanup_crit_edge ], [ %err.2.i, %lp3944_configure.exit.cleanup_crit_edge ], [ %err.2.i, %exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3944_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %leds_size = getelementptr inbounds %struct.lp3944_platform_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %leds_size to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %leds_size, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp12.not = icmp eq i8 %5, 0
  br i1 %cmp12.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.013 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %type = getelementptr %struct.lp3944_data, ptr %3, i32 0, i32 2, i32 %i.013, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %.off = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %ldev = getelementptr %struct.lp3944_data, ptr %3, i32 0, i32 2, i32 %i.013, i32 2
  tail call void @led_classdev_unregister(ptr noundef %ldev) #5
  br label %for.inc

for.inc:                                          ; preds = %sw.bb, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.013, 1
  %8 = ptrtoint ptr %leds_size to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %leds_size, align 4
  %conv = zext i8 %9 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3944_led_set_brightness(ptr nocapture noundef readonly %led_cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lp3944_led_set_brightness.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lp3944_led_set_brightness, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !70

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %client = getelementptr i8, ptr %led_cdev, i32 400
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %led_cdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %led_cdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lp3944_led_set_brightness.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, ptr noundef %3, i32 noundef %brightness) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %tobool4 = icmp ne i32 %brightness, 0
  %conv = zext i1 %tobool4 to i8
  %call9 = tail call fastcc i32 @lp3944_led_set(ptr noundef %add.ptr, i8 noundef zeroext %conv)
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3944_led_set_blink(ptr nocapture noundef readonly %led_cdev, ptr nocapture noundef %delay_on, ptr nocapture noundef %delay_off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -8
  %0 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delay_on, align 4
  %2 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %delay_off, align 4
  %add = add i32 %3, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1600, i32 %add)
  %cmp = icmp ugt i32 %add, 1600
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1 = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp eq i32 %3, 0
  %or.cond = select i1 %cmp1, i1 %cmp2, i1 false
  br i1 %or.cond, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %delay_on to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 500, ptr %delay_on, align 4
  %5 = ptrtoint ptr %delay_off to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 500, ptr %delay_off, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %6 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %delay_on, align 4
  %8 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %delay_off, align 4
  %add5 = add i32 %9, %7
  %conv = trunc i32 %add5 to i16
  %mul = mul i32 %7, 100
  %conv6 = and i32 %add5, 65535
  %div = udiv i32 %mul, %conv6
  %conv7 = trunc i32 %div to i8
  %type = getelementptr i8, ptr %led_cdev, i32 -4
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp8 = icmp eq i32 %11, 2
  %conv12 = sub i8 100, %conv7
  %duty_cycle.0 = select i1 %cmp8, i8 %conv12, i8 %conv7
  %client = getelementptr i8, ptr %led_cdev, i32 400
  call void @__sanitizer_cov_trace_const_cmp2(i16 1600, i16 %conv)
  %cmp9.i = icmp ugt i16 %conv, 1600
  br i1 %cmp9.i, label %if.end4.cleanup_crit_edge, label %lp3944_dim_set_period.exit

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lp3944_dim_set_period.exit:                       ; preds = %if.end4
  %12 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client, align 4
  %mul.i = mul nuw nsw i32 %conv6, 255
  %div.i = udiv i32 %mul.i, 1600
  %conv14.i = trunc i32 %div.i to i8
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 2, i8 noundef zeroext %conv14.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end15, label %lp3944_dim_set_period.exit.cleanup_crit_edge

lp3944_dim_set_period.exit.cleanup_crit_edge:     ; preds = %lp3944_dim_set_period.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %lp3944_dim_set_period.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %duty_cycle.0)
  %cmp9.i50 = icmp ugt i8 %duty_cycle.0, 100
  br i1 %cmp9.i50, label %if.end15.cleanup_crit_edge, label %lp3944_dim_set_dutycycle.exit

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lp3944_dim_set_dutycycle.exit:                    ; preds = %if.end15
  %14 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client, align 4
  %conv8.i51 = zext i8 %duty_cycle.0 to i16
  %mul.i52 = mul nuw nsw i16 %conv8.i51, 255
  %div.i53 = udiv i16 %mul.i52, 100
  %conv14.i54 = trunc i16 %div.i53 to i8
  %call.i.i55 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext 3, i8 noundef zeroext %conv14.i54) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i55)
  %tobool18.not = icmp eq i32 %call.i.i55, 0
  br i1 %tobool18.not, label %do.body, label %lp3944_dim_set_dutycycle.exit.cleanup_crit_edge

lp3944_dim_set_dutycycle.exit.cleanup_crit_edge:  ; preds = %lp3944_dim_set_dutycycle.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %lp3944_dim_set_dutycycle.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lp3944_led_set_blink.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lp3944_led_set_blink, %if.then26)) #5
          to label %do.end [label %if.then26], !srcloc !70

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lp3944_led_set_blink.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22) #5
  br label %do.end

do.end:                                           ; preds = %if.then26, %do.body
  %call29 = tail call fastcc i32 @lp3944_led_set(ptr noundef %add.ptr, i8 noundef zeroext 2)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lp3944_dim_set_dutycycle.exit.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %lp3944_dim_set_period.exit.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %lp3944_dim_set_period.exit.cleanup_crit_edge ], [ %call.i.i55, %lp3944_dim_set_dutycycle.exit.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lp3944_led_set(ptr nocapture noundef readonly %led, i8 noundef zeroext %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.lp3944_led_data, ptr %led, i32 0, i32 3
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %led to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %led, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lp3944_led_set.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lp3944_led_set, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !70

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  %ldev = getelementptr inbounds %struct.lp3944_led_data, ptr %led, i32 0, i32 2
  %8 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ldev, align 4
  %conv = zext i8 %status to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lp3944_led_set.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, ptr noundef %9, i32 noundef %conv) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %5)
  %10 = icmp ult i8 %5, 8
  br i1 %10, label %switch.lookup, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.lookup:                                    ; preds = %do.end
  %11 = sext i8 %5 to i32
  %switch.gep = getelementptr inbounds [8 x i8], ptr @switch.table.lp3944_led_set, i32 0, i32 %11
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %12)
  %switch.load = load i8, ptr %switch.gep, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %status)
  %cmp = icmp ugt i8 %status, 3
  br i1 %cmp, label %switch.lookup.cleanup_crit_edge, label %if.end13

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %switch.lookup
  %13 = sext i8 %5 to i32
  %switch.gep96 = getelementptr inbounds [8 x i8], ptr @switch.table.lp3944_led_set.27, i32 0, i32 %13
  %14 = ptrtoint ptr %switch.gep96 to i32
  call void @__asan_load1_noabort(i32 %14)
  %switch.load97 = load i8, ptr %switch.gep96, align 1
  %type = getelementptr inbounds %struct.lp3944_led_data, ptr %led, i32 0, i32 1
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp14 = icmp eq i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %status)
  %cmp17 = icmp ult i8 %status, 2
  %or.cond = and i1 %cmp17, %cmp14
  %sub21 = sub nsw i8 1, %status
  %status.addr.0 = select i1 %or.cond, i8 %sub21, i8 %status
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #5
  %17 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %client, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %18, i8 noundef zeroext %switch.load) #5
  %19 = tail call i32 @llvm.smax.i32(i32 %call.i, i32 0)
  %20 = trunc i32 %19 to i8
  %conv26 = zext i8 %switch.load97 to i32
  %shl = shl nuw nsw i32 %conv26, 1
  %shl27 = shl nuw nsw i32 3, %shl
  %21 = trunc i32 %shl27 to i8
  %22 = xor i8 %21, -1
  %conv29 = and i8 %20, %22
  %conv30 = zext i8 %status.addr.0 to i32
  %shl33 = shl nuw nsw i32 %conv30, %shl
  %23 = trunc i32 %shl33 to i8
  %conv35 = or i8 %conv29, %23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lp3944_led_set.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lp3944_led_set, %if.then48)) #5
          to label %do.end59 [label %if.then48], !srcloc !70

if.then48:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %client, align 4
  %dev50 = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  %ldev51 = getelementptr inbounds %struct.lp3944_led_data, ptr %led, i32 0, i32 2
  %26 = ptrtoint ptr %ldev51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ldev51, align 4
  %conv53 = zext i8 %switch.load to i32
  %conv56 = zext i8 %conv35 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lp3944_led_set.__UNIQUE_ID_ddebug289, ptr noundef %dev50, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, ptr noundef %27, i32 noundef %conv53, i32 noundef %conv26, i32 noundef %conv30, i32 noundef %conv56) #5
  br label %do.end59

do.end59:                                         ; preds = %if.then48, %if.end13
  %28 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %client, align 4
  %call.i90 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %29, i8 noundef zeroext %switch.load, i8 noundef zeroext %conv35) #5
  tail call void @mutex_unlock(ptr noundef %3) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %switch.lookup.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i90, %do.end59 ], [ -22, %do.end.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__initcall__kmod_leds_lp3944__292_438_lp3944_driver_init6, !1, !"__initcall__kmod_leds_lp3944__292_438_lp3944_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-lp3944.c", i32 438, i32 1}
!2 = !{ptr @__exitcall_lp3944_driver_exit, !1, !"__exitcall_lp3944_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author293, !4, !"__UNIQUE_ID_author293", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-lp3944.c", i32 440, i32 1}
!5 = !{ptr @__UNIQUE_ID_description294, !6, !"__UNIQUE_ID_description294", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-lp3944.c", i32 441, i32 1}
!7 = !{ptr @__UNIQUE_ID_file295, !8, !"__UNIQUE_ID_file295", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-lp3944.c", i32 442, i32 1}
!9 = !{ptr @__UNIQUE_ID_license296, !8, !"__UNIQUE_ID_license296", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-lp3944.c", i32 431, i32 14}
!12 = !{ptr @lp3944_driver, !13, !"lp3944_driver", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-lp3944.c", i32 429, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-lp3944.c", i32 371, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @lp3944_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @lp3944_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/leds/leds-lp3944.c", i32 378, i32 3}
!24 = !{ptr @lp3944_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @lp3944_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @lp3944_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/leds/leds-lp3944.c", i32 390, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/leds/leds-lp3944.c", i32 396, i32 2}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @lp3944_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @lp3944_probe._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/leds/leds-lp3944.c", i32 316, i32 5}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @lp3944_configure._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @lp3944_configure._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/leds/leds-lp3944.c", i32 329, i32 5}
!41 = !{ptr @lp3944_configure._entry.16, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @lp3944_configure._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/leds/leds-lp3944.c", i32 284, i32 2}
!45 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @lp3944_led_set_brightness.__UNIQUE_ID_ddebug291, !44, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/leds/leds-lp3944.c", i32 271, i32 2}
!50 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @lp3944_led_set_blink.__UNIQUE_ID_ddebug290, !49, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/leds/leds-lp3944.c", i32 174, i32 2}
!54 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @lp3944_led_set.__UNIQUE_ID_ddebug288, !53, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/leds/leds-lp3944.c", i32 213, i32 2}
!58 = !{ptr @lp3944_led_set.__UNIQUE_ID_ddebug289, !57, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!59 = !{ptr @lp3944_id, !60, !"lp3944_id", i1 false, i1 false}
!60 = !{!"../drivers/leds/leds-lp3944.c", i32 422, i32 35}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{i64 2148962255, i64 2148962260, i64 2148962273, i64 2148962317, i64 2148962351, i64 2148962372}
