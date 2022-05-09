; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/mc13783_ts.c_pt.bc'
source_filename = "../drivers/input/touchscreen/mc13783_ts.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mc13783_ts_priv = type { ptr, ptr, %struct.delayed_work, [4 x i32], ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.mc13xxx_ts_platform_data = type { i8, i8 }

@__param_str_sample_tolerance = internal constant [28 x i8] c"mc13783_ts.sample_tolerance\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@sample_tolerance = internal global { i32, [28 x i8] } { i32 300, [28 x i8] zeroinitializer }, align 32
@__param_sample_tolerance = internal constant %struct.kernel_param { ptr @__param_str_sample_tolerance, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @sample_tolerance } }, section "__param", align 4
@__UNIQUE_ID_sample_tolerancetype227 = internal constant [42 x i8] c"mc13783_ts.parmtype=sample_tolerance:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_sample_tolerance228 = internal constant [235 x i8] c"mc13783_ts.parm=sample_tolerance:If the minimal and maximal value read out for one axis (out of three) differ by this value (default: 300) or more, the reading is supposed to be wrong and is discarded.  Set to 0 to disable this check.\00", section ".modinfo", align 1
@__initcall__kmod_mc13783_ts__233_237_mc13783_ts_driver_init6 = internal global ptr @mc13783_ts_driver_init, section ".initcall6.init", align 4
@mc13783_ts_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr @mc13783_ts_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.8, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mc13783_ts_driver_exit = internal global ptr @mc13783_ts_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description234 = internal constant [56 x i8] c"mc13783_ts.description=MC13783 input touchscreen driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author235 = internal constant [56 x i8] c"mc13783_ts.author=Sascha Hauer <s.hauer@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file236 = internal constant [53 x i8] c"mc13783_ts.file=drivers/input/touchscreen/mc13783_ts\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [26 x i8] c"mc13783_ts.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias238 = internal constant [37 x i8] c"mc13783_ts.alias=platform:mc13783-ts\00", section ".modinfo", align 1
@mc13783_ts_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&(&priv->work)->work)\00", [56 x i8] zeroinitializer }, align 32
@mc13783_ts_probe.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&(&priv->work)->timer\00", [42 x i8] zeroinitializer }, align 32
@mc13783_ts_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 185, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"missing platform data\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mc13783_ts_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/input/touchscreen/mc13783_ts.c\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mc13783_ts_probe._entry_ptr = internal global ptr @mc13783_ts_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mc13783-ts\00", [21 x i8] zeroinitializer }, align 32
@mc13783_ts_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 207, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"register input device failed with %d\0A\00", [58 x i8] zeroinitializer }, align 32
@mc13783_ts_probe._entry_ptr.11 = internal global ptr @mc13783_ts_probe._entry.9, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mc13783_ts_report_sample.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.5, ptr @.str.14, i8 0, i8 22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mc13783_ts\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mc13783_ts_report_sample\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"x: (% 4d,% 4d,% 4d) y: (% 4d, % 4d,% 4d) cr: (% 4d, % 4d)\0A\00", [37 x i8] zeroinitializer }, align 32
@mc13783_ts_report_sample.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.5, ptr @.str.15, i8 0, i8 26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"report (%d, %d, %d)\0A\00", [43 x i8] zeroinitializer }, align 32
@mc13783_ts_report_sample.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.5, ptr @.str.16, i8 0, i8 26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"report release\0A\00", [16 x i8] zeroinitializer }, align 32
@mc13783_ts_report_sample.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.5, ptr @.str.17, i8 0, i8 28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"discard event\0A\00", [17 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"sample_tolerance\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 24, i32 21 }
@___asan_gen_.21 = private unnamed_addr constant [18 x i8] c"mc13783_ts_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 230, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 180, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 185, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 190, i32 15 }
@___asan_gen_.57 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 206, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 86, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 103, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 107, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private constant [42 x i8] c"../drivers/input/touchscreen/mc13783_ts.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 115, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_alias238, ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_license237, ptr @__UNIQUE_ID_sample_tolerance228, ptr @__UNIQUE_ID_sample_tolerancetype227, ptr @__exitcall_mc13783_ts_driver_exit, ptr @__initcall__kmod_mc13783_ts__233_237_mc13783_ts_driver_init6, ptr @__param_sample_tolerance, ptr @mc13783_ts_driver_exit, ptr @mc13783_ts_probe._entry, ptr @mc13783_ts_probe._entry.9, ptr @mc13783_ts_probe._entry_ptr, ptr @mc13783_ts_probe._entry_ptr.11, ptr @sample_tolerance, ptr @mc13783_ts_driver, ptr @mc13783_ts_probe.__key, ptr @.str, ptr @mc13783_ts_probe.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sample_tolerance to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_ts_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_ts_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_ts_probe.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_ts_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_ts_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13783_ts_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @mc13783_ts_driver, ptr noundef nonnull @mc13783_ts_probe, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mc13783_ts_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @mc13783_ts_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13783_ts_probe(ptr noundef %pdev) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 128) #9
  %call1 = tail call ptr @input_allocate_device() #6
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool2.not = icmp eq ptr %call1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.err_free_mem_crit_edge, label %do.body3

entry.err_free_mem_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_mem

do.body3:                                         ; preds = %entry
  %work = getelementptr inbounds %struct.mc13783_ts_priv, ptr %call7.i.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #6
  %1 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.mc13783_ts_priv, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @mc13783_ts_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry11 = getelementptr inbounds %struct.mc13783_ts_priv, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %2 = ptrtoint ptr %entry11 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry11, ptr %entry11, align 4
  %prev.i = getelementptr inbounds %struct.mc13783_ts_priv, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry11, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.mc13783_ts_priv, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mc13783_ts_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.mc13783_ts_priv, ptr %call7.i.i, i32 0, i32 2, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.2, ptr noundef nonnull @mc13783_ts_probe.__key.1) #6
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i, align 4
  %mc13xxx = getelementptr inbounds %struct.mc13783_ts_priv, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %mc13xxx, align 4
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call1, ptr %call7.i.i, align 8
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %11 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %platform_data.i, align 8
  %touch = getelementptr inbounds %struct.mc13783_ts_priv, ptr %call7.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %touch to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %touch, align 4
  %tobool25.not = icmp eq ptr %12, null
  br i1 %tobool25.not, label %do.end29, label %if.end31

