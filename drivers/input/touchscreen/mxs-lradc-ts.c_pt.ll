; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/mxs-lradc-ts.c_pt.bc'
source_filename = "../drivers/input/touchscreen/mxs-lradc-ts.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.state_info = type { i32, i32, i32, i32, i32 }
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
%struct.mxs_lradc_ts = type { ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i32, i32, i32, %struct.spinlock }
%struct.mxs_lradc = type { i32, ptr, i8, i32, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_mxs_lradc_ts__229_698_mxs_lradc_ts_driver_init6 = internal global ptr @mxs_lradc_ts_driver_init, section ".initcall6.init", align 4
@mxs_lradc_ts_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mxs_lradc_ts_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mxs_lradc_ts_driver_exit = internal global ptr @mxs_lradc_ts_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author230 = internal constant [48 x i8] c"mxs_lradc_ts.author=Marek Vasut <marex@denx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [64 x i8] c"mxs_lradc_ts.description=Freescale MXS LRADC touchscreen driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [57 x i8] c"mxs_lradc_ts.file=drivers/input/touchscreen/mxs-lradc-ts\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [25 x i8] c"mxs_lradc_ts.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias234 = internal constant [41 x i8] c"mxs_lradc_ts.alias=platform:mxs-lradc-ts\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mxs-lradc-ts\00", [19 x i8] zeroinitializer }, align 32
@mxs_lradc_ts_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ts->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fsl,lradc-touchscreen-wires\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fsl,ave-ctrl\00", [19 x i8] zeroinitializer }, align 32
@mxs_lradc_ts_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 638, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid sample count (%u)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mxs_lradc_ts_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/input/touchscreen/mxs-lradc-ts.c\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mxs_lradc_ts_probe._entry_ptr = internal global ptr @mxs_lradc_ts_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl,ave-delay\00", [18 x i8] zeroinitializer }, align 32
@mxs_lradc_ts_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 650, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid sample delay (%u)\0A\00", [37 x i8] zeroinitializer }, align 32
@mxs_lradc_ts_probe._entry_ptr.12 = internal global ptr @mxs_lradc_ts_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fsl,settling\00", [19 x i8] zeroinitializer }, align 32
@mxs_lradc_ts_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.6, i32 662, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid settling delay (%u)\0A\00", [35 x i8] zeroinitializer }, align 32
@mxs_lradc_ts_probe._entry_ptr.16 = internal global ptr @mxs_lradc_ts_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mxs-lradc-touchscreen\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mxs-lradc-channel6\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mxs-lradc-channel7\00", [45 x i8] zeroinitializer }, align 32
@info = internal constant { [2 x %struct.state_info], [56 x i8] } { [2 x %struct.state_info] [%struct.state_info { i32 2031616, i32 1048576, i32 327680, i32 655360, i32 393216 }, %struct.state_info { i32 12517376, i32 8388608, i32 327680, i32 2621440, i32 786432 }], [56 x i8] zeroinitializer }, align 32
@mxs_lradc_read_ts_pressure.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.21, ptr @.str.6, ptr @.str.22, i8 0, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mxs_lradc_ts\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mxs_lradc_read_ts_pressure\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"One channel is still busy: %X\0A\00", [33 x i8] zeroinitializer }, align 32
@mxs_lradc_read_ts_pressure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.6, i32 242, ptr @.str.24, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Cannot calculate pressure\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mxs_lradc_read_ts_pressure._entry_ptr = internal global ptr @mxs_lradc_read_ts_pressure._entry, section ".printk_index", align 4
@mxs_lradc_read_ts_pressure.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.21, ptr @.str.6, ptr @.str.25, i8 0, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Pressure = %u\0A\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.26 = private unnamed_addr constant [20 x i8] c"mxs_lradc_ts_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 692, i32 31 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 694, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 620, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 626, i32 35 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 631, i32 33 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 637, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 643, i32 33 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 649, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 655, i32 33 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 661, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 25, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 26, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 27, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 80, i32 26 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 235, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 242, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private constant [44 x i8] c"../drivers/input/touchscreen/mxs-lradc-ts.c\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 251, i32 2 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_alias234, ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_mxs_lradc_ts_driver_exit, ptr @__initcall__kmod_mxs_lradc_ts__229_698_mxs_lradc_ts_driver_init6, ptr @mxs_lradc_read_ts_pressure._entry, ptr @mxs_lradc_read_ts_pressure._entry_ptr, ptr @mxs_lradc_ts_driver_exit, ptr @mxs_lradc_ts_probe._entry, ptr @mxs_lradc_ts_probe._entry.10, ptr @mxs_lradc_ts_probe._entry.14, ptr @mxs_lradc_ts_probe._entry_ptr, ptr @mxs_lradc_ts_probe._entry_ptr.12, ptr @mxs_lradc_ts_probe._entry_ptr.16, ptr @mxs_lradc_ts_driver, ptr @.str, ptr @mxs_lradc_ts_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @info, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_lradc_ts_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_lradc_ts_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_lradc_ts_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_lradc_ts_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_lradc_ts_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_lradc_read_ts_pressure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_lradc_ts_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mxs_lradc_ts_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mxs_lradc_ts_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @mxs_lradc_ts_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_lradc_ts_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %ts_wires = alloca i32, align 4
  %adapt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ts_wires) #6
  %6 = ptrtoint ptr %ts_wires to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %ts_wires, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %adapt) #6
  %7 = ptrtoint ptr %adapt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %adapt, align 4, !annotation !75
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 92, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %5, ptr %call.i, align 4
  %dev5 = getelementptr inbounds %struct.mxs_lradc_ts, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev1, ptr %dev5, align 4
  %lock = getelementptr inbounds %struct.mxs_lradc_ts, ptr %call.i, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @mxs_lradc_ts_probe.__key, i16 noundef signext 3) #6
  %call7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %base = getelementptr inbounds %struct.mxs_lradc_ts, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull %ts_wires, i32 noundef 1, i32 noundef 0) #6
  %13 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool15.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %call.i.i135 = call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef nonnull %adapt, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i135)
  %tobool19.not = icmp sgt i32 %call.i.i135, -1
  br i1 %tobool19.not, label %if.else, label %if.end17.if.end30_crit_edge

