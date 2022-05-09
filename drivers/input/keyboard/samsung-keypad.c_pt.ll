; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/samsung-keypad.c_pt.bc'
source_filename = "../drivers/input/keyboard/samsung-keypad.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.samsung_keypad_platdata = type { ptr, i32, i32, i8, i8, ptr }
%struct.matrix_keymap_data = type { ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.samsung_keypad = type { ptr, ptr, ptr, ptr, %struct.wait_queue_head, i8, i8, i32, i32, i32, i32, i32, [8 x i32], [0 x i16] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__initcall__kmod_samsung_keypad__229_605_samsung_keypad_driver_init6 = internal global ptr @samsung_keypad_driver_init, section ".initcall6.init", align 4
@samsung_keypad_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @samsung_keypad_probe, ptr @samsung_keypad_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @samsung_keypad_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_keypad_pm_ops, ptr null, ptr null }, ptr @samsung_keypad_driver_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_samsung_keypad_driver_exit = internal global ptr @samsung_keypad_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description230 = internal constant [49 x i8] c"samsung_keypad.description=Samsung keypad driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author231 = internal constant [63 x i8] c"samsung_keypad.author=Joonyoung Shim <jy0922.shim@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author232 = internal constant [57 x i8] c"samsung_keypad.author=Donghwa Lee <dh09.lee@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [58 x i8] c"samsung_keypad.file=drivers/input/keyboard/samsung-keypad\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [27 x i8] c"samsung_keypad.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"samsung-keypad\00", [17 x i8] zeroinitializer }, align 32
@samsung_keypad_dt_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c6410-keypad\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5pv210-keypad\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@samsung_keypad_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @samsung_keypad_suspend, ptr @samsung_keypad_resume, ptr @samsung_keypad_suspend, ptr @samsung_keypad_resume, ptr @samsung_keypad_suspend, ptr @samsung_keypad_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_keypad_runtime_suspend, ptr @samsung_keypad_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@samsung_keypad_driver_ids = internal constant { [3 x %struct.platform_device_id], [56 x i8] } { [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"samsung-keypad\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"s5pv210-keypad\00\00\00\00\00\00", i32 1 }, %struct.platform_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@samsung_keypad_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 334, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"no keymap data defined\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"samsung_keypad_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/input/keyboard/samsung-keypad.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@samsung_keypad_probe._entry_ptr = internal global ptr @samsung_keypad_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"keypad\00", [25 x i8] zeroinitializer }, align 32
@samsung_keypad_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 367, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get keypad clk\0A\00", [38 x i8] zeroinitializer }, align 32
@samsung_keypad_probe._entry_ptr.9 = internal global ptr @samsung_keypad_probe._entry.7, section ".printk_index", align 4
@samsung_keypad_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 373, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"keypad clock prepare failed\0A\00", [35 x i8] zeroinitializer }, align 32
@samsung_keypad_probe._entry_ptr.12 = internal global ptr @samsung_keypad_probe._entry.10, section ".printk_index", align 4
@samsung_keypad_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&keypad->wait\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"samsung,s5pv210-keypad\00", [41 x i8] zeroinitializer }, align 32
@samsung_keypad_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 402, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to build keymap\0A\00", [40 x i8] zeroinitializer }, align 32
@samsung_keypad_probe._entry_ptr.17 = internal global ptr @samsung_keypad_probe._entry.15, section ".printk_index", align 4
@samsung_keypad_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 422, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register keypad interrupt\0A\00", [59 x i8] zeroinitializer }, align 32
@samsung_keypad_probe._entry_ptr.20 = internal global ptr @samsung_keypad_probe._entry.18, section ".printk_index", align 4
@samsung_keypad_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 251, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"missing device tree data\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"samsung_keypad_parse_dt\00", [40 x i8] zeroinitializer }, align 32
@samsung_keypad_parse_dt._entry_ptr = internal global ptr @samsung_keypad_parse_dt._entry, section ".printk_index", align 4
@samsung_keypad_parse_dt._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.3, i32 257, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"could not allocate memory for platform data\0A\00", [51 x i8] zeroinitializer }, align 32
@samsung_keypad_parse_dt._entry_ptr.25 = internal global ptr @samsung_keypad_parse_dt._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"samsung,keypad-num-rows\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"samsung,keypad-num-columns\00", [37 x i8] zeroinitializer }, align 32
@samsung_keypad_parse_dt._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.22, ptr @.str.3, i32 264, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"number of keypad rows/columns not specified\0A\00", [51 x i8] zeroinitializer }, align 32
@samsung_keypad_parse_dt._entry_ptr.30 = internal global ptr @samsung_keypad_parse_dt._entry.28, section ".printk_index", align 4
@samsung_keypad_parse_dt._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.22, ptr @.str.3, i32 272, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"could not allocate memory for keymap data\0A\00", [53 x i8] zeroinitializer }, align 32
@samsung_keypad_parse_dt._entry_ptr.33 = internal global ptr @samsung_keypad_parse_dt._entry.31, section ".printk_index", align 4
@samsung_keypad_parse_dt._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.22, ptr @.str.3, i32 281, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"could not allocate memory for keymap\0A\00", [58 x i8] zeroinitializer }, align 32
@samsung_keypad_parse_dt._entry_ptr.36 = internal global ptr @samsung_keypad_parse_dt._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"keypad,row\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"keypad,column\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"linux,code\00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"linux,input-no-autorepeat\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wakeup-source\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"linux,input-wakeup\00", [45 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@samsung_keypad_report.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.44, ptr @.str.3, ptr @.str.45, i8 0, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"samsung_keypad\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"samsung_keypad_report\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"key %s, row: %d, col: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pressed\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"released\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.48 = private unnamed_addr constant [22 x i8] c"samsung_keypad_driver\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 595, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 599, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant [24 x i8] c"samsung_keypad_dt_match\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 575, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant [22 x i8] c"samsung_keypad_pm_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 568, i32 32 }
@___asan_gen_.60 = private unnamed_addr constant [26 x i8] c"samsung_keypad_driver_ids\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 583, i32 40 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 334, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 365, i32 41 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 367, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 373, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 383, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 387, i32 6 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 402, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 422, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 251, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 257, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 261, i32 27 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 262, i32 27 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 264, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 272, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 281, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 288, i32 32 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 289, i32 32 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 290, i32 32 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 294, i32 26 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 297, i32 44 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 299, i32 30 }
@___asan_gen_.186 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.187 = private constant [43 x i8] c"../drivers/input/keyboard/samsung-keypad.c\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 127, i32 4 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_samsung_keypad_driver_exit, ptr @__initcall__kmod_samsung_keypad__229_605_samsung_keypad_driver_init6, ptr @samsung_keypad_driver_exit, ptr @samsung_keypad_parse_dt._entry, ptr @samsung_keypad_parse_dt._entry.23, ptr @samsung_keypad_parse_dt._entry.28, ptr @samsung_keypad_parse_dt._entry.31, ptr @samsung_keypad_parse_dt._entry.34, ptr @samsung_keypad_parse_dt._entry_ptr, ptr @samsung_keypad_parse_dt._entry_ptr.25, ptr @samsung_keypad_parse_dt._entry_ptr.30, ptr @samsung_keypad_parse_dt._entry_ptr.33, ptr @samsung_keypad_parse_dt._entry_ptr.36, ptr @samsung_keypad_probe._entry, ptr @samsung_keypad_probe._entry.10, ptr @samsung_keypad_probe._entry.15, ptr @samsung_keypad_probe._entry.18, ptr @samsung_keypad_probe._entry.7, ptr @samsung_keypad_probe._entry_ptr, ptr @samsung_keypad_probe._entry_ptr.12, ptr @samsung_keypad_probe._entry_ptr.17, ptr @samsung_keypad_probe._entry_ptr.20, ptr @samsung_keypad_probe._entry_ptr.9, ptr @samsung_keypad_driver, ptr @.str, ptr @samsung_keypad_dt_match, ptr @samsung_keypad_pm_ops, ptr @samsung_keypad_driver_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @samsung_keypad_probe.__key, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_keypad_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_keypad_dt_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_keypad_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_keypad_driver_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_keypad_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_keypad_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_keypad_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_keypad_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_keypad_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_keypad_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_keypad_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_keypad_parse_dt._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_keypad_parse_dt._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_keypad_parse_dt._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_keypad_parse_dt._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_keypad_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @samsung_keypad_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @samsung_keypad_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @samsung_keypad_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_keypad_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %num_rows.i = alloca i32, align 4
  %num_cols.i = alloca i32, align 4
  %row.i = alloca i32, align 4
  %col.i = alloca i32, align 4
  %key_code.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_rows.i) #6
  %2 = ptrtoint ptr %num_rows.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %num_rows.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_cols.i) #6
  %3 = ptrtoint ptr %num_cols.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %num_cols.i, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #9
  br label %samsung_keypad_parse_dt.exit.thread

