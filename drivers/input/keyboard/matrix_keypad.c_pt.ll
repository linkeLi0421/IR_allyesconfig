; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/matrix_keypad.c_pt.bc'
source_filename = "../drivers/input/keyboard/matrix_keypad.c"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.matrix_keypad_platform_data = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.matrix_keypad = type { ptr, ptr, i32, [1 x i32], [32 x i32], %struct.delayed_work, %struct.spinlock, i8, i8, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_matrix_keypad__227_580_matrix_keypad_driver_init6 = internal global ptr @matrix_keypad_driver_init, section ".initcall6.init", align 4
@matrix_keypad_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @matrix_keypad_probe, ptr @matrix_keypad_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @matrix_keypad_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @matrix_keypad_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_matrix_keypad_driver_exit = internal global ptr @matrix_keypad_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author228 = internal constant [57 x i8] c"matrix_keypad.author=Marek Vasut <marek.vasut@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [59 x i8] c"matrix_keypad.description=GPIO Driven Matrix Keypad Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [56 x i8] c"matrix_keypad.file=drivers/input/keyboard/matrix_keypad\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [29 x i8] c"matrix_keypad.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias232 = internal constant [43 x i8] c"matrix_keypad.alias=platform:matrix-keypad\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"matrix-keypad\00", [18 x i8] zeroinitializer }, align 32
@matrix_keypad_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"gpio-matrix-keypad\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@matrix_keypad_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @matrix_keypad_suspend, ptr @matrix_keypad_resume, ptr @matrix_keypad_suspend, ptr @matrix_keypad_resume, ptr @matrix_keypad_suspend, ptr @matrix_keypad_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@matrix_keypad_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 493, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"no keymap data defined\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"matrix_keypad_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/input/keyboard/matrix_keypad.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@matrix_keypad_probe._entry_ptr = internal global ptr @matrix_keypad_probe._entry, section ".printk_index", align 4
@matrix_keypad_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&(&keypad->work)->work)\00", [54 x i8] zeroinitializer }, align 32
@matrix_keypad_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&(&keypad->work)->timer\00", [40 x i8] zeroinitializer }, align 32
@matrix_keypad_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&keypad->lock\00", [18 x i8] zeroinitializer }, align 32
@matrix_keypad_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 522, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to build keymap\0A\00", [40 x i8] zeroinitializer }, align 32
@matrix_keypad_probe._entry_ptr.13 = internal global ptr @matrix_keypad_probe._entry.11, section ".printk_index", align 4
@matrix_keypad_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 409, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"device lacks DT data\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"matrix_keypad_parse_dt\00", [41 x i8] zeroinitializer }, align 32
@matrix_keypad_parse_dt._entry_ptr = internal global ptr @matrix_keypad_parse_dt._entry, section ".printk_index", align 4
@matrix_keypad_parse_dt._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.3, i32 415, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"could not allocate memory for platform data\0A\00", [51 x i8] zeroinitializer }, align 32
@matrix_keypad_parse_dt._entry_ptr.18 = internal global ptr @matrix_keypad_parse_dt._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"row-gpios\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"col-gpios\00", [22 x i8] zeroinitializer }, align 32
@matrix_keypad_parse_dt._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.15, ptr @.str.3, i32 422, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"number of keypad rows/columns not specified\0A\00", [51 x i8] zeroinitializer }, align 32
@matrix_keypad_parse_dt._entry_ptr.23 = internal global ptr @matrix_keypad_parse_dt._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"linux,no-autorepeat\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wakeup-source\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"linux,wakeup\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpio-activelow\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drive-inactive-cols\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"debounce-delay-ms\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"col-scan-delay-us\00", [46 x i8] zeroinitializer }, align 32
@matrix_keypad_parse_dt._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.15, ptr @.str.3, i32 447, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"could not allocate memory for gpios\0A\00", [59 x i8] zeroinitializer }, align 32
@matrix_keypad_parse_dt._entry_ptr.33 = internal global ptr @matrix_keypad_parse_dt._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"#gpio-cells\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"matrix_kbd_col\00", [17 x i8] zeroinitializer }, align 32
@matrix_keypad_init_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 315, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to request GPIO%d for COL%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"matrix_keypad_init_gpio\00", [40 x i8] zeroinitializer }, align 32
@matrix_keypad_init_gpio._entry_ptr = internal global ptr @matrix_keypad_init_gpio._entry, section ".printk_index", align 4
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"matrix_kbd_row\00", [17 x i8] zeroinitializer }, align 32
@matrix_keypad_init_gpio._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.37, ptr @.str.3, i32 327, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to request GPIO%d for ROW%d\0A\00", [60 x i8] zeroinitializer }, align 32
@matrix_keypad_init_gpio._entry_ptr.41 = internal global ptr @matrix_keypad_init_gpio._entry.39, section ".printk_index", align 4
@matrix_keypad_init_gpio._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.37, ptr @.str.3, i32 341, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unable to acquire clustered interrupt\0A\00", [57 x i8] zeroinitializer }, align 32
@matrix_keypad_init_gpio._entry_ptr.44 = internal global ptr @matrix_keypad_init_gpio._entry.42, section ".printk_index", align 4
@matrix_keypad_init_gpio._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.37, ptr @.str.3, i32 355, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Unable to acquire interrupt for GPIO line %i\0A\00", [50 x i8] zeroinitializer }, align 32
@matrix_keypad_init_gpio._entry_ptr.47 = internal global ptr @matrix_keypad_init_gpio._entry.45, section ".printk_index", align 4
@___asan_gen_.48 = private unnamed_addr constant [21 x i8] c"matrix_keypad_driver\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 571, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 575, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant [23 x i8] c"matrix_keypad_dt_match\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 564, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant [21 x i8] c"matrix_keypad_pm_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 300, i32 8 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 493, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 508, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 509, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 522, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 409, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 415, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 419, i32 56 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 420, i32 56 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 422, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 426, i32 26 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 429, i32 44 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 430, i32 30 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 432, i32 26 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 436, i32 29 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 438, i32 27 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 439, i32 27 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 447, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant [27 x i8] c"../include/linux/of_gpio.h\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 104, i32 50 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 311, i32 43 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 313, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 323, i32 43 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 325, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 340, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.190 = private constant [42 x i8] c"../drivers/input/keyboard/matrix_keypad.c\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 353, i32 5 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_matrix_keypad_driver_exit, ptr @__initcall__kmod_matrix_keypad__227_580_matrix_keypad_driver_init6, ptr @matrix_keypad_driver_exit, ptr @matrix_keypad_init_gpio._entry, ptr @matrix_keypad_init_gpio._entry.39, ptr @matrix_keypad_init_gpio._entry.42, ptr @matrix_keypad_init_gpio._entry.45, ptr @matrix_keypad_init_gpio._entry_ptr, ptr @matrix_keypad_init_gpio._entry_ptr.41, ptr @matrix_keypad_init_gpio._entry_ptr.44, ptr @matrix_keypad_init_gpio._entry_ptr.47, ptr @matrix_keypad_parse_dt._entry, ptr @matrix_keypad_parse_dt._entry.16, ptr @matrix_keypad_parse_dt._entry.21, ptr @matrix_keypad_parse_dt._entry.31, ptr @matrix_keypad_parse_dt._entry_ptr, ptr @matrix_keypad_parse_dt._entry_ptr.18, ptr @matrix_keypad_parse_dt._entry_ptr.23, ptr @matrix_keypad_parse_dt._entry_ptr.33, ptr @matrix_keypad_probe._entry, ptr @matrix_keypad_probe._entry.11, ptr @matrix_keypad_probe._entry_ptr, ptr @matrix_keypad_probe._entry_ptr.13, ptr @matrix_keypad_driver, ptr @.str, ptr @matrix_keypad_dt_match, ptr @matrix_keypad_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @matrix_keypad_probe.__key, ptr @.str.6, ptr @matrix_keypad_probe.__key.7, ptr @.str.8, ptr @matrix_keypad_probe.__key.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matrix_keypad_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matrix_keypad_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matrix_keypad_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matrix_keypad_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matrix_keypad_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matrix_keypad_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matrix_keypad_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matrix_keypad_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matrix_keypad_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matrix_keypad_parse_dt._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matrix_keypad_parse_dt._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matrix_keypad_parse_dt._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matrix_keypad_init_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matrix_keypad_init_gpio._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matrix_keypad_init_gpio._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matrix_keypad_init_gpio._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @matrix_keypad_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @matrix_keypad_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @matrix_keypad_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @matrix_keypad_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @matrix_keypad_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.if.then4.sink.split_crit_edge, label %if.end.i

if.then.if.then4.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.sink.split

if.end.i:                                         ; preds = %if.then
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #7
  %tobool2.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.if.then4.sink.split_crit_edge, label %if.end8.i

if.end.i.if.then4.sink.split_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.sink.split

if.end8.i:                                        ; preds = %if.end.i
  %call.i119.i = tail call i32 @of_count_phandle_with_args(ptr noundef nonnull %3, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.34) #7
  %num_row_gpios.i = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %call.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %num_row_gpios.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call.i119.i, ptr %num_row_gpios.i, align 4
  %call.i120.i = tail call i32 @of_count_phandle_with_args(ptr noundef nonnull %3, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.34) #7
  %num_col_gpios.i = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %call.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %num_col_gpios.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call.i120.i, ptr %num_col_gpios.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i119.i)
  %cmp.i = icmp slt i32 %call.i119.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i120.i)
  %cmp11.i = icmp slt i32 %call.i120.i, 1
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp11.i
  br i1 %or.cond.i, label %if.end8.i.if.then4.sink.split_crit_edge, label %if.end17.i

if.end8.i.if.then4.sink.split_crit_edge:          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.sink.split

if.end17.i:                                       ; preds = %if.end8.i
  %call18.i = tail call ptr @of_get_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.24, ptr noundef null) #7
  %tobool19.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool19.not.i, label %if.end17.i.if.end21.i_crit_edge, label %if.then20.i

if.end17.i.if.end21.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

