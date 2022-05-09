; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/tc3589x-keypad.c_pt.bc'
source_filename = "../drivers/input/keyboard/tc3589x-keypad.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.tc3589x_keypad_platform_data = type { ptr, i8, i8, i8, i8, i32, i8, i8 }
%struct.tc_keypad = type { ptr, ptr, ptr, i32, i32, ptr, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_tc3589x_keypad__288_507_tc3589x_keypad_driver_init6 = internal global ptr @tc3589x_keypad_driver_init, section ".initcall6.init", align 4
@tc3589x_keypad_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tc3589x_keypad_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tc3589x_keypad_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tc3589x_keypad_driver_exit = internal global ptr @tc3589x_keypad_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file289 = internal constant [58 x i8] c"tc3589x_keypad.file=drivers/input/keyboard/tc3589x-keypad\00", section ".modinfo", align 1
@__UNIQUE_ID_license290 = internal constant [30 x i8] c"tc3589x_keypad.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [51 x i8] c"tc3589x_keypad.author=Jayeeta Banerjee/Sundar Iyer\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [49 x i8] c"tc3589x_keypad.description=TC35893 Keypad Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [45 x i8] c"tc3589x_keypad.alias=platform:tc3589x-keypad\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tc3589x-keypad\00", [17 x i8] zeroinitializer }, align 32
@tc3589x_keypad_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tc3589x_keypad_suspend, ptr @tc3589x_keypad_resume, ptr @tc3589x_keypad_suspend, ptr @tc3589x_keypad_resume, ptr @tc3589x_keypad_suspend, ptr @tc3589x_keypad_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tc3589x_keypad_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 384, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid keypad platform data\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tc3589x_keypad_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/input/keyboard/tc3589x-keypad.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tc3589x_keypad_probe._entry_ptr = internal global ptr @tc3589x_keypad_probe._entry, section ".printk_index", align 4
@tc3589x_keypad_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 399, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate input device\0A\00", [63 x i8] zeroinitializer }, align 32
@tc3589x_keypad_probe._entry_ptr.8 = internal global ptr @tc3589x_keypad_probe._entry.6, section ".printk_index", align 4
@tc3589x_keypad_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 418, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to build keymap\0A\00", [40 x i8] zeroinitializer }, align 32
@tc3589x_keypad_probe._entry_ptr.11 = internal global ptr @tc3589x_keypad_probe._entry.9, section ".printk_index", align 4
@tc3589x_keypad_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 439, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Could not allocate irq %d,error %d\0A\00", [60 x i8] zeroinitializer }, align 32
@tc3589x_keypad_probe._entry_ptr.14 = internal global ptr @tc3589x_keypad_probe._entry.12, section ".printk_index", align 4
@tc3589x_keypad_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 445, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Could not register input device\0A\00", [63 x i8] zeroinitializer }, align 32
@tc3589x_keypad_probe._entry_ptr.17 = internal global ptr @tc3589x_keypad_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"keypad,num-columns\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"keypad,num-rows\00", [16 x i8] zeroinitializer }, align 32
@tc3589x_keypad_of_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 345, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"keypad columns/rows not properly specified (%ux%u)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tc3589x_keypad_of_probe\00", [40 x i8] zeroinitializer }, align 32
@tc3589x_keypad_of_probe._entry_ptr = internal global ptr @tc3589x_keypad_of_probe._entry, section ".printk_index", align 4
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"linux,keymap\00", [19 x i8] zeroinitializer }, align 32
@tc3589x_keypad_of_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.21, ptr @.str.3, i32 350, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"property linux,keymap not found\0A\00", [63 x i8] zeroinitializer }, align 32
@tc3589x_keypad_of_probe._entry_ptr.25 = internal global ptr @tc3589x_keypad_of_probe._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"linux,no-autorepeat\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wakeup-source\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"linux,wakeup\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"debounce-delay-ms\00", [46 x i8] zeroinitializer }, align 32
@tc3589x_keypad_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 300, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable keypad module\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tc3589x_keypad_open\00", [44 x i8] zeroinitializer }, align 32
@tc3589x_keypad_open._entry_ptr = internal global ptr @tc3589x_keypad_open._entry, section ".printk_index", align 4
@tc3589x_keypad_open._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.3, i32 306, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to configure keypad module\0A\00", [61 x i8] zeroinitializer }, align 32
@tc3589x_keypad_open._entry_ptr.34 = internal global ptr @tc3589x_keypad_open._entry.32, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 127, i64 255]
@___asan_gen_.35 = private unnamed_addr constant [22 x i8] c"tc3589x_keypad_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 500, i32 31 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 502, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [26 x i8] c"tc3589x_keypad_dev_pm_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 497, i32 8 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 384, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 399, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 418, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 437, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 445, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 337, i32 27 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 338, i32 27 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 343, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 349, i32 27 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 350, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 354, i32 50 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 356, i32 50 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 358, i32 36 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 361, i32 27 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 300, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.135 = private constant [43 x i8] c"../drivers/input/keyboard/tc3589x-keypad.c\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 306, i32 3 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file289, ptr @__UNIQUE_ID_license290, ptr @__exitcall_tc3589x_keypad_driver_exit, ptr @__initcall__kmod_tc3589x_keypad__288_507_tc3589x_keypad_driver_init6, ptr @tc3589x_keypad_driver_exit, ptr @tc3589x_keypad_of_probe._entry, ptr @tc3589x_keypad_of_probe._entry.23, ptr @tc3589x_keypad_of_probe._entry_ptr, ptr @tc3589x_keypad_of_probe._entry_ptr.25, ptr @tc3589x_keypad_open._entry, ptr @tc3589x_keypad_open._entry.32, ptr @tc3589x_keypad_open._entry_ptr, ptr @tc3589x_keypad_open._entry_ptr.34, ptr @tc3589x_keypad_probe._entry, ptr @tc3589x_keypad_probe._entry.12, ptr @tc3589x_keypad_probe._entry.15, ptr @tc3589x_keypad_probe._entry.6, ptr @tc3589x_keypad_probe._entry.9, ptr @tc3589x_keypad_probe._entry_ptr, ptr @tc3589x_keypad_probe._entry_ptr.11, ptr @tc3589x_keypad_probe._entry_ptr.14, ptr @tc3589x_keypad_probe._entry_ptr.17, ptr @tc3589x_keypad_probe._entry_ptr.8, ptr @tc3589x_keypad_driver, ptr @.str, ptr @tc3589x_keypad_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_keypad_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_keypad_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_keypad_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_keypad_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_keypad_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_keypad_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_keypad_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_keypad_of_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_keypad_of_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_keypad_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_keypad_open._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tc3589x_keypad_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tc3589x_keypad_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tc3589x_keypad_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @tc3589x_keypad_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc3589x_keypad_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %cols.i = alloca i32, align 4
  %rows.i = alloca i32, align 4
  %debounce_ms.i = alloca i32, align 4
  %proplen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cols.i) #5
  %6 = ptrtoint ptr %cols.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %cols.i, align 4, !annotation !83
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rows.i) #5
  %7 = ptrtoint ptr %rows.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %rows.i, align 4, !annotation !83
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %debounce_ms.i) #5
  %8 = ptrtoint ptr %debounce_ms.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %debounce_ms.i, align 4, !annotation !83
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %proplen.i) #5
  %9 = ptrtoint ptr %proplen.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %proplen.i, align 4, !annotation !83
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.tc3589x_keypad_of_probe.exit.thread_crit_edge, label %if.end.i

