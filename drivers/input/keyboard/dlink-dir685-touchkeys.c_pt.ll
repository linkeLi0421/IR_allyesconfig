; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/dlink-dir685-touchkeys.c_pt.bc'
source_filename = "../drivers/input/keyboard/dlink-dir685-touchkeys.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.dir685_touchkeys = type { ptr, ptr, ptr, i32, [7 x i16] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_dlink_dir685_touchkeys__292_152_dir685_tk_i2c_driver_init6 = internal global ptr @dir685_tk_i2c_driver_init, section ".initcall6.init", align 4
@dir685_tk_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @dir685_tk_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dir685_tk_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @dir685_tk_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_dir685_tk_i2c_driver_exit = internal global ptr @dir685_tk_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author293 = internal constant [71 x i8] c"dlink_dir685_touchkeys.author=Linus Walleij <linus.walleij@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [67 x i8] c"dlink_dir685_touchkeys.description=D-Link DIR-685 touchkeys driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [74 x i8] c"dlink_dir685_touchkeys.file=drivers/input/keyboard/dlink-dir685-touchkeys\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [35 x i8] c"dlink_dir685_touchkeys.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dlink-dir685-touchkeys\00", [41 x i8] zeroinitializer }, align 32
@dir685_tk_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlink,dir685-touchkeys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@dir685_tk_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"dir685tk\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"D-Link DIR-685 touchkeys\00", [39 x i8] zeroinitializer }, align 32
@dir685_tk_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 112, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error setting brightness level\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dir685_tk_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/input/keyboard/dlink-dir685-touchkeys.c\00", [48 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dir685_tk_probe._entry_ptr = internal global ptr @dir685_tk_probe._entry, section ".printk_index", align 4
@dir685_tk_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 115, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no IRQ on the I2C device\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@dir685_tk_probe._entry_ptr.10 = internal global ptr @dir685_tk_probe._entry.7, section ".printk_index", align 4
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dir685-tk\00", [22 x i8] zeroinitializer }, align 32
@dir685_tk_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 123, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"can't request IRQ\0A\00", [45 x i8] zeroinitializer }, align 32
@dir685_tk_probe._entry_ptr.14 = internal global ptr @dir685_tk_probe._entry.12, section ".printk_index", align 4
@dir685_tk_irq_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 40, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"short read %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dir685_tk_irq_thread\00", [43 x i8] zeroinitializer }, align 32
@dir685_tk_irq_thread._entry_ptr = internal global ptr @dir685_tk_irq_thread._entry, section ".printk_index", align 4
@dir685_tk_irq_thread.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.16, ptr @.str.4, ptr @.str.18, i8 0, i8 11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dlink_dir685_touchkeys\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IN: %*ph\0A\00", [22 x i8] zeroinitializer }, align 32
@dir685_tk_irq_thread.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.16, ptr @.str.4, ptr @.str.19, i8 0, i8 12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"key %d is %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"down\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"up\00", [29 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant [21 x i8] c"dir685_tk_i2c_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 144, i32 26 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 146, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [19 x i8] c"dir685_tk_of_match\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 137, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant [13 x i8] c"dir685_tk_id\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 130, i32 35 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 102, i32 20 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 112, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 115, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 121, i32 6 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 123, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 40, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 44, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private constant [51 x i8] c"../drivers/input/keyboard/dlink-dir685-touchkeys.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 50, i32 3 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_dir685_tk_i2c_driver_exit, ptr @__initcall__kmod_dlink_dir685_touchkeys__292_152_dir685_tk_i2c_driver_init6, ptr @dir685_tk_i2c_driver_exit, ptr @dir685_tk_irq_thread._entry, ptr @dir685_tk_irq_thread._entry_ptr, ptr @dir685_tk_probe._entry, ptr @dir685_tk_probe._entry.12, ptr @dir685_tk_probe._entry.7, ptr @dir685_tk_probe._entry_ptr, ptr @dir685_tk_probe._entry_ptr.10, ptr @dir685_tk_probe._entry_ptr.14, ptr @dir685_tk_i2c_driver, ptr @.str, ptr @dir685_tk_of_match, ptr @dir685_tk_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dir685_tk_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dir685_tk_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dir685_tk_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dir685_tk_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dir685_tk_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dir685_tk_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dir685_tk_irq_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dir685_tk_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @dir685_tk_i2c_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dir685_tk_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @dir685_tk_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dir685_tk_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %bl_data = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bl_data) #5
  %0 = ptrtoint ptr %bl_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -22720, ptr %bl_data, align 2
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 32, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @devm_input_allocate_device(ptr noundef %dev1) #5
  %input = getelementptr inbounds %struct.dir685_touchkeys, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %input, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %client8 = getelementptr inbounds %struct.dir685_touchkeys, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %client8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client, ptr %client8, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %call.i, align 4
  %keycodesize = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 16
  %4 = ptrtoint ptr %keycodesize to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %keycodesize, align 8
  %5 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %input, align 4
  %keycodemax = getelementptr inbounds %struct.input_dev, ptr %6, i32 0, i32 15
  %7 = ptrtoint ptr %keycodemax to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 7, ptr %keycodemax, align 4
  %codes = getelementptr %struct.dir685_touchkeys, ptr %call.i, i32 0, i32 4
  %8 = load ptr, ptr %input, align 4
  %keycode = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 17
  %9 = ptrtoint ptr %keycode to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %codes, ptr %keycode, align 4
  %10 = ptrtoint ptr %codes to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 103, ptr %codes, align 4
  %arrayidx15 = getelementptr %struct.dir685_touchkeys, ptr %call.i, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 108, ptr %arrayidx15, align 2
  %arrayidx17 = getelementptr %struct.dir685_touchkeys, ptr %call.i, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 105, ptr %arrayidx17, align 4
  %arrayidx19 = getelementptr %struct.dir685_touchkeys, ptr %call.i, i32 0, i32 4, i32 3
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 106, ptr %arrayidx19, align 2
  %arrayidx21 = getelementptr %struct.dir685_touchkeys, ptr %call.i, i32 0, i32 4, i32 4
  %14 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 28, ptr %arrayidx21, align 4
  %arrayidx23 = getelementptr %struct.dir685_touchkeys, ptr %call.i, i32 0, i32 4, i32 5
  %15 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 529, ptr %arrayidx23, align 2
  %arrayidx25 = getelementptr %struct.dir685_touchkeys, ptr %call.i, i32 0, i32 4, i32 6
  %16 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %arrayidx25, align 4
  %17 = load ptr, ptr %input, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %evbit, align 4
  %or.i = or i32 %19, 2
  store i32 %or.i, ptr %evbit, align 4
  %20 = load i16, ptr %codes, align 2
  %conv = zext i16 %20 to i32
  %21 = load ptr, ptr %input, align 4
  %keybit = getelementptr inbounds %struct.input_dev, ptr %21, i32 0, i32 6
  %rem.i = and i32 %conv, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv, 5
  %add.ptr.i = getelementptr i32, ptr %keybit, i32 %div2.i
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i, align 4
  %or.i107 = or i32 %shl.i, %23
  store i32 %or.i107, ptr %add.ptr.i, align 4
  %24 = load i16, ptr %arrayidx15, align 2
  %conv.1 = zext i16 %24 to i32
  %25 = load ptr, ptr %input, align 4
  %keybit.1 = getelementptr inbounds %struct.input_dev, ptr %25, i32 0, i32 6
  %rem.i.1 = and i32 %conv.1, 31
  %shl.i.1 = shl nuw i32 1, %rem.i.1
  %div2.i.1 = lshr i32 %conv.1, 5
  %add.ptr.i.1 = getelementptr i32, ptr %keybit.1, i32 %div2.i.1
  %26 = ptrtoint ptr %add.ptr.i.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i.1, align 4
  %or.i107.1 = or i32 %shl.i.1, %27
  store i32 %or.i107.1, ptr %add.ptr.i.1, align 4
  %28 = load i16, ptr %arrayidx17, align 2
  %conv.2 = zext i16 %28 to i32
  %29 = load ptr, ptr %input, align 4
  %keybit.2 = getelementptr inbounds %struct.input_dev, ptr %29, i32 0, i32 6
  %rem.i.2 = and i32 %conv.2, 31
  %shl.i.2 = shl nuw i32 1, %rem.i.2
  %div2.i.2 = lshr i32 %conv.2, 5
  %add.ptr.i.2 = getelementptr i32, ptr %keybit.2, i32 %div2.i.2
  %30 = ptrtoint ptr %add.ptr.i.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i.2, align 4
  %or.i107.2 = or i32 %shl.i.2, %31
  store i32 %or.i107.2, ptr %add.ptr.i.2, align 4
  %32 = load i16, ptr %arrayidx19, align 2
  %conv.3 = zext i16 %32 to i32
  %33 = load ptr, ptr %input, align 4
  %keybit.3 = getelementptr inbounds %struct.input_dev, ptr %33, i32 0, i32 6
  %rem.i.3 = and i32 %conv.3, 31
  %shl.i.3 = shl nuw i32 1, %rem.i.3
  %div2.i.3 = lshr i32 %conv.3, 5
  %add.ptr.i.3 = getelementptr i32, ptr %keybit.3, i32 %div2.i.3
  %34 = ptrtoint ptr %add.ptr.i.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr.i.3, align 4
  %or.i107.3 = or i32 %shl.i.3, %35
  store i32 %or.i107.3, ptr %add.ptr.i.3, align 4
  %36 = load i16, ptr %arrayidx21, align 2
  %conv.4 = zext i16 %36 to i32
  %37 = load ptr, ptr %input, align 4
  %keybit.4 = getelementptr inbounds %struct.input_dev, ptr %37, i32 0, i32 6
  %rem.i.4 = and i32 %conv.4, 31
  %shl.i.4 = shl nuw i32 1, %rem.i.4
  %div2.i.4 = lshr i32 %conv.4, 5
  %add.ptr.i.4 = getelementptr i32, ptr %keybit.4, i32 %div2.i.4
  %38 = ptrtoint ptr %add.ptr.i.4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i.4, align 4
  %or.i107.4 = or i32 %shl.i.4, %39
  store i32 %or.i107.4, ptr %add.ptr.i.4, align 4
  %40 = load i16, ptr %arrayidx23, align 2
  %conv.5 = zext i16 %40 to i32
  %41 = load ptr, ptr %input, align 4
  %keybit.5 = getelementptr inbounds %struct.input_dev, ptr %41, i32 0, i32 6
  %rem.i.5 = and i32 %conv.5, 31
  %shl.i.5 = shl nuw i32 1, %rem.i.5
  %div2.i.5 = lshr i32 %conv.5, 5
  %add.ptr.i.5 = getelementptr i32, ptr %keybit.5, i32 %div2.i.5
  %42 = ptrtoint ptr %add.ptr.i.5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr.i.5, align 4
  %or.i107.5 = or i32 %shl.i.5, %43
  store i32 %or.i107.5, ptr %add.ptr.i.5, align 4
  %44 = load i16, ptr %arrayidx25, align 2
  %conv.6 = zext i16 %44 to i32
  %45 = load ptr, ptr %input, align 4
  %keybit.6 = getelementptr inbounds %struct.input_dev, ptr %45, i32 0, i32 6
  %rem.i.6 = and i32 %conv.6, 31
  %shl.i.6 = shl nuw i32 1, %rem.i.6
  %div2.i.6 = lshr i32 %conv.6, 5
  %add.ptr.i.6 = getelementptr i32, ptr %keybit.6, i32 %div2.i.6
  %46 = ptrtoint ptr %add.ptr.i.6 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr.i.6, align 4
  %or.i107.6 = or i32 %shl.i.6, %47
  store i32 %or.i107.6, ptr %add.ptr.i.6, align 4
  %48 = load ptr, ptr %input, align 4
  %keybit33 = getelementptr inbounds %struct.input_dev, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %keybit33 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %keybit33, align 4
  %and.i = and i32 %50, -2
  store i32 %and.i, ptr %keybit33, align 4
  %51 = load ptr, ptr %input, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.1, ptr %51, align 8
  %53 = load ptr, ptr %input, align 4
  %id37 = getelementptr inbounds %struct.input_dev, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %id37 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 24, ptr %id37, align 4
  %55 = load ptr, ptr %input, align 4
  %call39 = tail call i32 @input_register_device(ptr noundef %55) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end42:                                         ; preds = %if.end7
  %call.i108 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %bl_data, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108)
  %cmp45.not = icmp eq i32 %call.i108, 2
  br i1 %cmp45.not, label %if.end42.if.end49_crit_edge, label %do.end

