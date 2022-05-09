; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/omap4-keypad.c_pt.bc'
source_filename = "../drivers/input/keyboard/omap4-keypad.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.omap4_keypad = type { ptr, ptr, i32, %struct.mutex, i32, i32, i32, i32, i32, i8, i64, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_omap4_keypad__228_498_omap4_keypad_driver_init6 = internal global ptr @omap4_keypad_driver_init, section ".initcall6.init", align 4
@omap4_keypad_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @omap4_keypad_probe, ptr @omap4_keypad_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_keypad_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap4_keypad_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_omap4_keypad_driver_exit = internal global ptr @omap4_keypad_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author229 = internal constant [38 x i8] c"omap4_keypad.author=Texas Instruments\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [45 x i8] c"omap4_keypad.description=OMAP4 Keypad Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [54 x i8] c"omap4_keypad.file=drivers/input/keyboard/omap4-keypad\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [25 x i8] c"omap4_keypad.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias233 = internal constant [41 x i8] c"omap4_keypad.alias=platform:omap4-keypad\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"omap4-keypad\00", [19 x i8] zeroinitializer }, align 32
@omap_keypad_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-keypad\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@omap4_keypad_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap4_keypad_runtime_suspend, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@omap4_keypad_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 355, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no base address specified\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"omap4_keypad_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/input/keyboard/omap4-keypad.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap4_keypad_probe._entry_ptr = internal global ptr @omap4_keypad_probe._entry, section ".printk_index", align 4
@omap4_keypad_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 365, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"keypad_data memory allocation failed\0A\00", [58 x i8] zeroinitializer }, align 32
@omap4_keypad_probe._entry_ptr.8 = internal global ptr @omap4_keypad_probe._entry.6, section ".printk_index", align 4
@omap4_keypad_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&keypad_data->lock\00", [45 x i8] zeroinitializer }, align 32
@omap4_keypad_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 387, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unable to register cleanup action\0A\00", [61 x i8] zeroinitializer }, align 32
@omap4_keypad_probe._entry_ptr.12 = internal global ptr @omap4_keypad_probe._entry.10, section ".printk_index", align 4
@omap4_keypad_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 397, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pm_runtime_get_sync() failed\0A\00", [34 x i8] zeroinitializer }, align 32
@omap4_keypad_probe._entry_ptr.15 = internal global ptr @omap4_keypad_probe._entry.13, section ".printk_index", align 4
@omap4_keypad_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 440, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Not enough memory for keymap\0A\00", [34 x i8] zeroinitializer }, align 32
@omap4_keypad_probe._entry_ptr.18 = internal global ptr @omap4_keypad_probe._entry.16, section ".printk_index", align 4
@omap4_keypad_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 448, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to build keymap\0A\00", [40 x i8] zeroinitializer }, align 32
@omap4_keypad_probe._entry_ptr.21 = internal global ptr @omap4_keypad_probe._entry.19, section ".printk_index", align 4
@omap4_keypad_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 458, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to register interrupt\0A\00", [34 x i8] zeroinitializer }, align 32
@omap4_keypad_probe._entry_ptr.24 = internal global ptr @omap4_keypad_probe._entry.22, section ".printk_index", align 4
@omap4_keypad_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 464, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register input device\0A\00", [63 x i8] zeroinitializer }, align 32
@omap4_keypad_probe._entry_ptr.27 = internal global ptr @omap4_keypad_probe._entry.25, section ".printk_index", align 4
@omap4_keypad_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 471, ptr @.str.30, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to set up wakeup irq: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@omap4_keypad_probe._entry_ptr.31 = internal global ptr @omap4_keypad_probe._entry.28, section ".printk_index", align 4
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"linux,input-no-autorepeat\00", [38 x i8] zeroinitializer }, align 32
@omap4_keypad_check_revision._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 304, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Keypad reports unsupported revision %d\00", [57 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"omap4_keypad_check_revision\00", [36 x i8] zeroinitializer }, align 32
@omap4_keypad_check_revision._entry_ptr = internal global ptr @omap4_keypad_check_revision._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.35 = private unnamed_addr constant [20 x i8] c"omap4_keypad_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 489, i32 31 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 493, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [21 x i8] c"omap_keypad_dt_match\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 483, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant [20 x i8] c"omap4_keypad_pm_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 333, i32 32 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 355, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 365, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 370, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 387, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 397, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 440, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 448, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 458, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 464, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 471, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 280, i32 26 }
@___asan_gen_.125 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.132 = private constant [41 x i8] c"../drivers/input/keyboard/omap4-keypad.c\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 304, i32 3 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_alias233, ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_omap4_keypad_driver_exit, ptr @__initcall__kmod_omap4_keypad__228_498_omap4_keypad_driver_init6, ptr @omap4_keypad_check_revision._entry, ptr @omap4_keypad_check_revision._entry_ptr, ptr @omap4_keypad_driver_exit, ptr @omap4_keypad_probe._entry, ptr @omap4_keypad_probe._entry.10, ptr @omap4_keypad_probe._entry.13, ptr @omap4_keypad_probe._entry.16, ptr @omap4_keypad_probe._entry.19, ptr @omap4_keypad_probe._entry.22, ptr @omap4_keypad_probe._entry.25, ptr @omap4_keypad_probe._entry.28, ptr @omap4_keypad_probe._entry.6, ptr @omap4_keypad_probe._entry_ptr, ptr @omap4_keypad_probe._entry_ptr.12, ptr @omap4_keypad_probe._entry_ptr.15, ptr @omap4_keypad_probe._entry_ptr.18, ptr @omap4_keypad_probe._entry_ptr.21, ptr @omap4_keypad_probe._entry_ptr.24, ptr @omap4_keypad_probe._entry_ptr.27, ptr @omap4_keypad_probe._entry_ptr.31, ptr @omap4_keypad_probe._entry_ptr.8, ptr @omap4_keypad_driver, ptr @.str, ptr @omap_keypad_dt_match, ptr @omap4_keypad_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @omap4_keypad_probe.__key, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_keypad_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_keypad_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_keypad_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_keypad_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_keypad_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_keypad_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_keypad_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_keypad_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_keypad_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_keypad_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_keypad_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_keypad_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_keypad_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_keypad_check_revision._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_keypad_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap4_keypad_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @omap4_keypad_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap4_keypad_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_keypad_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 144, i32 noundef 3520) #8
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %do.end11, label %if.end12

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #11
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %irq13 = getelementptr inbounds %struct.omap4_keypad, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %irq13 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call3, ptr %irq13, align 8
  %lock = getelementptr inbounds %struct.omap4_keypad, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @omap4_keypad_probe.__key) #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node.i, align 8
  %rows.i = getelementptr inbounds %struct.omap4_keypad, ptr %call.i, i32 0, i32 4
  %cols.i = getelementptr inbounds %struct.omap4_keypad, ptr %call.i, i32 0, i32 5
  %call.i197 = tail call i32 @matrix_keypad_parse_properties(ptr noundef %dev1, ptr noundef %rows.i, ptr noundef %cols.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i197)
  %tobool.not.i = icmp eq i32 %call.i197, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end12
  %call1.i = tail call ptr @of_get_property(ptr noundef %3, ptr noundef nonnull @.str.32, ptr noundef null) #8
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.if.end20_crit_edge, label %if.then3.i

