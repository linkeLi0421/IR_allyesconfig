; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/stmpe-ts.c_pt.bc'
source_filename = "../drivers/input/touchscreen/stmpe-ts.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.stmpe_touch = type { ptr, ptr, %struct.delayed_work, ptr, %struct.touchscreen_properties, i8, i8, i8, i8, i8 }
%struct.touchscreen_properties = type { i32, i32, i8, i8, i8 }
%struct.stmpe = type { ptr, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, i32, [2 x i8], [2 x i8], ptr, i8, i8, i8, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_stmpe_ts__288_369_stmpe_ts_driver_init6 = internal global ptr @stmpe_ts_driver_init, section ".initcall6.init", align 4
@stmpe_ts_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stmpe_input_probe, ptr @stmpe_ts_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stmpe_ts_driver_exit = internal global ptr @stmpe_ts_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [48 x i8] c"stmpe_ts.author=Luotao Fu <l.fu@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [49 x i8] c"stmpe_ts.description=STMPEXXX touchscreen driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [49 x i8] c"stmpe_ts.file=drivers/input/touchscreen/stmpe-ts\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [21 x i8] c"stmpe_ts.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"stmpe-ts\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"FIFO_TH\00", [24 x i8] zeroinitializer }, align 32
@stmpe_input_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&(&ts->work)->work)\00", [58 x i8] zeroinitializer }, align 32
@stmpe_input_probe.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&(&ts->work)->timer\00", [44 x i8] zeroinitializer }, align 32
@stmpe_input_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 320, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to request IRQ %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stmpe_input_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/input/touchscreen/stmpe-ts.c\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stmpe_input_probe._entry_ptr = internal global ptr @stmpe_input_probe._entry, section ".printk_index", align 4
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stmpe-ts/input0\00", [16 x i8] zeroinitializer }, align 32
@stmpe_input_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.7, i32 346, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Could not register input device\0A\00", [63 x i8] zeroinitializer }, align 32
@stmpe_input_probe._entry_ptr.13 = internal global ptr @stmpe_input_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"st,sample-time\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"st,mod-12b\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"st,ref-sel\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"st,adc-freq\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"st,ave-ctrl\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"st,touch-det-delay\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"st,settling\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"st,fraction-z\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"st,i-drive\00", [21 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@stmpe_init_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.7, i32 183, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Could not enable clock for ADC and TS\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stmpe_init_hw\00", [18 x i8] zeroinitializer }, align 32
@stmpe_init_hw._entry_ptr = internal global ptr @stmpe_init_hw._entry, section ".printk_index", align 4
@stmpe_init_hw._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.7, i32 201, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Could not config touch\0A\00", [40 x i8] zeroinitializer }, align 32
@stmpe_init_hw._entry_ptr.27 = internal global ptr @stmpe_init_hw._entry.25, section ".printk_index", align 4
@stmpe_init_hw._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.7, i32 208, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@stmpe_init_hw._entry_ptr.29 = internal global ptr @stmpe_init_hw._entry.28, section ".printk_index", align 4
@stmpe_init_hw._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.7, i32 215, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@stmpe_init_hw._entry_ptr.31 = internal global ptr @stmpe_init_hw._entry.30, section ".printk_index", align 4
@stmpe_init_hw._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.24, ptr @.str.7, i32 222, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Could not set FIFO\0A\00", [44 x i8] zeroinitializer }, align 32
@stmpe_init_hw._entry_ptr.34 = internal global ptr @stmpe_init_hw._entry.32, section ".printk_index", align 4
@stmpe_init_hw._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.24, ptr @.str.7, i32 229, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Could not set mode\0A\00", [44 x i8] zeroinitializer }, align 32
@stmpe_init_hw._entry_ptr.37 = internal global ptr @stmpe_init_hw._entry.35, section ".printk_index", align 4
@___asan_gen_.38 = private unnamed_addr constant [16 x i8] c"stmpe_ts_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 362, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 364, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 295, i32 41 }
@___asan_gen_.53 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 314, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 320, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 329, i32 15 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 346, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 266, i32 33 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 268, i32 33 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 270, i32 33 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 272, i32 33 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 274, i32 33 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 276, i32 33 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 278, i32 33 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 280, i32 33 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 282, i32 33 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 183, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 201, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 208, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 215, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 222, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.144 = private constant [40 x i8] c"../drivers/input/touchscreen/stmpe-ts.c\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 229, i32 3 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_stmpe_ts_driver_exit, ptr @__initcall__kmod_stmpe_ts__288_369_stmpe_ts_driver_init6, ptr @stmpe_init_hw._entry, ptr @stmpe_init_hw._entry.25, ptr @stmpe_init_hw._entry.28, ptr @stmpe_init_hw._entry.30, ptr @stmpe_init_hw._entry.32, ptr @stmpe_init_hw._entry.35, ptr @stmpe_init_hw._entry_ptr, ptr @stmpe_init_hw._entry_ptr.27, ptr @stmpe_init_hw._entry_ptr.29, ptr @stmpe_init_hw._entry_ptr.31, ptr @stmpe_init_hw._entry_ptr.34, ptr @stmpe_init_hw._entry_ptr.37, ptr @stmpe_input_probe._entry, ptr @stmpe_input_probe._entry.11, ptr @stmpe_input_probe._entry_ptr, ptr @stmpe_input_probe._entry_ptr.13, ptr @stmpe_ts_driver_exit, ptr @stmpe_ts_driver, ptr @.str, ptr @.str.1, ptr @stmpe_input_probe.__key, ptr @.str.2, ptr @stmpe_input_probe.__key.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.33, ptr @.str.36], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_ts_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_input_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_input_probe.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_input_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_input_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_init_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_init_hw._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_init_hw._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_init_hw._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_init_hw._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_init_hw._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stmpe_ts_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stmpe_ts_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stmpe_ts_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @stmpe_ts_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmpe_input_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
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
  %call1 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 132, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call7 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #5
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %call.i, align 4
  %idev12 = getelementptr inbounds %struct.stmpe_touch, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %idev12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7, ptr %idev12, align 4
  %dev14 = getelementptr inbounds %struct.stmpe_touch, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %dev14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %dev14, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %8 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %val.i, align 4, !annotation !85
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end10.stmpe_ts_get_platform_info.exit_crit_edge, label %if.then.i

if.end10.stmpe_ts_get_platform_info.exit_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %stmpe_ts_get_platform_info.exit

if.then.i:                                        ; preds = %if.end10
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %9, ptr noundef nonnull @.str.14, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool1.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool1.not.i, label %if.then2.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val.i, align 4
  %conv.i = trunc i32 %12 to i8
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  %sample_time.i = getelementptr inbounds %struct.stmpe, ptr %14, i32 0, i32 16
  %15 = ptrtoint ptr %sample_time.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i, ptr %sample_time.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  %call.i.i64.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %9, ptr noundef nonnull @.str.15, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i64.i)
  %tobool4.not.i = icmp sgt i32 %call.i.i64.i, -1
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i, align 4
  %conv6.i = trunc i32 %17 to i8
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  %mod_12b.i = getelementptr inbounds %struct.stmpe, ptr %19, i32 0, i32 17
  %20 = ptrtoint ptr %mod_12b.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv6.i, ptr %mod_12b.i, align 1
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.end.i.if.end8.i_crit_edge
  %call.i.i65.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %9, ptr noundef nonnull @.str.16, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i65.i)
  %tobool10.not.i = icmp sgt i32 %call.i.i65.i, -1
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end8.i.if.end14.i_crit_edge