if.end42.if.end49_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

do.end:                                           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %57, ptr noundef nonnull @.str.2) #8
  br label %if.end49

if.end49:                                         ; preds = %do.end, %if.end42.if.end49_crit_edge
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %58 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool50.not = icmp eq i32 %59, 0
  br i1 %tobool50.not, label %if.end49.cleanup.sink.split_crit_edge, label %if.end55

if.end49.cleanup.sink.split_crit_edge:            ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end55:                                         ; preds = %if.end49
  %call57 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %59, ptr noundef null, ptr noundef nonnull @dir685_tk_irq_thread, i32 noundef 8192, ptr noundef nonnull @.str.11, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end55.cleanup_crit_edge, label %if.end55.cleanup.sink.split_crit_edge

if.end55.cleanup.sink.split_crit_edge:            ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end55.cleanup.sink.split_crit_edge, %if.end49.cleanup.sink.split_crit_edge
  %.str.13.sink = phi ptr [ @.str.8, %if.end49.cleanup.sink.split_crit_edge ], [ @.str.13, %if.end55.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -19, %if.end49.cleanup.sink.split_crit_edge ], [ %call57, %if.end55.cleanup.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.13.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end55.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call39, %if.end7.cleanup_crit_edge ], [ 0, %if.end55.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bl_data) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dir685_tk_irq_thread(i32 noundef %irq, ptr nocapture noundef %data) #2 align 64 {
