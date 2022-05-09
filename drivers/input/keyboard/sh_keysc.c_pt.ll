; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/sh_keysc.c_pt.bc'
source_filename = "../drivers/input/keyboard/sh_keysc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.69 = type { i8, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.sh_keysc_priv = type { ptr, [2 x i32], ptr, %struct.sh_keysc_info }
%struct.sh_keysc_info = type { i32, i32, i32, i32, [64 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_sh_keysc__230_332_sh_keysc_device_driver_init6 = internal global ptr @sh_keysc_device_driver_init, section ".initcall6.init", align 4
@sh_keysc_device_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sh_keysc_probe, ptr @sh_keysc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sh_keysc_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sh_keysc_device_driver_exit = internal global ptr @sh_keysc_device_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author231 = internal constant [28 x i8] c"sh_keysc.author=Magnus Damm\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [48 x i8] c"sh_keysc.description=SuperH KEYSC Keypad Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [46 x i8] c"sh_keysc.file=drivers/input/keyboard/sh_keysc\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [21 x i8] c"sh_keysc.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sh_keysc\00", [23 x i8] zeroinitializer }, align 32
@sh_keysc_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @sh_keysc_suspend, ptr @sh_keysc_resume, ptr @sh_keysc_suspend, ptr @sh_keysc_resume, ptr @sh_keysc_suspend, ptr @sh_keysc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sh_keysc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 171, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no platform data defined\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sh_keysc_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/input/keyboard/sh_keysc.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sh_keysc_probe._entry_ptr = internal global ptr @sh_keysc_probe._entry, section ".printk_index", align 4
@sh_keysc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 179, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get I/O memory\0A\00", [38 x i8] zeroinitializer }, align 32
@sh_keysc_probe._entry_ptr.8 = internal global ptr @sh_keysc_probe._entry.6, section ".printk_index", align 4
@sh_keysc_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 189, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to allocate driver data\0A\00", [32 x i8] zeroinitializer }, align 32
@sh_keysc_probe._entry_ptr.11 = internal global ptr @sh_keysc_probe._entry.9, section ".printk_index", align 4
@sh_keysc_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 200, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to remap I/O memory\0A\00", [36 x i8] zeroinitializer }, align 32
@sh_keysc_probe._entry_ptr.14 = internal global ptr @sh_keysc_probe._entry.12, section ".printk_index", align 4
@sh_keysc_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 207, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate input device\0A\00", [63 x i8] zeroinitializer }, align 32
@sh_keysc_probe._entry_ptr.17 = internal global ptr @sh_keysc_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sh-keysc-keys/input0\00", [43 x i8] zeroinitializer }, align 32
@sh_keysc_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 231, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@sh_keysc_probe._entry_ptr.21 = internal global ptr @sh_keysc_probe._entry.19, section ".printk_index", align 4
@sh_keysc_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 241, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register input device\0A\00", [63 x i8] zeroinitializer }, align 32
@sh_keysc_probe._entry_ptr.24 = internal global ptr @sh_keysc_probe._entry.22, section ".printk_index", align 4
@sh_keysc_mode = internal constant { [6 x %struct.anon.69], [46 x i8] } { [6 x %struct.anon.69] [%struct.anon.69 { i8 0, i8 6, i8 5 }, %struct.anon.69 { i8 1, i8 5, i8 6 }, %struct.anon.69 { i8 2, i8 4, i8 7 }, %struct.anon.69 { i8 3, i8 6, i8 6 }, %struct.anon.69 { i8 4, i8 6, i8 7 }, %struct.anon.69 { i8 5, i8 8, i8 8 }], [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sh_keysc_isr.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sh_keysc_isr\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"isr!\0A\00", [26 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"keys\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"last_keys\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"keys0\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"keys1\00", [26 x i8] zeroinitializer }, align 32
@sh_keysc_map_dbg.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.3, ptr @.str.32, i8 0, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sh_keysc_map_dbg\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s[%d] 0x%lx\0A\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.33 = private unnamed_addr constant [23 x i8] c"sh_keysc_device_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 324, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 328, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [20 x i8] c"sh_keysc_dev_pm_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 321, i32 8 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 171, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 179, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 189, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 200, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 207, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 216, i32 16 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 231, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 241, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [14 x i8] c"sh_keysc_mode\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 25, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 94, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 129, i32 38 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 133, i32 48 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 134, i32 38 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 135, i32 38 }
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.124 = private constant [37 x i8] c"../drivers/input/keyboard/sh_keysc.c\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 78, i32 3 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_sh_keysc_device_driver_exit, ptr @__initcall__kmod_sh_keysc__230_332_sh_keysc_device_driver_init6, ptr @sh_keysc_device_driver_exit, ptr @sh_keysc_probe._entry, ptr @sh_keysc_probe._entry.12, ptr @sh_keysc_probe._entry.15, ptr @sh_keysc_probe._entry.19, ptr @sh_keysc_probe._entry.22, ptr @sh_keysc_probe._entry.6, ptr @sh_keysc_probe._entry.9, ptr @sh_keysc_probe._entry_ptr, ptr @sh_keysc_probe._entry_ptr.11, ptr @sh_keysc_probe._entry_ptr.14, ptr @sh_keysc_probe._entry_ptr.17, ptr @sh_keysc_probe._entry_ptr.21, ptr @sh_keysc_probe._entry_ptr.24, ptr @sh_keysc_probe._entry_ptr.8, ptr @sh_keysc_device_driver, ptr @.str, ptr @sh_keysc_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @sh_keysc_mode, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_keysc_device_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_keysc_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_keysc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_keysc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_keysc_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_keysc_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_keysc_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_keysc_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_keysc_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_keysc_mode to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_keysc_device_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sh_keysc_device_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sh_keysc_device_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @sh_keysc_device_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_keysc_probe(ptr noundef %pdev) #2 align 64 {
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %cmp = icmp eq ptr %call2, null
  br i1 %cmp, label %do.end6, label %if.end8

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 288) #11
  %cmp14 = icmp eq ptr %call7.i.i, null
  br i1 %cmp14, label %do.end18, label %if.end20

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #10
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %pdata21 = getelementptr inbounds %struct.sh_keysc_priv, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  %6 = call ptr @memcpy(ptr %pdata21, ptr %5, i32 272)
  %7 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call2, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call2, i32 0, i32 1
  %9 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %8
  %add.i = add i32 %sub.i, %10
  %call26 = tail call ptr @ioremap(i32 noundef %8, i32 noundef %add.i) #7
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call26, ptr %call7.i.i, align 8
  %cmp28 = icmp eq ptr %call26, null
  br i1 %cmp28, label %do.end32, label %if.end34

do.end32:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #10
  br label %err1

if.end34:                                         ; preds = %if.end20
  %call35 = tail call ptr @input_allocate_device() #7
  %input36 = getelementptr inbounds %struct.sh_keysc_priv, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %input36 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call35, ptr %input36, align 4
  %tobool38.not = icmp eq ptr %call35, null
  br i1 %tobool38.not, label %do.end42, label %if.end44

do.end42:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #10
  br label %err2

if.end44:                                         ; preds = %if.end34
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call35, i32 0, i32 5
  %13 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %evbit, align 8
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 8
  %16 = ptrtoint ptr %call35 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %call35, align 8
  %phys = getelementptr inbounds %struct.input_dev, ptr %call35, i32 0, i32 1
  %17 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.18, ptr %phys, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %call35, i32 0, i32 40, i32 1
  %18 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev, ptr %parent, align 8
  %id = getelementptr inbounds %struct.input_dev, ptr %call35, i32 0, i32 3
  %19 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 25, ptr %id, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call35, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %vendor, align 2
  %product = getelementptr inbounds %struct.input_dev, ptr %call35, i32 0, i32 3, i32 2
  %21 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %product, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %call35, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 256, ptr %version, align 2
  %keycodes = getelementptr inbounds %struct.sh_keysc_priv, ptr %call7.i.i, i32 0, i32 3, i32 4
  %keycode = getelementptr inbounds %struct.input_dev, ptr %call35, i32 0, i32 17
  %23 = ptrtoint ptr %keycode to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %keycodes, ptr %keycode, align 4
  %keycodesize = getelementptr inbounds %struct.input_dev, ptr %call35, i32 0, i32 16
  %24 = ptrtoint ptr %keycodesize to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %keycodesize, align 8
  %keycodemax = getelementptr inbounds %struct.input_dev, ptr %call35, i32 0, i32 15
  %25 = ptrtoint ptr %keycodemax to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 64, ptr %keycodemax, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end44.dev_name.exit_crit_edge

if.end44.dev_name.exit_crit_edge:                 ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end44.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %29, %if.end.i ], [ %27, %if.end44.dev_name.exit_crit_edge ]
  %call54 = tail call i32 @request_threaded_irq(i32 noundef %call9, ptr noundef null, ptr noundef nonnull @sh_keysc_isr, i32 noundef 8192, ptr noundef %retval.0.i, ptr noundef %pdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %for.cond.preheader, label %do.end59

for.cond.preheader:                               ; preds = %dev_name.exit
  %keybit = getelementptr inbounds %struct.input_dev, ptr %call35, i32 0, i32 6
  br label %for.body

do.end59:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #10
  br label %err3

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %i.0149 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx64 = getelementptr %struct.sh_keysc_priv, ptr %call7.i.i, i32 0, i32 3, i32 4, i32 %i.0149
  %30 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx64, align 4
  %rem.i = and i32 %31, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %31, 5
  %add.ptr.i = getelementptr i32, ptr %keybit, i32 %div2.i
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %33
  store i32 %or.i, ptr %add.ptr.i, align 4
  %inc = add nuw nsw i32 %i.0149, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  %34 = ptrtoint ptr %keybit to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %keybit, align 4
  %and.i = and i32 %35, -2
  store i32 %and.i, ptr %keybit, align 4
  %call68 = tail call i32 @input_register_device(ptr noundef nonnull %call35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end75, label %do.end73

do.end73:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #10
  %call82 = tail call ptr @free_irq(i32 noundef %call9, ptr noundef %pdev) #7
  br label %err3

if.end75:                                         ; preds = %for.end
  tail call void @pm_runtime_enable(ptr noundef %dev) #7
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  %36 = ptrtoint ptr %pdata21 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pdata21, align 8
  %arrayidx79 = getelementptr [6 x %struct.anon.69], ptr @sh_keysc_mode, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx79, align 1
  %conv = zext i8 %39 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %scan_timing = getelementptr inbounds %struct.sh_keysc_priv, ptr %call7.i.i, i32 0, i32 3, i32 1
  %40 = ptrtoint ptr %scan_timing to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %scan_timing, align 4
  %or = or i32 %shl, %41
  %conv.i = trunc i32 %or to i16
  %42 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call7.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %44 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %43, i16 %44) #7, !srcloc !78
  %45 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call7.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %46, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 0) #7, !srcloc !78
  %47 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call7.i.i, align 8
  %add.ptr.i15.i = getelementptr i8, ptr %48, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i15.i, i16 4096) #7, !srcloc !78
  %kycr2_delay.i = getelementptr inbounds %struct.sh_keysc_priv, ptr %call7.i.i, i32 0, i32 3, i32 3
  %49 = ptrtoint ptr %kycr2_delay.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %kycr2_delay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i147 = icmp eq i32 %50, 0
  br i1 %tobool.not.i147, label %if.end75.sh_keysc_level_mode.exit_crit_edge, label %cond.false6.i

if.end75.sh_keysc_level_mode.exit_crit_edge:      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %sh_keysc_level_mode.exit

cond.false6.i:                                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %51(i32 noundef %50) #7
  br label %sh_keysc_level_mode.exit

sh_keysc_level_mode.exit:                         ; preds = %cond.false6.i, %if.end75.sh_keysc_level_mode.exit_crit_edge
  %call81 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #7
  br label %cleanup

err3:                                             ; preds = %do.end73, %do.end59
  %error.0 = phi i32 [ %call54, %do.end59 ], [ %call68, %do.end73 ]
  tail call void @input_free_device(ptr noundef nonnull %call35) #7
  br label %err2

err2:                                             ; preds = %err3, %do.end42
  %error.1 = phi i32 [ %error.0, %err3 ], [ -12, %do.end42 ]
  %52 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call7.i.i, align 8
  tail call void @iounmap(ptr noundef %53) #7
  br label %err1

err1:                                             ; preds = %err2, %do.end32
  %error.2 = phi i32 [ -6, %do.end32 ], [ %error.1, %err2 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err1, %sh_keysc_level_mode.exit, %do.end18, %if.end8.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ 0, %sh_keysc_level_mode.exit ], [ -6, %do.end6 ], [ -6, %if.end8.cleanup_crit_edge ], [ -12, %do.end18 ], [ %error.2, %err1 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_keysc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 0) #7, !srcloc !78
  %input = getelementptr inbounds %struct.sh_keysc_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input, align 4
  tail call void @input_unregister_device(ptr noundef %5) #7
  %call1 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %call2 = tail call ptr @free_irq(i32 noundef %call1, ptr noundef %pdev) #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void @iounmap(ptr noundef %7) #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #7
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  tail call void @kfree(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_keysc_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %keys = alloca [2 x i32], align 8
  %keys0 = alloca [2 x i32], align 8
  %keys1 = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev_id, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pdata1 = getelementptr inbounds %struct.sh_keysc_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pdata1, align 4
  %keyout = getelementptr [6 x %struct.anon.69], ptr @sh_keysc_mode, i32 0, i32 %3, i32 1
  %4 = ptrtoint ptr %keyout to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %keyout, align 1
  %conv = zext i8 %5 to i32
  %keyin = getelementptr [6 x %struct.anon.69], ptr @sh_keysc_mode, i32 0, i32 %3, i32 2
  %6 = ptrtoint ptr %keyin to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %keyin, align 1
  %conv4 = zext i8 %7 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %keys) #7
  %8 = ptrtoint ptr %keys to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %keys, align 8, !annotation !79
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %keys0) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %keys1) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_keysc_isr.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_keysc_isr, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !80

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %dev_id, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_keysc_isr.__UNIQUE_ID_ddebug229, ptr noundef %dev, ptr noundef nonnull @.str.26) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %9 = ptrtoint ptr %keys1 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -1, ptr %keys1, align 8
  %10 = ptrtoint ptr %keys0 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %keys0, align 8
  %delay = getelementptr inbounds %struct.sh_keysc_priv, ptr %1, i32 0, i32 3, i32 2
  %notmask = shl nsw i32 -1, %conv4
  %kycr2_delay.i = getelementptr inbounds %struct.sh_keysc_priv, ptr %1, i32 0, i32 3, i32 3
  %dev53 = getelementptr inbounds %struct.platform_device, ptr %dev_id, i32 0, i32 3
  %umax = call i32 @llvm.umax.i32(i32 %conv4, i32 1)
  %smax = call i32 @llvm.smax.i32(i32 %conv, i32 1)
  br label %for.body.preheader

