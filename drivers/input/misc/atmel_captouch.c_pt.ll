; ModuleID = '/llk/IR_all_yes/drivers/input/misc/atmel_captouch.c_pt.bc'
source_filename = "../drivers/input/misc/atmel_captouch.c"
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
%struct.i2c_msg = type { i16, i16, i16, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atmel_captouch_device = type { ptr, ptr, i32, [8 x i32], i8, [83 x i8], [8 x i8], [120 x i8] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_atmel_captouch__289_276_atmel_captouch_driver_init6 = internal global ptr @atmel_captouch_driver_init, section ".initcall6.init", align 4
@atmel_captouch_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @atmel_captouch_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_captouch_of_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @atmel_captouch_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_atmel_captouch_driver_exit = internal global ptr @atmel_captouch_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [51 x i8] c"atmel_captouch.author=Hung-yu Wu <hywu@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [78 x i8] c"atmel_captouch.description=Atmel ATmegaXX Capacitance Touch Sensor I2C Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [54 x i8] c"atmel_captouch.file=drivers/input/misc/atmel_captouch\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [30 x i8] c"atmel_captouch.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"atmel_captouch\00", [17 x i8] zeroinitializer }, align 32
@atmel_captouch_of_id = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,captouch\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@atmel_captouch_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"atmel_captouch\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@atmel_captouch_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 177, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"needed i2c functionality is not supported\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"atmel_captouch_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/input/misc/atmel_captouch.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@atmel_captouch_probe._entry_ptr = internal global ptr @atmel_captouch_probe._entry, section ".printk_index", align 4
@atmel_captouch_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 190, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to read initial button state: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@atmel_captouch_probe._entry_ptr.8 = internal global ptr @atmel_captouch_probe._entry.6, section ".printk_index", align 4
@atmel_captouch_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 196, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate input device\0A\00", [63 x i8] zeroinitializer }, align 32
@atmel_captouch_probe._entry_ptr.11 = internal global ptr @atmel_captouch_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ATMegaXX Capacitive Button Controller\00", [58 x i8] zeroinitializer }, align 32
@atmel_captouch_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 208, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to find matching node in device tree\0A\00", [51 x i8] zeroinitializer }, align 32
@atmel_captouch_probe._entry_ptr.15 = internal global ptr @atmel_captouch_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"autorepeat\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"linux,keymap\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"linux,keycodes\00", [17 x i8] zeroinitializer }, align 32
@atmel_captouch_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 224, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to read linux,keycode property: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@atmel_captouch_probe._entry_ptr.21 = internal global ptr @atmel_captouch_probe._entry.19, section ".printk_index", align 4
@atmel_captouch_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 245, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to request irq %d: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@atmel_captouch_probe._entry_ptr.24 = internal global ptr @atmel_captouch_probe._entry.22, section ".printk_index", align 4
@atmel_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 114, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"I2C read error: register address does not match (%#02x vs %02x)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"atmel_read\00", [21 x i8] zeroinitializer }, align 32
@atmel_read._entry_ptr = internal global ptr @atmel_read._entry, section ".printk_index", align 4
@atmel_captouch_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 139, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to read button state: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"atmel_captouch_isr\00", [45 x i8] zeroinitializer }, align 32
@atmel_captouch_isr._entry_ptr = internal global ptr @atmel_captouch_isr._entry, section ".printk_index", align 4
@atmel_captouch_isr.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: button state %#02x\0A\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.30 = private unnamed_addr constant [22 x i8] c"atmel_captouch_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 268, i32 26 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 272, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [21 x i8] c"atmel_captouch_of_id\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 253, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [18 x i8] c"atmel_captouch_id\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 262, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 177, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 190, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 196, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 203, i32 24 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 208, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 212, i32 34 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 215, i32 54 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 219, i32 41 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 223, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 244, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 112, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 139, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private constant [39 x i8] c"../drivers/input/misc/atmel_captouch.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 143, i32 2 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_atmel_captouch_driver_exit, ptr @__initcall__kmod_atmel_captouch__289_276_atmel_captouch_driver_init6, ptr @atmel_captouch_driver_exit, ptr @atmel_captouch_isr._entry, ptr @atmel_captouch_isr._entry_ptr, ptr @atmel_captouch_probe._entry, ptr @atmel_captouch_probe._entry.13, ptr @atmel_captouch_probe._entry.19, ptr @atmel_captouch_probe._entry.22, ptr @atmel_captouch_probe._entry.6, ptr @atmel_captouch_probe._entry.9, ptr @atmel_captouch_probe._entry_ptr, ptr @atmel_captouch_probe._entry_ptr.11, ptr @atmel_captouch_probe._entry_ptr.15, ptr @atmel_captouch_probe._entry_ptr.21, ptr @atmel_captouch_probe._entry_ptr.24, ptr @atmel_captouch_probe._entry_ptr.8, ptr @atmel_read._entry, ptr @atmel_read._entry_ptr, ptr @atmel_captouch_driver, ptr @.str, ptr @atmel_captouch_of_id, ptr @atmel_captouch_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_captouch_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_captouch_of_id to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_captouch_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_captouch_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_captouch_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_captouch_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_captouch_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_captouch_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_captouch_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_captouch_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_captouch_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @atmel_captouch_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atmel_captouch_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @atmel_captouch_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_captouch_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
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
  %and.i = and i32 %call.i.i, 209190912
  call void @__sanitizer_cov_trace_const_cmp4(i32 209190912, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 209190912
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 256, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %call.i, align 128
  %prev_btn = getelementptr inbounds %struct.atmel_captouch_device, ptr %call.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %7 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 16)
  %xfer_buf.i = getelementptr inbounds %struct.atmel_captouch_device, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %xfer_buf.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 60, ptr %xfer_buf.i, align 128
  %arrayidx4.i = getelementptr %struct.atmel_captouch_device, ptr %call.i, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %arrayidx4.i, align 1
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %11 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr.i, align 2
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %xfer_buf.i, ptr %buf.i, align 4
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 2, ptr %7, align 4
  %arrayidx13.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %12, ptr %arrayidx13.i, align 4
  %flags16.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %flags16.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %flags16.i, align 2
  %buf20.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %buf20.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %xfer_buf.i, ptr %buf20.i, align 4
  %len23.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %len23.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 3, ptr %len23.i, align 4
  %21 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter, align 8
  %call.i140 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i140)
  %cmp25.not.i = icmp eq i32 %call.i140, 2
  br i1 %cmp25.not.i, label %if.end30.i, label %if.then27.i