do.end29:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #10
  br label %err_free_mem

if.end31:                                         ; preds = %do.body3
  %14 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.8, ptr %call1, align 8
  %parent34 = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 40, i32 1
  %15 = ptrtoint ptr %parent34 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev, ptr %parent34, align 8
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 5
  %16 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 10, ptr %evbit, align 8
  %arrayidx35 = getelementptr %struct.input_dev, ptr %call1, i32 0, i32 6, i32 10
  %17 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1024, ptr %arrayidx35, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 0, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 1, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 24, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #6
  %open = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 31
  %18 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @mc13783_ts_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 32
  %19 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @mc13783_ts_close, ptr %close, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 40, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call7.i.i, align 8
  %call37 = tail call i32 @input_register_device(ptr noundef %22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end44, label %do.end42

do.end42:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call37) #10
  br label %err_free_mem

if.end44:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i80 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %23 = ptrtoint ptr %driver_data.i.i80 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %driver_data.i.i80, align 4
  br label %cleanup

err_free_mem:                                     ; preds = %do.end42, %do.end29, %entry.err_free_mem_crit_edge
  %ret.0 = phi i32 [ %call37, %do.end42 ], [ -19, %do.end29 ], [ -12, %entry.err_free_mem_crit_edge ]
  tail call void @input_free_device(ptr noundef %call1) #6
  tail call void @kfree(ptr noundef %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_free_mem, %if.end44
  %retval.0 = phi i32 [ %ret.0, %err_free_mem ], [ 0, %if.end44 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mc13783_ts_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mc13xxx = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc13xxx, align 4
  %touch = getelementptr i8, ptr %work, i32 116
  %2 = ptrtoint ptr %touch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %touch, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %atox = getelementptr inbounds %struct.mc13xxx_ts_platform_data, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %atox to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %atox, align 1, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool = icmp ne i8 %7, 0
  %sample = getelementptr i8, ptr %work, i32 100
  %call = tail call i32 @mc13xxx_adc_do_conversion(ptr noundef %1, i32 noundef 1, i32 noundef 12, i8 noundef zeroext %5, i1 noundef zeroext %tobool, ptr noundef %sample) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  tail call fastcc void @mc13783_ts_report_sample(ptr noundef %add.ptr)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13783_ts_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mc13xxx = getelementptr inbounds %struct.mc13783_ts_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc13xxx, align 4
  tail call void @mc13xxx_lock(ptr noundef %3) #6
  %4 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mc13xxx, align 4
  %call4 = tail call i32 @mc13xxx_irq_request(ptr noundef %5, i32 noundef 2, ptr noundef nonnull @mc13783_ts_handler, ptr noundef nonnull @.str.8, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mc13xxx, align 4
  %call6 = tail call i32 @mc13xxx_reg_rmw(ptr noundef %7, i32 noundef 43, i32 noundef 28672, i32 noundef 4096) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.out_crit_edge, label %if.then8

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mc13xxx, align 4
  %call10 = tail call i32 @mc13xxx_irq_free(ptr noundef %9, i32 noundef 2, ptr noundef %1) #6
  br label %out

out:                                              ; preds = %if.then8, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call4, %entry.out_crit_edge ], [ %call6, %if.then8 ], [ 0, %if.end.out_crit_edge ]
  %10 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mc13xxx, align 4
  tail call void @mc13xxx_unlock(ptr noundef %11) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mc13783_ts_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mc13xxx = getelementptr inbounds %struct.mc13783_ts_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc13xxx, align 4
  tail call void @mc13xxx_lock(ptr noundef %3) #6
  %4 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mc13xxx, align 4
  %call2 = tail call i32 @mc13xxx_reg_rmw(ptr noundef %5, i32 noundef 43, i32 noundef 28672, i32 noundef 0) #6
  %6 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mc13xxx, align 4
  %call4 = tail call i32 @mc13xxx_irq_free(ptr noundef %7, i32 noundef 2, ptr noundef %1) #6
  %8 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mc13xxx, align 4
  tail call void @mc13xxx_unlock(ptr noundef %9) #6
  %work = getelementptr inbounds %struct.mc13783_ts_priv, ptr %1, i32 0, i32 2
  %call6 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mc13xxx_adc_do_conversion(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mc13783_ts_report_sample(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %sample = getelementptr inbounds %struct.mc13783_ts_priv, ptr %priv, i32 0, i32 3
  %2 = ptrtoint ptr %sample to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sample, align 4
  %and = and i32 %3, 4095
  %arrayidx3 = getelementptr %struct.mc13783_ts_priv, ptr %priv, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  %and4 = and i32 %5, 4095
  %arrayidx6 = getelementptr %struct.mc13783_ts_priv, ptr %priv, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6, align 4
  %and7 = and i32 %7, 4095
  %arrayidx9 = getelementptr %struct.mc13783_ts_priv, ptr %priv, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx9, align 4
  %and10 = and i32 %9, 4095
  %shr = lshr i32 %3, 12
  %and13 = and i32 %shr, 4095
  %shr16 = lshr i32 %5, 12
  %and17 = and i32 %shr16, 4095
  %shr20 = lshr i32 %7, 12
  %and21 = and i32 %shr20, 4095
  %shr24 = lshr i32 %9, 12
  %and25 = and i32 %shr24, 4095
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mc13783_ts_report_sample.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mc13783_ts_report_sample, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !65

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 40
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mc13783_ts_report_sample.__UNIQUE_ID_ddebug229, ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %and, i32 noundef %and4, i32 noundef %and7, i32 noundef %and10, i32 noundef %and13, i32 noundef %and17, i32 noundef %and21, i32 noundef %and25) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = tail call i32 @llvm.umax.i32(i32 %and, i32 %and4)
  %11 = tail call i32 @llvm.umin.i32(i32 %and, i32 %and4)
  %12 = tail call i32 @llvm.umax.i32(i32 %10, i32 %and7)
  %13 = tail call i32 @llvm.umin.i32(i32 %10, i32 %and7)
  %14 = tail call i32 @llvm.umax.i32(i32 %11, i32 %13)
  %15 = tail call i32 @llvm.umin.i32(i32 %11, i32 %13)
  %16 = tail call i32 @llvm.umax.i32(i32 %and10, i32 %and13)
  %17 = tail call i32 @llvm.umin.i32(i32 %and10, i32 %and13)
  %18 = tail call i32 @llvm.umax.i32(i32 %16, i32 %and17)
  %19 = tail call i32 @llvm.umin.i32(i32 %16, i32 %and17)
  %20 = tail call i32 @llvm.umax.i32(i32 %17, i32 %19)
  %21 = tail call i32 @llvm.umin.i32(i32 %17, i32 %19)
  %add = add nuw nsw i32 %and25, %and21
  %div193 = lshr i32 %add, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add)
  %tobool68.not = icmp ult i32 %add, 2
  br i1 %tobool68.not, label %do.body96, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %22 = load i32, ptr @sample_tolerance, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool69.not = icmp eq i32 %22, 0
  br i1 %tobool69.not, label %lor.lhs.false.if.then76_crit_edge, label %lor.lhs.false70

lor.lhs.false.if.then76_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then76

lor.lhs.false70:                                  ; preds = %lor.lhs.false
  %sub = sub nsw i32 %12, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %22)
  %cmp71 = icmp ult i32 %sub, %22
  %sub72 = sub nsw i32 %18, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %sub72, i32 %22)
  %cmp73 = icmp ult i32 %sub72, %22
  %or.cond = select i1 %cmp71, i1 %cmp73, i1 false
  br i1 %or.cond, label %lor.lhs.false70.if.then76_crit_edge, label %do.body117

