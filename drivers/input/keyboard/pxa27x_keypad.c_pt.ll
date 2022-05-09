; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/pxa27x_keypad.c_pt.bc'
source_filename = "../drivers/input/keyboard/pxa27x_keypad.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.pxa27x_keypad = type { ptr, ptr, ptr, ptr, i32, [72 x i16], [2 x i32], i32, [8 x i32], i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.pxa27x_keypad_platform_data = type { ptr, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }

@__initcall__kmod_pxa27x_keypad__227_836_pxa27x_keypad_driver_init6 = internal global ptr @pxa27x_keypad_driver_init, section ".initcall6.init", align 4
@pxa27x_keypad_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pxa27x_keypad_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pxa27x_keypad_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pxa27x_keypad_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pxa27x_keypad_driver_exit = internal global ptr @pxa27x_keypad_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description228 = internal constant [58 x i8] c"pxa27x_keypad.description=PXA27x Keypad Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [56 x i8] c"pxa27x_keypad.file=drivers/input/keyboard/pxa27x_keypad\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [26 x i8] c"pxa27x_keypad.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias231 = internal constant [43 x i8] c"pxa27x_keypad.alias=platform:pxa27x-keypad\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pxa27x-keypad\00", [18 x i8] zeroinitializer }, align 32
@pxa27x_keypad_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,pxa27x-keypad\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@pxa27x_keypad_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pxa27x_keypad_suspend, ptr @pxa27x_keypad_resume, ptr @pxa27x_keypad_suspend, ptr @pxa27x_keypad_resume, ptr @pxa27x_keypad_suspend, ptr @pxa27x_keypad_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pxa27x_keypad_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 735, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get I/O memory\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pxa27x_keypad_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/input/keyboard/pxa27x_keypad.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pxa27x_keypad_probe._entry_ptr = internal global ptr @pxa27x_keypad_probe._entry, section ".printk_index", align 4
@pxa27x_keypad_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 758, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get keypad clock\0A\00", [36 x i8] zeroinitializer }, align 32
@pxa27x_keypad_probe._entry_ptr.8 = internal global ptr @pxa27x_keypad_probe._entry.6, section ".printk_index", align 4
@pxa27x_keypad_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 789, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to build keycode\0A\00", [39 x i8] zeroinitializer }, align 32
@pxa27x_keypad_probe._entry_ptr.11 = internal global ptr @pxa27x_keypad_probe._entry.9, section ".printk_index", align 4
@pxa27x_keypad_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 803, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@pxa27x_keypad_probe._entry_ptr.14 = internal global ptr @pxa27x_keypad_probe._entry.12, section ".printk_index", align 4
@pxa27x_keypad_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 810, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register input device\0A\00", [63 x i8] zeroinitializer }, align 32
@pxa27x_keypad_probe._entry_ptr.17 = internal global ptr @pxa27x_keypad_probe._entry.15, section ".printk_index", align 4
@pxa27x_keypad_build_keycode_from_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 291, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to allocate memory for pdata\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"pxa27x_keypad_build_keycode_from_dt\00", [60 x i8] zeroinitializer }, align 32
@pxa27x_keypad_build_keycode_from_dt._entry_ptr = internal global ptr @pxa27x_keypad_build_keycode_from_dt._entry, section ".printk_index", align 4
@pxa27x_keypad_build_keycode_from_dt._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.3, i32 297, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to parse matrix key\0A\00", [36 x i8] zeroinitializer }, align 32
@pxa27x_keypad_build_keycode_from_dt._entry_ptr.22 = internal global ptr @pxa27x_keypad_build_keycode_from_dt._entry.20, section ".printk_index", align 4
@pxa27x_keypad_build_keycode_from_dt._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.3, i32 303, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to parse direct key\0A\00", [36 x i8] zeroinitializer }, align 32
@pxa27x_keypad_build_keycode_from_dt._entry_ptr.25 = internal global ptr @pxa27x_keypad_build_keycode_from_dt._entry.23, section ".printk_index", align 4
@pxa27x_keypad_build_keycode_from_dt._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.3, i32 309, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to parse rotary key\0A\00", [36 x i8] zeroinitializer }, align 32
@pxa27x_keypad_build_keycode_from_dt._entry_ptr.28 = internal global ptr @pxa27x_keypad_build_keycode_from_dt._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"marvell,debounce-interval\00", [38 x i8] zeroinitializer }, align 32
@pxa27x_keypad_build_keycode_from_dt._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.19, ptr @.str.3, i32 316, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to parse debounce-interval\0A\00", [61 x i8] zeroinitializer }, align 32
@pxa27x_keypad_build_keycode_from_dt._entry_ptr.32 = internal global ptr @pxa27x_keypad_build_keycode_from_dt._entry.30, section ".printk_index", align 4
@pxa27x_keypad_matrix_key_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 131, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rows or cols exceeds maximum value\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"pxa27x_keypad_matrix_key_parse_dt\00", [62 x i8] zeroinitializer }, align 32
@pxa27x_keypad_matrix_key_parse_dt._entry_ptr = internal global ptr @pxa27x_keypad_matrix_key_parse_dt._entry, section ".printk_index", align 4
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"marvell,direct-key-count\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"marvell,direct-key-mask\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"marvell,direct-key-low-active\00", [34 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"marvell,direct-key-map\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"marvell,rotary0\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"marvell,rotary1\00", [16 x i8] zeroinitializer }, align 32
@__const.pxa27x_keypad_rotary_parse_dt.relkeyname = private unnamed_addr constant [23 x i8] c"marvell,rotary-rel-key\00", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.43 = private unnamed_addr constant [21 x i8] c"pxa27x_keypad_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 828, i32 31 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 831, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [23 x i8] c"pxa27x_keypad_dt_match\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 821, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant [21 x i8] c"pxa27x_keypad_pm_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 711, i32 8 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 735, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 758, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 789, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 803, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 810, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 291, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 297, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 303, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 309, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 313, i32 35 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 316, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 131, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 160, i32 35 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 170, i32 35 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 184, i32 6 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 186, i32 29 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 215, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.158 = private constant [42 x i8] c"../drivers/input/keyboard/pxa27x_keypad.c\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 215, i32 23 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_alias231, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_pxa27x_keypad_driver_exit, ptr @__initcall__kmod_pxa27x_keypad__227_836_pxa27x_keypad_driver_init6, ptr @pxa27x_keypad_build_keycode_from_dt._entry, ptr @pxa27x_keypad_build_keycode_from_dt._entry.20, ptr @pxa27x_keypad_build_keycode_from_dt._entry.23, ptr @pxa27x_keypad_build_keycode_from_dt._entry.26, ptr @pxa27x_keypad_build_keycode_from_dt._entry.30, ptr @pxa27x_keypad_build_keycode_from_dt._entry_ptr, ptr @pxa27x_keypad_build_keycode_from_dt._entry_ptr.22, ptr @pxa27x_keypad_build_keycode_from_dt._entry_ptr.25, ptr @pxa27x_keypad_build_keycode_from_dt._entry_ptr.28, ptr @pxa27x_keypad_build_keycode_from_dt._entry_ptr.32, ptr @pxa27x_keypad_driver_exit, ptr @pxa27x_keypad_matrix_key_parse_dt._entry, ptr @pxa27x_keypad_matrix_key_parse_dt._entry_ptr, ptr @pxa27x_keypad_probe._entry, ptr @pxa27x_keypad_probe._entry.12, ptr @pxa27x_keypad_probe._entry.15, ptr @pxa27x_keypad_probe._entry.6, ptr @pxa27x_keypad_probe._entry.9, ptr @pxa27x_keypad_probe._entry_ptr, ptr @pxa27x_keypad_probe._entry_ptr.11, ptr @pxa27x_keypad_probe._entry_ptr.14, ptr @pxa27x_keypad_probe._entry_ptr.17, ptr @pxa27x_keypad_probe._entry_ptr.8, ptr @pxa27x_keypad_driver, ptr @.str, ptr @pxa27x_keypad_dt_match, ptr @pxa27x_keypad_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa27x_keypad_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa27x_keypad_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa27x_keypad_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa27x_keypad_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa27x_keypad_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa27x_keypad_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa27x_keypad_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa27x_keypad_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa27x_keypad_build_keycode_from_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa27x_keypad_build_keycode_from_dt._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa27x_keypad_build_keycode_from_dt._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa27x_keypad_build_keycode_from_dt._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa27x_keypad_build_keycode_from_dt._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa27x_keypad_matrix_key_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa27x_keypad_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pxa27x_keypad_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pxa27x_keypad_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @pxa27x_keypad_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa27x_keypad_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %code.i.i = alloca i32, align 4
  %proplen.i64.i = alloca i32, align 4
  %relkeyname.i.i = alloca [23 x i8], align 1
  %proplen.i.i = alloca i32, align 4
  %rows.i.i = alloca i32, align 4
  %cols.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %3, null
  %tobool2.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 %tobool2.not, i1 false
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %cmp7 = icmp eq ptr %call6, null
  br i1 %cmp7, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 216, i32 noundef 3520) #6
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %call17 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #6
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end15.cleanup_crit_edge, label %if.end20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %call.i, align 4
  %input_dev22 = getelementptr inbounds %struct.pxa27x_keypad, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %input_dev22 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call17, ptr %input_dev22, align 4
  %irq23 = getelementptr inbounds %struct.pxa27x_keypad, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %irq23 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call3, ptr %irq23, align 4
  %call25 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call6) #6
  %mmio_base = getelementptr inbounds %struct.pxa27x_keypad, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %mmio_base to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call25, ptr %mmio_base, align 4
  %cmp.i = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call25 to i32
  br label %cleanup

if.end31:                                         ; preds = %if.end20
  %call33 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.pxa27x_keypad, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call33, ptr %clk, align 4
  %cmp.i164 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i164, label %do.end39, label %if.end43

do.end39:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %cleanup

if.end43:                                         ; preds = %if.end31
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %15 = ptrtoint ptr %call17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %call17, align 8
  %id = getelementptr inbounds %struct.input_dev, ptr %call17, i32 0, i32 3
  %16 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 25, ptr %id, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call17, i32 0, i32 31
  %17 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @pxa27x_keypad_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call17, i32 0, i32 32
  %18 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @pxa27x_keypad_close, ptr %close, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %call17, i32 0, i32 40, i32 1
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev, ptr %parent, align 8
  %keycodes = getelementptr inbounds %struct.pxa27x_keypad, ptr %call.i, i32 0, i32 5
  %keycode = getelementptr inbounds %struct.input_dev, ptr %call17, i32 0, i32 17
  %20 = ptrtoint ptr %keycode to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %keycodes, ptr %keycode, align 4
  %keycodesize = getelementptr inbounds %struct.input_dev, ptr %call17, i32 0, i32 16
  %21 = ptrtoint ptr %keycodesize to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %keycodesize, align 8
  %keycodemax = getelementptr inbounds %struct.input_dev, ptr %call17, i32 0, i32 15
  %22 = ptrtoint ptr %keycodemax to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 72, ptr %keycodemax, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call17, i32 0, i32 40, i32 8
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call17, i32 0, i32 5
  %24 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1048578, ptr %evbit, align 8
  tail call void @input_set_capability(ptr noundef nonnull %call17, i32 noundef 4, i32 noundef 4) #6
  br i1 %tobool2.not, label %if.else, label %if.then48

if.then48:                                        ; preds = %if.end43
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 4
  %27 = ptrtoint ptr %input_dev22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %input_dev22, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %26, align 4
  %matrix_key_rows.i = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %26, i32 0, i32 1
  %31 = ptrtoint ptr %matrix_key_rows.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %matrix_key_rows.i, align 4
  %matrix_key_cols.i = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %26, i32 0, i32 2
  %33 = ptrtoint ptr %matrix_key_cols.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %matrix_key_cols.i, align 4
  %call.i165 = tail call i32 @matrix_keypad_build_keymap(ptr noundef %30, ptr noundef null, i32 noundef %32, i32 noundef %34, ptr noundef %keycodes, ptr noundef %28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165)
  %tobool.not.i = icmp eq i32 %call.i165, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then48.do.end57_crit_edge

if.then48.do.end57_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end57