if.then20.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %no_autorepeat.i = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %call.i.i, i32 0, i32 11
  %6 = ptrtoint ptr %no_autorepeat.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %no_autorepeat.i, align 2
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then20.i, %if.end17.i.if.end21.i_crit_edge
  %call.i121.i = tail call ptr @of_find_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.25, ptr noundef null) #7
  %tobool.i.not.i = icmp eq ptr %call.i121.i, null
  br i1 %tobool.i.not.i, label %lor.rhs.i, label %if.end21.i.lor.end.i_crit_edge

if.end21.i.lor.end.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end.i

lor.rhs.i:                                        ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i122.i = tail call ptr @of_find_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.26, ptr noundef null) #7
  %tobool.i123.i = icmp ne ptr %call.i122.i, null
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %if.end21.i.lor.end.i_crit_edge
  %7 = phi i1 [ true, %if.end21.i.lor.end.i_crit_edge ], [ %tobool.i123.i, %lor.rhs.i ]
  %wakeup.i = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %call.i.i, i32 0, i32 10
  %frombool.i = zext i1 %7 to i8
  %8 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool.i, ptr %wakeup.i, align 1
  %call24.i = tail call ptr @of_get_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.27, ptr noundef null) #7
  %tobool25.not.i = icmp eq ptr %call24.i, null
  br i1 %tobool25.not.i, label %lor.end.i.if.end27.i_crit_edge, label %if.then26.i

lor.end.i.if.end27.i_crit_edge:                   ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i

if.then26.i:                                      ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %active_low.i = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %call.i.i, i32 0, i32 9
  %9 = ptrtoint ptr %active_low.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %active_low.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then26.i, %lor.end.i.if.end27.i_crit_edge
  %call.i124.i = tail call ptr @of_find_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.28, ptr noundef null) #7
  %tobool.i125.i = icmp ne ptr %call.i124.i, null
  %drive_inactive_cols.i = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %call.i.i, i32 0, i32 12
  %frombool29.i = zext i1 %tobool.i125.i to i8
  %10 = ptrtoint ptr %drive_inactive_cols.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool29.i, ptr %drive_inactive_cols.i, align 1
  %debounce_ms.i = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %call.i.i, i32 0, i32 6
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.29, ptr noundef %debounce_ms.i, i32 noundef 1, i32 noundef 0) #7
  %col_scan_delay_us.i = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %call.i.i, i32 0, i32 5
  %call.i.i126.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.30, ptr noundef %col_scan_delay_us.i, i32 noundef 1, i32 noundef 0) #7
  %11 = ptrtoint ptr %num_row_gpios.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_row_gpios.i, align 4
  %13 = ptrtoint ptr %num_col_gpios.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_col_gpios.i, align 4
  %add.i = add i32 %14, %12
  %15 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i, i32 4) #7
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %if.end27.i.if.then4.sink.split_crit_edge, label %devm_kcalloc.exit.i, !prof !107

if.end27.i.if.then4.sink.split_crit_edge:         ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.sink.split

devm_kcalloc.exit.i:                              ; preds = %if.end27.i
  %17 = extractvalue { i32, i1 } %15, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %17, i32 noundef 3520) #7
  %tobool35.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool35.not.i, label %devm_kcalloc.exit.i.if.then4.sink.split_crit_edge, label %devm_kcalloc.exit.i.for.body.i_crit_edge

devm_kcalloc.exit.i.for.body.i_crit_edge:         ; preds = %devm_kcalloc.exit.i
  br label %for.body.i

devm_kcalloc.exit.i.if.then4.sink.split_crit_edge: ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.sink.split

for.cond48.preheader.i:                           ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120.i)
  %cmp49133.i = icmp sgt i32 %call.i120.i, 0
  br i1 %cmp49133.i, label %for.cond48.preheader.i.for.body50.i_crit_edge, label %for.cond48.preheader.i.for.end60.i_crit_edge

for.cond48.preheader.i.for.end60.i_crit_edge:     ; preds = %for.cond48.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end60.i

for.cond48.preheader.i.for.body50.i_crit_edge:    ; preds = %for.cond48.preheader.i
  br label %for.body50.i

for.body.i:                                       ; preds = %if.end47.i.for.body.i_crit_edge, %devm_kcalloc.exit.i.for.body.i_crit_edge
  %i.0132.i = phi i32 [ %inc.i, %if.end47.i.for.body.i_crit_edge ], [ 0, %devm_kcalloc.exit.i.for.body.i_crit_edge ]
  %call.i127.i = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %3, ptr noundef nonnull @.str.19, i32 noundef %i.0132.i, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i127.i)
  %cmp44.i = icmp slt i32 %call.i127.i, 0
  br i1 %cmp44.i, label %if.then45.i, label %if.end47.i

if.then45.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = inttoptr i32 %call.i127.i to ptr
  br label %matrix_keypad_parse_dt.exit

if.end47.i:                                       ; preds = %for.body.i
  %arrayidx.i = getelementptr i32, ptr %call5.i.i.i, i32 %i.0132.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call.i127.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.0132.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i119.i
  br i1 %exitcond.not.i, label %for.cond48.preheader.i, label %if.end47.i.for.body.i_crit_edge

if.end47.i.for.body.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body50.i:                                     ; preds = %if.end55.i.for.body50.i_crit_edge, %for.cond48.preheader.i.for.body50.i_crit_edge
  %i.1134.i = phi i32 [ %inc59.i, %if.end55.i.for.body50.i_crit_edge ], [ 0, %for.cond48.preheader.i.for.body50.i_crit_edge ]
  %call.i128.i = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %3, ptr noundef nonnull @.str.20, i32 noundef %i.1134.i, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128.i)
  %cmp52.i = icmp slt i32 %call.i128.i, 0
  br i1 %cmp52.i, label %if.then53.i, label %if.end55.i

if.then53.i:                                      ; preds = %for.body50.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = inttoptr i32 %call.i128.i to ptr
  br label %matrix_keypad_parse_dt.exit

if.end55.i:                                       ; preds = %for.body50.i
  %add56.i = add i32 %i.1134.i, %call.i119.i
  %arrayidx57.i = getelementptr i32, ptr %call5.i.i.i, i32 %add56.i
  %21 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call.i128.i, ptr %arrayidx57.i, align 4
  %inc59.i = add nuw nsw i32 %i.1134.i, 1
  %exitcond137.not.i = icmp eq i32 %inc59.i, %call.i120.i
  br i1 %exitcond137.not.i, label %if.end55.i.for.end60.i_crit_edge, label %if.end55.i.for.body50.i_crit_edge

if.end55.i.for.body50.i_crit_edge:                ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body50.i

if.end55.i.for.end60.i_crit_edge:                 ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end60.i

for.end60.i:                                      ; preds = %if.end55.i.for.end60.i_crit_edge, %for.cond48.preheader.i.for.end60.i_crit_edge
  %row_gpios.i = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %call.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %row_gpios.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call5.i.i.i, ptr %row_gpios.i, align 4
  %23 = ptrtoint ptr %num_row_gpios.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_row_gpios.i, align 4
  %arrayidx62.i = getelementptr i32, ptr %call5.i.i.i, i32 %24
  %col_gpios.i = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %call.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %col_gpios.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx62.i, ptr %col_gpios.i, align 4
  br label %matrix_keypad_parse_dt.exit

matrix_keypad_parse_dt.exit:                      ; preds = %for.end60.i, %if.then53.i, %if.then45.i
  %retval.0.i = phi ptr [ %18, %if.then45.i ], [ %20, %if.then53.i ], [ %call.i.i, %for.end60.i ]
  %cmp.i124 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i124, label %matrix_keypad_parse_dt.exit.if.then4_crit_edge, label %matrix_keypad_parse_dt.exit.if.end10_crit_edge

matrix_keypad_parse_dt.exit.if.end10_crit_edge:   ; preds = %matrix_keypad_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

matrix_keypad_parse_dt.exit.if.then4_crit_edge:   ; preds = %matrix_keypad_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.then4.sink.split:                              ; preds = %devm_kcalloc.exit.i.if.then4.sink.split_crit_edge, %if.end27.i.if.then4.sink.split_crit_edge, %if.end8.i.if.then4.sink.split_crit_edge, %if.end.i.if.then4.sink.split_crit_edge, %if.then.if.then4.sink.split_crit_edge
  %.str.14.sink = phi ptr [ @.str.14, %if.then.if.then4.sink.split_crit_edge ], [ @.str.17, %if.end.i.if.then4.sink.split_crit_edge ], [ @.str.22, %if.end8.i.if.then4.sink.split_crit_edge ], [ @.str.32, %devm_kcalloc.exit.i.if.then4.sink.split_crit_edge ], [ @.str.32, %if.end27.i.if.then4.sink.split_crit_edge ]
  %retval.0.i149.ph = phi ptr [ inttoptr (i32 -19 to ptr), %if.then.if.then4.sink.split_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.if.then4.sink.split_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end8.i.if.then4.sink.split_crit_edge ], [ inttoptr (i32 -12 to ptr), %devm_kcalloc.exit.i.if.then4.sink.split_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end27.i.if.then4.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.14.sink) #10
  br label %if.then4

if.then4:                                         ; preds = %if.then4.sink.split, %matrix_keypad_parse_dt.exit.if.then4_crit_edge
  %retval.0.i149 = phi ptr [ %retval.0.i, %matrix_keypad_parse_dt.exit.if.then4_crit_edge ], [ %retval.0.i149.ph, %if.then4.sink.split ]
  %26 = ptrtoint ptr %retval.0.i149 to i32
  br label %cleanup

if.else:                                          ; preds = %entry
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %tobool6.not = icmp eq ptr %28, null
  br i1 %tobool6.not, label %do.end, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end10:                                         ; preds = %if.else.if.end10_crit_edge, %matrix_keypad_parse_dt.exit.if.end10_crit_edge
  %pdata.0 = phi ptr [ %1, %if.else.if.end10_crit_edge ], [ %retval.0.i, %matrix_keypad_parse_dt.exit.if.end10_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 292) #11
  %call12 = tail call ptr @input_allocate_device() #7
  %tobool13.not = icmp eq ptr %call7.i.i, null
  %tobool14.not = icmp eq ptr %call12, null
  %or.cond = select i1 %tobool13.not, i1 true, i1 %tobool14.not
  br i1 %or.cond, label %if.end10.err_free_mem_crit_edge, label %if.end16

if.end10.err_free_mem_crit_edge:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_mem