entry.tc3589x_keypad_of_probe.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %tc3589x_keypad_of_probe.exit.thread

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #5
  %tobool2.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.tc3589x_keypad_of_probe.exit.thread_crit_edge, label %if.end5.i

if.end.i.tc3589x_keypad_of_probe.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tc3589x_keypad_of_probe.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.18, ptr noundef nonnull %cols.i, i32 noundef 1, i32 noundef 0) #5
  %call.i.i82.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.19, ptr noundef nonnull %rows.i, i32 noundef 1, i32 noundef 0) #5
  %10 = ptrtoint ptr %cols.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cols.i, align 4
  %conv.i = trunc i32 %11 to i8
  %kcol.i = getelementptr inbounds %struct.tc3589x_keypad_platform_data, ptr %call.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %kcol.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i, ptr %kcol.i, align 1
  %13 = ptrtoint ptr %rows.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rows.i, align 4
  %conv8.i = trunc i32 %14 to i8
  %krow.i = getelementptr inbounds %struct.tc3589x_keypad_platform_data, ptr %call.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %krow.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv8.i, ptr %krow.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv8.i)
  %tobool10.not.i = icmp eq i8 %conv8.i, 0
  br i1 %tobool10.not.i, label %if.end5.do.end_crit_edge.i, label %lor.lhs.false.i

if.end5.do.end_crit_edge.i:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  %.pre.i = and i32 %14, 255
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i)
  %tobool12.not.i = icmp eq i8 %conv.i, 0
  %conv15.i = and i32 %14, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %conv15.i)
  %cmp.i = icmp ugt i32 %conv15.i, 8
  %or.cond.i = select i1 %tobool12.not.i, i1 true, i1 %cmp.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %conv.i)
  %cmp20.i = icmp ugt i8 %conv.i, 8
  %or.cond81.i = or i1 %cmp20.i, %or.cond.i
  br i1 %or.cond81.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %if.end28.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.end5.do.end_crit_edge.i
  %conv26.pre-phi.i = phi i32 [ %.pre.i, %if.end5.do.end_crit_edge.i ], [ %conv15.i, %lor.lhs.false.i.do.end.i_crit_edge ]
  %conv24.i = and i32 %11, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %conv24.i, i32 noundef %conv26.pre-phi.i) #8
  br label %tc3589x_keypad_of_probe.exit.thread

if.end28.i:                                       ; preds = %lor.lhs.false.i
  %call29.i = call ptr @of_get_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.22, ptr noundef nonnull %proplen.i) #5
  %tobool30.not.i = icmp eq ptr %call29.i, null
  br i1 %tobool30.not.i, label %do.end34.i, label %if.end36.i

do.end34.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #8
  br label %tc3589x_keypad_of_probe.exit.thread