if.end.i.if.end20_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %no_autorepeat.i = getelementptr inbounds %struct.omap4_keypad, ptr %call.i, i32 0, i32 9
  %4 = ptrtoint ptr %no_autorepeat.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %no_autorepeat.i, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then3.i, %if.end.i.if.end20_crit_edge
  %call21 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call) #8
  %base = getelementptr inbounds %struct.omap4_keypad, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call21, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %call21 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end20
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #8
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 25) #8
  tail call void @pm_runtime_enable(ptr noundef %dev1) #8
  %call.i198 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @omap4_disable_pm, ptr noundef %dev1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i198)
  %tobool.not.i199 = icmp eq i32 %call.i198, 0
  br i1 %tobool.not.i199, label %if.end34, label %do.end33

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext false) #8
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #11
  br label %cleanup

if.end34:                                         ; preds = %if.end27
  %call.i201 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i201)
  %tobool36.not = icmp eq i32 %call.i201, 0
  br i1 %tobool36.not, label %if.end41, label %do.end40

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #11
  tail call fastcc void @pm_runtime_put_noidle(ptr noundef %dev1)
  br label %cleanup

if.end41:                                         ; preds = %if.end34
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !80
  %shr.i = lshr i32 %9, 30
  %10 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i, label %if.then48.critedge [
    i32 0, label %if.end41.if.then44_crit_edge
    i32 1, label %sw.bb1.i
  ]