if.end.i:                                         ; preds = %if.then48
  %keycodemax.i = getelementptr inbounds %struct.input_dev, ptr %28, i32 0, i32 15
  %35 = ptrtoint ptr %keycodemax.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 72, ptr %keycodemax.i, align 4
  %direct_key_num.i = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %26, i32 0, i32 3
  %36 = ptrtoint ptr %direct_key_num.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %direct_key_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp151.i = icmp sgt i32 %37, 0
  br i1 %cmp151.i, label %for.body.lr.ph.i, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %keybit.i = getelementptr inbounds %struct.input_dev, ptr %28, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0152.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.pxa27x_keypad_platform_data, ptr %26, i32 0, i32 4, i32 %i.0152.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i, align 4
  %conv.i = trunc i32 %39 to i16
  %add.i = add nuw i32 %i.0152.i, 64
  %arrayidx4.i = getelementptr %struct.pxa27x_keypad, ptr %call.i, i32 0, i32 5, i32 %add.i
  %40 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i, ptr %arrayidx4.i, align 2
  %rem.i.i = and i32 %39, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %conv5.i = lshr i32 %39, 5
  %div2.i.i = and i32 %conv5.i, 2047
  %add.ptr.i.i = getelementptr i32, ptr %keybit.i, i32 %div2.i.i
  %41 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %42, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %inc.i = add nuw nsw i32 %i.0152.i, 1
  %43 = ptrtoint ptr %direct_key_num.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %direct_key_num.i, align 4
  %cmp.i166 = icmp slt i32 %inc.i, %44
  br i1 %cmp.i166, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %enable_rotary0.i = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %26, i32 0, i32 7
  %45 = ptrtoint ptr %enable_rotary0.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %enable_rotary0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool7.not.i = icmp eq i32 %46, 0
  br i1 %tobool7.not.i, label %for.end.i.if.end32.i_crit_edge, label %if.then8.i

for.end.i.if.end32.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

if.then8.i:                                       ; preds = %for.end.i
  %rotary0_up_key.i = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %26, i32 0, i32 9
  %47 = ptrtoint ptr %rotary0_up_key.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rotary0_up_key.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool9.not.i = icmp eq i32 %48, 0
  br i1 %tobool9.not.i, label %if.then8.i.if.else.i_crit_edge, label %land.lhs.true.i

if.then8.i.if.else.i_crit_edge:                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then8.i
  %rotary0_down_key.i = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %26, i32 0, i32 10
  %49 = ptrtoint ptr %rotary0_down_key.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rotary0_down_key.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool10.not.i = icmp eq i32 %50, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then11.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.then11.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv13.i = trunc i32 %48 to i16
  %arrayidx15.i = getelementptr %struct.pxa27x_keypad, ptr %call.i, i32 0, i32 5, i32 64
  %51 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv13.i, ptr %arrayidx15.i, align 4
  %keybit17.i = getelementptr inbounds %struct.input_dev, ptr %28, i32 0, i32 6
  %rem.i121.i = and i32 %48, 31
  %shl.i122.i = shl nuw i32 1, %rem.i121.i
  %conv16.i = lshr i32 %48, 5
  %div2.i123.i = and i32 %conv16.i, 2047
  %add.ptr.i124.i = getelementptr i32, ptr %keybit17.i, i32 %div2.i123.i
  %52 = ptrtoint ptr %add.ptr.i124.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr.i124.i, align 4
  %or.i125.i = or i32 %53, %shl.i122.i
  store i32 %or.i125.i, ptr %add.ptr.i124.i, align 4
  %54 = ptrtoint ptr %rotary0_down_key.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rotary0_down_key.i, align 4
  %conv20.i = trunc i32 %55 to i16
  %arrayidx22.i = getelementptr %struct.pxa27x_keypad, ptr %call.i, i32 0, i32 5, i32 65
  %56 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv20.i, ptr %arrayidx22.i, align 2
  %rem.i126.i = and i32 %55, 31
  %shl.i127.i = shl nuw i32 1, %rem.i126.i
  %conv23.i = lshr i32 %55, 5
  %div2.i128.i = and i32 %conv23.i, 2047
  %add.ptr.i129.i = getelementptr i32, ptr %keybit17.i, i32 %div2.i128.i
  %57 = ptrtoint ptr %add.ptr.i129.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %add.ptr.i129.i, align 4
  %or.i130.i = or i32 %58, %shl.i127.i
  store i32 %or.i130.i, ptr %add.ptr.i129.i, align 4
  %rotary_rel_code.i = getelementptr inbounds %struct.pxa27x_keypad, ptr %call.i, i32 0, i32 6
  %59 = ptrtoint ptr %rotary_rel_code.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %rotary_rel_code.i, align 4
  br label %if.end32.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then8.i.if.else.i_crit_edge
  %rotary0_rel_code.i = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %26, i32 0, i32 8
  %60 = ptrtoint ptr %rotary0_rel_code.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rotary0_rel_code.i, align 4
  %rotary_rel_code27.i = getelementptr inbounds %struct.pxa27x_keypad, ptr %call.i, i32 0, i32 6
  %62 = ptrtoint ptr %rotary_rel_code27.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %rotary_rel_code27.i, align 4
  %63 = load i32, ptr %rotary0_rel_code.i, align 4
  %relbit.i = getelementptr inbounds %struct.input_dev, ptr %28, i32 0, i32 7
  %rem.i131.i = and i32 %63, 31
  %shl.i132.i = shl nuw i32 1, %rem.i131.i
  %div2.i133.i = lshr i32 %63, 5
  %add.ptr.i134.i = getelementptr i32, ptr %relbit.i, i32 %div2.i133.i
  %64 = ptrtoint ptr %add.ptr.i134.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %add.ptr.i134.i, align 4
  %or.i135.i = or i32 %shl.i132.i, %65
  store i32 %or.i135.i, ptr %add.ptr.i134.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.else.i, %if.then11.i, %for.end.i.if.end32.i_crit_edge
  %enable_rotary1.i = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %26, i32 0, i32 11
  %66 = ptrtoint ptr %enable_rotary1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %enable_rotary1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool33.not.i = icmp eq i32 %67, 0
  br i1 %tobool33.not.i, label %if.end32.i.if.end52.thread_crit_edge, label %if.then34.i

if.end32.i.if.end52.thread_crit_edge:             ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52.thread

if.then34.i:                                      ; preds = %if.end32.i
  %rotary1_up_key.i = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %26, i32 0, i32 13
  %68 = ptrtoint ptr %rotary1_up_key.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rotary1_up_key.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool35.not.i = icmp eq i32 %69, 0
  br i1 %tobool35.not.i, label %if.then34.i.if.else55.i_crit_edge, label %land.lhs.true36.i

if.then34.i.if.else55.i_crit_edge:                ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else55.i

land.lhs.true36.i:                                ; preds = %if.then34.i
  %rotary1_down_key.i = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %26, i32 0, i32 14
  %70 = ptrtoint ptr %rotary1_down_key.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rotary1_down_key.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool37.not.i = icmp eq i32 %71, 0
  br i1 %tobool37.not.i, label %land.lhs.true36.i.if.else55.i_crit_edge, label %if.then38.i

land.lhs.true36.i.if.else55.i_crit_edge:          ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else55.i

if.then38.i:                                      ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv40.i = trunc i32 %69 to i16
  %arrayidx42.i = getelementptr %struct.pxa27x_keypad, ptr %call.i, i32 0, i32 5, i32 66
  %72 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv40.i, ptr %arrayidx42.i, align 4
  %keybit44.i = getelementptr inbounds %struct.input_dev, ptr %28, i32 0, i32 6
  %rem.i136.i = and i32 %69, 31
  %shl.i137.i = shl nuw i32 1, %rem.i136.i
  %conv43.i = lshr i32 %69, 5
  %div2.i138.i = and i32 %conv43.i, 2047
  %add.ptr.i139.i = getelementptr i32, ptr %keybit44.i, i32 %div2.i138.i
  %73 = ptrtoint ptr %add.ptr.i139.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %add.ptr.i139.i, align 4
  %or.i140.i = or i32 %74, %shl.i137.i
  store i32 %or.i140.i, ptr %add.ptr.i139.i, align 4
  %75 = ptrtoint ptr %rotary1_down_key.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rotary1_down_key.i, align 4
  %conv47.i = trunc i32 %76 to i16
  %arrayidx49.i = getelementptr %struct.pxa27x_keypad, ptr %call.i, i32 0, i32 5, i32 67
  %77 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv47.i, ptr %arrayidx49.i, align 2
  %rem.i141.i = and i32 %76, 31
  %shl.i142.i = shl nuw i32 1, %rem.i141.i
  %conv50.i = lshr i32 %76, 5
  %div2.i143.i = and i32 %conv50.i, 2047
  %add.ptr.i144.i = getelementptr i32, ptr %keybit44.i, i32 %div2.i143.i
  %78 = ptrtoint ptr %add.ptr.i144.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %add.ptr.i144.i, align 4
  %or.i145.i = or i32 %79, %shl.i142.i
  store i32 %or.i145.i, ptr %add.ptr.i144.i, align 4
  %arrayidx54.i = getelementptr %struct.pxa27x_keypad, ptr %call.i, i32 0, i32 6, i32 1
  %80 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -1, ptr %arrayidx54.i, align 4
  br label %if.end52.thread

if.else55.i:                                      ; preds = %land.lhs.true36.i.if.else55.i_crit_edge, %if.then34.i.if.else55.i_crit_edge
  %rotary1_rel_code.i = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %26, i32 0, i32 12
  %81 = ptrtoint ptr %rotary1_rel_code.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %rotary1_rel_code.i, align 4
  %arrayidx57.i = getelementptr %struct.pxa27x_keypad, ptr %call.i, i32 0, i32 6, i32 1
  %83 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %arrayidx57.i, align 4
  %84 = load i32, ptr %rotary1_rel_code.i, align 4
  %relbit59.i = getelementptr inbounds %struct.input_dev, ptr %28, i32 0, i32 7
  %rem.i146.i = and i32 %84, 31
  %shl.i147.i = shl nuw i32 1, %rem.i146.i
  %div2.i148.i = lshr i32 %84, 5
  %add.ptr.i149.i = getelementptr i32, ptr %relbit59.i, i32 %div2.i148.i
  %85 = ptrtoint ptr %add.ptr.i149.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %add.ptr.i149.i, align 4
  %or.i150.i = or i32 %shl.i147.i, %86
  store i32 %or.i150.i, ptr %add.ptr.i149.i, align 4
  br label %if.end52.thread

if.end52.thread:                                  ; preds = %if.else55.i, %if.then38.i, %if.end32.i.if.end52.thread_crit_edge
  %keybit63.i = getelementptr inbounds %struct.input_dev, ptr %28, i32 0, i32 6
  %87 = ptrtoint ptr %keybit63.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %keybit63.i, align 4
  %and.i.i = and i32 %88, -2
  store i32 %and.i.i, ptr %keybit63.i, align 4
  br label %if.end59

if.else:                                          ; preds = %if.end43
  %89 = ptrtoint ptr %input_dev22 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %input_dev22, align 4
  %parent.i = getelementptr inbounds %struct.input_dev, ptr %90, i32 0, i32 40, i32 1
  %91 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %parent.i, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %92, i32 0, i32 27
  %93 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %of_node.i, align 8
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %92, i32 noundef 96, i32 noundef 3520) #6
  %tobool.not.i167 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i167, label %do.end.i, label %if.end.i168

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.18) #9
  br label %do.end57

if.end.i168:                                      ; preds = %if.else
  %95 = ptrtoint ptr %input_dev22 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %input_dev22, align 4
  %parent.i.i = getelementptr inbounds %struct.input_dev, ptr %96, i32 0, i32 40, i32 1
  %97 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %parent.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rows.i.i) #6
  %99 = ptrtoint ptr %rows.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -1, ptr %rows.i.i, align 4, !annotation !91
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cols.i.i) #6
  %100 = ptrtoint ptr %cols.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 -1, ptr %cols.i.i, align 4, !annotation !91
  %call.i59.i = call i32 @matrix_keypad_parse_properties(ptr noundef %98, ptr noundef nonnull %rows.i.i, ptr noundef nonnull %cols.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59.i)
  %tobool.not.i.i = icmp eq i32 %call.i59.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i168.pxa27x_keypad_matrix_key_parse_dt.exit.thread.i_crit_edge

if.end.i168.pxa27x_keypad_matrix_key_parse_dt.exit.thread.i_crit_edge: ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #8
  br label %pxa27x_keypad_matrix_key_parse_dt.exit.thread.i

if.end.i.i:                                       ; preds = %if.end.i168
  %101 = ptrtoint ptr %rows.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %rows.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %102)
  %cmp.i.i = icmp ugt i32 %102, 8
  br i1 %cmp.i.i, label %if.end.i.i.do.end.i.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %103 = ptrtoint ptr %cols.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cols.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %104)
  %cmp3.i.i = icmp ugt i32 %104, 8
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.do.end.i.i_crit_edge, label %pxa27x_keypad_matrix_key_parse_dt.exit.i