if.end17.if.end30_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.else:                                          ; preds = %if.end17
  %14 = ptrtoint ptr %adapt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %adapt, align 4
  %16 = add i32 %15, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %16)
  %17 = icmp ult i32 %16, 32
  br i1 %17, label %if.else.if.end30_crit_edge, label %do.end27

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

do.end27:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.4, i32 noundef %15) #9
  br label %cleanup

if.end30:                                         ; preds = %if.else.if.end30_crit_edge, %if.end17.if.end30_crit_edge
  %.sink = phi i32 [ 4, %if.end17.if.end30_crit_edge ], [ %15, %if.else.if.end30_crit_edge ]
  %over_sample_cnt23 = getelementptr inbounds %struct.mxs_lradc_ts, ptr %call.i, i32 0, i32 9
  %20 = ptrtoint ptr %over_sample_cnt23 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %over_sample_cnt23, align 4
  %call.i.i136 = call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.9, ptr noundef nonnull %adapt, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i136)
  %tobool32.not = icmp sgt i32 %call.i.i136, -1
  br i1 %tobool32.not, label %if.else34, label %if.end30.if.end46_crit_edge

if.end30.if.end46_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.else34:                                        ; preds = %if.end30
  %21 = ptrtoint ptr %adapt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %adapt, align 4
  %23 = add i32 %22, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %23)
  %24 = icmp ult i32 %23, 2047
  br i1 %24, label %if.else34.if.end46_crit_edge, label %do.end43

if.else34.if.end46_crit_edge:                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

do.end43:                                         ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.11, i32 noundef %22) #9
  br label %cleanup

if.end46:                                         ; preds = %if.else34.if.end46_crit_edge, %if.end30.if.end46_crit_edge
  %.sink141 = phi i32 [ 2, %if.end30.if.end46_crit_edge ], [ %22, %if.else34.if.end46_crit_edge ]
  %over_sample_delay39 = getelementptr inbounds %struct.mxs_lradc_ts, ptr %call.i, i32 0, i32 10
  %27 = ptrtoint ptr %over_sample_delay39 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink141, ptr %over_sample_delay39, align 4
  %call.i.i137 = call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.13, ptr noundef nonnull %adapt, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i137)
  %tobool48.not = icmp sgt i32 %call.i.i137, -1
  br i1 %tobool48.not, label %if.else50, label %if.end46.if.end62_crit_edge

if.end46.if.end62_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.else50:                                        ; preds = %if.end46
  %28 = ptrtoint ptr %adapt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %adapt, align 4
  %30 = add i32 %29, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %30)
  %31 = icmp ult i32 %30, 2047
  br i1 %31, label %if.else50.if.end62_crit_edge, label %do.end59

if.else50.if.end62_crit_edge:                     ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

do.end59:                                         ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.15, i32 noundef %29) #9
  br label %cleanup

if.end62:                                         ; preds = %if.else50.if.end62_crit_edge, %if.end46.if.end62_crit_edge
  %.sink142 = phi i32 [ 10, %if.end46.if.end62_crit_edge ], [ %29, %if.else50.if.end62_crit_edge ]
  %settling_delay55 = getelementptr inbounds %struct.mxs_lradc_ts, ptr %call.i, i32 0, i32 11
  %34 = ptrtoint ptr %settling_delay55 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink142, ptr %settling_delay55, align 4
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base, align 4
  %call64 = call i32 @stmp_reset_block(ptr noundef %36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end67:                                         ; preds = %if.end62
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp.i138 = icmp eq i32 %40, 1
  br i1 %cmp.i138, label %do.body.i, label %if.end67.mxs_lradc_ts_hw_init.exit_crit_edge

if.end67.mxs_lradc_ts_hw_init.exit_crit_edge:     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxs_lradc_ts_hw_init.exit

do.body.i:                                        ; preds = %if.end67
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  call void @arm_heavy_mb() #6
  %41 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base, align 4
  %add.ptr2.i = getelementptr i8, ptr %42, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 16384) #6, !srcloc !77
  %touchscreen_wire.i = getelementptr inbounds %struct.mxs_lradc, ptr %38, i32 0, i32 3
  %43 = ptrtoint ptr %touchscreen_wire.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %touchscreen_wire.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp3.i = icmp eq i32 %44, 2
  br i1 %cmp3.i, label %do.body5.i, label %do.body.i.mxs_lradc_ts_hw_init.exit_crit_edge

do.body.i.mxs_lradc_ts_hw_init.exit_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxs_lradc_ts_hw_init.exit

do.body5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  call void @arm_heavy_mb() #6
  %45 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base, align 4
  %add.ptr10.i = getelementptr i8, ptr %46, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 16384) #6, !srcloc !77
  br label %mxs_lradc_ts_hw_init.exit

mxs_lradc_ts_hw_init.exit:                        ; preds = %do.body5.i, %do.body.i.mxs_lradc_ts_hw_init.exit_crit_edge, %if.end67.mxs_lradc_ts_hw_init.exit_crit_edge
  %call69 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %mxs_lradc_ts_hw_init.exit.cleanup_crit_edge, label %if.end72

mxs_lradc_ts_hw_init.exit.cleanup_crit_edge:      ; preds = %mxs_lradc_ts_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond:                                         ; preds = %if.end72
  %call69.1 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.1)
  %cmp70.1 = icmp slt i32 %call69.1, 0
  br i1 %cmp70.1, label %for.cond.cleanup_crit_edge, label %if.end72.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end72.1:                                       ; preds = %for.cond
  %call73.1 = call i32 @irq_of_parse_and_map(ptr noundef %3, i32 noundef %call69.1) #6
  call fastcc void @mxs_lradc_ts_stop(ptr noundef nonnull %call.i)
  %call.i139.1 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call73.1, ptr noundef nonnull @mxs_lradc_ts_handle_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.18, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139.1)
  %tobool76.not.1 = icmp eq i32 %call.i139.1, 0
  br i1 %tobool76.not.1, label %for.cond.1, label %if.end72.1.cleanup_crit_edge

if.end72.1.cleanup_crit_edge:                     ; preds = %if.end72.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.1:                                       ; preds = %if.end72.1
  %call69.2 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.2)
  %cmp70.2 = icmp slt i32 %call69.2, 0
  br i1 %cmp70.2, label %for.cond.1.cleanup_crit_edge, label %if.end72.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end72.2:                                       ; preds = %for.cond.1
  %call73.2 = call i32 @irq_of_parse_and_map(ptr noundef %3, i32 noundef %call69.2) #6
  call fastcc void @mxs_lradc_ts_stop(ptr noundef nonnull %call.i)
  %call.i139.2 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call73.2, ptr noundef nonnull @mxs_lradc_ts_handle_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139.2)
  %tobool76.not.2 = icmp eq i32 %call.i139.2, 0
  br i1 %tobool76.not.2, label %for.cond.2, label %if.end72.2.cleanup_crit_edge