if.end16:                                         ; preds = %if.end10
  %input_dev17 = getelementptr inbounds %struct.matrix_keypad, ptr %call7.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %input_dev17 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call12, ptr %input_dev17, align 4
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %pdata.0, ptr %call7.i.i, align 8
  %num_col_gpios = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %pdata.0, i32 0, i32 4
  %32 = ptrtoint ptr %num_col_gpios to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_col_gpios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i125 = icmp eq i32 %33, 0
  br i1 %cmp.i125, label %if.end16.get_count_order.exit_crit_edge, label %if.end.i126

if.end16.get_count_order.exit_crit_edge:          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_count_order.exit

if.end.i126:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %dec.i = add i32 %33, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i.i = icmp eq i32 %dec.i, 0
  %34 = tail call i32 @llvm.ctlz.i32(i32 %dec.i, i1 true) #7, !range !108
  %sub.i.i = sub nuw nsw i32 32, %34
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  br label %get_count_order.exit

get_count_order.exit:                             ; preds = %if.end.i126, %if.end16.get_count_order.exit_crit_edge
  %retval.0.i127 = phi i32 [ %cond.i.i, %if.end.i126 ], [ -1, %if.end16.get_count_order.exit_crit_edge ]
  %row_shift = getelementptr inbounds %struct.matrix_keypad, ptr %call7.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %row_shift to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %retval.0.i127, ptr %row_shift, align 8
  %stopped = getelementptr inbounds %struct.matrix_keypad, ptr %call7.i.i, i32 0, i32 8
  %36 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %stopped, align 1
  %work = getelementptr inbounds %struct.matrix_keypad, ptr %call7.i.i, i32 0, i32 5
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #7
  %37 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.matrix_keypad, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @matrix_keypad_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry29 = getelementptr inbounds %struct.matrix_keypad, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1
  %38 = ptrtoint ptr %entry29 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %entry29, ptr %entry29, align 4
  %prev.i = getelementptr inbounds %struct.matrix_keypad, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %entry29, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.matrix_keypad, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 2
  %40 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @matrix_keypad_scan, ptr %func, align 4
  %timer = getelementptr inbounds %struct.matrix_keypad, ptr %call7.i.i, i32 0, i32 5, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.8, ptr noundef nonnull @matrix_keypad_probe.__key.7) #7
  %lock = getelementptr inbounds %struct.matrix_keypad, ptr %call7.i.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @matrix_keypad_probe.__key.9, i16 noundef signext 3) #7
  %41 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev, align 8
  %43 = ptrtoint ptr %call12 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %call12, align 8
  %id = getelementptr inbounds %struct.input_dev, ptr %call12, i32 0, i32 3
  %44 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 25, ptr %id, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %call12, i32 0, i32 40, i32 1
  %45 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %dev, ptr %parent, align 8
  %open = getelementptr inbounds %struct.input_dev, ptr %call12, i32 0, i32 31
  %46 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @matrix_keypad_start, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call12, i32 0, i32 32
  %47 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @matrix_keypad_stop, ptr %close, align 4
  %48 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdata.0, align 4
  %num_row_gpios = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %pdata.0, i32 0, i32 3
  %50 = ptrtoint ptr %num_row_gpios to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_row_gpios, align 4
  %52 = ptrtoint ptr %num_col_gpios to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_col_gpios, align 4
  %call49 = tail call i32 @matrix_keypad_build_keymap(ptr noundef %49, ptr noundef null, i32 noundef %51, i32 noundef %53, ptr noundef null, ptr noundef nonnull %call12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end56, label %do.end54

do.end54:                                         ; preds = %get_count_order.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #10
  br label %err_free_mem

if.end56:                                         ; preds = %get_count_order.exit
  %no_autorepeat = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %pdata.0, i32 0, i32 11
  %54 = ptrtoint ptr %no_autorepeat to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %no_autorepeat, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool57.not = icmp eq i8 %55, 0
  br i1 %tobool57.not, label %if.then58, label %if.end56.if.end59_crit_edge

if.end56.if.end59_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then58:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call12, i32 0, i32 5
  %56 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %evbit, align 4
  %or.i = or i32 %57, 1048576
  store i32 %or.i, ptr %evbit, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end56.if.end59_crit_edge
  tail call void @input_set_capability(ptr noundef nonnull %call12, i32 noundef 4, i32 noundef 4) #7
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call12, i32 0, i32 40, i32 8
  %58 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %59 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call7.i.i, align 8
  %num_col_gpios.i128 = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %num_col_gpios.i128 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_col_gpios.i128, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp146.not.i = icmp eq i32 %62, 0
  br i1 %cmp146.not.i, label %if.end59.for.cond8.preheader.i_crit_edge, label %for.body.lr.ph.i

if.end59.for.cond8.preheader.i_crit_edge:         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond8.preheader.i

for.body.lr.ph.i:                                 ; preds = %if.end59
  %col_gpios.i129 = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %60, i32 0, i32 2
  %active_low.i130 = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %60, i32 0, i32 9
  br label %for.body.i135

for.cond8.preheader.i:                            ; preds = %if.end.i140.for.cond8.preheader.i_crit_edge, %if.end59.for.cond8.preheader.i_crit_edge
  %num_row_gpios.i131 = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %60, i32 0, i32 3
  %63 = ptrtoint ptr %num_row_gpios.i131 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_row_gpios.i131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp9148.not.i = icmp eq i32 %64, 0
  br i1 %cmp9148.not.i, label %for.cond8.preheader.i.for.end27.i_crit_edge, label %for.body10.lr.ph.i

for.cond8.preheader.i.for.end27.i_crit_edge:      ; preds = %for.cond8.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end27.i

for.body10.lr.ph.i:                               ; preds = %for.cond8.preheader.i
  %row_gpios.i132 = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %60, i32 0, i32 1
  br label %for.body10.i

for.body.i135:                                    ; preds = %if.end.i140.for.body.i135_crit_edge, %for.body.lr.ph.i
  %i.0147.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i138, %if.end.i140.for.body.i135_crit_edge ]
  %65 = ptrtoint ptr %col_gpios.i129 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %col_gpios.i129, align 4
  %arrayidx.i133 = getelementptr i32, ptr %66, i32 %i.0147.i
  %67 = ptrtoint ptr %arrayidx.i133 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i133, align 4
  %call.i = tail call i32 @gpio_request(i32 noundef %68, ptr noundef nonnull @.str.35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i134 = icmp eq i32 %call.i, 0
  %69 = ptrtoint ptr %col_gpios.i129 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %col_gpios.i129, align 4
  %arrayidx5.i = getelementptr i32, ptr %70, i32 %i.0147.i
  %71 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx5.i, align 4
  br i1 %tobool.not.i134, label %if.end.i140, label %do.end.i136

do.end.i136:                                      ; preds = %for.body.i135
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %72, i32 noundef %i.0147.i) #10
  br label %err_free_cols.i

if.end.i140:                                      ; preds = %for.body.i135
  %73 = ptrtoint ptr %active_low.i130 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %active_low.i130, align 4, !range !109
  %75 = xor i8 %74, 1
  %76 = zext i8 %75 to i32
  %call.i.i137 = tail call ptr @gpio_to_desc(i32 noundef %72) #7
  %call1.i.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i.i137, i32 noundef %76) #7
  %inc.i138 = add nuw i32 %i.0147.i, 1
  %77 = ptrtoint ptr %num_col_gpios.i128 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %num_col_gpios.i128, align 4
  %cmp.i139 = icmp ult i32 %inc.i138, %78
  br i1 %cmp.i139, label %if.end.i140.for.body.i135_crit_edge, label %if.end.i140.for.cond8.preheader.i_crit_edge

if.end.i140.for.cond8.preheader.i_crit_edge:      ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond8.preheader.i

if.end.i140.for.body.i135_crit_edge:              ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i135

for.body10.i:                                     ; preds = %if.end21.i141.for.body10.i_crit_edge, %for.body10.lr.ph.i
  %i.1149.i = phi i32 [ 0, %for.body10.lr.ph.i ], [ %inc26.i, %if.end21.i141.for.body10.i_crit_edge ]
  %79 = ptrtoint ptr %row_gpios.i132 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %row_gpios.i132, align 4
  %arrayidx11.i = getelementptr i32, ptr %80, i32 %i.1149.i
  %81 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx11.i, align 4
  %call12.i = tail call i32 @gpio_request(i32 noundef %82, ptr noundef nonnull @.str.38) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  %83 = ptrtoint ptr %row_gpios.i132 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %row_gpios.i132, align 4
  %arrayidx23.i = getelementptr i32, ptr %84, i32 %i.1149.i
  %85 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx23.i, align 4
  br i1 %tobool13.not.i, label %if.end21.i141, label %do.end17.i

do.end17.i:                                       ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %86, i32 noundef %i.1149.i) #10
  br label %err_free_rows.i

if.end21.i141:                                    ; preds = %for.body10.i
  %call.i134.i = tail call ptr @gpio_to_desc(i32 noundef %86) #7
  %call1.i135.i = tail call i32 @gpiod_direction_input(ptr noundef %call.i134.i) #7
  %inc26.i = add nuw i32 %i.1149.i, 1
  %87 = ptrtoint ptr %num_row_gpios.i131 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %num_row_gpios.i131, align 4
  %cmp9.i = icmp ult i32 %inc26.i, %88
  br i1 %cmp9.i, label %if.end21.i141.for.body10.i_crit_edge, label %if.end21.i141.for.end27.i_crit_edge

if.end21.i141.for.end27.i_crit_edge:              ; preds = %if.end21.i141
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end27.i

if.end21.i141.for.body10.i_crit_edge:             ; preds = %if.end21.i141
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body10.i

for.end27.i:                                      ; preds = %if.end21.i141.for.end27.i_crit_edge, %for.cond8.preheader.i.for.end27.i_crit_edge
  %i.1.lcssa.i = phi i32 [ 0, %for.cond8.preheader.i.for.end27.i_crit_edge ], [ %inc26.i, %if.end21.i141.for.end27.i_crit_edge ]
  %clustered_irq.i = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %60, i32 0, i32 7
  %89 = ptrtoint ptr %clustered_irq.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %clustered_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp28.not.i = icmp eq i32 %90, 0
  br i1 %cmp28.not.i, label %for.cond39.preheader.i, label %if.then29.i

