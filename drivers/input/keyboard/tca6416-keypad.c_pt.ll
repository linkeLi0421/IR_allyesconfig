; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/tca6416-keypad.c_pt.bc'
source_filename = "../drivers/input/keyboard/tca6416-keypad.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.tca6416_keys_platform_data = type { ptr, i32, i8, i16, i16, i32, i32 }
%struct.tca6416_keypad_chip = type { i16, i16, i16, ptr, ptr, %struct.delayed_work, i32, i32, i16, i8, [0 x %struct.tca6416_button] }
%struct.tca6416_button = type { i32, i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_tca6416_keypad__291_367_tca6416_keypad_init4 = internal global ptr @tca6416_keypad_init, section ".initcall4.init", align 4
@tca6416_keypad_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tca6416_keypad_probe, ptr @tca6416_keypad_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tca6416_keypad_dev_pm_ops, ptr null, ptr null }, ptr @tca6416_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tca6416_keypad_exit = internal global ptr @tca6416_keypad_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author292 = internal constant [51 x i8] c"tca6416_keypad.author=Sriramakrishnan <srk@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [66 x i8] c"tca6416_keypad.description=Keypad driver over tca6416 IO expander\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [58 x i8] c"tca6416_keypad.file=drivers/input/keyboard/tca6416-keypad\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [27 x i8] c"tca6416_keypad.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tca6416-keypad\00", [17 x i8] zeroinitializer }, align 32
@tca6416_keypad_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tca6416_keypad_suspend, ptr @tca6416_keypad_resume, ptr @tca6416_keypad_suspend, ptr @tca6416_keypad_resume, ptr @tca6416_keypad_suspend, ptr @tca6416_keypad_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tca6416_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tca6416-keys\00\00\00\00\00\00\00\00", i32 16 }, %struct.i2c_device_id { [20 x i8] c"tca6408-keys\00\00\00\00\00\00\00\00", i32 8 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@tca6416_keypad_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 209, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s adapter not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tca6416_keypad_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/input/keyboard/tca6416-keypad.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tca6416_keypad_probe._entry_ptr = internal global ptr @tca6416_keypad_probe._entry, section ".printk_index", align 4
@tca6416_keypad_probe.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tca6416_keypad\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no platform data\0A\00", [46 x i8] zeroinitializer }, align 32
@tca6416_keypad_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&(&chip->dwork)->work)\00", [55 x i8] zeroinitializer }, align 32
@tca6416_keypad_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&(&chip->dwork)->timer\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tca6416-keys/input0\00", [44 x i8] zeroinitializer }, align 32
@tca6416_keypad_probe.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.2, ptr @.str.3, ptr @.str.12, i8 0, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to claim irq %d; error %d\0A\00", [62 x i8] zeroinitializer }, align 32
@tca6416_keypad_probe.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.2, ptr @.str.3, ptr @.str.13, i8 0, i8 72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Unable to register input device, error: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@tca6416_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 80, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s failed, reg: %d, error: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tca6416_read_reg\00", [47 x i8] zeroinitializer }, align 32
@tca6416_read_reg._entry_ptr = internal global ptr @tca6416_read_reg._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@tca6416_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 64, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s failed, reg: %d, val: %d, error: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tca6416_write_reg\00", [46 x i8] zeroinitializer }, align 32
@tca6416_write_reg._entry_ptr = internal global ptr @tca6416_write_reg._entry, section ".printk_index", align 4
@___asan_gen_.18 = private unnamed_addr constant [22 x i8] c"tca6416_keypad_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 352, i32 26 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 354, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant [26 x i8] c"tca6416_keypad_dev_pm_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 349, i32 8 }
@___asan_gen_.27 = private unnamed_addr constant [11 x i8] c"tca6416_id\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 27, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 208, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 215, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 232, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 234, i32 16 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 280, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 289, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 79, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private constant [43 x i8] c"../drivers/input/keyboard/tca6416-keypad.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 62, i32 3 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_tca6416_keypad_exit, ptr @__initcall__kmod_tca6416_keypad__291_367_tca6416_keypad_init4, ptr @tca6416_keypad_exit, ptr @tca6416_keypad_probe._entry, ptr @tca6416_keypad_probe._entry_ptr, ptr @tca6416_read_reg._entry, ptr @tca6416_read_reg._entry_ptr, ptr @tca6416_write_reg._entry, ptr @tca6416_write_reg._entry_ptr, ptr @tca6416_keypad_driver, ptr @.str, ptr @tca6416_keypad_dev_pm_ops, ptr @tca6416_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @tca6416_keypad_probe.__key, ptr @.str.8, ptr @tca6416_keypad_probe.__key.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tca6416_keypad_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tca6416_keypad_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tca6416_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tca6416_keypad_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tca6416_keypad_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tca6416_keypad_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tca6416_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tca6416_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tca6416_keypad_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tca6416_keypad_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tca6416_keypad_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @tca6416_keypad_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tca6416_keypad_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #6
  %and.i = and i32 %call.i.i, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 393216, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 393216
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 8
  %dev2 = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 9
  %call3 = tail call ptr @dev_driver_string(ptr noundef %dev2) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.1, ptr noundef %call3) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %8 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_data.i, align 8
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %do.body8, label %if.end18

