; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/wm831x-ts.c_pt.bc'
source_filename = "../drivers/input/touchscreen/wm831x-ts.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.wm831x_pdata = type { i32, ptr, ptr, i8, i8, i8, i32, i32, [16 x i32], ptr, ptr, ptr, ptr, ptr, [2 x ptr], [4 x ptr], [2 x ptr], [11 x ptr], [2 x ptr] }
%struct.wm831x_ts = type { ptr, ptr, i32, i32, i8, i8, %struct.work_struct }
%struct.wm831x = type { %struct.mutex, ptr, ptr, %struct.wm831x_pdata, i32, i32, %struct.mutex, ptr, [5 x i32], [5 x i32], i8, i8, i32, [16 x i32], [16 x i8], [16 x i8], %struct.mutex, %struct.list_head, i16, ptr, %struct.mutex, i8 }
%struct.wm831x_touch_pdata = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_wm831x_ts__231_394_wm831x_ts_driver_init6 = internal global ptr @wm831x_ts_driver_init, section ".initcall6.init", align 4
@wm831x_ts_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @wm831x_ts_probe, ptr @wm831x_ts_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_wm831x_ts_driver_exit = internal global ptr @wm831x_ts_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author232 = internal constant [66 x i8] c"wm831x_ts.author=Mark Brown <broonie@opensource.wolfsonmicro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [53 x i8] c"wm831x_ts.description=WM831x PMIC touchscreen driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [51 x i8] c"wm831x_ts.file=drivers/input/touchscreen/wm831x-ts\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [22 x i8] c"wm831x_ts.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias236 = internal constant [38 x i8] c"wm831x_ts.alias=platform:wm831x-touch\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wm831x-touch\00", [19 x i8] zeroinitializer }, align 32
@wm831x_ts_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&wm831x_ts->pd_data_work)\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TCHDATA\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TCHPD\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/input/touchscreen/wm831x-ts.c\00", [58 x i8] zeroinitializer }, align 32
@wm831x_ts_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 292, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unsupported ISEL setting: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wm831x_ts_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm831x_ts_probe._entry_ptr = internal global ptr @wm831x_ts_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Touchscreen data\00", [47 x i8] zeroinitializer }, align 32
@wm831x_ts_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.4, i32 324, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to request data IRQ %d: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@wm831x_ts_probe._entry_ptr.12 = internal global ptr @wm831x_ts_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Touchscreen pen down\00", [43 x i8] zeroinitializer }, align 32
@wm831x_ts_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.4, i32 339, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to request pen down IRQ %d: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@wm831x_ts_probe._entry_ptr.16 = internal global ptr @wm831x_ts_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"WM831x touchscreen\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wm831x\00", [25 x i8] zeroinitializer }, align 32
@wm831x_pd_data_work.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.4, ptr @.str.21, i8 0, i8 19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wm831x_ts\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wm831x_pd_data_work\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IRQ PD->DATA done\0A\00", [45 x i8] zeroinitializer }, align 32
@wm831x_pd_data_work.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.4, ptr @.str.22, i8 0, i8 19, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IRQ DATA->PD done\0A\00", [45 x i8] zeroinitializer }, align 32
@wm831x_ts_data_irq.data_types = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 24], [20 x i8] zeroinitializer }, align 32
@wm831x_ts_data_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 104, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to read touch data: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wm831x_ts_data_irq\00", [45 x i8] zeroinitializer }, align 32
@wm831x_ts_data_irq._entry_ptr = internal global ptr @wm831x_ts_data_irq._entry, section ".printk_index", align 4
@wm831x_ts_data_irq.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.24, ptr @.str.4, ptr @.str.25, i8 0, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IRQ DATA->PD\0A\00", [18 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@wm831x_ts_pen_down_irq.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.26, ptr @.str.4, ptr @.str.27, i8 0, i8 45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wm831x_ts_pen_down_irq\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IRQ PD->DATA\0A\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 200, i64 400]
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"wm831x_ts_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 387, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 389, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 253, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 261, i32 10 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 266, i32 42 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 281, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 291, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 321, i32 10 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 323, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 336, i32 10 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 338, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 344, i32 20 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 345, i32 20 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 76, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 79, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [11 x i8] c"data_types\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 87, i32 13 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 103, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 124, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private constant [41 x i8] c"../drivers/input/touchscreen/wm831x-ts.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 180, i32 2 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_alias236, ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_wm831x_ts_driver_exit, ptr @__initcall__kmod_wm831x_ts__231_394_wm831x_ts_driver_init6, ptr @wm831x_ts_data_irq._entry, ptr @wm831x_ts_data_irq._entry_ptr, ptr @wm831x_ts_driver_exit, ptr @wm831x_ts_probe._entry, ptr @wm831x_ts_probe._entry.10, ptr @wm831x_ts_probe._entry.14, ptr @wm831x_ts_probe._entry_ptr, ptr @wm831x_ts_probe._entry_ptr.12, ptr @wm831x_ts_probe._entry_ptr.16, ptr @wm831x_ts_driver, ptr @.str, ptr @wm831x_ts_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @wm831x_ts_data_irq.data_types, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_ts_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_ts_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_ts_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_ts_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_ts_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_ts_data_irq.data_types to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_ts_data_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_ts_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @wm831x_ts_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wm831x_ts_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @wm831x_ts_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_ts_probe(ptr noundef %pdev) #2 align 64 {
entry:
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
  %platform_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %touch = getelementptr inbounds %struct.wm831x_pdata, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %touch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %touch, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pdata.0 = phi ptr [ %7, %if.then ], [ null, %entry.if.end_crit_edge ]
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 64, i32 noundef 3520) #5
  %call7 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #5
  %tobool8.not = icmp eq ptr %call.i, null
  %tobool9.not = icmp eq ptr %call7, null
  %or.cond = select i1 %tobool8.not, i1 true, i1 %tobool9.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %wm831x12 = getelementptr inbounds %struct.wm831x_ts, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %wm831x12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %3, ptr %wm831x12, align 4
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7, ptr %call.i, align 4
  %pd_data_work = getelementptr inbounds %struct.wm831x_ts, ptr %call.i, i32 0, i32 6
  tail call void @__init_work(ptr noundef %pd_data_work, i32 noundef 0) #5
  %10 = ptrtoint ptr %pd_data_work to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %pd_data_work, align 4
  %lockdep_map = getelementptr inbounds %struct.wm831x_ts, ptr %call.i, i32 0, i32 6, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @wm831x_ts_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry17 = getelementptr inbounds %struct.wm831x_ts, ptr %call.i, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %entry17 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry17, ptr %entry17, align 4
  %prev.i = getelementptr inbounds %struct.wm831x_ts, ptr %call.i, i32 0, i32 6, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry17, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.wm831x_ts, ptr %call.i, i32 0, i32 6, i32 2
  %13 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @wm831x_pd_data_work, ptr %func, align 4
  %call19 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.2) #5
  %irq_domain.i = getelementptr inbounds %struct.wm831x, ptr %3, i32 0, i32 7
  %14 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_domain.i, align 4
  %call.i.i = tail call i32 @irq_create_mapping_affinity(ptr noundef %15, i32 noundef %call19, ptr noundef null) #5
  %data_irq = getelementptr inbounds %struct.wm831x_ts, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %data_irq to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call.i.i, ptr %data_irq, align 4
  %tobool21.not = icmp eq ptr %pdata.0, null
  br i1 %tobool21.not, label %if.end11.if.end27_crit_edge, label %land.lhs.true