if.end72.2.cleanup_crit_edge:                     ; preds = %if.end72.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.2:                                       ; preds = %if.end72.2
  call void @__sanitizer_cov_trace_pc() #8
  %call79 = call fastcc i32 @mxs_lradc_ts_register(ptr noundef nonnull %call.i)
  br label %cleanup

if.end72:                                         ; preds = %mxs_lradc_ts_hw_init.exit
  %call73 = call i32 @irq_of_parse_and_map(ptr noundef %3, i32 noundef %call69) #6
  call fastcc void @mxs_lradc_ts_stop(ptr noundef nonnull %call.i)
  %call.i139 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call73, ptr noundef nonnull @mxs_lradc_ts_handle_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139)
  %tobool76.not = icmp eq i32 %call.i139, 0
  br i1 %tobool76.not, label %for.cond, label %if.end72.cleanup_crit_edge

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end72.cleanup_crit_edge, %for.cond.2, %if.end72.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %if.end72.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %mxs_lradc_ts_hw_init.exit.cleanup_crit_edge, %if.end62.cleanup_crit_edge, %do.end59, %do.end43, %do.end27, %if.end13.cleanup_crit_edge, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.then10 ], [ %call79, %for.cond.2 ], [ -22, %do.end59 ], [ -22, %do.end43 ], [ -22, %do.end27 ], [ -12, %entry.cleanup_crit_edge ], [ %13, %if.end13.cleanup_crit_edge ], [ %call64, %if.end62.cleanup_crit_edge ], [ %call69, %mxs_lradc_ts_hw_init.exit.cleanup_crit_edge ], [ %call.i139, %if.end72.cleanup_crit_edge ], [ %call69.1, %for.cond.cleanup_crit_edge ], [ %call.i139.1, %if.end72.1.cleanup_crit_edge ], [ %call69.2, %for.cond.1.cleanup_crit_edge ], [ %call.i139.2, %if.end72.2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adapt) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ts_wires) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmp_reset_block(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxs_lradc_ts_stop(ptr nocapture noundef readonly %ts) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ts, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %base = getelementptr inbounds %struct.mxs_lradc_ts, ptr %ts, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 49153) #6, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %arrayidx = getelementptr [2 x %struct.state_info], ptr @info, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr8 = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %8) #6, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %buffer_vchans = getelementptr inbounds %struct.mxs_lradc, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %buffer_vchans to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %buffer_vchans, align 4
  %conv = zext i8 %12 to i32
  %13 = shl nuw nsw i32 %conv, 8
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr14 = getelementptr i8, ptr %15, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %13) #6, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr20 = getelementptr i8, ptr %17, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 0) #6, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr20.1 = getelementptr i8, ptr %19, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.1, i32 0) #6, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr20.2 = getelementptr i8, ptr %21, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.2, i32 0) #6, !srcloc !77
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_lradc_ts_handle_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %base = getelementptr inbounds %struct.mxs_lradc_ts, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !83
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %switch.selectcmp.i = icmp eq i32 %7, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 8191, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %switch.selectcmp2.i = icmp eq i32 %7, 0
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 511, i32 %switch.select.i
  %and = and i32 %switch.select3.i, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and5 = and i32 %5, 448
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %do.body8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body8:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.mxs_lradc_ts, ptr %data, i32 0, i32 12
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %cur_plate.i = getelementptr inbounds %struct.mxs_lradc_ts, ptr %data, i32 0, i32 4
  %8 = ptrtoint ptr %cur_plate.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cur_plate.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %do.body8.mxs_lradc_handle_touch.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 2, label %sw.bb2.i
    i32 1, label %sw.bb4.i
    i32 3, label %sw.bb6.i
    i32 4, label %sw.bb8.i
  ]

do.body8.mxs_lradc_handle_touch.exit_crit_edge:   ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxs_lradc_handle_touch.exit

sw.bb.i:                                          ; preds = %do.body8
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 64
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  %14 = and i32 %13, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not.i = icmp eq i32 %14, 0
  br i1 %tobool.i.not.i, label %sw.bb.i.do.body.i_crit_edge, label %if.then.i

sw.bb.i.do.body.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %16, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 1) #6, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %18, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 32768) #6, !srcloc !77
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %arrayidx.i.i.i = getelementptr [2 x %struct.state_info], ptr @info, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i.i, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #6
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr2.i.i.i = getelementptr i8, ptr %27, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i.i, i32 %25) #6, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %20, align 4
  %y_plate.i.i.i = getelementptr [2 x %struct.state_info], ptr @info, i32 0, i32 %29, i32 3
  %30 = ptrtoint ptr %y_plate.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %y_plate.i.i.i, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #6
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base, align 4
  %add.ptr10.i.i.i = getelementptr i8, ptr %34, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i.i, i32 %32) #6, !srcloc !77
  %35 = ptrtoint ptr %cur_plate.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %cur_plate.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  tail call void @arm_heavy_mb() #6
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base, align 4
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %37, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i.i.i, i32 240) #6, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  %38 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base, align 4
  %add.ptr10.i.i.i.i = getelementptr i8, ptr %39, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i.i.i, i32 64) #6, !srcloc !77
  tail call fastcc void @mxs_lradc_setup_ts_channel(ptr noundef %data) #6
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %sw.bb.i.do.body.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %40 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base, align 4
  %add.ptr1.i = getelementptr i8, ptr %41, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 65536) #6, !srcloc !77
  br label %mxs_lradc_handle_touch.exit

sw.bb2.i:                                         ; preds = %do.body8
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %43, i32 192
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i) #6, !srcloc !83
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  %and.i.i = and i32 %45, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %sw.bb2.i.mxs_lradc_ts_read_raw_channel.exit.i_crit_edge, label %if.then.i.i

sw.bb2.i.mxs_lradc_ts_read_raw_channel.exit.i_crit_edge: ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxs_lradc_ts_read_raw_channel.exit.i

