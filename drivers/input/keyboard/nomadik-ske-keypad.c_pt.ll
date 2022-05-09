; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/nomadik-ske-keypad.c_pt.bc'
source_filename = "../drivers/input/keyboard/nomadik-ske-keypad.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ske_keypad = type { i32, ptr, ptr, ptr, [64 x i16], ptr, ptr, %struct.spinlock }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.ske_keypad_platform_data = type { ptr, ptr, ptr, i8, i8, i8, i8, i8 }

@__initcall__kmod_nomadik_ske_keypad__227_432_ske_keypad_driver_init6 = internal global ptr @ske_keypad_driver_init, section ".initcall6.init", align 4
@ske_keypad_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr @ske_keypad_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.45, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ske_keypad_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ske_keypad_driver_exit = internal global ptr @ske_keypad_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file228 = internal constant [66 x i8] c"nomadik_ske_keypad.file=drivers/input/keyboard/nomadik-ske-keypad\00", section ".modinfo", align 1
@__UNIQUE_ID_license229 = internal constant [34 x i8] c"nomadik_ske_keypad.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author230 = internal constant [116 x i8] c"nomadik_ske_keypad.author=Naveen Kumar <naveen.gaddipati@stericsson.com> / Sundar Iyer <sundar.iyer@stericsson.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [72 x i8] c"nomadik_ske_keypad.description=Nomadik Scroll-Key-Encoder Keypad Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias232 = internal constant [53 x i8] c"nomadik_ske_keypad.alias=platform:nomadik-ske-keypad\00", section ".modinfo", align 1
@ske_keypad_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 235, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid keypad platform data\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ske_keypad_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/input/keyboard/nomadik-ske-keypad.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ske_keypad_probe._entry_ptr = internal global ptr @ske_keypad_probe._entry, section ".printk_index", align 4
@ske_keypad_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 245, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"missing platform resources\0A\00", [36 x i8] zeroinitializer }, align 32
@ske_keypad_probe._entry_ptr.7 = internal global ptr @ske_keypad_probe._entry.5, section ".printk_index", align 4
@ske_keypad_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 252, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to allocate keypad memory\0A\00", [62 x i8] zeroinitializer }, align 32
@ske_keypad_probe._entry_ptr.10 = internal global ptr @ske_keypad_probe._entry.8, section ".printk_index", align 4
@ske_keypad_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&keypad->ske_keypad_lock\00", [39 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@ske_keypad_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 263, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to request I/O memory\0A\00", [34 x i8] zeroinitializer }, align 32
@ske_keypad_probe._entry_ptr.14 = internal global ptr @ske_keypad_probe._entry.12, section ".printk_index", align 4
@ske_keypad_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 270, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to remap I/O memory\0A\00", [36 x i8] zeroinitializer }, align 32
@ske_keypad_probe._entry_ptr.17 = internal global ptr @ske_keypad_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apb_pclk\00", [23 x i8] zeroinitializer }, align 32
@ske_keypad_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 277, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to get pclk\0A\00", [44 x i8] zeroinitializer }, align 32
@ske_keypad_probe._entry_ptr.21 = internal global ptr @ske_keypad_probe._entry.19, section ".printk_index", align 4
@ske_keypad_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.1, ptr @.str.2, i32 284, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to get clk\0A\00", [45 x i8] zeroinitializer }, align 32
@ske_keypad_probe._entry_ptr.24 = internal global ptr @ske_keypad_probe._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ux500-ske-keypad\00", [47 x i8] zeroinitializer }, align 32
@ske_keypad_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.1, ptr @.str.2, i32 297, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to build keymap\0A\00", [40 x i8] zeroinitializer }, align 32
@ske_keypad_probe._entry_ptr.28 = internal global ptr @ske_keypad_probe._entry.26, section ".printk_index", align 4
@ske_keypad_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.1, ptr @.str.2, i32 307, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to prepare/enable pclk\0A\00", [33 x i8] zeroinitializer }, align 32
@ske_keypad_probe._entry_ptr.31 = internal global ptr @ske_keypad_probe._entry.29, section ".printk_index", align 4
@ske_keypad_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.1, ptr @.str.2, i32 313, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to prepare/enable clk\0A\00", [34 x i8] zeroinitializer }, align 32
@ske_keypad_probe._entry_ptr.34 = internal global ptr @ske_keypad_probe._entry.32, section ".printk_index", align 4
@ske_keypad_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.1, ptr @.str.2, i32 324, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unable to init keypad hardware\0A\00", [32 x i8] zeroinitializer }, align 32
@ske_keypad_probe._entry_ptr.37 = internal global ptr @ske_keypad_probe._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ske-keypad\00", [21 x i8] zeroinitializer }, align 32
@ske_keypad_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.1, ptr @.str.2, i32 331, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"allocate irq %d failed\0A\00", [40 x i8] zeroinitializer }, align 32
@ske_keypad_probe._entry_ptr.41 = internal global ptr @ske_keypad_probe._entry.39, section ".printk_index", align 4
@ske_keypad_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.1, ptr @.str.2, i32 338, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unable to register input device: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ske_keypad_probe._entry_ptr.44 = internal global ptr @ske_keypad_probe._entry.42, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nmk-ske-keypad\00", [17 x i8] zeroinitializer }, align 32
@ske_keypad_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ske_keypad_suspend, ptr @ske_keypad_resume, ptr @ske_keypad_suspend, ptr @ske_keypad_resume, ptr @ske_keypad_suspend, ptr @ske_keypad_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.46 = private unnamed_addr constant [18 x i8] c"ske_keypad_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 424, i32 31 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 235, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 245, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 252, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 260, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 263, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 270, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 275, i32 37 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 277, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 284, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 290, i32 16 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 297, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 307, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 313, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 324, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 329, i32 24 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 331, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 337, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 426, i32 11 }
@___asan_gen_.157 = private unnamed_addr constant [22 x i8] c"ske_keypad_dev_pm_ops\00", align 1
@___asan_gen_.158 = private constant [47 x i8] c"../drivers/input/keyboard/nomadik-ske-keypad.c\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 421, i32 8 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file228, ptr @__UNIQUE_ID_license229, ptr @__exitcall_ske_keypad_driver_exit, ptr @__initcall__kmod_nomadik_ske_keypad__227_432_ske_keypad_driver_init6, ptr @ske_keypad_driver_exit, ptr @ske_keypad_probe._entry, ptr @ske_keypad_probe._entry.12, ptr @ske_keypad_probe._entry.15, ptr @ske_keypad_probe._entry.19, ptr @ske_keypad_probe._entry.22, ptr @ske_keypad_probe._entry.26, ptr @ske_keypad_probe._entry.29, ptr @ske_keypad_probe._entry.32, ptr @ske_keypad_probe._entry.35, ptr @ske_keypad_probe._entry.39, ptr @ske_keypad_probe._entry.42, ptr @ske_keypad_probe._entry.5, ptr @ske_keypad_probe._entry.8, ptr @ske_keypad_probe._entry_ptr, ptr @ske_keypad_probe._entry_ptr.10, ptr @ske_keypad_probe._entry_ptr.14, ptr @ske_keypad_probe._entry_ptr.17, ptr @ske_keypad_probe._entry_ptr.21, ptr @ske_keypad_probe._entry_ptr.24, ptr @ske_keypad_probe._entry_ptr.28, ptr @ske_keypad_probe._entry_ptr.31, ptr @ske_keypad_probe._entry_ptr.34, ptr @ske_keypad_probe._entry_ptr.37, ptr @ske_keypad_probe._entry_ptr.41, ptr @ske_keypad_probe._entry_ptr.44, ptr @ske_keypad_probe._entry_ptr.7, ptr @ske_keypad_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @ske_keypad_probe.__key, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @ske_keypad_dev_pm_ops], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ske_keypad_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ske_keypad_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ske_keypad_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ske_keypad_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ske_keypad_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ske_keypad_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ske_keypad_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ske_keypad_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ske_keypad_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ske_keypad_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ske_keypad_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ske_keypad_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ske_keypad_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ske_keypad_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ske_keypad_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ske_keypad_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ske_keypad_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @ske_keypad_driver, ptr noundef nonnull @ske_keypad_probe, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ske_keypad_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @ske_keypad_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ske_keypad_probe(ptr noundef %pdev) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end10, label %if.end12

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 196) #11
  %call14 = tail call ptr @input_allocate_device() #7
  %tobool15.not = icmp eq ptr %call7.i.i, null
  %tobool16.not = icmp eq ptr %call14, null
  %or.cond = select i1 %tobool15.not, i1 true, i1 %tobool16.not
  br i1 %or.cond, label %do.end20, label %if.end22