if.end36.i:                                       ; preds = %if.end28.i
  %call.i83.i = call ptr @of_find_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.26, ptr noundef null) #5
  %tobool.i.i = icmp ne ptr %call.i83.i, null
  %no_autorepeat.i = getelementptr inbounds %struct.tc3589x_keypad_platform_data, ptr %call.i.i, i32 0, i32 7
  %frombool.i = zext i1 %tobool.i.i to i8
  %16 = ptrtoint ptr %no_autorepeat.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool.i, ptr %no_autorepeat.i, align 1
  %call.i84.i = call ptr @of_find_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.27, ptr noundef null) #5
  %tobool.i85.not.i = icmp eq ptr %call.i84.i, null
  br i1 %tobool.i85.not.i, label %lor.rhs.i, label %if.end36.i.tc3589x_keypad_of_probe.exit_crit_edge

if.end36.i.tc3589x_keypad_of_probe.exit_crit_edge: ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tc3589x_keypad_of_probe.exit

lor.rhs.i:                                        ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i86.i = call ptr @of_find_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.28, ptr noundef null) #5
  %tobool.i87.i = icmp ne ptr %call.i86.i, null
  br label %tc3589x_keypad_of_probe.exit

tc3589x_keypad_of_probe.exit.thread:              ; preds = %do.end34.i, %do.end.i, %if.end.i.tc3589x_keypad_of_probe.exit.thread_crit_edge, %entry.tc3589x_keypad_of_probe.exit.thread_crit_edge
  %retval.0.i.ph = phi ptr [ inttoptr (i32 -12 to ptr), %if.end.i.tc3589x_keypad_of_probe.exit.thread_crit_edge ], [ inttoptr (i32 -19 to ptr), %entry.tc3589x_keypad_of_probe.exit.thread_crit_edge ], [ inttoptr (i32 -2 to ptr), %do.end34.i ], [ inttoptr (i32 -22 to ptr), %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %proplen.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %debounce_ms.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rows.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cols.i) #5
  br label %do.end

tc3589x_keypad_of_probe.exit:                     ; preds = %lor.rhs.i, %if.end36.i.tc3589x_keypad_of_probe.exit_crit_edge
  %17 = phi i1 [ true, %if.end36.i.tc3589x_keypad_of_probe.exit_crit_edge ], [ %tobool.i87.i, %lor.rhs.i ]
  %enable_wakeup.i = getelementptr inbounds %struct.tc3589x_keypad_platform_data, ptr %call.i.i, i32 0, i32 6
  %frombool42.i = zext i1 %17 to i8
  %18 = ptrtoint ptr %enable_wakeup.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %frombool42.i, ptr %enable_wakeup.i, align 4
  %call.i.i88.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.29, ptr noundef nonnull %debounce_ms.i, i32 noundef 1, i32 noundef 0) #5
  %19 = ptrtoint ptr %debounce_ms.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %debounce_ms.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool44.not.i = icmp eq i32 %20, 0
  %.tr.i = trunc i32 %20 to i8
  %conv46.i = shl i8 %.tr.i, 4
  %conv46.sink.i = select i1 %tobool44.not.i, i8 -93, i8 %conv46.i
  %21 = getelementptr inbounds %struct.tc3589x_keypad_platform_data, ptr %call.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv46.sink.i, ptr %21, align 2
  %settle_time.i = getelementptr inbounds %struct.tc3589x_keypad_platform_data, ptr %call.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %settle_time.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -93, ptr %settle_time.i, align 1
  %irqtype.i = getelementptr inbounds %struct.tc3589x_keypad_platform_data, ptr %call.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %irqtype.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %irqtype.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %proplen.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %debounce_ms.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rows.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cols.i) #5
  %cmp.i119 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i119, label %tc3589x_keypad_of_probe.exit.do.end_crit_edge, label %if.end