for.cond39.preheader.i:                           ; preds = %for.end27.i
  %91 = ptrtoint ptr %num_row_gpios.i131 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %num_row_gpios.i131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp41150.not.i = icmp eq i32 %92, 0
  br i1 %cmp41150.not.i, label %for.cond39.preheader.i.if.end59.i_crit_edge, label %for.body42.lr.ph.i

for.cond39.preheader.i.if.end59.i_crit_edge:      ; preds = %for.cond39.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59.i

for.body42.lr.ph.i:                               ; preds = %for.cond39.preheader.i
  %row_gpios43.i = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %60, i32 0, i32 1
  br label %for.body42.i

if.then29.i:                                      ; preds = %for.end27.i
  %clustered_irq_flags.i = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %60, i32 0, i32 8
  %93 = ptrtoint ptr %clustered_irq_flags.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %clustered_irq_flags.i, align 4
  %call31.i = tail call i32 @request_any_context_irq(i32 noundef %90, ptr noundef nonnull @matrix_keypad_interrupt, i32 noundef %94, ptr noundef nonnull @.str, ptr noundef %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp32.i = icmp slt i32 %call31.i, 0
  br i1 %cmp32.i, label %do.end36.i, label %if.then29.i.if.end59.i_crit_edge

if.then29.i.if.end59.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59.i

do.end36.i:                                       ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43) #10
  br label %err_free_rows.i

for.body42.i:                                     ; preds = %for.inc56.i.for.body42.i_crit_edge, %for.body42.lr.ph.i
  %i.2151.i = phi i32 [ 0, %for.body42.lr.ph.i ], [ %inc57.i, %for.inc56.i.for.body42.i_crit_edge ]
  %95 = ptrtoint ptr %row_gpios43.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %row_gpios43.i, align 4
  %arrayidx44.i = getelementptr i32, ptr %96, i32 %i.2151.i
  %97 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx44.i, align 4
  %call.i136.i = tail call ptr @gpio_to_desc(i32 noundef %98) #7
  %call1.i137.i = tail call i32 @gpiod_to_irq(ptr noundef %call.i136.i) #7
  %call46.i = tail call i32 @request_any_context_irq(i32 noundef %call1.i137.i, ptr noundef nonnull @matrix_keypad_interrupt, i32 noundef 3, ptr noundef nonnull @.str, ptr noundef %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %cmp47.i = icmp slt i32 %call46.i, 0
  br i1 %cmp47.i, label %do.end51.i, label %for.inc56.i

do.end51.i:                                       ; preds = %for.body42.i
  %99 = ptrtoint ptr %row_gpios43.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %row_gpios43.i, align 4
  %arrayidx54.i = getelementptr i32, ptr %100, i32 %i.2151.i
  %101 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx54.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46, i32 noundef %102) #10
  %dec152.i = add i32 %i.2151.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec152.i)
  %cmp60153.i = icmp sgt i32 %dec152.i, -1
  br i1 %cmp60153.i, label %do.end51.i.while.body.i_crit_edge, label %do.end51.i.while.end.i_crit_edge

do.end51.i.while.end.i_crit_edge:                 ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

do.end51.i.while.body.i_crit_edge:                ; preds = %do.end51.i
  br label %while.body.i

for.inc56.i:                                      ; preds = %for.body42.i
  %inc57.i = add nuw i32 %i.2151.i, 1
  %103 = ptrtoint ptr %num_row_gpios.i131 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %num_row_gpios.i131, align 4
  %cmp41.i = icmp ult i32 %inc57.i, %104
  br i1 %cmp41.i, label %for.inc56.i.for.body42.i_crit_edge, label %for.inc56.i.if.end59.i_crit_edge

for.inc56.i.if.end59.i_crit_edge:                 ; preds = %for.inc56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59.i

for.inc56.i.for.body42.i_crit_edge:               ; preds = %for.inc56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body42.i

if.end59.i:                                       ; preds = %for.inc56.i.if.end59.i_crit_edge, %if.then29.i.if.end59.i_crit_edge, %for.cond39.preheader.i.if.end59.i_crit_edge
  %105 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %call7.i.i, align 8
  %clustered_irq.i.i = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %106, i32 0, i32 7
  %107 = ptrtoint ptr %clustered_irq.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %clustered_irq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp.not.i.i = icmp eq i32 %108, 0
  br i1 %cmp.not.i.i, label %for.cond.preheader.i.i, label %if.then.i.i

for.cond.preheader.i.i:                           ; preds = %if.end59.i
  %num_row_gpios.i.i = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %106, i32 0, i32 3
  %109 = ptrtoint ptr %num_row_gpios.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %num_row_gpios.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp39.not.i.i = icmp eq i32 %110, 0
  br i1 %cmp39.not.i.i, label %for.cond.preheader.i.i.if.end63_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.if.end63_crit_edge:        ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %row_gpios.i.i = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %106, i32 0, i32 1
  br label %for.body.i.i

if.then.i.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @disable_irq_nosync(i32 noundef %108) #7
  br label %if.end63

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.010.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %111 = ptrtoint ptr %row_gpios.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %row_gpios.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %112, i32 %i.010.i.i
  %113 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx.i.i, align 4
  %call.i.i.i142 = tail call ptr @gpio_to_desc(i32 noundef %114) #7
  %call1.i.i.i = tail call i32 @gpiod_to_irq(ptr noundef %call.i.i.i142) #7
  tail call void @disable_irq_nosync(i32 noundef %call1.i.i.i) #7
  %inc.i.i = add nuw i32 %i.010.i.i, 1
  %115 = ptrtoint ptr %num_row_gpios.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %num_row_gpios.i.i, align 4
  %cmp3.i.i = icmp ult i32 %inc.i.i, %116
  br i1 %cmp3.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.if.end63_crit_edge

for.body.i.i.if.end63_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end51.i.while.body.i_crit_edge
  %dec154.i = phi i32 [ %dec.i144, %while.body.i.while.body.i_crit_edge ], [ %dec152.i, %do.end51.i.while.body.i_crit_edge ]
  %117 = ptrtoint ptr %row_gpios43.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %row_gpios43.i, align 4
  %arrayidx62.i143 = getelementptr i32, ptr %118, i32 %dec154.i
  %119 = ptrtoint ptr %arrayidx62.i143 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx62.i143, align 4
  %call.i138.i = tail call ptr @gpio_to_desc(i32 noundef %120) #7
  %call1.i139.i = tail call i32 @gpiod_to_irq(ptr noundef %call.i138.i) #7
  %call64.i = tail call ptr @free_irq(i32 noundef %call1.i139.i, ptr noundef %call7.i.i) #7
  %dec.i144 = add nsw i32 %dec154.i, -1
  %cmp60.i.not = icmp eq i32 %dec154.i, 0
  br i1 %cmp60.i.not, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %do.end51.i.while.end.i_crit_edge
  %121 = ptrtoint ptr %num_row_gpios.i131 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %num_row_gpios.i131, align 4
  br label %err_free_rows.i

err_free_rows.i:                                  ; preds = %while.end.i, %do.end36.i, %do.end17.i
  %i.4.i = phi i32 [ %i.1149.i, %do.end17.i ], [ %i.1.lcssa.i, %do.end36.i ], [ %122, %while.end.i ]
  %err.0.i = phi i32 [ %call12.i, %do.end17.i ], [ %call31.i, %do.end36.i ], [ %call46.i, %while.end.i ]
  %dec67155.i = add i32 %i.4.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec67155.i)
  %cmp68156.i = icmp sgt i32 %dec67155.i, -1
  br i1 %cmp68156.i, label %while.body69.lr.ph.i, label %err_free_rows.i.while.end72.i_crit_edge

err_free_rows.i.while.end72.i_crit_edge:          ; preds = %err_free_rows.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end72.i

while.body69.lr.ph.i:                             ; preds = %err_free_rows.i
  %row_gpios70.i = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %60, i32 0, i32 1
  br label %while.body69.i

while.body69.i:                                   ; preds = %while.body69.i.while.body69.i_crit_edge, %while.body69.lr.ph.i
  %dec67157.i = phi i32 [ %dec67155.i, %while.body69.lr.ph.i ], [ %dec67.i, %while.body69.i.while.body69.i_crit_edge ]
  %123 = ptrtoint ptr %row_gpios70.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %row_gpios70.i, align 4
  %arrayidx71.i = getelementptr i32, ptr %124, i32 %dec67157.i
  %125 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx71.i, align 4
  tail call void @gpio_free(i32 noundef %126) #7
  %dec67.i = add nsw i32 %dec67157.i, -1
  %cmp68.i.not = icmp eq i32 %dec67157.i, 0
  br i1 %cmp68.i.not, label %while.body69.i.while.end72.i_crit_edge, label %while.body69.i.while.body69.i_crit_edge

while.body69.i.while.body69.i_crit_edge:          ; preds = %while.body69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body69.i

while.body69.i.while.end72.i_crit_edge:           ; preds = %while.body69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end72.i

while.end72.i:                                    ; preds = %while.body69.i.while.end72.i_crit_edge, %err_free_rows.i.while.end72.i_crit_edge
  %127 = ptrtoint ptr %num_col_gpios.i128 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %num_col_gpios.i128, align 4
  br label %err_free_cols.i

err_free_cols.i:                                  ; preds = %while.end72.i, %do.end.i136
  %i.6.i = phi i32 [ %i.0147.i, %do.end.i136 ], [ %128, %while.end72.i ]
  %err.1.i = phi i32 [ %call.i, %do.end.i136 ], [ %err.0.i, %while.end72.i ]
  %dec75158.i = add i32 %i.6.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec75158.i)
  %cmp76159.i = icmp sgt i32 %dec75158.i, -1
  br i1 %cmp76159.i, label %while.body77.lr.ph.i, label %err_free_cols.i.err_free_mem_crit_edge

err_free_cols.i.err_free_mem_crit_edge:           ; preds = %err_free_cols.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_mem

while.body77.lr.ph.i:                             ; preds = %err_free_cols.i
  %col_gpios78.i = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %60, i32 0, i32 2
  br label %while.body77.i