do.end20:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #10
  br label %err_free_mem

if.end22:                                         ; preds = %if.end12
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call2, ptr %call7.i.i, align 8
  %board = getelementptr inbounds %struct.ske_keypad, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %board to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %board, align 4
  %input24 = getelementptr inbounds %struct.ske_keypad, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %input24 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call14, ptr %input24, align 8
  %ske_keypad_lock = getelementptr inbounds %struct.ske_keypad, ptr %call7.i.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %ske_keypad_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @ske_keypad_probe.__key, i16 noundef signext 3) #7
  %6 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call5, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call5, i32 0, i32 1
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %7
  %add.i = add i32 %sub.i, %9
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %call30 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %7, i32 noundef %add.i, ptr noundef %11, i32 noundef 0) #7
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %do.end35, label %if.end37

do.end35:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #10
  br label %err_free_mem

if.end37:                                         ; preds = %if.end22
  %12 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call5, align 4
  %14 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end.i, align 4
  %sub.i237 = sub i32 1, %13
  %add.i238 = add i32 %sub.i237, %15
  %call40 = tail call ptr @ioremap(i32 noundef %13, i32 noundef %add.i238) #7
  %reg_base = getelementptr inbounds %struct.ske_keypad, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call40, ptr %reg_base, align 4
  %tobool42.not = icmp eq ptr %call40, null
  br i1 %tobool42.not, label %do.end46, label %if.end48

do.end46:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #10
  br label %err_free_mem_region

if.end48:                                         ; preds = %if.end37
  %call50 = tail call ptr @clk_get(ptr noundef %dev, ptr noundef nonnull @.str.18) #7
  %pclk = getelementptr inbounds %struct.ske_keypad, ptr %call7.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call50, ptr %pclk, align 4
  %cmp.i = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end56, label %if.end60