entry:
  %changed = alloca i32, align 4
  %buf = alloca [6 x i8], align 1
  %key = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %changed) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf) #5
  %0 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key)
  %1 = call ptr @memset(ptr %buf, i32 0, i32 6)
  %client = getelementptr inbounds %struct.dir685_touchkeys, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf, i32 noundef 6, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 6
  br i1 %cmp.not, label %do.body2, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.15, i32 noundef %call.i) #8
  br label %cleanup

do.body2:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dir685_tk_irq_thread.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dir685_tk_irq_thread, %if.then6)) #5
          to label %do.end11 [label %if.then6], !srcloc !62

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dir685_tk_irq_thread.__UNIQUE_ID_ddebug290, ptr noundef %7, ptr noundef nonnull @.str.18, i32 noundef 6, ptr noundef nonnull %buf) #5
  br label %do.end11

do.end11:                                         ; preds = %if.then6, %do.body2
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %0, align 2
  %conv = zext i16 %9 to i32
  %10 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %key, align 4
  %cur_key = getelementptr inbounds %struct.dir685_touchkeys, ptr %data, i32 0, i32 3
  %11 = ptrtoint ptr %cur_key to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cur_key, align 4
  %xor = xor i32 %12, %conv
  %13 = ptrtoint ptr %changed to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %xor, ptr %changed, align 4
  %call13 = call i32 @_find_next_bit_be(ptr noundef nonnull %changed, i32 noundef 7, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call13)
  %cmp1471 = icmp slt i32 %call13, 7
  br i1 %cmp1471, label %do.body16.lr.ph, label %do.end11.for.end_crit_edge

