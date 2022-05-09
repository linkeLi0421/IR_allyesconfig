; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/qt2160.c_pt.bc'
source_filename = "../drivers/input/keyboard/qt2160.c"
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
%struct.qt2160_data = type { ptr, ptr, %struct.delayed_work, [16 x i16], i16, [8 x %struct.qt2160_led] }
%struct.qt2160_led = type { ptr, %struct.led_classdev, [32 x i8], i32, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_qt2160__291_470_qt2160_driver_init6 = internal global ptr @qt2160_driver_init, section ".initcall6.init", align 4
@qt2160_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @qt2160_probe, ptr @qt2160_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @qt2160_idtable, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_qt2160_driver_exit = internal global ptr @qt2160_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author292 = internal constant [65 x i8] c"qt2160.author=Raphael Derosso Pereira <raphaelpereira@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [54 x i8] c"qt2160.description=Driver for AT42QT2160 Touch Sensor\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [42 x i8] c"qt2160.file=drivers/input/keyboard/qt2160\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [19 x i8] c"qt2160.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qt2160\00", [25 x i8] zeroinitializer }, align 32
@qt2160_idtable = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"qt2160\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@qt2160_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 354, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s adapter not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qt2160_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/input/keyboard/qt2160.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qt2160_probe._entry_ptr = internal global ptr @qt2160_probe._entry, section ".printk_index", align 4
@qt2160_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 365, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"insufficient memory\0A\00", [43 x i8] zeroinitializer }, align 32
@qt2160_probe._entry_ptr.8 = internal global ptr @qt2160_probe._entry.6, section ".printk_index", align 4
@qt2160_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&qt2160->dwork)->work)\00", [53 x i8] zeroinitializer }, align 32
@qt2160_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&qt2160->dwork)->timer\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"AT42QT2160 Touch Sense Keyboard\00", [32 x i8] zeroinitializer }, align 32
@qt2160_key2code = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\0B\02\03\04\05\06\07\08\09\0A\1E0. \12!", [16 x i8] zeroinitializer }, align 32
@qt2160_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 392, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to calibrate device\0A\00", [36 x i8] zeroinitializer }, align 32
@qt2160_probe._entry_ptr.15 = internal global ptr @qt2160_probe._entry.13, section ".printk_index", align 4
@qt2160_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 401, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to allocate irq %d\0A\00", [37 x i8] zeroinitializer }, align 32
@qt2160_probe._entry_ptr.18 = internal global ptr @qt2160_probe._entry.16, section ".printk_index", align 4
@qt2160_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 408, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to register leds\0A\00", [39 x i8] zeroinitializer }, align 32
@qt2160_probe._entry_ptr.21 = internal global ptr @qt2160_probe._entry.19, section ".printk_index", align 4
@qt2160_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 415, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register input device\0A\00", [63 x i8] zeroinitializer }, align 32
@qt2160_probe._entry_ptr.24 = internal global ptr @qt2160_probe._entry.22, section ".printk_index", align 4
@qt2160_identify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 317, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ID %d not supported\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qt2160_identify\00", [16 x i8] zeroinitializer }, align 32
@qt2160_identify._entry_ptr = internal global ptr @qt2160_identify._entry, section ".printk_index", align 4
@qt2160_identify._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 324, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"could not get firmware version\0A\00", [32 x i8] zeroinitializer }, align 32
@qt2160_identify._entry_ptr.29 = internal global ptr @qt2160_identify._entry.27, section ".printk_index", align 4
@qt2160_identify._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.3, i32 331, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not get firmware revision\0A\00", [63 x i8] zeroinitializer }, align 32
@qt2160_identify._entry_ptr.32 = internal global ptr @qt2160_identify._entry.30, section ".printk_index", align 4
@qt2160_identify._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.26, ptr @.str.3, i32 336, ptr @.str.35, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"AT42QT2160 firmware version %d.%d.%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@qt2160_identify._entry_ptr.36 = internal global ptr @qt2160_identify._entry.33, section ".printk_index", align 4
@qt2160_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 232, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"couldn't send request. Returned %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qt2160_read\00", [20 x i8] zeroinitializer }, align 32
@qt2160_read._entry_ptr = internal global ptr @qt2160_read._entry, section ".printk_index", align 4
@qt2160_read._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.3, i32 239, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"couldn't read register. Returned %d\0A\00", [59 x i8] zeroinitializer }, align 32
@qt2160_read._entry_ptr.41 = internal global ptr @qt2160_read._entry.39, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@qt2160_worker.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.3, ptr @.str.43, i8 0, i8 54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qt2160_worker\00", [18 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"worker\0A\00", [24 x i8] zeroinitializer }, align 32
@qt2160_get_key_matrix.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.3, ptr @.str.45, i8 0, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qt2160_get_key_matrix\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"requesting keys...\0A\00", [44 x i8] zeroinitializer }, align 32
@qt2160_get_key_matrix._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.3, i32 175, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not perform chip read.\0A\00", [34 x i8] zeroinitializer }, align 32
@qt2160_get_key_matrix._entry_ptr = internal global ptr @qt2160_get_key_matrix._entry, section ".printk_index", align 4
@qt2160_get_key_matrix.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.3, ptr @.str.47, i8 0, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"key %d %s\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pressed\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"released\00", [23 x i8] zeroinitializer }, align 32
@qt2160_read_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.50, ptr @.str.3, i32 122, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qt2160_read_block\00", [46 x i8] zeroinitializer }, align 32
@qt2160_read_block._entry_ptr = internal global ptr @qt2160_read_block._entry, section ".printk_index", align 4
@qt2160_read_block._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.3, i32 129, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"couldn't read registers. Returned %d bytes\0A\00", [52 x i8] zeroinitializer }, align 32
@qt2160_read_block._entry_ptr.53 = internal global ptr @qt2160_read_block._entry.51, section ".printk_index", align 4
@qt2160_read_block._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.50, ptr @.str.3, i32 140, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@qt2160_read_block._entry_ptr.55 = internal global ptr @qt2160_read_block._entry.54, section ".printk_index", align 4
@qt2160_read_block._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.50, ptr @.str.3, i32 147, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@qt2160_read_block._entry_ptr.57 = internal global ptr @qt2160_read_block._entry.56, section ".printk_index", align 4
@qt2160_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 253, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"couldn't write data. Returned %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qt2160_write\00", [19 x i8] zeroinitializer }, align 32
@qt2160_write._entry_ptr = internal global ptr @qt2160_write._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qt2160:x%d\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.61 = private unnamed_addr constant [14 x i8] c"qt2160_driver\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 460, i32 26 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 462, i32 11 }
@___asan_gen_.67 = private unnamed_addr constant [15 x i8] c"qt2160_idtable\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 453, i32 35 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 353, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 365, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 372, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 374, i32 16 }
@___asan_gen_.109 = private unnamed_addr constant [16 x i8] c"qt2160_key2code\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 37, i32 22 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 392, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 400, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 408, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 414, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 317, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 324, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 331, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 335, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 231, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 238, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 217, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 166, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 174, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 188, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 121, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 128, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 139, i32 5 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 146, i32 5 }
@___asan_gen_.226 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 252, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.236 = private constant [35 x i8] c"../drivers/input/keyboard/qt2160.c\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 269, i32 42 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_qt2160_driver_exit, ptr @__initcall__kmod_qt2160__291_470_qt2160_driver_init6, ptr @qt2160_driver_exit, ptr @qt2160_get_key_matrix._entry, ptr @qt2160_get_key_matrix._entry_ptr, ptr @qt2160_identify._entry, ptr @qt2160_identify._entry.27, ptr @qt2160_identify._entry.30, ptr @qt2160_identify._entry.33, ptr @qt2160_identify._entry_ptr, ptr @qt2160_identify._entry_ptr.29, ptr @qt2160_identify._entry_ptr.32, ptr @qt2160_identify._entry_ptr.36, ptr @qt2160_probe._entry, ptr @qt2160_probe._entry.13, ptr @qt2160_probe._entry.16, ptr @qt2160_probe._entry.19, ptr @qt2160_probe._entry.22, ptr @qt2160_probe._entry.6, ptr @qt2160_probe._entry_ptr, ptr @qt2160_probe._entry_ptr.15, ptr @qt2160_probe._entry_ptr.18, ptr @qt2160_probe._entry_ptr.21, ptr @qt2160_probe._entry_ptr.24, ptr @qt2160_probe._entry_ptr.8, ptr @qt2160_read._entry, ptr @qt2160_read._entry.39, ptr @qt2160_read._entry_ptr, ptr @qt2160_read._entry_ptr.41, ptr @qt2160_read_block._entry, ptr @qt2160_read_block._entry.51, ptr @qt2160_read_block._entry.54, ptr @qt2160_read_block._entry.56, ptr @qt2160_read_block._entry_ptr, ptr @qt2160_read_block._entry_ptr.53, ptr @qt2160_read_block._entry_ptr.55, ptr @qt2160_read_block._entry_ptr.57, ptr @qt2160_write._entry, ptr @qt2160_write._entry_ptr, ptr @qt2160_driver, ptr @.str, ptr @qt2160_idtable, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @qt2160_probe.__key, ptr @.str.9, ptr @qt2160_probe.__key.10, ptr @.str.11, ptr @.str.12, ptr @qt2160_key2code, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.58, ptr @.str.59, ptr @.str.60], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2160_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2160_idtable to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2160_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2160_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2160_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2160_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2160_key2code to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2160_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2160_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2160_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2160_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2160_identify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2160_identify._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2160_identify._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2160_identify._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2160_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2160_read._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2160_get_key_matrix._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2160_read_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2160_read_block._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2160_read_block._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2160_read_block._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2160_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qt2160_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @qt2160_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qt2160_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @qt2160_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qt2160_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #7
  %and.i153 = and i32 %call.i.i, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 393216, i32 %and.i153)
  %cmp.i.not = icmp eq i32 %and.i153, 393216
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 8
  %dev2 = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 9
  %call3 = tail call ptr @dev_driver_string(ptr noundef %dev2) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef %call3) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i154 = tail call i32 @i2c_smbus_write_byte(ptr noundef %client, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i154)
  %tobool.not.i.i = icmp eq i32 %call.i.i154, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.37, i32 noundef %call.i.i154) #10
  br label %qt2160_read.exit.i