if.end11.if.end27_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end11
  %data_irq22 = getelementptr inbounds %struct.wm831x_touch_pdata, ptr %pdata.0, i32 0, i32 4
  %17 = ptrtoint ptr %data_irq22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_irq22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool23.not = icmp eq i32 %18, 0
  br i1 %tobool23.not, label %land.lhs.true.if.end27_crit_edge, label %if.then24

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %data_irq to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %data_irq, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %land.lhs.true.if.end27_crit_edge, %if.end11.if.end27_crit_edge
  %call28 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.3) #5
  %20 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %irq_domain.i, align 4
  %call.i.i255 = tail call i32 @irq_create_mapping_affinity(ptr noundef %21, i32 noundef %call28, ptr noundef null) #5
  %pd_irq = getelementptr inbounds %struct.wm831x_ts, ptr %call.i, i32 0, i32 3
  %22 = ptrtoint ptr %pd_irq to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call.i.i255, ptr %pd_irq, align 4
  br i1 %tobool21.not, label %if.end100, label %land.lhs.true31

land.lhs.true31:                                  ; preds = %if.end27
  %pd_irq32 = getelementptr inbounds %struct.wm831x_touch_pdata, ptr %pdata.0, i32 0, i32 6
  %23 = ptrtoint ptr %pd_irq32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pd_irq32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool33.not = icmp eq i32 %24, 0
  br i1 %tobool33.not, label %land.lhs.true31.if.then39_crit_edge, label %if.then34

