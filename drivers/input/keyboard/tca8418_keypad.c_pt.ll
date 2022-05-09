; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/tca8418_keypad.c_pt.bc'
source_filename = "../drivers/input/keyboard/tca8418_keypad.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tca8418_keypad = type { ptr, ptr, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_tca8418_keypad__288_382_tca8418_keypad_init4 = internal global ptr @tca8418_keypad_init, section ".initcall4.init", align 4
@tca8418_keypad_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tca8418_keypad_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tca8418_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tca8418_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tca8418_keypad_exit = internal global ptr @tca8418_keypad_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [56 x i8] c"tca8418_keypad.author=Kyle Manna <kyle.manna@fuel7.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [53 x i8] c"tca8418_keypad.description=Keypad driver for TCA8418\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [58 x i8] c"tca8418_keypad.file=drivers/input/keyboard/tca8418_keypad\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [27 x i8] c"tca8418_keypad.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tca8418_keypad\00", [17 x i8] zeroinitializer }, align 32
@tca8418_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tca8418\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tca8418_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tca8418\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8418 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tca8418_keypad_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 275, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s adapter not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tca8418_keypad_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/input/keyboard/tca8418_keypad.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tca8418_keypad_probe._entry_ptr = internal global ptr @tca8418_keypad_probe._entry, section ".printk_index", align 4
@tca8418_keypad_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 284, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"invalid rows\0A\00", [18 x i8] zeroinitializer }, align 32
@tca8418_keypad_probe._entry_ptr.8 = internal global ptr @tca8418_keypad_probe._entry.6, section ".printk_index", align 4
@tca8418_keypad_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 289, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"invalid columns\0A\00", [47 x i8] zeroinitializer }, align 32
@tca8418_keypad_probe._entry_ptr.11 = internal global ptr @tca8418_keypad_probe._entry.9, section ".printk_index", align 4
@tca8418_keypad_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 323, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to build keymap\0A\00", [40 x i8] zeroinitializer }, align 32
@tca8418_keypad_probe._entry_ptr.14 = internal global ptr @tca8418_keypad_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"keypad,autorepeat\00", [46 x i8] zeroinitializer }, align 32
@tca8418_keypad_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 338, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to claim irq %d; error %d\0A\00", [62 x i8] zeroinitializer }, align 32
@tca8418_keypad_probe._entry_ptr.18 = internal global ptr @tca8418_keypad_probe._entry.16, section ".printk_index", align 4
@tca8418_keypad_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 350, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Unable to register input device, error: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@tca8418_keypad_probe._entry_ptr.21 = internal global ptr @tca8418_keypad_probe._entry.19, section ".printk_index", align 4
@tca8418_read_byte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 150, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s failed, reg: %d, error: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tca8418_read_byte\00", [46 x i8] zeroinitializer }, align 32
@tca8418_read_byte._entry_ptr = internal global ptr @tca8418_read_byte._entry, section ".printk_index", align 4
@tca8418_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 208, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to read REG_INT_STAT\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tca8418_irq_handler\00", [44 x i8] zeroinitializer }, align 32
@tca8418_irq_handler._entry_ptr = internal global ptr @tca8418_irq_handler._entry, section ".printk_index", align 4
@tca8418_irq_handler._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.3, i32 216, ptr @.str.28, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"overflow occurred\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tca8418_irq_handler._entry_ptr.29 = internal global ptr @tca8418_irq_handler._entry.26, section ".printk_index", align 4
@tca8418_irq_handler._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.25, ptr @.str.3, i32 226, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to clear REG_INT_STAT\0A\00", [34 x i8] zeroinitializer }, align 32
@tca8418_irq_handler._entry_ptr.32 = internal global ptr @tca8418_irq_handler._entry.30, section ".printk_index", align 4
@tca8418_read_keypad._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 170, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unable to read REG_KEY_EVENT_A\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tca8418_read_keypad\00", [44 x i8] zeroinitializer }, align 32
@tca8418_read_keypad._entry_ptr = internal global ptr @tca8418_read_keypad._entry, section ".printk_index", align 4
@tca8418_write_byte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 131, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s failed, reg: %d, val: %d, error: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tca8418_write_byte\00", [45 x i8] zeroinitializer }, align 32
@tca8418_write_byte._entry_ptr = internal global ptr @tca8418_write_byte._entry, section ".printk_index", align 4
@___asan_gen_.37 = private unnamed_addr constant [22 x i8] c"tca8418_keypad_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 369, i32 26 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 371, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [15 x i8] c"tca8418_dt_ids\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 363, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant [11 x i8] c"tca8418_id\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 357, i32 35 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 274, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 284, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 289, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 323, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 327, i32 37 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 337, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 349, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 148, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 207, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 216, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 225, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 169, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.149 = private constant [43 x i8] c"../drivers/input/keyboard/tca8418_keypad.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 129, i32 3 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_tca8418_keypad_exit, ptr @__initcall__kmod_tca8418_keypad__288_382_tca8418_keypad_init4, ptr @tca8418_irq_handler._entry, ptr @tca8418_irq_handler._entry.26, ptr @tca8418_irq_handler._entry.30, ptr @tca8418_irq_handler._entry_ptr, ptr @tca8418_irq_handler._entry_ptr.29, ptr @tca8418_irq_handler._entry_ptr.32, ptr @tca8418_keypad_exit, ptr @tca8418_keypad_probe._entry, ptr @tca8418_keypad_probe._entry.12, ptr @tca8418_keypad_probe._entry.16, ptr @tca8418_keypad_probe._entry.19, ptr @tca8418_keypad_probe._entry.6, ptr @tca8418_keypad_probe._entry.9, ptr @tca8418_keypad_probe._entry_ptr, ptr @tca8418_keypad_probe._entry_ptr.11, ptr @tca8418_keypad_probe._entry_ptr.14, ptr @tca8418_keypad_probe._entry_ptr.18, ptr @tca8418_keypad_probe._entry_ptr.21, ptr @tca8418_keypad_probe._entry_ptr.8, ptr @tca8418_read_byte._entry, ptr @tca8418_read_byte._entry_ptr, ptr @tca8418_read_keypad._entry, ptr @tca8418_read_keypad._entry_ptr, ptr @tca8418_write_byte._entry, ptr @tca8418_write_byte._entry_ptr, ptr @tca8418_keypad_driver, ptr @.str, ptr @tca8418_dt_ids, ptr @tca8418_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tca8418_keypad_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tca8418_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tca8418_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tca8418_keypad_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tca8418_keypad_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tca8418_keypad_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tca8418_keypad_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tca8418_keypad_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tca8418_keypad_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tca8418_read_byte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tca8418_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tca8418_irq_handler._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tca8418_irq_handler._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tca8418_read_keypad._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tca8418_write_byte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tca8418_keypad_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tca8418_keypad_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tca8418_keypad_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @tca8418_keypad_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tca8418_keypad_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %rows = alloca i32, align 4
  %cols = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rows) #6
  %0 = ptrtoint ptr %rows to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %rows, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cols) #6
  %1 = ptrtoint ptr %cols to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %cols, align 4
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
  %call.i.i = tail call i32 %7(ptr noundef %3) #6
  %and.i = and i32 %call.i.i, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 393216, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 393216
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter, align 8
  %dev3 = getelementptr inbounds %struct.i2c_adapter, ptr %9, i32 0, i32 9
  %call4 = tail call ptr @dev_driver_string(ptr noundef %dev3) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef %call4) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = call i32 @matrix_keypad_parse_properties(ptr noundef %dev1, ptr noundef nonnull %rows, ptr noundef nonnull %cols) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %10 = ptrtoint ptr %rows to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rows, align 4
  %12 = add i32 %11, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %12)
  %13 = icmp ult i32 %12, -8
  br i1 %13, label %do.end13, label %if.end14