if.end.i.i:                                       ; preds = %if.end
  %call1.i.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %client) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %qt2160_read.exit.thread.i, label %if.end.i.i.qt2160_read.exit.i_crit_edge

if.end.i.i.qt2160_read.exit.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qt2160_read.exit.i

qt2160_read.exit.thread.i:                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev6.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i.i, ptr noundef nonnull @.str.40, i32 noundef %call1.i.i) #10
  br label %do.end.i

qt2160_read.exit.i:                               ; preds = %if.end.i.i.qt2160_read.exit.i_crit_edge, %do.end.i.i
  %retval.0.i.i = phi i32 [ %call.i.i154, %do.end.i.i ], [ %call1.i.i, %if.end.i.i.qt2160_read.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %retval.0.i.i)
  %cmp.not.i = icmp eq i32 %retval.0.i.i, 17
  br i1 %cmp.not.i, label %if.end.i, label %qt2160_read.exit.i.do.end.i_crit_edge

qt2160_read.exit.i.do.end.i_crit_edge:            ; preds = %qt2160_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %qt2160_read.exit.i.do.end.i_crit_edge, %qt2160_read.exit.thread.i
  %retval.0.i57.i = phi i32 [ %call1.i.i, %qt2160_read.exit.thread.i ], [ %retval.0.i.i, %qt2160_read.exit.i.do.end.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.25, i32 noundef %retval.0.i57.i) #10
  br label %cleanup

if.end.i:                                         ; preds = %qt2160_read.exit.i
  %call.i33.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %client, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.i)
  %tobool.not.i34.i = icmp eq i32 %call.i33.i, 0
  br i1 %tobool.not.i34.i, label %if.end.i39.i, label %qt2160_read.exit43.i

if.end.i39.i:                                     ; preds = %if.end.i
  %call1.i37.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %client) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i37.i)
  %cmp.i38.i = icmp slt i32 %call1.i37.i, 0
  br i1 %cmp.i38.i, label %qt2160_read.exit43.thread.i, label %if.end.i39.i.if.end8.i_crit_edge

if.end.i39.i.if.end8.i_crit_edge:                 ; preds = %if.end.i39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

qt2160_read.exit43.thread.i:                      ; preds = %if.end.i39.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev6.i40.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i40.i, ptr noundef nonnull @.str.40, i32 noundef %call1.i37.i) #10
  br label %do.end6.i

qt2160_read.exit43.i:                             ; preds = %if.end.i
  %dev.i35.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i35.i, ptr noundef nonnull @.str.37, i32 noundef %call.i33.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.i)
  %cmp2.i = icmp slt i32 %call.i33.i, 0
  br i1 %cmp2.i, label %qt2160_read.exit43.i.do.end6.i_crit_edge, label %qt2160_read.exit43.i.if.end8.i_crit_edge

qt2160_read.exit43.i.if.end8.i_crit_edge:         ; preds = %qt2160_read.exit43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

qt2160_read.exit43.i.do.end6.i_crit_edge:         ; preds = %qt2160_read.exit43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6.i

do.end6.i:                                        ; preds = %qt2160_read.exit43.i.do.end6.i_crit_edge, %qt2160_read.exit43.thread.i
  %dev7.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.28) #10
  br label %cleanup

if.end8.i:                                        ; preds = %qt2160_read.exit43.i.if.end8.i_crit_edge, %if.end.i39.i.if.end8.i_crit_edge
  %retval.0.i4263.i = phi i32 [ %call.i33.i, %qt2160_read.exit43.i.if.end8.i_crit_edge ], [ %call1.i37.i, %if.end.i39.i.if.end8.i_crit_edge ]
  %call.i44.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %client, i8 noundef zeroext 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i)
  %tobool.not.i45.i = icmp eq i32 %call.i44.i, 0
  br i1 %tobool.not.i45.i, label %if.end.i50.i, label %qt2160_read.exit54.i

