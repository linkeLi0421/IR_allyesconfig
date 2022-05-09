; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/twl4030_keypad.c_pt.bc'
source_filename = "../drivers/input/keyboard/twl4030_keypad.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.twl4030_keypad = type { [128 x i16], [8 x i16], i8, i32, i32, i32, ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.twl4030_keypad_data = type { ptr, i32, i32, i8 }

@__initcall__kmod_twl4030_keypad__228_453_twl4030_kp_driver_init6 = internal global ptr @twl4030_kp_driver_init, section ".initcall6.init", align 4
@twl4030_kp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @twl4030_kp_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @twl4030_keypad_dt_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_twl4030_kp_driver_exit = internal global ptr @twl4030_kp_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author229 = internal constant [40 x i8] c"twl4030_keypad.author=Texas Instruments\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [49 x i8] c"twl4030_keypad.description=TWL4030 Keypad Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [58 x i8] c"twl4030_keypad.file=drivers/input/keyboard/twl4030_keypad\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [27 x i8] c"twl4030_keypad.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias233 = internal constant [45 x i8] c"twl4030_keypad.alias=platform:twl4030_keypad\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"twl4030_keypad\00", [17 x i8] zeroinitializer }, align 32
@twl4030_keypad_dt_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-keypad\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TWL4030 Keypad\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"twl4030_keypad/input0\00", [42 x i8] zeroinitializer }, align 32
@twl4030_kp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 355, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Missing platform_data\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"twl4030_kp_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/input/keyboard/twl4030_keypad.c\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@twl4030_kp_probe._entry_ptr = internal global ptr @twl4030_kp_probe._entry, section ".printk_index", align 4
@twl4030_kp_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 374, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Invalid rows/cols amount specified in platform/devicetree data\0A\00", [32 x i8] zeroinitializer }, align 32
@twl4030_kp_probe._entry_ptr.10 = internal global ptr @twl4030_kp_probe._entry.8, section ".printk_index", align 4
@twl4030_kp_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 387, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to build keymap\0A\00", [40 x i8] zeroinitializer }, align 32
@twl4030_kp_probe._entry_ptr.13 = internal global ptr @twl4030_kp_probe._entry.11, section ".printk_index", align 4
@twl4030_kp_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 399, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Unable to register twl4030 keypad device\0A\00", [54 x i8] zeroinitializer }, align 32
@twl4030_kp_probe._entry_ptr.16 = internal global ptr @twl4030_kp_probe._entry.14, section ".printk_index", align 4
@twl4030_kp_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 417, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"request_irq failed for irq no=%d: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@twl4030_kp_probe._entry_ptr.20 = internal global ptr @twl4030_kp_probe._entry.17, section ".printk_index", align 4
@twl4030_kpread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.5, i32 133, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Couldn't read TWL4030: %X - ret %d[%x]\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"twl4030_kpread\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@twl4030_kpread._entry_ptr = internal global ptr @twl4030_kpread._entry, section ".printk_index", align 4
@twl4030_kp_scan.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.5, ptr @.str.25, i8 0, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"twl4030_kp_scan\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"key [%d:%d] %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"press\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"release\00", [24 x i8] zeroinitializer }, align 32
@twl4030_kpwrite_u8._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.5, i32 145, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Could not write TWL4030: %X - ret %d[%x]\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"twl4030_kpwrite_u8\00", [45 x i8] zeroinitializer }, align 32
@twl4030_kpwrite_u8._entry_ptr = internal global ptr @twl4030_kpwrite_u8._entry, section ".printk_index", align 4
@___asan_gen_.30 = private unnamed_addr constant [18 x i8] c"twl4030_kp_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 446, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 449, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [30 x i8] c"twl4030_keypad_dt_match_table\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 433, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 345, i32 17 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 346, i32 17 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 355, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 373, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 387, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 398, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 416, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 131, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 227, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private constant [43 x i8] c"../drivers/input/keyboard/twl4030_keypad.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 143, i32 3 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_alias233, ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_twl4030_kp_driver_exit, ptr @__initcall__kmod_twl4030_keypad__228_453_twl4030_kp_driver_init6, ptr @twl4030_kp_driver_exit, ptr @twl4030_kp_probe._entry, ptr @twl4030_kp_probe._entry.11, ptr @twl4030_kp_probe._entry.14, ptr @twl4030_kp_probe._entry.17, ptr @twl4030_kp_probe._entry.8, ptr @twl4030_kp_probe._entry_ptr, ptr @twl4030_kp_probe._entry_ptr.10, ptr @twl4030_kp_probe._entry_ptr.13, ptr @twl4030_kp_probe._entry_ptr.16, ptr @twl4030_kp_probe._entry_ptr.20, ptr @twl4030_kpread._entry, ptr @twl4030_kpread._entry_ptr, ptr @twl4030_kpwrite_u8._entry, ptr @twl4030_kpwrite_u8._entry_ptr, ptr @twl4030_kp_driver, ptr @.str, ptr @twl4030_keypad_dt_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_kp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_keypad_dt_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_kp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_kp_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_kp_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_kp_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_kp_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_kpread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_kpwrite_u8._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_kp_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @twl4030_kp_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @twl4030_kp_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @twl4030_kp_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_kp_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.addr.i.i161 = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  %new_state.i.i = alloca [8 x i8], align 8
  %val.addr.i.i80.i = alloca i8, align 1
  %val.addr.i.i74.i = alloca i8, align 1
  %val.addr.i.i68.i = alloca i8, align 1
  %val.addr.i.i62.i = alloca i8, align 1
  %val.addr.i.i56.i = alloca i8, align 1
  %val.addr.i.i50.i = alloca i8, align 1
  %val.addr.i.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 296, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #5
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %dbg_dev = getelementptr inbounds %struct.twl4030_keypad, ptr %call.i, i32 0, i32 6
  %2 = ptrtoint ptr %dbg_dev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dbg_dev, align 4
  %input9 = getelementptr inbounds %struct.twl4030_keypad, ptr %call.i, i32 0, i32 7
  %3 = ptrtoint ptr %input9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %input9, align 4
  %4 = ptrtoint ptr %call4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.1, ptr %call4, align 8
  %phys = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 1
  %5 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.2, ptr %phys, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 3
  %6 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 25, ptr %id, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %vendor, align 2
  %product = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %product, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 3, ptr %version, align 2
  %tobool13.not = icmp eq ptr %1, null
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end7
  %rows = getelementptr inbounds %struct.twl4030_keypad_data, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %rows to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rows, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool15.not = icmp eq i32 %11, 0
  br i1 %tobool15.not, label %if.then14.do.end_crit_edge, label %lor.lhs.false