do.end56:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #10
  %18 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pclk, align 4
  %20 = ptrtoint ptr %19 to i32
  br label %err_iounmap

if.end60:                                         ; preds = %if.end48
  %call62 = tail call ptr @clk_get(ptr noundef %dev, ptr noundef null) #7
  %clk = getelementptr inbounds %struct.ske_keypad, ptr %call7.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call62, ptr %clk, align 8
  %cmp.i239 = icmp ugt ptr %call62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i239, label %do.end68, label %if.end72

do.end68:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #10
  %22 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk, align 8
  %24 = ptrtoint ptr %23 to i32
  br label %err_pclk

if.end72:                                         ; preds = %if.end60
  %id = getelementptr inbounds %struct.input_dev, ptr %call14, i32 0, i32 3
  %25 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 25, ptr %id, align 4
  %26 = ptrtoint ptr %call14 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.25, ptr %call14, align 8
  %parent = getelementptr inbounds %struct.input_dev, ptr %call14, i32 0, i32 40, i32 1
  %27 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dev, ptr %parent, align 8
  %keymap_data = getelementptr inbounds %struct.ske_keypad_platform_data, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %keymap_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %keymap_data, align 4
  %keymap = getelementptr inbounds %struct.ske_keypad, ptr %call7.i.i, i32 0, i32 4
  %call76 = tail call i32 @matrix_keypad_build_keymap(ptr noundef %29, ptr noundef null, i32 noundef 8, i32 noundef 8, ptr noundef %keymap, ptr noundef nonnull %call14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end83, label %do.end81

do.end81:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #10
  br label %err_clk

if.end83:                                         ; preds = %if.end72
  tail call void @input_set_capability(ptr noundef nonnull %call14, i32 noundef 4, i32 noundef 4) #7
  %no_autorepeat = getelementptr inbounds %struct.ske_keypad_platform_data, ptr %1, i32 0, i32 6
  %30 = ptrtoint ptr %no_autorepeat to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %no_autorepeat, align 1, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool84.not = icmp eq i8 %31, 0
  br i1 %tobool84.not, label %if.then85, label %if.end83.if.end87_crit_edge

if.end83.if.end87_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

if.then85:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call14, i32 0, i32 5
  %32 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %evbit, align 4
  %or.i = or i32 %33, 1048576
  store i32 %or.i, ptr %evbit, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %if.end83.if.end87_crit_edge
  %34 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pclk, align 4
  %call89 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %35)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end96, label %do.end94

do.end94:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #10
  br label %err_clk

if.end96:                                         ; preds = %if.end87
  %36 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %clk, align 8
  %call98 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %37)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end105, label %do.end103

do.end103:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #10
  br label %err_pclk_disable

if.end105:                                        ; preds = %if.end96
  %38 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %board, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %tobool107.not = icmp eq ptr %41, null
  br i1 %tobool107.not, label %if.end105.if.end112_crit_edge, label %if.then108

if.end105.if.end112_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112

if.then108:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  %call111 = tail call i32 %41() #7
  br label %if.end112

if.end112:                                        ; preds = %if.then108, %if.end105.if.end112_crit_edge
  %call113 = tail call fastcc i32 @ske_keypad_chip_init(ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end120, label %do.end118

do.end118:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36) #10
  br label %err_clk_disable

if.end120:                                        ; preds = %if.end112
  %42 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %call7.i.i, align 8
  %call122 = tail call i32 @request_threaded_irq(i32 noundef %43, ptr noundef null, ptr noundef nonnull @ske_keypad_irq, i32 noundef 8192, ptr noundef nonnull @.str.38, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.end130, label %do.end127

do.end127:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %call7.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %45) #10
  br label %err_clk_disable

if.end130:                                        ; preds = %if.end120
  %call131 = tail call i32 @input_register_device(ptr noundef nonnull %call14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.end138, label %do.end136

do.end136:                                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43, i32 noundef %call131) #10
  %46 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %call7.i.i, align 8
  %call145 = tail call ptr @free_irq(i32 noundef %47, ptr noundef nonnull %call7.i.i) #7
  br label %err_clk_disable

if.end138:                                        ; preds = %if.end130
  %wakeup_enable = getelementptr inbounds %struct.ske_keypad_platform_data, ptr %1, i32 0, i32 7
  %48 = ptrtoint ptr %wakeup_enable to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %wakeup_enable, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool139.not = icmp eq i8 %49, 0
  br i1 %tobool139.not, label %if.end138.if.end143_crit_edge, label %if.then140

if.end138.if.end143_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end143

if.then140:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  %call142 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #7
  br label %if.end143

if.end143:                                        ; preds = %if.then140, %if.end138.if.end143_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %50 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_clk_disable:                                  ; preds = %do.end136, %do.end127, %do.end118
  %error.0 = phi i32 [ %call113, %do.end118 ], [ %call122, %do.end127 ], [ %call131, %do.end136 ]
  %51 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %52) #7
  tail call void @clk_unprepare(ptr noundef %52) #7
  br label %err_pclk_disable

err_pclk_disable:                                 ; preds = %err_clk_disable, %do.end103
  %error.1 = phi i32 [ %call98, %do.end103 ], [ %error.0, %err_clk_disable ]
  %53 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %54) #7
  tail call void @clk_unprepare(ptr noundef %54) #7
  br label %err_clk

