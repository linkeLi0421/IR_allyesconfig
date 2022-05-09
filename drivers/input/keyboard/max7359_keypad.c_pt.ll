; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/max7359_keypad.c_pt.bc'
source_filename = "../drivers/input/keyboard/max7359_keypad.c"
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
%struct.max7359_keypad = type { [64 x i16], ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_max7359_keypad__290_290_max7359_i2c_driver_init6 = internal global ptr @max7359_i2c_driver_init, section ".initcall6.init", align 4
@max7359_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @max7359_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max7359_pm, ptr null, ptr null }, ptr @max7359_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max7359_i2c_driver_exit = internal global ptr @max7359_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [54 x i8] c"max7359_keypad.author=Kim Kyuwon <q1.kim@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [64 x i8] c"max7359_keypad.description=MAX7359 Key Switch Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [58 x i8] c"max7359_keypad.file=drivers/input/keyboard/max7359_keypad\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [30 x i8] c"max7359_keypad.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max7359\00", [24 x i8] zeroinitializer }, align 32
@max7359_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @max7359_suspend, ptr @max7359_resume, ptr @max7359_suspend, ptr @max7359_resume, ptr @max7359_suspend, ptr @max7359_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@max7359_ids = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max7359\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@max7359_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 169, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"The irq number should not be zero\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max7359_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/input/keyboard/max7359_keypad.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max7359_probe._entry_ptr = internal global ptr @max7359_probe._entry, section ".printk_index", align 4
@max7359_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 176, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to detect device\0A\00", [39 x i8] zeroinitializer }, align 32
@max7359_probe._entry_ptr.8 = internal global ptr @max7359_probe._entry.6, section ".printk_index", align 4
@max7359_probe.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.2, ptr @.str.3, ptr @.str.10, i8 0, i8 45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max7359_keypad\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"keys FIFO is 0x%02x\0A\00", [43 x i8] zeroinitializer }, align 32
@max7359_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 185, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to allocate memory\0A\00", [37 x i8] zeroinitializer }, align 32
@max7359_probe._entry_ptr.13 = internal global ptr @max7359_probe._entry.11, section ".printk_index", align 4
@max7359_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 191, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate input device\0A\00", [63 x i8] zeroinitializer }, align 32
@max7359_probe._entry_ptr.16 = internal global ptr @max7359_probe._entry.14, section ".printk_index", align 4
@max7359_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 218, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to build keymap\0A\00", [40 x i8] zeroinitializer }, align 32
@max7359_probe._entry_ptr.19 = internal global ptr @max7359_probe._entry.17, section ".printk_index", align 4
@max7359_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 227, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to register interrupt\0A\00", [34 x i8] zeroinitializer }, align 32
@max7359_probe._entry_ptr.22 = internal global ptr @max7359_probe._entry.20, section ".printk_index", align 4
@max7359_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 234, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register input device\0A\00", [63 x i8] zeroinitializer }, align 32
@max7359_probe._entry_ptr.25 = internal global ptr @max7359_probe._entry.23, section ".printk_index", align 4
@max7359_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 80, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: reg 0x%x, err %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max7359_read_reg\00", [47 x i8] zeroinitializer }, align 32
@max7359_read_reg._entry_ptr = internal global ptr @max7359_read_reg._entry, section ".printk_index", align 4
@max7359_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 70, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: reg 0x%x, val 0x%x, err %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max7359_write_reg\00", [46 x i8] zeroinitializer }, align 32
@max7359_write_reg._entry_ptr = internal global ptr @max7359_write_reg._entry, section ".printk_index", align 4
@max7359_interrupt.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.30, ptr @.str.3, ptr @.str.31, i8 0, i8 24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max7359_interrupt\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"key[%d:%d] %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"release\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"press\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.34 = private unnamed_addr constant [19 x i8] c"max7359_i2c_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 281, i32 26 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 283, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [11 x i8] c"max7359_pm\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 273, i32 8 }
@___asan_gen_.43 = private unnamed_addr constant [12 x i8] c"max7359_ids\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 275, i32 35 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 169, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 176, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 180, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 185, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 191, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 218, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 227, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 234, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 79, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 69, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.134 = private constant [43 x i8] c"../drivers/input/keyboard/max7359_keypad.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 98, i32 2 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_max7359_i2c_driver_exit, ptr @__initcall__kmod_max7359_keypad__290_290_max7359_i2c_driver_init6, ptr @max7359_i2c_driver_exit, ptr @max7359_probe._entry, ptr @max7359_probe._entry.11, ptr @max7359_probe._entry.14, ptr @max7359_probe._entry.17, ptr @max7359_probe._entry.20, ptr @max7359_probe._entry.23, ptr @max7359_probe._entry.6, ptr @max7359_probe._entry_ptr, ptr @max7359_probe._entry_ptr.13, ptr @max7359_probe._entry_ptr.16, ptr @max7359_probe._entry_ptr.19, ptr @max7359_probe._entry_ptr.22, ptr @max7359_probe._entry_ptr.25, ptr @max7359_probe._entry_ptr.8, ptr @max7359_read_reg._entry, ptr @max7359_read_reg._entry_ptr, ptr @max7359_write_reg._entry, ptr @max7359_write_reg._entry_ptr, ptr @max7359_i2c_driver, ptr @.str, ptr @max7359_pm, ptr @max7359_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max7359_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max7359_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max7359_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max7359_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max7359_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max7359_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max7359_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max7359_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max7359_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max7359_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max7359_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max7359_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max7359_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max7359_i2c_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max7359_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @i2c_del_driver(ptr noundef nonnull @max7359_i2c_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max7359_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end6, label %do.body9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 0, i32 noundef %call.i) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #7
  br label %cleanup