do.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %14 = ptrtoint ptr %cols to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cols, align 4
  %16 = add i32 %15, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %16)
  %17 = icmp ult i32 %16, -10
  br i1 %17, label %do.end21, label %if.end22

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #6
  %tobool25.not = icmp eq ptr %call.i, null
  br i1 %tobool25.not, label %if.end22.cleanup_crit_edge, label %if.end27

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %dec.i = add nsw i32 %15, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i.i = icmp eq i32 %dec.i, 0
  %18 = call i32 @llvm.ctlz.i32(i32 %dec.i, i1 true) #6, !range !87
  %sub.i.i = sub nuw nsw i32 32, %18
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %client, ptr %call.i, align 4
  %row_shift29 = getelementptr inbounds %struct.tca8418_keypad, ptr %call.i, i32 0, i32 2
  %20 = ptrtoint ptr %row_shift29 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond.i.i, ptr %row_shift29, align 4
  %call.i130 = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %cmp.i131 = icmp slt i32 %call.i130, 0
  br i1 %cmp.i131, label %tca8418_read_byte.exit, label %if.end33

tca8418_read_byte.exit:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 3, i32 noundef %call.i130) #9
  br label %cleanup

if.end33:                                         ; preds = %if.end27
  %call34 = call ptr @devm_input_allocate_device(ptr noundef %dev1) #6
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.end33.cleanup_crit_edge, label %if.end37

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  %input38 = getelementptr inbounds %struct.tca8418_keypad, ptr %call.i, i32 0, i32 1
  %23 = ptrtoint ptr %input38 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call34, ptr %input38, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %24 = ptrtoint ptr %call34 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %name, ptr %call34, align 8
  %id40 = getelementptr inbounds %struct.input_dev, ptr %call34, i32 0, i32 3
  %25 = ptrtoint ptr %id40 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 24, ptr %id40, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call34, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %vendor, align 2
  %product = getelementptr inbounds %struct.input_dev, ptr %call34, i32 0, i32 3, i32 2
  %27 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %product, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %call34, i32 0, i32 3, i32 3
  %28 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %version, align 2
  %29 = ptrtoint ptr %rows to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rows, align 4
  %31 = ptrtoint ptr %cols to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cols, align 4
  %call44 = call i32 @matrix_keypad_build_keymap(ptr noundef null, ptr noundef null, i32 noundef %30, i32 noundef %32, ptr noundef null, ptr noundef nonnull %call34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end50, label %do.end49

do.end49:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end50:                                         ; preds = %if.end37
  %call.i132 = call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.15) #6
  br i1 %call.i132, label %if.then52, label %if.end50.if.end54_crit_edge