lor.lhs.false.i.i.do.end.i.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %lor.lhs.false.i.i.do.end.i.i_crit_edge, %if.end.i.i.do.end.i.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.33) #9
  br label %pxa27x_keypad_matrix_key_parse_dt.exit.thread.i

pxa27x_keypad_matrix_key_parse_dt.exit.thread.i:  ; preds = %do.end.i.i, %if.end.i168.pxa27x_keypad_matrix_key_parse_dt.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call.i59.i, %if.end.i168.pxa27x_keypad_matrix_key_parse_dt.exit.thread.i_crit_edge ], [ -22, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cols.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rows.i.i) #6
  br label %do.end8.i

pxa27x_keypad_matrix_key_parse_dt.exit.i:         ; preds = %lor.lhs.false.i.i
  %matrix_key_rows.i.i = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %call.i.i, i32 0, i32 1
  %105 = ptrtoint ptr %matrix_key_rows.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %102, ptr %matrix_key_rows.i.i, align 4
  %matrix_key_cols.i.i = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %call.i.i, i32 0, i32 2
  %106 = ptrtoint ptr %matrix_key_cols.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %104, ptr %matrix_key_cols.i.i, align 4
  %call8.i.i = call i32 @matrix_keypad_build_keymap(ptr noundef null, ptr noundef null, i32 noundef %102, i32 noundef %104, ptr noundef %keycodes, ptr noundef %96) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cols.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rows.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool4.not.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool4.not.i, label %if.end9.i, label %pxa27x_keypad_matrix_key_parse_dt.exit.i.do.end8.i_crit_edge

pxa27x_keypad_matrix_key_parse_dt.exit.i.do.end8.i_crit_edge: ; preds = %pxa27x_keypad_matrix_key_parse_dt.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8.i

do.end8.i:                                        ; preds = %pxa27x_keypad_matrix_key_parse_dt.exit.i.do.end8.i_crit_edge, %pxa27x_keypad_matrix_key_parse_dt.exit.thread.i
  %retval.0.i83.i = phi i32 [ %retval.0.i.ph.i, %pxa27x_keypad_matrix_key_parse_dt.exit.thread.i ], [ %call8.i.i, %pxa27x_keypad_matrix_key_parse_dt.exit.i.do.end8.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.21) #9
  br label %do.end57

if.end9.i:                                        ; preds = %pxa27x_keypad_matrix_key_parse_dt.exit.i
  %107 = ptrtoint ptr %input_dev22 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %input_dev22, align 4
  %parent.i61.i = getelementptr inbounds %struct.input_dev, ptr %108, i32 0, i32 40, i32 1
  %109 = ptrtoint ptr %parent.i61.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %parent.i61.i, align 8
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %110, i32 0, i32 27
  %111 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %of_node.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %proplen.i.i) #6
  %113 = ptrtoint ptr %proplen.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 -1, ptr %proplen.i.i, align 4, !annotation !91
  %direct_key_num.i.i = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %call.i.i, i32 0, i32 3
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %112, ptr noundef nonnull @.str.35, ptr noundef %direct_key_num.i.i, i32 noundef 1, i32 noundef 0) #6
  %114 = call i32 @llvm.smin.i32(i32 %call.i.i.i.i, i32 0) #6
  %115 = zext i32 %114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values)
  switch i32 %114, label %if.end9.i.pxa27x_keypad_direct_key_parse_dt.exit.i_crit_edge [
    i32 0, label %if.end.i62.i
    i32 -22, label %if.end9.i.pxa27x_keypad_direct_key_parse_dt.exit.thread.i_crit_edge
  ]

if.end9.i.pxa27x_keypad_direct_key_parse_dt.exit.thread.i_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pxa27x_keypad_direct_key_parse_dt.exit.thread.i

if.end9.i.pxa27x_keypad_direct_key_parse_dt.exit.i_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pxa27x_keypad_direct_key_parse_dt.exit.i

if.end.i62.i:                                     ; preds = %if.end9.i
  %direct_key_mask.i.i = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %call.i.i, i32 0, i32 6
  %call.i.i55.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %112, ptr noundef nonnull @.str.36, ptr noundef %direct_key_mask.i.i, i32 noundef 1, i32 noundef 0) #6
  %116 = call i32 @llvm.smin.i32(i32 %call.i.i55.i.i, i32 0) #6
  %117 = zext i32 %116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %116, label %if.end.i62.i.pxa27x_keypad_direct_key_parse_dt.exit.i_crit_edge [
    i32 0, label %if.end.i62.i.if.end10.i.i_crit_edge
    i32 -22, label %if.end8.i.i
  ]

if.end.i62.i.if.end10.i.i_crit_edge:              ; preds = %if.end.i62.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i.i

if.end.i62.i.pxa27x_keypad_direct_key_parse_dt.exit.i_crit_edge: ; preds = %if.end.i62.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pxa27x_keypad_direct_key_parse_dt.exit.i

if.end8.i.i:                                      ; preds = %if.end.i62.i
  call void @__sanitizer_cov_trace_pc() #8
  %118 = ptrtoint ptr %direct_key_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %direct_key_mask.i.i, align 4
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.end8.i.i, %if.end.i62.i.if.end10.i.i_crit_edge
  %call.i.i.i = call ptr @of_find_property(ptr noundef %112, ptr noundef nonnull @.str.37, ptr noundef null) #6
  %tobool.i.i.i = icmp ne ptr %call.i.i.i, null
  %conv.i.i = zext i1 %tobool.i.i.i to i32
  %direct_key_low_active.i.i = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %call.i.i, i32 0, i32 5
  %119 = ptrtoint ptr %direct_key_low_active.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %conv.i.i, ptr %direct_key_low_active.i.i, align 4
  %call12.i.i = call ptr @of_get_property(ptr noundef %112, ptr noundef nonnull @.str.38, ptr noundef nonnull %proplen.i.i) #6
  %tobool13.not.i.i = icmp eq ptr %call12.i.i, null
  br i1 %tobool13.not.i.i, label %if.end10.i.i.pxa27x_keypad_direct_key_parse_dt.exit.thread87.i_crit_edge, label %if.end15.i.i

if.end10.i.i.pxa27x_keypad_direct_key_parse_dt.exit.thread87.i_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pxa27x_keypad_direct_key_parse_dt.exit.thread87.i

if.end15.i.i:                                     ; preds = %if.end10.i.i
  %120 = ptrtoint ptr %proplen.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %proplen.i.i, align 4
  %rem.i.i169 = and i32 %121, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i169)
  %tobool16.not.i.i = icmp eq i32 %rem.i.i169, 0
  br i1 %tobool16.not.i.i, label %if.end18.i.i, label %if.end15.i.i.pxa27x_keypad_direct_key_parse_dt.exit.thread87.i_crit_edge

if.end15.i.i.pxa27x_keypad_direct_key_parse_dt.exit.thread87.i_crit_edge: ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pxa27x_keypad_direct_key_parse_dt.exit.thread87.i

if.end18.i.i:                                     ; preds = %if.end15.i.i
  %div54.i.i = lshr i32 %121, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %121)
  %cmp19.i.i = icmp ugt i32 %121, 17
  br i1 %cmp19.i.i, label %if.end18.i.i.pxa27x_keypad_direct_key_parse_dt.exit.thread87.i_crit_edge, label %for.cond.preheader.i.i

if.end18.i.i.pxa27x_keypad_direct_key_parse_dt.exit.thread87.i_crit_edge: ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pxa27x_keypad_direct_key_parse_dt.exit.thread87.i

for.cond.preheader.i.i:                           ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %121)
  %cmp2356.not.i.i = icmp ult i32 %121, 2
  br i1 %cmp2356.not.i.i, label %for.cond.preheader.i.i.pxa27x_keypad_direct_key_parse_dt.exit.thread.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.pxa27x_keypad_direct_key_parse_dt.exit.thread.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pxa27x_keypad_direct_key_parse_dt.exit.thread.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %keybit.i.i = getelementptr inbounds %struct.input_dev, ptr %108, i32 0, i32 6
  %umax.i.i = call i32 @llvm.umax.i32(i32 %div54.i.i, i32 1) #6
  %122 = ptrtoint ptr %call12.i.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %call12.i.i, align 2
  %arrayidx.i.i = getelementptr %struct.pxa27x_keypad, ptr %call.i, i32 0, i32 5, i32 64
  %124 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %123, ptr %arrayidx.i.i, align 2
  %conv26.i.i = zext i16 %123 to i32
  %rem.i.i.i = and i32 %conv26.i.i, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %conv26.i.i, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %keybit.i.i, i32 %div2.i.i.i
  %125 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %add.ptr.i.i.i, align 4
  %or.i.i.i = or i32 %shl.i.i.i, %126
  store i32 %or.i.i.i, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %121)
  %exitcond.not.i.i = icmp ult i32 %121, 4
  br i1 %exitcond.not.i.i, label %for.body.lr.ph.i.i.pxa27x_keypad_direct_key_parse_dt.exit.thread.i_crit_edge, label %for.body.i.i.1

for.body.lr.ph.i.i.pxa27x_keypad_direct_key_parse_dt.exit.thread.i_crit_edge: ; preds = %for.body.lr.ph.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pxa27x_keypad_direct_key_parse_dt.exit.thread.i

for.body.i.i.1:                                   ; preds = %for.body.lr.ph.i.i
  %add.ptr.i.i170.1 = getelementptr i16, ptr %call12.i.i, i32 1
  %127 = ptrtoint ptr %add.ptr.i.i170.1 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %add.ptr.i.i170.1, align 2
  %arrayidx.i.i.1 = getelementptr %struct.pxa27x_keypad, ptr %call.i, i32 0, i32 5, i32 65
  %129 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %128, ptr %arrayidx.i.i.1, align 2
  %conv26.i.i.1 = zext i16 %128 to i32
  %rem.i.i.i.1 = and i32 %conv26.i.i.1, 31
  %shl.i.i.i.1 = shl nuw i32 1, %rem.i.i.i.1
  %div2.i.i.i.1 = lshr i32 %conv26.i.i.1, 5
  %add.ptr.i.i.i.1 = getelementptr i32, ptr %keybit.i.i, i32 %div2.i.i.i.1
  %130 = ptrtoint ptr %add.ptr.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %add.ptr.i.i.i.1, align 4
  %or.i.i.i.1 = or i32 %shl.i.i.i.1, %131
  store i32 %or.i.i.i.1, ptr %add.ptr.i.i.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %umax.i.i)
  %exitcond.not.i.i.1 = icmp eq i32 %umax.i.i, 2
  br i1 %exitcond.not.i.i.1, label %for.body.i.i.1.pxa27x_keypad_direct_key_parse_dt.exit.thread.i_crit_edge, label %for.body.i.i.2

for.body.i.i.1.pxa27x_keypad_direct_key_parse_dt.exit.thread.i_crit_edge: ; preds = %for.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %pxa27x_keypad_direct_key_parse_dt.exit.thread.i

for.body.i.i.2:                                   ; preds = %for.body.i.i.1
  %add.ptr.i.i170.2 = getelementptr i16, ptr %call12.i.i, i32 2
  %132 = ptrtoint ptr %add.ptr.i.i170.2 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %add.ptr.i.i170.2, align 2
  %arrayidx.i.i.2 = getelementptr %struct.pxa27x_keypad, ptr %call.i, i32 0, i32 5, i32 66
  %134 = ptrtoint ptr %arrayidx.i.i.2 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %133, ptr %arrayidx.i.i.2, align 2
  %conv26.i.i.2 = zext i16 %133 to i32
  %rem.i.i.i.2 = and i32 %conv26.i.i.2, 31
  %shl.i.i.i.2 = shl nuw i32 1, %rem.i.i.i.2
  %div2.i.i.i.2 = lshr i32 %conv26.i.i.2, 5
  %add.ptr.i.i.i.2 = getelementptr i32, ptr %keybit.i.i, i32 %div2.i.i.i.2
  %135 = ptrtoint ptr %add.ptr.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %add.ptr.i.i.i.2, align 4
  %or.i.i.i.2 = or i32 %shl.i.i.i.2, %136
  store i32 %or.i.i.i.2, ptr %add.ptr.i.i.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %umax.i.i)
  %exitcond.not.i.i.2 = icmp eq i32 %umax.i.i, 3
  br i1 %exitcond.not.i.i.2, label %for.body.i.i.2.pxa27x_keypad_direct_key_parse_dt.exit.thread.i_crit_edge, label %for.body.i.i.3