if.then14.do.end_crit_edge:                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %if.then14
  %cols = getelementptr inbounds %struct.twl4030_keypad_data, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %cols to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cols, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool16.not = icmp eq i32 %13, 0
  br i1 %tobool16.not, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false17

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %tobool19.not = icmp eq ptr %15, null
  br i1 %tobool19.not, label %lor.lhs.false17.do.end_crit_edge, label %if.end22

lor.lhs.false17.do.end_crit_edge:                 ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false17.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %if.then14.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #7
  %n_rows = getelementptr inbounds %struct.twl4030_keypad, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %n_rows to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %11, ptr %n_rows, align 4
  %17 = ptrtoint ptr %cols to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cols, align 4
  %n_cols = getelementptr inbounds %struct.twl4030_keypad, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %n_cols to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %n_cols, align 4
  %rep = getelementptr inbounds %struct.twl4030_keypad_data, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %rep to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rep, align 4, !range !73
  %autorepeat = getelementptr inbounds %struct.twl4030_keypad, ptr %call.i, i32 0, i32 2
  %22 = ptrtoint ptr %autorepeat to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %autorepeat, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  br label %if.end35

if.else:                                          ; preds = %if.end7
  %n_rows28 = getelementptr inbounds %struct.twl4030_keypad, ptr %call.i, i32 0, i32 3
  %n_cols29 = getelementptr inbounds %struct.twl4030_keypad, ptr %call.i, i32 0, i32 4
  %call30 = tail call i32 @matrix_keypad_parse_properties(ptr noundef %dev, ptr noundef %n_rows28, ptr noundef %n_cols29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end33:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %autorepeat34 = getelementptr inbounds %struct.twl4030_keypad, ptr %call.i, i32 0, i32 2
  %25 = ptrtoint ptr %autorepeat34 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %autorepeat34, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end33, %if.end22
  %keymap_data.0 = phi ptr [ %24, %if.end22 ], [ null, %if.end33 ]
  %n_rows36 = getelementptr inbounds %struct.twl4030_keypad, ptr %call.i, i32 0, i32 3
  %26 = ptrtoint ptr %n_rows36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n_rows36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %27)
  %cmp = icmp ugt i32 %27, 8
  br i1 %cmp, label %if.end35.do.end43_crit_edge, label %lor.lhs.false37

if.end35.do.end43_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end43

lor.lhs.false37:                                  ; preds = %if.end35
  %n_cols38 = getelementptr inbounds %struct.twl4030_keypad, ptr %call.i, i32 0, i32 4
  %28 = ptrtoint ptr %n_cols38 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %n_cols38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %29)
  %cmp39 = icmp ugt i32 %29, 8
  br i1 %cmp39, label %lor.lhs.false37.do.end43_crit_edge, label %if.end45

lor.lhs.false37.do.end43_crit_edge:               ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end43

do.end43:                                         ; preds = %lor.lhs.false37.do.end43_crit_edge, %if.end35.do.end43_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end45:                                         ; preds = %lor.lhs.false37
  %call46 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  %irq = getelementptr inbounds %struct.twl4030_keypad, ptr %call.i, i32 0, i32 5
  %30 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call46, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp48 = icmp slt i32 %call46, 0
  br i1 %cmp48, label %if.end45.cleanup_crit_edge, label %if.end51

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end51:                                         ; preds = %if.end45
  %call52 = tail call i32 @matrix_keypad_build_keymap(ptr noundef %keymap_data.0, ptr noundef null, i32 noundef 8, i32 noundef 16, ptr noundef nonnull %call.i, ptr noundef nonnull %call4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end59, label %do.end57

do.end57:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %dbg_dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dbg_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.12) #8
  br label %cleanup