do.body8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tca6416_keypad_probe.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tca6416_keypad_probe, %if.then13)) #6
          to label %cleanup [label %if.then13], !srcloc !63

if.then13:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tca6416_keypad_probe.__UNIQUE_ID_ddebug288, ptr noundef %dev4, ptr noundef nonnull @.str.7) #6
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %nbuttons = getelementptr inbounds %struct.tca6416_keys_platform_data, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %nbuttons to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nbuttons, align 4
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 12) #6
  %13 = extractvalue { i32, i1 } %12, 1
  %14 = extractvalue { i32, i1 } %12, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %14, i32 128) #6
  %retval.0.i221 = select i1 %13, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i221, i32 noundef 3520) #10
  %call21 = tail call ptr @input_allocate_device() #6
  %tobool22.not = icmp eq ptr %call9.i.i, null
  %tobool23.not = icmp eq ptr %call21, null
  %or.cond = select i1 %tobool22.not, i1 true, i1 %tobool23.not
  br i1 %or.cond, label %if.end18.fail1_crit_edge, label %if.end25

if.end18.fail1_crit_edge:                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail1

if.end25:                                         ; preds = %if.end18
  %client26 = getelementptr inbounds %struct.tca6416_keypad_chip, ptr %call9.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %client26 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %client, ptr %client26, align 8
  %input27 = getelementptr inbounds %struct.tca6416_keypad_chip, ptr %call9.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %input27 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call21, ptr %input27, align 4
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %17 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %driver_data, align 4
  %io_size = getelementptr inbounds %struct.tca6416_keypad_chip, ptr %call9.i.i, i32 0, i32 6
  %19 = ptrtoint ptr %io_size to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %io_size, align 4
  %pinmask = getelementptr inbounds %struct.tca6416_keys_platform_data, ptr %9, i32 0, i32 3
  %20 = ptrtoint ptr %pinmask to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %pinmask, align 2
  %pinmask28 = getelementptr inbounds %struct.tca6416_keypad_chip, ptr %call9.i.i, i32 0, i32 8
  %22 = ptrtoint ptr %pinmask28 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %pinmask28, align 4
  %use_polling = getelementptr inbounds %struct.tca6416_keys_platform_data, ptr %9, i32 0, i32 6
  %23 = ptrtoint ptr %use_polling to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %use_polling, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool29 = icmp ne i32 %24, 0
  %use_polling30 = getelementptr inbounds %struct.tca6416_keypad_chip, ptr %call9.i.i, i32 0, i32 9
  %frombool31 = zext i1 %tobool29 to i8
  %25 = ptrtoint ptr %use_polling30 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool31, ptr %use_polling30, align 2
  %dwork = getelementptr inbounds %struct.tca6416_keypad_chip, ptr %call9.i.i, i32 0, i32 5
  tail call void @__init_work(ptr noundef %dwork, i32 noundef 0) #6
  %26 = ptrtoint ptr %dwork to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -64, ptr %dwork, align 16
  %lockdep_map = getelementptr inbounds %struct.tca6416_keypad_chip, ptr %call9.i.i, i32 0, i32 5, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.8, ptr noundef nonnull @tca6416_keypad_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry40 = getelementptr inbounds %struct.tca6416_keypad_chip, ptr %call9.i.i, i32 0, i32 5, i32 0, i32 1
  %27 = ptrtoint ptr %entry40 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %entry40, ptr %entry40, align 4
  %prev.i = getelementptr inbounds %struct.tca6416_keypad_chip, ptr %call9.i.i, i32 0, i32 5, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %entry40, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.tca6416_keypad_chip, ptr %call9.i.i, i32 0, i32 5, i32 0, i32 2
  %29 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @tca6416_keys_work_func, ptr %func, align 4
  %timer = getelementptr inbounds %struct.tca6416_keypad_chip, ptr %call9.i.i, i32 0, i32 5, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.10, ptr noundef nonnull @tca6416_keypad_probe.__key.9) #6
  %phys = getelementptr inbounds %struct.input_dev, ptr %call21, i32 0, i32 1
  %30 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str.11, ptr %phys, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %31 = ptrtoint ptr %call21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %name, ptr %call21, align 8
  %parent = getelementptr inbounds %struct.input_dev, ptr %call21, i32 0, i32 40, i32 1
  %32 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %dev4, ptr %parent, align 8
  %open = getelementptr inbounds %struct.input_dev, ptr %call21, i32 0, i32 31
  %33 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @tca6416_keys_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call21, i32 0, i32 32
  %34 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @tca6416_keys_close, ptr %close, align 4
  %id54 = getelementptr inbounds %struct.input_dev, ptr %call21, i32 0, i32 3
  %35 = ptrtoint ptr %id54 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 25, ptr %id54, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call21, i32 0, i32 3, i32 1
  %36 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %vendor, align 2
  %product = getelementptr inbounds %struct.input_dev, ptr %call21, i32 0, i32 3, i32 2
  %37 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %product, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %call21, i32 0, i32 3, i32 3
  %38 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 256, ptr %version, align 2
  %rep = getelementptr inbounds %struct.tca6416_keys_platform_data, ptr %9, i32 0, i32 2
  %39 = ptrtoint ptr %rep to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load = load i8, ptr %rep, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool58.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool58.not, label %if.end25.if.end61_crit_edge, label %if.then59