if.end.i:                                         ; preds = %if.then
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #6
  %tobool2.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i, label %do.end6.i, label %if.end8.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #9
  br label %samsung_keypad_parse_dt.exit.thread

if.end8.i:                                        ; preds = %if.end.i
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.26, ptr noundef nonnull %num_rows.i, i32 noundef 1, i32 noundef 0) #6
  %call.i.i93.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.27, ptr noundef nonnull %num_cols.i, i32 noundef 1, i32 noundef 0) #6
  %6 = ptrtoint ptr %num_rows.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_rows.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool11.not.i = icmp eq i32 %7, 0
  br i1 %tobool11.not.i, label %if.end8.i.do.end16.i_crit_edge, label %lor.lhs.false.i

if.end8.i.do.end16.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16.i

lor.lhs.false.i:                                  ; preds = %if.end8.i
  %8 = ptrtoint ptr %num_cols.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_cols.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool12.not.i = icmp eq i32 %9, 0
  br i1 %tobool12.not.i, label %lor.lhs.false.i.do.end16.i_crit_edge, label %if.end18.i

lor.lhs.false.i.do.end16.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16.i

do.end16.i:                                       ; preds = %lor.lhs.false.i.do.end16.i_crit_edge, %if.end8.i.do.end16.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #9
  br label %samsung_keypad_parse_dt.exit.thread

if.end18.i:                                       ; preds = %lor.lhs.false.i
  %rows.i = getelementptr inbounds %struct.samsung_keypad_platdata, ptr %call.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %rows.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %rows.i, align 4
  %cols.i = getelementptr inbounds %struct.samsung_keypad_platdata, ptr %call.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %cols.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %9, ptr %cols.i, align 4
  %call.i94.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #6
  %tobool20.not.i = icmp eq ptr %call.i94.i, null
  br i1 %tobool20.not.i, label %do.end24.i, label %if.end26.i

do.end24.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32) #9
  br label %samsung_keypad_parse_dt.exit.thread

if.end26.i:                                       ; preds = %if.end18.i
  %12 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i94.i, ptr %call.i.i, align 4
  %call.i95.i = call ptr @of_get_next_child(ptr noundef nonnull %5, ptr noundef null) #6
  %cmp.not5.i.i = icmp eq ptr %call.i95.i, null
  br i1 %cmp.not5.i.i, label %if.end26.i.of_get_child_count.exit.i_crit_edge, label %if.end26.i.for.body.i.i_crit_edge

if.end26.i.for.body.i.i_crit_edge:                ; preds = %if.end26.i
  br label %for.body.i.i

if.end26.i.of_get_child_count.exit.i_crit_edge:   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_get_child_count.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end26.i.for.body.i.i_crit_edge
  %num.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end26.i.for.body.i.i_crit_edge ]
  %child.06.i.i = phi ptr [ %call1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i95.i, %if.end26.i.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %num.07.i.i, 1
  %call1.i.i = call ptr @of_get_next_child(ptr noundef nonnull %5, ptr noundef nonnull %child.06.i.i) #6
  %cmp.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp.not.i.i, label %for.body.i.i.of_get_child_count.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.body.i.i.of_get_child_count.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_get_child_count.exit.i

of_get_child_count.exit.i:                        ; preds = %for.body.i.i.of_get_child_count.exit.i_crit_edge, %if.end26.i.of_get_child_count.exit.i_crit_edge
  %num.0.lcssa.i.i = phi i32 [ 0, %if.end26.i.of_get_child_count.exit.i_crit_edge ], [ %inc.i.i, %for.body.i.i.of_get_child_count.exit.i_crit_edge ]
  %keymap_size.i = getelementptr inbounds %struct.matrix_keymap_data, ptr %call.i94.i, i32 0, i32 1
  %13 = ptrtoint ptr %keymap_size.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %num.0.lcssa.i.i, ptr %keymap_size.i, align 4
  %14 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num.0.lcssa.i.i, i32 4) #6
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %of_get_child_count.exit.i.do.end34.i_crit_edge, label %devm_kcalloc.exit.i, !prof !106

of_get_child_count.exit.i.do.end34.i_crit_edge:   ; preds = %of_get_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34.i

devm_kcalloc.exit.i:                              ; preds = %of_get_child_count.exit.i
  %16 = extractvalue { i32, i1 } %14, 0
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %16, i32 noundef 3520) #6
  %tobool30.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool30.not.i, label %devm_kcalloc.exit.i.do.end34.i_crit_edge, label %if.end36.i

devm_kcalloc.exit.i.do.end34.i_crit_edge:         ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34.i

do.end34.i:                                       ; preds = %devm_kcalloc.exit.i.do.end34.i_crit_edge, %of_get_child_count.exit.i.do.end34.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #9
  br label %samsung_keypad_parse_dt.exit.thread

if.end36.i:                                       ; preds = %devm_kcalloc.exit.i
  %17 = ptrtoint ptr %call.i94.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5.i.i.i, ptr %call.i94.i, align 4
  %call38.i = call ptr @of_get_next_child(ptr noundef nonnull %5, ptr noundef null) #6
  %cmp.not104.i = icmp eq ptr %call38.i, null
  br i1 %cmp.not104.i, label %if.end36.i.for.end.i_crit_edge, label %if.end36.i.for.body.i_crit_edge

if.end36.i.for.body.i_crit_edge:                  ; preds = %if.end36.i
  br label %for.body.i