if.end59:                                         ; preds = %if.end51
  tail call void @input_set_capability(ptr noundef nonnull %call4, i32 noundef 4, i32 noundef 4) #5
  %autorepeat60 = getelementptr inbounds %struct.twl4030_keypad, ptr %call.i, i32 0, i32 2
  %33 = ptrtoint ptr %autorepeat60 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %autorepeat60, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool61.not = icmp eq i8 %34, 0
  br i1 %tobool61.not, label %if.end59.if.end64_crit_edge, label %if.then62

if.end59.if.end64_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

if.then62:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 5
  %35 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %evbit, align 4
  %or.i = or i32 %36, 1048576
  store i32 %or.i, ptr %evbit, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end59.if.end64_crit_edge
  %call65 = tail call i32 @input_register_device(ptr noundef nonnull %call4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end72, label %do.end70

do.end70:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %dbg_dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dbg_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.15) #8
  br label %cleanup

if.end72:                                         ; preds = %if.end64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i.i) #5
  %39 = ptrtoint ptr %val.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 75, ptr %val.addr.i.i.i, align 1
  %call.i.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 13, ptr noundef nonnull %val.addr.i.i.i, i8 noundef zeroext 0, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %twl4030_kpwrite_u8.exit.thread.i, label %if.end.i

twl4030_kpwrite_u8.exit.thread.i:                 ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %dbg_dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dbg_dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.28, i32 noundef 0, i32 noundef %call.i.i.i, i32 noundef %call.i.i.i) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end72
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i50.i) #5
  %42 = ptrtoint ptr %val.addr.i.i50.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 35, ptr %val.addr.i.i50.i, align 1
  %call.i.i51.i = call i32 @twl_i2c_write(i8 noundef zeroext 13, ptr noundef nonnull %val.addr.i.i50.i, i8 noundef zeroext 22, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i50.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i51.i)
  %cmp.i52.i = icmp slt i32 %call.i.i51.i, 0
  br i1 %cmp.i52.i, label %twl4030_kpwrite_u8.exit55.thread.i, label %if.end4.i

twl4030_kpwrite_u8.exit55.thread.i:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %dbg_dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dbg_dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str.28, i32 noundef 22, i32 noundef %call.i.i51.i, i32 noundef %call.i.i51.i) #8
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i56.i) #5
  %45 = ptrtoint ptr %val.addr.i.i56.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -128, ptr %val.addr.i.i56.i, align 1
  %call.i.i57.i = call i32 @twl_i2c_write(i8 noundef zeroext 13, ptr noundef nonnull %val.addr.i.i56.i, i8 noundef zeroext 3, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i56.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i57.i)
  %cmp.i58.i = icmp slt i32 %call.i.i57.i, 0
  br i1 %cmp.i58.i, label %twl4030_kpwrite_u8.exit61.thread.i, label %if.end8.i

twl4030_kpwrite_u8.exit61.thread.i:               ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %dbg_dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dbg_dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %47, ptr noundef nonnull @.str.28, i32 noundef 3, i32 noundef %call.i.i57.i, i32 noundef %call.i.i57.i) #8
  br label %cleanup

if.end8.i:                                        ; preds = %if.end4.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i62.i) #5
  %48 = ptrtoint ptr %val.addr.i.i62.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 19, ptr %val.addr.i.i62.i, align 1
  %call.i.i63.i = call i32 @twl_i2c_write(i8 noundef zeroext 13, ptr noundef nonnull %val.addr.i.i62.i, i8 noundef zeroext 1, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i62.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i63.i)
  %cmp.i64.i = icmp slt i32 %call.i.i63.i, 0
  br i1 %cmp.i64.i, label %twl4030_kpwrite_u8.exit67.thread.i, label %if.end13.i

twl4030_kpwrite_u8.exit67.thread.i:               ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %dbg_dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dbg_dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.28, i32 noundef 1, i32 noundef %call.i.i63.i, i32 noundef %call.i.i63.i) #8
  br label %cleanup

if.end13.i:                                       ; preds = %if.end8.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i68.i) #5
  %51 = ptrtoint ptr %val.addr.i.i68.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -56, ptr %val.addr.i.i68.i, align 1
  %call.i.i69.i = call i32 @twl_i2c_write(i8 noundef zeroext 13, ptr noundef nonnull %val.addr.i.i68.i, i8 noundef zeroext 4, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i68.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i69.i)
  %cmp.i70.i = icmp slt i32 %call.i.i69.i, 0
  br i1 %cmp.i70.i, label %twl4030_kpwrite_u8.exit73.thread.i, label %if.end19.i

twl4030_kpwrite_u8.exit73.thread.i:               ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %dbg_dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dbg_dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %53, ptr noundef nonnull @.str.28, i32 noundef 4, i32 noundef %call.i.i69.i, i32 noundef %call.i.i69.i) #8
  br label %cleanup

