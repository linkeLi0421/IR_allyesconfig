; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/bcm-keypad.c_pt.bc'
source_filename = "../drivers/input/keyboard/bcm-keypad.c"
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
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.bcm_kp = type { ptr, i32, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_bcm_keypad__229_450_bcm_kp_device_driver_init6 = internal global ptr @bcm_kp_device_driver_init, section ".initcall6.init", align 4
@bcm_kp_device_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm_kp_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm_kp_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bcm_kp_device_driver_exit = internal global ptr @bcm_kp_device_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author230 = internal constant [39 x i8] c"bcm_keypad.author=Broadcom Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [41 x i8] c"bcm_keypad.description=BCM Keypad Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [50 x i8] c"bcm_keypad.file=drivers/input/keyboard/bcm-keypad\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [26 x i8] c"bcm_keypad.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bcm-keypad\00", [21 x i8] zeroinitializer }, align 32
@bcm_kp_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm-keypad\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@bcm_kp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 330, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to allocate the input device\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bcm_kp_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/input/keyboard/bcm-keypad.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm_kp_probe._entry_ptr = internal global ptr @bcm_kp_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"autorepeat\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"keypad/input0\00", [18 x i8] zeroinitializer }, align 32
@bcm_kp_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 363, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to build keymap\0A\00", [40 x i8] zeroinitializer }, align 32
@bcm_kp_probe._entry_ptr.10 = internal global ptr @bcm_kp_probe._entry.8, section ".printk_index", align 4
@bcm_kp_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 370, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Missing keypad base address resource\0A\00", [58 x i8] zeroinitializer }, align 32
@bcm_kp_probe._entry_ptr.13 = internal global ptr @bcm_kp_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"peri_clk\00", [23 x i8] zeroinitializer }, align 32
@bcm_kp_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 384, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@bcm_kp_probe._entry_ptr.17 = internal global ptr @bcm_kp_probe._entry.15, section ".printk_index", align 4
@bcm_kp_probe.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.2, ptr @.str.3, ptr @.str.19, i8 0, i8 97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bcm_keypad\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"No clock specified. Assuming it's enabled\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@bcm_kp_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 423, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@bcm_kp_probe._entry_ptr.23 = internal global ptr @bcm_kp_probe._entry.21, section ".printk_index", align 4
@bcm_kp_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 429, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register input device\0A\00", [63 x i8] zeroinitializer }, align 32
@bcm_kp_probe._entry_ptr.26 = internal global ptr @bcm_kp_probe._entry.24, section ".printk_index", align 4
@bcm_kp_matrix_key_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 218, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to parse kp params\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bcm_kp_matrix_key_parse_dt\00", [37 x i8] zeroinitializer }, align 32
@bcm_kp_matrix_key_parse_dt._entry_ptr = internal global ptr @bcm_kp_matrix_key_parse_dt._entry, section ".printk_index", align 4
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"status-debounce-filter-period\00", [34 x i8] zeroinitializer }, align 32
@bcm_kp_matrix_key_parse_dt._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.28, ptr @.str.3, i32 267, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Invalid Status filter debounce value %d\0A\00", [55 x i8] zeroinitializer }, align 32
@bcm_kp_matrix_key_parse_dt._entry_ptr.32 = internal global ptr @bcm_kp_matrix_key_parse_dt._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"col-debounce-filter-period\00", [37 x i8] zeroinitializer }, align 32
@bcm_kp_matrix_key_parse_dt._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.28, ptr @.str.3, i32 281, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Invalid Column filter debounce value %d\0A\00", [55 x i8] zeroinitializer }, align 32
@bcm_kp_matrix_key_parse_dt._entry_ptr.36 = internal global ptr @bcm_kp_matrix_key_parse_dt._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"row-output-enabled\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pull-up-enabled\00", [16 x i8] zeroinitializer }, align 32
@bcm_kp_matrix_key_parse_dt.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.28, ptr @.str.3, ptr @.str.39, i8 0, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"n_rows=%d n_col=%d kpcr=%x kpior=%x kpemr=%x\0A\00", [50 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294966779, i64 4294967294]
@___asan_gen_.40 = private unnamed_addr constant [21 x i8] c"bcm_kp_device_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 442, i32 31 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 445, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"bcm_kp_of_match\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 436, i32 34 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 330, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 337, i32 47 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 341, i32 20 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 363, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 370, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 379, i32 37 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 384, i32 5 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 387, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 395, i32 11 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 423, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 429, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 218, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 263, i32 27 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 266, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 277, i32 27 }
@___asan_gen_.136 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 280, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 291, i32 32 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 306, i32 32 }
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.149 = private constant [39 x i8] c"../drivers/input/keyboard/bcm-keypad.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 309, i32 2 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_bcm_kp_device_driver_exit, ptr @__initcall__kmod_bcm_keypad__229_450_bcm_kp_device_driver_init6, ptr @bcm_kp_device_driver_exit, ptr @bcm_kp_matrix_key_parse_dt._entry, ptr @bcm_kp_matrix_key_parse_dt._entry.30, ptr @bcm_kp_matrix_key_parse_dt._entry.34, ptr @bcm_kp_matrix_key_parse_dt._entry_ptr, ptr @bcm_kp_matrix_key_parse_dt._entry_ptr.32, ptr @bcm_kp_matrix_key_parse_dt._entry_ptr.36, ptr @bcm_kp_probe._entry, ptr @bcm_kp_probe._entry.11, ptr @bcm_kp_probe._entry.15, ptr @bcm_kp_probe._entry.21, ptr @bcm_kp_probe._entry.24, ptr @bcm_kp_probe._entry.8, ptr @bcm_kp_probe._entry_ptr, ptr @bcm_kp_probe._entry_ptr.10, ptr @bcm_kp_probe._entry_ptr.13, ptr @bcm_kp_probe._entry_ptr.17, ptr @bcm_kp_probe._entry_ptr.23, ptr @bcm_kp_probe._entry_ptr.26, ptr @bcm_kp_device_driver, ptr @.str, ptr @bcm_kp_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kp_device_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kp_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kp_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kp_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kp_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kp_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kp_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kp_matrix_key_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kp_matrix_key_parse_dt._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kp_matrix_key_parse_dt._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_kp_device_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm_kp_device_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcm_kp_device_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm_kp_device_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_kp_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %desired_rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 52, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup122_crit_edge, label %if.end