for.body.i.i.2.pxa27x_keypad_direct_key_parse_dt.exit.thread.i_crit_edge: ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %pxa27x_keypad_direct_key_parse_dt.exit.thread.i

for.body.i.i.3:                                   ; preds = %for.body.i.i.2
  %add.ptr.i.i170.3 = getelementptr i16, ptr %call12.i.i, i32 3
  %137 = ptrtoint ptr %add.ptr.i.i170.3 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %add.ptr.i.i170.3, align 2
  %arrayidx.i.i.3 = getelementptr %struct.pxa27x_keypad, ptr %call.i, i32 0, i32 5, i32 67
  %139 = ptrtoint ptr %arrayidx.i.i.3 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %138, ptr %arrayidx.i.i.3, align 2
  %conv26.i.i.3 = zext i16 %138 to i32
  %rem.i.i.i.3 = and i32 %conv26.i.i.3, 31
  %shl.i.i.i.3 = shl nuw i32 1, %rem.i.i.i.3
  %div2.i.i.i.3 = lshr i32 %conv26.i.i.3, 5
  %add.ptr.i.i.i.3 = getelementptr i32, ptr %keybit.i.i, i32 %div2.i.i.i.3
  %140 = ptrtoint ptr %add.ptr.i.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %add.ptr.i.i.i.3, align 4
  %or.i.i.i.3 = or i32 %shl.i.i.i.3, %141
  store i32 %or.i.i.i.3, ptr %add.ptr.i.i.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %umax.i.i)
  %exitcond.not.i.i.3 = icmp eq i32 %umax.i.i, 4
  br i1 %exitcond.not.i.i.3, label %for.body.i.i.3.pxa27x_keypad_direct_key_parse_dt.exit.thread.i_crit_edge, label %for.body.i.i.4

for.body.i.i.3.pxa27x_keypad_direct_key_parse_dt.exit.thread.i_crit_edge: ; preds = %for.body.i.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %pxa27x_keypad_direct_key_parse_dt.exit.thread.i

for.body.i.i.4:                                   ; preds = %for.body.i.i.3
  %add.ptr.i.i170.4 = getelementptr i16, ptr %call12.i.i, i32 4
  %142 = ptrtoint ptr %add.ptr.i.i170.4 to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %add.ptr.i.i170.4, align 2
  %arrayidx.i.i.4 = getelementptr %struct.pxa27x_keypad, ptr %call.i, i32 0, i32 5, i32 68
  %144 = ptrtoint ptr %arrayidx.i.i.4 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %143, ptr %arrayidx.i.i.4, align 2
  %conv26.i.i.4 = zext i16 %143 to i32
  %rem.i.i.i.4 = and i32 %conv26.i.i.4, 31
  %shl.i.i.i.4 = shl nuw i32 1, %rem.i.i.i.4
  %div2.i.i.i.4 = lshr i32 %conv26.i.i.4, 5
  %add.ptr.i.i.i.4 = getelementptr i32, ptr %keybit.i.i, i32 %div2.i.i.i.4
  %145 = ptrtoint ptr %add.ptr.i.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %add.ptr.i.i.i.4, align 4
  %or.i.i.i.4 = or i32 %shl.i.i.i.4, %146
  store i32 %or.i.i.i.4, ptr %add.ptr.i.i.i.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %umax.i.i)
  %exitcond.not.i.i.4 = icmp eq i32 %umax.i.i, 5
  br i1 %exitcond.not.i.i.4, label %for.body.i.i.4.pxa27x_keypad_direct_key_parse_dt.exit.thread.i_crit_edge, label %for.body.i.i.5

for.body.i.i.4.pxa27x_keypad_direct_key_parse_dt.exit.thread.i_crit_edge: ; preds = %for.body.i.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %pxa27x_keypad_direct_key_parse_dt.exit.thread.i

for.body.i.i.5:                                   ; preds = %for.body.i.i.4
  %add.ptr.i.i170.5 = getelementptr i16, ptr %call12.i.i, i32 5
  %147 = ptrtoint ptr %add.ptr.i.i170.5 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %add.ptr.i.i170.5, align 2
  %arrayidx.i.i.5 = getelementptr %struct.pxa27x_keypad, ptr %call.i, i32 0, i32 5, i32 69
  %149 = ptrtoint ptr %arrayidx.i.i.5 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %148, ptr %arrayidx.i.i.5, align 2
  %conv26.i.i.5 = zext i16 %148 to i32
  %rem.i.i.i.5 = and i32 %conv26.i.i.5, 31
  %shl.i.i.i.5 = shl nuw i32 1, %rem.i.i.i.5
  %div2.i.i.i.5 = lshr i32 %conv26.i.i.5, 5
  %add.ptr.i.i.i.5 = getelementptr i32, ptr %keybit.i.i, i32 %div2.i.i.i.5
  %150 = ptrtoint ptr %add.ptr.i.i.i.5 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %add.ptr.i.i.i.5, align 4
  %or.i.i.i.5 = or i32 %shl.i.i.i.5, %151
  store i32 %or.i.i.i.5, ptr %add.ptr.i.i.i.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %umax.i.i)
  %exitcond.not.i.i.5 = icmp eq i32 %umax.i.i, 6
  br i1 %exitcond.not.i.i.5, label %for.body.i.i.5.pxa27x_keypad_direct_key_parse_dt.exit.thread.i_crit_edge, label %for.body.i.i.6

for.body.i.i.5.pxa27x_keypad_direct_key_parse_dt.exit.thread.i_crit_edge: ; preds = %for.body.i.i.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %pxa27x_keypad_direct_key_parse_dt.exit.thread.i

for.body.i.i.6:                                   ; preds = %for.body.i.i.5
  %add.ptr.i.i170.6 = getelementptr i16, ptr %call12.i.i, i32 6
  %152 = ptrtoint ptr %add.ptr.i.i170.6 to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %add.ptr.i.i170.6, align 2
  %arrayidx.i.i.6 = getelementptr %struct.pxa27x_keypad, ptr %call.i, i32 0, i32 5, i32 70
  %154 = ptrtoint ptr %arrayidx.i.i.6 to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %153, ptr %arrayidx.i.i.6, align 2
  %conv26.i.i.6 = zext i16 %153 to i32
  %rem.i.i.i.6 = and i32 %conv26.i.i.6, 31
  %shl.i.i.i.6 = shl nuw i32 1, %rem.i.i.i.6
  %div2.i.i.i.6 = lshr i32 %conv26.i.i.6, 5
  %add.ptr.i.i.i.6 = getelementptr i32, ptr %keybit.i.i, i32 %div2.i.i.i.6
  %155 = ptrtoint ptr %add.ptr.i.i.i.6 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %add.ptr.i.i.i.6, align 4
  %or.i.i.i.6 = or i32 %shl.i.i.i.6, %156
  store i32 %or.i.i.i.6, ptr %add.ptr.i.i.i.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %umax.i.i)
  %exitcond.not.i.i.6 = icmp eq i32 %umax.i.i, 7
  br i1 %exitcond.not.i.i.6, label %for.body.i.i.6.pxa27x_keypad_direct_key_parse_dt.exit.thread.i_crit_edge, label %for.body.i.i.7

for.body.i.i.6.pxa27x_keypad_direct_key_parse_dt.exit.thread.i_crit_edge: ; preds = %for.body.i.i.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %pxa27x_keypad_direct_key_parse_dt.exit.thread.i

for.body.i.i.7:                                   ; preds = %for.body.i.i.6
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i170.7 = getelementptr i16, ptr %call12.i.i, i32 7
  %157 = ptrtoint ptr %add.ptr.i.i170.7 to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %add.ptr.i.i170.7, align 2
  %arrayidx.i.i.7 = getelementptr %struct.pxa27x_keypad, ptr %call.i, i32 0, i32 5, i32 71
  %159 = ptrtoint ptr %arrayidx.i.i.7 to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %158, ptr %arrayidx.i.i.7, align 2
  %conv26.i.i.7 = zext i16 %158 to i32
  %rem.i.i.i.7 = and i32 %conv26.i.i.7, 31
  %shl.i.i.i.7 = shl nuw i32 1, %rem.i.i.i.7
  %div2.i.i.i.7 = lshr i32 %conv26.i.i.7, 5
  %add.ptr.i.i.i.7 = getelementptr i32, ptr %keybit.i.i, i32 %div2.i.i.i.7
  %160 = ptrtoint ptr %add.ptr.i.i.i.7 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %add.ptr.i.i.i.7, align 4
  %or.i.i.i.7 = or i32 %shl.i.i.i.7, %161
  store i32 %or.i.i.i.7, ptr %add.ptr.i.i.i.7, align 4
  br label %pxa27x_keypad_direct_key_parse_dt.exit.thread.i

pxa27x_keypad_direct_key_parse_dt.exit.thread.i:  ; preds = %for.body.i.i.7, %for.body.i.i.6.pxa27x_keypad_direct_key_parse_dt.exit.thread.i_crit_edge, %for.body.i.i.5.pxa27x_keypad_direct_key_parse_dt.exit.thread.i_crit_edge, %for.body.i.i.4.pxa27x_keypad_direct_key_parse_dt.exit.thread.i_crit_edge, %for.body.i.i.3.pxa27x_keypad_direct_key_parse_dt.exit.thread.i_crit_edge, %for.body.i.i.2.pxa27x_keypad_direct_key_parse_dt.exit.thread.i_crit_edge, %for.body.i.i.1.pxa27x_keypad_direct_key_parse_dt.exit.thread.i_crit_edge, %for.body.lr.ph.i.i.pxa27x_keypad_direct_key_parse_dt.exit.thread.i_crit_edge, %for.cond.preheader.i.i.pxa27x_keypad_direct_key_parse_dt.exit.thread.i_crit_edge, %if.end9.i.pxa27x_keypad_direct_key_parse_dt.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %proplen.i.i) #6
  br label %if.end16.i

pxa27x_keypad_direct_key_parse_dt.exit.thread87.i: ; preds = %if.end18.i.i.pxa27x_keypad_direct_key_parse_dt.exit.thread87.i_crit_edge, %if.end15.i.i.pxa27x_keypad_direct_key_parse_dt.exit.thread87.i_crit_edge, %if.end10.i.i.pxa27x_keypad_direct_key_parse_dt.exit.thread87.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %proplen.i.i) #6
  br label %do.end15.i

pxa27x_keypad_direct_key_parse_dt.exit.i:         ; preds = %if.end.i62.i.pxa27x_keypad_direct_key_parse_dt.exit.i_crit_edge, %if.end9.i.pxa27x_keypad_direct_key_parse_dt.exit.i_crit_edge
  %retval.0.i63.i = phi i32 [ %116, %if.end.i62.i.pxa27x_keypad_direct_key_parse_dt.exit.i_crit_edge ], [ %114, %if.end9.i.pxa27x_keypad_direct_key_parse_dt.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %proplen.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i63.i)
  %tobool11.not.i = icmp eq i32 %retval.0.i63.i, 0
  br i1 %tobool11.not.i, label %pxa27x_keypad_direct_key_parse_dt.exit.i.if.end16.i_crit_edge, label %pxa27x_keypad_direct_key_parse_dt.exit.i.do.end15.i_crit_edge

pxa27x_keypad_direct_key_parse_dt.exit.i.do.end15.i_crit_edge: ; preds = %pxa27x_keypad_direct_key_parse_dt.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15.i

pxa27x_keypad_direct_key_parse_dt.exit.i.if.end16.i_crit_edge: ; preds = %pxa27x_keypad_direct_key_parse_dt.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

do.end15.i:                                       ; preds = %pxa27x_keypad_direct_key_parse_dt.exit.i.do.end15.i_crit_edge, %pxa27x_keypad_direct_key_parse_dt.exit.thread87.i
  %retval.0.i6390.i = phi i32 [ -22, %pxa27x_keypad_direct_key_parse_dt.exit.thread87.i ], [ %retval.0.i63.i, %pxa27x_keypad_direct_key_parse_dt.exit.i.do.end15.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.24) #9
  br label %do.end57