if.end19.i:                                       ; preds = %if.end13.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i74.i) #5
  %54 = ptrtoint ptr %val.addr.i.i74.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %val.addr.i.i74.i, align 1
  %call.i.i75.i = call i32 @twl_i2c_write(i8 noundef zeroext 13, ptr noundef nonnull %val.addr.i.i74.i, i8 noundef zeroext 5, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i74.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i75.i)
  %cmp.i76.i = icmp slt i32 %call.i.i75.i, 0
  br i1 %cmp.i76.i, label %twl4030_kpwrite_u8.exit79.thread.i, label %if.end25.i

twl4030_kpwrite_u8.exit79.thread.i:               ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %dbg_dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dbg_dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %56, ptr noundef nonnull @.str.28, i32 noundef 5, i32 noundef %call.i.i75.i, i32 noundef %call.i.i75.i) #8
  br label %cleanup

if.end25.i:                                       ; preds = %if.end19.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i80.i) #5
  %57 = ptrtoint ptr %val.addr.i.i80.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 6, ptr %val.addr.i.i80.i, align 1
  %call.i.i81.i = call i32 @twl_i2c_write(i8 noundef zeroext 13, ptr noundef nonnull %val.addr.i.i80.i, i8 noundef zeroext 23, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i80.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i81.i)
  %cmp.i82.i = icmp slt i32 %call.i.i81.i, 0
  br i1 %cmp.i82.i, label %twl4030_kpwrite_u8.exit85.thread.i, label %if.end30.i

twl4030_kpwrite_u8.exit85.thread.i:               ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %dbg_dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dbg_dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %59, ptr noundef nonnull @.str.28, i32 noundef 23, i32 noundef %call.i.i81.i, i32 noundef %call.i.i81.i) #8
  br label %cleanup

if.end30.i:                                       ; preds = %if.end25.i
  %kp_state.i = getelementptr inbounds %struct.twl4030_keypad, ptr %call.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new_state.i.i) #5
  %60 = ptrtoint ptr %new_state.i.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 -1, ptr %new_state.i.i, align 8
  %61 = ptrtoint ptr %n_rows36 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %n_rows36, align 4
  %conv1.i.i.i = and i32 %62, 255
  %call.i.i86.i = call i32 @twl_i2c_read(i8 noundef zeroext 13, ptr noundef nonnull %new_state.i.i, i8 noundef zeroext 9, i32 noundef %conv1.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i86.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i86.i, 0
  br i1 %cmp.i.i.i, label %twl4030_kp_program.exit, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %if.end30.i
  %63 = ptrtoint ptr %n_rows36 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %n_rows36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp316.not.i.i = icmp eq i32 %64, 0
  br i1 %cmp316.not.i.i, label %for.cond.preheader.i.i.if.end76_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.if.end76_crit_edge:        ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

for.body.i.i:                                     ; preds = %twl4030_col_xlate.exit.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %row.017.i.i = phi i32 [ %inc.i.i, %twl4030_col_xlate.exit.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [8 x i8], ptr %new_state.i.i, i32 0, i32 %row.017.i.i
  %65 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %66)
  %cmp.i14.i.i = icmp eq i8 %66, -1
  br i1 %cmp.i14.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %n_cols38 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %n_cols38, align 4
  %shl.i.i.i = shl nuw i32 1, %68
  br label %twl4030_col_xlate.exit.i.i

if.else.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.i.i = zext i8 %66 to i32
  %69 = ptrtoint ptr %n_cols38 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %n_cols38, align 4
  %notmask.i.i.i = shl nsw i32 -1, %70
  %sub.i.i.i = xor i32 %notmask.i.i.i, -1
  %and.i.i.i = and i32 %sub.i.i.i, %conv.i.i.i
  br label %twl4030_col_xlate.exit.i.i

twl4030_col_xlate.exit.i.i:                       ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.in.i.i.i = phi i32 [ %shl.i.i.i, %if.then.i.i.i ], [ %and.i.i.i, %if.else.i.i.i ]
  %retval.0.i.i.i = trunc i32 %retval.0.in.i.i.i to i16
  %arrayidx6.i.i = getelementptr i16, ptr %kp_state.i, i32 %row.017.i.i
  %71 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %retval.0.i.i.i, ptr %arrayidx6.i.i, align 2
  %inc.i.i = add nuw i32 %row.017.i.i, 1
  %72 = ptrtoint ptr %n_rows36 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %n_rows36, align 4
  %cmp3.i.i = icmp ult i32 %inc.i.i, %73
  br i1 %cmp3.i.i, label %twl4030_col_xlate.exit.i.i.for.body.i.i_crit_edge, label %twl4030_col_xlate.exit.i.i.if.end76_crit_edge

twl4030_col_xlate.exit.i.i.if.end76_crit_edge:    ; preds = %twl4030_col_xlate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

twl4030_col_xlate.exit.i.i.for.body.i.i_crit_edge: ; preds = %twl4030_col_xlate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

twl4030_kp_program.exit:                          ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  %74 = ptrtoint ptr %dbg_dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dbg_dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %75, ptr noundef nonnull @.str.21, i32 noundef 9, i32 noundef %call.i.i86.i, i32 noundef %call.i.i86.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_state.i.i) #5
  br label %cleanup