entry.cleanup122_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup122

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup122

if.end6:                                          ; preds = %if.end
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 5
  %0 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %evbit, align 4
  %or.i = or i32 %1, 2
  store i32 %or.i, ptr %evbit, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call.i197 = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.6, ptr noundef null) #7
  %tobool.i.not = icmp eq ptr %call.i197, null
  br i1 %tobool.i.not, label %if.end6.if.end12_crit_edge, label %if.then9

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %evbit, align 4
  %or.i196 = or i32 %5, 1048576
  store i32 %or.i196, ptr %evbit, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end6.if.end12_crit_edge
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %8 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %call2, align 8
  %phys = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 1
  %9 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.7, ptr %phys, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 40, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %parent, align 8
  %open = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 31
  %11 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @bcm_kp_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 32
  %12 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @bcm_kp_close, ptr %close, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 3
  %13 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 25, ptr %id, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %vendor, align 2
  %product = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %product, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 256, ptr %version, align 2
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 40, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %input_dev19 = getelementptr inbounds %struct.bcm_kp, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %input_dev19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call2, ptr %input_dev19, align 4
  %call20 = tail call fastcc i32 @bcm_kp_matrix_key_parse_dt(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end12.cleanup122_crit_edge

if.end12.cleanup122_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup122

if.end23:                                         ; preds = %if.end12
  %n_rows = getelementptr inbounds %struct.bcm_kp, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %n_rows to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n_rows, align 4
  %n_cols = getelementptr inbounds %struct.bcm_kp, ptr %call.i, i32 0, i32 6
  %21 = ptrtoint ptr %n_cols to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n_cols, align 4
  %call24 = tail call i32 @matrix_keypad_build_keymap(ptr noundef null, ptr noundef null, i32 noundef %20, i32 noundef %22, ptr noundef null, ptr noundef nonnull %call2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end31, label %do.end29

do.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #10
  br label %cleanup122

if.end31:                                         ; preds = %if.end23
  %call32 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %do.end37, label %if.end39

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #10
  br label %cleanup122

if.end39:                                         ; preds = %if.end31
  %call41 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call32) #7
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call41, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then44, label %if.end47

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %call41 to i32
  br label %cleanup122

if.end47:                                         ; preds = %if.end39
  %call49 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.14) #7
  %clk = getelementptr inbounds %struct.bcm_kp, ptr %call.i, i32 0, i32 2
  %25 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call49, ptr %clk, align 4
  %cmp.i198 = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i198, label %if.then52, label %if.else

if.then52:                                        ; preds = %if.end47
  %26 = ptrtoint ptr %call49 to i32
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i32 %26, label %do.end60 [
    i32 -2, label %do.body64
    i32 -517, label %if.then52.cleanup122_crit_edge
  ]

if.then52.cleanup122_crit_edge:                   ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup122

do.end60:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #10
  br label %cleanup122

do.body64:                                        ; preds = %if.then52
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_kp_probe.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_kp_probe, %if.then69)) #7
          to label %do.end73 [label %if.then69], !srcloc !89

if.then69:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_kp_probe.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.19) #7
  br label %do.end73

do.end73:                                         ; preds = %if.then69, %do.body64
  %28 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %clk, align 4
  br label %if.end97

if.else:                                          ; preds = %if.end47
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desired_rate) #7
  %29 = ptrtoint ptr %desired_rate to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %desired_rate, align 4, !annotation !90
  %30 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %31, ptr noundef nonnull @.str.20, ptr noundef nonnull %desired_rate, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp78 = icmp slt i32 %call.i.i, 0
  br i1 %cmp78, label %if.then79, label %if.else.if.end80_crit_edge

if.else.if.end80_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.then79:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %desired_rate to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 31250, ptr %desired_rate, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %if.else.if.end80_crit_edge
  %33 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clk, align 4
  %35 = ptrtoint ptr %desired_rate to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %desired_rate, align 4
  %call82 = call i32 @clk_round_rate(ptr noundef %34, i32 noundef %36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call82)
  %cmp83 = icmp slt i32 %call82, 1
  br i1 %cmp83, label %if.end80.cleanup.thread_crit_edge, label %if.end85

if.end80.cleanup.thread_crit_edge:                ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end85:                                         ; preds = %if.end80
  %37 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %clk, align 4
  %call87 = call i32 @clk_set_rate(ptr noundef %38, i32 noundef %call82) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %cleanup, label %if.end85.cleanup.thread_crit_edge

if.end85.cleanup.thread_crit_edge:                ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end85.cleanup.thread_crit_edge, %if.end80.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ %call87, %if.end85.cleanup.thread_crit_edge ], [ -22, %if.end80.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desired_rate) #7
  br label %cleanup122