land.lhs.true31.if.then39_crit_edge:              ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then39

if.then34:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %pd_irq to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %pd_irq, align 4
  br label %if.then39

if.then39:                                        ; preds = %if.then34, %land.lhs.true31.if.then39_crit_edge
  %pressure = getelementptr inbounds %struct.wm831x_touch_pdata, ptr %pdata.0, i32 0, i32 3
  %26 = ptrtoint ptr %pressure to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pressure, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool40 = icmp ne i32 %27, 0
  %pressure41 = getelementptr inbounds %struct.wm831x_ts, ptr %call.i, i32 0, i32 4
  %frombool = zext i1 %tobool40 to i8
  %28 = ptrtoint ptr %pressure41 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %frombool, ptr %pressure41, align 4
  %29 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pdata.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool46.not = icmp eq i32 %30, 0
  br i1 %tobool46.not, label %if.end80, label %if.then47

if.then47:                                        ; preds = %if.then39
  %call48 = tail call i32 @wm831x_set_bits(ptr noundef %3, i16 noundef zeroext 16425, i16 noundef zeroext 4096, i16 noundef zeroext 4096) #5
  %31 = ptrtoint ptr %pressure to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pressure, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool50.not = icmp eq i32 %32, 0
  br i1 %tobool50.not, label %if.then47.if.end80.thread_crit_edge, label %land.rhs

if.then47.if.end80.thread_crit_edge:              ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80.thread

land.rhs:                                         ; preds = %if.then47
  %33 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pdata.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool52.not = icmp eq i32 %34, 0
  br i1 %tobool52.not, label %land.rhs.if.end80.thread_crit_edge, label %do.end64, !prof !79

land.rhs.if.end80.thread_crit_edge:               ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80.thread

do.end64:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 281, i32 noundef 9, ptr noundef null) #5
  br label %if.end80.thread

if.end80.thread:                                  ; preds = %do.end64, %land.rhs.if.end80.thread_crit_edge, %if.then47.if.end80.thread_crit_edge
  %35 = ptrtoint ptr %pressure41 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %pressure41, align 4
  br label %if.then82

if.end80:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  %call79 = tail call i32 @wm831x_set_bits(ptr noundef %3, i16 noundef zeroext 16425, i16 noundef zeroext 4096, i16 noundef zeroext 0) #5
  br label %if.then82

if.then82:                                        ; preds = %if.end80, %if.end80.thread
  %isel = getelementptr inbounds %struct.wm831x_touch_pdata, ptr %pdata.0, i32 0, i32 1
  %36 = ptrtoint ptr %isel to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %isel, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values)
  switch i32 %37, label %do.end85 [
    i32 200, label %if.then82.if.end100.thread_crit_edge
    i32 0, label %if.then82.if.end100.thread_crit_edge263
    i32 400, label %sw.bb89
  ]

if.then82.if.end100.thread_crit_edge263:          ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end100.thread

if.then82.if.end100.thread_crit_edge:             ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end100.thread

do.end85:                                         ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %37) #8
  br label %if.end100.thread

sw.bb89:                                          ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end100.thread