if.end25.if.end61_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then59:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call21, i32 0, i32 5
  %40 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %evbit, align 4
  %or.i = or i32 %41, 1048576
  store i32 %or.i, ptr %evbit, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end25.if.end61_crit_edge
  %42 = ptrtoint ptr %nbuttons to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nbuttons, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp231 = icmp sgt i32 %43, 0
  br i1 %cmp231, label %if.end61.for.body_crit_edge, label %if.end61.for.end_crit_edge

if.end61.for.end_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end61.for.body_crit_edge:                      ; preds = %if.end61
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end61.for.body_crit_edge
  %i.0232 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end61.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tca6416_keypad_chip, ptr %call9.i.i, i32 0, i32 10, i32 %i.0232
  %44 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %9, align 4
  %arrayidx64 = getelementptr %struct.tca6416_button, ptr %45, i32 %i.0232
  %46 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx64, i32 12)
  %47 = load ptr, ptr %9, align 4
  %arrayidx66 = getelementptr %struct.tca6416_button, ptr %47, i32 %i.0232
  %type67 = getelementptr %struct.tca6416_button, ptr %47, i32 %i.0232, i32 2
  %48 = ptrtoint ptr %type67 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %type67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool68.not = icmp eq i32 %49, 0
  %. = select i1 %tobool68.not, i32 1, i32 %49
  %50 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx66, align 4
  tail call void @input_set_capability(ptr noundef nonnull %call21, i32 noundef %., i32 noundef %51) #6
  %inc = add nuw nsw i32 %i.0232, 1
  %52 = ptrtoint ptr %nbuttons to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nbuttons, align 4
  %cmp = icmp slt i32 %inc, %53
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end61.for.end_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call21, i32 0, i32 40, i32 8
  %54 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call9.i.i, ptr %driver_data.i.i, align 4
  %55 = ptrtoint ptr %io_size to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %io_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %56)
  %cmp.i.i222 = icmp sgt i32 %56, 8
  %57 = ptrtoint ptr %client26 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %client26, align 8
  br i1 %cmp.i.i222, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i223 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %58, i8 noundef zeroext 2) #6
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %58, i8 noundef zeroext 1) #6
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i32 [ %call.i.i223, %cond.true.i.i ], [ %call4.i.i, %cond.false.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i)
  %cmp5.i.i = icmp slt i32 %cond.i.i, 0
  br i1 %cmp5.i.i, label %tca6416_read_reg.exit.i, label %if.end.i