if.then.i.i:                                      ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #8
  %over_sample_cnt.i.i = getelementptr inbounds %struct.mxs_lradc_ts, ptr %data, i32 0, i32 9
  %46 = ptrtoint ptr %over_sample_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %over_sample_cnt.i.i, align 4
  br label %mxs_lradc_ts_read_raw_channel.exit.i

mxs_lradc_ts_read_raw_channel.exit.i:             ; preds = %if.then.i.i, %sw.bb2.i.mxs_lradc_ts_read_raw_channel.exit.i_crit_edge
  %num_samples.0.i.i = phi i32 [ %47, %if.then.i.i ], [ 1, %sw.bb2.i.mxs_lradc_ts_read_raw_channel.exit.i_crit_edge ]
  %and2.i.i = and i32 %45, 262143
  %div.i.i = udiv i32 %and2.i.i, %num_samples.0.i.i
  %ts_y_pos.i = getelementptr inbounds %struct.mxs_lradc_ts, ptr %data, i32 0, i32 7
  %48 = ptrtoint ptr %ts_y_pos.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %div.i.i, ptr %ts_y_pos.i, align 4
  %49 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %arrayidx.i.i = getelementptr [2 x %struct.state_info], ptr @info, i32 0, i32 %52
  %53 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i.i, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #6
  %56 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %57, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %55) #6, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  %58 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %50, align 4
  %x_plate.i.i = getelementptr [2 x %struct.state_info], ptr @info, i32 0, i32 %59, i32 2
  %60 = ptrtoint ptr %x_plate.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %x_plate.i.i, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #6
  %63 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base, align 4
  %add.ptr10.i.i = getelementptr i8, ptr %64, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i, i32 %62) #6, !srcloc !77
  %65 = ptrtoint ptr %cur_plate.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %cur_plate.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  tail call void @arm_heavy_mb() #6
  %66 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base, align 4
  %add.ptr1.i.i.i = getelementptr i8, ptr %67, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i.i, i32 240) #6, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  %68 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base, align 4
  %add.ptr10.i.i26.i = getelementptr i8, ptr %69, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i26.i, i32 48) #6, !srcloc !77
  tail call fastcc void @mxs_lradc_setup_ts_channel(ptr noundef %data) #6
  br label %mxs_lradc_handle_touch.exit

sw.bb4.i:                                         ; preds = %do.body8
  %70 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %71, i32 192
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28.i) #6, !srcloc !83
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  %and.i29.i = and i32 %73, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i29.i)
  %tobool.not.i30.i = icmp eq i32 %and.i29.i, 0
  br i1 %tobool.not.i30.i, label %sw.bb4.i.mxs_lradc_ts_read_raw_channel.exit36.i_crit_edge, label %if.then.i32.i

sw.bb4.i.mxs_lradc_ts_read_raw_channel.exit36.i_crit_edge: ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxs_lradc_ts_read_raw_channel.exit36.i

if.then.i32.i:                                    ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #8
  %over_sample_cnt.i31.i = getelementptr inbounds %struct.mxs_lradc_ts, ptr %data, i32 0, i32 9
  %74 = ptrtoint ptr %over_sample_cnt.i31.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %over_sample_cnt.i31.i, align 4
  br label %mxs_lradc_ts_read_raw_channel.exit36.i

mxs_lradc_ts_read_raw_channel.exit36.i:           ; preds = %if.then.i32.i, %sw.bb4.i.mxs_lradc_ts_read_raw_channel.exit36.i_crit_edge
  %num_samples.0.i33.i = phi i32 [ %75, %if.then.i32.i ], [ 1, %sw.bb4.i.mxs_lradc_ts_read_raw_channel.exit36.i_crit_edge ]
  %and2.i34.i = and i32 %73, 262143
  %div.i35.i = udiv i32 %and2.i34.i, %num_samples.0.i33.i
  %ts_x_pos.i = getelementptr inbounds %struct.mxs_lradc_ts, ptr %data, i32 0, i32 6
  %76 = ptrtoint ptr %ts_x_pos.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %div.i35.i, ptr %ts_x_pos.i, align 4
  %77 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 4
  %arrayidx.i37.i = getelementptr [2 x %struct.state_info], ptr @info, i32 0, i32 %80
  %81 = ptrtoint ptr %arrayidx.i37.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx.i37.i, align 4
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #6
  %84 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base, align 4
  %add.ptr2.i39.i = getelementptr i8, ptr %85, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i39.i, i32 %83) #6, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %86 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %78, align 4
  %pressure.i.i = getelementptr [2 x %struct.state_info], ptr @info, i32 0, i32 %87, i32 4
  %88 = ptrtoint ptr %pressure.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pressure.i.i, align 4
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #6
  %91 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base, align 4
  %add.ptr10.i40.i = getelementptr i8, ptr %92, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i40.i, i32 %90) #6, !srcloc !77
  %93 = ptrtoint ptr %cur_plate.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 3, ptr %cur_plate.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  tail call void @arm_heavy_mb() #6
  %94 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base, align 4
  %add.ptr1.i.i42.i = getelementptr i8, ptr %95, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i42.i, i32 240) #6, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  %96 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %base, align 4
  %add.ptr10.i.i43.i = getelementptr i8, ptr %97, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i43.i, i32 80) #6, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  tail call void @arm_heavy_mb() #6
  %98 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %base, align 4
  %add.ptr1.i19.i.i = getelementptr i8, ptr %99, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i19.i.i, i32 15) #6, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  %100 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base, align 4
  %add.ptr10.i20.i.i = getelementptr i8, ptr %101, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i20.i.i, i32 2) #6, !srcloc !77
  %over_sample_cnt.i.i.i = getelementptr inbounds %struct.mxs_lradc_ts, ptr %data, i32 0, i32 9
  %102 = ptrtoint ptr %over_sample_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %over_sample_cnt.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  tail call void @arm_heavy_mb() #6
  %104 = add i32 %103, 255
  %or.i.i.i = and i32 %104, 223
  %105 = or i32 %or.i.i.i, 32
  %106 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %107, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %105) #6, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  %108 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %base, align 4
  %add.ptr7.i.i.i = getelementptr i8, ptr %109, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i.i, i32 %105) #6, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  tail call void @arm_heavy_mb() #6
  %110 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %base, align 4
  %add.ptr15.i.i.i = getelementptr i8, ptr %111, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i.i.i, i32 -64768) #6, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  tail call void @arm_heavy_mb() #6
  %112 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %base, align 4
  %add.ptr23.i.i.i = getelementptr i8, ptr %113, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i.i.i, i32 -64768) #6, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %114 = ptrtoint ptr %over_sample_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %over_sample_cnt.i.i.i, align 4
  %sub35.i.i.i = shl i32 %115, 11
  %shl36.i.i.i = add i32 %sub35.i.i.i, 63488
  %and37.i.i.i = and i32 %shl36.i.i.i, 63488
  %over_sample_delay.i.i.i = getelementptr inbounds %struct.mxs_lradc_ts, ptr %data, i32 0, i32 10
  %116 = ptrtoint ptr %over_sample_delay.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %over_sample_delay.i.i.i, align 4
  %sub39.i.i.i = add i32 %117, 2047
  %and41.i.i.i = and i32 %sub39.i.i.i, 2047
  %or38.i.i.i = or i32 %and37.i.i.i, %and41.i.i.i
  %or42.i.i.i = or i32 %or38.i.i.i, -1073741824
  %118 = tail call i32 @llvm.bswap.i32(i32 %or42.i.i.i) #6
  %119 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %base, align 4
  %add.ptr44.i.i.i = getelementptr i8, ptr %120, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i.i.i, i32 %118) #6, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  %121 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %base, align 4
  %add.ptr51.i.i.i = getelementptr i8, ptr %122, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51.i.i.i, i32 -2147483648) #6, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @arm_heavy_mb() #6
  %settling_delay.i.i.i = getelementptr inbounds %struct.mxs_lradc_ts, ptr %data, i32 0, i32 11
  %123 = ptrtoint ptr %settling_delay.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %settling_delay.i.i.i, align 4
  %and56.i.i.i = and i32 %124, 2047
  %or57.i.i.i = or i32 %and56.i.i.i, 1572864
  %125 = tail call i32 @llvm.bswap.i32(i32 %or57.i.i.i) #6
  %126 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %base, align 4
  %add.ptr59.i.i.i = getelementptr i8, ptr %127, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.i.i.i, i32 %125) #6, !srcloc !77
  br label %mxs_lradc_handle_touch.exit