cleanup:                                          ; preds = %if.end85
  %39 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clk, align 4
  %call92 = call fastcc i32 @clk_prepare_enable(ptr noundef %40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desired_rate) #7
  br i1 %tobool93.not, label %cleanup.if.end97_crit_edge, label %cleanup.cleanup122_crit_edge

cleanup.cleanup122_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup122

cleanup.if.end97_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

if.end97:                                         ; preds = %cleanup.if.end97_crit_edge, %do.end73
  call fastcc void @bcm_kp_stop(ptr noundef nonnull %call.i)
  %call98 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %irq = getelementptr inbounds %struct.bcm_kp, ptr %call.i, i32 0, i32 1
  %41 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call98, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp100 = icmp slt i32 %call98, 0
  br i1 %cmp100, label %if.end97.cleanup122_crit_edge, label %if.end102

if.end97.cleanup122_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup122

if.end102:                                        ; preds = %if.end97
  %42 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdev, align 8
  %call106 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call98, ptr noundef null, ptr noundef nonnull @bcm_kp_isr_thread, i32 noundef 8192, ptr noundef %43, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end113, label %do.end111

do.end111:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #10
  br label %cleanup122

if.end113:                                        ; preds = %if.end102
  %call114 = call i32 @input_register_device(ptr noundef nonnull %call2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end113.cleanup122_crit_edge, label %do.end119

if.end113.cleanup122_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup122

do.end119:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #10
  br label %cleanup122

cleanup122:                                       ; preds = %do.end119, %if.end113.cleanup122_crit_edge, %do.end111, %if.end97.cleanup122_crit_edge, %cleanup.cleanup122_crit_edge, %cleanup.thread, %do.end60, %if.then52.cleanup122_crit_edge, %if.then44, %do.end37, %do.end29, %if.end12.cleanup122_crit_edge, %do.end, %entry.cleanup122_crit_edge
  %retval.1 = phi i32 [ %call24, %do.end29 ], [ %24, %if.then44 ], [ %call106, %do.end111 ], [ %call114, %do.end119 ], [ %call92, %cleanup.cleanup122_crit_edge ], [ -19, %do.end37 ], [ -12, %do.end ], [ -12, %entry.cleanup122_crit_edge ], [ %call20, %if.end12.cleanup122_crit_edge ], [ %26, %if.then52.cleanup122_crit_edge ], [ %26, %do.end60 ], [ -22, %if.end97.cleanup122_crit_edge ], [ 0, %if.end113.cleanup122_crit_edge ], [ %retval.0.ph, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_kp_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk.i = getelementptr inbounds %struct.bcm_kp, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.do.body.i_crit_edge, label %if.then.i

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.then.i:                                        ; preds = %entry
  %call.i.i = tail call i32 @clk_prepare(ptr noundef nonnull %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.bcm_kp_start.exit_crit_edge

if.then.i.bcm_kp_start.exit_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm_kp_start.exit

if.end.i.i:                                       ; preds = %if.then.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef nonnull %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.do.body.i_crit_edge, label %if.then3.i.i

if.end.i.i.do.body.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef nonnull %3) #7
  br label %bcm_kp_start.exit

do.body.i:                                        ; preds = %if.end.i.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %kpior.i = getelementptr inbounds %struct.bcm_kp, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %kpior.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %kpior.i, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #7
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #7, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void @arm_heavy_mb() #7
  %imr0_val.i = getelementptr inbounds %struct.bcm_kp, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %imr0_val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %imr0_val.i, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %add.ptr9.i = getelementptr i8, ptr %13, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %11) #7, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %imr1_val.i = getelementptr inbounds %struct.bcm_kp, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %imr1_val.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %imr1_val.i, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %add.ptr14.i = getelementptr i8, ptr %18, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %16) #7, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  tail call void @arm_heavy_mb() #7
  %kpemr.i = getelementptr inbounds %struct.bcm_kp, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %kpemr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %kpemr.i, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %add.ptr19.i = getelementptr i8, ptr %23, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %21) #7, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %kpemr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %kpemr.i, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #7
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %add.ptr25.i = getelementptr i8, ptr %28, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %26) #7, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  tail call void @arm_heavy_mb() #7
  %29 = ptrtoint ptr %kpemr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %kpemr.i, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #7
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %add.ptr31.i = getelementptr i8, ptr %33, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 %31) #7, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  tail call void @arm_heavy_mb() #7
  %34 = ptrtoint ptr %kpemr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %kpemr.i, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #7
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %add.ptr37.i = getelementptr i8, ptr %38, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i, i32 %36) #7, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  tail call void @arm_heavy_mb() #7
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %add.ptr42.i = getelementptr i8, ptr %40, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42.i, i32 -1) #7, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  tail call void @arm_heavy_mb() #7
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %add.ptr47.i = getelementptr i8, ptr %42, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47.i, i32 -1) #7, !srcloc !92
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %add.ptr49.i = getelementptr i8, ptr %44, i32 160
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49.i) #7, !srcloc !101
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  %last_state.i = getelementptr inbounds %struct.bcm_kp, ptr %1, i32 0, i32 4
  %47 = ptrtoint ptr %last_state.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %last_state.i, align 4
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %add.ptr55.i = getelementptr i8, ptr %49, i32 164
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55.i) #7, !srcloc !101
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  %52 = ptrtoint ptr %last_state.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %last_state.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  tail call void @arm_heavy_mb() #7
  %kpcr.i = getelementptr inbounds %struct.bcm_kp, ptr %1, i32 0, i32 7
  %53 = ptrtoint ptr %kpcr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %kpcr.i, align 4
  %or.i = or i32 %54, 1
  %55 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %add.ptr65.i = getelementptr i8, ptr %57, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65.i, i32 %55) #7, !srcloc !92
  br label %bcm_kp_start.exit