if.end16.i:                                       ; preds = %pxa27x_keypad_direct_key_parse_dt.exit.i.if.end16.i_crit_edge, %pxa27x_keypad_direct_key_parse_dt.exit.thread.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %code.i.i) #6
  %162 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 -1, ptr %code.i.i, align 4, !annotation !91
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %proplen.i64.i) #6
  %163 = ptrtoint ptr %proplen.i64.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 -1, ptr %proplen.i64.i, align 4, !annotation !91
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %relkeyname.i.i) #6
  %164 = call ptr @memcpy(ptr %relkeyname.i.i, ptr @__const.pxa27x_keypad_rotary_parse_dt.relkeyname, i32 23)
  %165 = ptrtoint ptr %input_dev22 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %input_dev22, align 4
  %parent.i66.i = getelementptr inbounds %struct.input_dev, ptr %166, i32 0, i32 40, i32 1
  %167 = ptrtoint ptr %parent.i66.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %parent.i66.i, align 8
  %of_node.i67.i = getelementptr inbounds %struct.device, ptr %168, i32 0, i32 27
  %169 = ptrtoint ptr %of_node.i67.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %of_node.i67.i, align 8
  %call.i.i.i68.i = call i32 @of_property_read_variable_u32_array(ptr noundef %170, ptr noundef nonnull %relkeyname.i.i, ptr noundef nonnull %code.i.i, i32 noundef 1, i32 noundef 0) #6
  %171 = call i32 @llvm.smin.i32(i32 %call.i.i.i68.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i68.i)
  %cmp.i69.i = icmp sgt i32 %call.i.i.i68.i, -1
  br i1 %cmp.i69.i, label %if.then.i.i, label %if.end16.i.if.end.i77.i_crit_edge

if.end16.i.if.end.i77.i_crit_edge:                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i77.i

if.then.i.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  %172 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %code.i.i, align 4
  %and.i.i171 = and i32 %173, 65535
  %rotary0_rel_code.i.i = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %call.i.i, i32 0, i32 8
  %174 = ptrtoint ptr %rotary0_rel_code.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %and.i.i171, ptr %rotary0_rel_code.i.i, align 4
  %relbit.i.i = getelementptr inbounds %struct.input_dev, ptr %166, i32 0, i32 7
  %rem.i.i70.i = and i32 %173, 31
  %shl.i.i71.i = shl nuw i32 1, %rem.i.i70.i
  %div2.i.i72.i = lshr i32 %and.i.i171, 5
  %add.ptr.i.i73.i = getelementptr i32, ptr %relbit.i.i, i32 %div2.i.i72.i
  %175 = ptrtoint ptr %add.ptr.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %add.ptr.i.i73.i, align 4
  %or.i.i74.i = or i32 %176, %shl.i.i71.i
  store i32 %or.i.i74.i, ptr %add.ptr.i.i73.i, align 4
  %177 = load i32, ptr %code.i.i, align 4
  %shr.i.i = lshr i32 %177, 16
  %rotary1_rel_code.i.i = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %call.i.i, i32 0, i32 12
  %178 = ptrtoint ptr %rotary1_rel_code.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %shr.i.i, ptr %rotary1_rel_code.i.i, align 4
  %rem.i94.i.i = and i32 %shr.i.i, 31
  %shl.i95.i.i = shl nuw i32 1, %rem.i94.i.i
  %div2.i96.i.i = lshr i32 %177, 21
  %add.ptr.i97.i.i = getelementptr i32, ptr %relbit.i.i, i32 %div2.i96.i.i
  %179 = ptrtoint ptr %add.ptr.i97.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %add.ptr.i97.i.i, align 4
  %or.i98.i.i = or i32 %shl.i95.i.i, %180
  store i32 %or.i98.i.i, ptr %add.ptr.i97.i.i, align 4
  br label %if.end.i77.i

if.end.i77.i:                                     ; preds = %if.then.i.i, %if.end16.i.if.end.i77.i_crit_edge
  %keybit.i75.i = getelementptr inbounds %struct.input_dev, ptr %166, i32 0, i32 6
  %rotary1_rel_code41.i.i = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %call.i.i, i32 0, i32 12
  %enable_rotary1.i.i = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %call.i.i, i32 0, i32 11
  %rotary0_rel_code39.i.i = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %call.i.i, i32 0, i32 8
  %enable_rotary0.i.i = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %call.i.i, i32 0, i32 7
  %call13.i.i = call ptr @of_get_property(ptr noundef %170, ptr noundef nonnull @.str.39, ptr noundef nonnull %proplen.i64.i) #6
  %tobool.not.i76.i = icmp eq ptr %call13.i.i, null
  br i1 %tobool.not.i76.i, label %if.end.i77.i.for.inc.i.i_crit_edge, label %if.end15.i78.i

if.end.i77.i.for.inc.i.i_crit_edge:               ; preds = %if.end.i77.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.end15.i78.i:                                   ; preds = %if.end.i77.i
  %181 = ptrtoint ptr %call13.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %call13.i.i, align 4
  %183 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %182, ptr %code.i.i, align 4
  %and17.i.i = and i32 %182, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i)
  %tobool18.not.i.i = icmp ne i32 %and17.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %182)
  %tobool20.not.i.i = icmp ugt i32 %182, 65535
  %or.cond.not.i.i = and i1 %tobool20.not.i.i, %tobool18.not.i.i
  %or.cond93.i.i = select i1 %or.cond.not.i.i, i1 true, i1 %cmp.i69.i
  br i1 %or.cond93.i.i, label %if.then38.i.i, label %if.end15.i78.i.if.end52_crit_edge

if.end15.i78.i.if.end52_crit_edge:                ; preds = %if.end15.i78.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then38.i.i:                                    ; preds = %if.end15.i78.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv24.i.i = trunc i32 %182 to i16
  %arrayidx25.i.i = getelementptr %struct.pxa27x_keypad, ptr %call.i, i32 0, i32 5, i32 64
  %184 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %conv24.i.i, ptr %arrayidx25.i.i, align 2
  %rem.i99.i.i = and i32 %182, 31
  %shl.i100.i.i = shl nuw i32 1, %rem.i99.i.i
  %div2.i101.i.i = lshr i32 %and17.i.i, 5
  %add.ptr.i102.i.i = getelementptr i32, ptr %keybit.i75.i, i32 %div2.i101.i.i
  %185 = ptrtoint ptr %add.ptr.i102.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %add.ptr.i102.i.i, align 4
  %or.i103.i.i = or i32 %186, %shl.i100.i.i
  store i32 %or.i103.i.i, ptr %add.ptr.i102.i.i, align 4
  %187 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %code.i.i, align 4
  %shr28.i.i = lshr i32 %188, 16
  %conv29.i.i = trunc i32 %shr28.i.i to i16
  %arrayidx32.i.i = getelementptr %struct.pxa27x_keypad, ptr %call.i, i32 0, i32 5, i32 65
  %189 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 %conv29.i.i, ptr %arrayidx32.i.i, align 2
  %rem.i104.i.i = and i32 %shr28.i.i, 31
  %shl.i105.i.i = shl nuw i32 1, %rem.i104.i.i
  %div2.i106.i.i = lshr i32 %188, 21
  %add.ptr.i107.i.i = getelementptr i32, ptr %keybit.i75.i, i32 %div2.i106.i.i
  %190 = ptrtoint ptr %add.ptr.i107.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %add.ptr.i107.i.i, align 4
  %or.i108.i.i = or i32 %shl.i105.i.i, %191
  store i32 %or.i108.i.i, ptr %add.ptr.i107.i.i, align 4
  %192 = ptrtoint ptr %rotary0_rel_code39.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 -1, ptr %rotary0_rel_code39.i.i, align 4
  %193 = ptrtoint ptr %enable_rotary0.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 1, ptr %enable_rotary0.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then38.i.i, %if.end.i77.i.for.inc.i.i_crit_edge
  %call13.1.i.i = call ptr @of_get_property(ptr noundef %170, ptr noundef nonnull @.str.40, ptr noundef nonnull %proplen.i64.i) #6
  %tobool.not.1.i.i = icmp eq ptr %call13.1.i.i, null
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.if.end23.i_crit_edge, label %if.end15.1.i.i

for.inc.i.i.if.end23.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

if.end15.1.i.i:                                   ; preds = %for.inc.i.i
  %194 = ptrtoint ptr %call13.1.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %call13.1.i.i, align 4
  %196 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %195, ptr %code.i.i, align 4
  %and17.1.i.i = and i32 %195, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.1.i.i)
  %tobool18.not.1.i.i = icmp ne i32 %and17.1.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %195)
  %tobool20.not.1.i.i = icmp ugt i32 %195, 65535
  %or.cond.not.1.i.i = and i1 %tobool20.not.1.i.i, %tobool18.not.1.i.i
  %or.cond93.1.i.i = select i1 %or.cond.not.1.i.i, i1 true, i1 %cmp.i69.i
  br i1 %or.cond93.1.i.i, label %if.else40.1.i.i, label %if.end15.1.i.i.if.end52_crit_edge

if.end15.1.i.i.if.end52_crit_edge:                ; preds = %if.end15.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.else40.1.i.i:                                  ; preds = %if.end15.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv24.1.i.i = trunc i32 %195 to i16
  %arrayidx25.1.i.i = getelementptr %struct.pxa27x_keypad, ptr %call.i, i32 0, i32 5, i32 66
  %197 = ptrtoint ptr %arrayidx25.1.i.i to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 %conv24.1.i.i, ptr %arrayidx25.1.i.i, align 2
  %rem.i99.1.i.i = and i32 %195, 31
  %shl.i100.1.i.i = shl nuw i32 1, %rem.i99.1.i.i
  %div2.i101.1.i.i = lshr i32 %and17.1.i.i, 5
  %add.ptr.i102.1.i.i = getelementptr i32, ptr %keybit.i75.i, i32 %div2.i101.1.i.i
  %198 = ptrtoint ptr %add.ptr.i102.1.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %add.ptr.i102.1.i.i, align 4
  %or.i103.1.i.i = or i32 %199, %shl.i100.1.i.i
  store i32 %or.i103.1.i.i, ptr %add.ptr.i102.1.i.i, align 4
  %200 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %code.i.i, align 4
  %shr28.1.i.i = lshr i32 %201, 16
  %conv29.1.i.i = trunc i32 %shr28.1.i.i to i16
  %arrayidx32.1.i.i = getelementptr %struct.pxa27x_keypad, ptr %call.i, i32 0, i32 5, i32 67
  %202 = ptrtoint ptr %arrayidx32.1.i.i to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 %conv29.1.i.i, ptr %arrayidx32.1.i.i, align 2
  %rem.i104.1.i.i = and i32 %shr28.1.i.i, 31
  %shl.i105.1.i.i = shl nuw i32 1, %rem.i104.1.i.i
  %div2.i106.1.i.i = lshr i32 %201, 21
  %add.ptr.i107.1.i.i = getelementptr i32, ptr %keybit.i75.i, i32 %div2.i106.1.i.i
  %203 = ptrtoint ptr %add.ptr.i107.1.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %add.ptr.i107.1.i.i, align 4
  %or.i108.1.i.i = or i32 %shl.i105.1.i.i, %204
  store i32 %or.i108.1.i.i, ptr %add.ptr.i107.1.i.i, align 4
  %205 = ptrtoint ptr %rotary1_rel_code41.i.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 -1, ptr %rotary1_rel_code41.i.i, align 4
  %206 = ptrtoint ptr %enable_rotary1.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 1, ptr %enable_rotary1.i.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else40.1.i.i, %for.inc.i.i.if.end23.i_crit_edge
  %207 = ptrtoint ptr %rotary0_rel_code39.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %rotary0_rel_code39.i.i, align 4
  %rotary_rel_code.i.i = getelementptr inbounds %struct.pxa27x_keypad, ptr %call.i, i32 0, i32 6
  %209 = ptrtoint ptr %rotary_rel_code.i.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %208, ptr %rotary_rel_code.i.i, align 4
  %210 = ptrtoint ptr %rotary1_rel_code41.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %rotary1_rel_code41.i.i, align 4
  %arrayidx53.i.i = getelementptr %struct.pxa27x_keypad, ptr %call.i, i32 0, i32 6, i32 1
  %212 = ptrtoint ptr %arrayidx53.i.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %211, ptr %arrayidx53.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %relkeyname.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %proplen.i64.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %code.i.i) #6
  %debounce_interval.i = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %call.i.i, i32 0, i32 15
  %call.i.i80.i = call i32 @of_property_read_variable_u32_array(ptr noundef %94, ptr noundef nonnull @.str.29, ptr noundef %debounce_interval.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i80.i)
  %tobool25.not.i = icmp sgt i32 %call.i.i80.i, -1
  br i1 %tobool25.not.i, label %if.end52.thread192, label %do.end29.i