for.body.preheader:                               ; preds = %sh_keysc_map_dbg.exit.for.body.preheader_crit_edge, %do.end
  %11 = ptrtoint ptr %keys to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %keys, align 8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %add.ptr.i182 = getelementptr i8, ptr %13, i32 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i182, i16 0) #7, !srcloc !78
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.preheader
  %i.0219 = phi i32 [ %inc41, %for.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %keyin_set.0218 = phi i8 [ %conv39, %for.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %mul = mul nuw nsw i32 %i.0219, %conv4
  %mul13 = shl nuw i32 %i.0219, 1
  %shl = shl i32 3, %mul13
  %14 = trunc i32 %shl to i16
  %conv.i = xor i16 %14, -1
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %add.ptr.i183 = getelementptr i8, ptr %16, i32 12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  call void @arm_heavy_mb() #7
  %17 = call i16 @llvm.bswap.i16(i16 %conv.i) #7
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i183, i16 %17) #7, !srcloc !78
  %18 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %delay, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %20(i32 noundef %19) #7
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %add.ptr.i184 = getelementptr i8, ptr %22, i32 8
  %23 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i184) #7, !srcloc !81
  %24 = call i16 @llvm.bswap.i16(i16 %23) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %conv.i185 = zext i16 %24 to i32
  %conv29 = and i32 %conv.i185, 255
  br label %for.body28