if.then27.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %cmp28.i = icmp slt i32 %call.i140, 0
  %spec.select147 = select i1 %cmp28.i, i32 %call.i140, i32 -5
  br label %do.end12

if.end30.i:                                       ; preds = %if.end5
  %23 = ptrtoint ptr %xfer_buf.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %xfer_buf.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %24)
  %cmp35.not.i = icmp eq i8 %24, 60
  br i1 %cmp35.not.i, label %if.end13, label %do.end.i

do.end.i:                                         ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv33.i = zext i8 %24 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %conv33.i, i32 noundef 60) #9
  br label %do.end12

do.end12:                                         ; preds = %do.end.i, %if.then27.i
  %retval.0.i.ph = phi i32 [ -70, %do.end.i ], [ %spec.select147, %if.then27.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end30.i
  %arrayidx44.i = getelementptr %struct.atmel_captouch_device, ptr %call.i, i32 0, i32 6, i32 2
  %25 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx44.i, align 2
  %27 = ptrtoint ptr %prev_btn to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %prev_btn, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  %call14 = call ptr @devm_input_allocate_device(ptr noundef %dev1) #6
  %input = getelementptr inbounds %struct.atmel_captouch_device, ptr %call.i, i32 0, i32 1
  %28 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call14, ptr %input, align 4
  %tobool16.not = icmp eq ptr %call14, null
  br i1 %tobool16.not, label %do.end20, label %if.end21

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %id23 = getelementptr inbounds %struct.input_dev, ptr %call14, i32 0, i32 3
  %29 = ptrtoint ptr %id23 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 24, ptr %id23, align 4
  %30 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %input, align 4
  %product = getelementptr inbounds %struct.input_dev, ptr %31, i32 0, i32 3, i32 2
  %32 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 -30710, ptr %product, align 4
  %33 = load ptr, ptr %input, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %33, i32 0, i32 3, i32 3
  %34 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %version, align 2
  %35 = load ptr, ptr %input, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.12, ptr %35, align 8
  %37 = load ptr, ptr %input, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %evbit, align 4
  %or.i = or i32 %39, 2
  store i32 %or.i, ptr %evbit, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %40 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %of_node, align 8
  %tobool30.not = icmp eq ptr %41, null
  br i1 %tobool30.not, label %do.end34, label %if.end35

do.end34:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #9
  br label %cleanup

if.end35:                                         ; preds = %if.end21
  %call.i141 = call ptr @of_find_property(ptr noundef nonnull %41, ptr noundef nonnull @.str.16, ptr noundef null) #6
  %tobool.i.not = icmp eq ptr %call.i141, null
  br i1 %tobool.i.not, label %if.end35.if.end41_crit_edge, label %if.then37

if.end35.if.end41_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %input, align 4
  %evbit39 = getelementptr inbounds %struct.input_dev, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %evbit39 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %evbit39, align 4
  %or.i138 = or i32 %45, 1048576
  store i32 %or.i138, ptr %evbit39, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %if.end35.if.end41_crit_edge
  %call.i142 = call i32 @of_property_count_elems_of_size(ptr noundef nonnull %41, ptr noundef nonnull @.str.17, i32 noundef 4) #6
  %num_btn = getelementptr inbounds %struct.atmel_captouch_device, ptr %call.i, i32 0, i32 2
  %46 = call i32 @llvm.umin.i32(i32 %call.i142, i32 8)
  %47 = ptrtoint ptr %num_btn to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %num_btn, align 8
  %keycodes = getelementptr inbounds %struct.atmel_captouch_device, ptr %call.i, i32 0, i32 3
  %call.i143 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %41, ptr noundef nonnull @.str.18, ptr noundef %keycodes, i32 noundef %46, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i143)
  %tobool50.not = icmp sgt i32 %call.i143, -1
  br i1 %tobool50.not, label %for.cond.preheader, label %do.end54