if.end8.i.if.end14.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val.i, align 4
  %conv12.i = trunc i32 %22 to i8
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  %ref_sel.i = getelementptr inbounds %struct.stmpe, ptr %24, i32 0, i32 18
  %25 = ptrtoint ptr %ref_sel.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv12.i, ptr %ref_sel.i, align 2
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then11.i, %if.end8.i.if.end14.i_crit_edge
  %call.i.i66.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %9, ptr noundef nonnull @.str.17, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i66.i)
  %tobool16.not.i = icmp sgt i32 %call.i.i66.i, -1
  br i1 %tobool16.not.i, label %if.then17.i, label %if.end14.i.if.end20.i_crit_edge

if.end14.i.if.end20.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val.i, align 4
  %conv18.i = trunc i32 %27 to i8
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  %adc_freq.i = getelementptr inbounds %struct.stmpe, ptr %29, i32 0, i32 19
  %30 = ptrtoint ptr %adc_freq.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv18.i, ptr %adc_freq.i, align 1
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end20.i_crit_edge
  %call.i.i67.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %9, ptr noundef nonnull @.str.18, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i67.i)
  %tobool22.not.i = icmp sgt i32 %call.i.i67.i, -1
  br i1 %tobool22.not.i, label %if.then23.i, label %if.end20.i.if.end25.i_crit_edge