if.end36.i.for.end.i_crit_edge:                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end36.i.for.body.i_crit_edge
  %key_np.0106.i = phi ptr [ %call46.i, %for.body.i.for.body.i_crit_edge ], [ %call38.i, %if.end36.i.for.body.i_crit_edge ]
  %keymap.0105.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %call5.i.i.i, %if.end36.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %row.i) #6
  %18 = ptrtoint ptr %row.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %row.i, align 4, !annotation !107
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %col.i) #6
  %19 = ptrtoint ptr %col.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %col.i, align 4, !annotation !107
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key_code.i) #6
  %20 = ptrtoint ptr %key_code.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %key_code.i, align 4, !annotation !107
  %call.i.i96.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %key_np.0106.i, ptr noundef nonnull @.str.37, ptr noundef nonnull %row.i, i32 noundef 1, i32 noundef 0) #6
  %call.i.i97.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %key_np.0106.i, ptr noundef nonnull @.str.38, ptr noundef nonnull %col.i, i32 noundef 1, i32 noundef 0) #6
  %call.i.i98.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %key_np.0106.i, ptr noundef nonnull @.str.39, ptr noundef nonnull %key_code.i, i32 noundef 1, i32 noundef 0) #6
  %21 = ptrtoint ptr %row.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %row.i, align 4
  %and.i = shl i32 %22, 24
  %shl.i = and i32 %and.i, 520093696
  %23 = ptrtoint ptr %col.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %col.i, align 4
  %and42.i = shl i32 %24, 16
  %shl43.i = and i32 %and42.i, 2031616
  %or.i253 = or i32 %shl43.i, %shl.i
  %25 = ptrtoint ptr %key_code.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %key_code.i, align 4
  %and44.i = and i32 %26, 65535
  %or45.i = or i32 %or.i253, %and44.i
  %incdec.ptr.i = getelementptr i32, ptr %keymap.0105.i, i32 1
  %27 = ptrtoint ptr %keymap.0105.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or45.i, ptr %keymap.0105.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key_code.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %col.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %row.i) #6
  %call46.i = call ptr @of_get_next_child(ptr noundef nonnull %5, ptr noundef nonnull %key_np.0106.i) #6
  %cmp.not.i = icmp eq ptr %call46.i, null
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end36.i.for.end.i_crit_edge
  %call47.i = call ptr @of_get_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.40, ptr noundef null) #6
  %tobool48.not.i = icmp eq ptr %call47.i, null
  br i1 %tobool48.not.i, label %for.end.i.if.end50.i_crit_edge, label %if.then49.i

for.end.i.if.end50.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.i

if.then49.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %no_autorepeat.i = getelementptr inbounds %struct.samsung_keypad_platdata, ptr %call.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %no_autorepeat.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %no_autorepeat.i, align 4
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then49.i, %for.end.i.if.end50.i_crit_edge
  %call.i99.i = call ptr @of_find_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.41, ptr noundef null) #6
  %tobool.i.not.i = icmp eq ptr %call.i99.i, null
  br i1 %tobool.i.not.i, label %lor.rhs.i, label %if.end50.i.samsung_keypad_parse_dt.exit_crit_edge

if.end50.i.samsung_keypad_parse_dt.exit_crit_edge: ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %samsung_keypad_parse_dt.exit

lor.rhs.i:                                        ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i100.i = call ptr @of_find_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.42, ptr noundef null) #6
  %tobool.i101.i = icmp ne ptr %call.i100.i, null
  br label %samsung_keypad_parse_dt.exit

samsung_keypad_parse_dt.exit.thread:              ; preds = %do.end34.i, %do.end24.i, %do.end16.i, %do.end6.i, %do.end.i
  %retval.0.i.ph = phi ptr [ inttoptr (i32 -22 to ptr), %do.end.i ], [ inttoptr (i32 -12 to ptr), %do.end6.i ], [ inttoptr (i32 -22 to ptr), %do.end16.i ], [ inttoptr (i32 -12 to ptr), %do.end24.i ], [ inttoptr (i32 -12 to ptr), %do.end34.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_cols.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_rows.i) #6
  br label %if.then4

samsung_keypad_parse_dt.exit:                     ; preds = %lor.rhs.i, %if.end50.i.samsung_keypad_parse_dt.exit_crit_edge
  %29 = phi i1 [ true, %if.end50.i.samsung_keypad_parse_dt.exit_crit_edge ], [ %tobool.i101.i, %lor.rhs.i ]
  %wakeup.i = getelementptr inbounds %struct.samsung_keypad_platdata, ptr %call.i.i, i32 0, i32 4
  %frombool.i = zext i1 %29 to i8
  %30 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %frombool.i, ptr %wakeup.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_cols.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_rows.i) #6
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %samsung_keypad_parse_dt.exit.if.then4_crit_edge, label %samsung_keypad_parse_dt.exit.if.end6_crit_edge

samsung_keypad_parse_dt.exit.if.end6_crit_edge:   ; preds = %samsung_keypad_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

samsung_keypad_parse_dt.exit.if.then4_crit_edge:  ; preds = %samsung_keypad_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

if.then4:                                         ; preds = %samsung_keypad_parse_dt.exit.if.then4_crit_edge, %samsung_keypad_parse_dt.exit.thread
  %retval.0.i264 = phi ptr [ %retval.0.i.ph, %samsung_keypad_parse_dt.exit.thread ], [ %call.i.i, %samsung_keypad_parse_dt.exit.if.then4_crit_edge ]
  %31 = ptrtoint ptr %retval.0.i264 to i32
  br label %cleanup

if.end6:                                          ; preds = %samsung_keypad_parse_dt.exit.if.end6_crit_edge, %entry.if.end6_crit_edge
  %pdata.0 = phi ptr [ %1, %entry.if.end6_crit_edge ], [ %call.i.i, %samsung_keypad_parse_dt.exit.if.end6_crit_edge ]
  %32 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdata.0, align 4
  %tobool8.not = icmp eq ptr %33, null
  br i1 %tobool8.not, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %rows = getelementptr inbounds %struct.samsung_keypad_platdata, ptr %pdata.0, i32 0, i32 1
  %34 = ptrtoint ptr %rows to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rows, align 4
  %36 = add i32 %35, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %36)
  %37 = icmp ult i32 %36, -8
  br i1 %37, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %cols = getelementptr inbounds %struct.samsung_keypad_platdata, ptr %pdata.0, i32 0, i32 2
  %38 = ptrtoint ptr %cols to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cols, align 4
  %40 = add i32 %39, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %40)
  %41 = icmp ult i32 %40, -8
  br i1 %41, label %if.end15.cleanup_crit_edge, label %if.end21

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  %cfg_gpio = getelementptr inbounds %struct.samsung_keypad_platdata, ptr %pdata.0, i32 0, i32 5
  %42 = ptrtoint ptr %cfg_gpio to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cfg_gpio, align 4
  %tobool22.not = icmp eq ptr %43, null
  br i1 %tobool22.not, label %if.end21.if.end27_crit_edge, label %if.then23

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  call void %43(i32 noundef %35, i32 noundef %39) #6
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.end21.if.end27_crit_edge
  %44 = ptrtoint ptr %cols to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cols, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.i254 = icmp eq i32 %45, 0
  br i1 %cmp.i254, label %if.end27.get_count_order.exit_crit_edge, label %if.end.i255