if.end.i50.i:                                     ; preds = %if.end8.i
  %call1.i48.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %client) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i48.i)
  %cmp.i49.i = icmp slt i32 %call1.i48.i, 0
  br i1 %cmp.i49.i, label %qt2160_read.exit54.thread.i, label %if.end.i50.i.if.end6_crit_edge

if.end.i50.i.if.end6_crit_edge:                   ; preds = %if.end.i50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

qt2160_read.exit54.thread.i:                      ; preds = %if.end.i50.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev6.i51.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i51.i, ptr noundef nonnull @.str.40, i32 noundef %call1.i48.i) #10
  br label %do.end14.i

qt2160_read.exit54.i:                             ; preds = %if.end8.i
  %dev.i46.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i46.i, ptr noundef nonnull @.str.37, i32 noundef %call.i44.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i)
  %cmp10.i = icmp slt i32 %call.i44.i, 0
  br i1 %cmp10.i, label %qt2160_read.exit54.i.do.end14.i_crit_edge, label %qt2160_read.exit54.i.if.end6_crit_edge

qt2160_read.exit54.i.if.end6_crit_edge:           ; preds = %qt2160_read.exit54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

qt2160_read.exit54.i.do.end14.i_crit_edge:        ; preds = %qt2160_read.exit54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14.i

do.end14.i:                                       ; preds = %qt2160_read.exit54.i.do.end14.i_crit_edge, %qt2160_read.exit54.thread.i
  %dev15.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15.i, ptr noundef nonnull @.str.31) #10
  br label %cleanup

if.end6:                                          ; preds = %qt2160_read.exit54.i.if.end6_crit_edge, %if.end.i50.i.if.end6_crit_edge
  %retval.0.i5369.i = phi i32 [ %call.i44.i, %qt2160_read.exit54.i.if.end6_crit_edge ], [ %call1.i48.i, %if.end.i50.i.if.end6_crit_edge ]
  %dev20.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %shr70.i = lshr i32 %retval.0.i4263.i, 4
  %and.i155 = and i32 %retval.0.i4263.i, 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev20.i, ptr noundef nonnull @.str.34, i32 noundef %shr70.i, i32 noundef %and.i155, i32 noundef %retval.0.i5369.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 3696) #11
  %call8 = tail call ptr @input_allocate_device() #7
  %tobool9.not = icmp eq ptr %call7.i.i, null
  %tobool10.not = icmp eq ptr %call8, null
  %or.cond = select i1 %tobool9.not, i1 true, i1 %tobool10.not
  br i1 %or.cond, label %do.end14, label %if.end16

do.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20.i, ptr noundef nonnull @.str.7) #10
  br label %err_free_mem

if.end16:                                         ; preds = %if.end6
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %client, ptr %call7.i.i, align 8
  %input18 = getelementptr inbounds %struct.qt2160_data, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %input18 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8, ptr %input18, align 4
  %dwork = getelementptr inbounds %struct.qt2160_data, ptr %call7.i.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %dwork, i32 noundef 0) #7
  %11 = ptrtoint ptr %dwork to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %dwork, align 8
  %lockdep_map = getelementptr inbounds %struct.qt2160_data, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.9, ptr noundef nonnull @qt2160_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry27 = getelementptr inbounds %struct.qt2160_data, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %12 = ptrtoint ptr %entry27 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entry27, ptr %entry27, align 4
  %prev.i = getelementptr inbounds %struct.qt2160_data, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry27, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.qt2160_data, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 2
  %14 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @qt2160_worker, ptr %func, align 4
  %timer = getelementptr inbounds %struct.qt2160_data, ptr %call7.i.i, i32 0, i32 2, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.11, ptr noundef nonnull @qt2160_probe.__key.10) #7
  %15 = ptrtoint ptr %call8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.12, ptr %call8, align 8
  %id38 = getelementptr inbounds %struct.input_dev, ptr %call8, i32 0, i32 3
  %16 = ptrtoint ptr %id38 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 24, ptr %id38, align 4
  %keycodes = getelementptr inbounds %struct.qt2160_data, ptr %call7.i.i, i32 0, i32 3
  %keycode = getelementptr inbounds %struct.input_dev, ptr %call8, i32 0, i32 17
  %17 = ptrtoint ptr %keycode to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %keycodes, ptr %keycode, align 4
  %keycodesize = getelementptr inbounds %struct.input_dev, ptr %call8, i32 0, i32 16
  %18 = ptrtoint ptr %keycodesize to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %keycodesize, align 8
  %keycodemax = getelementptr inbounds %struct.input_dev, ptr %call8, i32 0, i32 15
  %19 = ptrtoint ptr %keycodemax to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 16, ptr %keycodemax, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call8, i32 0, i32 5
  %20 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %evbit, align 4
  %or.i = and i32 %21, -1048579
  %and.i = or i32 %or.i, 2
  store i32 %and.i, ptr %evbit, align 4
  %keybit = getelementptr inbounds %struct.input_dev, ptr %call8, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end16
  %i.0173 = phi i32 [ 0, %if.end16 ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x i8], ptr @qt2160_key2code, i32 0, i32 %i.0173
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %23 to i16
  %arrayidx43 = getelementptr %struct.qt2160_data, ptr %call7.i.i, i32 0, i32 3, i32 %i.0173
  %24 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv, ptr %arrayidx43, align 2
  %conv45 = zext i8 %23 to i32
  %rem.i = and i32 %conv45, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv45, 5
  %add.ptr.i = getelementptr i32, ptr %keybit, i32 %div2.i
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i, align 4
  %or.i151 = or i32 %shl.i, %26
  store i32 %or.i151, ptr %add.ptr.i, align 4
  %inc = add nuw nsw i32 %i.0173, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  %27 = ptrtoint ptr %keybit to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %keybit, align 4
  %and.i152 = and i32 %28, -2
  store i32 %and.i152, ptr %keybit, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 10, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i156 = icmp slt i32 %call.i, 0
  br i1 %cmp.i156, label %qt2160_write.exit.thread, label %qt2160_write.exit

qt2160_write.exit.thread:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20.i, ptr noundef nonnull @.str.58, i32 noundef %call.i) #10
  br label %do.end54

qt2160_write.exit:                                ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool50.not = icmp eq i32 %call.i, 0
  br i1 %tobool50.not, label %if.end56, label %qt2160_write.exit.do.end54_crit_edge

qt2160_write.exit.do.end54_crit_edge:             ; preds = %qt2160_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end54

do.end54:                                         ; preds = %qt2160_write.exit.do.end54_crit_edge, %qt2160_write.exit.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20.i, ptr noundef nonnull @.str.14) #10
  br label %err_free_mem

if.end56:                                         ; preds = %qt2160_write.exit
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %29 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool57.not = icmp eq i32 %30, 0
  br i1 %tobool57.not, label %if.end56.if.end69_crit_edge, label %if.then58

if.end56.if.end69_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then58:                                        ; preds = %if.end56
  %call.i160 = tail call i32 @request_threaded_irq(i32 noundef %30, ptr noundef nonnull @qt2160_irq, ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str, ptr noundef %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160)
  %tobool61.not = icmp eq i32 %call.i160, 0
  br i1 %tobool61.not, label %if.then58.if.end69_crit_edge, label %do.end65