if.end20.i.if.end25.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25.i

if.then23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val.i, align 4
  %conv24.i = trunc i32 %32 to i8
  %ave_ctrl.i = getelementptr inbounds %struct.stmpe_touch, ptr %call.i, i32 0, i32 5
  %33 = ptrtoint ptr %ave_ctrl.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv24.i, ptr %ave_ctrl.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then23.i, %if.end20.i.if.end25.i_crit_edge
  %call.i.i68.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %9, ptr noundef nonnull @.str.19, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i68.i)
  %tobool27.not.i = icmp sgt i32 %call.i.i68.i, -1
  br i1 %tobool27.not.i, label %if.then28.i, label %if.end25.i.if.end30.i_crit_edge

if.end25.i.if.end30.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30.i

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val.i, align 4
  %conv29.i = trunc i32 %35 to i8
  %touch_det_delay.i = getelementptr inbounds %struct.stmpe_touch, ptr %call.i, i32 0, i32 6
  %36 = ptrtoint ptr %touch_det_delay.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv29.i, ptr %touch_det_delay.i, align 1
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then28.i, %if.end25.i.if.end30.i_crit_edge
  %call.i.i69.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %9, ptr noundef nonnull @.str.20, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i69.i)
  %tobool32.not.i = icmp sgt i32 %call.i.i69.i, -1
  br i1 %tobool32.not.i, label %if.then33.i, label %if.end30.i.if.end35.i_crit_edge

if.end30.i.if.end35.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.i

if.then33.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val.i, align 4
  %conv34.i = trunc i32 %38 to i8
  %settling.i = getelementptr inbounds %struct.stmpe_touch, ptr %call.i, i32 0, i32 7
  %39 = ptrtoint ptr %settling.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv34.i, ptr %settling.i, align 2
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then33.i, %if.end30.i.if.end35.i_crit_edge
  %call.i.i70.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %9, ptr noundef nonnull @.str.21, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i70.i)
  %tobool37.not.i = icmp sgt i32 %call.i.i70.i, -1
  br i1 %tobool37.not.i, label %if.then38.i, label %if.end35.i.if.end40.i_crit_edge

if.end35.i.if.end40.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40.i

if.then38.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %val.i, align 4
  %conv39.i = trunc i32 %41 to i8
  %fraction_z.i = getelementptr inbounds %struct.stmpe_touch, ptr %call.i, i32 0, i32 8
  %42 = ptrtoint ptr %fraction_z.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv39.i, ptr %fraction_z.i, align 1
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then38.i, %if.end35.i.if.end40.i_crit_edge
  %call.i.i71.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %9, ptr noundef nonnull @.str.22, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i71.i)
  %tobool42.not.i = icmp sgt i32 %call.i.i71.i, -1
  br i1 %tobool42.not.i, label %if.then43.i, label %if.end40.i.stmpe_ts_get_platform_info.exit_crit_edge

if.end40.i.stmpe_ts_get_platform_info.exit_crit_edge: ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stmpe_ts_get_platform_info.exit

if.then43.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %val.i, align 4
  %conv44.i = trunc i32 %44 to i8
  %i_drive.i = getelementptr inbounds %struct.stmpe_touch, ptr %call.i, i32 0, i32 9
  %45 = ptrtoint ptr %i_drive.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv44.i, ptr %i_drive.i, align 4
  br label %stmpe_ts_get_platform_info.exit