if.end76:                                         ; preds = %twl4030_col_xlate.exit.i.i.if.end76_crit_edge, %for.cond.preheader.i.i.if.end76_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_state.i.i) #5
  %76 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %irq, align 4
  %78 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pdev, align 8
  %call80 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %77, ptr noundef null, ptr noundef nonnull @do_kp_irq, i32 noundef 0, ptr noundef %79, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end88, label %do.end85

do.end85:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  %80 = ptrtoint ptr %dbg_dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dbg_dev, align 4
  %82 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %81, ptr noundef nonnull @.str.18, i32 noundef %83, i32 noundef %call80) #8
  br label %cleanup

if.end88:                                         ; preds = %if.end76
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #5
  %84 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 -6, ptr %val.addr.i.i, align 1
  %call.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 13, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext 18, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %twl4030_kpwrite_u8.exit.thread, label %twl4030_kpwrite_u8.exit

twl4030_kpwrite_u8.exit.thread:                   ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #7
  %85 = ptrtoint ptr %dbg_dev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dbg_dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %86, ptr noundef nonnull @.str.28, i32 noundef 18, i32 noundef %call.i.i, i32 noundef %call.i.i) #8
  br label %if.then91

twl4030_kpwrite_u8.exit:                          ; preds = %if.end88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool90.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool90.not, label %twl4030_kpwrite_u8.exit.cleanup_crit_edge, label %twl4030_kpwrite_u8.exit.if.then91_crit_edge

twl4030_kpwrite_u8.exit.if.then91_crit_edge:      ; preds = %twl4030_kpwrite_u8.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then91

twl4030_kpwrite_u8.exit.cleanup_crit_edge:        ; preds = %twl4030_kpwrite_u8.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then91:                                        ; preds = %twl4030_kpwrite_u8.exit.if.then91_crit_edge, %twl4030_kpwrite_u8.exit.thread
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i161) #5
  %87 = ptrtoint ptr %val.addr.i.i161 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 -1, ptr %val.addr.i.i161, align 1
  %call.i.i162 = call i32 @twl_i2c_write(i8 noundef zeroext 13, ptr noundef nonnull %val.addr.i.i161, i8 noundef zeroext 18, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i161) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i162)
  %cmp.i163 = icmp slt i32 %call.i.i162, 0
  br i1 %cmp.i163, label %do.end.i165, label %if.then91.cleanup_crit_edge

if.then91.cleanup_crit_edge:                      ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end.i165:                                      ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #7
  %88 = ptrtoint ptr %dbg_dev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dbg_dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %89, ptr noundef nonnull @.str.28, i32 noundef 18, i32 noundef %call.i.i162, i32 noundef %call.i.i162) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end.i165, %if.then91.cleanup_crit_edge, %twl4030_kpwrite_u8.exit.cleanup_crit_edge, %do.end85, %twl4030_kp_program.exit, %twl4030_kpwrite_u8.exit85.thread.i, %twl4030_kpwrite_u8.exit79.thread.i, %twl4030_kpwrite_u8.exit73.thread.i, %twl4030_kpwrite_u8.exit67.thread.i, %twl4030_kpwrite_u8.exit61.thread.i, %twl4030_kpwrite_u8.exit55.thread.i, %twl4030_kpwrite_u8.exit.thread.i, %do.end70, %do.end57, %if.end45.cleanup_crit_edge, %do.end43, %if.else.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end43 ], [ %call52, %do.end57 ], [ %call65, %do.end70 ], [ %call80, %do.end85 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call30, %if.else.cleanup_crit_edge ], [ %call46, %if.end45.cleanup_crit_edge ], [ -5, %twl4030_kp_program.exit ], [ 0, %twl4030_kpwrite_u8.exit.cleanup_crit_edge ], [ -5, %if.then91.cleanup_crit_edge ], [ -5, %do.end.i165 ], [ -5, %twl4030_kpwrite_u8.exit.thread.i ], [ -5, %twl4030_kpwrite_u8.exit55.thread.i ], [ -5, %twl4030_kpwrite_u8.exit61.thread.i ], [ -5, %twl4030_kpwrite_u8.exit67.thread.i ], [ -5, %twl4030_kpwrite_u8.exit73.thread.i ], [ -5, %twl4030_kpwrite_u8.exit79.thread.i ], [ -5, %twl4030_kpwrite_u8.exit85.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matrix_keypad_parse_properties(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matrix_keypad_build_keymap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_kp_irq(i32 noundef %irq, ptr nocapture noundef %_kp) #2 align 64 {
entry:
  %reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #5
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reg, align 1, !annotation !74
  %call.i = call i32 @twl_i2c_read(i8 noundef zeroext 13, ptr noundef nonnull %reg, i8 noundef zeroext 17, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %twl4030_kpread.exit, label %land.lhs.true

twl4030_kpread.exit:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dbg_dev.i = getelementptr inbounds %struct.twl4030_keypad, ptr %_kp, i32 0, i32 6
  %1 = ptrtoint ptr %dbg_dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dbg_dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.21, i32 noundef 17, i32 noundef %call.i, i32 noundef %call.i) #8
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %reg, align 1
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %twl4030_kpread.exit
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %.sink = phi i1 [ true, %if.else ], [ false, %land.lhs.true.if.end_crit_edge ]
  call fastcc void @twl4030_kp_scan(ptr noundef %_kp, i1 noundef zeroext %.sink)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #5
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_read(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @twl4030_kp_scan(ptr nocapture noundef %kp, i1 noundef zeroext %release_all) unnamed_addr #2 align 64 {
entry:
  %new_state.i = alloca [8 x i8], align 8
  %new_state = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %input1 = getelementptr inbounds %struct.twl4030_keypad, ptr %kp, i32 0, i32 7
  %0 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %new_state) #5
  %2 = call ptr @memset(ptr %new_state, i32 255, i32 16)
  br i1 %release_all, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = call ptr @memset(ptr %new_state, i32 0, i32 16)
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new_state.i) #5
  %n_rows.i = getelementptr inbounds %struct.twl4030_keypad, ptr %kp, i32 0, i32 3
  %4 = ptrtoint ptr %new_state.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %new_state.i, align 8
  %5 = ptrtoint ptr %n_rows.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n_rows.i, align 4
  %conv1.i.i = and i32 %6, 255
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 13, ptr noundef nonnull %new_state.i, i8 noundef zeroext 9, i32 noundef %conv1.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %twl4030_read_kp_matrix_state.exit.thread, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.else
  %7 = ptrtoint ptr %n_rows.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n_rows.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp316.not.i = icmp eq i32 %8, 0
  br i1 %cmp316.not.i, label %if.end.thread, label %for.body.lr.ph.i

if.end.thread:                                    ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_state.i) #5
  br label %if.end8

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %n_cols4.i.i = getelementptr inbounds %struct.twl4030_keypad, ptr %kp, i32 0, i32 4
  br label %for.body.i