do.body9:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max7359_probe.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max7359_probe, %if.then14)) #4
          to label %do.end18 [label %if.then14], !srcloc !79

if.then14:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max7359_probe.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call.i) #4
  br label %do.end18

do.end18:                                         ; preds = %if.then14, %do.body9
  %call.i126 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 136, i32 noundef 3520) #4
  %tobool21.not = icmp eq ptr %call.i126, null
  br i1 %tobool21.not, label %do.end25, label %if.end27

do.end25:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #7
  br label %cleanup

if.end27:                                         ; preds = %do.end18
  %call29 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #4
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %do.end34, label %if.end36

do.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #7
  br label %cleanup

if.end36:                                         ; preds = %if.end27
  %client37 = getelementptr inbounds %struct.max7359_keypad, ptr %call.i126, i32 0, i32 2
  %4 = ptrtoint ptr %client37 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %client, ptr %client37, align 4
  %input_dev38 = getelementptr inbounds %struct.max7359_keypad, ptr %call.i126, i32 0, i32 1
  %5 = ptrtoint ptr %input_dev38 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call29, ptr %input_dev38, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %6 = ptrtoint ptr %call29 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %name, ptr %call29, align 8
  %id40 = getelementptr inbounds %struct.input_dev, ptr %call29, i32 0, i32 3
  %7 = ptrtoint ptr %id40 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 24, ptr %id40, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call29, i32 0, i32 31
  %8 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @max7359_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call29, i32 0, i32 32
  %9 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @max7359_close, ptr %close, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %call29, i32 0, i32 40, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %parent, align 8
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call29, i32 0, i32 5
  %11 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1048578, ptr %evbit, align 8
  %keycodesize = getelementptr inbounds %struct.input_dev, ptr %call29, i32 0, i32 16
  %12 = ptrtoint ptr %keycodesize to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %keycodesize, align 8
  %keycodemax = getelementptr inbounds %struct.input_dev, ptr %call29, i32 0, i32 15
  %13 = ptrtoint ptr %keycodemax to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 64, ptr %keycodemax, align 4
  %keycode = getelementptr inbounds %struct.input_dev, ptr %call29, i32 0, i32 17
  %14 = ptrtoint ptr %keycode to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i126, ptr %keycode, align 4
  tail call void @input_set_capability(ptr noundef nonnull %call29, i32 noundef 4, i32 noundef 4) #4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call29, i32 0, i32 40, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i126, ptr %driver_data.i.i, align 4
  %call46 = tail call i32 @matrix_keypad_build_keymap(ptr noundef %1, ptr noundef null, i32 noundef 8, i32 noundef 8, ptr noundef nonnull %call.i126, ptr noundef nonnull %call29) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end53, label %do.end51

do.end51:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #7
  br label %cleanup

if.end53:                                         ; preds = %if.end36
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  %call58 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %17, ptr noundef null, ptr noundef nonnull @max7359_interrupt, i32 noundef 8200, ptr noundef %name, ptr noundef nonnull %call.i126) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end65, label %do.end63

do.end63:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #7
  br label %cleanup

if.end65:                                         ; preds = %if.end53
  %call66 = tail call i32 @input_register_device(ptr noundef nonnull %call29) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end73, label %do.end71

do.end71:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #7
  br label %cleanup

if.end73:                                         ; preds = %if.end65
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 1, i8 noundef zeroext 10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end73.max7359_write_reg.exit.i_crit_edge

if.end73.max7359_write_reg.exit.i_crit_edge:      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #6
  br label %max7359_write_reg.exit.i

do.end.i.i:                                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 1, i32 noundef 10, i32 noundef %call.i.i) #7
  br label %max7359_write_reg.exit.i