if.then58.if.end69_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

do.end65:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20.i, ptr noundef nonnull @.str.17, i32 noundef %32) #10
  br label %err_free_mem

if.end69:                                         ; preds = %if.then58.if.end69_crit_edge, %if.end56.if.end69_crit_edge
  %33 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call7.i.i, align 8
  %dev.i161 = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.045.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %for.end.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end69
  %i.045.i = phi i32 [ 0, %if.end69 ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.qt2160_data, ptr %call7.i.i, i32 0, i32 5, i32 %i.045.i
  %name.i = getelementptr %struct.qt2160_data, ptr %call7.i.i, i32 0, i32 5, i32 %i.045.i, i32 2
  %call.i162 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 32, ptr noundef nonnull @.str.60, i32 noundef %i.045.i) #7
  %cdev.i = getelementptr %struct.qt2160_data, ptr %call7.i.i, i32 0, i32 5, i32 %i.045.i, i32 1
  %35 = ptrtoint ptr %cdev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %name.i, ptr %cdev.i, align 4
  %brightness_set_blocking.i = getelementptr %struct.qt2160_data, ptr %call7.i.i, i32 0, i32 5, i32 %i.045.i, i32 1, i32 6
  %36 = ptrtoint ptr %brightness_set_blocking.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @qt2160_led_set, ptr %brightness_set_blocking.i, align 4
  %brightness.i = getelementptr %struct.qt2160_data, ptr %call7.i.i, i32 0, i32 5, i32 %i.045.i, i32 1, i32 1
  %37 = ptrtoint ptr %brightness.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %brightness.i, align 4
  %id.i = getelementptr %struct.qt2160_data, ptr %call7.i.i, i32 0, i32 5, i32 %i.045.i, i32 3
  %38 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %i.045.i, ptr %id.i, align 4
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i.i, ptr %arrayidx.i, align 4
  %call.i.i163 = tail call i32 @led_classdev_register_ext(ptr noundef %dev.i161, ptr noundef %cdev.i, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i163)
  %cmp10.i164 = icmp slt i32 %call.i.i163, 0
  br i1 %cmp10.i164, label %do.end75, label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  %call.i34.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %34, i8 noundef zeroext 70, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34.i)
  %cmp.i.i165 = icmp slt i32 %call.i34.i, 0
  br i1 %cmp.i.i165, label %do.end.i.i166, label %for.end.i.qt2160_write.exit.i_crit_edge

for.end.i.qt2160_write.exit.i_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qt2160_write.exit.i

do.end.i.i166:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i161, ptr noundef nonnull @.str.58, i32 noundef %call.i34.i) #10
  br label %qt2160_write.exit.i

qt2160_write.exit.i:                              ; preds = %do.end.i.i166, %for.end.i.qt2160_write.exit.i_crit_edge
  %call.i35.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %34, i8 noundef zeroext 74, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35.i)
  %cmp.i36.i = icmp slt i32 %call.i35.i, 0
  br i1 %cmp.i36.i, label %do.end.i38.i, label %qt2160_write.exit.i.qt2160_write.exit39.i_crit_edge

qt2160_write.exit.i.qt2160_write.exit39.i_crit_edge: ; preds = %qt2160_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qt2160_write.exit39.i

do.end.i38.i:                                     ; preds = %qt2160_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i161, ptr noundef nonnull @.str.58, i32 noundef %call.i35.i) #10
  br label %qt2160_write.exit39.i

qt2160_write.exit39.i:                            ; preds = %do.end.i38.i, %qt2160_write.exit.i.qt2160_write.exit39.i_crit_edge
  %call.i40.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %34, i8 noundef zeroext 76, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40.i)
  %cmp.i41.i = icmp slt i32 %call.i40.i, 0
  br i1 %cmp.i41.i, label %do.end.i43.i, label %qt2160_write.exit39.i.if.end77_crit_edge

qt2160_write.exit39.i.if.end77_crit_edge:         ; preds = %qt2160_write.exit39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

do.end.i43.i:                                     ; preds = %qt2160_write.exit39.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i161, ptr noundef nonnull @.str.58, i32 noundef %call.i40.i) #10
  br label %if.end77

do.end75:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20.i, ptr noundef nonnull @.str.20) #10
  br label %err_free_irq

if.end77:                                         ; preds = %do.end.i43.i, %qt2160_write.exit39.i.if.end77_crit_edge
  %40 = ptrtoint ptr %input18 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %input18, align 4
  %call79 = tail call i32 @input_register_device(ptr noundef %41) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end86, label %do.end84

do.end84:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20.i, ptr noundef nonnull @.str.23) #10
  %cdev.i167 = getelementptr %struct.qt2160_data, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1
  tail call void @led_classdev_unregister(ptr noundef %cdev.i167) #7
  %cdev.1.i = getelementptr %struct.qt2160_data, ptr %call7.i.i, i32 0, i32 5, i32 1, i32 1
  tail call void @led_classdev_unregister(ptr noundef %cdev.1.i) #7
  %cdev.2.i = getelementptr %struct.qt2160_data, ptr %call7.i.i, i32 0, i32 5, i32 2, i32 1
  tail call void @led_classdev_unregister(ptr noundef %cdev.2.i) #7
  %cdev.3.i = getelementptr %struct.qt2160_data, ptr %call7.i.i, i32 0, i32 5, i32 3, i32 1
  tail call void @led_classdev_unregister(ptr noundef %cdev.3.i) #7
  %cdev.4.i = getelementptr %struct.qt2160_data, ptr %call7.i.i, i32 0, i32 5, i32 4, i32 1
  tail call void @led_classdev_unregister(ptr noundef %cdev.4.i) #7
  %cdev.5.i = getelementptr %struct.qt2160_data, ptr %call7.i.i, i32 0, i32 5, i32 5, i32 1
  tail call void @led_classdev_unregister(ptr noundef %cdev.5.i) #7
  %cdev.6.i = getelementptr %struct.qt2160_data, ptr %call7.i.i, i32 0, i32 5, i32 6, i32 1
  tail call void @led_classdev_unregister(ptr noundef %cdev.6.i) #7
  %cdev.7.i = getelementptr %struct.qt2160_data, ptr %call7.i.i, i32 0, i32 5, i32 7, i32 1
  tail call void @led_classdev_unregister(ptr noundef %cdev.7.i) #7
  br label %err_free_irq

if.end86:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %42 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %43 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %dwork, i32 noundef 200) #7
  br label %cleanup

err_free_irq:                                     ; preds = %do.end84, %do.end75
  %error.0 = phi i32 [ %call.i.i163, %do.end75 ], [ %call79, %do.end84 ]
  %44 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool88.not = icmp eq i32 %45, 0
  br i1 %tobool88.not, label %err_free_irq.err_free_mem_crit_edge, label %if.then89

err_free_irq.err_free_mem_crit_edge:              ; preds = %err_free_irq
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_mem

if.then89:                                        ; preds = %err_free_irq
  call void @__sanitizer_cov_trace_pc() #9
  %call91 = tail call ptr @free_irq(i32 noundef %45, ptr noundef nonnull %call7.i.i) #7
  br label %err_free_mem