while.body77.i:                                   ; preds = %while.body77.i.while.body77.i_crit_edge, %while.body77.lr.ph.i
  %dec75160.i = phi i32 [ %dec75158.i, %while.body77.lr.ph.i ], [ %dec75.i, %while.body77.i.while.body77.i_crit_edge ]
  %129 = ptrtoint ptr %col_gpios78.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %col_gpios78.i, align 4
  %arrayidx79.i = getelementptr i32, ptr %130, i32 %dec75160.i
  %131 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx79.i, align 4
  tail call void @gpio_free(i32 noundef %132) #7
  %dec75.i = add nsw i32 %dec75160.i, -1
  %cmp76.i.not = icmp eq i32 %dec75160.i, 0
  br i1 %cmp76.i.not, label %while.body77.i.err_free_mem_crit_edge, label %while.body77.i.while.body77.i_crit_edge

while.body77.i.while.body77.i_crit_edge:          ; preds = %while.body77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body77.i

while.body77.i.err_free_mem_crit_edge:            ; preds = %while.body77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_mem

if.end63:                                         ; preds = %for.body.i.i.if.end63_crit_edge, %if.then.i.i, %for.cond.preheader.i.i.if.end63_crit_edge
  %133 = ptrtoint ptr %input_dev17 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %input_dev17, align 4
  %call65 = tail call i32 @input_register_device(ptr noundef %134) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %err_free_gpio

if.end68:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  %wakeup = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %pdata.0, i32 0, i32 10
  %135 = ptrtoint ptr %wakeup to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %wakeup, align 1, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool70 = icmp ne i8 %136, 0
  %call71 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext %tobool70) #7
  %driver_data.i.i146 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %137 = ptrtoint ptr %driver_data.i.i146 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %call7.i.i, ptr %driver_data.i.i146, align 4
  br label %cleanup

err_free_gpio:                                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @matrix_keypad_free_gpio(ptr noundef nonnull %call7.i.i)
  br label %err_free_mem