if.end41.if.then44_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then44

sw.bb1.i:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then44

if.then44:                                        ; preds = %sw.bb1.i, %if.end41.if.then44_crit_edge
  %.sink216 = phi i32 [ 16, %sw.bb1.i ], [ %shr.i, %if.end41.if.then44_crit_edge ]
  %.sink = phi i32 [ 12, %sw.bb1.i ], [ %shr.i, %if.end41.if.then44_crit_edge ]
  %reg_offset2.i = getelementptr inbounds %struct.omap4_keypad, ptr %call.i, i32 0, i32 6
  %11 = ptrtoint ptr %reg_offset2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink216, ptr %reg_offset2.i, align 8
  %irqreg_offset3.i = getelementptr inbounds %struct.omap4_keypad, ptr %call.i, i32 0, i32 7
  %12 = ptrtoint ptr %irqreg_offset3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %irqreg_offset3.i, align 4
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %irqreg_offset.i.i = getelementptr inbounds %struct.omap4_keypad, ptr %call.i, i32 0, i32 7
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %.sink
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 0) #8, !srcloc !81
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %reg_offset.i.i = getelementptr inbounds %struct.omap4_keypad, ptr %call.i, i32 0, i32 6
  %17 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg_offset.i.i, align 8
  %add.ptr.i5.i = getelementptr i8, ptr %16, i32 %18
  %add.ptr1.i6.i = getelementptr i8, ptr %add.ptr.i5.i, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i6.i, i32 0) #8, !srcloc !81
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %21 = ptrtoint ptr %irqreg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irqreg_offset.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %20, i32 %22
  %add.ptr1.i10.i = getelementptr i8, ptr %add.ptr.i9.i, i32 24
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i10.i) #8, !srcloc !80
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %26 = ptrtoint ptr %irqreg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irqreg_offset.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %25, i32 %27
  %add.ptr1.i14.i = getelementptr i8, ptr %add.ptr.i13.i, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i14.i, i32 %23) #8, !srcloc !81
  %call.i202 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 22
  %28 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store volatile i64 %call.i202, ptr %last_busy.i, align 8
  %call.i203 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev1, i32 noundef 13) #8
  %call50 = tail call ptr @devm_input_allocate_device(ptr noundef %dev1) #8
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call50, ptr %call.i, align 8
  %tobool51.not = icmp eq ptr %call50, null
  br i1 %tobool51.not, label %if.then44.cleanup_crit_edge, label %if.end53

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then48.critedge:                               ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.33, i32 noundef %shr.i) #11
  %call.i204 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i205 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 22
  %30 = ptrtoint ptr %last_busy.i205 to i32
  call void @__asan_store8_noabort(i32 %30)
  store volatile i64 %call.i204, ptr %last_busy.i205, align 8
  %call.i206 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev1, i32 noundef 13) #8
  br label %cleanup

if.end53:                                         ; preds = %if.then44
  %31 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev, align 8
  %33 = ptrtoint ptr %call50 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %call50, align 8
  %id = getelementptr inbounds %struct.input_dev, ptr %call50, i32 0, i32 3
  %34 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 25, ptr %id, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call50, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1, ptr %vendor, align 2
  %product = getelementptr inbounds %struct.input_dev, ptr %call50, i32 0, i32 3, i32 2
  %36 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %product, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %call50, i32 0, i32 3, i32 3
  %37 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %version, align 2
  %open = getelementptr inbounds %struct.input_dev, ptr %call50, i32 0, i32 31
  %38 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @omap4_keypad_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call50, i32 0, i32 32
  %39 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @omap4_keypad_close, ptr %close, align 4
  tail call void @input_set_capability(ptr noundef nonnull %call50, i32 noundef 4, i32 noundef 4) #8
  %no_autorepeat = getelementptr inbounds %struct.omap4_keypad, ptr %call.i, i32 0, i32 9
  %40 = ptrtoint ptr %no_autorepeat to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %no_autorepeat, align 4, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool58.not = icmp eq i8 %41, 0
  br i1 %tobool58.not, label %if.then59, label %if.end53.if.end60_crit_edge