tca6416_read_reg.exit.i:                          ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %client26 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %client26, align 8
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %60, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 1, i32 noundef %cond.i.i) #9
  br label %fail1

if.end.i:                                         ; preds = %cond.end.i.i
  %conv8.i.i = trunc i32 %cond.i.i to i16
  %61 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv8.i.i, ptr %call9.i.i, align 128
  %reg_direction.i = getelementptr inbounds %struct.tca6416_keypad_chip, ptr %call9.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %io_size to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %io_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %63)
  %cmp.i50.i = icmp sgt i32 %63, 8
  %64 = ptrtoint ptr %client26 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %client26, align 8
  br i1 %cmp.i50.i, label %cond.true.i53.i, label %cond.false.i55.i

cond.true.i53.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i52.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %65, i8 noundef zeroext 6) #6
  br label %cond.end.i58.i

cond.false.i55.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i54.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %65, i8 noundef zeroext 3) #6
  br label %cond.end.i58.i

cond.end.i58.i:                                   ; preds = %cond.false.i55.i, %cond.true.i53.i
  %cond.i56.i = phi i32 [ %call.i52.i, %cond.true.i53.i ], [ %call4.i54.i, %cond.false.i55.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i56.i)
  %cmp5.i57.i = icmp slt i32 %cond.i56.i, 0
  br i1 %cmp5.i57.i, label %tca6416_read_reg.exit65.i, label %if.end4.i

tca6416_read_reg.exit65.i:                        ; preds = %cond.end.i58.i
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %client26 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %client26, align 8
  %dev.i60.i = getelementptr inbounds %struct.i2c_client, ptr %67, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i60.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 3, i32 noundef %cond.i56.i) #9
  br label %fail1

if.end4.i:                                        ; preds = %cond.end.i58.i
  %conv8.i62.i = trunc i32 %cond.i56.i to i16
  %68 = ptrtoint ptr %reg_direction.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv8.i62.i, ptr %reg_direction.i, align 2
  %69 = ptrtoint ptr %pinmask28 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %pinmask28, align 4
  %or47.i = or i16 %70, %conv8.i62.i
  %71 = ptrtoint ptr %io_size to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %io_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %72)
  %cmp.i67.i = icmp sgt i32 %72, 8
  %73 = ptrtoint ptr %client26 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %client26, align 8
  br i1 %cmp.i67.i, label %cond.true.i70.i, label %cond.false.i72.i

cond.true.i70.i:                                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i69.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %74, i8 noundef zeroext 6, i16 noundef zeroext %or47.i) #6
  br label %cond.end.i75.i

cond.false.i72.i:                                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv3.i.i = trunc i16 %or47.i to i8
  %call4.i71.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %74, i8 noundef zeroext 3, i8 noundef zeroext %conv3.i.i) #6
  br label %cond.end.i75.i

cond.end.i75.i:                                   ; preds = %cond.false.i72.i, %cond.true.i70.i
  %cond.i73.i = phi i32 [ %call.i69.i, %cond.true.i70.i ], [ %call4.i71.i, %cond.false.i72.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i73.i)
  %cmp5.i74.i = icmp slt i32 %cond.i73.i, 0
  br i1 %cmp5.i74.i, label %tca6416_write_reg.exit.i, label %if.end11.i

tca6416_write_reg.exit.i:                         ; preds = %cond.end.i75.i
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %client26 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %client26, align 8
  %dev.i77.i = getelementptr inbounds %struct.i2c_client, ptr %76, i32 0, i32 4
  %conv8.i78.i = zext i16 %or47.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i77.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 3, i32 noundef %conv8.i78.i, i32 noundef %cond.i73.i) #9
  br label %fail1

if.end11.i:                                       ; preds = %cond.end.i75.i
  %77 = ptrtoint ptr %io_size to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %io_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %78)
  %cmp.i82.i = icmp sgt i32 %78, 8
  %79 = ptrtoint ptr %client26 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %client26, align 8
  br i1 %cmp.i82.i, label %cond.true.i85.i, label %cond.false.i87.i

cond.true.i85.i:                                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i84.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %80, i8 noundef zeroext 6) #6
  br label %cond.end.i90.i

cond.false.i87.i:                                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i86.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %80, i8 noundef zeroext 3) #6
  br label %cond.end.i90.i