err_free_mem:                                     ; preds = %if.then89, %err_free_irq.err_free_mem_crit_edge, %do.end65, %do.end54, %do.end14
  %error.1 = phi i32 [ %call.i, %do.end54 ], [ %call.i160, %do.end65 ], [ %error.0, %if.then89 ], [ %error.0, %err_free_irq.err_free_mem_crit_edge ], [ -12, %do.end14 ]
  tail call void @input_free_device(ptr noundef %call8) #7
  tail call void @kfree(ptr noundef %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err_free_mem, %if.end86, %do.end14.i, %do.end6.i, %do.end.i, %do.end
  %retval.0 = phi i32 [ %error.1, %err_free_mem ], [ 0, %if.end86 ], [ -19, %do.end ], [ -19, %do.end.i ], [ -19, %do.end6.i ], [ -19, %do.end14.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qt2160_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cdev.i = getelementptr %struct.qt2160_data, ptr %1, i32 0, i32 5, i32 0, i32 1
  tail call void @led_classdev_unregister(ptr noundef %cdev.i) #7
  %cdev.1.i = getelementptr %struct.qt2160_data, ptr %1, i32 0, i32 5, i32 1, i32 1
  tail call void @led_classdev_unregister(ptr noundef %cdev.1.i) #7
  %cdev.2.i = getelementptr %struct.qt2160_data, ptr %1, i32 0, i32 5, i32 2, i32 1
  tail call void @led_classdev_unregister(ptr noundef %cdev.2.i) #7
  %cdev.3.i = getelementptr %struct.qt2160_data, ptr %1, i32 0, i32 5, i32 3, i32 1
  tail call void @led_classdev_unregister(ptr noundef %cdev.3.i) #7
  %cdev.4.i = getelementptr %struct.qt2160_data, ptr %1, i32 0, i32 5, i32 4, i32 1
  tail call void @led_classdev_unregister(ptr noundef %cdev.4.i) #7
  %cdev.5.i = getelementptr %struct.qt2160_data, ptr %1, i32 0, i32 5, i32 5, i32 1
  tail call void @led_classdev_unregister(ptr noundef %cdev.5.i) #7
  %cdev.6.i = getelementptr %struct.qt2160_data, ptr %1, i32 0, i32 5, i32 6, i32 1
  tail call void @led_classdev_unregister(ptr noundef %cdev.6.i) #7
  %cdev.7.i = getelementptr %struct.qt2160_data, ptr %1, i32 0, i32 5, i32 7, i32 1
  tail call void @led_classdev_unregister(ptr noundef %cdev.7.i) #7
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dwork = getelementptr inbounds %struct.qt2160_data, ptr %1, i32 0, i32 2
  %call3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %dwork) #7
  %input = getelementptr inbounds %struct.qt2160_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input, align 4
  tail call void @input_unregister_device(ptr noundef %5) #7
  tail call void @kfree(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qt2160_worker(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qt2160_worker.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qt2160_worker, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !127

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qt2160_worker.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.43) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @qt2160_get_key_matrix(ptr noundef %add.ptr)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %work, i32 noundef 200) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qt2160_irq(i32 noundef %irq, ptr noundef %_qt2160) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %dwork = getelementptr inbounds %struct.qt2160_data, ptr %_qt2160, i32 0, i32 2
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %dwork, i32 noundef 0) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qt2160_get_key_matrix(ptr nocapture noundef %qt2160) unnamed_addr #2 align 64 {
entry:
  %regs = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qt2160 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qt2160, align 4
  %input2 = getelementptr inbounds %struct.qt2160_data, ptr %qt2160, i32 0, i32 1
  %2 = ptrtoint ptr %input2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input2, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %regs) #7
  %4 = getelementptr inbounds [6 x i8], ptr %regs, i32 0, i32 1
  %5 = getelementptr inbounds [6 x i8], ptr %regs, i32 0, i32 2
  %6 = getelementptr inbounds [6 x i8], ptr %regs, i32 0, i32 3
  %7 = getelementptr inbounds [6 x i8], ptr %regs, i32 0, i32 4
  %8 = getelementptr inbounds [6 x i8], ptr %regs, i32 0, i32 5
  %9 = call ptr @memset(ptr %regs, i32 255, i32 6)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qt2160_get_key_matrix.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qt2160_get_key_matrix, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !127

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qt2160_get_key_matrix.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.45) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter.i, align 8
  %algo.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %algo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %algo.i.i.i, align 8
  %functionality.i.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %functionality.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %functionality.i.i.i, align 4
  %call.i.i.i = tail call i32 %15(ptr noundef %11) #7
  %and.i.i = and i32 %call.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  %call17.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %1, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool.not.i, label %while.body.preheader.i, label %if.then.i

while.body.preheader.i:                           ; preds = %do.end
  br i1 %tobool18.not.i, label %if.end24.i, label %while.body.preheader.i.do.end22.i_crit_edge

while.body.preheader.i.do.end22.i_crit_edge:      ; preds = %while.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end22.i

if.then.i:                                        ; preds = %do.end
  br i1 %tobool18.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.37, i32 noundef %call17.i) #10
  br label %do.end10

if.end.i:                                         ; preds = %if.then.i
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %regs, i32 noundef 6, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 6
  br i1 %cmp.not.i, label %if.end.i.if.end12_crit_edge, label %qt2160_read_block.exit

if.end.i.if.end12_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

do.end22.i:                                       ; preds = %cleanup.4.i.do.end22.i_crit_edge, %cleanup.3.i.do.end22.i_crit_edge, %cleanup.2.i.do.end22.i_crit_edge, %cleanup.1.i.do.end22.i_crit_edge, %cleanup.i.do.end22.i_crit_edge, %while.body.preheader.i.do.end22.i_crit_edge
  %call17.lcssa.i = phi i32 [ %call17.i, %while.body.preheader.i.do.end22.i_crit_edge ], [ %call17.1.i, %cleanup.i.do.end22.i_crit_edge ], [ %call17.2.i, %cleanup.1.i.do.end22.i_crit_edge ], [ %call17.3.i, %cleanup.2.i.do.end22.i_crit_edge ], [ %call17.4.i, %cleanup.3.i.do.end22.i_crit_edge ], [ %call17.5.i, %cleanup.4.i.do.end22.i_crit_edge ]
  %dev23.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23.i, ptr noundef nonnull @.str.37, i32 noundef %call17.lcssa.i) #10
  br label %do.end10

if.end24.i:                                       ; preds = %while.body.preheader.i
  %call25.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.i = icmp slt i32 %call25.i, 0
  br i1 %cmp26.i, label %if.end24.i.do.end31.i_crit_edge, label %cleanup.i

if.end24.i.do.end31.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31.i