if.end50.if.end54_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then52:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call34, i32 0, i32 5
  %33 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %evbit, align 4
  %or.i = or i32 %34, 1048576
  store i32 %or.i, ptr %evbit, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end50.if.end54_crit_edge
  call void @input_set_capability(ptr noundef nonnull %call34, i32 noundef 4, i32 noundef 4) #6
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %35 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq, align 4
  %call57 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %36, ptr noundef null, ptr noundef nonnull @tca8418_irq_handler, i32 noundef 8320, ptr noundef %name, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end64, label %do.end62

do.end62:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %38, i32 noundef %call57) #9
  br label %cleanup

if.end64:                                         ; preds = %if.end54
  %39 = ptrtoint ptr %rows to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rows, align 4
  %41 = ptrtoint ptr %cols to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cols, align 4
  %shl.i = shl nsw i32 -1, %40
  %neg.i = xor i32 %shl.i, -1
  %shl1.i = shl nsw i32 -1, %42
  %neg2.i = xor i32 %shl1.i, -1
  %shl3.i = shl i32 %neg2.i, 8
  %add.i = add i32 %shl3.i, %neg.i
  %conv.i133 = trunc i32 %add.i to i8
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i, align 4
  %call.i.i134 = call i32 @i2c_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext 29, i8 noundef zeroext %conv.i133) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i134)
  %cmp.i.i = icmp slt i32 %call.i.i134, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end64.tca8418_write_byte.exit.i_crit_edge

if.end64.tca8418_write_byte.exit.i_crit_edge:     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %tca8418_write_byte.exit.i

do.end.i.i:                                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call.i, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %46, i32 0, i32 4
  %conv3.i.i = and i32 %add.i, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef 29, i32 noundef %conv3.i.i, i32 noundef %call.i.i134) #9
  br label %tca8418_write_byte.exit.i