do.end29.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.31) #9
  br label %do.end57

if.end52.thread192:                               ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  %keycodemax.i172 = getelementptr inbounds %struct.input_dev, ptr %90, i32 0, i32 15
  %213 = ptrtoint ptr %keycodemax.i172 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 72, ptr %keycodemax.i172, align 4
  %214 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %call.i.i, ptr %call.i, align 4
  br label %if.end59

if.end52:                                         ; preds = %if.end15.1.i.i.if.end52_crit_edge, %if.end15.i78.i.if.end52_crit_edge
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %relkeyname.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %proplen.i64.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %code.i.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.27) #9
  br label %do.end57

do.end57:                                         ; preds = %if.end52, %do.end29.i, %do.end15.i, %do.end8.i, %do.end.i, %if.then48.do.end57_crit_edge
  %error.0188 = phi i32 [ %171, %if.end52 ], [ %call.i165, %if.then48.do.end57_crit_edge ], [ -12, %do.end.i ], [ %call.i.i80.i, %do.end29.i ], [ %retval.0.i6390.i, %do.end15.i ], [ %retval.0.i83.i, %do.end8.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end59:                                         ; preds = %if.end52.thread192, %if.end52.thread
  %pdata.0183 = phi ptr [ %1, %if.end52.thread ], [ %call.i.i, %if.end52.thread192 ]
  %matrix_key_cols = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %pdata.0183, i32 0, i32 2
  %215 = ptrtoint ptr %matrix_key_cols to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %matrix_key_cols, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %cmp.i174 = icmp eq i32 %216, 0
  br i1 %cmp.i174, label %if.end59.get_count_order.exit_crit_edge, label %if.end.i176

if.end59.get_count_order.exit_crit_edge:          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_count_order.exit

if.end.i176:                                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %dec.i = add i32 %216, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i.i175 = icmp eq i32 %dec.i, 0
  %217 = call i32 @llvm.ctlz.i32(i32 %dec.i, i1 true) #6, !range !92
  %sub.i.i = sub nuw nsw i32 32, %217
  %cond.i.i = select i1 %tobool.not.i.i175, i32 0, i32 %sub.i.i
  br label %get_count_order.exit

get_count_order.exit:                             ; preds = %if.end.i176, %if.end59.get_count_order.exit_crit_edge
  %retval.0.i177 = phi i32 [ %cond.i.i, %if.end.i176 ], [ -1, %if.end59.get_count_order.exit_crit_edge ]
  %row_shift = getelementptr inbounds %struct.pxa27x_keypad, ptr %call.i, i32 0, i32 7
  %218 = ptrtoint ptr %row_shift to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %retval.0.i177, ptr %row_shift, align 4
  %enable_rotary0 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %pdata.0183, i32 0, i32 7
  %219 = ptrtoint ptr %enable_rotary0 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %enable_rotary0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %tobool61.not = icmp eq i32 %220, 0
  br i1 %tobool61.not, label %get_count_order.exit.lor.lhs.false_crit_edge, label %land.lhs.true62

get_count_order.exit.lor.lhs.false_crit_edge:     ; preds = %get_count_order.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

land.lhs.true62:                                  ; preds = %get_count_order.exit
  %rotary_rel_code = getelementptr inbounds %struct.pxa27x_keypad, ptr %call.i, i32 0, i32 6
  %221 = ptrtoint ptr %rotary_rel_code to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %rotary_rel_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %222)
  %cmp64.not = icmp eq i32 %222, -1
  br i1 %cmp64.not, label %land.lhs.true62.lor.lhs.false_crit_edge, label %land.lhs.true62.if.then70_crit_edge

land.lhs.true62.if.then70_crit_edge:              ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then70

land.lhs.true62.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true62.lor.lhs.false_crit_edge, %get_count_order.exit.lor.lhs.false_crit_edge
  %enable_rotary1 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %pdata.0183, i32 0, i32 11
  %223 = ptrtoint ptr %enable_rotary1 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %enable_rotary1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %tobool65.not = icmp eq i32 %224, 0
  br i1 %tobool65.not, label %lor.lhs.false.if.end73_crit_edge, label %land.lhs.true66

lor.lhs.false.if.end73_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

land.lhs.true66:                                  ; preds = %lor.lhs.false
  %arrayidx68 = getelementptr %struct.pxa27x_keypad, ptr %call.i, i32 0, i32 6, i32 1
  %225 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %arrayidx68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %226)
  %cmp69.not = icmp eq i32 %226, -1
  br i1 %cmp69.not, label %land.lhs.true66.if.end73_crit_edge, label %land.lhs.true66.if.then70_crit_edge

land.lhs.true66.if.then70_crit_edge:              ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then70

land.lhs.true66.if.end73_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.then70:                                        ; preds = %land.lhs.true66.if.then70_crit_edge, %land.lhs.true62.if.then70_crit_edge
  %227 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %evbit, align 8
  %or = or i32 %228, 4
  store i32 %or, ptr %evbit, align 8
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %land.lhs.true66.if.end73_crit_edge, %lor.lhs.false.if.end73_crit_edge
  %229 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %pdev, align 8
  %call.i178 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call3, ptr noundef nonnull @pxa27x_keypad_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %230, ptr noundef %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i178)
  %tobool77.not = icmp eq i32 %call.i178, 0
  br i1 %tobool77.not, label %if.end83, label %do.end81

do.end81:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end83:                                         ; preds = %if.end73
  %call84 = call i32 @input_register_device(ptr noundef nonnull %call17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end91, label %do.end89

do.end89:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #9
  br label %cleanup

if.end91:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i179 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %231 = ptrtoint ptr %driver_data.i.i179 to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %call.i, ptr %driver_data.i.i179, align 4
  %call93 = call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end91, %do.end89, %do.end81, %do.end57, %do.end39, %if.then28, %if.end15.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %do.end ], [ %8, %if.then28 ], [ %12, %do.end39 ], [ %error.0188, %do.end57 ], [ %call.i178, %do.end81 ], [ %call84, %do.end89 ], [ 0, %if.end91 ], [ -22, %entry.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ -12, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa27x_keypad_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.pxa27x_keypad, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @pxa27x_keypad_config(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxa27x_keypad_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.pxa27x_keypad, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa27x_keypad_irq_handler(i32 noundef %irq, ptr nocapture noundef %dev_id) #2 align 64 {
entry:
  %new_state.i = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio_base = getelementptr inbounds %struct.pxa27x_keypad, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !93
  %3 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_id, align 4
  %clear_wakeup_event.i = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %4, i32 0, i32 16
  %5 = ptrtoint ptr %clear_wakeup_event.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clear_wakeup_event.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %entry.clear_wakeup_event.exit_crit_edge, label %if.then.i

entry.clear_wakeup_event.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %clear_wakeup_event.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %6() #6
  br label %clear_wakeup_event.exit

clear_wakeup_event.exit:                          ; preds = %if.then.i, %entry.clear_wakeup_event.exit_crit_edge
  %and = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %clear_wakeup_event.exit.if.end_crit_edge, label %if.then

clear_wakeup_event.exit.if.end_crit_edge:         ; preds = %clear_wakeup_event.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %clear_wakeup_event.exit
  %7 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_id, align 4
  %input_dev2.i = getelementptr inbounds %struct.pxa27x_keypad, ptr %dev_id, i32 0, i32 2
  %9 = ptrtoint ptr %input_dev2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %input_dev2.i, align 4
  %11 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio_base, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !93
  %enable_rotary0.i = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %8, i32 0, i32 7
  %14 = ptrtoint ptr %enable_rotary0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %enable_rotary0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i9 = icmp eq i32 %15, 0
  br i1 %tobool.not.i9, label %lor.lhs.false.i, label %if.then.if.then.i10_crit_edge

if.then.if.then.i10_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i10

lor.lhs.false.i:                                  ; preds = %if.then
  %enable_rotary1.i = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %8, i32 0, i32 11
  %16 = ptrtoint ptr %enable_rotary1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %enable_rotary1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool3.not.i = icmp eq i32 %17, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.if.end.i_crit_edge, label %lor.lhs.false.i.if.then.i10_crit_edge

lor.lhs.false.i.if.then.i10_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i10

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i10:                                      ; preds = %lor.lhs.false.i.if.then.i10_crit_edge, %if.then.if.then.i10_crit_edge
  %18 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_id, align 4
  %20 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 16
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !93
  %23 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio_base, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %24, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 8323199) #6, !srcloc !94
  %enable_rotary0.i.i = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %19, i32 0, i32 7
  %25 = ptrtoint ptr %enable_rotary0.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %enable_rotary0.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i, label %if.then.i10.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i10.if.end.i.i_crit_edge:                 ; preds = %if.then.i10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i10
  %and.i.i.i = and i32 %22, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and1.i.i.i = and i32 %22, 255
  %add.i.i.i = add nuw nsw i32 %and1.i.i.i, 127
  br label %rotary_delta.exit.i.i

if.else.i.i.i:                                    ; preds = %if.then.i.i
  %and2.i.i.i = and i32 %22, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  %and8.i.i.i = and i32 %22, 255
  br i1 %tobool3.not.i.i.i, label %if.else7.i.i.i, label %if.then4.i.i.i

if.then4.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub6.i.i.i = add nuw nsw i32 %and8.i.i.i, -382
  br label %rotary_delta.exit.i.i

if.else7.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub9.i.i.i = add nsw i32 %and8.i.i.i, -127
  br label %rotary_delta.exit.i.i

rotary_delta.exit.i.i:                            ; preds = %if.else7.i.i.i, %if.then4.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ %sub6.i.i.i, %if.then4.i.i.i ], [ %sub9.i.i.i, %if.else7.i.i.i ]
  tail call fastcc void @report_rotary_event(ptr noundef %dev_id, i32 noundef 0, i32 noundef %retval.0.i.i.i) #6
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %rotary_delta.exit.i.i, %if.then.i10.if.end.i.i_crit_edge
  %enable_rotary1.i.i = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %19, i32 0, i32 11
  %27 = ptrtoint ptr %enable_rotary1.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %enable_rotary1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool5.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool5.not.i.i, label %if.end.i.i.if.end.i_crit_edge, label %if.then6.i.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  %shr.i.i = lshr i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %tobool.not.i16.i.i = icmp sgt i32 %22, -1
  br i1 %tobool.not.i16.i.i, label %if.else.i23.i.i, label %if.then.i19.i.i

if.then.i19.i.i:                                  ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and1.i17.i.i = and i32 %shr.i.i, 255
  %add.i18.i.i = add nuw nsw i32 %and1.i17.i.i, 127
  br label %rotary_delta.exit29.i.i

if.else.i23.i.i:                                  ; preds = %if.then6.i.i
  %29 = and i32 %22, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool3.not.i21.i.i = icmp eq i32 %29, 0
  %and8.i22.i.i = and i32 %shr.i.i, 255
  br i1 %tobool3.not.i21.i.i, label %if.else7.i27.i.i, label %if.then4.i25.i.i

if.then4.i25.i.i:                                 ; preds = %if.else.i23.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub6.i24.i.i = add nuw nsw i32 %and8.i22.i.i, -382
  br label %rotary_delta.exit29.i.i

if.else7.i27.i.i:                                 ; preds = %if.else.i23.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub9.i26.i.i = add nsw i32 %and8.i22.i.i, -127
  br label %rotary_delta.exit29.i.i

rotary_delta.exit29.i.i:                          ; preds = %if.else7.i27.i.i, %if.then4.i25.i.i, %if.then.i19.i.i
  %retval.0.i28.i.i = phi i32 [ %add.i18.i.i, %if.then.i19.i.i ], [ %sub6.i24.i.i, %if.then4.i25.i.i ], [ %sub9.i26.i.i, %if.else7.i27.i.i ]
  tail call fastcc void @report_rotary_event(ptr noundef %dev_id, i32 noundef 1, i32 noundef %retval.0.i28.i.i) #6
  br label %if.end.i