do.end31.i:                                       ; preds = %if.end24.5.i.do.end31.i_crit_edge, %if.end24.4.i.do.end31.i_crit_edge, %if.end24.3.i.do.end31.i_crit_edge, %if.end24.2.i.do.end31.i_crit_edge, %if.end24.1.i.do.end31.i_crit_edge, %if.end24.i.do.end31.i_crit_edge
  %call25.lcssa.i = phi i32 [ %call25.i, %if.end24.i.do.end31.i_crit_edge ], [ %call25.1.i, %if.end24.1.i.do.end31.i_crit_edge ], [ %call25.2.i, %if.end24.2.i.do.end31.i_crit_edge ], [ %call25.3.i, %if.end24.3.i.do.end31.i_crit_edge ], [ %call25.4.i, %if.end24.4.i.do.end31.i_crit_edge ], [ %call25.5.i, %if.end24.5.i.do.end31.i_crit_edge ]
  %dev32.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32.i, ptr noundef nonnull @.str.40, i32 noundef %call25.lcssa.i) #10
  br label %do.end10

cleanup.i:                                        ; preds = %if.end24.i
  %conv34.i = trunc i32 %call25.i to i8
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv34.i, ptr %regs, align 1
  %call17.1.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %1, i8 noundef zeroext 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.1.i)
  %tobool18.not.1.i = icmp eq i32 %call17.1.i, 0
  br i1 %tobool18.not.1.i, label %if.end24.1.i, label %cleanup.i.do.end22.i_crit_edge

cleanup.i.do.end22.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end22.i

if.end24.1.i:                                     ; preds = %cleanup.i
  %call25.1.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.1.i)
  %cmp26.1.i = icmp slt i32 %call25.1.i, 0
  br i1 %cmp26.1.i, label %if.end24.1.i.do.end31.i_crit_edge, label %cleanup.1.i

if.end24.1.i.do.end31.i_crit_edge:                ; preds = %if.end24.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31.i

cleanup.1.i:                                      ; preds = %if.end24.1.i
  %conv34.1.i = trunc i32 %call25.1.i to i8
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv34.1.i, ptr %4, align 1
  %call17.2.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %1, i8 noundef zeroext 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.2.i)
  %tobool18.not.2.i = icmp eq i32 %call17.2.i, 0
  br i1 %tobool18.not.2.i, label %if.end24.2.i, label %cleanup.1.i.do.end22.i_crit_edge

cleanup.1.i.do.end22.i_crit_edge:                 ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end22.i

if.end24.2.i:                                     ; preds = %cleanup.1.i
  %call25.2.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.2.i)
  %cmp26.2.i = icmp slt i32 %call25.2.i, 0
  br i1 %cmp26.2.i, label %if.end24.2.i.do.end31.i_crit_edge, label %cleanup.2.i

if.end24.2.i.do.end31.i_crit_edge:                ; preds = %if.end24.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31.i

cleanup.2.i:                                      ; preds = %if.end24.2.i
  %conv34.2.i = trunc i32 %call25.2.i to i8
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv34.2.i, ptr %5, align 1
  %call17.3.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %1, i8 noundef zeroext 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.3.i)
  %tobool18.not.3.i = icmp eq i32 %call17.3.i, 0
  br i1 %tobool18.not.3.i, label %if.end24.3.i, label %cleanup.2.i.do.end22.i_crit_edge

cleanup.2.i.do.end22.i_crit_edge:                 ; preds = %cleanup.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end22.i

if.end24.3.i:                                     ; preds = %cleanup.2.i
  %call25.3.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.3.i)
  %cmp26.3.i = icmp slt i32 %call25.3.i, 0
  br i1 %cmp26.3.i, label %if.end24.3.i.do.end31.i_crit_edge, label %cleanup.3.i

if.end24.3.i.do.end31.i_crit_edge:                ; preds = %if.end24.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31.i

cleanup.3.i:                                      ; preds = %if.end24.3.i
  %conv34.3.i = trunc i32 %call25.3.i to i8
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv34.3.i, ptr %6, align 1
  %call17.4.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %1, i8 noundef zeroext 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.4.i)
  %tobool18.not.4.i = icmp eq i32 %call17.4.i, 0
  br i1 %tobool18.not.4.i, label %if.end24.4.i, label %cleanup.3.i.do.end22.i_crit_edge

cleanup.3.i.do.end22.i_crit_edge:                 ; preds = %cleanup.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end22.i

if.end24.4.i:                                     ; preds = %cleanup.3.i
  %call25.4.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.4.i)
  %cmp26.4.i = icmp slt i32 %call25.4.i, 0
  br i1 %cmp26.4.i, label %if.end24.4.i.do.end31.i_crit_edge, label %cleanup.4.i

if.end24.4.i.do.end31.i_crit_edge:                ; preds = %if.end24.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31.i

cleanup.4.i:                                      ; preds = %if.end24.4.i
  %conv34.4.i = trunc i32 %call25.4.i to i8
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv34.4.i, ptr %7, align 1
  %call17.5.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %1, i8 noundef zeroext 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.5.i)
  %tobool18.not.5.i = icmp eq i32 %call17.5.i, 0
  br i1 %tobool18.not.5.i, label %if.end24.5.i, label %cleanup.4.i.do.end22.i_crit_edge

cleanup.4.i.do.end22.i_crit_edge:                 ; preds = %cleanup.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end22.i

if.end24.5.i:                                     ; preds = %cleanup.4.i
  %call25.5.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.5.i)
  %cmp26.5.i = icmp slt i32 %call25.5.i, 0
  br i1 %cmp26.5.i, label %if.end24.5.i.do.end31.i_crit_edge, label %cleanup.5.i

if.end24.5.i.do.end31.i_crit_edge:                ; preds = %if.end24.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31.i

cleanup.5.i:                                      ; preds = %if.end24.5.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv34.5.i = trunc i32 %call25.5.i to i8
  %21 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv34.5.i, ptr %8, align 1
  br label %if.end12

qt2160_read_block.exit:                           ; preds = %if.end.i
  %dev11.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11.i, ptr noundef nonnull @.str.52, i32 noundef %call.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool6.not, label %qt2160_read_block.exit.if.end12_crit_edge, label %qt2160_read_block.exit.do.end10_crit_edge

qt2160_read_block.exit.do.end10_crit_edge:        ; preds = %qt2160_read_block.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

qt2160_read_block.exit.if.end12_crit_edge:        ; preds = %qt2160_read_block.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

do.end10:                                         ; preds = %qt2160_read_block.exit.do.end10_crit_edge, %do.end31.i, %do.end22.i, %do.end.i
  %dev11 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.46) #10
  br label %cleanup

if.end12:                                         ; preds = %qt2160_read_block.exit.if.end12_crit_edge, %cleanup.5.i, %if.end.i.if.end12_crit_edge
  %key_matrix = getelementptr inbounds %struct.qt2160_data, ptr %qt2160, i32 0, i32 4
  %22 = ptrtoint ptr %key_matrix to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %key_matrix, align 4
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %5, align 1
  %conv = zext i8 %25 to i16
  %shl = shl nuw i16 %conv, 8
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %4, align 1
  %conv14 = zext i8 %27 to i16
  %or = or i16 %shl, %conv14
  store i16 %or, ptr %key_matrix, align 4
  %conv18 = zext i16 %or to i32
  %conv19 = zext i16 %23 to i32
  %dev39 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end44.for.body_crit_edge, %if.end12
  %mask.014 = phi i32 [ 1, %if.end12 ], [ %shl45, %if.end44.for.body_crit_edge ]
  %i.012 = phi i32 [ 0, %if.end12 ], [ %inc, %if.end44.for.body_crit_edge ]
  %and = and i32 %mask.014, %conv18
  %and20 = and i32 %mask.014, %conv19
  call void @__sanitizer_cov_trace_cmp4(i32 %and20, i32 %and)
  %cmp21.not = icmp eq i32 %and20, %and
  br i1 %cmp21.not, label %for.body.if.end44_crit_edge, label %if.then23