twl4030_read_kp_matrix_state.exit.thread:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %dbg_dev.i.i = getelementptr inbounds %struct.twl4030_keypad, ptr %kp, i32 0, i32 6
  %9 = ptrtoint ptr %dbg_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dbg_dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.21, i32 noundef 9, i32 noundef %call.i.i, i32 noundef %call.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_state.i) #5
  br label %cleanup54

for.body.i:                                       ; preds = %twl4030_col_xlate.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %row.017.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %twl4030_col_xlate.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [8 x i8], ptr %new_state.i, i32 0, i32 %row.017.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp.i14.i = icmp eq i8 %12, -1
  br i1 %cmp.i14.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %n_cols4.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_cols4.i.i, align 4
  %shl.i.i = shl nuw i32 1, %14
  br label %twl4030_col_xlate.exit.i

if.else.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.i = zext i8 %12 to i32
  %15 = ptrtoint ptr %n_cols4.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n_cols4.i.i, align 4
  %notmask.i.i = shl nsw i32 -1, %16
  %sub.i.i = xor i32 %notmask.i.i, -1
  %and.i.i = and i32 %sub.i.i, %conv.i.i
  br label %twl4030_col_xlate.exit.i

twl4030_col_xlate.exit.i:                         ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.in.i.i = phi i32 [ %shl.i.i, %if.then.i.i ], [ %and.i.i, %if.else.i.i ]
  %retval.0.i.i = trunc i32 %retval.0.in.i.i to i16
  %arrayidx6.i = getelementptr i16, ptr %new_state, i32 %row.017.i
  %17 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %retval.0.i.i, ptr %arrayidx6.i, align 2
  %inc.i = add nuw i32 %row.017.i, 1
  %exitcond.not = icmp eq i32 %inc.i, %8
  br i1 %exitcond.not, label %if.end, label %twl4030_col_xlate.exit.i.for.body.i_crit_edge

twl4030_col_xlate.exit.i.for.body.i_crit_edge:    ; preds = %twl4030_col_xlate.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end:                                           ; preds = %twl4030_col_xlate.exit.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_state.i) #5
  %18 = ptrtoint ptr %n_rows.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load i32, ptr %n_rows.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp182.not.i = icmp eq i32 %.pr, 0
  br i1 %cmp182.not.i, label %if.end.if.end8_crit_edge, label %if.end.for.body.i91_crit_edge

if.end.for.body.i91_crit_edge:                    ; preds = %if.end
  br label %for.body.i91

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

for.body.i91:                                     ; preds = %for.inc.i.for.body.i91_crit_edge, %if.end.for.body.i91_crit_edge
  %check.0184.i = phi i16 [ %or172.i, %for.inc.i.for.body.i91_crit_edge ], [ 0, %if.end.for.body.i91_crit_edge ]
  %i.0183.i = phi i32 [ %inc.i93, %for.inc.i.for.body.i91_crit_edge ], [ 0, %if.end.for.body.i91_crit_edge ]
  %arrayidx.i90 = getelementptr i16, ptr %new_state, i32 %i.0183.i
  %19 = ptrtoint ptr %arrayidx.i90 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx.i90, align 2
  %and171.i = and i16 %20, %check.0184.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and171.i)
  %tobool.not.i = icmp eq i16 %and171.i, 0
  br i1 %tobool.not.i, label %for.body.i91.for.inc.i_crit_edge, label %cond.false.i