err_clk:                                          ; preds = %err_pclk_disable, %do.end94, %do.end81
  %error.2 = phi i32 [ %call76, %do.end81 ], [ %call89, %do.end94 ], [ %error.1, %err_pclk_disable ]
  %55 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %clk, align 8
  tail call void @clk_put(ptr noundef %56) #7
  br label %err_pclk

err_pclk:                                         ; preds = %err_clk, %do.end68
  %error.3 = phi i32 [ %24, %do.end68 ], [ %error.2, %err_clk ]
  %57 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pclk, align 4
  tail call void @clk_put(ptr noundef %58) #7
  br label %err_iounmap

err_iounmap:                                      ; preds = %err_pclk, %do.end56
  %error.4 = phi i32 [ %20, %do.end56 ], [ %error.3, %err_pclk ]
  %59 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reg_base, align 4
  tail call void @iounmap(ptr noundef %60) #7
  br label %err_free_mem_region

err_free_mem_region:                              ; preds = %err_iounmap, %do.end46
  %error.5 = phi i32 [ %error.4, %err_iounmap ], [ -6, %do.end46 ]
  %61 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %call5, align 4
  %63 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %end.i, align 4
  %sub.i241 = sub i32 1, %62
  %add.i242 = add i32 %sub.i241, %64
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %62, i32 noundef %add.i242) #7
  br label %err_free_mem

err_free_mem:                                     ; preds = %err_free_mem_region, %do.end35, %do.end20
  %error.6 = phi i32 [ %error.5, %err_free_mem_region ], [ -16, %do.end35 ], [ -12, %do.end20 ]
  tail call void @input_free_device(ptr noundef %call14) #7
  tail call void @kfree(ptr noundef %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err_free_mem, %if.end143, %do.end10, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %error.6, %err_free_mem ], [ 0, %if.end143 ], [ -22, %do.end10 ], [ -22, %do.end ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matrix_keypad_build_keymap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #3 align 64 {
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

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ske_keypad_chip_init(ptr noundef %keypad) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %board = getelementptr inbounds %struct.ske_keypad, ptr %keypad, i32 0, i32 3
  %0 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board, align 4
  %debounce_ms = getelementptr inbounds %struct.ske_keypad_platform_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %debounce_ms to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %debounce_ms, align 2
  %reg_base = getelementptr inbounds %struct.ske_keypad, ptr %keypad, i32 0, i32 1
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 4
  %add.ptr52 = getelementptr i8, ptr %5, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not53 = icmp eq i32 %6, 0
  br i1 %cmp.not53, label %entry.if.end_crit_edge, label %land.rhs.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs.preheader:                               ; preds = %entry
  %conv = zext i8 %3 to i32
  br label %land.rhs

land.rhs:                                         ; preds = %do.end.land.rhs_crit_edge, %land.rhs.preheader
  %timeout.054 = phi i32 [ %dec, %do.end.land.rhs_crit_edge ], [ %conv, %land.rhs.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.054)
  %tobool.not = icmp eq i32 %timeout.054, 0
  br i1 %tobool.not, label %land.rhs.cleanup_crit_edge, label %do.end

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %land.rhs
  %dec = add nsw i32 %timeout.054, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !95
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !96
  %7 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 20
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  %cmp.not = icmp eq i32 %9, 0
  br i1 %cmp.not, label %do.end.if.end_crit_edge, label %do.end.land.rhs_crit_edge

do.end.land.rhs_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.end.if.end_crit_edge, %entry.if.end_crit_edge
  %ske_keypad_lock = getelementptr inbounds %struct.ske_keypad, ptr %keypad, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %ske_keypad_lock) #7
  %10 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base, align 4
  %add.ptr14 = getelementptr i8, ptr %11, i32 12
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #7, !srcloc !93
  %13 = lshr i32 %12, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %14 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %board, align 4
  %debounce_ms19 = getelementptr inbounds %struct.ske_keypad_platform_data, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %debounce_ms19 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %debounce_ms19, align 2
  %conv20 = zext i8 %17 to i32
  %18 = mul nuw nsw i32 %conv20, 250
  %shl = and i32 %18, 65280
  %or = or i32 %shl, %13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  tail call void @arm_heavy_mb() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %or)
  %20 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_base, align 4
  %add.ptr25 = getelementptr i8, ptr %21, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %19) #7, !srcloc !99
  tail call void @_raw_spin_unlock(ptr noundef %ske_keypad_lock) #7
  tail call fastcc void @ske_keypad_set_bits(ptr noundef %keypad, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 64)
  %22 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %board, align 4
  %kcol = getelementptr inbounds %struct.ske_keypad_platform_data, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %kcol to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %kcol, align 1
  %sub = shl i8 %25, 3
  %shl29 = add i8 %sub, -8
  tail call fastcc void @ske_keypad_set_bits(ptr noundef %keypad, i16 noundef zeroext 0, i8 noundef zeroext 56, i8 noundef zeroext %shl29)
  tail call fastcc void @ske_keypad_set_bits(ptr noundef %keypad, i16 noundef zeroext 28, i8 noundef zeroext 0, i8 noundef zeroext 12)
  tail call fastcc void @ske_keypad_set_bits(ptr noundef %keypad, i16 noundef zeroext 16, i8 noundef zeroext 0, i8 noundef zeroext 4)
  tail call fastcc void @ske_keypad_set_bits(ptr noundef %keypad, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 4)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ske_keypad_irq(i32 noundef %irq, ptr noundef %dev_id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %board = getelementptr inbounds %struct.ske_keypad, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board, align 4
  %debounce_ms = getelementptr inbounds %struct.ske_keypad_platform_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %debounce_ms to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %debounce_ms, align 2
  %conv = zext i8 %3 to i32
  %ske_keypad_lock.i = getelementptr inbounds %struct.ske_keypad, ptr %dev_id, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %ske_keypad_lock.i) #7
  %reg_base.i = getelementptr inbounds %struct.ske_keypad, ptr %dev_id, i32 0, i32 1
  %4 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  %7 = and i32 %6, 83886079
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %7) #7, !srcloc !99
  tail call void @_raw_spin_unlock(ptr noundef %ske_keypad_lock.i) #7
  tail call void @_raw_spin_lock(ptr noundef %ske_keypad_lock.i) #7
  %10 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %11, i32 28
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  %13 = or i32 %12, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_base.i, align 4
  %add.ptr6.i34 = getelementptr i8, ptr %15, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i34, i32 %13) #7, !srcloc !99
  tail call void @_raw_spin_unlock(ptr noundef %ske_keypad_lock.i) #7
  %16 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_base.i, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %tobool.not42 = icmp sgt i32 %18, -1
  br i1 %tobool.not42, label %entry.while.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