if.end27.get_count_order.exit_crit_edge:          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_count_order.exit

if.end.i255:                                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %dec.i = add i32 %45, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i.i = icmp eq i32 %dec.i, 0
  %46 = call i32 @llvm.ctlz.i32(i32 %dec.i, i1 true) #6, !range !108
  %sub.i.i = sub nuw nsw i32 32, %46
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  br label %get_count_order.exit

get_count_order.exit:                             ; preds = %if.end.i255, %if.end27.get_count_order.exit_crit_edge
  %retval.0.i256 = phi i32 [ %cond.i.i, %if.end.i255 ], [ -1, %if.end27.get_count_order.exit_crit_edge ]
  %47 = ptrtoint ptr %rows to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rows, align 4
  %shl = shl i32 %48, %retval.0.i256
  %mul = shl i32 %shl, 1
  %add = add i32 %mul, 124
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %add, i32 noundef 3520) #6
  %call34 = call ptr @devm_input_allocate_device(ptr noundef %dev) #6
  %tobool35.not = icmp eq ptr %call.i, null
  %tobool37.not = icmp eq ptr %call34, null
  %or.cond252 = select i1 %tobool35.not, i1 true, i1 %tobool37.not
  br i1 %or.cond252, label %get_count_order.exit.cleanup_crit_edge, label %if.end39

get_count_order.exit.cleanup_crit_edge:           ; preds = %get_count_order.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end39:                                         ; preds = %get_count_order.exit
  %call40 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %if.end39.cleanup_crit_edge, label %if.end43

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end43:                                         ; preds = %if.end39
  %49 = ptrtoint ptr %call40 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %call40, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call40, i32 0, i32 1
  %51 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %50
  %add.i = add i32 %sub.i, %52
  %call46 = call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %50, i32 noundef %add.i) #6
  %base = getelementptr inbounds %struct.samsung_keypad, ptr %call.i, i32 0, i32 3
  %53 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call46, ptr %base, align 4
  %tobool48.not = icmp eq ptr %call46, null
  br i1 %tobool48.not, label %if.end43.cleanup_crit_edge, label %if.end50

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end50:                                         ; preds = %if.end43
  %call52 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.6) #6
  %clk = getelementptr inbounds %struct.samsung_keypad, ptr %call.i, i32 0, i32 2
  %54 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call52, ptr %clk, align 4
  %cmp.i257 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i257, label %do.end58, label %if.end62

do.end58:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  %55 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %clk, align 4
  %57 = ptrtoint ptr %56 to i32
  br label %cleanup

if.end62:                                         ; preds = %if.end50
  %call64 = call i32 @clk_prepare(ptr noundef %call52) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end71, label %do.end69

do.end69:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end71:                                         ; preds = %if.end62
  %58 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call34, ptr %call.i, align 4
  %pdev73 = getelementptr inbounds %struct.samsung_keypad, ptr %call.i, i32 0, i32 1
  %59 = ptrtoint ptr %pdev73 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %pdev, ptr %pdev73, align 4
  %row_shift74 = getelementptr inbounds %struct.samsung_keypad, ptr %call.i, i32 0, i32 9
  %60 = ptrtoint ptr %row_shift74 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %retval.0.i256, ptr %row_shift74, align 4
  %61 = ptrtoint ptr %rows to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rows, align 4
  %rows76 = getelementptr inbounds %struct.samsung_keypad, ptr %call.i, i32 0, i32 10
  %63 = ptrtoint ptr %rows76 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %rows76, align 4
  %64 = ptrtoint ptr %cols to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cols, align 4
  %cols78 = getelementptr inbounds %struct.samsung_keypad, ptr %call.i, i32 0, i32 11
  %66 = ptrtoint ptr %cols78 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %cols78, align 4
  %stopped = getelementptr inbounds %struct.samsung_keypad, ptr %call.i, i32 0, i32 5
  %67 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %stopped, align 4
  %wait = getelementptr inbounds %struct.samsung_keypad, ptr %call.i, i32 0, i32 4
  call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.13, ptr noundef nonnull @samsung_keypad_probe.__key) #6
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %68 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %of_node, align 8
  %tobool83.not = icmp eq ptr %69, null
  br i1 %tobool83.not, label %if.else, label %if.then84

if.then84:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  %call87 = call i32 @of_device_is_compatible(ptr noundef nonnull %69, ptr noundef nonnull @.str.14) #6
  br label %if.end89

if.else:                                          ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %70 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %id_entry, align 4
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %driver_data, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.else, %if.then84
  %call87.sink = phi i32 [ %73, %if.else ], [ %call87, %if.then84 ]
  %74 = getelementptr inbounds %struct.samsung_keypad, ptr %call.i, i32 0, i32 8
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %call87.sink, ptr %74, align 4
  %76 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pdev, align 8
  %78 = ptrtoint ptr %call34 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %call34, align 8
  %id = getelementptr inbounds %struct.input_dev, ptr %call34, i32 0, i32 3
  %79 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 25, ptr %id, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %call34, i32 0, i32 40, i32 1
  %80 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %dev, ptr %parent, align 8
  %open = getelementptr inbounds %struct.input_dev, ptr %call34, i32 0, i32 31
  %81 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @samsung_keypad_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call34, i32 0, i32 32
  %82 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @samsung_keypad_close, ptr %close, align 4
  %83 = ptrtoint ptr %rows to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %rows, align 4
  %85 = ptrtoint ptr %cols to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %cols, align 4
  %keycodes = getelementptr inbounds %struct.samsung_keypad, ptr %call.i, i32 0, i32 13
  %call95 = call i32 @matrix_keypad_build_keymap(ptr noundef nonnull %33, ptr noundef null, i32 noundef %84, i32 noundef %86, ptr noundef %keycodes, ptr noundef nonnull %call34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end102, label %do.end100

do.end100:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #9
  br label %err_unprepare_clk

if.end102:                                        ; preds = %if.end89
  call void @input_set_capability(ptr noundef nonnull %call34, i32 noundef 4, i32 noundef 4) #6
  %no_autorepeat = getelementptr inbounds %struct.samsung_keypad_platdata, ptr %pdata.0, i32 0, i32 3
  %87 = ptrtoint ptr %no_autorepeat to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %no_autorepeat, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool103.not = icmp eq i8 %88, 0
  br i1 %tobool103.not, label %if.then104, label %if.end102.if.end106_crit_edge

if.end102.if.end106_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106

if.then104:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call34, i32 0, i32 5
  %89 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %evbit, align 4
  %or.i = or i32 %90, 1048576
  store i32 %or.i, ptr %evbit, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %if.end102.if.end106_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call34, i32 0, i32 40, i32 8
  %91 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call107 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.samsung_keypad, ptr %call.i, i32 0, i32 7
  %92 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %call107, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %cmp109 = icmp slt i32 %call107, 0
  br i1 %cmp109, label %if.end106.err_unprepare_clk_crit_edge, label %if.end112

if.end106.err_unprepare_clk_crit_edge:            ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unprepare_clk

if.end112:                                        ; preds = %if.end106
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %93 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i258 = icmp eq ptr %94, null
  br i1 %tobool.not.i258, label %if.end.i259, label %if.end112.dev_name.exit_crit_edge

if.end112.dev_name.exit_crit_edge:                ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i259:                                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  %95 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i259, %if.end112.dev_name.exit_crit_edge
  %retval.0.i260 = phi ptr [ %96, %if.end.i259 ], [ %94, %if.end112.dev_name.exit_crit_edge ]
  %call117 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call107, ptr noundef null, ptr noundef nonnull @samsung_keypad_irq, i32 noundef 8192, ptr noundef %retval.0.i260, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end124, label %do.end122

do.end122:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #9
  br label %err_unprepare_clk

if.end124:                                        ; preds = %dev_name.exit
  %wakeup = getelementptr inbounds %struct.samsung_keypad_platdata, ptr %pdata.0, i32 0, i32 4
  %97 = ptrtoint ptr %wakeup to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %wakeup, align 1, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool126 = icmp ne i8 %98, 0
  %call127 = call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext %tobool126) #6
  %driver_data.i.i261 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %99 = ptrtoint ptr %driver_data.i.i261 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call.i, ptr %driver_data.i.i261, align 4
  call void @pm_runtime_enable(ptr noundef %dev) #6
  %100 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %call.i, align 4
  %call130 = call i32 @input_register_device(ptr noundef %101) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.end133, label %err_disable_runtime_pm