for.body.i91.for.inc.i_crit_edge:                 ; preds = %for.body.i91
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

cond.false.i:                                     ; preds = %for.body.i91
  %conv.i = zext i16 %20 to i32
  %call.i.i92 = call i32 @__sw_hweight16(i32 noundef %conv.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i92)
  %cmp141.i = icmp ugt i32 %call.i.i92, 1
  br i1 %cmp141.i, label %cond.false.i.cleanup54_crit_edge, label %cond.false.i.for.inc.i_crit_edge

cond.false.i.for.inc.i_crit_edge:                 ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

cond.false.i.cleanup54_crit_edge:                 ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup54

for.inc.i:                                        ; preds = %cond.false.i.for.inc.i_crit_edge, %for.body.i91.for.inc.i_crit_edge
  %or172.i = or i16 %20, %check.0184.i
  %inc.i93 = add nuw i32 %i.0183.i, 1
  %21 = ptrtoint ptr %n_rows.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n_rows.i, align 4
  %cmp.i = icmp ult i32 %inc.i93, %22
  br i1 %cmp.i, label %for.inc.i.for.body.i91_crit_edge, label %for.inc.i.if.end8_crit_edge

for.inc.i.if.end8_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

for.inc.i.for.body.i91_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i91

if.end8:                                          ; preds = %for.inc.i.if.end8_crit_edge, %if.end.if.end8_crit_edge, %if.end.thread, %if.then
  %n_rows = getelementptr inbounds %struct.twl4030_keypad, ptr %kp, i32 0, i32 3
  %23 = ptrtoint ptr %n_rows to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n_rows, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp9103.not = icmp eq i32 %24, 0
  br i1 %cmp9103.not, label %if.end8.for.end53_crit_edge, label %for.body.lr.ph

if.end8.for.end53_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end53

for.body.lr.ph:                                   ; preds = %if.end8
  %n_cols = getelementptr inbounds %struct.twl4030_keypad, ptr %kp, i32 0, i32 4
  %dbg_dev = getelementptr inbounds %struct.twl4030_keypad, ptr %kp, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %cleanup48.for.body_crit_edge, %for.body.lr.ph
  %row.0104 = phi i32 [ 0, %for.body.lr.ph ], [ %inc52, %cleanup48.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x i16], ptr %new_state, i32 0, i32 %row.0104
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx, align 2
  %arrayidx10 = getelementptr %struct.twl4030_keypad, ptr %kp, i32 0, i32 1, i32 %row.0104
  %27 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx10, align 2
  %xor88 = xor i16 %28, %26
  %xor = zext i16 %xor88 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor88)
  %tobool12.not = icmp eq i16 %xor88, 0
  br i1 %tobool12.not, label %for.body.cleanup48_crit_edge, label %for.cond15.preheader

for.body.cleanup48_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup48

for.cond15.preheader:                             ; preds = %for.body
  %29 = ptrtoint ptr %n_cols to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %n_cols, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp16100.not = icmp eq i32 %30, -1
  br i1 %cmp16100.not, label %for.cond15.preheader.for.end_crit_edge, label %for.body18.lr.ph

for.cond15.preheader.for.end_crit_edge:           ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body18.lr.ph:                                 ; preds = %for.cond15.preheader
  %conv29 = zext i16 %26 to i32
  %shl34 = shl i32 %row.0104, 4
  br label %for.body18

for.body18:                                       ; preds = %cleanup42.for.body18_crit_edge, %for.body18.lr.ph
  %col.0101 = phi i32 [ 0, %for.body18.lr.ph ], [ %inc, %cleanup42.for.body18_crit_edge ]
  %shl = shl nuw i32 1, %col.0101
  %and = and i32 %shl, %xor
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %for.body18.cleanup42_crit_edge, label %do.body

for.body18.cleanup42_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup42

do.body:                                          ; preds = %for.body18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl4030_kp_scan.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl4030_kp_scan, %if.then27)) #5
          to label %do.end [label %if.then27], !srcloc !75

if.then27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %dbg_dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dbg_dev, align 4
  %and31 = and i32 %shl, %conv29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %cond = select i1 %tobool32.not, ptr @.str.27, ptr @.str.26
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl4030_kp_scan.__UNIQUE_ID_ddebug227, ptr noundef %32, ptr noundef nonnull @.str.25, i32 noundef %row.0104, i32 noundef %col.0101, ptr noundef nonnull %cond) #5
  br label %do.end

do.end:                                           ; preds = %if.then27, %do.body
  %add35 = add i32 %col.0101, %shl34
  call void @input_event(ptr noundef %1, i32 noundef 4, i32 noundef 4, i32 noundef %add35) #5
  %arrayidx36 = getelementptr [128 x i16], ptr %kp, i32 0, i32 %add35
  %33 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx36, align 2
  %conv37 = zext i16 %34 to i32
  %35 = lshr i32 %conv29, %col.0101
  %36 = and i32 %35, 1
  call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %conv37, i32 noundef %36) #5
  br label %cleanup42