stmpe_ts_get_platform_info.exit:                  ; preds = %if.then43.i, %if.end40.i.stmpe_ts_get_platform_info.exit_crit_edge, %if.end10.stmpe_ts_get_platform_info.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %work = getelementptr inbounds %struct.stmpe_touch, ptr %call.i, i32 0, i32 2
  call void @__init_work(ptr noundef %work, i32 noundef 0) #5
  %46 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.stmpe_touch, ptr %call.i, i32 0, i32 2, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @stmpe_input_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry23 = getelementptr inbounds %struct.stmpe_touch, ptr %call.i, i32 0, i32 2, i32 0, i32 1
  %47 = ptrtoint ptr %entry23 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %entry23, ptr %entry23, align 4
  %prev.i = getelementptr inbounds %struct.stmpe_touch, ptr %call.i, i32 0, i32 2, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %entry23, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.stmpe_touch, ptr %call.i, i32 0, i32 2, i32 0, i32 2
  %49 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @stmpe_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.stmpe_touch, ptr %call.i, i32 0, i32 2, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.4, ptr noundef nonnull @stmpe_input_probe.__key.3) #5
  %call33 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call1, ptr noundef null, ptr noundef nonnull @stmpe_ts_handler, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end40, label %do.end38

do.end38:                                         ; preds = %stmpe_ts_get_platform_info.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %call1) #8
  br label %cleanup

if.end40:                                         ; preds = %stmpe_ts_get_platform_info.exit
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call.i, align 4
  %52 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev14, align 4
  %call.i102 = call i32 @stmpe_enable(ptr noundef %51, i32 noundef 12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %tobool.not.i103 = icmp eq i32 %call.i102, 0
  br i1 %tobool.not.i103, label %if.end.i105, label %do.end.i

do.end.i:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.23) #8
  br label %cleanup

if.end.i105:                                      ; preds = %if.end40
  %call3.i = call i32 @stmpe811_adc_common_init(ptr noundef %51) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i104 = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i104, label %if.end7.i, label %if.then5.i106

if.then5.i106:                                    ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i = call i32 @stmpe_disable(ptr noundef %51, i32 noundef 12) #5
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i105
  %ave_ctrl.i107 = getelementptr inbounds %struct.stmpe_touch, ptr %call.i, i32 0, i32 5
  %54 = ptrtoint ptr %ave_ctrl.i107 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %ave_ctrl.i107, align 4
  %56 = shl i8 %55, 6
  %touch_det_delay.i108 = getelementptr inbounds %struct.stmpe_touch, ptr %call.i, i32 0, i32 6
  %57 = ptrtoint ptr %touch_det_delay.i108 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %touch_det_delay.i108, align 1
  %59 = shl i8 %58, 3
  %60 = and i8 %59, 56
  %or91.i = or i8 %60, %56
  %settling.i109 = getelementptr inbounds %struct.stmpe_touch, ptr %call.i, i32 0, i32 7
  %61 = ptrtoint ptr %settling.i109 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %settling.i109, align 2
  %63 = and i8 %62, 7
  %or1392.i = or i8 %or91.i, %63
  %call15.i = call i32 @stmpe_set_bits(ptr noundef %51, i8 noundef zeroext 65, i8 noundef zeroext -1, i8 noundef zeroext %or1392.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i110 = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i110, label %if.end21.i, label %do.end20.i

do.end20.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.26) #8
  br label %cleanup

if.end21.i:                                       ; preds = %if.end7.i
  %fraction_z.i111 = getelementptr inbounds %struct.stmpe_touch, ptr %call.i, i32 0, i32 8
  %64 = ptrtoint ptr %fraction_z.i111 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %fraction_z.i111, align 1
  %66 = and i8 %65, 7
  %call25.i = call i32 @stmpe_set_bits(ptr noundef %51, i8 noundef zeroext 86, i8 noundef zeroext 7, i8 noundef zeroext %66) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end31.i, label %do.end30.i

do.end30.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.26) #8
  br label %cleanup