if.end133:                                        ; preds = %if.end124
  %102 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %of_node, align 8
  %tobool136.not = icmp eq ptr %103, null
  br i1 %tobool136.not, label %if.end133.cleanup_crit_edge, label %if.then137

if.end133.cleanup_crit_edge:                      ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then137:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #8
  %104 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pdata.0, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 4
  call void @devm_kfree(ptr noundef %dev, ptr noundef %107) #6
  %108 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pdata.0, align 4
  call void @devm_kfree(ptr noundef %dev, ptr noundef %109) #6
  call void @devm_kfree(ptr noundef %dev, ptr noundef %pdata.0) #6
  br label %cleanup

err_disable_runtime_pm:                           ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #8
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  br label %err_unprepare_clk

err_unprepare_clk:                                ; preds = %err_disable_runtime_pm, %do.end122, %if.end106.err_unprepare_clk_crit_edge, %do.end100
  %error.0 = phi i32 [ %call95, %do.end100 ], [ %call117, %do.end122 ], [ %call130, %err_disable_runtime_pm ], [ %call107, %if.end106.err_unprepare_clk_crit_edge ]
  %110 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %clk, align 4
  call void @clk_unprepare(ptr noundef %111) #6
  br label %cleanup

cleanup:                                          ; preds = %err_unprepare_clk, %if.then137, %if.end133.cleanup_crit_edge, %do.end69, %do.end58, %if.end43.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %get_count_order.exit.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %do.end, %if.then4
  %retval.0 = phi i32 [ %57, %do.end58 ], [ %call64, %do.end69 ], [ %error.0, %err_unprepare_clk ], [ -22, %do.end ], [ %31, %if.then4 ], [ -22, %if.end11.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ], [ -12, %get_count_order.exit.cleanup_crit_edge ], [ -19, %if.end39.cleanup_crit_edge ], [ -16, %if.end43.cleanup_crit_edge ], [ 0, %if.then137 ], [ 0, %if.end133.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_keypad_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @input_unregister_device(ptr noundef %3) #6
  %clk = getelementptr inbounds %struct.samsung_keypad, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_unprepare(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_keypad_open(ptr nocapture noundef readonly %input_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input_dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pdev.i = getelementptr inbounds %struct.samsung_keypad, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #6
  %stopped.i = getelementptr inbounds %struct.samsung_keypad, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %stopped.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %stopped.i, align 4
  %clk.i = getelementptr inbounds %struct.samsung_keypad, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk.i, align 4
  %call1.i = tail call i32 @clk_enable(ptr noundef %6) #6
  %base.i = getelementptr inbounds %struct.samsung_keypad, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  %10 = or i32 %9, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #6, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 0) #6, !srcloc !113
  %15 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev.i, align 4
  %dev12.i = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3
  %call.i21.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev12.i, i32 noundef 5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @samsung_keypad_close(ptr nocapture noundef readonly %input_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input_dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @samsung_keypad_stop(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matrix_keypad_build_keymap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_keypad_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %row_state = alloca [8 x i32], align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %row_state) #6
  %pdev = getelementptr inbounds %struct.samsung_keypad, ptr %dev_id, i32 0, i32 1
  %0 = call ptr @memset(ptr %row_state, i32 255, i32 32)
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #6
  %base = getelementptr inbounds %struct.samsung_keypad, ptr %dev_id, i32 0, i32 3
  %cols.i = getelementptr inbounds %struct.samsung_keypad, ptr %dev_id, i32 0, i32 11
  %type.i = getelementptr inbounds %struct.samsung_keypad, ptr %dev_id, i32 0, i32 8
  %rows.i = getelementptr inbounds %struct.samsung_keypad, ptr %dev_id, i32 0, i32 10
  %stopped = getelementptr inbounds %struct.samsung_keypad, ptr %dev_id, i32 0, i32 5
  %wait = getelementptr inbounds %struct.samsung_keypad, ptr %dev_id, i32 0, i32 4
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %entry
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 4
  %5 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %7, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 -1) #6, !srcloc !113
  %8 = ptrtoint ptr %cols.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cols.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp29.not.i = icmp eq i32 %9, 0
  br i1 %cmp29.not.i, label %do.body.samsung_keypad_scan.exit_crit_edge, label %do.body.for.body.i_crit_edge

do.body.for.body.i_crit_edge:                     ; preds = %do.body
  br label %for.body.i

do.body.samsung_keypad_scan.exit_crit_edge:       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %samsung_keypad_scan.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.body.for.body.i_crit_edge
  %col.030.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.body.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp1.i = icmp eq i32 %11, 1
  %shl.i = shl nuw i32 1, %col.030.i
  %neg.i = xor i32 %shl.i, -1
  %shl2.i = shl i32 %neg.i, 8
  %and.i = and i32 %shl2.i, 65280
  %neg4.i = and i32 %shl.i, 255
  %and5.i = xor i32 %neg4.i, 255
  %val.0.i = select i1 %cmp1.i, i32 %and.i, i32 %and5.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  call void @arm_heavy_mb() #6
  %12 = call i32 @llvm.bswap.i32(i32 %val.0.i) #6
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #6, !srcloc !113
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 214748000) #6
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr7.i = getelementptr i8, ptr %17, i32 12
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #6, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %19 = xor i32 %18, -1
  %20 = call i32 @llvm.bswap.i32(i32 %19) #6
  %21 = ptrtoint ptr %rows.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rows.i, align 4
  %notmask.i = shl nsw i32 -1, %22
  %sub.i = xor i32 %notmask.i, -1
  %and11.i = and i32 %20, %sub.i
  %arrayidx.i = getelementptr i32, ptr %row_state, i32 %col.030.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and11.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw i32 %col.030.i, 1
  %24 = ptrtoint ptr %cols.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cols.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %25
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.samsung_keypad_scan.exit_crit_edge

for.body.i.samsung_keypad_scan.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %samsung_keypad_scan.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

samsung_keypad_scan.exit:                         ; preds = %for.body.i.samsung_keypad_scan.exit_crit_edge, %do.body.samsung_keypad_scan.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr16.i = getelementptr i8, ptr %27, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 0) #6, !srcloc !113
  %call7 = call fastcc zeroext i1 @samsung_keypad_report(ptr noundef %dev_id, ptr noundef nonnull %row_state)
  br i1 %call7, label %if.then, label %samsung_keypad_scan.exit.do.end58_crit_edge

samsung_keypad_scan.exit.do.end58_crit_edge:      ; preds = %samsung_keypad_scan.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end58

if.then:                                          ; preds = %samsung_keypad_scan.exit
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 163) #6
  %28 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %stopped, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool15.not = icmp eq i8 %29, 0
  br i1 %tobool15.not, label %if.then24, label %if.then.do.end58_crit_edge