sw.bb6.i:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = tail call fastcc i32 @mxs_lradc_read_ts_pressure(ptr noundef %data) #6
  %ts_pressure.i = getelementptr inbounds %struct.mxs_lradc_ts, ptr %data, i32 0, i32 8
  %128 = ptrtoint ptr %ts_pressure.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %call7.i, ptr %ts_pressure.i, align 4
  %129 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %130, align 4
  %arrayidx.i.i44.i = getelementptr [2 x %struct.state_info], ptr @info, i32 0, i32 %132
  %133 = ptrtoint ptr %arrayidx.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx.i.i44.i, align 4
  %135 = tail call i32 @llvm.bswap.i32(i32 %134) #6
  %136 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %base, align 4
  %add.ptr2.i.i45.i = getelementptr i8, ptr %137, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i45.i, i32 %135) #6, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  %138 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %130, align 4
  %bit.i.i.i = getelementptr [2 x %struct.state_info], ptr @info, i32 0, i32 %139, i32 1
  %140 = ptrtoint ptr %bit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %bit.i.i.i, align 4
  %142 = tail call i32 @llvm.bswap.i32(i32 %141) #6
  %143 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %base, align 4
  %add.ptr10.i.i46.i = getelementptr i8, ptr %144, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i46.i, i32 %142) #6, !srcloc !77
  %145 = ptrtoint ptr %cur_plate.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 4, ptr %cur_plate.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  tail call void @arm_heavy_mb() #6
  %146 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %base, align 4
  %add.ptr.i48.i = getelementptr i8, ptr %147, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48.i, i32 0) #6, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %148 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %base, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %149, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 -1073741824) #6, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void @arm_heavy_mb() #6
  %150 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %base, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %151, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 167776384) #6, !srcloc !77
  br label %mxs_lradc_handle_touch.exit

sw.bb8.i:                                         ; preds = %do.body8
  %152 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %base, align 4
  %add.ptr.i.i50.i = getelementptr i8, ptr %153, i32 64
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i50.i) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  %155 = and i32 %154, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool.i.not.i.i = icmp eq i32 %155, 0
  br i1 %tobool.i.not.i.i, label %sw.bb8.i.if.end.i.i_crit_edge, label %if.then.i51.i