err_free_mem:                                     ; preds = %err_free_gpio, %while.body77.i.err_free_mem_crit_edge, %err_free_cols.i.err_free_mem_crit_edge, %do.end54, %if.end10.err_free_mem_crit_edge
  %err.0 = phi i32 [ %call49, %do.end54 ], [ %call65, %err_free_gpio ], [ -12, %if.end10.err_free_mem_crit_edge ], [ %err.1.i, %err_free_cols.i.err_free_mem_crit_edge ], [ %err.1.i, %while.body77.i.err_free_mem_crit_edge ]
  tail call void @input_free_device(ptr noundef %call12) #7
  tail call void @kfree(ptr noundef %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err_free_mem, %if.end68, %do.end, %if.then4
  %retval.0 = phi i32 [ %err.0, %err_free_mem ], [ 0, %if.end68 ], [ -22, %do.end ], [ %26, %if.then4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @matrix_keypad_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @matrix_keypad_free_gpio(ptr noundef %1)
  %input_dev = getelementptr inbounds %struct.matrix_keypad, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input_dev, align 4
  tail call void @input_unregister_device(ptr noundef %3) #7
  tail call void @kfree(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @matrix_keypad_scan(ptr noundef %work) #2 align 64 {
entry:
  %new_state = alloca [32 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -144
  %input_dev1 = getelementptr i8, ptr %work, i32 -140
  %0 = ptrtoint ptr %input_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input_dev1, align 4
  %keycode = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %keycode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %keycode, align 4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %new_state) #7
  %num_col_gpios.i = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %num_col_gpios.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_col_gpios.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4.not.i = icmp eq i32 %7, 0
  br i1 %cmp4.not.i, label %for.cond9.preheader.thread, label %for.body.i.preheader

for.cond9.preheader.thread:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = call ptr @memset(ptr %new_state, i32 0, i32 128)
  br label %for.end34

for.body.i.preheader:                             ; preds = %entry
  %active_low.i = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %5, i32 0, i32 9
  %col_gpios.i = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %5, i32 0, i32 2
  %drive_inactive_cols.i = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %5, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %__activate_col.exit.for.body.i_crit_edge, %for.body.i.preheader
  %col.05.i = phi i32 [ %inc.i, %__activate_col.exit.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %9 = ptrtoint ptr %active_low.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %active_low.i, align 4, !range !109
  %11 = ptrtoint ptr %col_gpios.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %col_gpios.i, align 4
  %arrayidx.i93 = getelementptr i32, ptr %12, i32 %col.05.i
  %13 = ptrtoint ptr %arrayidx.i93 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i93, align 4
  %15 = zext i8 %10 to i32
  %call.i21.i = tail call ptr @gpio_to_desc(i32 noundef %14) #7
  tail call void @gpiod_set_raw_value_cansleep(ptr noundef %call.i21.i, i32 noundef %15) #7
  %16 = ptrtoint ptr %drive_inactive_cols.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %drive_inactive_cols.i, align 1, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool8.not.i = icmp eq i8 %17, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %for.body.i.__activate_col.exit_crit_edge

for.body.i.__activate_col.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__activate_col.exit

if.then9.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %col_gpios.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %col_gpios.i, align 4
  %arrayidx11.i = getelementptr i32, ptr %19, i32 %col.05.i
  %20 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx11.i, align 4
  %call.i22.i = tail call ptr @gpio_to_desc(i32 noundef %21) #7
  %call1.i23.i = tail call i32 @gpiod_direction_input(ptr noundef %call.i22.i) #7
  br label %__activate_col.exit

__activate_col.exit:                              ; preds = %if.then9.i, %for.body.i.__activate_col.exit_crit_edge
  %inc.i = add nuw i32 %col.05.i, 1
  %22 = ptrtoint ptr %num_col_gpios.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_col_gpios.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %23
  br i1 %cmp.i, label %__activate_col.exit.for.body.i_crit_edge, label %activate_all_cols.exit

__activate_col.exit.for.body.i_crit_edge:         ; preds = %__activate_col.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

activate_all_cols.exit:                           ; preds = %__activate_col.exit
  %24 = call ptr @memset(ptr %new_state, i32 0, i32 128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp119.not = icmp eq i32 %23, 0
  br i1 %cmp119.not, label %for.cond9.preheaderthread-pre-split, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %activate_all_cols.exit
  %active_low.i94 = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %5, i32 0, i32 9
  %col_gpios.i95 = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %5, i32 0, i32 2
  %col_scan_delay_us.i = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %5, i32 0, i32 5
  %num_row_gpios = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %5, i32 0, i32 3
  %row_gpios.i = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %5, i32 0, i32 1
  %drive_inactive_cols.i104 = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %5, i32 0, i32 12
  br label %for.body

for.cond9.preheaderthread-pre-split:              ; preds = %activate_all_cols.exit
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %num_col_gpios.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr = load i32, ptr %num_col_gpios.i, align 4
  br label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %__activate_col.exit110.for.cond9.preheader_crit_edge, %for.cond9.preheaderthread-pre-split
  %26 = phi i32 [ %.pr, %for.cond9.preheaderthread-pre-split ], [ %65, %__activate_col.exit110.for.cond9.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp11125.not = icmp eq i32 %26, 0
  br i1 %cmp11125.not, label %for.cond9.preheader.for.end34_crit_edge, label %for.body12.lr.ph

for.cond9.preheader.for.end34_crit_edge:          ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end34

for.body12.lr.ph:                                 ; preds = %for.cond9.preheader
  %last_key_state = getelementptr i8, ptr %work, i32 -128
  %num_row_gpios17 = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %5, i32 0, i32 3
  %row_shift = getelementptr i8, ptr %work, i32 -136
  br label %for.body12

for.body:                                         ; preds = %__activate_col.exit110.for.body_crit_edge, %for.body.lr.ph
  %col.0120 = phi i32 [ 0, %for.body.lr.ph ], [ %inc7, %__activate_col.exit110.for.body_crit_edge ]
  %27 = ptrtoint ptr %active_low.i94 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %active_low.i94, align 4, !range !109
  %29 = ptrtoint ptr %col_gpios.i95 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %col_gpios.i95, align 4
  %arrayidx.i96 = getelementptr i32, ptr %30, i32 %col.0120
  %31 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i96, align 4
  %33 = xor i8 %28, 1
  %34 = zext i8 %33 to i32
  %call.i.i97 = tail call ptr @gpio_to_desc(i32 noundef %32) #7
  %call1.i.i98 = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i.i97, i32 noundef %34) #7
  %35 = ptrtoint ptr %col_scan_delay_us.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %col_scan_delay_us.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool2.not.i = icmp eq i32 %36, 0
  br i1 %tobool2.not.i, label %for.body.activate_col.exit_crit_edge, label %cond.false7.i

for.body.activate_col.exit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %activate_col.exit

cond.false7.i:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %37(i32 noundef %36) #7
  br label %activate_col.exit

activate_col.exit:                                ; preds = %cond.false7.i, %for.body.activate_col.exit_crit_edge
  %38 = ptrtoint ptr %num_row_gpios to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_row_gpios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp4117.not = icmp eq i32 %39, 0
  br i1 %cmp4117.not, label %activate_col.exit.for.end_crit_edge, label %for.body5.lr.ph

activate_col.exit.for.end_crit_edge:              ; preds = %activate_col.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body5.lr.ph:                                  ; preds = %activate_col.exit
  %arrayidx = getelementptr [32 x i32], ptr %new_state, i32 0, i32 %col.0120
  br label %for.body5

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.body5.lr.ph
  %row.0118 = phi i32 [ 0, %for.body5.lr.ph ], [ %inc, %for.body5.for.body5_crit_edge ]
  %40 = ptrtoint ptr %row_gpios.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %row_gpios.i, align 4
  %arrayidx.i = getelementptr i32, ptr %41, i32 %row.0118
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i, align 4
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %43) #7
  %call1.i.i = tail call i32 @gpiod_get_raw_value_cansleep(ptr noundef %call.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i = icmp ne i32 %call1.i.i, 0
  %44 = ptrtoint ptr %active_low.i94 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %active_low.i94, align 4, !range !109
  %46 = zext i1 %tobool.not.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %46)
  %tobool4.i.not = icmp eq i8 %45, %46
  %shl = shl nuw i32 1, %row.0118
  %spec.select = select i1 %tobool4.i.not, i32 0, i32 %shl
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx, align 4
  %or = or i32 %spec.select, %48
  store i32 %or, ptr %arrayidx, align 4
  %inc = add nuw i32 %row.0118, 1
  %49 = ptrtoint ptr %num_row_gpios to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_row_gpios, align 4
  %cmp4 = icmp ult i32 %inc, %50
  br i1 %cmp4, label %for.body5.for.body5_crit_edge, label %for.body5.for.end_crit_edge

for.body5.for.end_crit_edge:                      ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body5

for.end:                                          ; preds = %for.body5.for.end_crit_edge, %activate_col.exit.for.end_crit_edge
  %51 = ptrtoint ptr %active_low.i94 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %active_low.i94, align 4, !range !109
  %53 = ptrtoint ptr %col_gpios.i95 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %col_gpios.i95, align 4
  %arrayidx.i102 = getelementptr i32, ptr %54, i32 %col.0120
  %55 = ptrtoint ptr %arrayidx.i102 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i102, align 4
  %57 = zext i8 %52 to i32
  %call.i21.i103 = tail call ptr @gpio_to_desc(i32 noundef %56) #7
  tail call void @gpiod_set_raw_value_cansleep(ptr noundef %call.i21.i103, i32 noundef %57) #7
  %58 = ptrtoint ptr %drive_inactive_cols.i104 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %drive_inactive_cols.i104, align 1, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool8.not.i105 = icmp eq i8 %59, 0
  br i1 %tobool8.not.i105, label %if.then9.i109, label %for.end.__activate_col.exit110_crit_edge

for.end.__activate_col.exit110_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %__activate_col.exit110

if.then9.i109:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %col_gpios.i95 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %col_gpios.i95, align 4
  %arrayidx11.i106 = getelementptr i32, ptr %61, i32 %col.0120
  %62 = ptrtoint ptr %arrayidx11.i106 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx11.i106, align 4
  %call.i22.i107 = tail call ptr @gpio_to_desc(i32 noundef %63) #7
  %call1.i23.i108 = tail call i32 @gpiod_direction_input(ptr noundef %call.i22.i107) #7
  br label %__activate_col.exit110

__activate_col.exit110:                           ; preds = %if.then9.i109, %for.end.__activate_col.exit110_crit_edge
  %inc7 = add nuw i32 %col.0120, 1
  %64 = ptrtoint ptr %num_col_gpios.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_col_gpios.i, align 4
  %cmp = icmp ult i32 %inc7, %65
  br i1 %cmp, label %__activate_col.exit110.for.body_crit_edge, label %__activate_col.exit110.for.cond9.preheader_crit_edge

__activate_col.exit110.for.cond9.preheader_crit_edge: ; preds = %__activate_col.exit110
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond9.preheader

__activate_col.exit110.for.body_crit_edge:        ; preds = %__activate_col.exit110
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body12:                                       ; preds = %cleanup.for.body12_crit_edge, %for.body12.lr.ph
  %col.1126 = phi i32 [ 0, %for.body12.lr.ph ], [ %inc33, %cleanup.for.body12_crit_edge ]
  %arrayidx13 = getelementptr [32 x i32], ptr %last_key_state, i32 0, i32 %col.1126
  %66 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx13, align 4
  %arrayidx14 = getelementptr [32 x i32], ptr %new_state, i32 0, i32 %col.1126
  %68 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx14, align 4
  %xor = xor i32 %69, %67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor)
  %cmp15 = icmp eq i32 %xor, 0
  br i1 %cmp15, label %for.body12.cleanup_crit_edge, label %for.cond16.preheader

for.body12.cleanup_crit_edge:                     ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond16.preheader:                             ; preds = %for.body12
  %70 = ptrtoint ptr %num_row_gpios17 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_row_gpios17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp18122.not = icmp eq i32 %71, 0
  br i1 %cmp18122.not, label %for.cond16.preheader.cleanup_crit_edge, label %for.cond16.preheader.for.body19_crit_edge

for.cond16.preheader.for.body19_crit_edge:        ; preds = %for.cond16.preheader
  br label %for.body19

for.cond16.preheader.cleanup_crit_edge:           ; preds = %for.cond16.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body19:                                       ; preds = %for.inc29.for.body19_crit_edge, %for.cond16.preheader.for.body19_crit_edge
  %row.1123 = phi i32 [ %inc30, %for.inc29.for.body19_crit_edge ], [ 0, %for.cond16.preheader.for.body19_crit_edge ]
  %shl20 = shl nuw i32 1, %row.1123
  %and = and i32 %shl20, %xor
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp21 = icmp eq i32 %and, 0
  br i1 %cmp21, label %for.body19.for.inc29_crit_edge, label %if.end23

for.body19.for.inc29_crit_edge:                   ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc29

if.end23:                                         ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %row_shift to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %row_shift, align 4
  %shl24 = shl i32 %row.1123, %73
  %add = add i32 %shl24, %col.1126
  tail call void @input_event(ptr noundef %1, i32 noundef 4, i32 noundef 4, i32 noundef %add) #7
  %arrayidx25 = getelementptr i16, ptr %3, i32 %add
  %74 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx25, align 2
  %conv = zext i16 %75 to i32
  %76 = lshr i32 %69, %row.1123
  %77 = and i32 %76, 1
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %conv, i32 noundef %77) #7
  br label %for.inc29

for.inc29:                                        ; preds = %if.end23, %for.body19.for.inc29_crit_edge
  %inc30 = add nuw i32 %row.1123, 1
  %78 = ptrtoint ptr %num_row_gpios17 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_row_gpios17, align 4
  %cmp18 = icmp ult i32 %inc30, %79
  br i1 %cmp18, label %for.inc29.for.body19_crit_edge, label %for.inc29.cleanup_crit_edge

for.inc29.cleanup_crit_edge:                      ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc29.for.body19_crit_edge:                   ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body19

cleanup:                                          ; preds = %for.inc29.cleanup_crit_edge, %for.cond16.preheader.cleanup_crit_edge, %for.body12.cleanup_crit_edge
  %inc33 = add nuw i32 %col.1126, 1
  %80 = ptrtoint ptr %num_col_gpios.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num_col_gpios.i, align 4
  %cmp11 = icmp ult i32 %inc33, %81
  br i1 %cmp11, label %cleanup.for.body12_crit_edge, label %cleanup.for.end34_crit_edge

cleanup.for.end34_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end34

cleanup.for.body12_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body12

for.end34:                                        ; preds = %cleanup.for.end34_crit_edge, %for.cond9.preheader.for.end34_crit_edge, %for.cond9.preheader.thread
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %last_key_state35 = getelementptr i8, ptr %work, i32 -128
  %82 = call ptr @memcpy(ptr %last_key_state35, ptr %new_state, i32 128)
  %83 = ptrtoint ptr %num_col_gpios.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %num_col_gpios.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp4.not.i80 = icmp eq i32 %84, 0
  br i1 %cmp4.not.i80, label %for.end34.activate_all_cols.exit85_crit_edge, label %for.body.i84.preheader

for.end34.activate_all_cols.exit85_crit_edge:     ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %activate_all_cols.exit85

for.body.i84.preheader:                           ; preds = %for.end34
  %active_low.i111 = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %5, i32 0, i32 9
  %col_gpios.i112 = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %5, i32 0, i32 2
  br label %for.body.i84

for.body.i84:                                     ; preds = %for.body.i84.for.body.i84_crit_edge, %for.body.i84.preheader
  %col.05.i81 = phi i32 [ %inc.i82, %for.body.i84.for.body.i84_crit_edge ], [ 0, %for.body.i84.preheader ]
  %85 = ptrtoint ptr %active_low.i111 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %active_low.i111, align 4, !range !109
  %87 = ptrtoint ptr %col_gpios.i112 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %col_gpios.i112, align 4
  %arrayidx.i113 = getelementptr i32, ptr %88, i32 %col.05.i81
  %89 = ptrtoint ptr %arrayidx.i113 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx.i113, align 4
  %91 = xor i8 %86, 1
  %92 = zext i8 %91 to i32
  %call.i.i114 = tail call ptr @gpio_to_desc(i32 noundef %90) #7
  %call1.i.i115 = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i.i114, i32 noundef %92) #7
  %inc.i82 = add nuw i32 %col.05.i81, 1
  %93 = ptrtoint ptr %num_col_gpios.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %num_col_gpios.i, align 4
  %cmp.i83 = icmp ult i32 %inc.i82, %94
  br i1 %cmp.i83, label %for.body.i84.for.body.i84_crit_edge, label %for.body.i84.activate_all_cols.exit85_crit_edge

for.body.i84.activate_all_cols.exit85_crit_edge:  ; preds = %for.body.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %activate_all_cols.exit85

for.body.i84.for.body.i84_crit_edge:              ; preds = %for.body.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i84

activate_all_cols.exit85:                         ; preds = %for.body.i84.activate_all_cols.exit85_crit_edge, %for.end34.activate_all_cols.exit85_crit_edge
  %lock = getelementptr i8, ptr %work, i32 100
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %scan_pending = getelementptr i8, ptr %work, i32 144
  %95 = ptrtoint ptr %scan_pending to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %scan_pending, align 4
  %96 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %add.ptr, align 4
  %clustered_irq.i = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %97, i32 0, i32 7
  %98 = ptrtoint ptr %clustered_irq.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %clustered_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp.not.i = icmp eq i32 %99, 0
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %if.then.i87

for.cond.preheader.i:                             ; preds = %activate_all_cols.exit85
  %num_row_gpios.i = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %97, i32 0, i32 3
  %100 = ptrtoint ptr %num_row_gpios.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %num_row_gpios.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp39.not.i = icmp eq i32 %101, 0
  br i1 %cmp39.not.i, label %for.cond.preheader.i.enable_row_irqs.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.enable_row_irqs.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %enable_row_irqs.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %row_gpios.i86 = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %97, i32 0, i32 1
  br label %for.body.i92

if.then.i87:                                      ; preds = %activate_all_cols.exit85
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @enable_irq(i32 noundef %99) #7
  br label %enable_row_irqs.exit

for.body.i92:                                     ; preds = %for.body.i92.for.body.i92_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i91, %for.body.i92.for.body.i92_crit_edge ]
  %102 = ptrtoint ptr %row_gpios.i86 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %row_gpios.i86, align 4
  %arrayidx.i88 = getelementptr i32, ptr %103, i32 %i.010.i
  %104 = ptrtoint ptr %arrayidx.i88 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx.i88, align 4
  %call.i.i89 = tail call ptr @gpio_to_desc(i32 noundef %105) #7
  %call1.i.i90 = tail call i32 @gpiod_to_irq(ptr noundef %call.i.i89) #7
  tail call void @enable_irq(i32 noundef %call1.i.i90) #7
  %inc.i91 = add nuw i32 %i.010.i, 1
  %106 = ptrtoint ptr %num_row_gpios.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %num_row_gpios.i, align 4
  %cmp3.i = icmp ult i32 %inc.i91, %107
  br i1 %cmp3.i, label %for.body.i92.for.body.i92_crit_edge, label %for.body.i92.enable_row_irqs.exit_crit_edge