do.end11.for.end_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

do.body16.lr.ph:                                  ; preds = %do.end11
  %input = getelementptr inbounds %struct.dir685_touchkeys, ptr %data, i32 0, i32 2
  br label %do.body16

do.body16:                                        ; preds = %do.end34.do.body16_crit_edge, %do.body16.lr.ph
  %i.072 = phi i32 [ %call13, %do.body16.lr.ph ], [ %call38, %do.end34.do.body16_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dir685_tk_irq_thread.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dir685_tk_irq_thread, %if.then28)) #5
          to label %do.end34 [label %if.then28], !srcloc !62

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %16 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %16)
  %key.0. = load volatile i32, ptr %key, align 4
  %and.i = and i32 %i.072, 31
  %17 = shl nuw i32 1, %and.i
  %18 = and i32 %key.0., %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool31.not = icmp eq i32 %18, 0
  %cond = select i1 %tobool31.not, ptr @.str.21, ptr @.str.20
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dir685_tk_irq_thread.__UNIQUE_ID_ddebug291, ptr noundef %15, ptr noundef nonnull @.str.19, i32 noundef %i.072, ptr noundef nonnull %cond) #5
  br label %do.end34

do.end34:                                         ; preds = %if.then28, %do.body16
  %19 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %input, align 4
  %arrayidx35 = getelementptr %struct.dir685_touchkeys, ptr %data, i32 0, i32 4, i32 %i.072
  %21 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx35, align 2
  %conv36 = zext i16 %22 to i32
  %23 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %23)
  %key.0.73 = load volatile i32, ptr %key, align 4
  %and.i66 = and i32 %i.072, 31
  %24 = lshr i32 %key.0.73, %and.i66
  %25 = and i32 %24, 1
  call void @input_event(ptr noundef %20, i32 noundef 1, i32 noundef %conv36, i32 noundef %25) #5
  %add = add nsw i32 %i.072, 1
  %call38 = call i32 @_find_next_bit_be(ptr noundef nonnull %changed, i32 noundef 7, i32 noundef %add) #5
  %cmp14 = icmp slt i32 %call38, 7
  br i1 %cmp14, label %do.end34.do.body16_crit_edge, label %do.end34.for.end_crit_edge