if.end100:                                        ; preds = %if.end27
  %pressure42 = getelementptr inbounds %struct.wm831x_ts, ptr %call.i, i32 0, i32 4
  %39 = ptrtoint ptr %pressure42 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %pressure42, align 4
  %call79258 = tail call i32 @wm831x_set_bits(ptr noundef %3, i16 noundef zeroext 16425, i16 noundef zeroext 4096, i16 noundef zeroext 0) #5
  %call92.c249 = tail call i32 @wm831x_set_bits(ptr noundef %3, i16 noundef zeroext 16425, i16 noundef zeroext 2048, i16 noundef zeroext 0) #5
  %call93.c250 = tail call i32 @wm831x_set_bits(ptr noundef %3, i16 noundef zeroext 16424, i16 noundef zeroext 31, i16 noundef zeroext 6) #5
  %40 = ptrtoint ptr %data_irq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %data_irq, align 4
  %call103 = tail call i32 @request_threaded_irq(i32 noundef %41, ptr noundef null, ptr noundef nonnull @wm831x_ts_data_irq, i32 noundef 532484, ptr noundef nonnull @.str.9, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end100.if.end118_crit_edge, label %if.end100.do.end108_crit_edge

if.end100.do.end108_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end108

if.end100.if.end118_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end118

if.end100.thread:                                 ; preds = %sw.bb89, %do.end85, %if.then82.if.end100.thread_crit_edge, %if.then82.if.end100.thread_crit_edge263
  %.sink = phi i16 [ 256, %sw.bb89 ], [ 0, %if.then82.if.end100.thread_crit_edge ], [ 0, %if.then82.if.end100.thread_crit_edge263 ], [ 0, %do.end85 ]
  %call88 = tail call i32 @wm831x_set_bits(ptr noundef %3, i16 noundef zeroext 16425, i16 noundef zeroext 256, i16 noundef zeroext %.sink) #5
  %call92.c = tail call i32 @wm831x_set_bits(ptr noundef %3, i16 noundef zeroext 16425, i16 noundef zeroext 2048, i16 noundef zeroext 0) #5
  %call93.c = tail call i32 @wm831x_set_bits(ptr noundef %3, i16 noundef zeroext 16424, i16 noundef zeroext 31, i16 noundef zeroext 6) #5
  %data_irqf = getelementptr inbounds %struct.wm831x_touch_pdata, ptr %pdata.0, i32 0, i32 5
  %42 = ptrtoint ptr %data_irqf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data_irqf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool96.not = icmp eq i32 %43, 0
  %phi.bo244 = or i32 %43, 532480
  %spec.select = select i1 %tobool96.not, i32 532484, i32 %phi.bo244
  %44 = ptrtoint ptr %data_irq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %data_irq, align 4
  %call103260 = tail call i32 @request_threaded_irq(i32 noundef %45, ptr noundef null, ptr noundef nonnull @wm831x_ts_data_irq, i32 noundef %spec.select, ptr noundef nonnull @.str.9, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103260)
  %tobool104.not261 = icmp eq i32 %call103260, 0
  br i1 %tobool104.not261, label %land.lhs.true113, label %if.end100.thread.do.end108_crit_edge

if.end100.thread.do.end108_crit_edge:             ; preds = %if.end100.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end108

do.end108:                                        ; preds = %if.end100.thread.do.end108_crit_edge, %if.end100.do.end108_crit_edge
  %call103262 = phi i32 [ %call103260, %if.end100.thread.do.end108_crit_edge ], [ %call103, %if.end100.do.end108_crit_edge ]
  %46 = ptrtoint ptr %data_irq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data_irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %47, i32 noundef %call103262) #8
  br label %cleanup

land.lhs.true113:                                 ; preds = %if.end100.thread
  call void @__sanitizer_cov_trace_pc() #7
  %pd_irqf = getelementptr inbounds %struct.wm831x_touch_pdata, ptr %pdata.0, i32 0, i32 7
  %48 = ptrtoint ptr %pd_irqf to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pd_irqf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool114.not = icmp eq i32 %49, 0
  %phi.bo = or i32 %49, 8192
  %spec.select251 = select i1 %tobool114.not, i32 8196, i32 %phi.bo
  br label %if.end118

if.end118:                                        ; preds = %land.lhs.true113, %if.end100.if.end118_crit_edge
  %irqf.1 = phi i32 [ %spec.select251, %land.lhs.true113 ], [ 8196, %if.end100.if.end118_crit_edge ]
  %50 = ptrtoint ptr %pd_irq to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pd_irq, align 4
  %call121 = tail call i32 @request_threaded_irq(i32 noundef %51, ptr noundef null, ptr noundef nonnull @wm831x_ts_pen_down_irq, i32 noundef %irqf.1, ptr noundef nonnull @.str.13, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end129, label %do.end126

do.end126:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %pd_irq to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pd_irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %53, i32 noundef %call121) #8
  br label %err_data_irq

if.end129:                                        ; preds = %if.end118
  %54 = ptrtoint ptr %call7 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.17, ptr %call7, align 8
  %phys = getelementptr inbounds %struct.input_dev, ptr %call7, i32 0, i32 1
  %55 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @.str.18, ptr %phys, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call7, i32 0, i32 31
  %56 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @wm831x_ts_input_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call7, i32 0, i32 32
  %57 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @wm831x_ts_input_close, ptr %close, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call7, i32 0, i32 5
  %58 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %evbit, align 4
  %or.i252 = or i32 %59, 10
  store i32 %or.i252, ptr %evbit, align 4
  %add.ptr.i = getelementptr %struct.input_dev, ptr %call7, i32 0, i32 6, i32 10
  %60 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr.i, align 4
  %or.i253 = or i32 %61, 1024
  store i32 %or.i253, ptr %add.ptr.i, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call7, i32 noundef 0, i32 noundef 0, i32 noundef 4095, i32 noundef 5, i32 noundef 0) #5
  tail call void @input_set_abs_params(ptr noundef nonnull %call7, i32 noundef 1, i32 noundef 0, i32 noundef 4095, i32 noundef 5, i32 noundef 0) #5
  %pressure133 = getelementptr inbounds %struct.wm831x_ts, ptr %call.i, i32 0, i32 4
  %62 = ptrtoint ptr %pressure133 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %pressure133, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool134.not = icmp eq i8 %63, 0
  br i1 %tobool134.not, label %if.end129.if.end136_crit_edge, label %if.then135