for.body.i92.enable_row_irqs.exit_crit_edge:      ; preds = %for.body.i92
  call void @__sanitizer_cov_trace_pc() #9
  br label %enable_row_irqs.exit

for.body.i92.for.body.i92_crit_edge:              ; preds = %for.body.i92
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i92

enable_row_irqs.exit:                             ; preds = %for.body.i92.enable_row_irqs.exit_crit_edge, %if.then.i87, %for.cond.preheader.i.enable_row_irqs.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %new_state) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @matrix_keypad_start(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %stopped = getelementptr inbounds %struct.matrix_keypad, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %stopped, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  tail call void @arm_heavy_mb() #7
  %work = getelementptr inbounds %struct.matrix_keypad, ptr %1, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %work, i32 noundef 0) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @matrix_keypad_stop(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.matrix_keypad, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %stopped = getelementptr inbounds %struct.matrix_keypad, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %stopped, align 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  %work = getelementptr inbounds %struct.matrix_keypad, ptr %1, i32 0, i32 5
  %call2 = tail call zeroext i1 @flush_delayed_work(ptr noundef %work) #7
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %clustered_irq.i = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %clustered_irq.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %clustered_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not.i = icmp eq i32 %6, 0
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %if.then.i

for.cond.preheader.i:                             ; preds = %entry
  %num_row_gpios.i = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %num_row_gpios.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_row_gpios.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp39.not.i = icmp eq i32 %8, 0
  br i1 %cmp39.not.i, label %for.cond.preheader.i.disable_row_irqs.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.disable_row_irqs.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_row_irqs.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %row_gpios.i = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %4, i32 0, i32 1
  br label %for.body.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @disable_irq_nosync(i32 noundef %6) #7
  br label %disable_row_irqs.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %row_gpios.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %row_gpios.i, align 4
  %arrayidx.i = getelementptr i32, ptr %10, i32 %i.010.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %12) #7
  %call1.i.i = tail call i32 @gpiod_to_irq(ptr noundef %call.i.i) #7
  tail call void @disable_irq_nosync(i32 noundef %call1.i.i) #7
  %inc.i = add nuw i32 %i.010.i, 1
  %13 = ptrtoint ptr %num_row_gpios.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_row_gpios.i, align 4
  %cmp3.i = icmp ult i32 %inc.i, %14
  br i1 %cmp3.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.disable_row_irqs.exit_crit_edge

for.body.i.disable_row_irqs.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_row_irqs.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

disable_row_irqs.exit:                            ; preds = %for.body.i.disable_row_irqs.exit_crit_edge, %if.then.i, %for.cond.preheader.i.disable_row_irqs.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matrix_keypad_build_keymap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @matrix_keypad_free_gpio(ptr noundef %keypad) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %keypad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %keypad, align 4
  %clustered_irq = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %clustered_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clustered_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %num_row_gpios = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %num_row_gpios to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_row_gpios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp339.not = icmp eq i32 %5, 0
  br i1 %cmp339.not, label %for.cond.preheader.if.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %row_gpios = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %1, i32 0, i32 1
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call ptr @free_irq(i32 noundef %3, ptr noundef %keypad) #7
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %row_gpios to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %row_gpios, align 4
  %arrayidx = getelementptr i32, ptr %7, i32 %i.040
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %9) #7
  %call1.i = tail call i32 @gpiod_to_irq(ptr noundef %call.i) #7
  %call5 = tail call ptr @free_irq(i32 noundef %call1.i, ptr noundef %keypad) #7
  %inc = add nuw i32 %i.040, 1
  %10 = ptrtoint ptr %num_row_gpios to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_row_gpios, align 4
  %cmp3 = icmp ult i32 %inc, %11
  br i1 %cmp3, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %if.then, %for.cond.preheader.if.end_crit_edge
  %num_row_gpios7 = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %num_row_gpios7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_row_gpios7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp841.not = icmp eq i32 %13, 0
  br i1 %cmp841.not, label %if.end.for.cond15.preheader_crit_edge, label %for.body9.lr.ph

if.end.for.cond15.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond15.preheader

for.body9.lr.ph:                                  ; preds = %if.end
  %row_gpios10 = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %1, i32 0, i32 1
  br label %for.body9

for.cond15.preheader:                             ; preds = %for.body9.for.cond15.preheader_crit_edge, %if.end.for.cond15.preheader_crit_edge
  %num_col_gpios = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %num_col_gpios to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_col_gpios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp1643.not = icmp eq i32 %15, 0
  br i1 %cmp1643.not, label %for.cond15.preheader.for.end21_crit_edge, label %for.body17.lr.ph

for.cond15.preheader.for.end21_crit_edge:         ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end21

for.body17.lr.ph:                                 ; preds = %for.cond15.preheader
  %col_gpios = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %1, i32 0, i32 2
  br label %for.body17

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.body9.lr.ph
  %i.142 = phi i32 [ 0, %for.body9.lr.ph ], [ %inc13, %for.body9.for.body9_crit_edge ]
  %16 = ptrtoint ptr %row_gpios10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %row_gpios10, align 4
  %arrayidx11 = getelementptr i32, ptr %17, i32 %i.142
  %18 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx11, align 4
  tail call void @gpio_free(i32 noundef %19) #7
  %inc13 = add nuw i32 %i.142, 1
  %20 = ptrtoint ptr %num_row_gpios7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_row_gpios7, align 4
  %cmp8 = icmp ult i32 %inc13, %21
  br i1 %cmp8, label %for.body9.for.body9_crit_edge, label %for.body9.for.cond15.preheader_crit_edge

for.body9.for.cond15.preheader_crit_edge:         ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond15.preheader

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body9

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %for.body17.lr.ph
  %i.244 = phi i32 [ 0, %for.body17.lr.ph ], [ %inc20, %for.body17.for.body17_crit_edge ]
  %22 = ptrtoint ptr %col_gpios to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %col_gpios, align 4
  %arrayidx18 = getelementptr i32, ptr %23, i32 %i.244
  %24 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx18, align 4
  tail call void @gpio_free(i32 noundef %25) #7
  %inc20 = add nuw i32 %i.244, 1
  %26 = ptrtoint ptr %num_col_gpios to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_col_gpios, align 4
  %cmp16 = icmp ult i32 %inc20, %27
  br i1 %cmp16, label %for.body17.for.body17_crit_edge, label %for.body17.for.end21_crit_edge

for.body17.for.end21_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end21

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body17

for.end21:                                        ; preds = %for.body17.for.end21_crit_edge, %for.cond15.preheader.for.end21_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_input(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_raw_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_any_context_irq(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @matrix_keypad_interrupt(i32 noundef %irq, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.matrix_keypad, ptr %id, i32 0, i32 6
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %scan_pending = getelementptr inbounds %struct.matrix_keypad, ptr %id, i32 0, i32 7
  %0 = ptrtoint ptr %scan_pending to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %scan_pending, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.out_crit_edge, !prof !111

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.rhs:                                          ; preds = %entry
  %stopped = getelementptr inbounds %struct.matrix_keypad, ptr %id, i32 0, i32 8
  %2 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %stopped, align 1, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool6.not = icmp eq i8 %3, 0
  br i1 %tobool6.not, label %if.end, label %lor.rhs.out_crit_edge, !prof !111

lor.rhs.out_crit_edge:                            ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %lor.rhs
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %id, align 4
  %clustered_irq.i = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %clustered_irq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clustered_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %if.then.i21

for.cond.preheader.i:                             ; preds = %if.end
  %num_row_gpios.i = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %num_row_gpios.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_row_gpios.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp39.not.i = icmp eq i32 %9, 0
  br i1 %cmp39.not.i, label %for.cond.preheader.i.disable_row_irqs.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.disable_row_irqs.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_row_irqs.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %row_gpios.i = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %5, i32 0, i32 1
  br label %for.body.i

if.then.i21:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @disable_irq_nosync(i32 noundef %7) #7
  br label %disable_row_irqs.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %row_gpios.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %row_gpios.i, align 4
  %arrayidx.i = getelementptr i32, ptr %11, i32 %i.010.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %13) #7
  %call1.i.i = tail call i32 @gpiod_to_irq(ptr noundef %call.i.i) #7
  tail call void @disable_irq_nosync(i32 noundef %call1.i.i) #7
  %inc.i = add nuw i32 %i.010.i, 1
  %14 = ptrtoint ptr %num_row_gpios.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_row_gpios.i, align 4
  %cmp3.i = icmp ult i32 %inc.i, %15
  br i1 %cmp3.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.disable_row_irqs.exit_crit_edge

for.body.i.disable_row_irqs.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_row_irqs.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

disable_row_irqs.exit:                            ; preds = %for.body.i.disable_row_irqs.exit_crit_edge, %if.then.i21, %for.cond.preheader.i.disable_row_irqs.exit_crit_edge
  %16 = ptrtoint ptr %scan_pending to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %scan_pending, align 4
  %work = getelementptr inbounds %struct.matrix_keypad, ptr %id, i32 0, i32 5
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %id, align 4
  %debounce_ms = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %debounce_ms to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %debounce_ms, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %20) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %21 = load ptr, ptr @system_wq, align 4
  %call.i.i23 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %work, i32 noundef %call2.i) #7
  br label %out