land.rhs:                                         ; preds = %do.end.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %timeout.043 = phi i32 [ %dec, %do.end.land.rhs_crit_edge ], [ %conv, %entry.land.rhs_crit_edge ]
  %dec = add i32 %timeout.043, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %land.rhs.while.end_crit_edge, label %do.end

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.end:                                           ; preds = %land.rhs
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !104
  %19 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_base.i, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  %tobool.not = icmp sgt i32 %21, -1
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.land.rhs_crit_edge

do.end.land.rhs_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %timeout.1 = phi i32 [ %conv, %entry.while.end_crit_edge ], [ %dec, %do.end.while.end_crit_edge ], [ 0, %land.rhs.while.end_crit_edge ]
  %22 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i36 = getelementptr i8, ptr %23, i32 32
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36) #7, !srcloc !93
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %while.end.for.inc.i_crit_edge, label %if.end.i

while.end.for.inc.i_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %while.end
  %conv.i = trunc i32 %25 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i)
  %tobool3.not.i = icmp eq i8 %conv.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then4.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ske_keypad_report(ptr noundef %dev_id, i8 noundef zeroext %conv.i, i32 noundef 0) #7
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i.if.end6.i_crit_edge
  %and7.i = lshr i32 %25, 8
  %conv8.i = trunc i32 %and7.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv8.i)
  %tobool9.not.i = icmp eq i8 %conv8.i, 0
  br i1 %tobool9.not.i, label %if.end6.i.for.inc.i_crit_edge, label %if.then10.i

if.end6.i.for.inc.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then10.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ske_keypad_report(ptr noundef %dev_id, i8 noundef zeroext %conv8.i, i32 noundef 1) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then10.i, %if.end6.i.for.inc.i_crit_edge, %while.end.for.inc.i_crit_edge
  %26 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_base.i, align 4
  %add.ptr1.1.i = getelementptr i8, ptr %27, i32 36
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.1.i) #7, !srcloc !93
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.1.i = icmp eq i32 %28, 0
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

if.end.1.i:                                       ; preds = %for.inc.i
  %conv.1.i = trunc i32 %29 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.1.i)
  %tobool3.not.1.i = icmp eq i8 %conv.1.i, 0
  br i1 %tobool3.not.1.i, label %if.end.1.i.if.end6.1.i_crit_edge, label %if.then4.1.i

if.end.1.i.if.end6.1.i_crit_edge:                 ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.1.i

if.then4.1.i:                                     ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ske_keypad_report(ptr noundef %dev_id, i8 noundef zeroext %conv.1.i, i32 noundef 2) #7
  br label %if.end6.1.i

if.end6.1.i:                                      ; preds = %if.then4.1.i, %if.end.1.i.if.end6.1.i_crit_edge
  %and7.1.i = lshr i32 %29, 8
  %conv8.1.i = trunc i32 %and7.1.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv8.1.i)
  %tobool9.not.1.i = icmp eq i8 %conv8.1.i, 0
  br i1 %tobool9.not.1.i, label %if.end6.1.i.for.inc.1.i_crit_edge, label %if.then10.1.i

if.end6.1.i.for.inc.1.i_crit_edge:                ; preds = %if.end6.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

if.then10.1.i:                                    ; preds = %if.end6.1.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ske_keypad_report(ptr noundef %dev_id, i8 noundef zeroext %conv8.1.i, i32 noundef 3) #7
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then10.1.i, %if.end6.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %30 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_base.i, align 4
  %add.ptr1.2.i = getelementptr i8, ptr %31, i32 40
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.2.i) #7, !srcloc !93
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.2.i = icmp eq i32 %32, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