bcm_kp_start.exit:                                ; preds = %do.body.i, %if.then3.i.i, %if.then.i.bcm_kp_start.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.body.i ], [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.then.i.bcm_kp_start.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_kp_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @bcm_kp_stop(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_kp_matrix_key_parse_dt(ptr noundef %kp) unnamed_addr #2 align 64 {
entry:
  %dt_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %input_dev = getelementptr inbounds %struct.bcm_kp, ptr %kp, i32 0, i32 3
  %0 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input_dev, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 40, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dt_val) #7
  %6 = ptrtoint ptr %dt_val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %dt_val, align 4, !annotation !90
  %kpcr = getelementptr inbounds %struct.bcm_kp, ptr %kp, i32 0, i32 7
  %7 = ptrtoint ptr %kpcr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 34816, ptr %kpcr, align 4
  %n_rows = getelementptr inbounds %struct.bcm_kp, ptr %kp, i32 0, i32 5
  %n_cols = getelementptr inbounds %struct.bcm_kp, ptr %kp, i32 0, i32 6
  %call = tail call i32 @matrix_keypad_parse_properties(ptr noundef %3, ptr noundef %n_rows, ptr noundef %n_cols) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.27) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %n_rows to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_rows, align 4
  %sub = shl i32 %9, 20
  %shl = add i32 %sub, -1048576
  %10 = ptrtoint ptr %kpcr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %kpcr, align 4
  %or = or i32 %shl, %11
  %12 = ptrtoint ptr %n_cols to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_cols, align 4
  %sub5 = shl i32 %13, 16
  %shl6 = add i32 %sub5, -65536
  %or8 = or i32 %shl6, %or
  store i32 %or8, ptr %kpcr, align 4
  %notmask = shl nsw i32 -1, %13
  %sub11 = xor i32 %notmask, -1
  %imr0_val = getelementptr inbounds %struct.bcm_kp, ptr %kp, i32 0, i32 10
  %dec146 = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec146)
  %tobool13.not147 = icmp eq i32 %dec146, 0
  br i1 %tobool13.not147, label %while.end.thread, label %while.body

while.end.thread:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %imr0_val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub11, ptr %imr0_val, align 4
  %imr1_val165 = getelementptr inbounds %struct.bcm_kp, ptr %kp, i32 0, i32 11
  %15 = ptrtoint ptr %imr1_val165 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %imr1_val165, align 4
  br label %if.end30

while.body:                                       ; preds = %if.end
  %shl15 = shl i32 %sub11, 8
  %or17 = or i32 %shl15, %sub11
  %dec = add i32 %9, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool13.not = icmp eq i32 %dec, 0
  br i1 %tobool13.not, label %while.body.while.end_crit_edge, label %while.body.1

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.1:                                     ; preds = %while.body
  %shl15.1 = shl i32 %or17, 8
  %or17.1 = or i32 %shl15.1, %or17
  %dec.1 = add i32 %9, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.1)
  %tobool13.not.1 = icmp eq i32 %dec.1, 0
  br i1 %tobool13.not.1, label %while.body.1.while.end_crit_edge, label %while.body.2

while.body.1.while.end_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.2:                                     ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #9
  %shl15.2 = shl i32 %or17.1, 8
  %or17.2 = or i32 %shl15.2, %or17.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %tobool13.not.2 = icmp eq i32 %9, 4
  br label %while.end

while.end:                                        ; preds = %while.body.2, %while.body.1.while.end_crit_edge, %while.body.while.end_crit_edge
  %dec151.lcssa = phi i32 [ %dec146, %while.body.while.end_crit_edge ], [ %dec, %while.body.1.while.end_crit_edge ], [ %dec.1, %while.body.2 ]
  %or17.lcssa = phi i32 [ %or17, %while.body.while.end_crit_edge ], [ %or17.1, %while.body.1.while.end_crit_edge ], [ %or17.2, %while.body.2 ]
  %tobool13.not.lcssa = phi i1 [ %tobool13.not, %while.body.while.end_crit_edge ], [ %tobool13.not.1, %while.body.1.while.end_crit_edge ], [ %tobool13.not.2, %while.body.2 ]
  %16 = ptrtoint ptr %imr0_val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or17.lcssa, ptr %imr0_val, align 4
  %imr1_val = getelementptr inbounds %struct.bcm_kp, ptr %kp, i32 0, i32 11
  %17 = ptrtoint ptr %imr1_val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %imr1_val, align 4
  br i1 %tobool13.not.lcssa, label %while.end.if.end30_crit_edge, label %while.cond21.preheader

while.end.if.end30_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

while.cond21.preheader:                           ; preds = %while.end
  %phi.bo = add i32 %dec151.lcssa, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo)
  %tobool23.not155 = icmp eq i32 %phi.bo, 0
  br i1 %tobool23.not155, label %while.cond21.preheader.if.end30.loopexit_crit_edge, label %while.cond21.preheader.while.body24_crit_edge

while.cond21.preheader.while.body24_crit_edge:    ; preds = %while.cond21.preheader
  br label %while.body24

while.cond21.preheader.if.end30.loopexit_crit_edge: ; preds = %while.cond21.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.loopexit