if.end53.if.end60_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then59:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call50, i32 0, i32 5
  %42 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %evbit, align 4
  %or.i = or i32 %43, 1048576
  store i32 %or.i, ptr %evbit, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %if.end53.if.end60_crit_edge
  %driver_data.i.i207 = getelementptr inbounds %struct.input_dev, ptr %call50, i32 0, i32 40, i32 8
  %44 = ptrtoint ptr %driver_data.i.i207 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i, ptr %driver_data.i.i207, align 4
  %45 = ptrtoint ptr %cols.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cols.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp.i208 = icmp eq i32 %46, 0
  br i1 %cmp.i208, label %if.end60.get_count_order.exit_crit_edge, label %if.end.i209

if.end60.get_count_order.exit_crit_edge:          ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_count_order.exit

if.end.i209:                                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %dec.i = add i32 %46, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i.i = icmp eq i32 %dec.i, 0
  %47 = tail call i32 @llvm.ctlz.i32(i32 %dec.i, i1 true) #8, !range !83
  %sub.i.i = sub nuw nsw i32 32, %47
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  br label %get_count_order.exit

get_count_order.exit:                             ; preds = %if.end.i209, %if.end60.get_count_order.exit_crit_edge
  %retval.0.i210 = phi i32 [ %cond.i.i, %if.end.i209 ], [ -1, %if.end60.get_count_order.exit_crit_edge ]
  %row_shift = getelementptr inbounds %struct.omap4_keypad, ptr %call.i, i32 0, i32 8
  %48 = ptrtoint ptr %row_shift to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %retval.0.i210, ptr %row_shift, align 8
  %49 = ptrtoint ptr %rows.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rows.i, align 8
  %shl = shl i32 %50, %retval.0.i210
  %51 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shl, i32 2) #8
  %52 = extractvalue { i32, i1 } %51, 1
  br i1 %52, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !84

devm_kcalloc.exit.thread:                         ; preds = %get_count_order.exit
  call void @__sanitizer_cov_trace_pc() #10
  %keymap214 = getelementptr inbounds %struct.omap4_keypad, ptr %call.i, i32 0, i32 11
  %53 = ptrtoint ptr %keymap214 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %keymap214, align 8
  br label %do.end69

devm_kcalloc.exit:                                ; preds = %get_count_order.exit
  %54 = extractvalue { i32, i1 } %51, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %54, i32 noundef 3520) #8
  %keymap = getelementptr inbounds %struct.omap4_keypad, ptr %call.i, i32 0, i32 11
  %55 = ptrtoint ptr %keymap to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call5.i.i, ptr %keymap, align 8
  %tobool65.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool65.not, label %devm_kcalloc.exit.do.end69_crit_edge, label %if.end70

devm_kcalloc.exit.do.end69_crit_edge:             ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end69

do.end69:                                         ; preds = %devm_kcalloc.exit.do.end69_crit_edge, %devm_kcalloc.exit.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #11
  br label %cleanup

if.end70:                                         ; preds = %devm_kcalloc.exit
  %56 = ptrtoint ptr %rows.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rows.i, align 8
  %58 = ptrtoint ptr %cols.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cols.i, align 4
  %call74 = tail call i32 @matrix_keypad_build_keymap(ptr noundef null, ptr noundef null, i32 noundef %57, i32 noundef %59, ptr noundef nonnull %call5.i.i, ptr noundef nonnull %call50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end80, label %do.end79

do.end79:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #11
  br label %cleanup

if.end80:                                         ; preds = %if.end70
  %60 = ptrtoint ptr %irq13 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %irq13, align 8
  %call82 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %61, ptr noundef nonnull @omap4_keypad_irq_handler, ptr noundef nonnull @omap4_keypad_irq_thread_fn, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end88, label %do.end87

do.end87:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23) #11
  br label %cleanup

if.end88:                                         ; preds = %if.end80
  %62 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call.i, align 8
  %call90 = tail call i32 @input_register_device(ptr noundef %63) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end96, label %do.end95