if.end.2.i:                                       ; preds = %for.inc.1.i
  %conv.2.i = trunc i32 %33 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.2.i)
  %tobool3.not.2.i = icmp eq i8 %conv.2.i, 0
  br i1 %tobool3.not.2.i, label %if.end.2.i.if.end6.2.i_crit_edge, label %if.then4.2.i

if.end.2.i.if.end6.2.i_crit_edge:                 ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.2.i

if.then4.2.i:                                     ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ske_keypad_report(ptr noundef %dev_id, i8 noundef zeroext %conv.2.i, i32 noundef 4) #7
  br label %if.end6.2.i

if.end6.2.i:                                      ; preds = %if.then4.2.i, %if.end.2.i.if.end6.2.i_crit_edge
  %and7.2.i = lshr i32 %33, 8
  %conv8.2.i = trunc i32 %and7.2.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv8.2.i)
  %tobool9.not.2.i = icmp eq i8 %conv8.2.i, 0
  br i1 %tobool9.not.2.i, label %if.end6.2.i.for.inc.2.i_crit_edge, label %if.then10.2.i

if.end6.2.i.for.inc.2.i_crit_edge:                ; preds = %if.end6.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

if.then10.2.i:                                    ; preds = %if.end6.2.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ske_keypad_report(ptr noundef %dev_id, i8 noundef zeroext %conv8.2.i, i32 noundef 5) #7
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then10.2.i, %if.end6.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %34 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg_base.i, align 4
  %add.ptr1.3.i = getelementptr i8, ptr %35, i32 44
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.3.i) #7, !srcloc !93
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.3.i = icmp eq i32 %36, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.ske_keypad_read_data.exit_crit_edge, label %if.end.3.i

for.inc.2.i.ske_keypad_read_data.exit_crit_edge:  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ske_keypad_read_data.exit

if.end.3.i:                                       ; preds = %for.inc.2.i
  %conv.3.i = trunc i32 %37 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.3.i)
  %tobool3.not.3.i = icmp eq i8 %conv.3.i, 0
  br i1 %tobool3.not.3.i, label %if.end.3.i.if.end6.3.i_crit_edge, label %if.then4.3.i

if.end.3.i.if.end6.3.i_crit_edge:                 ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.3.i

if.then4.3.i:                                     ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ske_keypad_report(ptr noundef %dev_id, i8 noundef zeroext %conv.3.i, i32 noundef 6) #7
  br label %if.end6.3.i

if.end6.3.i:                                      ; preds = %if.then4.3.i, %if.end.3.i.if.end6.3.i_crit_edge
  %and7.3.i = lshr i32 %37, 8
  %conv8.3.i = trunc i32 %and7.3.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv8.3.i)
  %tobool9.not.3.i = icmp eq i8 %conv8.3.i, 0
  br i1 %tobool9.not.3.i, label %if.end6.3.i.ske_keypad_read_data.exit_crit_edge, label %if.then10.3.i

if.end6.3.i.ske_keypad_read_data.exit_crit_edge:  ; preds = %if.end6.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ske_keypad_read_data.exit

if.then10.3.i:                                    ; preds = %if.end6.3.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ske_keypad_report(ptr noundef %dev_id, i8 noundef zeroext %conv8.3.i, i32 noundef 7) #7
  br label %ske_keypad_read_data.exit

ske_keypad_read_data.exit:                        ; preds = %if.then10.3.i, %if.end6.3.i.ske_keypad_read_data.exit_crit_edge, %for.inc.2.i.ske_keypad_read_data.exit_crit_edge
  %38 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_base.i, align 4
  %add.ptr1345 = getelementptr i8, ptr %39, i32 20
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1345) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool17.not46 = icmp eq i32 %40, 0
  br i1 %tobool17.not46, label %ske_keypad_read_data.exit.while.end23_crit_edge, label %ske_keypad_read_data.exit.land.rhs18_crit_edge

ske_keypad_read_data.exit.land.rhs18_crit_edge:   ; preds = %ske_keypad_read_data.exit
  br label %land.rhs18

ske_keypad_read_data.exit.while.end23_crit_edge:  ; preds = %ske_keypad_read_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end23

land.rhs18:                                       ; preds = %while.body22.land.rhs18_crit_edge, %ske_keypad_read_data.exit.land.rhs18_crit_edge
  %timeout.247 = phi i32 [ %dec19, %while.body22.land.rhs18_crit_edge ], [ %timeout.1, %ske_keypad_read_data.exit.land.rhs18_crit_edge ]
  %dec19 = add i32 %timeout.247, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec19)
  %tobool20.not = icmp eq i32 %dec19, 0
  br i1 %tobool20.not, label %land.rhs18.while.end23_crit_edge, label %while.body22

land.rhs18.while.end23_crit_edge:                 ; preds = %land.rhs18
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end23

while.body22:                                     ; preds = %land.rhs18
  tail call void @msleep(i32 noundef 10) #7
  %41 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg_base.i, align 4
  %add.ptr13 = getelementptr i8, ptr %42, i32 20
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  %tobool17.not = icmp eq i32 %43, 0
  br i1 %tobool17.not, label %while.body22.while.end23_crit_edge, label %while.body22.land.rhs18_crit_edge

while.body22.land.rhs18_crit_edge:                ; preds = %while.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs18

while.body22.while.end23_crit_edge:               ; preds = %while.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end23