while.body24:                                     ; preds = %while.body24.while.body24_crit_edge, %while.cond21.preheader.while.body24_crit_edge
  %dec22157 = phi i32 [ %dec22, %while.body24.while.body24_crit_edge ], [ %phi.bo, %while.cond21.preheader.while.body24_crit_edge ]
  %storemerge141156 = phi i32 [ %or28, %while.body24.while.body24_crit_edge ], [ %sub11, %while.cond21.preheader.while.body24_crit_edge ]
  %shl26 = shl i32 %storemerge141156, 8
  %or28 = or i32 %shl26, %storemerge141156
  %dec22 = add i32 %dec22157, -1
  %tobool23.not = icmp eq i32 %dec22, 0
  br i1 %tobool23.not, label %while.body24.if.end30.loopexit_crit_edge, label %while.body24.while.body24_crit_edge

while.body24.while.body24_crit_edge:              ; preds = %while.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body24

while.body24.if.end30.loopexit_crit_edge:         ; preds = %while.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.loopexit

if.end30.loopexit:                                ; preds = %while.body24.if.end30.loopexit_crit_edge, %while.cond21.preheader.if.end30.loopexit_crit_edge
  %storemerge141.lcssa = phi i32 [ %sub11, %while.cond21.preheader.if.end30.loopexit_crit_edge ], [ %or28, %while.body24.if.end30.loopexit_crit_edge ]
  %18 = ptrtoint ptr %imr1_val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %storemerge141.lcssa, ptr %imr1_val, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end30.loopexit, %while.end.if.end30_crit_edge, %while.end.thread
  %kpemr = getelementptr inbounds %struct.bcm_kp, ptr %kp, i32 0, i32 9
  %19 = ptrtoint ptr %kpemr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %kpemr, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.29, ptr noundef nonnull %dt_val, i32 noundef 1, i32 noundef 0) #7
  %20 = ptrtoint ptr %dt_val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dt_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %21)
  %cmp36 = icmp ugt i32 %21, 7
  br i1 %cmp36, label %do.end40, label %if.end41

do.end40:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.31, i32 noundef %21) #10
  br label %cleanup

if.end41:                                         ; preds = %if.end30
  %shl42 = shl nuw nsw i32 %21, 12
  %22 = ptrtoint ptr %kpcr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %kpcr, align 4
  %or44 = or i32 %23, %shl42
  store i32 %or44, ptr %kpcr, align 4
  %call.i.i142 = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.33, ptr noundef nonnull %dt_val, i32 noundef 1, i32 noundef 0) #7
  %24 = ptrtoint ptr %dt_val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dt_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %25)
  %cmp46 = icmp ugt i32 %25, 7
  br i1 %cmp46, label %do.end50, label %if.end51

do.end50:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.35, i32 noundef %25) #10
  br label %cleanup

if.end51:                                         ; preds = %if.end41
  %shl52 = shl nuw nsw i32 %25, 8
  %26 = ptrtoint ptr %kpcr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %kpcr, align 4
  %or54 = or i32 %27, %shl52
  store i32 %or54, ptr %kpcr, align 4
  %call.i = call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.37, ptr noundef null) #7
  %tobool.i.not = icmp eq ptr %call.i, null
  %n_cols.n_rows = select i1 %tobool.i.not, ptr %n_cols, ptr %n_rows
  %. = select i1 %tobool.i.not, i32 16, i32 24
  %28 = ptrtoint ptr %n_cols.n_rows to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %n_cols.n_rows, align 4
  %notmask139 = shl nsw i32 -1, %29
  %sub63 = xor i32 %notmask139, -1
  %shl64 = shl i32 %sub63, %.
  %30 = getelementptr inbounds %struct.bcm_kp, ptr %kp, i32 0, i32 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %shl64, ptr %30, align 4
  %call.i143 = call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.38, ptr noundef null) #7
  %tobool.i144.not = icmp eq ptr %call.i143, null
  br i1 %tobool.i144.not, label %if.end51.do.body72_crit_edge, label %if.then68

if.end51.do.body72_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body72

if.then68:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %kpcr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %kpcr, align 4
  %or70 = or i32 %33, 2
  store i32 %or70, ptr %kpcr, align 4
  br label %do.body72

do.body72:                                        ; preds = %if.then68, %if.end51.do.body72_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_kp_matrix_key_parse_dt.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_kp_matrix_key_parse_dt, %if.then77)) #7
          to label %cleanup [label %if.then77], !srcloc !89

if.then77:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %n_rows to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %n_rows, align 4
  %36 = ptrtoint ptr %n_cols to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %n_cols, align 4
  %38 = ptrtoint ptr %kpcr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %kpcr, align 4
  %40 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %30, align 4
  %42 = ptrtoint ptr %kpemr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %kpemr, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_kp_matrix_key_parse_dt.__UNIQUE_ID_ddebug227, ptr noundef %3, ptr noundef nonnull @.str.39, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef %43) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then77, %do.body72, %do.end50, %do.end40, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -22, %do.end40 ], [ -22, %do.end50 ], [ 0, %if.then77 ], [ 0, %do.body72 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dt_val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matrix_keypad_build_keymap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %clk) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_kp_stop(ptr nocapture noundef readonly %kp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %kp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kp, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 128
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  tail call void @arm_heavy_mb() #7
  %3 = ptrtoint ptr %kp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %kp, align 4
  %add.ptr3 = getelementptr i8, ptr %4, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 0) #7, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  tail call void @arm_heavy_mb() #7
  %5 = ptrtoint ptr %kp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %kp, align 4
  %add.ptr8 = getelementptr i8, ptr %6, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 0) #7, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !108
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %kp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %kp, align 4
  %add.ptr13 = getelementptr i8, ptr %8, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 0) #7, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %kp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %kp, align 4
  %add.ptr18 = getelementptr i8, ptr %10, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 -1) #7, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %kp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %kp, align 4
  %add.ptr23 = getelementptr i8, ptr %12, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 -1) #7, !srcloc !92
  %clk = getelementptr inbounds %struct.bcm_kp, ptr %kp, i32 0, i32 2
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_disable(ptr noundef nonnull %14) #7
  tail call void @clk_unprepare(ptr noundef nonnull %14) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_kp_isr_thread(i32 noundef %irq, ptr nocapture noundef %dev_id) #2 align 64 {