max7359_write_reg.exit.i:                         ; preds = %do.end.i.i, %if.end73.max7359_write_reg.exit.i_crit_edge
  %call.i6.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 2, i8 noundef zeroext 31) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i)
  %cmp.i7.i = icmp slt i32 %call.i6.i, 0
  br i1 %cmp.i7.i, label %do.end.i9.i, label %max7359_write_reg.exit.i.max7359_write_reg.exit10.i_crit_edge

max7359_write_reg.exit.i.max7359_write_reg.exit10.i_crit_edge: ; preds = %max7359_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %max7359_write_reg.exit10.i

do.end.i9.i:                                      ; preds = %max7359_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 2, i32 noundef 31, i32 noundef %call.i6.i) #7
  br label %max7359_write_reg.exit10.i

max7359_write_reg.exit10.i:                       ; preds = %do.end.i9.i, %max7359_write_reg.exit.i.max7359_write_reg.exit10.i_crit_edge
  %call.i11.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 3, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i)
  %cmp.i12.i = icmp slt i32 %call.i11.i, 0
  br i1 %cmp.i12.i, label %do.end.i14.i, label %max7359_write_reg.exit10.i.max7359_write_reg.exit15.i_crit_edge

max7359_write_reg.exit10.i.max7359_write_reg.exit15.i_crit_edge: ; preds = %max7359_write_reg.exit10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %max7359_write_reg.exit15.i

do.end.i14.i:                                     ; preds = %max7359_write_reg.exit10.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 3, i32 noundef 1, i32 noundef %call.i11.i) #7
  br label %max7359_write_reg.exit15.i

max7359_write_reg.exit15.i:                       ; preds = %do.end.i14.i, %max7359_write_reg.exit10.i.max7359_write_reg.exit15.i_crit_edge
  %call.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 6, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %max7359_write_reg.exit15.i.max7359_initialize.exit_crit_edge

max7359_write_reg.exit15.i.max7359_initialize.exit_crit_edge: ; preds = %max7359_write_reg.exit15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %max7359_initialize.exit

do.end.i.i.i:                                     ; preds = %max7359_write_reg.exit15.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 6, i32 noundef 1, i32 noundef %call.i.i.i) #7
  br label %max7359_initialize.exit

max7359_initialize.exit:                          ; preds = %do.end.i.i.i, %max7359_write_reg.exit15.i.max7359_initialize.exit_crit_edge
  %call75 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #4
  br label %cleanup

cleanup:                                          ; preds = %max7359_initialize.exit, %do.end71, %do.end63, %do.end51, %do.end34, %do.end25, %do.end6, %do.end
  %retval.0 = phi i32 [ -19, %do.end6 ], [ %call46, %do.end51 ], [ %call58, %do.end63 ], [ %call66, %do.end71 ], [ 0, %max7359_initialize.exit ], [ -12, %do.end34 ], [ -12, %do.end25 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max7359_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %client = getelementptr inbounds %struct.max7359_keypad, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 6, i8 noundef zeroext 6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %entry.max7359_take_catnap.exit_crit_edge

entry.max7359_take_catnap.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %max7359_take_catnap.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 6, i32 noundef 6, i32 noundef %call.i.i) #7
  br label %max7359_take_catnap.exit

max7359_take_catnap.exit:                         ; preds = %do.end.i.i, %entry.max7359_take_catnap.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max7359_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %client = getelementptr inbounds %struct.max7359_keypad, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 6, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %entry.max7359_fall_deepsleep.exit_crit_edge

entry.max7359_fall_deepsleep.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %max7359_fall_deepsleep.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 6, i32 noundef 1, i32 noundef %call.i.i) #7
  br label %max7359_fall_deepsleep.exit

max7359_fall_deepsleep.exit:                      ; preds = %do.end.i.i, %entry.max7359_fall_deepsleep.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matrix_keypad_build_keymap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max7359_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %input_dev1 = getelementptr inbounds %struct.max7359_keypad, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %input_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input_dev1, align 4
  %client = getelementptr inbounds %struct.max7359_keypad, ptr %dev_id, i32 0, i32 2
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.max7359_read_reg.exit_crit_edge

entry.max7359_read_reg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %max7359_read_reg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 0, i32 noundef %call.i) #7
  br label %max7359_read_reg.exit

max7359_read_reg.exit:                            ; preds = %do.end.i, %entry.max7359_read_reg.exit_crit_edge
  %and = and i32 %call.i, 7
  %4 = lshr i32 %call.i, 3
  %and2 = and i32 %4, 7
  %and3 = and i32 %call.i, 64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max7359_interrupt.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max7359_interrupt, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !79