out:                                              ; preds = %disable_row_irqs.exit, %lor.rhs.out_crit_edge, %entry.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpio_free(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @matrix_keypad_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input_dev = getelementptr inbounds %struct.matrix_keypad, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input_dev, align 4
  tail call void @matrix_keypad_stop(ptr noundef %3)
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %clustered_irq.i = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %clustered_irq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %clustered_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 0
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %if.then.i

for.cond.preheader.i:                             ; preds = %if.then
  %num_row_gpios.i = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %8, i32 0, i32 3
  %11 = ptrtoint ptr %num_row_gpios.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_row_gpios.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp529.not.i = icmp eq i32 %12, 0
  br i1 %cmp529.not.i, label %for.cond.preheader.i.if.end_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end_crit_edge:            ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %disabled_gpios.i = getelementptr inbounds %struct.matrix_keypad, ptr %1, i32 0, i32 3
  %row_gpios.i = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %8, i32 0, i32 1
  br label %for.body.i

if.then.i:                                        ; preds = %if.then
  %call.i.i = tail call i32 @irq_set_irq_wake(i32 noundef %10, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %gpio_all_disabled.i = getelementptr inbounds %struct.matrix_keypad, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %gpio_all_disabled.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %gpio_all_disabled.i, align 2
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.030.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %div3.i.i = lshr i32 %i.030.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %disabled_gpios.i, i32 %div3.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %i.030.i, 31
  %16 = shl nuw i32 1, %and.i.i
  %17 = and i32 %16, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i5 = icmp eq i32 %17, 0
  br i1 %tobool.not.i5, label %if.then7.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then7.i:                                       ; preds = %for.body.i
  %18 = ptrtoint ptr %row_gpios.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %row_gpios.i, align 4
  %arrayidx.i = getelementptr i32, ptr %19, i32 %i.030.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  %call.i27.i = tail call ptr @gpio_to_desc(i32 noundef %21) #7
  %call1.i.i = tail call i32 @gpiod_to_irq(ptr noundef %call.i27.i) #7
  %call.i28.i = tail call i32 @irq_set_irq_wake(i32 noundef %call1.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28.i)
  %cmp10.i = icmp eq i32 %call.i28.i, 0
  br i1 %cmp10.i, label %if.then11.i, label %if.then7.i.for.inc.i_crit_edge

if.then7.i.for.inc.i_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then11.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i, align 4
  %or.i.i = or i32 %23, %16
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then11.i, %if.then7.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.030.i, 1
  %24 = ptrtoint ptr %num_row_gpios.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_row_gpios.i, align 4
  %cmp5.i = icmp ult i32 %inc.i, %25
  br i1 %cmp5.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %if.then4.i, %if.then.i.if.end_crit_edge, %for.cond.preheader.i.if.end_crit_edge, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @matrix_keypad_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %clustered_irq.i = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %clustered_irq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %clustered_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %if.then.i

for.cond.preheader.i:                             ; preds = %if.then
  %num_row_gpios.i = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %6, i32 0, i32 3
  %9 = ptrtoint ptr %num_row_gpios.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_row_gpios.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp524.not.i = icmp eq i32 %10, 0
  br i1 %cmp524.not.i, label %for.cond.preheader.i.if.end_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end_crit_edge:            ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %disabled_gpios.i = getelementptr inbounds %struct.matrix_keypad, ptr %1, i32 0, i32 3
  %row_gpios.i = getelementptr inbounds %struct.matrix_keypad_platform_data, ptr %6, i32 0, i32 1
  br label %for.body.i

if.then.i:                                        ; preds = %if.then
  %gpio_all_disabled.i = getelementptr inbounds %struct.matrix_keypad, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %gpio_all_disabled.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %gpio_all_disabled.i, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i6 = icmp eq i8 %12, 0
  br i1 %tobool.not.i6, label %if.then.i.if.end_crit_edge, label %if.then2.i

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 0) #7
  %13 = ptrtoint ptr %gpio_all_disabled.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %gpio_all_disabled.i, align 2
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.025.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %call6.i = tail call i32 @_test_and_clear_bit(i32 noundef %i.025.i, ptr noundef %disabled_gpios.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then8.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then8.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %row_gpios.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %row_gpios.i, align 4
  %arrayidx.i = getelementptr i32, ptr %15, i32 %i.025.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %call.i22.i = tail call ptr @gpio_to_desc(i32 noundef %17) #7
  %call1.i.i = tail call i32 @gpiod_to_irq(ptr noundef %call.i22.i) #7
  %call.i23.i = tail call i32 @irq_set_irq_wake(i32 noundef %call1.i.i, i32 noundef 0) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then8.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.025.i, 1
  %18 = ptrtoint ptr %num_row_gpios.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_row_gpios.i, align 4
  %cmp5.i = icmp ult i32 %inc.i, %19
  br i1 %cmp5.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %if.then2.i, %if.then.i.if.end_crit_edge, %for.cond.preheader.i.if.end_crit_edge, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %input_dev = getelementptr inbounds %struct.matrix_keypad, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %input_dev, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.input_dev, ptr %21, i32 0, i32 40, i32 8
  %22 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i.i, align 4
  %stopped.i = getelementptr inbounds %struct.matrix_keypad, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %stopped.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %stopped.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  tail call void @arm_heavy_mb() #7
  %work.i = getelementptr inbounds %struct.matrix_keypad, ptr %23, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %25 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %work.i, i32 noundef 0) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !49, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !70, !71, !73, !75, !77, !78, !79, !80, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @__initcall__kmod_matrix_keypad__227_580_matrix_keypad_driver_init6, !1, !"__initcall__kmod_matrix_keypad__227_580_matrix_keypad_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/matrix_keypad.c", i32 580, i32 1}
!2 = !{ptr @__exitcall_matrix_keypad_driver_exit, !1, !"__exitcall_matrix_keypad_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author228, !4, !"__UNIQUE_ID_author228", i1 false, i1 false}
!4 = !{!"../drivers/input/keyboard/matrix_keypad.c", i32 582, i32 1}
!5 = !{ptr @__UNIQUE_ID_description229, !6, !"__UNIQUE_ID_description229", i1 false, i1 false}
!6 = !{!"../drivers/input/keyboard/matrix_keypad.c", i32 583, i32 1}
!7 = !{ptr @__UNIQUE_ID_file230, !8, !"__UNIQUE_ID_file230", i1 false, i1 false}
!8 = !{!"../drivers/input/keyboard/matrix_keypad.c", i32 584, i32 1}
!9 = !{ptr @__UNIQUE_ID_license231, !8, !"__UNIQUE_ID_license231", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias232, !11, !"__UNIQUE_ID_alias232", i1 false, i1 false}
!11 = !{!"../drivers/input/keyboard/matrix_keypad.c", i32 585, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/keyboard/matrix_keypad.c", i32 575, i32 11}
!14 = !{ptr @matrix_keypad_driver, !15, !"matrix_keypad_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/keyboard/matrix_keypad.c", i32 571, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/keyboard/matrix_keypad.c", i32 493, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @matrix_keypad_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @matrix_keypad_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @matrix_keypad_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/input/keyboard/matrix_keypad.c", i32 508, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @matrix_keypad_probe.__key.7, !25, !"__key", i1 false, i1 false}
!28 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @matrix_keypad_probe.__key.9, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/input/keyboard/matrix_keypad.c", i32 509, i32 2}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/keyboard/matrix_keypad.c", i32 522, i32 3}
!34 = !{ptr @matrix_keypad_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @matrix_keypad_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/keyboard/matrix_keypad.c", i32 409, i32 3}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @matrix_keypad_parse_dt._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @matrix_keypad_parse_dt._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/input/keyboard/matrix_keypad.c", i32 415, i32 3}
!43 = !{ptr @matrix_keypad_parse_dt._entry.16, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @matrix_keypad_parse_dt._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/keyboard/matrix_keypad.c", i32 419, i32 56}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/keyboard/matrix_keypad.c", i32 420, i32 56}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/input/keyboard/matrix_keypad.c", i32 422, i32 3}
!51 = !{ptr @matrix_keypad_parse_dt._entry.21, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @matrix_keypad_parse_dt._entry_ptr.23, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/input/keyboard/matrix_keypad.c", i32 426, i32 26}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/keyboard/matrix_keypad.c", i32 429, i32 44}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/input/keyboard/matrix_keypad.c", i32 430, i32 30}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/input/keyboard/matrix_keypad.c", i32 432, i32 26}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/input/keyboard/matrix_keypad.c", i32 436, i32 29}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/input/keyboard/matrix_keypad.c", i32 438, i32 27}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/input/keyboard/matrix_keypad.c", i32 439, i32 27}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/input/keyboard/matrix_keypad.c", i32 447, i32 3}
!69 = !{ptr @matrix_keypad_parse_dt._entry.31, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @matrix_keypad_parse_dt._entry_ptr.33, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../include/linux/of_gpio.h", i32 104, i32 50}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/input/keyboard/matrix_keypad.c", i32 311, i32 43}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/input/keyboard/matrix_keypad.c", i32 313, i32 4}
!77 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @matrix_keypad_init_gpio._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @matrix_keypad_init_gpio._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/input/keyboard/matrix_keypad.c", i32 323, i32 43}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/input/keyboard/matrix_keypad.c", i32 325, i32 4}
!84 = !{ptr @matrix_keypad_init_gpio._entry.39, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @matrix_keypad_init_gpio._entry_ptr.41, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/input/keyboard/matrix_keypad.c", i32 340, i32 4}
!88 = !{ptr @matrix_keypad_init_gpio._entry.42, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @matrix_keypad_init_gpio._entry_ptr.44, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/input/keyboard/matrix_keypad.c", i32 353, i32 5}
!92 = !{ptr @matrix_keypad_init_gpio._entry.45, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @matrix_keypad_init_gpio._entry_ptr.47, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @matrix_keypad_dt_match, !95, !"matrix_keypad_dt_match", i1 false, i1 false}
!95 = !{!"../drivers/input/keyboard/matrix_keypad.c", i32 564, i32 34}
!96 = !{ptr @matrix_keypad_pm_ops, !97, !"matrix_keypad_pm_ops", i1 false, i1 false}
!97 = !{!"../drivers/input/keyboard/matrix_keypad.c", i32 300, i32 8}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{!"branch_weights", i32 1, i32 2000}
!108 = !{i32 0, i32 33}
!109 = !{i8 0, i8 2}
!110 = !{i64 2154111050}
!111 = !{!"branch_weights", i32 2000, i32 1}