for.body.if.end44_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then23:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx24 = getelementptr %struct.qt2160_data, ptr %qt2160, i32 0, i32 3, i32 %i.012
  %28 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx24, align 2
  %conv25 = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.i = icmp ne i32 %and, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %conv25, i32 noundef %lnot.ext.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qt2160_get_key_matrix.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qt2160_get_key_matrix, %if.then38)) #7
          to label %if.end44 [label %if.then38], !srcloc !127

if.then38:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool40.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool40.not, ptr @.str.49, ptr @.str.48
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qt2160_get_key_matrix.__UNIQUE_ID_ddebug289, ptr noundef %dev39, ptr noundef nonnull @.str.47, i32 noundef %i.012, ptr noundef nonnull %cond) #7
  br label %if.end44

if.end44:                                         ; preds = %if.then38, %if.then23, %for.body.if.end44_crit_edge
  %inc = add nuw nsw i32 %i.012, 1
  %shl45 = shl i32 %mask.014, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %if.end44.for.body_crit_edge

if.end44.for.body_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  call void @input_event(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %regs) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qt2160_led_set(ptr nocapture noundef %cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %brightness = getelementptr i8, ptr %cdev, i32 436
  %4 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %brightness, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %value)
  %cmp.not = icmp eq i32 %5, %value
  br i1 %cmp.not, label %entry.if.end25_crit_edge, label %if.then

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %3, i8 noundef zeroext 70) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.37, i32 noundef %call.i) #10
  br label %qt2160_read.exit

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.end5.i, label %if.end.i.qt2160_read.exit_crit_edge

if.end.i.qt2160_read.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qt2160_read.exit

do.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev6.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i, ptr noundef nonnull @.str.40, i32 noundef %call1.i) #10
  br label %qt2160_read.exit

qt2160_read.exit:                                 ; preds = %do.end5.i, %if.end.i.qt2160_read.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %call1.i, %do.end5.i ], [ %call1.i, %if.end.i.qt2160_read.exit_crit_edge ]
  %call.i48 = tail call i32 @i2c_smbus_write_byte(ptr noundef %3, i8 noundef zeroext 74) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %tobool.not.i49 = icmp eq i32 %call.i48, 0
  br i1 %tobool.not.i49, label %if.end.i54, label %do.end.i51

do.end.i51:                                       ; preds = %qt2160_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i50 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i50, ptr noundef nonnull @.str.37, i32 noundef %call.i48) #10
  br label %qt2160_read.exit58

if.end.i54:                                       ; preds = %qt2160_read.exit
  %call1.i52 = tail call i32 @i2c_smbus_read_byte(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i52)
  %cmp.i53 = icmp slt i32 %call1.i52, 0
  br i1 %cmp.i53, label %do.end5.i56, label %if.end.i54.qt2160_read.exit58_crit_edge

if.end.i54.qt2160_read.exit58_crit_edge:          ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #9
  br label %qt2160_read.exit58

do.end5.i56:                                      ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #9
  %dev6.i55 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i55, ptr noundef nonnull @.str.40, i32 noundef %call1.i52) #10
  br label %qt2160_read.exit58

qt2160_read.exit58:                               ; preds = %do.end5.i56, %if.end.i54.qt2160_read.exit58_crit_edge, %do.end.i51
  %retval.0.i57 = phi i32 [ %call.i48, %do.end.i51 ], [ %call1.i52, %do.end5.i56 ], [ %call1.i52, %if.end.i54.qt2160_read.exit58_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp4.not = icmp eq i32 %value, 0
  %id9 = getelementptr i8, ptr %cdev, i32 432
  %6 = ptrtoint ptr %id9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id9, align 4
  %shl10 = shl nuw i32 1, %7
  br i1 %cmp4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %qt2160_read.exit58
  %or = or i32 %shl10, %retval.0.i
  %or8 = or i32 %shl10, %retval.0.i57
  %conv.c44 = trunc i32 %or to i8
  %call.i59 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 70, i8 noundef zeroext %conv.c44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %cmp.i60 = icmp slt i32 %call.i59, 0
  br i1 %cmp.i60, label %do.end.i62, label %if.then5.qt2160_write.exit_crit_edge

if.then5.qt2160_write.exit_crit_edge:             ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %qt2160_write.exit

do.end.i62:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i61 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i61, ptr noundef nonnull @.str.58, i32 noundef %call.i59) #10
  br label %qt2160_write.exit

qt2160_write.exit:                                ; preds = %do.end.i62, %if.then5.qt2160_write.exit_crit_edge
  %conv16.c46 = trunc i32 %or8 to i8
  %call.i64 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 74, i8 noundef zeroext %conv16.c46) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %cmp.i65 = icmp slt i32 %call.i64, 0
  br i1 %cmp.i65, label %do.end.i67, label %qt2160_write.exit.qt2160_write.exit69_crit_edge

qt2160_write.exit.qt2160_write.exit69_crit_edge:  ; preds = %qt2160_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %qt2160_write.exit69

do.end.i67:                                       ; preds = %qt2160_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i66 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i66, ptr noundef nonnull @.str.58, i32 noundef %call.i64) #10
  br label %qt2160_write.exit69

qt2160_write.exit69:                              ; preds = %do.end.i67, %qt2160_write.exit.qt2160_write.exit69_crit_edge
  %conv21 = trunc i32 %value to i8
  %call.i70 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 76, i8 noundef zeroext %conv21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %cmp.i71 = icmp slt i32 %call.i70, 0
  br i1 %cmp.i71, label %qt2160_write.exit69.if.end23.sink.split_crit_edge, label %qt2160_write.exit69.if.end23_crit_edge

qt2160_write.exit69.if.end23_crit_edge:           ; preds = %qt2160_write.exit69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

qt2160_write.exit69.if.end23.sink.split_crit_edge: ; preds = %qt2160_write.exit69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.sink.split

if.else:                                          ; preds = %qt2160_read.exit58
  %neg = xor i32 %shl10, -1
  %and = and i32 %retval.0.i, %neg
  %and14 = and i32 %retval.0.i57, %neg
  %conv.c = trunc i32 %and to i8
  %call.i76 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 70, i8 noundef zeroext %conv.c) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %cmp.i77 = icmp slt i32 %call.i76, 0
  br i1 %cmp.i77, label %do.end.i79, label %if.else.qt2160_write.exit81_crit_edge

if.else.qt2160_write.exit81_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %qt2160_write.exit81

do.end.i79:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i78 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i78, ptr noundef nonnull @.str.58, i32 noundef %call.i76) #10
  br label %qt2160_write.exit81