sw.bb8.i.if.end.i.i_crit_edge:                    ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i51.i:                                    ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #8
  %ts_valid.i.i = getelementptr inbounds %struct.mxs_lradc_ts, ptr %data, i32 0, i32 5
  %156 = ptrtoint ptr %ts_valid.i.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 1, ptr %ts_valid.i.i, align 4
  %ts_input.i.i.i = getelementptr inbounds %struct.mxs_lradc_ts, ptr %data, i32 0, i32 3
  %157 = ptrtoint ptr %ts_input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %ts_input.i.i.i, align 4
  %ts_x_pos.i.i.i = getelementptr inbounds %struct.mxs_lradc_ts, ptr %data, i32 0, i32 6
  %159 = ptrtoint ptr %ts_x_pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %ts_x_pos.i.i.i, align 4
  tail call void @input_event(ptr noundef %158, i32 noundef 3, i32 noundef 0, i32 noundef %160) #6
  %161 = ptrtoint ptr %ts_input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %ts_input.i.i.i, align 4
  %ts_y_pos.i.i.i = getelementptr inbounds %struct.mxs_lradc_ts, ptr %data, i32 0, i32 7
  %163 = ptrtoint ptr %ts_y_pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %ts_y_pos.i.i.i, align 4
  tail call void @input_event(ptr noundef %162, i32 noundef 3, i32 noundef 1, i32 noundef %164) #6
  %165 = ptrtoint ptr %ts_input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %ts_input.i.i.i, align 4
  %ts_pressure.i.i.i = getelementptr inbounds %struct.mxs_lradc_ts, ptr %data, i32 0, i32 8
  %167 = ptrtoint ptr %ts_pressure.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %ts_pressure.i.i.i, align 4
  tail call void @input_event(ptr noundef %166, i32 noundef 3, i32 noundef 24, i32 noundef %168) #6
  %169 = ptrtoint ptr %ts_input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %ts_input.i.i.i, align 4
  tail call void @input_event(ptr noundef %170, i32 noundef 1, i32 noundef 330, i32 noundef 1) #6
  %171 = ptrtoint ptr %ts_input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %ts_input.i.i.i, align 4
  tail call void @input_event(ptr noundef %172, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i51.i, %sw.bb8.i.if.end.i.i_crit_edge
  %173 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %base, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %174, i32 64
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i.i) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  %176 = and i32 %175, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %tobool.i3.not.i.i = icmp eq i32 %176, 0
  br i1 %tobool.i3.not.i.i, label %if.end3.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %177 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %178, align 4
  %arrayidx.i.i52.i = getelementptr [2 x %struct.state_info], ptr @info, i32 0, i32 %180
  %181 = ptrtoint ptr %arrayidx.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx.i.i52.i, align 4
  %183 = tail call i32 @llvm.bswap.i32(i32 %182) #6
  %184 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %base, align 4
  %add.ptr2.i.i53.i = getelementptr i8, ptr %185, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i53.i, i32 %183) #6, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %186 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %178, align 4
  %y_plate.i.i54.i = getelementptr [2 x %struct.state_info], ptr @info, i32 0, i32 %187, i32 3
  %188 = ptrtoint ptr %y_plate.i.i54.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %y_plate.i.i54.i, align 4
  %190 = tail call i32 @llvm.bswap.i32(i32 %189) #6
  %191 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %base, align 4
  %add.ptr10.i.i55.i = getelementptr i8, ptr %192, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i55.i, i32 %190) #6, !srcloc !77
  %193 = ptrtoint ptr %cur_plate.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 2, ptr %cur_plate.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  tail call void @arm_heavy_mb() #6
  %194 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %base, align 4
  %add.ptr1.i.i.i57.i = getelementptr i8, ptr %195, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i.i57.i, i32 240) #6, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  %196 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %base, align 4
  %add.ptr10.i.i.i58.i = getelementptr i8, ptr %197, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i.i58.i, i32 64) #6, !srcloc !77
  tail call fastcc void @mxs_lradc_setup_ts_channel(ptr noundef %data) #6
  br label %mxs_lradc_handle_touch.exit

if.end3.i.i:                                      ; preds = %if.end.i.i
  %ts_valid4.i.i = getelementptr inbounds %struct.mxs_lradc_ts, ptr %data, i32 0, i32 5
  %198 = ptrtoint ptr %ts_valid4.i.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %ts_valid4.i.i, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool5.not.i.i = icmp eq i8 %199, 0
  br i1 %tobool5.not.i.i, label %if.end3.i.i.if.end9.i.i_crit_edge, label %if.then6.i.i

if.end3.i.i.if.end9.i.i_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i.i

if.then6.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %200 = ptrtoint ptr %ts_valid4.i.i to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 0, ptr %ts_valid4.i.i, align 4
  %ts_input.i.i = getelementptr inbounds %struct.mxs_lradc_ts, ptr %data, i32 0, i32 3
  %201 = ptrtoint ptr %ts_input.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %ts_input.i.i, align 4
  tail call void @input_event(ptr noundef %202, i32 noundef 1, i32 noundef 330, i32 noundef 0) #6
  %203 = ptrtoint ptr %ts_input.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %ts_input.i.i, align 4
  tail call void @input_event(ptr noundef %204, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then6.i.i, %if.end3.i.i.if.end9.i.i_crit_edge
  %205 = ptrtoint ptr %cur_plate.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 0, ptr %cur_plate.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %206 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %base, align 4
  %add.ptr.i60.i = getelementptr i8, ptr %207, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60.i, i32 0) #6, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  tail call void @arm_heavy_mb() #6
  %208 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %base, align 4
  %add.ptr13.i.i = getelementptr i8, ptr %209, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.i, i32 0) #6, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %210 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %base, align 4
  %add.ptr18.i.i = getelementptr i8, ptr %211, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i.i, i32 -2147385344) #6, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %212 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %base, align 4
  %add.ptr23.i.i = getelementptr i8, ptr %213, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i.i, i32 1) #6, !srcloc !77
  br label %mxs_lradc_handle_touch.exit

mxs_lradc_handle_touch.exit:                      ; preds = %if.end9.i.i, %if.then2.i.i, %sw.bb6.i, %mxs_lradc_ts_read_raw_channel.exit36.i, %mxs_lradc_ts_read_raw_channel.exit.i, %do.body.i, %do.body8.mxs_lradc_handle_touch.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  %and19 = and i32 %and, 7999
  %214 = tail call i32 @llvm.bswap.i32(i32 %and19)
  %215 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %base, align 4
  %add.ptr22 = getelementptr i8, ptr %216, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %214) #6, !srcloc !77
  br label %cleanup

cleanup:                                          ; preds = %mxs_lradc_handle_touch.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %mxs_lradc_handle_touch.exit ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxs_lradc_ts_register(ptr noundef %ts) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mxs_lradc_ts, ptr %ts, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call = tail call ptr @devm_input_allocate_device(ptr noundef %1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str, ptr %call, align 8
  %id = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 25, ptr %id, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 31
  %4 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mxs_lradc_ts_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 32
  %5 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mxs_lradc_ts_close, ptr %close, align 4
  %propbit = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %propbit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %propbit, align 4
  %or.i = or i32 %7, 2
  store i32 %or.i, ptr %propbit, align 4
  tail call void @input_set_capability(ptr noundef nonnull %call, i32 noundef 1, i32 noundef 330) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 0, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 1, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 24, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #6
  %ts_input = getelementptr inbounds %struct.mxs_lradc_ts, ptr %ts, i32 0, i32 3
  %8 = ptrtoint ptr %ts_input to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %ts_input, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 40, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ts, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @input_register_device(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxs_lradc_read_ts_pressure(ptr nocapture noundef readonly %ts) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.mxs_lradc_ts, ptr %ts, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %2)
  %cmp.not16 = icmp ugt i32 %2, -1073741825
  br i1 %cmp.not16, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %dev = getelementptr inbounds %struct.mxs_lradc_ts, ptr %ts, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %do.end.while.body_crit_edge, %while.body.lr.ph
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr6 = getelementptr i8, ptr %4, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #6, !srcloc !83
  %6 = lshr i32 %5, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  %and10 = and i32 %6, 192
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxs_lradc_read_ts_pressure.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxs_lradc_read_ts_pressure, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !118

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxs_lradc_read_ts_pressure.__UNIQUE_ID_ddebug227, ptr noundef %8, ptr noundef nonnull @.str.22, i32 noundef %and10) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %while.body
  %cmp.not = icmp eq i32 %and10, 192
  br i1 %cmp.not, label %do.end.while.end_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 176
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !83
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  %and.i = and i32 %12, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.end.mxs_lradc_ts_read_raw_channel.exit_crit_edge, label %if.then.i