if.then.do.end58_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end58

if.then24:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %30 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %call2789 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %31 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %stopped, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool30.not90.not = icmp eq i8 %32, 0
  br i1 %tobool30.not90.not, label %if.then24.cleanup_crit_edge, label %land.rhs.critedge

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then24.cleanup_crit_edge
  %__ret25.192 = phi i32 [ %__ret25.1, %cleanup.cleanup_crit_edge ], [ 5, %if.then24.cleanup_crit_edge ]
  %call47 = call i32 @schedule_timeout(i32 noundef %__ret25.192) #6
  %call27 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %33 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %stopped, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool30.not = icmp eq i8 %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool34.not = icmp eq i32 %call47, 0
  %spec.store.select65 = select i1 %tobool34.not, i32 1, i32 %call47
  %__ret25.1 = select i1 %tobool30.not, i32 %call47, i32 %spec.store.select65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret25.1)
  %tobool40.not = icmp eq i32 %__ret25.1, 0
  %not.tobool30.not = xor i1 %tobool30.not, true
  %35 = select i1 %not.tobool30.not, i1 true, i1 %tobool40.not
  br i1 %35, label %for.end, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %land.rhs

land.rhs.critedge:                                ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.critedge, %for.end
  %36 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %36)
  %.pr = load i8, ptr %stopped, align 4
  %tobool56.not = icmp eq i8 %.pr, 0
  br i1 %tobool56.not, label %land.rhs.do.body_crit_edge, label %land.rhs.do.end58_crit_edge

land.rhs.do.end58_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end58

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end58:                                         ; preds = %land.rhs.do.end58_crit_edge, %if.then.do.end58_crit_edge, %samsung_keypad_scan.exit.do.end58_crit_edge
  %37 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev, align 4
  %dev60 = getelementptr inbounds %struct.platform_device, ptr %38, i32 0, i32 3
  %call.i84 = call i32 @__pm_runtime_idle(ptr noundef %dev60, i32 noundef 5) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %row_state) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @samsung_keypad_stop(ptr noundef %keypad) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.samsung_keypad, ptr %keypad, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #6
  %stopped = getelementptr inbounds %struct.samsung_keypad, ptr %keypad, i32 0, i32 5
  %2 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %stopped, align 4
  %wait = getelementptr inbounds %struct.samsung_keypad, ptr %keypad, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  %irq = getelementptr inbounds %struct.samsung_keypad, ptr %keypad, i32 0, i32 7
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  tail call void @arm_heavy_mb() #6
  %base = getelementptr inbounds %struct.samsung_keypad, ptr %keypad, i32 0, i32 3
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #6, !srcloc !113
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  %10 = and i32 %9, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #6, !srcloc !113
  %clk = getelementptr inbounds %struct.samsung_keypad, ptr %keypad, i32 0, i32 2
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %14) #6
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %16) #6
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 4
  %dev12 = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  %call.i24 = tail call i32 @__pm_runtime_idle(ptr noundef %dev12, i32 noundef 5) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @samsung_keypad_report(ptr nocapture noundef %keypad, ptr nocapture noundef readonly %row_state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %keypad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %keypad, align 4
  %cols = getelementptr inbounds %struct.samsung_keypad, ptr %keypad, i32 0, i32 11
  %2 = ptrtoint ptr %cols to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cols, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp62.not = icmp eq i32 %3, 0
  br i1 %cmp62.not, label %entry.for.end26_crit_edge, label %for.body.lr.ph

entry.for.end26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end26

for.body.lr.ph:                                   ; preds = %entry
  %rows = getelementptr inbounds %struct.samsung_keypad, ptr %keypad, i32 0, i32 10
  %row_shift = getelementptr inbounds %struct.samsung_keypad, ptr %keypad, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc24.for.body_crit_edge, %for.body.lr.ph
  %col.064 = phi i32 [ 0, %for.body.lr.ph ], [ %inc25, %for.inc24.for.body_crit_edge ]
  %key_down.063 = phi i32 [ 0, %for.body.lr.ph ], [ %or, %for.inc24.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %row_state, i32 %col.064
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %arrayidx3 = getelementptr %struct.samsung_keypad, ptr %keypad, i32 0, i32 12, i32 %col.064
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  %xor = xor i32 %7, %5
  %or = or i32 %5, %key_down.063
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor)
  %tobool.not = icmp eq i32 %xor, 0
  br i1 %tobool.not, label %for.body.for.inc24_crit_edge, label %for.cond5.preheader

for.body.for.inc24_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc24

for.cond5.preheader:                              ; preds = %for.body
  %8 = ptrtoint ptr %rows to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rows, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp658.not = icmp eq i32 %9, 0
  br i1 %cmp658.not, label %for.cond5.preheader.for.end_crit_edge, label %for.cond5.preheader.for.body7_crit_edge

for.cond5.preheader.for.body7_crit_edge:          ; preds = %for.cond5.preheader
  br label %for.body7

for.cond5.preheader.for.end_crit_edge:            ; preds = %for.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body7:                                        ; preds = %for.inc.for.body7_crit_edge, %for.cond5.preheader.for.body7_crit_edge
  %row.059 = phi i32 [ %inc, %for.inc.for.body7_crit_edge ], [ 0, %for.cond5.preheader.for.body7_crit_edge ]
  %shl = shl nuw i32 1, %row.059
  %and = and i32 %shl, %xor
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %for.body7.for.inc_crit_edge, label %if.end10

for.body7.for.inc_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end10:                                         ; preds = %for.body7
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %and13 = and i32 %11, %shl
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @samsung_keypad_report.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@samsung_keypad_report, %if.then17)) #6
          to label %do.end [label %if.then17], !srcloc !123

if.then17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %keypad to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %keypad, align 4
  %dev = getelementptr inbounds %struct.input_dev, ptr %13, i32 0, i32 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool19.not = icmp eq i32 %and13, 0
  %cond = select i1 %tobool19.not, ptr @.str.47, ptr @.str.46
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @samsung_keypad_report.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.45, ptr noundef nonnull %cond, i32 noundef %row.059, i32 noundef %col.064) #6
  br label %do.end