tca8418_write_byte.exit.i:                        ; preds = %do.end.i.i, %if.end64.tca8418_write_byte.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i134, %do.end.i.i ], [ 0, %if.end64.tca8418_write_byte.exit.i_crit_edge ]
  %47 = lshr i32 %add.i, 8
  %conv4.i = trunc i32 %47 to i8
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call.i, align 4
  %call.i44.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %49, i8 noundef zeroext 30, i8 noundef zeroext %conv4.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i)
  %cmp.i45.i = icmp slt i32 %call.i44.i, 0
  br i1 %cmp.i45.i, label %do.end.i48.i, label %tca8418_write_byte.exit.i.tca8418_write_byte.exit50.i_crit_edge

tca8418_write_byte.exit.i.tca8418_write_byte.exit50.i_crit_edge: ; preds = %tca8418_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tca8418_write_byte.exit50.i

do.end.i48.i:                                     ; preds = %tca8418_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call.i, align 4
  %dev.i46.i = getelementptr inbounds %struct.i2c_client, ptr %51, i32 0, i32 4
  %conv3.i47.i = and i32 %47, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i46.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef 30, i32 noundef %conv3.i47.i, i32 noundef %call.i44.i) #9
  br label %tca8418_write_byte.exit50.i

tca8418_write_byte.exit50.i:                      ; preds = %do.end.i48.i, %tca8418_write_byte.exit.i.tca8418_write_byte.exit50.i_crit_edge
  %retval.0.i49.i = phi i32 [ %call.i44.i, %do.end.i48.i ], [ 0, %tca8418_write_byte.exit.i.tca8418_write_byte.exit50.i_crit_edge ]
  %or6.i = or i32 %retval.0.i49.i, %retval.0.i.i
  %52 = lshr i32 %add.i, 16
  %conv8.i = trunc i32 %52 to i8
  %53 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call.i, align 4
  %call.i51.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %54, i8 noundef zeroext 31, i8 noundef zeroext %conv8.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i)
  %cmp.i52.i = icmp slt i32 %call.i51.i, 0
  br i1 %cmp.i52.i, label %do.end.i55.i, label %tca8418_write_byte.exit50.i.tca8418_write_byte.exit57.i_crit_edge

tca8418_write_byte.exit50.i.tca8418_write_byte.exit57.i_crit_edge: ; preds = %tca8418_write_byte.exit50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tca8418_write_byte.exit57.i

do.end.i55.i:                                     ; preds = %tca8418_write_byte.exit50.i
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call.i, align 4
  %dev.i53.i = getelementptr inbounds %struct.i2c_client, ptr %56, i32 0, i32 4
  %conv3.i54.i = and i32 %52, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i53.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef 31, i32 noundef %conv3.i54.i, i32 noundef %call.i51.i) #9
  br label %tca8418_write_byte.exit57.i

tca8418_write_byte.exit57.i:                      ; preds = %do.end.i55.i, %tca8418_write_byte.exit50.i.tca8418_write_byte.exit57.i_crit_edge
  %retval.0.i56.i = phi i32 [ %call.i51.i, %do.end.i55.i ], [ 0, %tca8418_write_byte.exit50.i.tca8418_write_byte.exit57.i_crit_edge ]
  %or10.i = or i32 %or6.i, %retval.0.i56.i
  %57 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call.i, align 4
  %call.i58.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %58, i8 noundef zeroext 41, i8 noundef zeroext %conv.i133) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58.i)
  %cmp.i59.i = icmp slt i32 %call.i58.i, 0
  br i1 %cmp.i59.i, label %do.end.i62.i, label %tca8418_write_byte.exit57.i.tca8418_write_byte.exit64.i_crit_edge

tca8418_write_byte.exit57.i.tca8418_write_byte.exit64.i_crit_edge: ; preds = %tca8418_write_byte.exit57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tca8418_write_byte.exit64.i