if.end.i:                                         ; preds = %rotary_delta.exit29.i.i, %if.end.i.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge
  %direct_key_low_active.i = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %8, i32 0, i32 5
  %30 = ptrtoint ptr %direct_key_low_active.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %direct_key_low_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool4.not.i = icmp eq i32 %31, 0
  %and7.i = and i32 %13, 255
  br i1 %tobool4.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %neg.i = xor i32 %and7.i, -1
  %direct_key_mask.i = getelementptr inbounds %struct.pxa27x_keypad, ptr %dev_id, i32 0, i32 10
  %32 = ptrtoint ptr %direct_key_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %direct_key_mask.i, align 4
  br label %if.end10.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %direct_key_mask8.i = getelementptr inbounds %struct.pxa27x_keypad, ptr %dev_id, i32 0, i32 10
  %34 = ptrtoint ptr %direct_key_mask8.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %direct_key_mask8.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else.i, %if.then5.i
  %.sink.i = phi i32 [ %35, %if.else.i ], [ %neg.i, %if.then5.i ]
  %and7.sink.i = phi i32 [ %and7.i, %if.else.i ], [ %33, %if.then5.i ]
  %and9.i = and i32 %and7.sink.i, %.sink.i
  %direct_key_state.i = getelementptr inbounds %struct.pxa27x_keypad, ptr %dev_id, i32 0, i32 9
  %36 = ptrtoint ptr %direct_key_state.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %direct_key_state.i, align 4
  %xor.i = xor i32 %37, %and9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i)
  %cmp.i = icmp eq i32 %xor.i, 0
  br i1 %cmp.i, label %if.end10.i.if.end_crit_edge, label %for.cond.preheader.i

if.end10.i.if.end_crit_edge:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.cond.preheader.i:                             ; preds = %if.end10.i
  %direct_key_num.i = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %8, i32 0, i32 3
  %38 = ptrtoint ptr %direct_key_num.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %direct_key_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp1348.i = icmp sgt i32 %39, 0
  br i1 %cmp1348.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.049.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %i.049.i
  %and14.i = and i32 %shl.i, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then16.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then16.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.i = add nuw i32 %i.049.i, 64
  tail call void @input_event(ptr noundef %10, i32 noundef 4, i32 noundef 4, i32 noundef %add.i) #6
  %arrayidx.i = getelementptr %struct.pxa27x_keypad, ptr %dev_id, i32 0, i32 5, i32 %add.i
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %41 to i32
  %42 = lshr i32 %and9.i, %i.049.i
  %43 = and i32 %42, 1
  tail call void @input_event(ptr noundef %10, i32 noundef 1, i32 noundef %conv.i, i32 noundef %43) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then16.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.049.i, 1
  %44 = ptrtoint ptr %direct_key_num.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %direct_key_num.i, align 4
  %cmp13.i = icmp slt i32 %inc.i, %45
  br i1 %cmp13.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  tail call void @input_event(ptr noundef %10, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %46 = ptrtoint ptr %direct_key_state.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and9.i, ptr %direct_key_state.i, align 4
  br label %if.end

if.end:                                           ; preds = %for.end.i, %if.end10.i.if.end_crit_edge, %clear_wakeup_event.exit.if.end_crit_edge
  %and1 = and i32 %2, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %if.end
  %47 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_id, align 4
  %input_dev2.i11 = getelementptr inbounds %struct.pxa27x_keypad, ptr %dev_id, i32 0, i32 2
  %49 = ptrtoint ptr %input_dev2.i11 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %input_dev2.i11, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %new_state.i) #6
  %51 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mmio_base, align 4
  %add.ptr.i13 = getelementptr i8, ptr %52, i32 32
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #6, !srcloc !93
  %shr.i = lshr i32 %53, 26
  %and.i = and i32 %shr.i, 31
  %54 = call ptr @memset(ptr %new_state.i, i32 0, i32 32)
  %55 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %and.i, label %if.then14.i [
    i32 0, label %if.then3.scan.i_crit_edge
    i32 1, label %if.then4.i
  ]

if.then3.scan.i_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %scan.i

if.then4.i:                                       ; preds = %if.then3
  %and5.i = and i32 %53, 15
  %shr6.i = lshr i32 %53, 4
  %and7.i14 = and i32 %shr6.i, 15
  %matrix_key_cols.i = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %48, i32 0, i32 2
  %56 = ptrtoint ptr %matrix_key_cols.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %matrix_key_cols.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and5.i, i32 %57)
  %cmp8.not.i = icmp ult i32 %and5.i, %57
  br i1 %cmp8.not.i, label %lor.lhs.false.i15, label %if.then4.i.scan.i_crit_edge

if.then4.i.scan.i_crit_edge:                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %scan.i

lor.lhs.false.i15:                                ; preds = %if.then4.i
  %matrix_key_rows.i = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %48, i32 0, i32 1
  %58 = ptrtoint ptr %matrix_key_rows.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %matrix_key_rows.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and7.i14, i32 %59)
  %cmp9.not.i = icmp ult i32 %and7.i14, %59
  br i1 %cmp9.not.i, label %if.end11.i, label %lor.lhs.false.i15.scan.i_crit_edge

lor.lhs.false.i15.scan.i_crit_edge:               ; preds = %lor.lhs.false.i15
  call void @__sanitizer_cov_trace_pc() #8
  br label %scan.i

if.end11.i:                                       ; preds = %lor.lhs.false.i15
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i16 = shl nuw nsw i32 1, %and7.i14
  %arrayidx.i17 = getelementptr [8 x i32], ptr %new_state.i, i32 0, i32 %and5.i
  %60 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %shl.i16, ptr %arrayidx.i17, align 4
  br label %scan.i

if.then14.i:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %61 = getelementptr inbounds [8 x i32], ptr %new_state.i, i32 0, i32 7
  %62 = getelementptr inbounds [8 x i32], ptr %new_state.i, i32 0, i32 6
  %63 = getelementptr inbounds [8 x i32], ptr %new_state.i, i32 0, i32 5
  %64 = getelementptr inbounds [8 x i32], ptr %new_state.i, i32 0, i32 4
  %65 = getelementptr inbounds [8 x i32], ptr %new_state.i, i32 0, i32 3
  %66 = getelementptr inbounds [8 x i32], ptr %new_state.i, i32 0, i32 2
  %67 = getelementptr inbounds [8 x i32], ptr %new_state.i, i32 0, i32 1
  %68 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmio_base, align 4
  %add.ptr16.i = getelementptr i8, ptr %69, i32 40
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #6, !srcloc !93
  %71 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mmio_base, align 4
  %add.ptr19.i = getelementptr i8, ptr %72, i32 48
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i) #6, !srcloc !93
  %74 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mmio_base, align 4
  %add.ptr22.i = getelementptr i8, ptr %75, i32 56
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i) #6, !srcloc !93
  %77 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mmio_base, align 4
  %add.ptr25.i = getelementptr i8, ptr %78, i32 64
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.i) #6, !srcloc !93
  %and27.i = and i32 %70, 255
  %80 = ptrtoint ptr %new_state.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %and27.i, ptr %new_state.i, align 4
  %shr29.i = lshr i32 %70, 16
  %and30.i = and i32 %shr29.i, 255
  %81 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %and30.i, ptr %67, align 4
  %and32.i = and i32 %73, 255
  %82 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %and32.i, ptr %66, align 4
  %shr34.i = lshr i32 %73, 16
  %and35.i = and i32 %shr34.i, 255
  %83 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %and35.i, ptr %65, align 4
  %and37.i = and i32 %76, 255
  %84 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %and37.i, ptr %64, align 4
  %shr39.i = lshr i32 %76, 16
  %and40.i = and i32 %shr39.i, 255
  %85 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %and40.i, ptr %63, align 4
  %and42.i = and i32 %79, 255
  %86 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %and42.i, ptr %62, align 4
  %shr44.i = lshr i32 %79, 16
  %and45.i = and i32 %shr44.i, 255
  %87 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %and45.i, ptr %61, align 4
  br label %scan.i

scan.i:                                           ; preds = %if.then14.i, %if.end11.i, %lor.lhs.false.i15.scan.i_crit_edge, %if.then4.i.scan.i_crit_edge, %if.then3.scan.i_crit_edge
  %matrix_key_cols48.i = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %48, i32 0, i32 2
  %88 = ptrtoint ptr %matrix_key_cols48.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %matrix_key_cols48.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp49117.not.i = icmp eq i32 %89, 0
  br i1 %cmp49117.not.i, label %scan.i.pxa27x_keypad_scan_matrix.exit_crit_edge, label %for.body.lr.ph.i

scan.i.pxa27x_keypad_scan_matrix.exit_crit_edge:  ; preds = %scan.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pxa27x_keypad_scan_matrix.exit

for.body.lr.ph.i:                                 ; preds = %scan.i
  %matrix_key_rows56.i = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %48, i32 0, i32 1
  %row_shift.i = getelementptr inbounds %struct.pxa27x_keypad, ptr %dev_id, i32 0, i32 7
  br label %for.body.i19

for.body.i19:                                     ; preds = %cleanup.i.for.body.i19_crit_edge, %for.body.lr.ph.i
  %col.0118.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc71.i, %cleanup.i.for.body.i19_crit_edge ]
  %arrayidx50.i = getelementptr %struct.pxa27x_keypad, ptr %dev_id, i32 0, i32 8, i32 %col.0118.i
  %90 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx50.i, align 4
  %arrayidx51.i = getelementptr [8 x i32], ptr %new_state.i, i32 0, i32 %col.0118.i
  %92 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx51.i, align 4
  %xor.i18 = xor i32 %93, %91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i18)
  %cmp52.i = icmp eq i32 %xor.i18, 0
  br i1 %cmp52.i, label %for.body.i19.cleanup.i_crit_edge, label %for.cond55.preheader.i

for.body.i19.cleanup.i_crit_edge:                 ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

for.cond55.preheader.i:                           ; preds = %for.body.i19
  %94 = ptrtoint ptr %matrix_key_rows56.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %matrix_key_rows56.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp57114.not.i = icmp eq i32 %95, 0
  br i1 %cmp57114.not.i, label %for.cond55.preheader.i.cleanup.i_crit_edge, label %for.cond55.preheader.i.for.body58.i_crit_edge

for.cond55.preheader.i.for.body58.i_crit_edge:    ; preds = %for.cond55.preheader.i
  br label %for.body58.i

for.cond55.preheader.i.cleanup.i_crit_edge:       ; preds = %for.cond55.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

for.body58.i:                                     ; preds = %for.inc.i23.for.body58.i_crit_edge, %for.cond55.preheader.i.for.body58.i_crit_edge
  %row.0115.i = phi i32 [ %inc.i22, %for.inc.i23.for.body58.i_crit_edge ], [ 0, %for.cond55.preheader.i.for.body58.i_crit_edge ]
  %shl59.i = shl nuw i32 1, %row.0115.i
  %and60.i = and i32 %shl59.i, %xor.i18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i)
  %cmp61.i = icmp eq i32 %and60.i, 0
  br i1 %cmp61.i, label %for.body58.i.for.inc.i23_crit_edge, label %if.end63.i

for.body58.i.for.inc.i23_crit_edge:               ; preds = %for.body58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i23

if.end63.i:                                       ; preds = %for.body58.i
  call void @__sanitizer_cov_trace_pc() #8
  %96 = ptrtoint ptr %row_shift.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %row_shift.i, align 4
  %shl64.i = shl i32 %row.0115.i, %97
  %add.i20 = add i32 %shl64.i, %col.0118.i
  tail call void @input_event(ptr noundef %50, i32 noundef 4, i32 noundef 4, i32 noundef %add.i20) #6
  %arrayidx65.i = getelementptr %struct.pxa27x_keypad, ptr %dev_id, i32 0, i32 5, i32 %add.i20
  %98 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %arrayidx65.i, align 2
  %conv.i21 = zext i16 %99 to i32
  %100 = lshr i32 %93, %row.0115.i
  %101 = and i32 %100, 1
  tail call void @input_event(ptr noundef %50, i32 noundef 1, i32 noundef %conv.i21, i32 noundef %101) #6
  br label %for.inc.i23

for.inc.i23:                                      ; preds = %if.end63.i, %for.body58.i.for.inc.i23_crit_edge
  %inc.i22 = add nuw i32 %row.0115.i, 1
  %102 = ptrtoint ptr %matrix_key_rows56.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %matrix_key_rows56.i, align 4
  %cmp57.i = icmp ult i32 %inc.i22, %103
  br i1 %cmp57.i, label %for.inc.i23.for.body58.i_crit_edge, label %for.inc.i23.cleanup.i_crit_edge

for.inc.i23.cleanup.i_crit_edge:                  ; preds = %for.inc.i23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

for.inc.i23.for.body58.i_crit_edge:               ; preds = %for.inc.i23
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body58.i