lor.lhs.false70.if.then76_crit_edge:              ; preds = %lor.lhs.false70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then76

if.then76:                                        ; preds = %lor.lhs.false70.if.then76_crit_edge, %lor.lhs.false.if.then76_crit_edge
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 0, i32 noundef %14) #6
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 1, i32 noundef %20) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mc13783_ts_report_sample.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mc13783_ts_report_sample, %if.then89)) #6
          to label %do.end94 [label %if.then89], !srcloc !65

if.then89:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #8
  %dev90 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 40
  %sub91 = sub nuw nsw i32 4096, %div193
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mc13783_ts_report_sample.__UNIQUE_ID_ddebug230, ptr noundef %dev90, ptr noundef nonnull @.str.15, i32 noundef %14, i32 noundef %20, i32 noundef %sub91) #6
  br label %do.end94

do.end94:                                         ; preds = %if.then89, %if.then76
  %work = getelementptr inbounds %struct.mc13783_ts_priv, ptr %priv, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %23 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %23, ptr noundef %work, i32 noundef 2) #6
  %sub115 = sub nuw nsw i32 4096, %div193
  br label %cond.end

do.body96:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mc13783_ts_report_sample.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mc13783_ts_report_sample, %if.then108)) #6
          to label %cond.end [label %if.then108], !srcloc !65