do.end.i62.i:                                     ; preds = %tca8418_write_byte.exit57.i
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call.i, align 4
  %dev.i60.i = getelementptr inbounds %struct.i2c_client, ptr %60, i32 0, i32 4
  %conv3.i61.i = and i32 %add.i, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i60.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef 41, i32 noundef %conv3.i61.i, i32 noundef %call.i58.i) #9
  br label %tca8418_write_byte.exit64.i

tca8418_write_byte.exit64.i:                      ; preds = %do.end.i62.i, %tca8418_write_byte.exit57.i.tca8418_write_byte.exit64.i_crit_edge
  %retval.0.i63.i = phi i32 [ %call.i58.i, %do.end.i62.i ], [ 0, %tca8418_write_byte.exit57.i.tca8418_write_byte.exit64.i_crit_edge ]
  %or13.i = or i32 %or10.i, %retval.0.i63.i
  %61 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call.i, align 4
  %call.i65.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %62, i8 noundef zeroext 42, i8 noundef zeroext %conv4.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65.i)
  %cmp.i66.i = icmp slt i32 %call.i65.i, 0
  br i1 %cmp.i66.i, label %do.end.i69.i, label %tca8418_write_byte.exit64.i.tca8418_write_byte.exit71.i_crit_edge

tca8418_write_byte.exit64.i.tca8418_write_byte.exit71.i_crit_edge: ; preds = %tca8418_write_byte.exit64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tca8418_write_byte.exit71.i

do.end.i69.i:                                     ; preds = %tca8418_write_byte.exit64.i
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call.i, align 4
  %dev.i67.i = getelementptr inbounds %struct.i2c_client, ptr %64, i32 0, i32 4
  %conv3.i68.i = and i32 %47, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i67.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef 42, i32 noundef %conv3.i68.i, i32 noundef %call.i65.i) #9
  br label %tca8418_write_byte.exit71.i

tca8418_write_byte.exit71.i:                      ; preds = %do.end.i69.i, %tca8418_write_byte.exit64.i.tca8418_write_byte.exit71.i_crit_edge
  %retval.0.i70.i = phi i32 [ %call.i65.i, %do.end.i69.i ], [ 0, %tca8418_write_byte.exit64.i.tca8418_write_byte.exit71.i_crit_edge ]
  %or17.i = or i32 %or13.i, %retval.0.i70.i
  %65 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %call.i, align 4
  %call.i72.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %66, i8 noundef zeroext 43, i8 noundef zeroext %conv8.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72.i)
  %cmp.i73.i = icmp slt i32 %call.i72.i, 0
  br i1 %cmp.i73.i, label %do.end.i76.i, label %tca8418_write_byte.exit71.i.tca8418_write_byte.exit78.i_crit_edge

tca8418_write_byte.exit71.i.tca8418_write_byte.exit78.i_crit_edge: ; preds = %tca8418_write_byte.exit71.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tca8418_write_byte.exit78.i

do.end.i76.i:                                     ; preds = %tca8418_write_byte.exit71.i
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %call.i, align 4
  %dev.i74.i = getelementptr inbounds %struct.i2c_client, ptr %68, i32 0, i32 4
  %conv3.i75.i = and i32 %52, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i74.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef 43, i32 noundef %conv3.i75.i, i32 noundef %call.i72.i) #9
  br label %tca8418_write_byte.exit78.i

tca8418_write_byte.exit78.i:                      ; preds = %do.end.i76.i, %tca8418_write_byte.exit71.i.tca8418_write_byte.exit78.i_crit_edge
  %retval.0.i77.i = phi i32 [ %call.i72.i, %do.end.i76.i ], [ 0, %tca8418_write_byte.exit71.i.tca8418_write_byte.exit78.i_crit_edge ]
  %or21.i = or i32 %or17.i, %retval.0.i77.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or21.i)
  %tobool.not.i = icmp eq i32 %or21.i, 0
  br i1 %tobool.not.i, label %if.end.i135, label %tca8418_configure.exit

if.end.i135:                                      ; preds = %tca8418_write_byte.exit78.i
  %69 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %call.i, align 4
  %call.i79.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %70, i8 noundef zeroext 1, i8 noundef zeroext 25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79.i)
  %cmp.i80.i = icmp slt i32 %call.i79.i, 0
  br i1 %cmp.i80.i, label %tca8418_configure.exit.thread, label %if.end.i135.if.end68_crit_edge