entry:
  %change.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %kpcr = getelementptr inbounds %struct.bcm_kp, ptr %dev_id, i32 0, i32 7
  %0 = ptrtoint ptr %kpcr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %kpcr, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  %n_cols.i.i = getelementptr inbounds %struct.bcm_kp, ptr %dev_id, i32 0, i32 6
  %input_dev.i.i = getelementptr inbounds %struct.bcm_kp, ptr %dev_id, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %change.i) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  call void @arm_heavy_mb() #7
  %3 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_id, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 184
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #7, !srcloc !92
  %5 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_id, align 4
  %add.ptr4.i = getelementptr i8, ptr %6, i32 160
  %7 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #7, !srcloc !101
  %8 = call i32 @llvm.bswap.i32(i32 %7) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  %arrayidx.i = getelementptr %struct.bcm_kp, ptr %dev_id, i32 0, i32 4, i32 0
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %xor.i = xor i32 %10, %8
  %11 = ptrtoint ptr %change.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %xor.i, ptr %change.i, align 4
  store i32 %8, ptr %arrayidx.i, align 4
  %call8.i = call i32 @_find_next_bit_be(ptr noundef nonnull %change.i, i32 noundef 32, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call8.i)
  %cmp33.i = icmp slt i32 %call8.i, 32
  br i1 %cmp33.i, label %entry.for.body.i_crit_edge, label %entry.bcm_kp_report_keys.exit_crit_edge

entry.bcm_kp_report_keys.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm_kp_report_keys.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %bcm_kp_get_keycode.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %bit_nr.034.i = phi i32 [ %call14.i, %bcm_kp_get_keycode.exit.i.for.body.i_crit_edge ], [ %call8.i, %entry.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %bit_nr.034.i
  %and.i = and i32 %shl.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  %shr.i = ashr i32 %bit_nr.034.i, 3
  %rem.i = srem i32 %bit_nr.034.i, 8
  %12 = ptrtoint ptr %n_cols.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_cols.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i.i.i = icmp eq i32 %13, 0
  br i1 %cmp.i.i.i, label %for.body.i.bcm_kp_get_keycode.exit.i_crit_edge, label %if.end.i.i.i

for.body.i.bcm_kp_get_keycode.exit.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm_kp_get_keycode.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %dec.i.i.i = add i32 %13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %dec.i.i.i, 0
  %14 = call i32 @llvm.ctlz.i32(i32 %dec.i.i.i, i1 true) #7, !range !113
  %sub.i.i.i.i = sub nuw nsw i32 32, %14
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 0, i32 %sub.i.i.i.i
  br label %bcm_kp_get_keycode.exit.i

bcm_kp_get_keycode.exit.i:                        ; preds = %if.end.i.i.i, %for.body.i.bcm_kp_get_keycode.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %cond.i.i.i.i, %if.end.i.i.i ], [ -1, %for.body.i.bcm_kp_get_keycode.exit.i_crit_edge ]
  %15 = ptrtoint ptr %input_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %input_dev.i.i, align 4
  %keycode.i.i = getelementptr inbounds %struct.input_dev, ptr %16, i32 0, i32 17
  %17 = ptrtoint ptr %keycode.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %keycode.i.i, align 4
  %shl.i.i = shl i32 %shr.i, %retval.0.i.i.i
  %add.i.i = add i32 %shl.i.i, %rem.i
  %arrayidx.i.i = getelementptr i16, ptr %18, i32 %add.i.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i32.i = icmp ne i32 %and.i, 0
  %tobool.i.i = select i1 %tobool.not.i, i1 %tobool.i32.i, i1 %tobool9.not.i
  %lnot.ext.i.i = zext i1 %tobool.i.i to i32
  call void @input_event(ptr noundef %16, i32 noundef 1, i32 noundef %conv.i.i, i32 noundef %lnot.ext.i.i) #7
  %add13.i = add nsw i32 %bit_nr.034.i, 1
  %call14.i = call i32 @_find_next_bit_be(ptr noundef nonnull %change.i, i32 noundef 32, i32 noundef %add13.i) #7
  %cmp.i = icmp slt i32 %call14.i, 32
  br i1 %cmp.i, label %bcm_kp_get_keycode.exit.i.for.body.i_crit_edge, label %bcm_kp_get_keycode.exit.i.bcm_kp_report_keys.exit_crit_edge

bcm_kp_get_keycode.exit.i.bcm_kp_report_keys.exit_crit_edge: ; preds = %bcm_kp_get_keycode.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm_kp_report_keys.exit

bcm_kp_get_keycode.exit.i.for.body.i_crit_edge:   ; preds = %bcm_kp_get_keycode.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