cond.end.i90.i:                                   ; preds = %cond.false.i87.i, %cond.true.i85.i
  %cond.i88.i = phi i32 [ %call.i84.i, %cond.true.i85.i ], [ %call4.i86.i, %cond.false.i87.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i88.i)
  %cmp5.i89.i = icmp slt i32 %cond.i88.i, 0
  br i1 %cmp5.i89.i, label %tca6416_read_reg.exit97.i, label %if.end16.i

tca6416_read_reg.exit97.i:                        ; preds = %cond.end.i90.i
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %client26 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %client26, align 8
  %dev.i92.i = getelementptr inbounds %struct.i2c_client, ptr %82, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i92.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 3, i32 noundef %cond.i88.i) #9
  br label %fail1

if.end16.i:                                       ; preds = %cond.end.i90.i
  %conv8.i94.i = trunc i32 %cond.i88.i to i16
  %83 = ptrtoint ptr %reg_direction.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv8.i94.i, ptr %reg_direction.i, align 2
  %reg_input.i = getelementptr inbounds %struct.tca6416_keypad_chip, ptr %call9.i.i, i32 0, i32 2
  %84 = ptrtoint ptr %io_size to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %io_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %85)
  %cmp.i99.i = icmp sgt i32 %85, 8
  %86 = ptrtoint ptr %client26 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %client26, align 8
  br i1 %cmp.i99.i, label %cond.true.i102.i, label %cond.false.i104.i

cond.true.i102.i:                                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i101.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %87, i8 noundef zeroext 0) #6
  br label %cond.end.i107.i

cond.false.i104.i:                                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i103.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %87, i8 noundef zeroext 0) #6
  br label %cond.end.i107.i

cond.end.i107.i:                                  ; preds = %cond.false.i104.i, %cond.true.i102.i
  %cond.i105.i = phi i32 [ %call.i101.i, %cond.true.i102.i ], [ %call4.i103.i, %cond.false.i104.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i105.i)
  %cmp5.i106.i = icmp slt i32 %cond.i105.i, 0
  br i1 %cmp5.i106.i, label %tca6416_read_reg.exit114.i, label %if.end74

tca6416_read_reg.exit114.i:                       ; preds = %cond.end.i107.i
  call void @__sanitizer_cov_trace_pc() #8
  %88 = ptrtoint ptr %client26 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %client26, align 8
  %dev.i109.i = getelementptr inbounds %struct.i2c_client, ptr %89, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i109.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 0, i32 noundef %cond.i105.i) #9
  br label %fail1

if.end74:                                         ; preds = %cond.end.i107.i
  %conv8.i111.i = trunc i32 %cond.i105.i to i16
  %90 = ptrtoint ptr %pinmask28 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %pinmask28, align 4
  %and48.i = and i16 %91, %conv8.i111.i
  %92 = ptrtoint ptr %reg_input.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %and48.i, ptr %reg_input.i, align 4
  %93 = ptrtoint ptr %use_polling30 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %use_polling30, align 2, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool76.not = icmp eq i8 %94, 0
  br i1 %tobool76.not, label %if.then77, label %if.end74.if.end107_crit_edge

if.end74.if.end107_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107

if.then77:                                        ; preds = %if.end74
  %irq_is_gpio = getelementptr inbounds %struct.tca6416_keys_platform_data, ptr %9, i32 0, i32 5
  %95 = ptrtoint ptr %irq_is_gpio to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %irq_is_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool78.not = icmp eq i32 %96, 0
  %irq81 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %97 = ptrtoint ptr %irq81 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %irq81, align 4
  br i1 %tobool78.not, label %if.then77.if.end83_crit_edge, label %if.then79

if.then77.if.end83_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

if.then79:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %98) #6
  %call1.i = tail call i32 @gpiod_to_irq(ptr noundef %call.i) #6
  br label %if.end83

if.end83:                                         ; preds = %if.then79, %if.then77.if.end83_crit_edge
  %call1.i.sink = phi i32 [ %call1.i, %if.then79 ], [ %98, %if.then77.if.end83_crit_edge ]
  %99 = getelementptr inbounds %struct.tca6416_keypad_chip, ptr %call9.i.i, i32 0, i32 7
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %call1.i.sink, ptr %99, align 8
  %call85 = tail call i32 @request_threaded_irq(i32 noundef %call1.i.sink, ptr noundef null, ptr noundef nonnull @tca6416_keys_isr, i32 noundef 532482, ptr noundef nonnull @.str, ptr noundef nonnull %call9.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end83.if.end107_crit_edge, label %do.body88

if.end83.if.end107_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107

do.body88:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tca6416_keypad_probe.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tca6416_keypad_probe, %if.then100)) #6
          to label %fail1 [label %if.then100], !srcloc !63