if.end.i135.if.end68_crit_edge:                   ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

tca8418_configure.exit.thread:                    ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %call.i, align 4
  %dev.i81.i = getelementptr inbounds %struct.i2c_client, ptr %72, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i81.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef 1, i32 noundef 25, i32 noundef %call.i79.i) #9
  br label %cleanup

tca8418_configure.exit:                           ; preds = %tca8418_write_byte.exit78.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or21.i)
  %cmp66 = icmp slt i32 %or21.i, 0
  br i1 %cmp66, label %tca8418_configure.exit.cleanup_crit_edge, label %tca8418_configure.exit.if.end68_crit_edge

tca8418_configure.exit.if.end68_crit_edge:        ; preds = %tca8418_configure.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

tca8418_configure.exit.cleanup_crit_edge:         ; preds = %tca8418_configure.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end68:                                         ; preds = %tca8418_configure.exit.if.end68_crit_edge, %if.end.i135.if.end68_crit_edge
  %call69 = call i32 @input_register_device(ptr noundef nonnull %call34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end68.cleanup_crit_edge, label %do.end74

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end74:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %call69) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end74, %if.end68.cleanup_crit_edge, %tca8418_configure.exit.cleanup_crit_edge, %tca8418_configure.exit.thread, %do.end62, %do.end49, %if.end33.cleanup_crit_edge, %tca8418_read_byte.exit, %if.end22.cleanup_crit_edge, %do.end21, %do.end13, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end13 ], [ -22, %do.end21 ], [ %call44, %do.end49 ], [ %call57, %do.end62 ], [ %call69, %do.end74 ], [ -19, %do.end ], [ %call5, %if.end.cleanup_crit_edge ], [ -12, %if.end22.cleanup_crit_edge ], [ -19, %tca8418_read_byte.exit ], [ -12, %if.end33.cleanup_crit_edge ], [ %or21.i, %tca8418_configure.exit.cleanup_crit_edge ], [ 0, %if.end68.cleanup_crit_edge ], [ %call.i79.i, %tca8418_configure.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cols) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rows) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matrix_keypad_parse_properties(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matrix_keypad_build_keymap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tca8418_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_id, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 2, i32 noundef %call.i) #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %conv3.i = trunc i32 %call.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv3.i)
  %tobool1.not = icmp eq i8 %conv3.i, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = and i8 %conv3.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool4.not = icmp eq i8 %4, 0
  br i1 %tobool4.not, label %if.end3.if.end11_crit_edge, label %do.end8

if.end3.if.end11_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

do.end8:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_id, align 4
  %dev10 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev10, ptr noundef nonnull @.str.27) #9
  br label %if.end11

if.end11:                                         ; preds = %do.end8, %if.end3.if.end11_crit_edge
  %7 = and i8 %conv3.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool14.not = icmp eq i8 %7, 0
  br i1 %tobool14.not, label %if.end11.if.end16_crit_edge, label %if.then15

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then15:                                        ; preds = %if.end11
  %input1.i = getelementptr inbounds %struct.tca8418_keypad, ptr %dev_id, i32 0, i32 1
  %8 = ptrtoint ptr %input1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input1.i, align 4
  %keycode.i = getelementptr inbounds %struct.input_dev, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %keycode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %keycode.i, align 4
  %12 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_id, align 4
  %call.i46.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %13, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46.i)
  %cmp.i47.i = icmp slt i32 %call.i46.i, 0
  br i1 %cmp.i47.i, label %if.then15.do.end.i35_crit_edge, label %if.end.lr.ph.i

if.then15.do.end.i35_crit_edge:                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i35

if.end.lr.ph.i:                                   ; preds = %if.then15
  %row_shift.i = getelementptr inbounds %struct.tca8418_keypad, ptr %dev_id, i32 0, i32 2
  br label %if.end.i36