bcm_kp_report_keys.exit:                          ; preds = %bcm_kp_get_keycode.exit.i.bcm_kp_report_keys.exit_crit_edge, %entry.bcm_kp_report_keys.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %change.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %change.i) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_id, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %22, i32 188
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 -1) #7, !srcloc !92
  %23 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_id, align 4
  %add.ptr4.i.1 = getelementptr i8, ptr %24, i32 164
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.1) #7, !srcloc !101
  %26 = call i32 @llvm.bswap.i32(i32 %25) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  %arrayidx.i.1 = getelementptr %struct.bcm_kp, ptr %dev_id, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.1, align 4
  %xor.i.1 = xor i32 %28, %26
  %29 = ptrtoint ptr %change.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %xor.i.1, ptr %change.i, align 4
  store i32 %26, ptr %arrayidx.i.1, align 4
  %call8.i.1 = call i32 @_find_next_bit_be(ptr noundef nonnull %change.i, i32 noundef 32, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call8.i.1)
  %cmp33.i.1 = icmp slt i32 %call8.i.1, 32
  br i1 %cmp33.i.1, label %bcm_kp_report_keys.exit.for.body.i.1_crit_edge, label %bcm_kp_report_keys.exit.bcm_kp_report_keys.exit.1_crit_edge

bcm_kp_report_keys.exit.bcm_kp_report_keys.exit.1_crit_edge: ; preds = %bcm_kp_report_keys.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm_kp_report_keys.exit.1

bcm_kp_report_keys.exit.for.body.i.1_crit_edge:   ; preds = %bcm_kp_report_keys.exit
  br label %for.body.i.1

for.body.i.1:                                     ; preds = %bcm_kp_get_keycode.exit.i.1.for.body.i.1_crit_edge, %bcm_kp_report_keys.exit.for.body.i.1_crit_edge
  %bit_nr.034.i.1 = phi i32 [ %call14.i.1, %bcm_kp_get_keycode.exit.i.1.for.body.i.1_crit_edge ], [ %call8.i.1, %bcm_kp_report_keys.exit.for.body.i.1_crit_edge ]
  %shl.i.1 = shl nuw i32 1, %bit_nr.034.i.1
  %and.i.1 = and i32 %shl.i.1, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %tobool9.not.i.1 = icmp eq i32 %and.i.1, 0
  %shr.i.1 = ashr i32 %bit_nr.034.i.1, 3
  %add11.i.1 = add nsw i32 %shr.i.1, 4
  %rem.i.1 = srem i32 %bit_nr.034.i.1, 8
  %30 = ptrtoint ptr %n_cols.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %n_cols.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i.i.i.1 = icmp eq i32 %31, 0
  br i1 %cmp.i.i.i.1, label %for.body.i.1.bcm_kp_get_keycode.exit.i.1_crit_edge, label %if.end.i.i.i.1

for.body.i.1.bcm_kp_get_keycode.exit.i.1_crit_edge: ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm_kp_get_keycode.exit.i.1

if.end.i.i.i.1:                                   ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %dec.i.i.i.1 = add i32 %31, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.1)
  %tobool.not.i.i.i.i.1 = icmp eq i32 %dec.i.i.i.1, 0
  %32 = call i32 @llvm.ctlz.i32(i32 %dec.i.i.i.1, i1 true) #7, !range !113
  %sub.i.i.i.i.1 = sub nuw nsw i32 32, %32
  %cond.i.i.i.i.1 = select i1 %tobool.not.i.i.i.i.1, i32 0, i32 %sub.i.i.i.i.1
  br label %bcm_kp_get_keycode.exit.i.1

bcm_kp_get_keycode.exit.i.1:                      ; preds = %if.end.i.i.i.1, %for.body.i.1.bcm_kp_get_keycode.exit.i.1_crit_edge
  %retval.0.i.i.i.1 = phi i32 [ %cond.i.i.i.i.1, %if.end.i.i.i.1 ], [ -1, %for.body.i.1.bcm_kp_get_keycode.exit.i.1_crit_edge ]
  %33 = ptrtoint ptr %input_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %input_dev.i.i, align 4
  %keycode.i.i.1 = getelementptr inbounds %struct.input_dev, ptr %34, i32 0, i32 17
  %35 = ptrtoint ptr %keycode.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %keycode.i.i.1, align 4
  %shl.i.i.1 = shl i32 %add11.i.1, %retval.0.i.i.i.1
  %add.i.i.1 = add i32 %shl.i.i.1, %rem.i.1
  %arrayidx.i.i.1 = getelementptr i16, ptr %36, i32 %add.i.i.1
  %37 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx.i.i.1, align 2
  %conv.i.i.1 = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %tobool.i32.i.1 = icmp ne i32 %and.i.1, 0
  %tobool.i.i.1 = select i1 %tobool.not.i, i1 %tobool.i32.i.1, i1 %tobool9.not.i.1
  %lnot.ext.i.i.1 = zext i1 %tobool.i.i.1 to i32
  call void @input_event(ptr noundef %34, i32 noundef 1, i32 noundef %conv.i.i.1, i32 noundef %lnot.ext.i.i.1) #7
  %add13.i.1 = add nsw i32 %bit_nr.034.i.1, 1
  %call14.i.1 = call i32 @_find_next_bit_be(ptr noundef nonnull %change.i, i32 noundef 32, i32 noundef %add13.i.1) #7
  %cmp.i.1 = icmp slt i32 %call14.i.1, 32
  br i1 %cmp.i.1, label %bcm_kp_get_keycode.exit.i.1.for.body.i.1_crit_edge, label %bcm_kp_get_keycode.exit.i.1.bcm_kp_report_keys.exit.1_crit_edge

bcm_kp_get_keycode.exit.i.1.bcm_kp_report_keys.exit.1_crit_edge: ; preds = %bcm_kp_get_keycode.exit.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm_kp_report_keys.exit.1

bcm_kp_get_keycode.exit.i.1.for.body.i.1_crit_edge: ; preds = %bcm_kp_get_keycode.exit.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.1