qt2160_write.exit81:                              ; preds = %do.end.i79, %if.else.qt2160_write.exit81_crit_edge
  %conv16.c = trunc i32 %and14 to i8
  %call.i82 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 74, i8 noundef zeroext %conv16.c) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %cmp.i83 = icmp slt i32 %call.i82, 0
  br i1 %cmp.i83, label %qt2160_write.exit81.if.end23.sink.split_crit_edge, label %qt2160_write.exit81.if.end23_crit_edge

qt2160_write.exit81.if.end23_crit_edge:           ; preds = %qt2160_write.exit81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

qt2160_write.exit81.if.end23.sink.split_crit_edge: ; preds = %qt2160_write.exit81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.sink.split

if.end23.sink.split:                              ; preds = %qt2160_write.exit81.if.end23.sink.split_crit_edge, %qt2160_write.exit69.if.end23.sink.split_crit_edge
  %call.i82.sink = phi i32 [ %call.i70, %qt2160_write.exit69.if.end23.sink.split_crit_edge ], [ %call.i82, %qt2160_write.exit81.if.end23.sink.split_crit_edge ]
  %dev.i84 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i84, ptr noundef nonnull @.str.58, i32 noundef %call.i82.sink) #10
  br label %if.end23

if.end23:                                         ; preds = %if.end23.sink.split, %qt2160_write.exit81.if.end23_crit_edge, %qt2160_write.exit69.if.end23_crit_edge
  %8 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %value, ptr %brightness, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.end23, %entry.if.end25_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !106, !107, !109, !111, !112, !113, !114, !116}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @__initcall__kmod_qt2160__291_470_qt2160_driver_init6, !1, !"__initcall__kmod_qt2160__291_470_qt2160_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/qt2160.c", i32 470, i32 1}
!2 = !{ptr @__exitcall_qt2160_driver_exit, !1, !"__exitcall_qt2160_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author292, !4, !"__UNIQUE_ID_author292", i1 false, i1 false}
!4 = !{!"../drivers/input/keyboard/qt2160.c", i32 472, i32 1}
!5 = !{ptr @__UNIQUE_ID_description293, !6, !"__UNIQUE_ID_description293", i1 false, i1 false}
!6 = !{!"../drivers/input/keyboard/qt2160.c", i32 473, i32 1}
!7 = !{ptr @__UNIQUE_ID_file294, !8, !"__UNIQUE_ID_file294", i1 false, i1 false}
!8 = !{!"../drivers/input/keyboard/qt2160.c", i32 474, i32 1}
!9 = !{ptr @__UNIQUE_ID_license295, !8, !"__UNIQUE_ID_license295", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/keyboard/qt2160.c", i32 462, i32 11}
!12 = !{ptr @qt2160_driver, !13, !"qt2160_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/keyboard/qt2160.c", i32 460, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/keyboard/qt2160.c", i32 353, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @qt2160_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @qt2160_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/keyboard/qt2160.c", i32 365, i32 3}
!24 = !{ptr @qt2160_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @qt2160_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @qt2160_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/input/keyboard/qt2160.c", i32 372, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @qt2160_probe.__key.10, !27, !"__key", i1 false, i1 false}
!30 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/keyboard/qt2160.c", i32 374, i32 16}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/keyboard/qt2160.c", i32 392, i32 3}
!35 = !{ptr @qt2160_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @qt2160_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/keyboard/qt2160.c", i32 400, i32 4}
!39 = !{ptr @qt2160_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @qt2160_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/input/keyboard/qt2160.c", i32 408, i32 3}
!43 = !{ptr @qt2160_probe._entry.19, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @qt2160_probe._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/keyboard/qt2160.c", i32 414, i32 3}
!47 = !{ptr @qt2160_probe._entry.22, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @qt2160_probe._entry_ptr.24, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/input/keyboard/qt2160.c", i32 317, i32 3}
!51 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @qt2160_identify._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @qt2160_identify._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/keyboard/qt2160.c", i32 324, i32 3}
!56 = !{ptr @qt2160_identify._entry.27, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @qt2160_identify._entry_ptr.29, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/keyboard/qt2160.c", i32 331, i32 3}
!60 = !{ptr @qt2160_identify._entry.30, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @qt2160_identify._entry_ptr.32, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/keyboard/qt2160.c", i32 335, i32 2}
!64 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @qt2160_identify._entry.33, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @qt2160_identify._entry_ptr.36, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/input/keyboard/qt2160.c", i32 231, i32 3}
!69 = !{ptr @.str.38, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @qt2160_read._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @qt2160_read._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.40, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/input/keyboard/qt2160.c", i32 238, i32 3}
!74 = !{ptr @qt2160_read._entry.39, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @qt2160_read._entry_ptr.41, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/input/keyboard/qt2160.c", i32 217, i32 2}
!78 = !{ptr @.str.43, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @qt2160_worker.__UNIQUE_ID_ddebug290, !77, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!80 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/input/keyboard/qt2160.c", i32 166, i32 2}
!82 = !{ptr @.str.45, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @qt2160_get_key_matrix.__UNIQUE_ID_ddebug288, !81, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!84 = !{ptr @.str.46, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/input/keyboard/qt2160.c", i32 174, i32 3}
!86 = !{ptr @qt2160_get_key_matrix._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @qt2160_get_key_matrix._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/input/keyboard/qt2160.c", i32 188, i32 4}
!90 = !{ptr @qt2160_get_key_matrix.__UNIQUE_ID_ddebug289, !89, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!91 = !{ptr @.str.48, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.49, !89, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.50, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/input/keyboard/qt2160.c", i32 121, i32 4}
!95 = !{ptr @qt2160_read_block._entry, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @qt2160_read_block._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.52, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/input/keyboard/qt2160.c", i32 128, i32 4}
!99 = !{ptr @qt2160_read_block._entry.51, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @qt2160_read_block._entry_ptr.53, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @qt2160_read_block._entry.54, !102, !"_entry", i1 false, i1 false}
!102 = !{!"../drivers/input/keyboard/qt2160.c", i32 139, i32 5}
!103 = !{ptr @qt2160_read_block._entry_ptr.55, !102, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @qt2160_read_block._entry.56, !105, !"_entry", i1 false, i1 false}
!105 = !{!"../drivers/input/keyboard/qt2160.c", i32 146, i32 5}
!106 = !{ptr @qt2160_read_block._entry_ptr.57, !105, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @qt2160_key2code, !108, !"qt2160_key2code", i1 false, i1 false}
!108 = !{!"../drivers/input/keyboard/qt2160.c", i32 37, i32 22}
!109 = !{ptr @.str.58, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/input/keyboard/qt2160.c", i32 252, i32 3}
!111 = !{ptr @.str.59, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @qt2160_write._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @qt2160_write._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.60, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/input/keyboard/qt2160.c", i32 269, i32 42}
!116 = !{ptr @qt2160_idtable, !117, !"qt2160_idtable", i1 false, i1 false}
!117 = !{!"../drivers/input/keyboard/qt2160.c", i32 453, i32 35}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{i64 2148700357, i64 2148700362, i64 2148700375, i64 2148700419, i64 2148700453, i64 2148700474}