do.end:                                           ; preds = %if.then17, %if.end10
  %14 = ptrtoint ptr %row_shift to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %row_shift, align 4
  %shl21 = shl i32 %row.059, %15
  %add = add i32 %shl21, %col.064
  tail call void @input_event(ptr noundef %1, i32 noundef 4, i32 noundef 4, i32 noundef %add) #6
  %arrayidx22 = getelementptr %struct.samsung_keypad, ptr %keypad, i32 0, i32 13, i32 %add
  %16 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx22, align 2
  %conv = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool.i = icmp ne i32 %and13, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %conv, i32 noundef %lnot.ext.i) #6
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body7.for.inc_crit_edge
  %inc = add nuw i32 %row.059, 1
  %18 = ptrtoint ptr %rows to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rows, align 4
  %cmp6 = icmp ult i32 %inc, %19
  br i1 %cmp6, label %for.inc.for.body7_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body7_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body7

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond5.preheader.for.end_crit_edge
  %20 = ptrtoint ptr %keypad to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %keypad, align 4
  tail call void @input_event(ptr noundef %21, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %for.inc24

for.inc24:                                        ; preds = %for.end, %for.body.for.inc24_crit_edge
  %inc25 = add nuw i32 %col.064, 1
  %22 = ptrtoint ptr %cols to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cols, align 4
  %cmp = icmp ult i32 %inc25, %23
  br i1 %cmp, label %for.inc24.for.body_crit_edge, label %for.end26.loopexit

for.inc24.for.body_crit_edge:                     ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end26.loopexit:                               ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %phi.cmp = icmp ne i32 %or, 0
  br label %for.end26

for.end26:                                        ; preds = %for.end26.loopexit, %entry.for.end26_crit_edge
  %key_down.0.lcssa = phi i1 [ false, %entry.for.end26_crit_edge ], [ %phi.cmp, %for.end26.loopexit ]
  %row_state27 = getelementptr inbounds %struct.samsung_keypad, ptr %keypad, i32 0, i32 12
  %24 = call ptr @memcpy(ptr %row_state27, ptr %row_state, i32 32)
  ret i1 %key_down.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_keypad_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %call2 = tail call zeroext i1 @input_device_enabled(ptr noundef %3) #6
  br i1 %call2, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @samsung_keypad_stop(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %clk.i = getelementptr inbounds %struct.samsung_keypad, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %5) #6
  %base.i = getelementptr inbounds %struct.samsung_keypad, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %pdev.i = getelementptr inbounds %struct.samsung_keypad, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev.i, align 4
  %can_wakeup.i.i = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3, i32 12, i32 1
  %11 = ptrtoint ptr %can_wakeup.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i.i = load i16, ptr %can_wakeup.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i16 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end.samsung_keypad_toggle_wakeup.exit_crit_edge, label %device_may_wakeup.exit.i

if.end.samsung_keypad_toggle_wakeup.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %samsung_keypad_toggle_wakeup.exit

device_may_wakeup.exit.i:                         ; preds = %if.end
  %wakeup.i.i = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3, i32 12, i32 6
  %12 = ptrtoint ptr %wakeup.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wakeup.i.i, align 8
  %tobool2.i.not.i = icmp eq ptr %13, null
  br i1 %tobool2.i.not.i, label %device_may_wakeup.exit.i.samsung_keypad_toggle_wakeup.exit_crit_edge, label %do.body.sink.split.i

device_may_wakeup.exit.i.samsung_keypad_toggle_wakeup.exit_crit_edge: ; preds = %device_may_wakeup.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %samsung_keypad_toggle_wakeup.exit

do.body.sink.split.i:                             ; preds = %device_may_wakeup.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %irq.i = getelementptr inbounds %struct.samsung_keypad, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq.i, align 4
  %call.i.i = tail call i32 @irq_set_irq_wake(i32 noundef %15, i32 noundef 1) #6
  br label %samsung_keypad_toggle_wakeup.exit

samsung_keypad_toggle_wakeup.exit:                ; preds = %do.body.sink.split.i, %device_may_wakeup.exit.i.samsung_keypad_toggle_wakeup.exit_crit_edge, %if.end.samsung_keypad_toggle_wakeup.exit_crit_edge
  %16 = or i32 %8, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #6, !srcloc !113
  %19 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %20) #6
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_keypad_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %clk.i = getelementptr inbounds %struct.samsung_keypad, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %5) #6
  %base.i = getelementptr inbounds %struct.samsung_keypad, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %9 = and i32 %8, -268435457
  %pdev6.i = getelementptr inbounds %struct.samsung_keypad, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev6.i, align 4
  %can_wakeup.i26.i = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3, i32 12, i32 1
  %12 = ptrtoint ptr %can_wakeup.i26.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load.i27.i = load i16, ptr %can_wakeup.i26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i27.i)
  %tobool.not.i28.i = icmp sgt i16 %bf.load.i27.i, -1
  br i1 %tobool.not.i28.i, label %entry.samsung_keypad_toggle_wakeup.exit_crit_edge, label %device_may_wakeup.exit32.i

entry.samsung_keypad_toggle_wakeup.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %samsung_keypad_toggle_wakeup.exit

device_may_wakeup.exit32.i:                       ; preds = %entry
  %wakeup.i29.i = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3, i32 12, i32 6
  %13 = ptrtoint ptr %wakeup.i29.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wakeup.i29.i, align 8
  %tobool2.i30.not.i = icmp eq ptr %14, null
  br i1 %tobool2.i30.not.i, label %device_may_wakeup.exit32.i.samsung_keypad_toggle_wakeup.exit_crit_edge, label %do.body.sink.split.i

device_may_wakeup.exit32.i.samsung_keypad_toggle_wakeup.exit_crit_edge: ; preds = %device_may_wakeup.exit32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %samsung_keypad_toggle_wakeup.exit

do.body.sink.split.i:                             ; preds = %device_may_wakeup.exit32.i
  call void @__sanitizer_cov_trace_pc() #8
  %irq.i = getelementptr inbounds %struct.samsung_keypad, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq.i, align 4
  %call.i.i = tail call i32 @irq_set_irq_wake(i32 noundef %16, i32 noundef 0) #6
  br label %samsung_keypad_toggle_wakeup.exit

samsung_keypad_toggle_wakeup.exit:                ; preds = %do.body.sink.split.i, %device_may_wakeup.exit32.i.samsung_keypad_toggle_wakeup.exit_crit_edge, %entry.samsung_keypad_toggle_wakeup.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %9) #6, !srcloc !113
  %19 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %20) #6
  %call2 = tail call zeroext i1 @input_device_enabled(ptr noundef %3) #6
  br i1 %call2, label %if.then, label %samsung_keypad_toggle_wakeup.exit.if.end_crit_edge