if.end129.if.end136_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end136

if.then135:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @input_set_abs_params(ptr noundef nonnull %call7, i32 noundef 24, i32 noundef 0, i32 noundef 4095, i32 noundef 5, i32 noundef 0) #5
  br label %if.end136

if.end136:                                        ; preds = %if.then135, %if.end129.if.end136_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call7, i32 0, i32 40, i32 8
  %64 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %parent139 = getelementptr inbounds %struct.input_dev, ptr %call7, i32 0, i32 40, i32 1
  %65 = ptrtoint ptr %parent139 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %dev, ptr %parent139, align 8
  %call140 = tail call i32 @input_register_device(ptr noundef nonnull %call7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.end143, label %err_pd_irq

if.end143:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i256 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %66 = ptrtoint ptr %driver_data.i.i256 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call.i, ptr %driver_data.i.i256, align 4
  br label %cleanup

err_pd_irq:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %pd_irq to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pd_irq, align 4
  %call145 = tail call ptr @free_irq(i32 noundef %68, ptr noundef nonnull %call.i) #5
  br label %err_data_irq

err_data_irq:                                     ; preds = %err_pd_irq, %do.end126
  %error.0 = phi i32 [ %call121, %do.end126 ], [ %call140, %err_pd_irq ]
  %69 = ptrtoint ptr %data_irq to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %data_irq, align 4
  %call147 = tail call ptr @free_irq(i32 noundef %70, ptr noundef nonnull %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %err_data_irq, %if.end143, %do.end108, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end143 ], [ %call103262, %do.end108 ], [ %error.0, %err_data_irq ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_ts_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pd_irq = getelementptr inbounds %struct.wm831x_ts, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pd_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pd_irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #5
  %data_irq = getelementptr inbounds %struct.wm831x_ts, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %data_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm831x_pd_data_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pen_down = getelementptr i8, ptr %work, i32 -3
  %0 = ptrtoint ptr %pen_down to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pen_down, align 1, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %data_irq = getelementptr i8, ptr %work, i32 -12
  %2 = ptrtoint ptr %data_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_irq, align 4
  tail call void @enable_irq(i32 noundef %3) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm831x_pd_data_work.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm831x_pd_data_work, %if.then5)) #5
          to label %if.end24 [label %if.then5], !srcloc !81

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %wm831x = getelementptr i8, ptr %work, i32 -16
  %4 = ptrtoint ptr %wm831x to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wm831x, align 4
  %dev = getelementptr inbounds %struct.wm831x, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm831x_pd_data_work.__UNIQUE_ID_ddebug227, ptr noundef %7, ptr noundef nonnull @.str.21) #5
  br label %if.end24

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pd_irq = getelementptr i8, ptr %work, i32 -8
  %8 = ptrtoint ptr %pd_irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pd_irq, align 4
  tail call void @enable_irq(i32 noundef %9) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm831x_pd_data_work.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm831x_pd_data_work, %if.then18)) #5
          to label %if.end24 [label %if.then18], !srcloc !81

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %wm831x19 = getelementptr i8, ptr %work, i32 -16
  %10 = ptrtoint ptr %wm831x19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wm831x19, align 4
  %dev20 = getelementptr inbounds %struct.wm831x, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev20, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm831x_pd_data_work.__UNIQUE_ID_ddebug228, ptr noundef %13, ptr noundef nonnull @.str.22) #5
  br label %if.end24