if.then100:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #8
  %101 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %99, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tca6416_keypad_probe.__UNIQUE_ID_ddebug289, ptr noundef %dev4, ptr noundef nonnull @.str.12, i32 noundef %102, i32 noundef %call85) #6
  br label %fail1

if.end107:                                        ; preds = %if.end83.if.end107_crit_edge, %if.end74.if.end107_crit_edge
  %call108 = tail call i32 @input_register_device(ptr noundef nonnull %call21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end128, label %do.body111

do.body111:                                       ; preds = %if.end107
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tca6416_keypad_probe.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tca6416_keypad_probe, %if.then123)) #6
          to label %fail2 [label %if.then123], !srcloc !63

if.then123:                                       ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tca6416_keypad_probe.__UNIQUE_ID_ddebug290, ptr noundef %dev4, ptr noundef nonnull @.str.13, i32 noundef %call108) #6
  br label %fail2

if.end128:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i225 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %103 = ptrtoint ptr %driver_data.i.i225 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call9.i.i, ptr %driver_data.i.i225, align 4
  %call130 = tail call i32 @device_init_wakeup(ptr noundef %dev4, i1 noundef zeroext true) #6
  br label %cleanup

fail2:                                            ; preds = %if.then123, %do.body111
  %104 = ptrtoint ptr %use_polling30 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %use_polling30, align 2, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool132.not = icmp eq i8 %105, 0
  br i1 %tobool132.not, label %if.then133, label %fail2.fail1_crit_edge

fail2.fail1_crit_edge:                            ; preds = %fail2
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail1

if.then133:                                       ; preds = %fail2
  call void @__sanitizer_cov_trace_pc() #8
  %irqnum134 = getelementptr inbounds %struct.tca6416_keypad_chip, ptr %call9.i.i, i32 0, i32 7
  %106 = ptrtoint ptr %irqnum134 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %irqnum134, align 8
  %call135 = tail call ptr @free_irq(i32 noundef %107, ptr noundef nonnull %call9.i.i) #6
  %108 = ptrtoint ptr %irqnum134 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %irqnum134, align 8
  tail call void @enable_irq(i32 noundef %109) #6
  br label %fail1