for.body28:                                       ; preds = %for.inc.for.body28_crit_edge, %for.body
  %k.0215 = phi i32 [ 0, %for.body ], [ %inc, %for.inc.for.body28_crit_edge ]
  %shl30 = shl nuw i32 1, %k.0215
  %and = and i32 %conv29, %shl30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %for.body28.for.inc_crit_edge, label %if.then32

for.body28.for.inc_crit_edge:                     ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then32:                                        ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #9
  %add = add nuw nsw i32 %k.0215, %mul
  %rem.i = and i32 %add, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %add, 5
  %add.ptr.i = getelementptr i32, ptr %keys, i32 %div2.i
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %26, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then32, %for.body28.for.inc_crit_edge
  %inc = add nuw nsw i32 %k.0215, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body28_crit_edge

for.inc.for.body28_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body28

for.end:                                          ; preds = %for.inc
  %27 = xor i32 %notmask, %conv.i185
  %28 = trunc i32 %27 to i8
  %29 = xor i8 %28, -1
  %conv39 = or i8 %keyin_set.0218, %29
  %inc41 = add nuw nsw i32 %i.0219, 1
  %exitcond222.not = icmp eq i32 %inc41, %smax
  br i1 %exitcond222.not, label %for.end42, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end42:                                        ; preds = %for.end
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 0) #7, !srcloc !78
  %keys_set.tr.i = zext i8 %conv39 to i16
  %32 = shl nuw i16 %keys_set.tr.i, 8
  %conv.i.i = or i16 %32, 16
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %34, i32 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  call void @arm_heavy_mb() #7
  %35 = call i16 @llvm.bswap.i16(i16 %conv.i.i) #7
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i15.i, i16 %35) #7, !srcloc !78
  %36 = ptrtoint ptr %kycr2_delay.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %kycr2_delay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i, label %for.end42.sh_keysc_level_mode.exit_crit_edge, label %cond.false6.i