for.cond.preheader:                               ; preds = %if.end41
  %48 = ptrtoint ptr %num_btn to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_btn, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp57148.not = icmp eq i32 %49, 0
  br i1 %cmp57148.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.end54:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %call.i143) #9
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0149 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.atmel_captouch_device, ptr %call.i, i32 0, i32 3, i32 %i.0149
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx, align 4
  %52 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %input, align 4
  %keybit = getelementptr inbounds %struct.input_dev, ptr %53, i32 0, i32 6
  %rem.i = and i32 %51, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %51, 5
  %add.ptr.i = getelementptr i32, ptr %keybit, i32 %div2.i
  %54 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr.i, align 4
  %or.i139 = or i32 %55, %shl.i
  store i32 %or.i139, ptr %add.ptr.i, align 4
  %inc = add nuw i32 %i.0149, 1
  %56 = ptrtoint ptr %num_btn to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_btn, align 8
  %cmp57 = icmp ult i32 %inc, %57
  br i1 %cmp57, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %58 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %input, align 4
  %keycode = getelementptr inbounds %struct.input_dev, ptr %59, i32 0, i32 17
  %60 = ptrtoint ptr %keycode to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %keycodes, ptr %keycode, align 4
  %61 = load ptr, ptr %input, align 4
  %keycodesize = getelementptr inbounds %struct.input_dev, ptr %61, i32 0, i32 16
  %62 = ptrtoint ptr %keycodesize to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 4, ptr %keycodesize, align 8
  %63 = ptrtoint ptr %num_btn to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_btn, align 8
  %65 = load ptr, ptr %input, align 4
  %keycodemax = getelementptr inbounds %struct.input_dev, ptr %65, i32 0, i32 15
  %66 = ptrtoint ptr %keycodemax to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %64, ptr %keycodemax, align 4
  %67 = load ptr, ptr %input, align 4
  %call68 = call i32 @input_register_device(ptr noundef %67) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end71:                                         ; preds = %for.end
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %68 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %irq, align 4
  %call72 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %69, ptr noundef null, ptr noundef nonnull @atmel_captouch_isr, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end71.cleanup_crit_edge, label %do.end77

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end77:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %71, i32 noundef %call72) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end77, %if.end71.cleanup_crit_edge, %for.end.cleanup_crit_edge, %do.end54, %do.end34, %do.end20, %do.end12, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end12 ], [ %call.i143, %do.end54 ], [ %call72, %do.end77 ], [ -22, %do.end34 ], [ -12, %do.end20 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call68, %for.end.cleanup_crit_edge ], [ 0, %if.end71.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_captouch_isr(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 128
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %xfer_buf.i = getelementptr inbounds %struct.atmel_captouch_device, ptr %data, i32 0, i32 6
  %4 = ptrtoint ptr %xfer_buf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 60, ptr %xfer_buf.i, align 128
  %arrayidx4.i = getelementptr %struct.atmel_captouch_device, ptr %data, i32 0, i32 6, i32 1
  %5 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %arrayidx4.i, align 1
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr.i, align 2
  %8 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %10 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %xfer_buf.i, ptr %buf.i, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 2, ptr %2, align 4
  %12 = load i16, ptr %addr.i, align 2
  %arrayidx13.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %arrayidx13.i, align 4
  %flags16.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %flags16.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %flags16.i, align 2
  %buf20.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %buf20.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %xfer_buf.i, ptr %buf20.i, align 4
  %len23.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %len23.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 3, ptr %len23.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp25.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp25.not.i, label %if.end30.i, label %if.then27.i

if.then27.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp28.i = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp28.i, i32 %call.i, i32 -5
  br label %do.end

if.end30.i:                                       ; preds = %entry
  %19 = ptrtoint ptr %xfer_buf.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %xfer_buf.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %20)
  %cmp35.not.i = icmp eq i8 %20, 60
  br i1 %cmp35.not.i, label %do.body2, label %do.end.i

do.end.i:                                         ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv33.i = zext i8 %20 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %conv33.i, i32 noundef 60) #9
  br label %do.end