if.then108:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #8
  %dev109 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 40
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mc13783_ts_report_sample.__UNIQUE_ID_ddebug231, ptr noundef %dev109, ptr noundef nonnull @.str.16) #6
  br label %cond.end

cond.end:                                         ; preds = %if.then108, %do.body96, %do.end94
  %cond = phi i32 [ 0, %if.then108 ], [ %sub115, %do.end94 ], [ 0, %do.body96 ]
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 24, i32 noundef %cond) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add)
  %tobool.i = icmp ugt i32 %add, 1
  %lnot.ext.i = zext i1 %tobool.i to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 330, i32 noundef %lnot.ext.i) #6
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %if.end134

do.body117:                                       ; preds = %lor.lhs.false70
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mc13783_ts_report_sample.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mc13783_ts_report_sample, %if.then129)) #6
          to label %if.end134 [label %if.then129], !srcloc !65

if.then129:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #8
  %dev130 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 40
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mc13783_ts_report_sample.__UNIQUE_ID_ddebug232, ptr noundef %dev130, ptr noundef nonnull @.str.17) #6
  br label %if.end134

if.end134:                                        ; preds = %if.then129, %do.body117, %cond.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mc13xxx_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mc13xxx_irq_request(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13783_ts_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %work = getelementptr inbounds %struct.mc13783_ts_priv, ptr %data, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %work, i32 noundef 0) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mc13xxx_reg_rmw(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mc13xxx_irq_free(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mc13xxx_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13783_ts_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @input_unregister_device(ptr noundef %3) #6
  tail call void @kfree(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !20, !22, !23, !24, !25, !27, !28, !29, !30, !31, !32, !33, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !49, !50, !52, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__param_sample_tolerance, !1, !"__param_sample_tolerance", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/mc13783_ts.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_sample_tolerancetype227, !1, !"__UNIQUE_ID_sample_tolerancetype227", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_sample_tolerance228, !4, !"__UNIQUE_ID_sample_tolerance228", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/mc13783_ts.c", i32 26, i32 1}
!5 = !{ptr @__initcall__kmod_mc13783_ts__233_237_mc13783_ts_driver_init6, !6, !"__initcall__kmod_mc13783_ts__233_237_mc13783_ts_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/mc13783_ts.c", i32 237, i32 1}
!7 = !{ptr @__exitcall_mc13783_ts_driver_exit, !6, !"__exitcall_mc13783_ts_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description234, !9, !"__UNIQUE_ID_description234", i1 false, i1 false}
!9 = !{!"../drivers/input/touchscreen/mc13783_ts.c", i32 239, i32 1}
!10 = !{ptr @__UNIQUE_ID_author235, !11, !"__UNIQUE_ID_author235", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/mc13783_ts.c", i32 240, i32 1}
!12 = !{ptr @__UNIQUE_ID_file236, !13, !"__UNIQUE_ID_file236", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/mc13783_ts.c", i32 241, i32 1}
!14 = !{ptr @__UNIQUE_ID_license237, !13, !"__UNIQUE_ID_license237", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_alias238, !16, !"__UNIQUE_ID_alias238", i1 false, i1 false}
!16 = !{!"../drivers/input/touchscreen/mc13783_ts.c", i32 242, i32 1}
!17 = !{ptr @__param_str_sample_tolerance, !1, !"__param_str_sample_tolerance", i1 false, i1 false}
!18 = !{ptr @sample_tolerance, !19, !"sample_tolerance", i1 false, i1 false}
!19 = !{!"../drivers/input/touchscreen/mc13783_ts.c", i32 24, i32 21}
!20 = !{ptr @mc13783_ts_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/input/touchscreen/mc13783_ts.c", i32 180, i32 2}
!22 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mc13783_ts_probe.__key.1, !21, !"__key", i1 false, i1 false}
!24 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/input/touchscreen/mc13783_ts.c", i32 185, i32 3}
!27 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @mc13783_ts_probe._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @mc13783_ts_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/touchscreen/mc13783_ts.c", i32 190, i32 15}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/touchscreen/mc13783_ts.c", i32 206, i32 3}
!37 = !{ptr @mc13783_ts_probe._entry.9, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @mc13783_ts_probe._entry_ptr.11, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/touchscreen/mc13783_ts.c", i32 86, i32 2}
!41 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @mc13783_ts_report_sample.__UNIQUE_ID_ddebug229, !40, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/touchscreen/mc13783_ts.c", i32 103, i32 4}
!46 = !{ptr @mc13783_ts_report_sample.__UNIQUE_ID_ddebug230, !45, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/touchscreen/mc13783_ts.c", i32 107, i32 4}
!49 = !{ptr @mc13783_ts_report_sample.__UNIQUE_ID_ddebug231, !48, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/touchscreen/mc13783_ts.c", i32 115, i32 3}
!52 = !{ptr @mc13783_ts_report_sample.__UNIQUE_ID_ddebug232, !51, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!53 = !{ptr @mc13783_ts_driver, !54, !"mc13783_ts_driver", i1 false, i1 false}
!54 = !{!"../drivers/input/touchscreen/mc13783_ts.c", i32 230, i32 31}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i8 0, i8 2}
!65 = !{i64 2148294373, i64 2148294378, i64 2148294391, i64 2148294435, i64 2148294469, i64 2148294490}