for.end42.sh_keysc_level_mode.exit_crit_edge:     ; preds = %for.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %sh_keysc_level_mode.exit

cond.false6.i:                                    ; preds = %for.end42
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %38(i32 noundef %37) #7
  br label %sh_keysc_level_mode.exit

sh_keysc_level_mode.exit:                         ; preds = %cond.false6.i, %for.end42.sh_keysc_level_mode.exit_crit_edge
  call void @__bitmap_complement(ptr noundef nonnull %keys, ptr noundef nonnull %keys, i32 noundef 64) #7
  %call.i = call i32 @__bitmap_and(ptr noundef nonnull %keys1, ptr noundef nonnull %keys1, ptr noundef nonnull %keys, i32 noundef 64) #7
  call void @__bitmap_or(ptr noundef nonnull %keys0, ptr noundef nonnull %keys0, ptr noundef nonnull %keys, i32 noundef 64) #7
  br label %do.body.i

do.body.i:                                        ; preds = %for.inc.i.do.body.i_crit_edge, %sh_keysc_level_mode.exit
  %cmp.i186 = phi i1 [ true, %sh_keysc_level_mode.exit ], [ false, %for.inc.i.do.body.i_crit_edge ]
  %k.07.i = phi i32 [ 0, %sh_keysc_level_mode.exit ], [ 1, %for.inc.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_keysc_map_dbg.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_keysc_isr, %if.then.i188)) #7
          to label %for.inc.i [label %if.then.i188], !srcloc !80