samsung_keypad_toggle_wakeup.exit.if.end_crit_edge: ; preds = %samsung_keypad_toggle_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %samsung_keypad_toggle_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev6.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3
  %call.i.i8 = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #6
  %stopped.i = getelementptr inbounds %struct.samsung_keypad, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %stopped.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %stopped.i, align 4
  %24 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk.i, align 4
  %call1.i = tail call i32 @clk_enable(ptr noundef %25) #6
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  %29 = or i32 %28, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  tail call void @arm_heavy_mb() #6
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #6, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %33, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 0) #6, !srcloc !113
  %34 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev6.i, align 4
  %dev12.i = getelementptr inbounds %struct.platform_device, ptr %35, i32 0, i32 3
  %call.i21.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev12.i, i32 noundef 5) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %samsung_keypad_toggle_wakeup.exit.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_keypad_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %stopped = getelementptr inbounds %struct.samsung_keypad, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %stopped, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq = getelementptr inbounds %struct.samsung_keypad, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %5, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %wake_enabled = getelementptr inbounds %struct.samsung_keypad, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %wake_enabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %wake_enabled, align 1
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %base = getelementptr inbounds %struct.samsung_keypad, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !126
  %10 = or i32 %9, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !127
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #6, !srcloc !113
  %clk = getelementptr inbounds %struct.samsung_keypad, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %14) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_keypad_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %stopped = getelementptr inbounds %struct.samsung_keypad, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %stopped, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk = getelementptr inbounds %struct.samsung_keypad, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %5) #6
  %base = getelementptr inbounds %struct.samsung_keypad, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  %9 = and i32 %8, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #6, !srcloc !113
  %wake_enabled = getelementptr inbounds %struct.samsung_keypad, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %wake_enabled to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %wake_enabled, align 1, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool8.not = icmp eq i8 %13, 0
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.then9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr inbounds %struct.samsung_keypad, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %15, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !76, !78, !80, !82, !84, !86, !87, !88, !89, !90, !91, !93, !95}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @__initcall__kmod_samsung_keypad__229_605_samsung_keypad_driver_init6, !1, !"__initcall__kmod_samsung_keypad__229_605_samsung_keypad_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/samsung-keypad.c", i32 605, i32 1}
!2 = !{ptr @__exitcall_samsung_keypad_driver_exit, !1, !"__exitcall_samsung_keypad_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description230, !4, !"__UNIQUE_ID_description230", i1 false, i1 false}
!4 = !{!"../drivers/input/keyboard/samsung-keypad.c", i32 607, i32 1}
!5 = !{ptr @__UNIQUE_ID_author231, !6, !"__UNIQUE_ID_author231", i1 false, i1 false}
!6 = !{!"../drivers/input/keyboard/samsung-keypad.c", i32 608, i32 1}
!7 = !{ptr @__UNIQUE_ID_author232, !8, !"__UNIQUE_ID_author232", i1 false, i1 false}
!8 = !{!"../drivers/input/keyboard/samsung-keypad.c", i32 609, i32 1}
!9 = !{ptr @__UNIQUE_ID_file233, !10, !"__UNIQUE_ID_file233", i1 false, i1 false}
!10 = !{!"../drivers/input/keyboard/samsung-keypad.c", i32 610, i32 1}
!11 = !{ptr @__UNIQUE_ID_license234, !10, !"__UNIQUE_ID_license234", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/keyboard/samsung-keypad.c", i32 599, i32 11}
!14 = !{ptr @samsung_keypad_driver, !15, !"samsung_keypad_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/keyboard/samsung-keypad.c", i32 595, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/keyboard/samsung-keypad.c", i32 334, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @samsung_keypad_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @samsung_keypad_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/keyboard/samsung-keypad.c", i32 365, i32 41}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/keyboard/samsung-keypad.c", i32 367, i32 3}
!28 = !{ptr @samsung_keypad_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @samsung_keypad_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/keyboard/samsung-keypad.c", i32 373, i32 3}
!32 = !{ptr @samsung_keypad_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @samsung_keypad_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @samsung_keypad_probe.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/input/keyboard/samsung-keypad.c", i32 383, i32 2}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/keyboard/samsung-keypad.c", i32 387, i32 6}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/keyboard/samsung-keypad.c", i32 402, i32 3}
!41 = !{ptr @samsung_keypad_probe._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @samsung_keypad_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/keyboard/samsung-keypad.c", i32 422, i32 3}
!45 = !{ptr @samsung_keypad_probe._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @samsung_keypad_probe._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/keyboard/samsung-keypad.c", i32 251, i32 3}
!49 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @samsung_keypad_parse_dt._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @samsung_keypad_parse_dt._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/keyboard/samsung-keypad.c", i32 257, i32 3}
!54 = !{ptr @samsung_keypad_parse_dt._entry.23, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @samsung_keypad_parse_dt._entry_ptr.25, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/keyboard/samsung-keypad.c", i32 261, i32 27}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/keyboard/samsung-keypad.c", i32 262, i32 27}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/keyboard/samsung-keypad.c", i32 264, i32 3}
!62 = !{ptr @samsung_keypad_parse_dt._entry.28, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @samsung_keypad_parse_dt._entry_ptr.30, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/input/keyboard/samsung-keypad.c", i32 272, i32 3}
!66 = !{ptr @samsung_keypad_parse_dt._entry.31, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @samsung_keypad_parse_dt._entry_ptr.33, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/input/keyboard/samsung-keypad.c", i32 281, i32 3}
!70 = !{ptr @samsung_keypad_parse_dt._entry.34, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @samsung_keypad_parse_dt._entry_ptr.36, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/input/keyboard/samsung-keypad.c", i32 288, i32 32}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/input/keyboard/samsung-keypad.c", i32 289, i32 32}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/input/keyboard/samsung-keypad.c", i32 290, i32 32}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/input/keyboard/samsung-keypad.c", i32 294, i32 26}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/input/keyboard/samsung-keypad.c", i32 297, i32 44}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/input/keyboard/samsung-keypad.c", i32 299, i32 30}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/input/keyboard/samsung-keypad.c", i32 127, i32 4}
!86 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @samsung_keypad_report.__UNIQUE_ID_ddebug228, !85, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!89 = !{ptr @.str.46, !85, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.47, !85, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @samsung_keypad_dt_match, !92, !"samsung_keypad_dt_match", i1 false, i1 false}
!92 = !{!"../drivers/input/keyboard/samsung-keypad.c", i32 575, i32 34}
!93 = !{ptr @samsung_keypad_pm_ops, !94, !"samsung_keypad_pm_ops", i1 false, i1 false}
!94 = !{!"../drivers/input/keyboard/samsung-keypad.c", i32 568, i32 32}
!95 = !{ptr @samsung_keypad_driver_ids, !96, !"samsung_keypad_driver_ids", i1 false, i1 false}
!96 = !{!"../drivers/input/keyboard/samsung-keypad.c", i32 583, i32 40}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{!"branch_weights", i32 1, i32 2000}
!107 = !{!"auto-init"}
!108 = !{i32 0, i32 33}
!109 = !{i8 0, i8 2}
!110 = !{i64 5747687}
!111 = !{i64 2153975906}
!112 = !{i64 2153976145}
!113 = !{i64 5747269}
!114 = !{i64 2153976541}
!115 = !{i64 2153973071}
!116 = !{i64 2153973293}
!117 = !{i64 2153967628}
!118 = !{i64 2153969592}
!119 = !{i64 2153969811}
!120 = !{i64 2153977053}
!121 = !{i64 2153977732}
!122 = !{i64 2153977971}
!123 = !{i64 2148735359, i64 2148735364, i64 2148735377, i64 2148735421, i64 2148735455, i64 2148735476}
!124 = !{i64 2154001235}
!125 = !{i64 2154001474}
!126 = !{i64 2153998149}
!127 = !{i64 2153998379}
!128 = !{i64 2154000329}
!129 = !{i64 2154000559}