fail1:                                            ; preds = %if.then133, %fail2.fail1_crit_edge, %if.then100, %do.body88, %tca6416_read_reg.exit114.i, %tca6416_read_reg.exit97.i, %tca6416_write_reg.exit.i, %tca6416_read_reg.exit65.i, %tca6416_read_reg.exit.i, %if.end18.fail1_crit_edge
  %error.0 = phi i32 [ %call108, %fail2.fail1_crit_edge ], [ %call108, %if.then133 ], [ %call85, %if.then100 ], [ -12, %if.end18.fail1_crit_edge ], [ %call85, %do.body88 ], [ %cond.i105.i, %tca6416_read_reg.exit114.i ], [ %cond.i88.i, %tca6416_read_reg.exit97.i ], [ %cond.i73.i, %tca6416_write_reg.exit.i ], [ %cond.i56.i, %tca6416_read_reg.exit65.i ], [ %cond.i.i, %tca6416_read_reg.exit.i ]
  tail call void @input_free_device(ptr noundef %call21) #6
  tail call void @kfree(ptr noundef %call9.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %fail1, %if.end128, %if.then13, %do.body8, %do.end
  %retval.0 = phi i32 [ %error.0, %fail1 ], [ 0, %if.end128 ], [ -19, %do.end ], [ -22, %if.then13 ], [ -22, %do.body8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tca6416_keypad_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %use_polling = getelementptr inbounds %struct.tca6416_keypad_chip, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %use_polling to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_polling, align 2, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %irqnum = getelementptr inbounds %struct.tca6416_keypad_chip, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %irqnum to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irqnum, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %1) #6
  %6 = ptrtoint ptr %irqnum to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irqnum, align 4
  tail call void @enable_irq(i32 noundef %7) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %input = getelementptr inbounds %struct.tca6416_keypad_chip, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input, align 4
  tail call void @input_unregister_device(ptr noundef %9) #6
  tail call void @kfree(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tca6416_keys_work_func(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -16
  tail call fastcc void @tca6416_keys_scan(ptr noundef %add.ptr)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %work, i32 noundef 10) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tca6416_keys_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @tca6416_keys_scan(ptr noundef %1)
  %use_polling = getelementptr inbounds %struct.tca6416_keypad_chip, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %use_polling to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_polling, align 2, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dwork = getelementptr inbounds %struct.tca6416_keypad_chip, ptr %1, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %dwork, i32 noundef 10) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %irqnum = getelementptr inbounds %struct.tca6416_keypad_chip, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %irqnum to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irqnum, align 4
  tail call void @enable_irq(i32 noundef %6) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tca6416_keys_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %use_polling = getelementptr inbounds %struct.tca6416_keypad_chip, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %use_polling to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_polling, align 2, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dwork = getelementptr inbounds %struct.tca6416_keypad_chip, ptr %1, i32 0, i32 5
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %dwork) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %irqnum = getelementptr inbounds %struct.tca6416_keypad_chip, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %irqnum to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irqnum, align 4
  tail call void @disable_irq(i32 noundef %5) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tca6416_keys_isr(i32 noundef %irq, ptr nocapture noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @tca6416_keys_scan(ptr noundef %dev_id)
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tca6416_keys_scan(ptr nocapture noundef %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %input1 = getelementptr inbounds %struct.tca6416_keypad_chip, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input1, align 4
  %io_size.i = getelementptr inbounds %struct.tca6416_keypad_chip, ptr %chip, i32 0, i32 6
  %2 = ptrtoint ptr %io_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp.i = icmp sgt i32 %3, 8
  %client.i = getelementptr inbounds %struct.tca6416_keypad_chip, ptr %chip, i32 0, i32 3
  %4 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client.i, align 4
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %5, i8 noundef zeroext 0) #6
  br label %cond.end.i

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 0) #6
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call.i, %cond.true.i ], [ %call4.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp5.i = icmp slt i32 %cond.i, 0
  br i1 %cmp5.i, label %tca6416_read_reg.exit, label %if.end

tca6416_read_reg.exit:                            ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 0, i32 noundef %cond.i) #9
  br label %cleanup

if.end:                                           ; preds = %cond.end.i
  %conv8.i = trunc i32 %cond.i to i16
  %pinmask = getelementptr inbounds %struct.tca6416_keypad_chip, ptr %chip, i32 0, i32 8
  %8 = ptrtoint ptr %pinmask to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %pinmask, align 4
  %and51 = and i16 %9, %conv8.i
  %reg_input = getelementptr inbounds %struct.tca6416_keypad_chip, ptr %chip, i32 0, i32 2
  %10 = ptrtoint ptr %reg_input to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %reg_input, align 4
  %xor52 = xor i16 %and51, %11
  store i16 %and51, ptr %reg_input, align 4
  %conv9 = zext i16 %xor52 to i32
  %conv15 = zext i16 %and51 to i32
  br label %for.body

for.body:                                         ; preds = %if.end23.for.body_crit_edge, %if.end
  %i.059 = phi i32 [ 0, %if.end ], [ %inc31, %if.end23.for.body_crit_edge ]
  %pin_index.058 = phi i32 [ 0, %if.end ], [ %spec.select, %if.end23.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.059
  %and10 = and i32 %shl, %conv9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %for.body.if.end23_crit_edge, label %if.then12

for.body.if.end23_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.tca6416_keypad_chip, ptr %chip, i32 0, i32 10, i32 %pin_index.058
  %type13 = getelementptr %struct.tca6416_keypad_chip, ptr %chip, i32 0, i32 10, i32 %pin_index.058, i32 2
  %12 = ptrtoint ptr %type13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool14.not = icmp eq i32 %13, 0
  %. = select i1 %tobool14.not, i32 1, i32 %13
  %14 = lshr i32 %conv15, %i.059
  %15 = and i32 %14, 1
  %active_low = getelementptr %struct.tca6416_keypad_chip, ptr %chip, i32 0, i32 10, i32 %pin_index.058, i32 1
  %16 = ptrtoint ptr %active_low to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %active_low, align 4
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %tobool21 = icmp ne i32 %15, %17
  %lnot.ext = zext i1 %tobool21 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef %., i32 noundef %19, i32 noundef %lnot.ext) #6
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %if.end23