if.then.i188:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i187 = getelementptr i32, ptr %keys, i32 %k.07.i
  %39 = ptrtoint ptr %arrayidx.i187 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i187, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_keysc_map_dbg.__UNIQUE_ID_ddebug228, ptr noundef %dev53, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.27, i32 noundef %k.07.i, i32 noundef %40) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i188, %do.body.i
  br i1 %cmp.i186, label %for.inc.i.do.body.i_crit_edge, label %sh_keysc_map_dbg.exit

for.inc.i.do.body.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

sh_keysc_map_dbg.exit:                            ; preds = %for.inc.i
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %add.ptr.i189 = getelementptr i8, ptr %42, i32 4
  %43 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i189) #7, !srcloc !81
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %44 = and i16 %43, 256
  %tobool58.not = icmp eq i16 %44, 0
  br i1 %tobool58.not, label %do.end59, label %sh_keysc_map_dbg.exit.for.body.preheader_crit_edge

sh_keysc_map_dbg.exit.for.body.preheader_crit_edge: ; preds = %sh_keysc_map_dbg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

do.end59:                                         ; preds = %sh_keysc_map_dbg.exit
  %last_keys = getelementptr inbounds %struct.sh_keysc_priv, ptr %1, i32 0, i32 1
  br label %do.body.i193