do.end95:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26) #11
  br label %cleanup

if.end96:                                         ; preds = %if.end88
  %call97 = tail call i32 @device_init_wakeup(ptr noundef %dev1, i1 noundef zeroext true) #8
  %64 = ptrtoint ptr %irq13 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %irq13, align 8
  %call99 = tail call i32 @dev_pm_set_wake_irq(ptr noundef %dev1, i32 noundef %65) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end96.cleanup_crit_edge, label %do.end104

if.end96.cleanup_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end104:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.29, i32 noundef %call99) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end104, %if.end96.cleanup_crit_edge, %do.end95, %do.end87, %do.end79, %do.end69, %if.then48.critedge, %if.then44.cleanup_crit_edge, %do.end40, %do.end33, %if.then24, %if.end12.cleanup_crit_edge, %do.end11, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %6, %if.then24 ], [ %call.i198, %do.end33 ], [ %call.i201, %do.end40 ], [ -22, %if.then48.critedge ], [ %call74, %do.end79 ], [ %call82, %do.end87 ], [ %call90, %do.end95 ], [ -12, %do.end69 ], [ -12, %do.end11 ], [ -22, %do.end ], [ %call3, %if.end.cleanup_crit_edge ], [ -12, %if.then44.cleanup_crit_edge ], [ 0, %do.end104 ], [ 0, %if.end96.cleanup_crit_edge ], [ %call.i197, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_keypad_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @dev_pm_clear_wake_irq(ptr noundef %dev) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap4_disable_pm(ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %d, i1 noundef zeroext false) #8
  tail call void @__pm_runtime_disable(ptr noundef %d, i1 noundef zeroext true) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #8, !srcloc !86
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !87
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_keypad_open(ptr nocapture noundef readonly %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %usage_count.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !86
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !87
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %irq = getelementptr inbounds %struct.omap4_keypad, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 8
  tail call void @disable_irq(i32 noundef %6) #8
  %base.i = getelementptr inbounds %struct.omap4_keypad, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %reg_offset.i = getelementptr inbounds %struct.omap4_keypad, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg_offset.i, align 8
  %add.ptr.i = getelementptr i8, ptr %8, i32 %10
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 26) #8, !srcloc !81
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %13 = ptrtoint ptr %reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg_offset.i, align 8
  %add.ptr.i22 = getelementptr i8, ptr %12, i32 %14
  %add.ptr1.i23 = getelementptr i8, ptr %add.ptr.i22, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i23, i32 3) #8, !srcloc !81
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %irqreg_offset.i = getelementptr inbounds %struct.omap4_keypad, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %irqreg_offset.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irqreg_offset.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %16, i32 %18
  %add.ptr1.i26 = getelementptr i8, ptr %add.ptr.i25, i32 24
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i26) #8, !srcloc !80
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %22 = ptrtoint ptr %irqreg_offset.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irqreg_offset.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %21, i32 %23
  %add.ptr1.i30 = getelementptr i8, ptr %add.ptr.i29, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i30, i32 %19) #8, !srcloc !81
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %26 = ptrtoint ptr %irqreg_offset.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irqreg_offset.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %25, i32 %27
  %add.ptr1.i34 = getelementptr i8, ptr %add.ptr.i33, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i34, i32 1) #8, !srcloc !81
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %30 = ptrtoint ptr %reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %reg_offset.i, align 8
  %add.ptr.i37 = getelementptr i8, ptr %29, i32 %31
  %add.ptr1.i38 = getelementptr i8, ptr %add.ptr.i37, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i38, i32 1) #8, !srcloc !81
  %32 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq, align 8
  tail call void @enable_irq(i32 noundef %33) #8
  %call.i39 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 22
  %34 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store volatile i64 %call.i39, ptr %last_busy.i, align 8
  %call.i40 = tail call i32 @__pm_runtime_suspend(ptr noundef %3, i32 noundef 13) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end11.i.i.i.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i, %if.then.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap4_keypad_close(ptr nocapture noundef readonly %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %usage_count.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !86
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.if.end_crit_edge, label %do.end11.i.i.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !87
  br label %if.end

if.end:                                           ; preds = %do.end11.i.i.i.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %irq = getelementptr inbounds %struct.omap4_keypad, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 8
  tail call void @disable_irq(i32 noundef %6) #8
  %base.i.i = getelementptr inbounds %struct.omap4_keypad, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i, align 4
  %irqreg_offset.i.i = getelementptr inbounds %struct.omap4_keypad, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %irqreg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irqreg_offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %10
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 0) #8, !srcloc !81
  %11 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i.i, align 4
  %reg_offset.i.i = getelementptr inbounds %struct.omap4_keypad, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg_offset.i.i, align 8
  %add.ptr.i5.i = getelementptr i8, ptr %12, i32 %14
  %add.ptr1.i6.i = getelementptr i8, ptr %add.ptr.i5.i, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i6.i, i32 0) #8, !srcloc !81
  %15 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i.i, align 4
  %17 = ptrtoint ptr %irqreg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irqreg_offset.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %16, i32 %18
  %add.ptr1.i10.i = getelementptr i8, ptr %add.ptr.i9.i, i32 24
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i10.i) #8, !srcloc !80
  %20 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i, align 4
  %22 = ptrtoint ptr %irqreg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irqreg_offset.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %21, i32 %23
  %add.ptr1.i14.i = getelementptr i8, ptr %add.ptr.i13.i, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i14.i, i32 %19) #8, !srcloc !81
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 8
  tail call void @enable_irq(i32 noundef %25) #8
  %call.i11 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 22
  %26 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store volatile i64 %call.i11, ptr %last_busy.i, align 8
  %call.i12 = tail call i32 @__pm_runtime_suspend(ptr noundef %3, i32 noundef 13) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matrix_keypad_build_keymap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_keypad_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.omap4_keypad, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %irqreg_offset.i = getelementptr inbounds %struct.omap4_keypad, ptr %dev_id, i32 0, i32 7
  %2 = ptrtoint ptr %irqreg_offset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irqreg_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %3
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #8, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %. = select i1 %tobool.not, i32 0, i32 2
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_keypad_irq_thread_fn(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 8
  %parent = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 40, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %usage_count.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !86
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !87
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %base.i = getelementptr inbounds %struct.omap4_keypad, ptr %dev_id, i32 0, i32 1
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %reg_offset.i = getelementptr inbounds %struct.omap4_keypad, ptr %dev_id, i32 0, i32 6
  %7 = ptrtoint ptr %reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg_offset.i, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 %8
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 68
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #8, !srcloc !80
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %12 = ptrtoint ptr %reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg_offset.i, align 8
  %add.ptr.i22 = getelementptr i8, ptr %11, i32 %13
  %add.ptr1.i23 = getelementptr i8, ptr %add.ptr.i22, i32 72
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i23) #8, !srcloc !80
  %conv = zext i32 %9 to i64
  %conv4 = zext i32 %14 to i64
  %shl = shl nuw i64 %conv4, 32
  %or = or i64 %shl, %conv
  %lock.i = getelementptr inbounds %struct.omap4_keypad, ptr %dev_id, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %keys1.i = getelementptr inbounds %struct.omap4_keypad, ptr %dev_id, i32 0, i32 10
  %15 = ptrtoint ptr %keys1.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %keys1.i, align 8
  %neg.i = xor i64 %or, -1
  %and.i = and i64 %16, %neg.i
  tail call fastcc void @omap4_keypad_report_keys(ptr noundef %dev_id, i64 noundef %and.i, i1 noundef zeroext false) #8
  %17 = xor i64 %16, -1
  %and2.i = and i64 %or, %17
  tail call fastcc void @omap4_keypad_report_keys(ptr noundef %dev_id, i64 noundef %and2.i, i1 noundef zeroext true) #8
  %18 = ptrtoint ptr %keys1.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %or, ptr %keys1.i, align 8
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %irqreg_offset.i = getelementptr inbounds %struct.omap4_keypad, ptr %dev_id, i32 0, i32 7
  %21 = ptrtoint ptr %irqreg_offset.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irqreg_offset.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %20, i32 %22
  %add.ptr1.i26 = getelementptr i8, ptr %add.ptr.i25, i32 24
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i26) #8, !srcloc !80
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %26 = ptrtoint ptr %irqreg_offset.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irqreg_offset.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %25, i32 %27
  %add.ptr1.i30 = getelementptr i8, ptr %add.ptr.i29, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i30, i32 %23) #8, !srcloc !81
  %call.i31 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 22
  %28 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store volatile i64 %call.i31, ptr %last_busy.i, align 8
  %call.i32 = tail call i32 @__pm_runtime_suspend(ptr noundef %3, i32 noundef 13) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end11.i.i.i.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_set_wake_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matrix_keypad_parse_properties(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap4_keypad_report_keys(ptr nocapture noundef readonly %keypad_data, i64 noundef %keys, i1 noundef zeroext %down) unnamed_addr #2 align 64 {
entry:
  %mask = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %keypad_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %keypad_data, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mask) #8
  %2 = getelementptr inbounds [2 x i32], ptr %mask, i32 0, i32 1
  %conv.i = trunc i64 %keys to i32
  %3 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv.i, ptr %mask, align 4
  %shr.i = lshr i64 %keys, 32
  %conv1.i = trunc i64 %shr.i to i32
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv1.i, ptr %2, align 4
  %rows = getelementptr inbounds %struct.omap4_keypad, ptr %keypad_data, i32 0, i32 4
  %5 = ptrtoint ptr %rows to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rows, align 8
  %mul = shl i32 %6, 3
  %call = call i32 @_find_next_bit_be(ptr noundef nonnull %mask, i32 noundef %mul, i32 noundef 0) #8
  %7 = ptrtoint ptr %rows to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rows, align 8
  %mul32 = shl i32 %8, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %mul32)
  %cmp3 = icmp ult i32 %call, %mul32
  br i1 %cmp3, label %for.body.lr.ph, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.lr.ph:                                   ; preds = %entry
  %row_shift = getelementptr inbounds %struct.omap4_keypad, ptr %keypad_data, i32 0, i32 8
  %keymap = getelementptr inbounds %struct.omap4_keypad, ptr %keypad_data, i32 0, i32 11
  %lnot.ext.i = zext i1 %down to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %events.05 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %bit.04 = phi i32 [ %call, %for.body.lr.ph ], [ %call9, %for.body.for.body_crit_edge ]
  %div1 = lshr i32 %bit.04, 3
  %rem = and i32 %bit.04, 7
  %9 = ptrtoint ptr %row_shift to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %row_shift, align 8
  %shl = shl i32 %div1, %10
  %add = add i32 %shl, %rem
  call void @input_event(ptr noundef %1, i32 noundef 4, i32 noundef 4, i32 noundef %add) #8
  %11 = ptrtoint ptr %keymap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %keymap, align 8
  %arrayidx = getelementptr i16, ptr %12, i32 %add
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %14 to i32
  call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %conv, i32 noundef %lnot.ext.i) #8
  %inc = add i32 %events.05, 1
  %15 = ptrtoint ptr %rows to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rows, align 8
  %mul7 = shl i32 %16, 3
  %add8 = add nuw i32 %bit.04, 1
  %call9 = call i32 @_find_next_bit_be(ptr noundef nonnull %mask, i32 noundef %mul7, i32 noundef %add8) #8
  %17 = ptrtoint ptr %rows to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rows, align 8
  %mul3 = shl i32 %18, 3
  %cmp = icmp ult i32 %call9, %mul3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %phi.cmp = icmp eq i32 %inc, 0
  br i1 %phi.cmp, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mask) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_clear_wake_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_keypad_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %base.i = getelementptr inbounds %struct.omap4_keypad, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %reg_offset.i = getelementptr inbounds %struct.omap4_keypad, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_offset.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 %5
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 56
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #8, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 22
  %7 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lock.i = getelementptr inbounds %struct.omap4_keypad, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %keys1.i = getelementptr inbounds %struct.omap4_keypad, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %keys1.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %keys1.i, align 8
  tail call fastcc void @omap4_keypad_report_keys(ptr noundef %1, i64 noundef %9, i1 noundef zeroext false) #8
  tail call fastcc void @omap4_keypad_report_keys(ptr noundef %1, i64 noundef 0, i1 noundef zeroext true) #8
  %10 = ptrtoint ptr %keys1.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %keys1.i, align 8
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !64, !65, !66, !67, !69}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__initcall__kmod_omap4_keypad__228_498_omap4_keypad_driver_init6, !1, !"__initcall__kmod_omap4_keypad__228_498_omap4_keypad_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/omap4-keypad.c", i32 498, i32 1}
!2 = !{ptr @__exitcall_omap4_keypad_driver_exit, !1, !"__exitcall_omap4_keypad_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author229, !4, !"__UNIQUE_ID_author229", i1 false, i1 false}
!4 = !{!"../drivers/input/keyboard/omap4-keypad.c", i32 500, i32 1}
!5 = !{ptr @__UNIQUE_ID_description230, !6, !"__UNIQUE_ID_description230", i1 false, i1 false}
!6 = !{!"../drivers/input/keyboard/omap4-keypad.c", i32 501, i32 1}
!7 = !{ptr @__UNIQUE_ID_file231, !8, !"__UNIQUE_ID_file231", i1 false, i1 false}
!8 = !{!"../drivers/input/keyboard/omap4-keypad.c", i32 502, i32 1}
!9 = !{ptr @__UNIQUE_ID_license232, !8, !"__UNIQUE_ID_license232", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias233, !11, !"__UNIQUE_ID_alias233", i1 false, i1 false}
!11 = !{!"../drivers/input/keyboard/omap4-keypad.c", i32 503, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/keyboard/omap4-keypad.c", i32 493, i32 11}
!14 = !{ptr @omap4_keypad_driver, !15, !"omap4_keypad_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/keyboard/omap4-keypad.c", i32 489, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/keyboard/omap4-keypad.c", i32 355, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @omap4_keypad_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @omap4_keypad_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/keyboard/omap4-keypad.c", i32 365, i32 3}
!26 = !{ptr @omap4_keypad_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @omap4_keypad_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @omap4_keypad_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/input/keyboard/omap4-keypad.c", i32 370, i32 2}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/keyboard/omap4-keypad.c", i32 387, i32 3}
!33 = !{ptr @omap4_keypad_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @omap4_keypad_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/keyboard/omap4-keypad.c", i32 397, i32 3}
!37 = !{ptr @omap4_keypad_probe._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @omap4_keypad_probe._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/keyboard/omap4-keypad.c", i32 440, i32 3}
!41 = !{ptr @omap4_keypad_probe._entry.16, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @omap4_keypad_probe._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/keyboard/omap4-keypad.c", i32 448, i32 3}
!45 = !{ptr @omap4_keypad_probe._entry.19, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @omap4_keypad_probe._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/keyboard/omap4-keypad.c", i32 458, i32 3}
!49 = !{ptr @omap4_keypad_probe._entry.22, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @omap4_keypad_probe._entry_ptr.24, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/input/keyboard/omap4-keypad.c", i32 464, i32 3}
!53 = !{ptr @omap4_keypad_probe._entry.25, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @omap4_keypad_probe._entry_ptr.27, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/keyboard/omap4-keypad.c", i32 471, i32 3}
!57 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @omap4_keypad_probe._entry.28, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @omap4_keypad_probe._entry_ptr.31, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/keyboard/omap4-keypad.c", i32 280, i32 26}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/keyboard/omap4-keypad.c", i32 304, i32 3}
!64 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @omap4_keypad_check_revision._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @omap4_keypad_check_revision._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @omap_keypad_dt_match, !68, !"omap_keypad_dt_match", i1 false, i1 false}
!68 = !{!"../drivers/input/keyboard/omap4-keypad.c", i32 483, i32 34}
!69 = !{ptr @omap4_keypad_pm_ops, !70, !"omap4_keypad_pm_ops", i1 false, i1 false}
!70 = !{!"../drivers/input/keyboard/omap4-keypad.c", i32 333, i32 32}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{i64 4627279}
!81 = !{i64 4626861}
!82 = !{i8 0, i8 2}
!83 = !{i32 0, i32 33}
!84 = !{!"branch_weights", i32 1, i32 2000}
!85 = !{i64 2148350398}
!86 = !{i64 836018, i64 836043, i64 836065, i64 836081, i64 836093, i64 836113, i64 836137, i64 836153, i64 836165}
!87 = !{i64 2148350586}