cleanup42:                                        ; preds = %do.end, %for.body18.cleanup42_crit_edge
  %inc = add nuw i32 %col.0101, 1
  %37 = ptrtoint ptr %n_cols to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %n_cols, align 4
  %add = add i32 %38, 1
  %cmp16 = icmp ult i32 %inc, %add
  br i1 %cmp16, label %cleanup42.for.body18_crit_edge, label %cleanup42.for.end_crit_edge

cleanup42.for.end_crit_edge:                      ; preds = %cleanup42
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

cleanup42.for.body18_crit_edge:                   ; preds = %cleanup42
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body18

for.end:                                          ; preds = %cleanup42.for.end_crit_edge, %for.cond15.preheader.for.end_crit_edge
  %39 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %26, ptr %arrayidx10, align 2
  br label %cleanup48

cleanup48:                                        ; preds = %for.end, %for.body.cleanup48_crit_edge
  %inc52 = add nuw i32 %row.0104, 1
  %40 = ptrtoint ptr %n_rows to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %n_rows, align 4
  %cmp9 = icmp ult i32 %inc52, %41
  br i1 %cmp9, label %cleanup48.for.body_crit_edge, label %cleanup48.for.end53_crit_edge

cleanup48.for.end53_crit_edge:                    ; preds = %cleanup48
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end53

cleanup48.for.body_crit_edge:                     ; preds = %cleanup48
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end53:                                        ; preds = %cleanup48.for.end53_crit_edge, %if.end8.for.end53_crit_edge
  call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %cleanup54

cleanup54:                                        ; preds = %for.end53, %cond.false.i.cleanup54_crit_edge, %twl4030_read_kp_matrix_state.exit.thread
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %new_state) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight16(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_write(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !50, !51, !53, !54, !55, !56, !57, !59, !60, !61, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__initcall__kmod_twl4030_keypad__228_453_twl4030_kp_driver_init6, !1, !"__initcall__kmod_twl4030_keypad__228_453_twl4030_kp_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/twl4030_keypad.c", i32 453, i32 1}
!2 = !{ptr @__exitcall_twl4030_kp_driver_exit, !1, !"__exitcall_twl4030_kp_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author229, !4, !"__UNIQUE_ID_author229", i1 false, i1 false}
!4 = !{!"../drivers/input/keyboard/twl4030_keypad.c", i32 455, i32 1}
!5 = !{ptr @__UNIQUE_ID_description230, !6, !"__UNIQUE_ID_description230", i1 false, i1 false}
!6 = !{!"../drivers/input/keyboard/twl4030_keypad.c", i32 456, i32 1}
!7 = !{ptr @__UNIQUE_ID_file231, !8, !"__UNIQUE_ID_file231", i1 false, i1 false}
!8 = !{!"../drivers/input/keyboard/twl4030_keypad.c", i32 457, i32 1}
!9 = !{ptr @__UNIQUE_ID_license232, !8, !"__UNIQUE_ID_license232", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias233, !11, !"__UNIQUE_ID_alias233", i1 false, i1 false}
!11 = !{!"../drivers/input/keyboard/twl4030_keypad.c", i32 458, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/keyboard/twl4030_keypad.c", i32 449, i32 11}
!14 = !{ptr @twl4030_kp_driver, !15, !"twl4030_kp_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/keyboard/twl4030_keypad.c", i32 446, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/keyboard/twl4030_keypad.c", i32 345, i32 17}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/input/keyboard/twl4030_keypad.c", i32 346, i32 17}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/input/keyboard/twl4030_keypad.c", i32 355, i32 4}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @twl4030_kp_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @twl4030_kp_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/keyboard/twl4030_keypad.c", i32 373, i32 3}
!30 = !{ptr @twl4030_kp_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @twl4030_kp_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/keyboard/twl4030_keypad.c", i32 387, i32 3}
!34 = !{ptr @twl4030_kp_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @twl4030_kp_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/keyboard/twl4030_keypad.c", i32 398, i32 3}
!38 = !{ptr @twl4030_kp_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @twl4030_kp_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/keyboard/twl4030_keypad.c", i32 416, i32 3}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @twl4030_kp_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @twl4030_kp_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/keyboard/twl4030_keypad.c", i32 131, i32 3}
!47 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @twl4030_kpread._entry, !46, !"_entry", i1 false, i1 false}
!50 = !{ptr @twl4030_kpread._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/input/keyboard/twl4030_keypad.c", i32 227, i32 4}
!53 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @twl4030_kp_scan.__UNIQUE_ID_ddebug227, !52, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!55 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/input/keyboard/twl4030_keypad.c", i32 143, i32 3}
!59 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @twl4030_kpwrite_u8._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @twl4030_kpwrite_u8._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @twl4030_keypad_dt_match_table, !63, !"twl4030_keypad_dt_match_table", i1 false, i1 false}
!63 = !{!"../drivers/input/keyboard/twl4030_keypad.c", i32 433, i32 34}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i8 0, i8 2}
!74 = !{!"auto-init"}
!75 = !{i64 2148701492, i64 2148701497, i64 2148701510, i64 2148701554, i64 2148701588, i64 2148701609}