do.body.i193:                                     ; preds = %for.inc.i196.do.body.i193_crit_edge, %do.end59
  %cmp.i191 = phi i1 [ true, %do.end59 ], [ false, %for.inc.i196.do.body.i193_crit_edge ]
  %k.07.i192 = phi i32 [ 0, %do.end59 ], [ 1, %for.inc.i196.do.body.i193_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_keysc_map_dbg.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_keysc_isr, %if.then.i195)) #7
          to label %for.inc.i196 [label %if.then.i195], !srcloc !80

if.then.i195:                                     ; preds = %do.body.i193
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i194 = getelementptr i32, ptr %last_keys, i32 %k.07.i192
  %45 = ptrtoint ptr %arrayidx.i194 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i194, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_keysc_map_dbg.__UNIQUE_ID_ddebug228, ptr noundef %dev53, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.28, i32 noundef %k.07.i192, i32 noundef %46) #7
  br label %for.inc.i196

for.inc.i196:                                     ; preds = %if.then.i195, %do.body.i193
  br i1 %cmp.i191, label %for.inc.i196.do.body.i193_crit_edge, label %for.inc.i196.do.body.i200_crit_edge

for.inc.i196.do.body.i200_crit_edge:              ; preds = %for.inc.i196
  br label %do.body.i200

for.inc.i196.do.body.i193_crit_edge:              ; preds = %for.inc.i196
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i193

do.body.i200:                                     ; preds = %for.inc.i203.do.body.i200_crit_edge, %for.inc.i196.do.body.i200_crit_edge
  %cmp.i198 = phi i1 [ false, %for.inc.i203.do.body.i200_crit_edge ], [ true, %for.inc.i196.do.body.i200_crit_edge ]
  %k.07.i199 = phi i32 [ 1, %for.inc.i203.do.body.i200_crit_edge ], [ 0, %for.inc.i196.do.body.i200_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_keysc_map_dbg.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_keysc_isr, %if.then.i202)) #7
          to label %for.inc.i203 [label %if.then.i202], !srcloc !80

if.then.i202:                                     ; preds = %do.body.i200
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i201 = getelementptr i32, ptr %keys0, i32 %k.07.i199
  %47 = ptrtoint ptr %arrayidx.i201 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i201, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_keysc_map_dbg.__UNIQUE_ID_ddebug228, ptr noundef %dev53, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.29, i32 noundef %k.07.i199, i32 noundef %48) #7
  br label %for.inc.i203

for.inc.i203:                                     ; preds = %if.then.i202, %do.body.i200
  br i1 %cmp.i198, label %for.inc.i203.do.body.i200_crit_edge, label %for.inc.i203.do.body.i207_crit_edge

for.inc.i203.do.body.i207_crit_edge:              ; preds = %for.inc.i203
  br label %do.body.i207

for.inc.i203.do.body.i200_crit_edge:              ; preds = %for.inc.i203
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i200

do.body.i207:                                     ; preds = %for.inc.i210.do.body.i207_crit_edge, %for.inc.i203.do.body.i207_crit_edge
  %cmp.i205 = phi i1 [ false, %for.inc.i210.do.body.i207_crit_edge ], [ true, %for.inc.i203.do.body.i207_crit_edge ]
  %k.07.i206 = phi i32 [ 1, %for.inc.i210.do.body.i207_crit_edge ], [ 0, %for.inc.i203.do.body.i207_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_keysc_map_dbg.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_keysc_isr, %if.then.i209)) #7
          to label %for.inc.i210 [label %if.then.i209], !srcloc !80

if.then.i209:                                     ; preds = %do.body.i207
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i208 = getelementptr i32, ptr %keys1, i32 %k.07.i206
  %49 = ptrtoint ptr %arrayidx.i208 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i208, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_keysc_map_dbg.__UNIQUE_ID_ddebug228, ptr noundef %dev53, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, i32 noundef %k.07.i206, i32 noundef %50) #7
  br label %for.inc.i210

for.inc.i210:                                     ; preds = %if.then.i209, %do.body.i207
  br i1 %cmp.i205, label %for.inc.i210.do.body.i207_crit_edge, label %for.cond66.preheader

for.inc.i210.do.body.i207_crit_edge:              ; preds = %for.inc.i210
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i207

for.cond66.preheader:                             ; preds = %for.inc.i210
  %input = getelementptr inbounds %struct.sh_keysc_priv, ptr %1, i32 0, i32 2
  br label %for.body69