if.end24:                                         ; preds = %if.then18, %if.else, %if.then5, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm831x_set_bits(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_ts_data_irq(i32 noundef %irq, ptr noundef %irq_data) #2 align 64 {
entry:
  %data = alloca [3 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %wm831x1 = getelementptr inbounds %struct.wm831x_ts, ptr %irq_data, i32 0, i32 1
  %0 = ptrtoint ptr %wm831x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wm831x1, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data) #5
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data, align 2, !annotation !82
  %3 = getelementptr inbounds [3 x i16], ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %3, align 2, !annotation !82
  %5 = getelementptr inbounds [3 x i16], ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %5, align 2, !annotation !82
  %pressure = getelementptr inbounds %struct.wm831x_ts, ptr %irq_data, i32 0, i32 4
  %7 = ptrtoint ptr %pressure to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pressure, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %. = select i1 %tobool.not, i32 2, i32 3
  %call = tail call i32 @wm831x_set_bits(ptr noundef %1, i16 noundef zeroext 16401, i16 noundef zeroext 1024, i16 noundef zeroext 1024) #5
  %call2 = call i32 @wm831x_bulk_read(ptr noundef %1, i16 noundef zeroext 16426, i32 noundef %., ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %if.end4, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.wm831x, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.23, i32 noundef %call2) #8
  br label %cleanup

if.end4:                                          ; preds = %entry
  %pen_down = getelementptr inbounds %struct.wm831x_ts, ptr %irq_data, i32 0, i32 5
  %11 = ptrtoint ptr %pen_down to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %pen_down, align 1
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %data, align 2
  %conv = zext i16 %13 to i32
  %and = and i32 %conv, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %pen_down to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %pen_down, align 1
  br label %for.body.1

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %irq_data, align 4
  %and13 = and i32 %conv, 4095
  call void @input_event(ptr noundef %16, i32 noundef 3, i32 noundef 0, i32 noundef %and13) #5
  br label %for.body.1

for.body.1:                                       ; preds = %if.end9, %if.then7
  %arrayidx.1 = getelementptr inbounds [3 x i16], ptr %data, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx.1, align 2
  %conv.1 = zext i16 %18 to i32
  %and.1 = and i32 %conv.1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool6.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool6.not.1, label %if.then7.1, label %if.end9.1

if.end9.1:                                        ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %irq_data, align 4
  %and13.1 = and i32 %conv.1, 4095
  call void @input_event(ptr noundef %20, i32 noundef 3, i32 noundef 1, i32 noundef %and13.1) #5
  br label %for.inc.1

if.then7.1:                                       ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %pen_down to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %pen_down, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then7.1, %if.end9.1
  br i1 %tobool.not, label %for.inc.1.for.end_crit_edge, label %for.body.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.2:                                       ; preds = %for.inc.1
  %arrayidx.2 = getelementptr inbounds [3 x i16], ptr %data, i32 0, i32 2
  %22 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.2, align 2
  %conv.2 = zext i16 %23 to i32
  %and.2 = and i32 %conv.2, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool6.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool6.not.2, label %if.then7.2, label %if.end9.2

if.end9.2:                                        ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %irq_data, align 4
  %and13.2 = and i32 %conv.2, 4095
  call void @input_event(ptr noundef %25, i32 noundef 3, i32 noundef 24, i32 noundef %and13.2) #5
  br label %for.end

if.then7.2:                                       ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %pen_down to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %pen_down, align 1
  br label %for.end

for.end:                                          ; preds = %if.then7.2, %if.end9.2, %for.inc.1.for.end_crit_edge
  %27 = ptrtoint ptr %pen_down to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pen_down, align 1, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool15.not = icmp eq i8 %28, 0
  br i1 %tobool15.not, label %do.body17, label %if.else38

do.body17:                                        ; preds = %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm831x_ts_data_irq.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm831x_ts_data_irq, %if.then22)) #5
          to label %do.end26 [label %if.then22], !srcloc !81

if.then22:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #7
  %dev23 = getelementptr inbounds %struct.wm831x, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev23, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm831x_ts_data_irq.__UNIQUE_ID_ddebug229, ptr noundef %30, ptr noundef nonnull @.str.25) #5
  br label %do.end26

do.end26:                                         ; preds = %if.then22, %do.body17
  %data_irq = getelementptr inbounds %struct.wm831x_ts, ptr %irq_data, i32 0, i32 2
  %31 = ptrtoint ptr %data_irq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data_irq, align 4
  call void @disable_irq_nosync(i32 noundef %32) #5
  %call27 = call i32 @wm831x_set_bits(ptr noundef %1, i16 noundef zeroext 16424, i16 noundef zeroext 1792, i16 noundef zeroext 0) #5
  %call28 = call i32 @wm831x_set_bits(ptr noundef %1, i16 noundef zeroext 16401, i16 noundef zeroext 1024, i16 noundef zeroext 1024) #5
  %call30 = call i32 @wm831x_bulk_read(ptr noundef %1, i16 noundef zeroext 16426, i32 noundef %., ptr noundef nonnull %data) #5
  %33 = ptrtoint ptr %pressure to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %pressure, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool32.not = icmp eq i8 %34, 0
  br i1 %tobool32.not, label %do.end26.if.end35_crit_edge, label %if.then33