bcm_kp_report_keys.exit.1:                        ; preds = %bcm_kp_get_keycode.exit.i.1.bcm_kp_report_keys.exit.1_crit_edge, %bcm_kp_report_keys.exit.bcm_kp_report_keys.exit.1_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %change.i) #7
  %39 = ptrtoint ptr %input_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %input_dev.i.i, align 4
  call void @input_event(ptr noundef %40, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matrix_keypad_parse_properties(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !63, !64, !65, !67, !69, !70, !71, !73, !75, !77, !78}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @__initcall__kmod_bcm_keypad__229_450_bcm_kp_device_driver_init6, !1, !"__initcall__kmod_bcm_keypad__229_450_bcm_kp_device_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/bcm-keypad.c", i32 450, i32 1}
!2 = !{ptr @__exitcall_bcm_kp_device_driver_exit, !1, !"__exitcall_bcm_kp_device_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author230, !4, !"__UNIQUE_ID_author230", i1 false, i1 false}
!4 = !{!"../drivers/input/keyboard/bcm-keypad.c", i32 452, i32 1}
!5 = !{ptr @__UNIQUE_ID_description231, !6, !"__UNIQUE_ID_description231", i1 false, i1 false}
!6 = !{!"../drivers/input/keyboard/bcm-keypad.c", i32 453, i32 1}
!7 = !{ptr @__UNIQUE_ID_file232, !8, !"__UNIQUE_ID_file232", i1 false, i1 false}
!8 = !{!"../drivers/input/keyboard/bcm-keypad.c", i32 454, i32 1}
!9 = !{ptr @__UNIQUE_ID_license233, !8, !"__UNIQUE_ID_license233", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/keyboard/bcm-keypad.c", i32 445, i32 11}
!12 = !{ptr @bcm_kp_device_driver, !13, !"bcm_kp_device_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/keyboard/bcm-keypad.c", i32 442, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/keyboard/bcm-keypad.c", i32 330, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @bcm_kp_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @bcm_kp_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/keyboard/bcm-keypad.c", i32 337, i32 47}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/keyboard/bcm-keypad.c", i32 341, i32 20}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/keyboard/bcm-keypad.c", i32 363, i32 3}
!28 = !{ptr @bcm_kp_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @bcm_kp_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/keyboard/bcm-keypad.c", i32 370, i32 3}
!32 = !{ptr @bcm_kp_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @bcm_kp_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/keyboard/bcm-keypad.c", i32 379, i32 37}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/keyboard/bcm-keypad.c", i32 384, i32 5}
!38 = !{ptr @bcm_kp_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @bcm_kp_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/keyboard/bcm-keypad.c", i32 387, i32 3}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @bcm_kp_probe.__UNIQUE_ID_ddebug228, !41, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/keyboard/bcm-keypad.c", i32 395, i32 11}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/keyboard/bcm-keypad.c", i32 423, i32 3}
!48 = !{ptr @bcm_kp_probe._entry.21, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @bcm_kp_probe._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/keyboard/bcm-keypad.c", i32 429, i32 3}
!52 = !{ptr @bcm_kp_probe._entry.24, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @bcm_kp_probe._entry_ptr.26, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/keyboard/bcm-keypad.c", i32 218, i32 3}
!56 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @bcm_kp_matrix_key_parse_dt._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @bcm_kp_matrix_key_parse_dt._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/input/keyboard/bcm-keypad.c", i32 263, i32 27}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/input/keyboard/bcm-keypad.c", i32 266, i32 3}
!63 = !{ptr @bcm_kp_matrix_key_parse_dt._entry.30, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @bcm_kp_matrix_key_parse_dt._entry_ptr.32, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/input/keyboard/bcm-keypad.c", i32 277, i32 27}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/input/keyboard/bcm-keypad.c", i32 280, i32 3}
!69 = !{ptr @bcm_kp_matrix_key_parse_dt._entry.34, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @bcm_kp_matrix_key_parse_dt._entry_ptr.36, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/input/keyboard/bcm-keypad.c", i32 291, i32 32}
!73 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/input/keyboard/bcm-keypad.c", i32 306, i32 32}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/input/keyboard/bcm-keypad.c", i32 309, i32 2}
!77 = !{ptr @bcm_kp_matrix_key_parse_dt.__UNIQUE_ID_ddebug227, !76, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!78 = !{ptr @bcm_kp_of_match, !79, !"bcm_kp_of_match", i1 false, i1 false}
!79 = !{!"../drivers/input/keyboard/bcm-keypad.c", i32 436, i32 34}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{i64 2148731578, i64 2148731583, i64 2148731596, i64 2148731640, i64 2148731674, i64 2148731695}
!90 = !{!"auto-init"}
!91 = !{i64 2153928626}
!92 = !{i64 3669765}
!93 = !{i64 2153929061}
!94 = !{i64 2153929505}
!95 = !{i64 2153929946}
!96 = !{i64 2153930378}
!97 = !{i64 2153930810}
!98 = !{i64 2153931242}
!99 = !{i64 2153931675}
!100 = !{i64 2153932111}
!101 = !{i64 3670183}
!102 = !{i64 2153932824}
!103 = !{i64 2153933337}
!104 = !{i64 2153933595}
!105 = !{i64 2153934341}
!106 = !{i64 2153934579}
!107 = !{i64 2153934979}
!108 = !{i64 2153935379}
!109 = !{i64 2153935788}
!110 = !{i64 2153936224}
!111 = !{i64 2153927081}
!112 = !{i64 2153927937}
!113 = !{i32 0, i32 33}