while.end.mxs_lradc_ts_read_raw_channel.exit_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxs_lradc_ts_read_raw_channel.exit

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %over_sample_cnt.i = getelementptr inbounds %struct.mxs_lradc_ts, ptr %ts, i32 0, i32 9
  %13 = ptrtoint ptr %over_sample_cnt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %over_sample_cnt.i, align 4
  br label %mxs_lradc_ts_read_raw_channel.exit

mxs_lradc_ts_read_raw_channel.exit:               ; preds = %if.then.i, %while.end.mxs_lradc_ts_read_raw_channel.exit_crit_edge
  %num_samples.0.i = phi i32 [ %14, %if.then.i ], [ 1, %while.end.mxs_lradc_ts_read_raw_channel.exit_crit_edge ]
  %and2.i = and i32 %12, 262143
  %div.i = udiv i32 %and2.i, %num_samples.0.i
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr.i5 = getelementptr i8, ptr %16, i32 192
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5) #6, !srcloc !83
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  %and.i6 = and i32 %18, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6)
  %tobool.not.i7 = icmp eq i32 %and.i6, 0
  br i1 %tobool.not.i7, label %mxs_lradc_ts_read_raw_channel.exit.mxs_lradc_ts_read_raw_channel.exit13_crit_edge, label %if.then.i9

mxs_lradc_ts_read_raw_channel.exit.mxs_lradc_ts_read_raw_channel.exit13_crit_edge: ; preds = %mxs_lradc_ts_read_raw_channel.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxs_lradc_ts_read_raw_channel.exit13

if.then.i9:                                       ; preds = %mxs_lradc_ts_read_raw_channel.exit
  call void @__sanitizer_cov_trace_pc() #8
  %over_sample_cnt.i8 = getelementptr inbounds %struct.mxs_lradc_ts, ptr %ts, i32 0, i32 9
  %19 = ptrtoint ptr %over_sample_cnt.i8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %over_sample_cnt.i8, align 4
  br label %mxs_lradc_ts_read_raw_channel.exit13

mxs_lradc_ts_read_raw_channel.exit13:             ; preds = %if.then.i9, %mxs_lradc_ts_read_raw_channel.exit.mxs_lradc_ts_read_raw_channel.exit13_crit_edge
  %num_samples.0.i10 = phi i32 [ %20, %if.then.i9 ], [ 1, %mxs_lradc_ts_read_raw_channel.exit.mxs_lradc_ts_read_raw_channel.exit13_crit_edge ]
  %and2.i11 = and i32 %18, 262143
  call void @__sanitizer_cov_trace_cmp4(i32 %num_samples.0.i10, i32 %and2.i11)
  %cmp17 = icmp ugt i32 %num_samples.0.i10, %and2.i11
  br i1 %cmp17, label %do.end21, label %if.end23

do.end21:                                         ; preds = %mxs_lradc_ts_read_raw_channel.exit13
  call void @__sanitizer_cov_trace_pc() #8
  %dev22 = getelementptr inbounds %struct.mxs_lradc_ts, ptr %ts, i32 0, i32 1
  %21 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.23) #9
  br label %cleanup

if.end23:                                         ; preds = %mxs_lradc_ts_read_raw_channel.exit13
  call void @__sanitizer_cov_trace_pc() #8
  %div.i12 = udiv i32 %and2.i11, %num_samples.0.i10
  %mul = shl nuw nsw i32 %div.i, 12
  %div = udiv i32 %mul, %div.i12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxs_lradc_read_ts_pressure.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxs_lradc_read_ts_pressure, %if.then36)) #6
          to label %cleanup [label %if.then36], !srcloc !118