tc3589x_keypad_of_probe.exit.do.end_crit_edge:    ; preds = %tc3589x_keypad_of_probe.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %tc3589x_keypad_of_probe.exit.do.end_crit_edge, %tc3589x_keypad_of_probe.exit.thread
  %retval.0.i127 = phi ptr [ %retval.0.i.ph, %tc3589x_keypad_of_probe.exit.thread ], [ %call.i.i, %tc3589x_keypad_of_probe.exit.do.end_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  %25 = ptrtoint ptr %retval.0.i127 to i32
  br label %cleanup

if.end:                                           ; preds = %tc3589x_keypad_of_probe.exit
  %call6 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call14 = call ptr @devm_input_allocate_device(ptr noundef %dev) #5
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.end19, label %if.end21

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  %board = getelementptr inbounds %struct.tc_keypad, ptr %call.i, i32 0, i32 2
  %26 = ptrtoint ptr %board to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i.i, ptr %board, align 4
  %input22 = getelementptr inbounds %struct.tc_keypad, ptr %call.i, i32 0, i32 1
  %27 = ptrtoint ptr %input22 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call14, ptr %input22, align 4
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %3, ptr %call.i, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %call14, i32 0, i32 3
  %29 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 24, ptr %id, align 4
  %30 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev, align 8
  %32 = ptrtoint ptr %call14 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %call14, align 8
  %parent27 = getelementptr inbounds %struct.input_dev, ptr %call14, i32 0, i32 40, i32 1
  %33 = ptrtoint ptr %parent27 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %dev, ptr %parent27, align 8
  %open = getelementptr inbounds %struct.input_dev, ptr %call14, i32 0, i32 31
  %34 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @tc3589x_keypad_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call14, i32 0, i32 32
  %35 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @tc3589x_keypad_close, ptr %close, align 4
  %36 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i.i, align 4
  %call28 = call i32 @matrix_keypad_build_keymap(ptr noundef %37, ptr noundef null, i32 noundef 8, i32 noundef 12, ptr noundef null, ptr noundef nonnull %call14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end35, label %do.end33

do.end33:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #8
  br label %cleanup

if.end35:                                         ; preds = %if.end21
  %keycode = getelementptr inbounds %struct.input_dev, ptr %call14, i32 0, i32 17
  %38 = ptrtoint ptr %keycode to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %keycode, align 4
  %keymap = getelementptr inbounds %struct.tc_keypad, ptr %call.i, i32 0, i32 5
  %40 = ptrtoint ptr %keymap to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %keymap, align 4
  call void @input_set_capability(ptr noundef nonnull %call14, i32 noundef 4, i32 noundef 4) #5
  %41 = ptrtoint ptr %no_autorepeat.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %no_autorepeat.i, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool36.not = icmp eq i8 %42, 0
  br i1 %tobool36.not, label %if.then37, label %if.end35.if.end38_crit_edge

if.end35.if.end38_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call14, i32 0, i32 5
  %43 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %evbit, align 4
  %or.i = or i32 %44, 1048576
  store i32 %or.i, ptr %evbit, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end35.if.end38_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call14, i32 0, i32 40, i32 8
  %45 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i, align 4
  %call.i120 = call i32 @tc3589x_set_bits(ptr noundef %47, i8 noundef zeroext 8, i8 noundef zeroext 0, i8 noundef zeroext 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %cmp.i121 = icmp slt i32 %call.i120, 0
  br i1 %cmp.i121, label %if.end38.tc3589x_keypad_disable.exit_crit_edge, label %if.end.i122

if.end38.tc3589x_keypad_disable.exit_crit_edge:   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %tc3589x_keypad_disable.exit

if.end.i122:                                      ; preds = %if.end38
  %call2.i = call i32 @tc3589x_set_bits(ptr noundef %47, i8 noundef zeroext 9, i8 noundef zeroext -13, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i122.tc3589x_keypad_disable.exit_crit_edge, label %if.end5.i123

if.end.i122.tc3589x_keypad_disable.exit_crit_edge: ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #7
  br label %tc3589x_keypad_disable.exit

if.end5.i123:                                     ; preds = %if.end.i122
  %call6.i = call i32 @tc3589x_set_bits(ptr noundef %47, i8 noundef zeroext -118, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end5.i123.tc3589x_keypad_disable.exit_crit_edge, label %if.end9.i

if.end5.i123.tc3589x_keypad_disable.exit_crit_edge: ; preds = %if.end5.i123
  call void @__sanitizer_cov_trace_pc() #7
  br label %tc3589x_keypad_disable.exit

if.end9.i:                                        ; preds = %if.end5.i123
  call void @__sanitizer_cov_trace_pc() #7
  %call10.i = call i32 @tc3589x_set_bits(ptr noundef %47, i8 noundef zeroext -126, i8 noundef zeroext 2, i8 noundef zeroext 1) #5
  %keypad_stopped.i = getelementptr inbounds %struct.tc_keypad, ptr %call.i, i32 0, i32 6
  %48 = ptrtoint ptr %keypad_stopped.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %keypad_stopped.i, align 4
  br label %tc3589x_keypad_disable.exit

tc3589x_keypad_disable.exit:                      ; preds = %if.end9.i, %if.end5.i123.tc3589x_keypad_disable.exit_crit_edge, %if.end.i122.tc3589x_keypad_disable.exit_crit_edge, %if.end38.tc3589x_keypad_disable.exit_crit_edge
  %49 = ptrtoint ptr %irqtype.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %irqtype.i, align 4
  %or = or i32 %50, 8192
  %call41 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call6, ptr noundef null, ptr noundef nonnull @tc3589x_keypad_irq, i32 noundef %or, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end48, label %do.end46

do.end46:                                         ; preds = %tc3589x_keypad_disable.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call6, i32 noundef %call41) #8
  br label %cleanup

if.end48:                                         ; preds = %tc3589x_keypad_disable.exit
  %call49 = call i32 @input_register_device(ptr noundef nonnull %call14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end56, label %do.end54

do.end54:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #8
  br label %cleanup

if.end56:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %enable_wakeup.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %enable_wakeup.i, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool58 = icmp ne i8 %52, 0
  %call59 = call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext %tobool58) #5
  %53 = ptrtoint ptr %enable_wakeup.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %enable_wakeup.i, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool62 = icmp ne i8 %54, 0
  call void @device_set_wakeup_capable(ptr noundef %dev, i1 noundef zeroext %tobool62) #5
  %driver_data.i.i124 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %55 = ptrtoint ptr %driver_data.i.i124 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i, ptr %driver_data.i.i124, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %do.end54, %do.end46, %do.end33, %do.end19, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %25, %do.end ], [ %call28, %do.end33 ], [ %call41, %do.end46 ], [ %call49, %do.end54 ], [ 0, %if.end56 ], [ -12, %do.end19 ], [ %call6, %if.end.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc3589x_keypad_open(ptr noundef %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @tc3589x_keypad_enable(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %board2.i = getelementptr inbounds %struct.tc_keypad, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %board2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %board2.i, align 4
  %kcol.i = getelementptr inbounds %struct.tc3589x_keypad_platform_data, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %kcol.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %kcol.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %7)
  %cmp.i = icmp ugt i8 %7, 12
  br i1 %cmp.i, label %if.end.cleanup.sink.split_crit_edge, label %lor.lhs.false.i

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

lor.lhs.false.i:                                  ; preds = %if.end
  %krow.i = getelementptr inbounds %struct.tc3589x_keypad_platform_data, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %krow.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %krow.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %9)
  %cmp5.i = icmp ugt i8 %9, 8
  br i1 %cmp5.i, label %lor.lhs.false.i.cleanup.sink.split_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %lor.lhs.false.i
  %shl.i = shl nuw i8 %9, 4
  %or.i = or i8 %shl.i, %7
  %call.i = tail call i32 @tc3589x_reg_write(ptr noundef %3, i8 noundef zeroext 3, i8 noundef zeroext %or.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp12.i = icmp slt i32 %call.i, 0
  br i1 %cmp12.i, label %if.end.i.cleanup.sink.split_crit_edge, label %if.end15.i

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end15.i:                                       ; preds = %if.end.i
  %call16.i = tail call i32 @tc3589x_reg_write(ptr noundef %3, i8 noundef zeroext 4, i8 noundef zeroext -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %if.end15.i.cleanup.sink.split_crit_edge, label %if.end20.i

if.end15.i.cleanup.sink.split_crit_edge:          ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end20.i:                                       ; preds = %if.end15.i
  %call21.i = tail call i32 @tc3589x_reg_write(ptr noundef %3, i8 noundef zeroext 5, i8 noundef zeroext -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.i = icmp slt i32 %call21.i, 0
  br i1 %cmp22.i, label %if.end20.i.cleanup.sink.split_crit_edge, label %if.end25.i

if.end20.i.cleanup.sink.split_crit_edge:          ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end25.i:                                       ; preds = %if.end20.i
  %settle_time.i = getelementptr inbounds %struct.tc3589x_keypad_platform_data, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %settle_time.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %settle_time.i, align 1
  %call26.i = tail call i32 @tc3589x_reg_write(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp27.i = icmp slt i32 %call26.i, 0
  br i1 %cmp27.i, label %if.end25.i.cleanup.sink.split_crit_edge, label %if.end30.i

if.end25.i.cleanup.sink.split_crit_edge:          ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end30.i:                                       ; preds = %if.end25.i
  %debounce_period.i = getelementptr inbounds %struct.tc3589x_keypad_platform_data, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %debounce_period.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %debounce_period.i, align 2
  %call31.i = tail call i32 @tc3589x_reg_write(ptr noundef %3, i8 noundef zeroext 2, i8 noundef zeroext %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp32.i = icmp slt i32 %call31.i, 0
  br i1 %cmp32.i, label %if.end30.i.cleanup.sink.split_crit_edge, label %if.end35.i

if.end30.i.cleanup.sink.split_crit_edge:          ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end35.i:                                       ; preds = %if.end30.i
  %call36.i = tail call i32 @tc3589x_set_bits(ptr noundef %3, i8 noundef zeroext -89, i8 noundef zeroext 0, i8 noundef zeroext 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %cmp37.i = icmp slt i32 %call36.i, 0
  br i1 %cmp37.i, label %if.end35.i.cleanup.sink.split_crit_edge, label %if.end40.i

if.end35.i.cleanup.sink.split_crit_edge:          ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end40.i:                                       ; preds = %if.end35.i
  %call41.i = tail call i32 @tc3589x_reg_write(ptr noundef %3, i8 noundef zeroext -86, i8 noundef zeroext -86) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %cmp42.i = icmp slt i32 %call41.i, 0
  br i1 %cmp42.i, label %if.end40.i.cleanup.sink.split_crit_edge, label %if.end45.i

if.end40.i.cleanup.sink.split_crit_edge:          ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end45.i:                                       ; preds = %if.end40.i
  %call46.i = tail call i32 @tc3589x_reg_write(ptr noundef %3, i8 noundef zeroext -85, i8 noundef zeroext -86) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %cmp47.i = icmp slt i32 %call46.i, 0
  br i1 %cmp47.i, label %if.end45.i.cleanup.sink.split_crit_edge, label %if.end50.i

if.end45.i.cleanup.sink.split_crit_edge:          ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end50.i:                                       ; preds = %if.end45.i
  %call51.i = tail call i32 @tc3589x_reg_write(ptr noundef %3, i8 noundef zeroext -84, i8 noundef zeroext -86) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %cmp52.i = icmp slt i32 %call51.i, 0
  br i1 %cmp52.i, label %if.end50.i.cleanup.sink.split_crit_edge, label %if.end55.i

if.end50.i.cleanup.sink.split_crit_edge:          ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end55.i:                                       ; preds = %if.end50.i
  %call56.i = tail call i32 @tc3589x_reg_write(ptr noundef %3, i8 noundef zeroext -83, i8 noundef zeroext -86) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %cmp57.i = icmp slt i32 %call56.i, 0
  br i1 %cmp57.i, label %if.end55.i.cleanup.sink.split_crit_edge, label %tc3589x_keypad_init_key_hardware.exit

if.end55.i.cleanup.sink.split_crit_edge:          ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

tc3589x_keypad_init_key_hardware.exit:            ; preds = %if.end55.i
  %call61.i = tail call i32 @tc3589x_reg_write(ptr noundef %3, i8 noundef zeroext -82, i8 noundef zeroext -86) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %cmp3 = icmp slt i32 %call61.i, 0
  br i1 %cmp3, label %tc3589x_keypad_init_key_hardware.exit.cleanup.sink.split_crit_edge, label %tc3589x_keypad_init_key_hardware.exit.cleanup_crit_edge

tc3589x_keypad_init_key_hardware.exit.cleanup_crit_edge: ; preds = %tc3589x_keypad_init_key_hardware.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

tc3589x_keypad_init_key_hardware.exit.cleanup.sink.split_crit_edge: ; preds = %tc3589x_keypad_init_key_hardware.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %tc3589x_keypad_init_key_hardware.exit.cleanup.sink.split_crit_edge, %if.end55.i.cleanup.sink.split_crit_edge, %if.end50.i.cleanup.sink.split_crit_edge, %if.end45.i.cleanup.sink.split_crit_edge, %if.end40.i.cleanup.sink.split_crit_edge, %if.end35.i.cleanup.sink.split_crit_edge, %if.end30.i.cleanup.sink.split_crit_edge, %if.end25.i.cleanup.sink.split_crit_edge, %if.end20.i.cleanup.sink.split_crit_edge, %if.end15.i.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge, %lor.lhs.false.i.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.33.sink = phi ptr [ @.str.30, %entry.cleanup.sink.split_crit_edge ], [ @.str.33, %if.end55.i.cleanup.sink.split_crit_edge ], [ @.str.33, %if.end50.i.cleanup.sink.split_crit_edge ], [ @.str.33, %if.end45.i.cleanup.sink.split_crit_edge ], [ @.str.33, %if.end40.i.cleanup.sink.split_crit_edge ], [ @.str.33, %if.end35.i.cleanup.sink.split_crit_edge ], [ @.str.33, %if.end30.i.cleanup.sink.split_crit_edge ], [ @.str.33, %if.end25.i.cleanup.sink.split_crit_edge ], [ @.str.33, %if.end20.i.cleanup.sink.split_crit_edge ], [ @.str.33, %if.end15.i.cleanup.sink.split_crit_edge ], [ @.str.33, %if.end.i.cleanup.sink.split_crit_edge ], [ @.str.33, %if.end.cleanup.sink.split_crit_edge ], [ @.str.33, %lor.lhs.false.i.cleanup.sink.split_crit_edge ], [ @.str.33, %tc3589x_keypad_init_key_hardware.exit.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call1, %entry.cleanup.sink.split_crit_edge ], [ %call56.i, %if.end55.i.cleanup.sink.split_crit_edge ], [ %call51.i, %if.end50.i.cleanup.sink.split_crit_edge ], [ %call46.i, %if.end45.i.cleanup.sink.split_crit_edge ], [ %call41.i, %if.end40.i.cleanup.sink.split_crit_edge ], [ %call36.i, %if.end35.i.cleanup.sink.split_crit_edge ], [ %call31.i, %if.end30.i.cleanup.sink.split_crit_edge ], [ %call26.i, %if.end25.i.cleanup.sink.split_crit_edge ], [ %call21.i, %if.end20.i.cleanup.sink.split_crit_edge ], [ %call16.i, %if.end15.i.cleanup.sink.split_crit_edge ], [ %call.i, %if.end.i.cleanup.sink.split_crit_edge ], [ -22, %if.end.cleanup.sink.split_crit_edge ], [ -22, %lor.lhs.false.i.cleanup.sink.split_crit_edge ], [ %call61.i, %tc3589x_keypad_init_key_hardware.exit.cleanup.sink.split_crit_edge ]
  %dev8 = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull %.str.33.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %tc3589x_keypad_init_key_hardware.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %tc3589x_keypad_init_key_hardware.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc3589x_keypad_close(ptr nocapture noundef readonly %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @tc3589x_set_bits(ptr noundef %3, i8 noundef zeroext 8, i8 noundef zeroext 0, i8 noundef zeroext 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.tc3589x_keypad_disable.exit_crit_edge, label %if.end.i

entry.tc3589x_keypad_disable.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %tc3589x_keypad_disable.exit

if.end.i:                                         ; preds = %entry
  %call2.i = tail call i32 @tc3589x_set_bits(ptr noundef %3, i8 noundef zeroext 9, i8 noundef zeroext -13, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.tc3589x_keypad_disable.exit_crit_edge, label %if.end5.i

if.end.i.tc3589x_keypad_disable.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tc3589x_keypad_disable.exit

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = tail call i32 @tc3589x_set_bits(ptr noundef %3, i8 noundef zeroext -118, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end5.i.tc3589x_keypad_disable.exit_crit_edge, label %if.end9.i

if.end5.i.tc3589x_keypad_disable.exit_crit_edge:  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tc3589x_keypad_disable.exit

if.end9.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  %call10.i = tail call i32 @tc3589x_set_bits(ptr noundef %3, i8 noundef zeroext -126, i8 noundef zeroext 2, i8 noundef zeroext 1) #5
  %keypad_stopped.i = getelementptr inbounds %struct.tc_keypad, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %keypad_stopped.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %keypad_stopped.i, align 4
  br label %tc3589x_keypad_disable.exit

tc3589x_keypad_disable.exit:                      ; preds = %if.end9.i, %if.end5.i.tc3589x_keypad_disable.exit_crit_edge, %if.end.i.tc3589x_keypad_disable.exit_crit_edge, %entry.tc3589x_keypad_disable.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matrix_keypad_build_keymap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc3589x_keypad_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %input = getelementptr inbounds %struct.tc_keypad, ptr %dev, i32 0, i32 1
  %keymap = getelementptr inbounds %struct.tc_keypad, ptr %dev, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.039 = phi i8 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %call = tail call i32 @tc3589x_reg_read(ptr noundef %1, i8 noundef zeroext 16) #5
  %trunc = trunc i32 %call to i8
  %2 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %if.end [
    i8 127, label %for.body.for.inc_crit_edge
    i8 -1, label %for.body.for.inc_crit_edge40
  ]

for.body.for.inc_crit_edge40:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %conv11 = and i32 %call, 15
  %3 = lshr i32 %call, 1
  %shl = and i32 %3, 56
  %add = add nuw nsw i32 %shl, %conv11
  %4 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input, align 4
  tail call void @input_event(ptr noundef %5, i32 noundef 4, i32 noundef 4, i32 noundef %add) #5
  %6 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input, align 4
  %8 = ptrtoint ptr %keymap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %keymap, align 4
  %arrayidx = getelementptr i16, ptr %9, i32 %add
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 2
  %conv23 = zext i16 %11 to i32
  %12 = lshr i32 %call, 7
  %.lobit = and i32 %12, 1
  %13 = xor i32 %.lobit, 1
  tail call void @input_event(ptr noundef %7, i32 noundef 1, i32 noundef %conv23, i32 noundef %13) #5
  %14 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %input, align 4
  tail call void @input_event(ptr noundef %15, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge, %for.body.for.inc_crit_edge40
  %inc = add nuw nsw i8 %i.039, 1
  %cmp = icmp ult i8 %i.039, 7
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %call25 = tail call i32 @tc3589x_set_bits(ptr noundef %1, i8 noundef zeroext 8, i8 noundef zeroext 0, i8 noundef zeroext 3) #5
  %call26 = tail call i32 @tc3589x_set_bits(ptr noundef %1, i8 noundef zeroext 9, i8 noundef zeroext 0, i8 noundef zeroext 12) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tc3589x_keypad_enable(ptr nocapture noundef %keypad) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %keypad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %keypad, align 4
  %call = tail call i32 @tc3589x_set_bits(ptr noundef %1, i8 noundef zeroext -126, i8 noundef zeroext 2, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @tc3589x_set_bits(ptr noundef %1, i8 noundef zeroext -113, i8 noundef zeroext 0, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @tc3589x_set_bits(ptr noundef %1, i8 noundef zeroext -118, i8 noundef zeroext 0, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call10 = tail call i32 @tc3589x_set_bits(ptr noundef %1, i8 noundef zeroext -124, i8 noundef zeroext 0, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %call14 = tail call i32 @tc3589x_set_bits(ptr noundef %1, i8 noundef zeroext 9, i8 noundef zeroext 0, i8 noundef zeroext 12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %keypad_stopped = getelementptr inbounds %struct.tc_keypad, ptr %keypad, i32 0, i32 6
  %2 = ptrtoint ptr %keypad_stopped to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %keypad_stopped, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end17 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tc3589x_set_bits(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tc3589x_reg_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tc3589x_reg_read(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc3589x_keypad_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef 0) #5
  %keypad_stopped = getelementptr inbounds %struct.tc_keypad, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %keypad_stopped to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %keypad_stopped, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.if.then4_crit_edge, label %device_may_wakeup.exit

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

device_may_wakeup.exit:                           ; preds = %if.end
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.then4_crit_edge, label %if.else

device_may_wakeup.exit.if.then4_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

if.then4:                                         ; preds = %device_may_wakeup.exit.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @tc3589x_set_bits(ptr noundef %8, i8 noundef zeroext 8, i8 noundef zeroext 0, i8 noundef zeroext 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then4.cleanup_crit_edge, label %if.end.i

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.then4
  %call2.i = tail call i32 @tc3589x_set_bits(ptr noundef %8, i8 noundef zeroext 9, i8 noundef zeroext -13, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %if.end5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = tail call i32 @tc3589x_set_bits(ptr noundef %8, i8 noundef zeroext -118, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end5.i.cleanup_crit_edge, label %if.end9.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  %call10.i = tail call i32 @tc3589x_set_bits(ptr noundef %8, i8 noundef zeroext -126, i8 noundef zeroext 2, i8 noundef zeroext 1) #5
  %9 = ptrtoint ptr %keypad_stopped to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %keypad_stopped, align 4
  br label %cleanup

if.else:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i13 = tail call i32 @irq_set_irq_wake(i32 noundef %call1, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end9.i, %if.end5.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc3589x_keypad_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef 0) #5
  %keypad_stopped = getelementptr inbounds %struct.tc_keypad, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %keypad_stopped to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %keypad_stopped, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.if.then4_crit_edge, label %device_may_wakeup.exit

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

device_may_wakeup.exit:                           ; preds = %if.end
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.then4_crit_edge, label %if.else

device_may_wakeup.exit.if.then4_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

if.then4:                                         ; preds = %device_may_wakeup.exit.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %call5 = tail call fastcc i32 @tc3589x_keypad_enable(ptr noundef %1)
  br label %cleanup

if.else:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %call1, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then4, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !46, !47, !48, !49, !51, !53, !54, !55, !57, !59, !61, !63, !65, !66, !67, !68, !70, !71, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__initcall__kmod_tc3589x_keypad__288_507_tc3589x_keypad_driver_init6, !1, !"__initcall__kmod_tc3589x_keypad__288_507_tc3589x_keypad_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/tc3589x-keypad.c", i32 507, i32 1}
!2 = !{ptr @__exitcall_tc3589x_keypad_driver_exit, !1, !"__exitcall_tc3589x_keypad_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file289, !4, !"__UNIQUE_ID_file289", i1 false, i1 false}
!4 = !{!"../drivers/input/keyboard/tc3589x-keypad.c", i32 509, i32 1}
!5 = !{ptr @__UNIQUE_ID_license290, !4, !"__UNIQUE_ID_license290", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author291, !7, !"__UNIQUE_ID_author291", i1 false, i1 false}
!7 = !{!"../drivers/input/keyboard/tc3589x-keypad.c", i32 510, i32 1}
!8 = !{ptr @__UNIQUE_ID_description292, !9, !"__UNIQUE_ID_description292", i1 false, i1 false}
!9 = !{!"../drivers/input/keyboard/tc3589x-keypad.c", i32 511, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias293, !11, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!11 = !{!"../drivers/input/keyboard/tc3589x-keypad.c", i32 512, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/keyboard/tc3589x-keypad.c", i32 502, i32 11}
!14 = !{ptr @tc3589x_keypad_driver, !15, !"tc3589x_keypad_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/keyboard/tc3589x-keypad.c", i32 500, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/keyboard/tc3589x-keypad.c", i32 384, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @tc3589x_keypad_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @tc3589x_keypad_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/keyboard/tc3589x-keypad.c", i32 399, i32 3}
!26 = !{ptr @tc3589x_keypad_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @tc3589x_keypad_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/keyboard/tc3589x-keypad.c", i32 418, i32 3}
!30 = !{ptr @tc3589x_keypad_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @tc3589x_keypad_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/keyboard/tc3589x-keypad.c", i32 437, i32 3}
!34 = !{ptr @tc3589x_keypad_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @tc3589x_keypad_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/keyboard/tc3589x-keypad.c", i32 445, i32 3}
!38 = !{ptr @tc3589x_keypad_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @tc3589x_keypad_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/keyboard/tc3589x-keypad.c", i32 337, i32 27}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/keyboard/tc3589x-keypad.c", i32 338, i32 27}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/keyboard/tc3589x-keypad.c", i32 343, i32 3}
!46 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @tc3589x_keypad_of_probe._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @tc3589x_keypad_of_probe._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/input/keyboard/tc3589x-keypad.c", i32 349, i32 27}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/input/keyboard/tc3589x-keypad.c", i32 350, i32 3}
!53 = !{ptr @tc3589x_keypad_of_probe._entry.23, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @tc3589x_keypad_of_probe._entry_ptr.25, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/keyboard/tc3589x-keypad.c", i32 354, i32 50}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/input/keyboard/tc3589x-keypad.c", i32 356, i32 50}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/input/keyboard/tc3589x-keypad.c", i32 358, i32 36}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/input/keyboard/tc3589x-keypad.c", i32 361, i32 27}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/input/keyboard/tc3589x-keypad.c", i32 300, i32 3}
!65 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @tc3589x_keypad_open._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @tc3589x_keypad_open._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/input/keyboard/tc3589x-keypad.c", i32 306, i32 3}
!70 = !{ptr @tc3589x_keypad_open._entry.32, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @tc3589x_keypad_open._entry_ptr.34, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @tc3589x_keypad_dev_pm_ops, !73, !"tc3589x_keypad_dev_pm_ops", i1 false, i1 false}
!73 = !{!"../drivers/input/keyboard/tc3589x-keypad.c", i32 497, i32 8}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{!"auto-init"}
!84 = !{i8 0, i8 2}