do.end:                                           ; preds = %do.end.i, %if.then27.i
  %retval.0.i38.ph = phi i32 [ -70, %do.end.i ], [ %spec.select, %if.then27.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27, i32 noundef %retval.0.i38.ph) #9
  br label %out

do.body2:                                         ; preds = %if.end30.i
  %arrayidx44.i = getelementptr %struct.atmel_captouch_device, ptr %data, i32 0, i32 6, i32 2
  %21 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx44.i, align 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_captouch_isr.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_captouch_isr, %if.then7)) #6
          to label %do.end10 [label %if.then7], !srcloc !76

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %22 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_captouch_isr.__UNIQUE_ID_ddebug288, ptr noundef %dev1, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef %conv) #6
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body2
  %prev_btn = getelementptr inbounds %struct.atmel_captouch_device, ptr %data, i32 0, i32 4
  %23 = ptrtoint ptr %prev_btn to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %prev_btn, align 4
  store i8 %22, ptr %prev_btn, align 4
  %num_btn = getelementptr inbounds %struct.atmel_captouch_device, ptr %data, i32 0, i32 2
  %25 = ptrtoint ptr %num_btn to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_btn, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp47.not = icmp eq i32 %26, 0
  br i1 %cmp47.not, label %do.end10.for.end_crit_edge, label %for.body.lr.ph