if.then:                                          ; preds = %max7359_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool8.not = icmp eq i32 %and3, 0
  %cond = select i1 %tobool8.not, ptr @.str.33, ptr @.str.32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max7359_interrupt.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %and, i32 noundef %and2, ptr noundef nonnull %cond) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %max7359_read_reg.exit
  %shl = shl nuw nsw i32 %and, 3
  %add = or i32 %shl, %and2
  tail call void @input_event(ptr noundef %1, i32 noundef 4, i32 noundef 4, i32 noundef %add) #4
  %arrayidx = getelementptr [64 x i16], ptr %dev_id, i32 0, i32 %add
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %8 to i32
  %and3.lobit = lshr exact i32 %and3, 6
  %9 = xor i32 %and3.lobit, 1
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %conv, i32 noundef %9) #4
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max7359_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 6, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %entry.max7359_fall_deepsleep.exit_crit_edge

entry.max7359_fall_deepsleep.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %max7359_fall_deepsleep.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 6, i32 noundef 1, i32 noundef %call.i.i) #7
  br label %max7359_fall_deepsleep.exit

max7359_fall_deepsleep.exit:                      ; preds = %do.end.i.i, %entry.max7359_fall_deepsleep.exit_crit_edge
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %max7359_fall_deepsleep.exit.if.end_crit_edge, label %device_may_wakeup.exit

max7359_fall_deepsleep.exit.if.end_crit_edge:     ; preds = %max7359_fall_deepsleep.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

device_may_wakeup.exit:                           ; preds = %max7359_fall_deepsleep.exit
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %1 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %2, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #6
  %irq = getelementptr i8, ptr %dev, i32 932
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %4, i32 noundef 1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %max7359_fall_deepsleep.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max7359_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %1 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %2, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #6
  %irq = getelementptr i8, ptr %dev, i32 932
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %4, i32 noundef 0) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 6, i8 noundef zeroext 6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.max7359_take_catnap.exit_crit_edge

if.end.max7359_take_catnap.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %max7359_take_catnap.exit

do.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 6, i32 noundef 6, i32 noundef %call.i.i) #7
  br label %max7359_take_catnap.exit

max7359_take_catnap.exit:                         ; preds = %do.end.i.i, %if.end.max7359_take_catnap.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !66, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__initcall__kmod_max7359_keypad__290_290_max7359_i2c_driver_init6, !1, !"__initcall__kmod_max7359_keypad__290_290_max7359_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/max7359_keypad.c", i32 290, i32 1}
!2 = !{ptr @__exitcall_max7359_i2c_driver_exit, !1, !"__exitcall_max7359_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/input/keyboard/max7359_keypad.c", i32 292, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/input/keyboard/max7359_keypad.c", i32 293, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/input/keyboard/max7359_keypad.c", i32 294, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/keyboard/max7359_keypad.c", i32 283, i32 11}
!12 = !{ptr @max7359_i2c_driver, !13, !"max7359_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/keyboard/max7359_keypad.c", i32 281, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/keyboard/max7359_keypad.c", i32 169, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @max7359_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @max7359_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/keyboard/max7359_keypad.c", i32 176, i32 3}
!24 = !{ptr @max7359_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @max7359_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/keyboard/max7359_keypad.c", i32 180, i32 2}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @max7359_probe.__UNIQUE_ID_ddebug289, !27, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/keyboard/max7359_keypad.c", i32 185, i32 3}
!32 = !{ptr @max7359_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @max7359_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/keyboard/max7359_keypad.c", i32 191, i32 3}
!36 = !{ptr @max7359_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @max7359_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/keyboard/max7359_keypad.c", i32 218, i32 3}
!40 = !{ptr @max7359_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @max7359_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/keyboard/max7359_keypad.c", i32 227, i32 3}
!44 = !{ptr @max7359_probe._entry.20, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @max7359_probe._entry_ptr.22, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/keyboard/max7359_keypad.c", i32 234, i32 3}
!48 = !{ptr @max7359_probe._entry.23, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @max7359_probe._entry_ptr.25, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/keyboard/max7359_keypad.c", i32 79, i32 3}
!52 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @max7359_read_reg._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @max7359_read_reg._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/keyboard/max7359_keypad.c", i32 69, i32 3}
!57 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @max7359_write_reg._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @max7359_write_reg._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/keyboard/max7359_keypad.c", i32 98, i32 2}
!62 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @max7359_interrupt.__UNIQUE_ID_ddebug288, !61, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!64 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @max7359_pm, !67, !"max7359_pm", i1 false, i1 false}
!67 = !{!"../drivers/input/keyboard/max7359_keypad.c", i32 273, i32 8}
!68 = !{ptr @max7359_ids, !69, !"max7359_ids", i1 false, i1 false}
!69 = !{!"../drivers/input/keyboard/max7359_keypad.c", i32 275, i32 35}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i64 2148958802, i64 2148958807, i64 2148958820, i64 2148958864, i64 2148958898, i64 2148958919}