for.body69:                                       ; preds = %for.inc101.for.body69_crit_edge, %for.cond66.preheader
  %i.1220 = phi i32 [ 0, %for.cond66.preheader ], [ %inc102, %for.inc101.for.body69_crit_edge ]
  %arrayidx70 = getelementptr %struct.sh_keysc_priv, ptr %1, i32 0, i32 3, i32 4, i32 %i.1220
  %51 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool71.not = icmp eq i32 %52, 0
  br i1 %tobool71.not, label %for.body69.for.inc101_crit_edge, label %if.end73

for.body69.for.inc101_crit_edge:                  ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc101

if.end73:                                         ; preds = %for.body69
  %div3.i = lshr i32 %i.1220, 5
  %arrayidx.i = getelementptr i32, ptr %keys0, i32 %div3.i
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.1220, 31
  %arrayidx.i153 = getelementptr i32, ptr %last_keys, i32 %div3.i
  %55 = ptrtoint ptr %arrayidx.i153 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %arrayidx.i153, align 4
  %shr.i213 = xor i32 %56, %54
  %57 = shl nuw i32 1, %and.i
  %58 = and i32 %shr.i213, %57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp79 = icmp eq i32 %58, 0
  br i1 %cmp79, label %if.end73.for.inc101_crit_edge, label %if.end82

if.end73.for.inc101_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc101

if.end82:                                         ; preds = %if.end73
  %arrayidx.i158 = getelementptr i32, ptr %keys1, i32 %div3.i
  %59 = ptrtoint ptr %arrayidx.i158 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %arrayidx.i158, align 4
  %61 = and i32 %60, %57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool85.not = icmp eq i32 %61, 0
  br i1 %tobool85.not, label %lor.lhs.false, label %if.end82.if.then89_crit_edge

if.end82.if.then89_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then89

lor.lhs.false:                                    ; preds = %if.end82
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %arrayidx.i, align 4
  %64 = and i32 %63, %57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool88.not = icmp eq i32 %64, 0
  br i1 %tobool88.not, label %lor.lhs.false.if.end92_crit_edge, label %lor.lhs.false.if.then89_crit_edge

lor.lhs.false.if.then89_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then89

lor.lhs.false.if.end92_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92

if.then89:                                        ; preds = %lor.lhs.false.if.then89_crit_edge, %if.end82.if.then89_crit_edge
  %65 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %input, align 4
  call void @input_event(ptr noundef %66, i32 noundef 1, i32 noundef %52, i32 noundef 1) #7
  %67 = ptrtoint ptr %arrayidx.i153 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i153, align 4
  %or.i171 = or i32 %68, %57
  store i32 %or.i171, ptr %arrayidx.i153, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.then89, %lor.lhs.false.if.end92_crit_edge
  %69 = ptrtoint ptr %arrayidx.i158 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %arrayidx.i158, align 4
  %71 = and i32 %70, %57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool95.not = icmp eq i32 %71, 0
  br i1 %tobool95.not, label %if.then96, label %if.end92.for.inc101_crit_edge

if.end92.for.inc101_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc101

if.then96:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %input, align 4
  call void @input_event(ptr noundef %73, i32 noundef 1, i32 noundef %52, i32 noundef 0) #7
  %neg.i = xor i32 %57, -1
  %74 = ptrtoint ptr %arrayidx.i153 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i153, align 4
  %and.i181 = and i32 %75, %neg.i
  store i32 %and.i181, ptr %arrayidx.i153, align 4
  br label %for.inc101

for.inc101:                                       ; preds = %if.then96, %if.end92.for.inc101_crit_edge, %if.end73.for.inc101_crit_edge, %for.body69.for.inc101_crit_edge
  %inc102 = add nuw nsw i32 %i.1220, 1
  %exitcond223.not = icmp eq i32 %inc102, 64
  br i1 %exitcond223.not, label %for.end103, label %for.inc101.for.body69_crit_edge

for.inc101.for.body69_crit_edge:                  ; preds = %for.inc101
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body69