while.end23:                                      ; preds = %while.body22.while.end23_crit_edge, %land.rhs18.while.end23_crit_edge, %ske_keypad_read_data.exit.while.end23_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %ske_keypad_lock.i) #7
  %44 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %45, i32 16
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  %47 = or i32 %46, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %48 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_base.i, align 4
  %add.ptr6.i41 = getelementptr i8, ptr %49, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i41, i32 %47) #7, !srcloc !99
  tail call void @_raw_spin_unlock(ptr noundef %ske_keypad_lock.i) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ske_keypad_set_bits(ptr noundef %keypad, i16 noundef zeroext %addr, i8 noundef zeroext %mask, i8 noundef zeroext %data) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ske_keypad_lock = getelementptr inbounds %struct.ske_keypad, ptr %keypad, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %ske_keypad_lock) #7
  %reg_base = getelementptr inbounds %struct.ske_keypad, ptr %keypad, i32 0, i32 1
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %conv = zext i16 %addr to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !93
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  %conv2 = zext i8 %mask to i32
  %neg = xor i32 %conv2, -1
  %and = and i32 %3, %neg
  %conv3 = zext i8 %data to i32
  %or = or i32 %and, %conv3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %5 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_base, align 4
  %add.ptr6 = getelementptr i8, ptr %6, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %4) #7, !srcloc !99
  tail call void @_raw_spin_unlock(ptr noundef %ske_keypad_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ske_keypad_report(ptr nocapture noundef readonly %keypad, i8 noundef zeroext %status, i32 noundef %col) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %input1 = getelementptr inbounds %struct.ske_keypad, ptr %keypad, i32 0, i32 2
  %0 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input1, align 4
  %conv58 = zext i8 %status to i32
  %call.i = tail call i32 @__sw_hweight8(i32 noundef %conv58) #7
  %reg_base = getelementptr inbounds %struct.ske_keypad, ptr %keypad, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %num_of_rows.0 = phi i32 [ %call.i, %entry ], [ %dec, %do.body.do.body_crit_edge ]
  %status.addr.0 = phi i8 [ %status, %entry ], [ %conv63, %do.body.do.body_crit_edge ]
  %conv59 = zext i8 %status.addr.0 to i32
  %2 = tail call i32 @llvm.cttz.i32(i32 %conv59, i1 false) #7, !range !107
  %shl = shl nuw i32 1, %2
  %3 = trunc i32 %shl to i8
  %4 = xor i8 %3, -1
  %conv63 = and i8 %status.addr.0, %4
  %shl64 = shl nuw nsw i32 %2, 3
  %add65 = add i32 %shl64, %col
  %5 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 20
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !108
  tail call void @input_event(ptr noundef %1, i32 noundef 4, i32 noundef 4, i32 noundef %add65) #7
  %arrayidx = getelementptr %struct.ske_keypad, ptr %keypad, i32 0, i32 4, i32 %add65
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  %conv69 = zext i16 %9 to i32
  %10 = lshr i32 %7, 26
  %.lobit = and i32 %10, 1
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %conv69, i32 noundef %.lobit) #7
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %dec = add i32 %num_of_rows.0, -1
  %tobool70.not = icmp eq i32 %dec, 0
  br i1 %tobool70.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ske_keypad_remove(ptr noundef %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #7
  %input = getelementptr inbounds %struct.ske_keypad, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input, align 4
  tail call void @input_unregister_device(ptr noundef %5) #7
  %clk = getelementptr inbounds %struct.ske_keypad, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %9) #7
  %board = getelementptr inbounds %struct.ske_keypad, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %board, align 4
  %exit = getelementptr inbounds %struct.ske_keypad_platform_data, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %exit, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 %13() #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %reg_base = getelementptr inbounds %struct.ske_keypad, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_base, align 4
  tail call void @iounmap(ptr noundef %15) #7
  %16 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call1, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call1, i32 0, i32 1
  %18 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %17
  %add.i = add i32 %sub.i, %19
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %17, i32 noundef %add.i) #7
  tail call void @kfree(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ske_keypad_suspend(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef 0) #7
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %device_may_wakeup.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %if.then

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %call1, i32 noundef 1) #7
  br label %if.end

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %ske_keypad_lock.i = getelementptr inbounds %struct.ske_keypad, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %ske_keypad_lock.i) #7
  %reg_base.i = getelementptr inbounds %struct.ske_keypad, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  %8 = and i32 %7, 83886079
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %10, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %8) #7, !srcloc !99
  tail call void @_raw_spin_unlock(ptr noundef %ske_keypad_lock.i) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ske_keypad_resume(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef 0) #7
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %device_may_wakeup.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %if.then

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %call1, i32 noundef 0) #7
  br label %if.end

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %ske_keypad_lock.i = getelementptr inbounds %struct.ske_keypad, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %ske_keypad_lock.i) #7
  %reg_base.i = getelementptr inbounds %struct.ske_keypad, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  %8 = or i32 %7, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %10, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %8) #7, !srcloc !99
  tail call void @_raw_spin_unlock(ptr noundef %ske_keypad_lock.i) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !35, !37, !38, !39, !41, !43, !44, !45, !47, !48, !49, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !71, !72, !73, !75, !76, !77, !79, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__initcall__kmod_nomadik_ske_keypad__227_432_ske_keypad_driver_init6, !1, !"__initcall__kmod_nomadik_ske_keypad__227_432_ske_keypad_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/nomadik-ske-keypad.c", i32 432, i32 1}