do.end10.for.end_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end10
  %xor37 = xor i8 %24, %22
  %conv16 = zext i8 %xor37 to i32
  %input = getelementptr inbounds %struct.atmel_captouch_device, ptr %data, i32 0, i32 1
  %conv19 = zext i8 %22 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.048 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.048
  %and = and i32 %shl, %conv16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %for.body.for.inc_crit_edge, label %if.then18

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then18:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %input, align 4
  %arrayidx = getelementptr %struct.atmel_captouch_device, ptr %data, i32 0, i32 3, i32 %i.048
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %31 = lshr i32 %conv19, %i.048
  %32 = and i32 %31, 1
  call void @input_event(ptr noundef %28, i32 noundef 1, i32 noundef %30, i32 noundef %32) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then18, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.048, 1
  %33 = ptrtoint ptr %num_btn to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_btn, align 8
  %cmp = icmp ult i32 %inc, %34
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end10.for.end_crit_edge
  %input23 = getelementptr inbounds %struct.atmel_captouch_device, ptr %data, i32 0, i32 1
  %35 = ptrtoint ptr %input23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %input23, align 4
  call void @input_event(ptr noundef %36, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %out

out:                                              ; preds = %for.end, %do.end
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !38, !40, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !65}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__initcall__kmod_atmel_captouch__289_276_atmel_captouch_driver_init6, !1, !"__initcall__kmod_atmel_captouch__289_276_atmel_captouch_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/misc/atmel_captouch.c", i32 276, i32 1}
!2 = !{ptr @__exitcall_atmel_captouch_driver_exit, !1, !"__exitcall_atmel_captouch_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/input/misc/atmel_captouch.c", i32 279, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/input/misc/atmel_captouch.c", i32 280, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/input/misc/atmel_captouch.c", i32 281, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/misc/atmel_captouch.c", i32 272, i32 11}
!12 = !{ptr @atmel_captouch_driver, !13, !"atmel_captouch_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/misc/atmel_captouch.c", i32 268, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/misc/atmel_captouch.c", i32 177, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @atmel_captouch_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @atmel_captouch_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/misc/atmel_captouch.c", i32 190, i32 3}
!24 = !{ptr @atmel_captouch_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @atmel_captouch_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/misc/atmel_captouch.c", i32 196, i32 3}
!28 = !{ptr @atmel_captouch_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @atmel_captouch_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/misc/atmel_captouch.c", i32 203, i32 24}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/misc/atmel_captouch.c", i32 208, i32 3}
!34 = !{ptr @atmel_captouch_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @atmel_captouch_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/misc/atmel_captouch.c", i32 212, i32 34}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/misc/atmel_captouch.c", i32 215, i32 54}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/misc/atmel_captouch.c", i32 219, i32 41}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/misc/atmel_captouch.c", i32 223, i32 3}
!44 = !{ptr @atmel_captouch_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @atmel_captouch_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/misc/atmel_captouch.c", i32 244, i32 3}
!48 = !{ptr @atmel_captouch_probe._entry.22, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @atmel_captouch_probe._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/misc/atmel_captouch.c", i32 112, i32 3}
!52 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @atmel_read._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @atmel_read._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/misc/atmel_captouch.c", i32 139, i32 3}
!57 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @atmel_captouch_isr._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @atmel_captouch_isr._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/misc/atmel_captouch.c", i32 143, i32 2}
!62 = !{ptr @atmel_captouch_isr.__UNIQUE_ID_ddebug288, !61, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!63 = !{ptr @atmel_captouch_of_id, !64, !"atmel_captouch_of_id", i1 false, i1 false}
!64 = !{!"../drivers/input/misc/atmel_captouch.c", i32 253, i32 34}
!65 = !{ptr @atmel_captouch_id, !66, !"atmel_captouch_id", i1 false, i1 false}
!66 = !{!"../drivers/input/misc/atmel_captouch.c", i32 262, i32 35}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{i64 2148282726, i64 2148282731, i64 2148282744, i64 2148282788, i64 2148282822, i64 2148282843}