do.end.i35:                                       ; preds = %if.end6.i.do.end.i35_crit_edge, %if.then15.do.end.i35_crit_edge
  %call.i.lcssa.i = phi i32 [ %call.i46.i, %if.then15.do.end.i35_crit_edge ], [ %call.i.i, %if.end6.i.do.end.i35_crit_edge ]
  %14 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_id, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 4, i32 noundef %call.i.lcssa.i) #9
  %16 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_id, align 4
  %dev.i34 = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i34, ptr noundef nonnull @.str.33) #9
  br label %tca8418_read_keypad.exit

if.end.i36:                                       ; preds = %if.end6.i.if.end.i36_crit_edge, %if.end.lr.ph.i
  %call.i48.i = phi i32 [ %call.i46.i, %if.end.lr.ph.i ], [ %call.i.i, %if.end6.i.if.end.i36_crit_edge ]
  %conv3.i.i = trunc i32 %call.i48.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv3.i.i)
  %cmp3.i = icmp eq i8 %conv3.i.i, 0
  br i1 %cmp3.i, label %if.end.i36.tca8418_read_keypad.exit_crit_edge, label %if.end6.i

if.end.i36.tca8418_read_keypad.exit_crit_edge:    ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #8
  br label %tca8418_read_keypad.exit

if.end6.i:                                        ; preds = %if.end.i36
  %div.lhs.trunc.i = and i8 %conv3.i.i, 127
  %div.lhs.trunc.i.frozen = freeze i8 %div.lhs.trunc.i
  %div43.i = udiv i8 %div.lhs.trunc.i.frozen, 10
  %div.zext.i = zext i8 %div43.i to i32
  %18 = mul i8 %div43.i, 10
  %rem44.i.decomposed = sub i8 %div.lhs.trunc.i.frozen, %18
  %rem.zext.i = zext i8 %rem44.i.decomposed to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rem44.i.decomposed)
  %tobool.not.i = icmp eq i8 %rem44.i.decomposed, 0
  %sub.i = sext i1 %tobool.not.i to i32
  %cond.i = add nsw i32 %sub.i, %div.zext.i
  %sub16.i = add nuw nsw i32 %rem.zext.i, 255
  %cond19.i = select i1 %tobool.not.i, i32 9, i32 %sub16.i
  %19 = ptrtoint ptr %row_shift.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %row_shift.i, align 4
  %shl.i = shl i32 %cond.i, %20
  %add.i = add i32 %shl.i, %cond19.i
  %conv21.i = and i32 %add.i, 255
  tail call void @input_event(ptr noundef %9, i32 noundef 4, i32 noundef 4, i32 noundef %conv21.i) #6
  %arrayidx.i = getelementptr i16, ptr %11, i32 %conv21.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx.i, align 2
  %conv22.i = zext i16 %22 to i32
  %and.i = lshr i32 %call.i48.i, 7
  %and.lobit.i = and i32 %and.i, 1
  tail call void @input_event(ptr noundef %9, i32 noundef 1, i32 noundef %conv22.i, i32 noundef %and.lobit.i) #6
  %23 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_id, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %24, i8 noundef zeroext 4) #6
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end6.i.do.end.i35_crit_edge, label %if.end6.i.if.end.i36_crit_edge

if.end6.i.if.end.i36_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i36

if.end6.i.do.end.i35_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i35

tca8418_read_keypad.exit:                         ; preds = %if.end.i36.tca8418_read_keypad.exit_crit_edge, %do.end.i35
  tail call void @input_event(ptr noundef %9, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %if.end16

if.end16:                                         ; preds = %tca8418_read_keypad.exit, %if.end11.if.end16_crit_edge
  %25 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_id, align 4
  %call.i37 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext 2, i8 noundef zeroext -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %cmp.i38 = icmp slt i32 %call.i37, 0
  br i1 %cmp.i38, label %do.end22, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_id, align 4
  %dev.i39 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i39, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef 2, i32 noundef 255, i32 noundef %call.i37) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end22, %do.end
  %.str.31.sink = phi ptr [ @.str.31, %do.end22 ], [ @.str.24, %do.end ]
  %retval.0.ph = phi i32 [ 1, %do.end22 ], [ 0, %do.end ]
  %29 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_id, align 4
  %dev24 = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull %.str.31.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end16.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.end16.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !74, !76}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @__initcall__kmod_tca8418_keypad__288_382_tca8418_keypad_init4, !1, !"__initcall__kmod_tca8418_keypad__288_382_tca8418_keypad_init4", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/tca8418_keypad.c", i32 382, i32 1}