if.end23:                                         ; preds = %if.then12, %for.body.if.end23_crit_edge
  %20 = ptrtoint ptr %pinmask to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %pinmask, align 4
  %conv25 = zext i16 %21 to i32
  %22 = lshr i32 %conv25, %i.059
  %23 = and i32 %22, 1
  %spec.select = add i32 %23, %pin_index.058
  %inc31 = add nuw nsw i32 %i.059, 1
  %exitcond.not = icmp eq i32 %inc31, 16
  br i1 %exitcond.not, label %if.end23.cleanup_crit_edge, label %if.end23.for.body_crit_edge

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end23.cleanup_crit_edge, %tca6416_read_reg.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tca6416_keypad_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %irqnum = getelementptr inbounds %struct.tca6416_keypad_chip, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %irqnum to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irqnum, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tca6416_keypad_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %irqnum = getelementptr inbounds %struct.tca6416_keypad_chip, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %irqnum to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irqnum, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !32, !34, !36, !37, !39, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__initcall__kmod_tca6416_keypad__291_367_tca6416_keypad_init4, !1, !"__initcall__kmod_tca6416_keypad__291_367_tca6416_keypad_init4", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/tca6416-keypad.c", i32 367, i32 1}
!2 = !{ptr @__exitcall_tca6416_keypad_exit, !3, !"__exitcall_tca6416_keypad_exit", i1 false, i1 false}
!3 = !{!"../drivers/input/keyboard/tca6416-keypad.c", i32 373, i32 1}
!4 = !{ptr @__UNIQUE_ID_author292, !5, !"__UNIQUE_ID_author292", i1 false, i1 false}
!5 = !{!"../drivers/input/keyboard/tca6416-keypad.c", i32 375, i32 1}
!6 = !{ptr @__UNIQUE_ID_description293, !7, !"__UNIQUE_ID_description293", i1 false, i1 false}
!7 = !{!"../drivers/input/keyboard/tca6416-keypad.c", i32 376, i32 1}
!8 = !{ptr @__UNIQUE_ID_file294, !9, !"__UNIQUE_ID_file294", i1 false, i1 false}
!9 = !{!"../drivers/input/keyboard/tca6416-keypad.c", i32 377, i32 1}
!10 = !{ptr @__UNIQUE_ID_license295, !9, !"__UNIQUE_ID_license295", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/input/keyboard/tca6416-keypad.c", i32 354, i32 11}
!13 = !{ptr @tca6416_keypad_driver, !14, !"tca6416_keypad_driver", i1 false, i1 false}
!14 = !{!"../drivers/input/keyboard/tca6416-keypad.c", i32 352, i32 26}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/input/keyboard/tca6416-keypad.c", i32 208, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @tca6416_keypad_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @tca6416_keypad_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/input/keyboard/tca6416-keypad.c", i32 215, i32 3}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @tca6416_keypad_probe.__UNIQUE_ID_ddebug288, !24, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!27 = !{ptr @tca6416_keypad_probe.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/input/keyboard/tca6416-keypad.c", i32 232, i32 2}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @tca6416_keypad_probe.__key.9, !28, !"__key", i1 false, i1 false}
!31 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/keyboard/tca6416-keypad.c", i32 234, i32 16}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/keyboard/tca6416-keypad.c", i32 280, i32 4}
!36 = !{ptr @tca6416_keypad_probe.__UNIQUE_ID_ddebug289, !35, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/keyboard/tca6416-keypad.c", i32 289, i32 3}
!39 = !{ptr @tca6416_keypad_probe.__UNIQUE_ID_ddebug290, !38, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/keyboard/tca6416-keypad.c", i32 79, i32 3}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @tca6416_read_reg._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @tca6416_read_reg._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/keyboard/tca6416-keypad.c", i32 62, i32 3}
!47 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @tca6416_write_reg._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @tca6416_write_reg._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @tca6416_keypad_dev_pm_ops, !51, !"tca6416_keypad_dev_pm_ops", i1 false, i1 false}
!51 = !{!"../drivers/input/keyboard/tca6416-keypad.c", i32 349, i32 8}
!52 = !{ptr @tca6416_id, !53, !"tca6416_id", i1 false, i1 false}
!53 = !{!"../drivers/input/keyboard/tca6416-keypad.c", i32 27, i32 35}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{i64 2148960089, i64 2148960094, i64 2148960107, i64 2148960151, i64 2148960185, i64 2148960206}
!64 = !{i8 0, i8 2}