for.end103:                                       ; preds = %for.inc101
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %input, align 4
  call void @input_event(ptr noundef %77, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %keys1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %keys0) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %keys) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_complement(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_or(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_keysc_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef 0) #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %3) #7, !srcloc !81
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %device_may_wakeup.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %7 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %8, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %if.then

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = or i16 %5, 128
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %12 = tail call i16 @llvm.bswap.i16(i16 %9) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %11, i16 %12) #7, !srcloc !78
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %call1, i32 noundef 1) #7
  br label %if.end

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %and = and i16 %5, -129
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %15 = tail call i16 @llvm.bswap.i16(i16 %and) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %14, i16 %15) #7, !srcloc !78
  %call.i16 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_keysc_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %call = tail call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef 0) #7
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %device_may_wakeup.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %1 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %2, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %if.then

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %call, i32 noundef 0) #7
  br label %if.end

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %call.i6 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !56, !58, !60, !62, !63, !64, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__initcall__kmod_sh_keysc__230_332_sh_keysc_device_driver_init6, !1, !"__initcall__kmod_sh_keysc__230_332_sh_keysc_device_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/sh_keysc.c", i32 332, i32 1}
!2 = !{ptr @__exitcall_sh_keysc_device_driver_exit, !1, !"__exitcall_sh_keysc_device_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author231, !4, !"__UNIQUE_ID_author231", i1 false, i1 false}
!4 = !{!"../drivers/input/keyboard/sh_keysc.c", i32 334, i32 1}
!5 = !{ptr @__UNIQUE_ID_description232, !6, !"__UNIQUE_ID_description232", i1 false, i1 false}
!6 = !{!"../drivers/input/keyboard/sh_keysc.c", i32 335, i32 1}
!7 = !{ptr @__UNIQUE_ID_file233, !8, !"__UNIQUE_ID_file233", i1 false, i1 false}
!8 = !{!"../drivers/input/keyboard/sh_keysc.c", i32 336, i32 1}
!9 = !{ptr @__UNIQUE_ID_license234, !8, !"__UNIQUE_ID_license234", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/keyboard/sh_keysc.c", i32 328, i32 11}
!12 = !{ptr @sh_keysc_device_driver, !13, !"sh_keysc_device_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/keyboard/sh_keysc.c", i32 324, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/keyboard/sh_keysc.c", i32 171, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sh_keysc_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @sh_keysc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/keyboard/sh_keysc.c", i32 179, i32 3}
!24 = !{ptr @sh_keysc_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @sh_keysc_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/keyboard/sh_keysc.c", i32 189, i32 3}
!28 = !{ptr @sh_keysc_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @sh_keysc_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/keyboard/sh_keysc.c", i32 200, i32 3}
!32 = !{ptr @sh_keysc_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @sh_keysc_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/keyboard/sh_keysc.c", i32 207, i32 3}
!36 = !{ptr @sh_keysc_probe._entry.15, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @sh_keysc_probe._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/keyboard/sh_keysc.c", i32 216, i32 16}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/keyboard/sh_keysc.c", i32 231, i32 3}
!42 = !{ptr @sh_keysc_probe._entry.19, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @sh_keysc_probe._entry_ptr.21, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/keyboard/sh_keysc.c", i32 241, i32 3}
!46 = !{ptr @sh_keysc_probe._entry.22, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @sh_keysc_probe._entry_ptr.24, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/keyboard/sh_keysc.c", i32 94, i32 2}
!50 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @sh_keysc_isr.__UNIQUE_ID_ddebug229, !49, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/keyboard/sh_keysc.c", i32 129, i32 38}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/keyboard/sh_keysc.c", i32 133, i32 48}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/keyboard/sh_keysc.c", i32 134, i32 38}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/keyboard/sh_keysc.c", i32 135, i32 38}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/keyboard/sh_keysc.c", i32 78, i32 3}
!62 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @sh_keysc_map_dbg.__UNIQUE_ID_ddebug228, !61, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!64 = !{ptr @sh_keysc_mode, !65, !"sh_keysc_mode", i1 false, i1 false}
!65 = !{!"../drivers/input/keyboard/sh_keysc.c", i32 25, i32 3}
!66 = !{ptr @sh_keysc_dev_pm_ops, !67, !"sh_keysc_dev_pm_ops", i1 false, i1 false}
!67 = !{!"../drivers/input/keyboard/sh_keysc.c", i32 321, i32 8}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{i64 2152163464}
!78 = !{i64 4621272}
!79 = !{!"auto-init"}
!80 = !{i64 2148697515, i64 2148697520, i64 2148697533, i64 2148697577, i64 2148697611, i64 2148697632}
!81 = !{i64 4621472}
!82 = !{i64 2152162047}