!2 = !{ptr @__exitcall_ske_keypad_driver_exit, !1, !"__exitcall_ske_keypad_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file228, !4, !"__UNIQUE_ID_file228", i1 false, i1 false}
!4 = !{!"../drivers/input/keyboard/nomadik-ske-keypad.c", i32 434, i32 1}
!5 = !{ptr @__UNIQUE_ID_license229, !4, !"__UNIQUE_ID_license229", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author230, !7, !"__UNIQUE_ID_author230", i1 false, i1 false}
!7 = !{!"../drivers/input/keyboard/nomadik-ske-keypad.c", i32 435, i32 1}
!8 = !{ptr @__UNIQUE_ID_description231, !9, !"__UNIQUE_ID_description231", i1 false, i1 false}
!9 = !{!"../drivers/input/keyboard/nomadik-ske-keypad.c", i32 436, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias232, !11, !"__UNIQUE_ID_alias232", i1 false, i1 false}
!11 = !{!"../drivers/input/keyboard/nomadik-ske-keypad.c", i32 437, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/keyboard/nomadik-ske-keypad.c", i32 235, i32 3}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ske_keypad_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @ske_keypad_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/input/keyboard/nomadik-ske-keypad.c", i32 245, i32 3}
!22 = !{ptr @ske_keypad_probe._entry.5, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @ske_keypad_probe._entry_ptr.7, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/keyboard/nomadik-ske-keypad.c", i32 252, i32 3}
!26 = !{ptr @ske_keypad_probe._entry.8, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @ske_keypad_probe._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @ske_keypad_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/input/keyboard/nomadik-ske-keypad.c", i32 260, i32 2}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/keyboard/nomadik-ske-keypad.c", i32 263, i32 3}
!33 = !{ptr @ske_keypad_probe._entry.12, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @ske_keypad_probe._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/keyboard/nomadik-ske-keypad.c", i32 270, i32 3}
!37 = !{ptr @ske_keypad_probe._entry.15, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @ske_keypad_probe._entry_ptr.17, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/keyboard/nomadik-ske-keypad.c", i32 275, i32 37}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/input/keyboard/nomadik-ske-keypad.c", i32 277, i32 3}
!43 = !{ptr @ske_keypad_probe._entry.19, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @ske_keypad_probe._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/keyboard/nomadik-ske-keypad.c", i32 284, i32 3}
!47 = !{ptr @ske_keypad_probe._entry.22, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @ske_keypad_probe._entry_ptr.24, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/input/keyboard/nomadik-ske-keypad.c", i32 290, i32 16}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/input/keyboard/nomadik-ske-keypad.c", i32 297, i32 3}
!53 = !{ptr @ske_keypad_probe._entry.26, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @ske_keypad_probe._entry_ptr.28, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/keyboard/nomadik-ske-keypad.c", i32 307, i32 3}
!57 = !{ptr @ske_keypad_probe._entry.29, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @ske_keypad_probe._entry_ptr.31, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/input/keyboard/nomadik-ske-keypad.c", i32 313, i32 3}
!61 = !{ptr @ske_keypad_probe._entry.32, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @ske_keypad_probe._entry_ptr.34, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.36, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/input/keyboard/nomadik-ske-keypad.c", i32 324, i32 3}
!65 = !{ptr @ske_keypad_probe._entry.35, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @ske_keypad_probe._entry_ptr.37, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.38, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/input/keyboard/nomadik-ske-keypad.c", i32 329, i32 24}
!69 = !{ptr @.str.40, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/input/keyboard/nomadik-ske-keypad.c", i32 331, i32 3}
!71 = !{ptr @ske_keypad_probe._entry.39, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @ske_keypad_probe._entry_ptr.41, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.43, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/input/keyboard/nomadik-ske-keypad.c", i32 337, i32 3}
!75 = !{ptr @ske_keypad_probe._entry.42, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @ske_keypad_probe._entry_ptr.44, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.45, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/input/keyboard/nomadik-ske-keypad.c", i32 426, i32 11}
!79 = !{ptr @ske_keypad_driver, !80, !"ske_keypad_driver", i1 false, i1 false}
!80 = !{!"../drivers/input/keyboard/nomadik-ske-keypad.c", i32 424, i32 31}
!81 = !{ptr @ske_keypad_dev_pm_ops, !82, !"ske_keypad_dev_pm_ops", i1 false, i1 false}
!82 = !{!"../drivers/input/keyboard/nomadik-ske-keypad.c", i32 421, i32 8}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{i8 0, i8 2}
!93 = !{i64 4881653}
!94 = !{i64 2153936583}
!95 = !{i64 2153936858}
!96 = !{i64 2153936700}
!97 = !{i64 2153937376}
!98 = !{i64 2153937603}
!99 = !{i64 4881235}
!100 = !{i64 2153935475}
!101 = !{i64 2153935695}
!102 = !{i64 2153939981}
!103 = !{i64 2153940267}
!104 = !{i64 2153940109}
!105 = !{i64 2153939434}
!106 = !{i64 2153940782}
!107 = !{i32 0, i32 33}
!108 = !{i64 2153938854}