do.end26.if.end35_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then33:                                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %irq_data, align 4
  call void @input_event(ptr noundef %36, i32 noundef 3, i32 noundef 24, i32 noundef 0) #5
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %do.end26.if.end35_crit_edge
  %37 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %irq_data, align 4
  call void @input_event(ptr noundef %38, i32 noundef 1, i32 noundef 330, i32 noundef 0) #5
  %pd_data_work = getelementptr inbounds %struct.wm831x_ts, ptr %irq_data, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %39 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %39, ptr noundef %pd_data_work) #5
  br label %if.end40

if.else38:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %irq_data, align 4
  call void @input_event(ptr noundef %41, i32 noundef 1, i32 noundef 330, i32 noundef 1) #5
  br label %if.end40

if.end40:                                         ; preds = %if.else38, %if.end35
  %42 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %irq_data, align 4
  call void @input_event(ptr noundef %43, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %if.end40 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_ts_pen_down_irq(i32 noundef %irq, ptr noundef %irq_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %wm831x1 = getelementptr inbounds %struct.wm831x_ts, ptr %irq_data, i32 0, i32 1
  %0 = ptrtoint ptr %wm831x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wm831x1, align 4
  %pen_down = getelementptr inbounds %struct.wm831x_ts, ptr %irq_data, i32 0, i32 5
  %2 = ptrtoint ptr %pen_down to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pen_down, align 1, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %pd_irq = getelementptr inbounds %struct.wm831x_ts, ptr %irq_data, i32 0, i32 3
  %4 = ptrtoint ptr %pd_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pd_irq, align 4
  tail call void @disable_irq_nosync(i32 noundef %5) #5
  %pressure = getelementptr inbounds %struct.wm831x_ts, ptr %irq_data, i32 0, i32 4
  %6 = ptrtoint ptr %pressure to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pressure, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  %spec.select = select i1 %tobool2.not, i16 768, i16 1792
  %call = tail call i32 @wm831x_set_bits(ptr noundef %1, i16 noundef zeroext 16424, i16 noundef zeroext 1792, i16 noundef zeroext %spec.select) #5
  %call6 = tail call i32 @wm831x_set_bits(ptr noundef %1, i16 noundef zeroext 16401, i16 noundef zeroext 512, i16 noundef zeroext 512) #5
  %8 = ptrtoint ptr %pen_down to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %pen_down, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm831x_ts_pen_down_irq.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm831x_ts_pen_down_irq, %if.then12)) #5
          to label %do.end [label %if.then12], !srcloc !81

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.wm831x, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm831x_ts_pen_down_irq.__UNIQUE_ID_ddebug230, ptr noundef %10, ptr noundef nonnull @.str.27) #5
  br label %do.end