do.end34.for.end_crit_edge:                       ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

do.end34.do.body16_crit_edge:                     ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body16

for.end:                                          ; preds = %do.end34.for.end_crit_edge, %do.end11.for.end_crit_edge
  %26 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %26)
  %key.0.74 = load i32, ptr %key, align 4
  %27 = ptrtoint ptr %cur_key to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %key.0.74, ptr %cur_key, align 4
  %input40 = getelementptr inbounds %struct.dir685_touchkeys, ptr %data, i32 0, i32 2
  %28 = ptrtoint ptr %input40 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %input40, align 4
  call void @input_event(ptr noundef %29, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key)
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %changed) #5
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__initcall__kmod_dlink_dir685_touchkeys__292_152_dir685_tk_i2c_driver_init6, !1, !"__initcall__kmod_dlink_dir685_touchkeys__292_152_dir685_tk_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/dlink-dir685-touchkeys.c", i32 152, i32 1}
!2 = !{ptr @__exitcall_dir685_tk_i2c_driver_exit, !1, !"__exitcall_dir685_tk_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author293, !4, !"__UNIQUE_ID_author293", i1 false, i1 false}
!4 = !{!"../drivers/input/keyboard/dlink-dir685-touchkeys.c", i32 154, i32 1}
!5 = !{ptr @__UNIQUE_ID_description294, !6, !"__UNIQUE_ID_description294", i1 false, i1 false}
!6 = !{!"../drivers/input/keyboard/dlink-dir685-touchkeys.c", i32 155, i32 1}
!7 = !{ptr @__UNIQUE_ID_file295, !8, !"__UNIQUE_ID_file295", i1 false, i1 false}
!8 = !{!"../drivers/input/keyboard/dlink-dir685-touchkeys.c", i32 156, i32 1}
!9 = !{ptr @__UNIQUE_ID_license296, !8, !"__UNIQUE_ID_license296", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/keyboard/dlink-dir685-touchkeys.c", i32 146, i32 11}
!12 = !{ptr @dir685_tk_i2c_driver, !13, !"dir685_tk_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/keyboard/dlink-dir685-touchkeys.c", i32 144, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/keyboard/dlink-dir685-touchkeys.c", i32 102, i32 20}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/keyboard/dlink-dir685-touchkeys.c", i32 112, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @dir685_tk_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @dir685_tk_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/keyboard/dlink-dir685-touchkeys.c", i32 115, i32 3}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @dir685_tk_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @dir685_tk_probe._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/keyboard/dlink-dir685-touchkeys.c", i32 121, i32 6}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/keyboard/dlink-dir685-touchkeys.c", i32 123, i32 3}
!33 = !{ptr @dir685_tk_probe._entry.12, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @dir685_tk_probe._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/keyboard/dlink-dir685-touchkeys.c", i32 40, i32 3}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @dir685_tk_irq_thread._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @dir685_tk_irq_thread._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/keyboard/dlink-dir685-touchkeys.c", i32 44, i32 2}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @dir685_tk_irq_thread.__UNIQUE_ID_ddebug290, !41, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/keyboard/dlink-dir685-touchkeys.c", i32 50, i32 3}
!46 = !{ptr @dir685_tk_irq_thread.__UNIQUE_ID_ddebug291, !45, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!47 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @dir685_tk_of_match, !50, !"dir685_tk_of_match", i1 false, i1 false}
!50 = !{!"../drivers/input/keyboard/dlink-dir685-touchkeys.c", i32 137, i32 34}
!51 = !{ptr @dir685_tk_id, !52, !"dir685_tk_id", i1 false, i1 false}
!52 = !{!"../drivers/input/keyboard/dlink-dir685-touchkeys.c", i32 130, i32 35}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{i64 2148955456, i64 2148955461, i64 2148955474, i64 2148955518, i64 2148955552, i64 2148955573}