!2 = !{ptr @__exitcall_tca8418_keypad_exit, !3, !"__exitcall_tca8418_keypad_exit", i1 false, i1 false}
!3 = !{!"../drivers/input/keyboard/tca8418_keypad.c", i32 388, i32 1}
!4 = !{ptr @__UNIQUE_ID_author289, !5, !"__UNIQUE_ID_author289", i1 false, i1 false}
!5 = !{!"../drivers/input/keyboard/tca8418_keypad.c", i32 390, i32 1}
!6 = !{ptr @__UNIQUE_ID_description290, !7, !"__UNIQUE_ID_description290", i1 false, i1 false}
!7 = !{!"../drivers/input/keyboard/tca8418_keypad.c", i32 391, i32 1}
!8 = !{ptr @__UNIQUE_ID_file291, !9, !"__UNIQUE_ID_file291", i1 false, i1 false}
!9 = !{!"../drivers/input/keyboard/tca8418_keypad.c", i32 392, i32 1}
!10 = !{ptr @__UNIQUE_ID_license292, !9, !"__UNIQUE_ID_license292", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/input/keyboard/tca8418_keypad.c", i32 371, i32 11}
!13 = !{ptr @tca8418_keypad_driver, !14, !"tca8418_keypad_driver", i1 false, i1 false}
!14 = !{!"../drivers/input/keyboard/tca8418_keypad.c", i32 369, i32 26}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/input/keyboard/tca8418_keypad.c", i32 274, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @tca8418_keypad_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @tca8418_keypad_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/input/keyboard/tca8418_keypad.c", i32 284, i32 3}
!25 = !{ptr @tca8418_keypad_probe._entry.6, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @tca8418_keypad_probe._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/keyboard/tca8418_keypad.c", i32 289, i32 3}
!29 = !{ptr @tca8418_keypad_probe._entry.9, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @tca8418_keypad_probe._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/keyboard/tca8418_keypad.c", i32 323, i32 3}
!33 = !{ptr @tca8418_keypad_probe._entry.12, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @tca8418_keypad_probe._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/keyboard/tca8418_keypad.c", i32 327, i32 37}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/keyboard/tca8418_keypad.c", i32 337, i32 3}
!39 = !{ptr @tca8418_keypad_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @tca8418_keypad_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/input/keyboard/tca8418_keypad.c", i32 349, i32 3}
!43 = !{ptr @tca8418_keypad_probe._entry.19, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @tca8418_keypad_probe._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/keyboard/tca8418_keypad.c", i32 148, i32 3}
!47 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @tca8418_read_byte._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @tca8418_read_byte._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/keyboard/tca8418_keypad.c", i32 207, i32 3}
!52 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @tca8418_irq_handler._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @tca8418_irq_handler._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/keyboard/tca8418_keypad.c", i32 216, i32 3}
!57 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @tca8418_irq_handler._entry.26, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @tca8418_irq_handler._entry_ptr.29, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/keyboard/tca8418_keypad.c", i32 225, i32 3}
!62 = !{ptr @tca8418_irq_handler._entry.30, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @tca8418_irq_handler._entry_ptr.32, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/input/keyboard/tca8418_keypad.c", i32 169, i32 4}
!66 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @tca8418_read_keypad._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @tca8418_read_keypad._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/input/keyboard/tca8418_keypad.c", i32 129, i32 3}
!71 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @tca8418_write_byte._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @tca8418_write_byte._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @tca8418_dt_ids, !75, !"tca8418_dt_ids", i1 false, i1 false}
!75 = !{!"../drivers/input/keyboard/tca8418_keypad.c", i32 363, i32 34}
!76 = !{ptr @tca8418_id, !77, !"tca8418_id", i1 false, i1 false}
!77 = !{!"../drivers/input/keyboard/tca8418_keypad.c", i32 357, i32 35}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{i32 0, i32 33}