do.end:                                           ; preds = %if.then12, %if.end
  %pd_data_work = getelementptr inbounds %struct.wm831x_ts, ptr %irq_data, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %11 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %pd_data_work) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_ts_input_open(ptr nocapture noundef readonly %idev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %idev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %wm831x1 = getelementptr inbounds %struct.wm831x_ts, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wm831x1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wm831x1, align 4
  %call2 = tail call i32 @wm831x_set_bits(ptr noundef %3, i16 noundef zeroext 16424, i16 noundef zeroext -14592, i16 noundef zeroext -32768) #5
  %call3 = tail call i32 @wm831x_set_bits(ptr noundef %3, i16 noundef zeroext 16424, i16 noundef zeroext 16384, i16 noundef zeroext 16384) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm831x_ts_input_close(ptr nocapture noundef readonly %idev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %idev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %wm831x1 = getelementptr inbounds %struct.wm831x_ts, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wm831x1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wm831x1, align 4
  %call2 = tail call i32 @wm831x_set_bits(ptr noundef %3, i16 noundef zeroext 16424, i16 noundef zeroext -30976, i16 noundef zeroext 0) #5
  %data_irq = getelementptr inbounds %struct.wm831x_ts, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %data_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_irq, align 4
  tail call void @synchronize_irq(i32 noundef %5) #5
  %pd_irq = getelementptr inbounds %struct.wm831x_ts, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %pd_irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pd_irq, align 4
  tail call void @synchronize_irq(i32 noundef %7) #5
  %pd_data_work = getelementptr inbounds %struct.wm831x_ts, ptr %1, i32 0, i32 6
  %call3 = tail call zeroext i1 @flush_work(ptr noundef %pd_data_work) #5
  %pen_down = getelementptr inbounds %struct.wm831x_ts, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %pen_down to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pen_down, align 1, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %data_irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_irq, align 4
  tail call void @disable_irq(i32 noundef %11) #5
  %12 = ptrtoint ptr %pd_irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pd_irq, align 4
  tail call void @enable_irq(i32 noundef %13) #5
  %14 = ptrtoint ptr %pen_down to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %pen_down, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm831x_bulk_read(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !34, !36, !37, !38, !40, !42, !43, !44, !46, !48, !50, !51, !52, !53, !55, !56, !58, !60, !61, !62, !63, !65, !66, !68, !69}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__initcall__kmod_wm831x_ts__231_394_wm831x_ts_driver_init6, !1, !"__initcall__kmod_wm831x_ts__231_394_wm831x_ts_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/wm831x-ts.c", i32 394, i32 1}
!2 = !{ptr @__exitcall_wm831x_ts_driver_exit, !1, !"__exitcall_wm831x_ts_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author232, !4, !"__UNIQUE_ID_author232", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/wm831x-ts.c", i32 397, i32 1}
!5 = !{ptr @__UNIQUE_ID_description233, !6, !"__UNIQUE_ID_description233", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/wm831x-ts.c", i32 398, i32 1}
!7 = !{ptr @__UNIQUE_ID_file234, !8, !"__UNIQUE_ID_file234", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/wm831x-ts.c", i32 399, i32 1}
!9 = !{ptr @__UNIQUE_ID_license235, !8, !"__UNIQUE_ID_license235", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias236, !11, !"__UNIQUE_ID_alias236", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/wm831x-ts.c", i32 400, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/wm831x-ts.c", i32 389, i32 11}
!14 = !{ptr @wm831x_ts_driver, !15, !"wm831x_ts_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/wm831x-ts.c", i32 387, i32 31}
!16 = !{ptr @wm831x_ts_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/input/touchscreen/wm831x-ts.c", i32 253, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/input/touchscreen/wm831x-ts.c", i32 261, i32 10}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/input/touchscreen/wm831x-ts.c", i32 266, i32 42}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/input/touchscreen/wm831x-ts.c", i32 281, i32 3}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/input/touchscreen/wm831x-ts.c", i32 291, i32 4}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @wm831x_ts_probe._entry, !26, !"_entry", i1 false, i1 false}
!31 = !{ptr @wm831x_ts_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/touchscreen/wm831x-ts.c", i32 321, i32 10}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/touchscreen/wm831x-ts.c", i32 323, i32 3}
!36 = !{ptr @wm831x_ts_probe._entry.10, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @wm831x_ts_probe._entry_ptr.12, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/touchscreen/wm831x-ts.c", i32 336, i32 10}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/touchscreen/wm831x-ts.c", i32 338, i32 3}
!42 = !{ptr @wm831x_ts_probe._entry.14, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @wm831x_ts_probe._entry_ptr.16, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/touchscreen/wm831x-ts.c", i32 344, i32 20}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/touchscreen/wm831x-ts.c", i32 345, i32 20}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/touchscreen/wm831x-ts.c", i32 76, i32 3}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @wm831x_pd_data_work.__UNIQUE_ID_ddebug227, !49, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/input/touchscreen/wm831x-ts.c", i32 79, i32 3}
!55 = !{ptr @wm831x_pd_data_work.__UNIQUE_ID_ddebug228, !54, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!56 = !{ptr @wm831x_ts_data_irq.data_types, !57, !"data_types", i1 false, i1 false}
!57 = !{!"../drivers/input/touchscreen/wm831x-ts.c", i32 87, i32 13}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/touchscreen/wm831x-ts.c", i32 103, i32 3}
!60 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @wm831x_ts_data_irq._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @wm831x_ts_data_irq._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/input/touchscreen/wm831x-ts.c", i32 124, i32 3}
!65 = !{ptr @wm831x_ts_data_irq.__UNIQUE_ID_ddebug229, !64, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/input/touchscreen/wm831x-ts.c", i32 180, i32 2}
!68 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @wm831x_ts_pen_down_irq.__UNIQUE_ID_ddebug230, !67, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{!"branch_weights", i32 2000, i32 1}
!80 = !{i8 0, i8 2}
!81 = !{i64 2148962869, i64 2148962874, i64 2148962887, i64 2148962931, i64 2148962965, i64 2148962986}
!82 = !{!"auto-init"}