if.end31.i:                                       ; preds = %if.end21.i
  %i_drive.i112 = getelementptr inbounds %struct.stmpe_touch, ptr %call.i, i32 0, i32 9
  %67 = ptrtoint ptr %i_drive.i112 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %i_drive.i112, align 4
  %69 = and i8 %68, 1
  %call35.i = call i32 @stmpe_set_bits(ptr noundef %51, i8 noundef zeroext 88, i8 noundef zeroext 1, i8 noundef zeroext %69) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end41.i, label %do.end40.i

do.end40.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.26) #8
  br label %cleanup

if.end41.i:                                       ; preds = %if.end31.i
  %call42.i = call i32 @stmpe_reg_write(ptr noundef %51, i8 noundef zeroext 74, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %if.end48.i, label %do.end47.i

do.end47.i:                                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.33) #8
  br label %cleanup

if.end48.i:                                       ; preds = %if.end41.i
  %call49.i = call i32 @stmpe_set_bits(ptr noundef %51, i8 noundef zeroext 64, i8 noundef zeroext 14, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %if.end44, label %do.end54.i

do.end54.i:                                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.36) #8
  br label %cleanup

if.end44:                                         ; preds = %if.end48.i
  %70 = ptrtoint ptr %call7 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @.str, ptr %call7, align 8
  %phys = getelementptr inbounds %struct.input_dev, ptr %call7, i32 0, i32 1
  %71 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.10, ptr %phys, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %call7, i32 0, i32 3
  %72 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 24, ptr %id, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call7, i32 0, i32 31
  %73 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @stmpe_ts_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call7, i32 0, i32 32
  %74 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @stmpe_ts_close, ptr %close, align 4
  %driver_data.i.i113 = getelementptr inbounds %struct.input_dev, ptr %call7, i32 0, i32 40, i32 8
  %75 = ptrtoint ptr %driver_data.i.i113 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call.i, ptr %driver_data.i.i113, align 4
  call void @input_set_capability(ptr noundef nonnull %call7, i32 noundef 1, i32 noundef 330) #5
  call void @input_set_abs_params(ptr noundef nonnull %call7, i32 noundef 0, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #5
  call void @input_set_abs_params(ptr noundef nonnull %call7, i32 noundef 1, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #5
  call void @input_set_abs_params(ptr noundef nonnull %call7, i32 noundef 24, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #5
  %prop = getelementptr inbounds %struct.stmpe_touch, ptr %call.i, i32 0, i32 4
  call void @touchscreen_parse_properties(ptr noundef nonnull %call7, i1 noundef zeroext false, ptr noundef %prop) #5
  %call45 = call i32 @input_register_device(ptr noundef nonnull %call7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end44.cleanup_crit_edge, label %do.end50

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end50, %if.end44.cleanup_crit_edge, %do.end54.i, %do.end47.i, %do.end40.i, %do.end30.i, %do.end20.i, %if.then5.i106, %do.end.i, %do.end38, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call33, %do.end38 ], [ %call45, %do.end50 ], [ %call1, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ 0, %if.end44.cleanup_crit_edge ], [ %call49.i, %do.end54.i ], [ %call42.i, %do.end47.i ], [ %call35.i, %do.end40.i ], [ %call25.i, %do.end30.i ], [ %call15.i, %do.end20.i ], [ %call3.i, %if.then5.i106 ], [ %call.i102, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmpe_ts_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @stmpe_disable(ptr noundef %3, i32 noundef 4) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stmpe_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 @stmpe_reg_read(ptr noundef %1, i8 noundef zeroext 11) #5
  %and13 = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool.not14 = icmp eq i32 %and13, 0
  br i1 %tobool.not14, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %timeout.015 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 40, %entry.while.body_crit_edge ]
  %dec = add nsw i32 %timeout.015, -1
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %call2 = tail call i32 @stmpe_reg_read(ptr noundef %3, i8 noundef zeroext 11) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 21474800) #5
  %and = and i32 %call2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call i32 @stmpe_set_bits(ptr noundef %6, i8 noundef zeroext 75, i8 noundef zeroext 1, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %while.end.__stmpe_reset_fifo.exit_crit_edge

while.end.__stmpe_reset_fifo.exit_crit_edge:      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %__stmpe_reset_fifo.exit

if.end.i:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i = tail call i32 @stmpe_set_bits(ptr noundef %6, i8 noundef zeroext 75, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %__stmpe_reset_fifo.exit

__stmpe_reset_fifo.exit:                          ; preds = %if.end.i, %while.end.__stmpe_reset_fifo.exit_crit_edge
  %idev = getelementptr i8, ptr %work, i32 -4
  %7 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %idev, align 4
  tail call void @input_event(ptr noundef %8, i32 noundef 3, i32 noundef 24, i32 noundef 0) #5
  %9 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %idev, align 4
  tail call void @input_event(ptr noundef %10, i32 noundef 1, i32 noundef 330, i32 noundef 0) #5
  %11 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %idev, align 4
  tail call void @input_event(ptr noundef %12, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmpe_ts_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %data_set = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_set) #5
  %0 = getelementptr inbounds [4 x i8], ptr %data_set, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %data_set, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %data_set, i32 0, i32 3
  %work = getelementptr inbounds %struct.stmpe_touch, ptr %data, i32 0, i32 2
  %3 = ptrtoint ptr %data_set to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %data_set, align 4
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #5
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %call1 = tail call i32 @stmpe_set_bits(ptr noundef %5, i8 noundef zeroext 64, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %call3 = call i32 @stmpe_block_read(ptr noundef %7, i8 noundef zeroext 82, i8 noundef zeroext 4, ptr noundef nonnull %data_set) #5
  %8 = ptrtoint ptr %data_set to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data_set, align 4
  %conv = zext i8 %9 to i32
  %shl = shl nuw nsw i32 %conv, 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %0, align 1
  %conv5 = zext i8 %11 to i32
  %12 = lshr i32 %conv5, 4
  %or = or i32 %12, %shl
  %and = shl nuw nsw i32 %conv5, 8
  %shl8 = and i32 %and, 3840
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %1, align 2
  %conv10 = zext i8 %14 to i32
  %or11 = or i32 %shl8, %conv10
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %2, align 1
  %conv13 = zext i8 %16 to i32
  %idev = getelementptr inbounds %struct.stmpe_touch, ptr %data, i32 0, i32 1
  %17 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %idev, align 4
  %prop = getelementptr inbounds %struct.stmpe_touch, ptr %data, i32 0, i32 4
  call void @touchscreen_report_pos(ptr noundef %18, ptr noundef %prop, i32 noundef %or, i32 noundef %or11, i1 noundef zeroext false) #5
  %19 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %idev, align 4
  call void @input_event(ptr noundef %20, i32 noundef 3, i32 noundef 24, i32 noundef %conv13) #5
  %21 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %idev, align 4
  call void @input_event(ptr noundef %22, i32 noundef 1, i32 noundef 330, i32 noundef 1) #5
  %23 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %idev, align 4
  call void @input_event(ptr noundef %24, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %call.i = call i32 @stmpe_set_bits(ptr noundef %26, i8 noundef zeroext 75, i8 noundef zeroext 1, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__stmpe_reset_fifo.exit_crit_edge

entry.__stmpe_reset_fifo.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %__stmpe_reset_fifo.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i = call i32 @stmpe_set_bits(ptr noundef %26, i8 noundef zeroext 75, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %__stmpe_reset_fifo.exit

__stmpe_reset_fifo.exit:                          ; preds = %if.end.i, %entry.__stmpe_reset_fifo.exit_crit_edge
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %call20 = call i32 @stmpe_set_bits(ptr noundef %28, i8 noundef zeroext 64, i8 noundef zeroext 1, i8 noundef zeroext 1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %29 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %29, ptr noundef %work, i32 noundef 5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_set) #5
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmpe_ts_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @stmpe_set_bits(ptr noundef %3, i8 noundef zeroext 75, i8 noundef zeroext 1, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %__stmpe_reset_fifo.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

__stmpe_reset_fifo.exit:                          ; preds = %entry
  %call1.i = tail call i32 @stmpe_set_bits(ptr noundef %3, i8 noundef zeroext 75, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.end, label %__stmpe_reset_fifo.exit.cleanup_crit_edge

__stmpe_reset_fifo.exit.cleanup_crit_edge:        ; preds = %__stmpe_reset_fifo.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %__stmpe_reset_fifo.exit
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call3 = tail call i32 @stmpe_set_bits(ptr noundef %5, i8 noundef zeroext 64, i8 noundef zeroext 1, i8 noundef zeroext 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %__stmpe_reset_fifo.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call1.i, %__stmpe_reset_fifo.exit.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stmpe_ts_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %work = getelementptr inbounds %struct.stmpe_touch, ptr %1, i32 0, i32 2
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call2 = tail call i32 @stmpe_set_bits(ptr noundef %3, i8 noundef zeroext 64, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_parse_properties(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_reg_read(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_set_bits(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_block_read(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_report_pos(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe811_adc_common_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_reg_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !67, !68, !70, !71, !72, !74, !75}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @__initcall__kmod_stmpe_ts__288_369_stmpe_ts_driver_init6, !1, !"__initcall__kmod_stmpe_ts__288_369_stmpe_ts_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/stmpe-ts.c", i32 369, i32 1}
!2 = !{ptr @__exitcall_stmpe_ts_driver_exit, !1, !"__exitcall_stmpe_ts_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/stmpe-ts.c", i32 377, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/stmpe-ts.c", i32 378, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/stmpe-ts.c", i32 379, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/stmpe-ts.c", i32 364, i32 11}
!12 = !{ptr @stmpe_ts_driver, !13, !"stmpe_ts_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/stmpe-ts.c", i32 362, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/stmpe-ts.c", i32 295, i32 41}
!16 = !{ptr @stmpe_input_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/input/touchscreen/stmpe-ts.c", i32 314, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @stmpe_input_probe.__key.3, !17, !"__key", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/input/touchscreen/stmpe-ts.c", i32 320, i32 3}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @stmpe_input_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @stmpe_input_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/touchscreen/stmpe-ts.c", i32 329, i32 15}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/touchscreen/stmpe-ts.c", i32 346, i32 3}
!33 = !{ptr @stmpe_input_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @stmpe_input_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/touchscreen/stmpe-ts.c", i32 266, i32 33}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/touchscreen/stmpe-ts.c", i32 268, i32 33}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/touchscreen/stmpe-ts.c", i32 270, i32 33}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/input/touchscreen/stmpe-ts.c", i32 272, i32 33}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/touchscreen/stmpe-ts.c", i32 274, i32 33}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/touchscreen/stmpe-ts.c", i32 276, i32 33}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/touchscreen/stmpe-ts.c", i32 278, i32 33}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/input/touchscreen/stmpe-ts.c", i32 280, i32 33}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/input/touchscreen/stmpe-ts.c", i32 282, i32 33}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/input/touchscreen/stmpe-ts.c", i32 183, i32 3}
!55 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @stmpe_init_hw._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @stmpe_init_hw._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/touchscreen/stmpe-ts.c", i32 201, i32 3}
!60 = !{ptr @stmpe_init_hw._entry.25, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @stmpe_init_hw._entry_ptr.27, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @stmpe_init_hw._entry.28, !63, !"_entry", i1 false, i1 false}
!63 = !{!"../drivers/input/touchscreen/stmpe-ts.c", i32 208, i32 3}
!64 = !{ptr @stmpe_init_hw._entry_ptr.29, !63, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @stmpe_init_hw._entry.30, !66, !"_entry", i1 false, i1 false}
!66 = !{!"../drivers/input/touchscreen/stmpe-ts.c", i32 215, i32 3}
!67 = !{ptr @stmpe_init_hw._entry_ptr.31, !66, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/input/touchscreen/stmpe-ts.c", i32 222, i32 3}
!70 = !{ptr @stmpe_init_hw._entry.32, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @stmpe_init_hw._entry_ptr.34, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/input/touchscreen/stmpe-ts.c", i32 229, i32 3}
!74 = !{ptr @stmpe_init_hw._entry.35, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @stmpe_init_hw._entry_ptr.37, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{!"auto-init"}