if.then36:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %dev37 = getelementptr inbounds %struct.mxs_lradc_ts, ptr %ts, i32 0, i32 1
  %23 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev37, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxs_lradc_read_ts_pressure.__UNIQUE_ID_ddebug228, ptr noundef %24, ptr noundef nonnull @.str.25, i32 noundef %div) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %if.end23, %do.end21
  %retval.0 = phi i32 [ 2048, %do.end21 ], [ %div, %if.then36 ], [ %div, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxs_lradc_setup_ts_channel(ptr nocapture noundef readonly %ts) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  %over_sample_cnt = getelementptr inbounds %struct.mxs_lradc_ts, ptr %ts, i32 0, i32 9
  %0 = ptrtoint ptr %over_sample_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %over_sample_cnt, align 4
  %2 = add i32 %1, 255
  %or = and i32 %2, 223
  %3 = or i32 %or, 32
  %base = getelementptr inbounds %struct.mxs_lradc_ts, ptr %ts, i32 0, i32 2
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #6, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 -64768) #6, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %over_sample_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %over_sample_cnt, align 4
  %sub14 = shl i32 %9, 11
  %shl15 = add i32 %sub14, 63488
  %and16 = and i32 %shl15, 63488
  %over_sample_delay = getelementptr inbounds %struct.mxs_lradc_ts, ptr %ts, i32 0, i32 10
  %10 = ptrtoint ptr %over_sample_delay to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %over_sample_delay, align 4
  %sub18 = add i32 %11, 2047
  %and20 = and i32 %sub18, 2047
  %or17 = or i32 %and20, %and16
  %or21 = or i32 %or17, -2147483648
  %12 = tail call i32 @llvm.bswap.i32(i32 %or21)
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr23 = getelementptr i8, ptr %14, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %12) #6, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr29 = getelementptr i8, ptr %16, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 -2147483648) #6, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %settling_delay = getelementptr inbounds %struct.mxs_lradc_ts, ptr %ts, i32 0, i32 11
  %17 = ptrtoint ptr %settling_delay to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %settling_delay, align 4
  %and33 = and i32 %18, 2047
  %or34 = or i32 %and33, 1572864
  %19 = tail call i32 @llvm.bswap.i32(i32 %or34)
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr36 = getelementptr i8, ptr %21, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %19) #6, !srcloc !77
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_lradc_ts_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %arrayidx.i.i = getelementptr [2 x %struct.state_info], ptr @info, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  %base.i.i = getelementptr inbounds %struct.mxs_lradc_ts, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %8) #6, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %3, align 4
  %bit.i.i = getelementptr [2 x %struct.state_info], ptr @info, i32 0, i32 %12, i32 1
  %13 = ptrtoint ptr %bit.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bit.i.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  %16 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i, align 4
  %add.ptr10.i.i = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i, i32 %15) #6, !srcloc !77
  %cur_plate.i = getelementptr inbounds %struct.mxs_lradc_ts, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %cur_plate.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %cur_plate.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  tail call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %20, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 65537) #6, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %22, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 1) #6, !srcloc !77
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxs_lradc_ts_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @mxs_lradc_ts_stop(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !35, !36, !37, !39, !41, !42, !43, !45, !47, !49, !51, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @__initcall__kmod_mxs_lradc_ts__229_698_mxs_lradc_ts_driver_init6, !1, !"__initcall__kmod_mxs_lradc_ts__229_698_mxs_lradc_ts_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/mxs-lradc-ts.c", i32 698, i32 1}
!2 = !{ptr @__exitcall_mxs_lradc_ts_driver_exit, !1, !"__exitcall_mxs_lradc_ts_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author230, !4, !"__UNIQUE_ID_author230", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/mxs-lradc-ts.c", i32 700, i32 1}
!5 = !{ptr @__UNIQUE_ID_description231, !6, !"__UNIQUE_ID_description231", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/mxs-lradc-ts.c", i32 701, i32 1}
!7 = !{ptr @__UNIQUE_ID_file232, !8, !"__UNIQUE_ID_file232", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/mxs-lradc-ts.c", i32 702, i32 1}
!9 = !{ptr @__UNIQUE_ID_license233, !8, !"__UNIQUE_ID_license233", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias234, !11, !"__UNIQUE_ID_alias234", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/mxs-lradc-ts.c", i32 703, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/mxs-lradc-ts.c", i32 694, i32 11}
!14 = !{ptr @mxs_lradc_ts_driver, !15, !"mxs_lradc_ts_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/mxs-lradc-ts.c", i32 692, i32 31}
!16 = !{ptr @mxs_lradc_ts_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/input/touchscreen/mxs-lradc-ts.c", i32 620, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/input/touchscreen/mxs-lradc-ts.c", i32 626, i32 35}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/input/touchscreen/mxs-lradc-ts.c", i32 631, i32 33}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/input/touchscreen/mxs-lradc-ts.c", i32 637, i32 4}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @mxs_lradc_ts_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @mxs_lradc_ts_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/touchscreen/mxs-lradc-ts.c", i32 643, i32 33}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/touchscreen/mxs-lradc-ts.c", i32 649, i32 4}
!35 = !{ptr @mxs_lradc_ts_probe._entry.10, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @mxs_lradc_ts_probe._entry_ptr.12, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/touchscreen/mxs-lradc-ts.c", i32 655, i32 33}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/touchscreen/mxs-lradc-ts.c", i32 661, i32 4}
!41 = !{ptr @mxs_lradc_ts_probe._entry.14, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @mxs_lradc_ts_probe._entry_ptr.16, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/touchscreen/mxs-lradc-ts.c", i32 25, i32 2}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/touchscreen/mxs-lradc-ts.c", i32 26, i32 2}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/touchscreen/mxs-lradc-ts.c", i32 27, i32 2}
!49 = distinct !{null, !50, !"mxs_lradc_ts_irq_names", i1 false, i1 false}
!50 = !{!"../drivers/input/touchscreen/mxs-lradc-ts.c", i32 24, i32 27}
!51 = !{ptr @info, !52, !"info", i1 false, i1 false}
!52 = !{!"../drivers/input/touchscreen/mxs-lradc-ts.c", i32 80, i32 26}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/input/touchscreen/mxs-lradc-ts.c", i32 235, i32 3}
!55 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @mxs_lradc_read_ts_pressure.__UNIQUE_ID_ddebug227, !54, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/touchscreen/mxs-lradc-ts.c", i32 242, i32 3}
!60 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @mxs_lradc_read_ts_pressure._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @mxs_lradc_read_ts_pressure._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/input/touchscreen/mxs-lradc-ts.c", i32 251, i32 2}
!65 = !{ptr @mxs_lradc_read_ts_pressure.__UNIQUE_ID_ddebug228, !64, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{!"auto-init"}
!76 = !{i64 2153981921}
!77 = !{i64 5712094}
!78 = !{i64 2153982511}
!79 = !{i64 2153979779}
!80 = !{i64 2153980410}
!81 = !{i64 2153980896}
!82 = !{i64 2153981399}
!83 = !{i64 5712512}
!84 = !{i64 2153978133}
!85 = !{i64 2153945347}
!86 = !{i64 2153971581}
!87 = !{i64 2153972100}
!88 = !{i64 2153968150}
!89 = !{i64 2153968631}
!90 = !{i64 2153945700}
!91 = !{i64 2153946350}
!92 = !{i64 2153977391}
!93 = !{i64 2153958540}
!94 = !{i64 2153967176}
!95 = !{i64 2153967657}
!96 = !{i64 2153969124}
!97 = !{i64 2153969606}
!98 = !{i64 2153952217}
!99 = !{i64 2153952670}
!100 = !{i64 2153953145}
!101 = !{i64 2153953638}
!102 = !{i64 2153954873}
!103 = !{i64 2153956078}
!104 = !{i64 2153957242}
!105 = !{i64 2153966224}
!106 = !{i64 2153966701}
!107 = !{i64 2153972603}
!108 = !{i64 2153973242}
!109 = !{i64 2153974207}
!110 = !{i8 0, i8 2}
!111 = !{i64 2153974943}
!112 = !{i64 2153975382}
!113 = !{i64 2153976061}
!114 = !{i64 2153976804}
!115 = !{i64 2153979146}
!116 = !{i64 2153959293}
!117 = !{i64 2153959776}
!118 = !{i64 2148295060, i64 2148295065, i64 2148295078, i64 2148295122, i64 2148295156, i64 2148295177}
!119 = !{i64 2153947152}
!120 = !{i64 2153947816}
!121 = !{i64 2153948892}
!122 = !{i64 2153949959}
!123 = !{i64 2153951120}
!124 = !{i64 2153970311}
!125 = !{i64 2153970991}