cleanup.i:                                        ; preds = %for.inc.i23.cleanup.i_crit_edge, %for.cond55.preheader.i.cleanup.i_crit_edge, %for.body.i19.cleanup.i_crit_edge
  %inc71.i = add nuw i32 %col.0118.i, 1
  %104 = ptrtoint ptr %matrix_key_cols48.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %matrix_key_cols48.i, align 4
  %cmp49.i = icmp ult i32 %inc71.i, %105
  br i1 %cmp49.i, label %cleanup.i.for.body.i19_crit_edge, label %cleanup.i.pxa27x_keypad_scan_matrix.exit_crit_edge

cleanup.i.pxa27x_keypad_scan_matrix.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pxa27x_keypad_scan_matrix.exit

cleanup.i.for.body.i19_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i19

pxa27x_keypad_scan_matrix.exit:                   ; preds = %cleanup.i.pxa27x_keypad_scan_matrix.exit_crit_edge, %scan.i.pxa27x_keypad_scan_matrix.exit_crit_edge
  tail call void @input_event(ptr noundef %50, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %matrix_key_state73.i = getelementptr inbounds %struct.pxa27x_keypad, ptr %dev_id, i32 0, i32 8
  %106 = call ptr @memcpy(ptr %matrix_key_state73.i, ptr %new_state.i, i32 32)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %new_state.i) #6
  br label %if.end4

if.end4:                                          ; preds = %pxa27x_keypad_scan_matrix.exit, %if.end.if.end4_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pxa27x_keypad_config(ptr nocapture noundef %keypad) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %keypad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %keypad, align 4
  %mmio_base = getelementptr inbounds %struct.pxa27x_keypad, ptr %keypad, i32 0, i32 3
  %2 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_base, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !93
  %matrix_key_rows = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %matrix_key_rows to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %matrix_key_rows, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %matrix_key_cols = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %matrix_key_cols to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %matrix_key_cols, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %sub = shl i32 %6, 26
  %and = add i32 %sub, 469762048
  %shl = and i32 %and, 469762048
  %sub5 = shl i32 %8, 23
  %and6 = add i32 %sub5, 58720256
  %shl7 = and i32 %and6, 58720256
  %or8 = or i32 %shl, %shl7
  %or9 = or i32 %or8, 538966016
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %kpc.0 = phi i32 [ %or9, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %enable_rotary0 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %enable_rotary0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %enable_rotary0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool10.not = icmp eq i32 %10, 0
  %direct_key_num.0 = select i1 %tobool10.not, i32 0, i32 2
  %enable_rotary1 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %enable_rotary1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %enable_rotary1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool15.not = icmp eq i32 %12, 0
  %direct_key_num.1 = select i1 %tobool15.not, i32 %direct_key_num.0, i32 4
  %direct_key_num20 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %direct_key_num20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %direct_key_num20, align 4
  %15 = tail call i32 @llvm.umax.i32(i32 %14, i32 %direct_key_num.1)
  %direct_key_mask = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %direct_key_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %direct_key_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool24.not = icmp eq i32 %17, 0
  br i1 %tobool24.not, label %if.else, label %if.end.if.end32_crit_edge

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mask.0 = select i1 %tobool10.not, i32 0, i32 3
  %or17 = or i32 %mask.0, 12
  %mask.1 = select i1 %tobool15.not, i32 %mask.0, i32 %or17
  %notmask = shl nsw i32 -1, %15
  %and30.demorgan = or i32 %notmask, %mask.1
  %and30 = xor i32 %and30.demorgan, -1
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.end.if.end32_crit_edge
  %.sink = phi i32 [ %and30, %if.else ], [ %17, %if.end.if.end32_crit_edge ]
  %18 = getelementptr inbounds %struct.pxa27x_keypad, ptr %keypad, i32 0, i32 10
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink, ptr %18, align 4
  %or13 = or i32 %kpc.0, 4
  %kpc.1 = select i1 %tobool10.not, i32 %kpc.0, i32 %or13
  %or18 = or i32 %kpc.1, 8
  %kpc.2 = select i1 %tobool15.not, i32 %kpc.1, i32 %or18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool33.not = icmp eq i32 %15, 0
  %sub35 = shl i32 %15, 6
  %and36 = add i32 %sub35, 448
  %shl37 = and i32 %and36, 448
  %or38 = or i32 %shl37, 3
  %or39 = select i1 %tobool33.not, i32 0, i32 %or38
  %kpc.3 = or i32 %kpc.2, %or39
  %or41 = or i32 %kpc.3, 16
  %20 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %or41) #6, !srcloc !94
  %22 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio_base, align 4
  %add.ptr45 = getelementptr i8, ptr %23, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 8323199) #6, !srcloc !94
  %debounce_interval = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %1, i32 0, i32 15
  %24 = ptrtoint ptr %debounce_interval to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %debounce_interval, align 4
  %26 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio_base, align 4
  %add.ptr47 = getelementptr i8, ptr %27, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %25) #6, !srcloc !94
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matrix_keypad_build_keymap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matrix_keypad_parse_properties(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @report_rotary_event(ptr nocapture noundef readonly %keypad, i32 noundef %r, i32 noundef %delta) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %input_dev = getelementptr inbounds %struct.pxa27x_keypad, ptr %keypad, i32 0, i32 2
  %0 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input_dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delta)
  %cmp = icmp eq i32 %delta, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.pxa27x_keypad, ptr %keypad, i32 0, i32 6, i32 %r
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp1 = icmp eq i32 %3, -1
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mul = shl i32 %r, 1
  %add = add i32 %mul, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %delta)
  %cmp3 = icmp slt i32 %delta, 1
  %cond = zext i1 %cmp3 to i32
  %add4 = or i32 %add, %cond
  %arrayidx5 = getelementptr %struct.pxa27x_keypad, ptr %keypad, i32 0, i32 5, i32 %add4
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx5, align 2
  tail call void @input_event(ptr noundef %1, i32 noundef 4, i32 noundef 4, i32 noundef %add4) #6
  %6 = and i16 %5, 255
  %conv6 = zext i16 %6 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %conv6, i32 noundef 1) #6
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  tail call void @input_event(ptr noundef %1, i32 noundef 4, i32 noundef 4, i32 noundef %add4) #6
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %conv6, i32 noundef 0) #6
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @input_event(ptr noundef %1, i32 noundef 2, i32 noundef %3, i32 noundef %delta) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %if.then2
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa27x_keypad_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %device_may_wakeup.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %if.then

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr inbounds %struct.pxa27x_keypad, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 1) #6
  br label %if.end

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %clk = getelementptr inbounds %struct.pxa27x_keypad, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %8) #6
  tail call void @clk_unprepare(ptr noundef %8) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa27x_keypad_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input_dev1 = getelementptr inbounds %struct.pxa27x_keypad, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %input_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input_dev1, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %device_may_wakeup.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %if.then

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr inbounds %struct.pxa27x_keypad, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 0) #6
  br label %if.end11

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %call5 = tail call zeroext i1 @input_device_enabled(ptr noundef %3) #6
  br i1 %call5, label %if.then6, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then6:                                         ; preds = %if.else
  %clk = getelementptr inbounds %struct.pxa27x_keypad, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk, align 4
  %call.i19 = tail call i32 @clk_prepare(ptr noundef %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool.not.i20 = icmp eq i32 %call.i19, 0
  br i1 %tobool.not.i20, label %if.end.i, label %if.then6.if.end9_crit_edge

if.then6.if.end9_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.end.i:                                         ; preds = %if.then6
  %call1.i = tail call i32 @clk_enable(ptr noundef %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then8, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %10) #6
  br label %if.end9

if.then8:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @pxa27x_keypad_config(ptr noundef %1)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.then3.i, %if.then6.if.end9_crit_edge, %if.else.if.end9_crit_edge
  %ret.0 = phi i32 [ 0, %if.then8 ], [ 0, %if.else.if.end9_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i19, %if.then6.if.end9_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  br label %if.end11

if.end11:                                         ; preds = %if.end9, %if.then
  %ret.1 = phi i32 [ 0, %if.then ], [ %ret.0, %if.end9 ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !59, !60, !61, !63, !64, !65, !66, !68, !70, !72, !74, !76, !78, !80}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @__initcall__kmod_pxa27x_keypad__227_836_pxa27x_keypad_driver_init6, !1, !"__initcall__kmod_pxa27x_keypad__227_836_pxa27x_keypad_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/pxa27x_keypad.c", i32 836, i32 1}
!2 = !{ptr @__exitcall_pxa27x_keypad_driver_exit, !1, !"__exitcall_pxa27x_keypad_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description228, !4, !"__UNIQUE_ID_description228", i1 false, i1 false}
!4 = !{!"../drivers/input/keyboard/pxa27x_keypad.c", i32 838, i32 1}
!5 = !{ptr @__UNIQUE_ID_file229, !6, !"__UNIQUE_ID_file229", i1 false, i1 false}
!6 = !{!"../drivers/input/keyboard/pxa27x_keypad.c", i32 839, i32 1}
!7 = !{ptr @__UNIQUE_ID_license230, !6, !"__UNIQUE_ID_license230", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_alias231, !9, !"__UNIQUE_ID_alias231", i1 false, i1 false}
!9 = !{!"../drivers/input/keyboard/pxa27x_keypad.c", i32 841, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/keyboard/pxa27x_keypad.c", i32 831, i32 11}
!12 = !{ptr @pxa27x_keypad_driver, !13, !"pxa27x_keypad_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/keyboard/pxa27x_keypad.c", i32 828, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/keyboard/pxa27x_keypad.c", i32 735, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @pxa27x_keypad_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @pxa27x_keypad_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/keyboard/pxa27x_keypad.c", i32 758, i32 3}
!24 = !{ptr @pxa27x_keypad_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @pxa27x_keypad_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/keyboard/pxa27x_keypad.c", i32 789, i32 3}
!28 = !{ptr @pxa27x_keypad_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @pxa27x_keypad_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/keyboard/pxa27x_keypad.c", i32 803, i32 3}
!32 = !{ptr @pxa27x_keypad_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @pxa27x_keypad_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/keyboard/pxa27x_keypad.c", i32 810, i32 3}
!36 = !{ptr @pxa27x_keypad_probe._entry.15, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @pxa27x_keypad_probe._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/keyboard/pxa27x_keypad.c", i32 291, i32 3}
!40 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @pxa27x_keypad_build_keycode_from_dt._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @pxa27x_keypad_build_keycode_from_dt._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/keyboard/pxa27x_keypad.c", i32 297, i32 3}
!45 = !{ptr @pxa27x_keypad_build_keycode_from_dt._entry.20, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @pxa27x_keypad_build_keycode_from_dt._entry_ptr.22, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/keyboard/pxa27x_keypad.c", i32 303, i32 3}
!49 = !{ptr @pxa27x_keypad_build_keycode_from_dt._entry.23, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @pxa27x_keypad_build_keycode_from_dt._entry_ptr.25, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/input/keyboard/pxa27x_keypad.c", i32 309, i32 3}
!53 = !{ptr @pxa27x_keypad_build_keycode_from_dt._entry.26, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @pxa27x_keypad_build_keycode_from_dt._entry_ptr.28, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/keyboard/pxa27x_keypad.c", i32 313, i32 35}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/input/keyboard/pxa27x_keypad.c", i32 316, i32 3}
!59 = !{ptr @pxa27x_keypad_build_keycode_from_dt._entry.30, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @pxa27x_keypad_build_keycode_from_dt._entry_ptr.32, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/input/keyboard/pxa27x_keypad.c", i32 131, i32 3}
!63 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @pxa27x_keypad_matrix_key_parse_dt._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @pxa27x_keypad_matrix_key_parse_dt._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/input/keyboard/pxa27x_keypad.c", i32 160, i32 35}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/input/keyboard/pxa27x_keypad.c", i32 170, i32 35}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/input/keyboard/pxa27x_keypad.c", i32 184, i32 6}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/input/keyboard/pxa27x_keypad.c", i32 186, i32 29}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/input/keyboard/pxa27x_keypad.c", i32 215, i32 4}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/input/keyboard/pxa27x_keypad.c", i32 215, i32 23}
!78 = !{ptr @pxa27x_keypad_dt_match, !79, !"pxa27x_keypad_dt_match", i1 false, i1 false}
!79 = !{!"../drivers/input/keyboard/pxa27x_keypad.c", i32 821, i32 34}
!80 = !{ptr @pxa27x_keypad_pm_ops, !81, !"pxa27x_keypad_pm_ops", i1 false, i1 false}
!81 = !{!"../drivers/input/keyboard/pxa27x_keypad.c", i32 711, i32 8}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{!"auto-init"}
!92 = !{i32 0, i32 33}
!93 = !{i64 4636919}
!94 = !{i64 4636501}
