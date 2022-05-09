; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/88pm860x-ts.c_pt.bc'
source_filename = "../drivers/input/touchscreen/88pm860x-ts.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.pm860x_chip = type { ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr, ptr, i32, i32, i16, i32, i32, i32, i32, i8, i8, i32 }
%struct.pm860x_touch_pdata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.pm860x_touch = type { ptr, ptr, ptr, i32, i32 }

@__initcall__kmod_88pm860x_ts__291_298_pm860x_touch_driver_init6 = internal global ptr @pm860x_touch_driver_init, section ".initcall6.init", align 4
@pm860x_touch_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pm860x_touch_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pm860x_touch_driver_exit = internal global ptr @pm860x_touch_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description292 = internal constant [78 x i8] c"88pm860x_ts.description=Touchscreen driver for Marvell Semiconductor 88PM860x\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [63 x i8] c"88pm860x_ts.author=Haojian Zhuang <haojian.zhuang@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [55 x i8] c"88pm860x_ts.file=drivers/input/touchscreen/88pm860x-ts\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [24 x i8] c"88pm860x_ts.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias296 = internal constant [42 x i8] c"88pm860x_ts.alias=platform:88pm860x-touch\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"88pm860x-touch\00", [17 x i8] zeroinitializer }, align 32
@pm860x_touch_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 231, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get platform data\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pm860x_touch_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/input/touchscreen/88pm860x-ts.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pm860x_touch_probe._entry_ptr = internal global ptr @pm860x_touch_probe._entry, section ".printk_index", align 4
@pm860x_touch_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 248, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to allocate input device!\0A\00", [62 x i8] zeroinitializer }, align 32
@pm860x_touch_probe._entry_ptr.8 = internal global ptr @pm860x_touch_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"88pm860x/input0\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"touch\00", [26 x i8] zeroinitializer }, align 32
@pm860x_touch_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 285, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to register touch!\0A\00", [37 x i8] zeroinitializer }, align 32
@pm860x_touch_probe._entry_ptr.13 = internal global ptr @pm860x_touch_probe._entry.11, section ".printk_index", align 4
@pm860x_touch_dt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 128, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Can't find touch node\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pm860x_touch_dt_init\00", [43 x i8] zeroinitializer }, align 32
@pm860x_touch_dt_init._entry_ptr = internal global ptr @pm860x_touch_dt_init._entry, section ".printk_index", align 4
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"marvell,88pm860x-gpadc-prebias\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"marvell,88pm860x-gpadc-slot-cycle\00", [62 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"marvell,88pm860x-gpadc-off-scale\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"marvell,88pm860x-gpadc-sw-cal\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"marvell,88pm860x-tsi-prebias\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"marvell,88pm860x-pen-prebias\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"marvell,88pm860x-pen-prechg\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"marvell,88pm860x-resistor-X\00", [36 x i8] zeroinitializer }, align 32
@pm860x_touch_handler.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"88pm860x_ts\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pm860x_touch_handler\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"z1:%d, z2:%d, rt:%d\0A\00", [43 x i8] zeroinitializer }, align 32
@pm860x_touch_handler.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.3, ptr @.str.27, i8 0, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pen down at [%d, %d].\0A\00", [41 x i8] zeroinitializer }, align 32
@pm860x_touch_handler.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.3, ptr @.str.28, i8 0, i8 20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pen release\0A\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.29 = private unnamed_addr constant [20 x i8] c"pm860x_touch_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 292, i32 31 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 294, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 231, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 248, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 253, i32 22 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 266, i32 6 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 285, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 128, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 133, i32 32 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 135, i32 32 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 137, i32 32 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 139, i32 32 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 147, i32 32 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 154, i32 32 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 156, i32 32 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 163, i32 27 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 71, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 78, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private constant [43 x i8] c"../drivers/input/touchscreen/88pm860x-ts.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 82, i32 3 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_alias296, ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_pm860x_touch_driver_exit, ptr @__initcall__kmod_88pm860x_ts__291_298_pm860x_touch_driver_init6, ptr @pm860x_touch_driver_exit, ptr @pm860x_touch_dt_init._entry, ptr @pm860x_touch_dt_init._entry_ptr, ptr @pm860x_touch_probe._entry, ptr @pm860x_touch_probe._entry.11, ptr @pm860x_touch_probe._entry.6, ptr @pm860x_touch_probe._entry_ptr, ptr @pm860x_touch_probe._entry_ptr.13, ptr @pm860x_touch_probe._entry_ptr.8, ptr @pm860x_touch_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_touch_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_touch_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_touch_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_touch_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_touch_dt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_touch_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pm860x_touch_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pm860x_touch_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @pm860x_touch_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_touch_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %data.i = alloca i32, align 4
  %n.i = alloca i32, align 4
  %res_x = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  %id = getelementptr inbounds %struct.pm860x_chip, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  %client = getelementptr inbounds %struct.pm860x_chip, ptr %3, i32 0, i32 3
  %companion = getelementptr inbounds %struct.pm860x_chip, ptr %3, i32 0, i32 4
  %cond.in = select i1 %cmp, ptr %client, ptr %companion
  %8 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %cond = load ptr, ptr %cond.in, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res_x) #6
  %9 = ptrtoint ptr %res_x to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %res_x, align 4
  %call3 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node.i, align 8
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.i = icmp eq i32 %15, 2
  %cond.in.i = select i1 %cmp.i, ptr %client, ptr %companion
  %16 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n.i) #6
  %17 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %n.i, align 4, !annotation !77
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.if.then6_crit_edge, label %if.end.i

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

if.end.i:                                         ; preds = %if.end
  %call.i = tail call ptr @of_get_child_by_name(ptr noundef nonnull %13, ptr noundef nonnull @.str.10) #6
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %do.end.i, label %if.end4.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #9
  br label %if.then6

if.end4.i:                                        ; preds = %if.end.i
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %data.i, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.16, ptr noundef nonnull %n.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool6.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end4.i.if.end8.i_crit_edge

if.end4.i.if.end8.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n.i, align 4
  %shl.i = shl i32 %20, 1
  %and.i = and i32 %shl.i, 6
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data.i, align 4
  %or.i211 = or i32 %and.i, %22
  store i32 %or.i211, ptr %data.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %if.end4.i.if.end8.i_crit_edge
  %call.i.i95.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.17, ptr noundef nonnull %n.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i95.i)
  %tobool10.not.i = icmp sgt i32 %call.i.i95.i, -1
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end8.i.if.end15.i_crit_edge

if.end8.i.if.end15.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n.i, align 4
  %shl12.i = shl i32 %24, 3
  %and13.i = and i32 %shl12.i, 24
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data.i, align 4
  %or14.i = or i32 %and13.i, %26
  store i32 %or14.i, ptr %data.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then11.i, %if.end8.i.if.end15.i_crit_edge
  %call.i.i96.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.18, ptr noundef nonnull %n.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i96.i)
  %tobool17.not.i = icmp sgt i32 %call.i.i96.i, -1
  br i1 %tobool17.not.i, label %if.then18.i, label %if.end15.i.if.end22.i_crit_edge

if.end15.i.if.end22.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %n.i, align 4
  %shl19.i = shl i32 %28, 5
  %and20.i = and i32 %shl19.i, 96
  %29 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data.i, align 4
  %or21.i = or i32 %and20.i, %30
  store i32 %or21.i, ptr %data.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then18.i, %if.end15.i.if.end22.i_crit_edge
  %call.i.i97.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.19, ptr noundef nonnull %n.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i97.i)
  %tobool24.not.i = icmp sgt i32 %call.i.i97.i, -1
  br i1 %tobool24.not.i, label %if.then25.i, label %if.end29thread-pre-split.i

if.then25.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %n.i, align 4
  %shl26.i = shl i32 %32, 7
  %and27.i = and i32 %shl26.i, 128
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data.i, align 4
  %or28.i = or i32 %and27.i, %34
  store i32 %or28.i, ptr %data.i, align 4
  br label %if.end29.i

if.end29thread-pre-split.i:                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr.i = load i32, ptr %data.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.end29thread-pre-split.i, %if.then25.i
  %36 = phi i32 [ %.pr.i, %if.end29thread-pre-split.i ], [ %or28.i, %if.then25.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool30.not.i = icmp eq i32 %36, 0
  br i1 %tobool30.not.i, label %if.end29.i.if.end37.i_crit_edge, label %if.then31.i

if.end29.i.if.end37.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i

if.then31.i:                                      ; preds = %if.end29.i
  %conv.i = trunc i32 %36 to i8
  %call32.i = call i32 @pm860x_reg_write(ptr noundef %cond.i, i32 noundef 87, i8 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %cmp33.i = icmp slt i32 %call32.i, 0
  br i1 %cmp33.i, label %if.then31.i.err_put_node.i_crit_edge, label %if.then31.i.if.end37.i_crit_edge

if.then31.i.if.end37.i_crit_edge:                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i

if.then31.i.err_put_node.i_crit_edge:             ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_put_node.i

if.end37.i:                                       ; preds = %if.then31.i.if.end37.i_crit_edge, %if.end29.i.if.end37.i_crit_edge
  %call.i.i98.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.20, ptr noundef nonnull %data.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i98.i)
  %tobool39.not.i = icmp sgt i32 %call.i.i98.i, -1
  br i1 %tobool39.not.i, label %if.then40.i, label %if.end37.i.if.end47.i_crit_edge

if.end37.i.if.end47.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.i

if.then40.i:                                      ; preds = %if.end37.i
  %37 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %data.i, align 4
  %conv41.i = trunc i32 %38 to i8
  %call42.i = call i32 @pm860x_reg_write(ptr noundef %cond.i, i32 noundef 85, i8 noundef zeroext %conv41.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %cmp43.i = icmp slt i32 %call42.i, 0
  br i1 %cmp43.i, label %if.then40.i.err_put_node.i_crit_edge, label %if.then40.i.if.end47.i_crit_edge

if.then40.i.if.end47.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.i

if.then40.i.err_put_node.i_crit_edge:             ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_put_node.i

if.end47.i:                                       ; preds = %if.then40.i.if.end47.i_crit_edge, %if.end37.i.if.end47.i_crit_edge
  %39 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %data.i, align 4
  %call.i.i99.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.21, ptr noundef nonnull %n.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i99.i)
  %tobool49.not.i = icmp sgt i32 %call.i.i99.i, -1
  br i1 %tobool49.not.i, label %if.then50.i, label %if.end47.i.if.end53.i_crit_edge

if.end47.i.if.end53.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53.i

if.then50.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %n.i, align 4
  %and51.i = and i32 %41, 31
  %42 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data.i, align 4
  %or52.i = or i32 %43, %and51.i
  store i32 %or52.i, ptr %data.i, align 4
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then50.i, %if.end47.i.if.end53.i_crit_edge
  %call.i.i100.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.22, ptr noundef nonnull %n.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i100.i)
  %tobool55.not.i = icmp sgt i32 %call.i.i100.i, -1
  br i1 %tobool55.not.i, label %if.then56.i, label %if.end59thread-pre-split.i

if.then56.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %n.i, align 4
  %and57.i = and i32 %45, 224
  %46 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data.i, align 4
  %or58.i = or i32 %47, %and57.i
  store i32 %or58.i, ptr %data.i, align 4
  br label %if.end59.i

if.end59thread-pre-split.i:                       ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pr102.i = load i32, ptr %data.i, align 4
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.end59thread-pre-split.i, %if.then56.i
  %49 = phi i32 [ %.pr102.i, %if.end59thread-pre-split.i ], [ %or58.i, %if.then56.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool60.not.i = icmp eq i32 %49, 0
  br i1 %tobool60.not.i, label %if.end59.i.pm860x_touch_dt_init.exit_crit_edge, label %if.then61.i

if.end59.i.pm860x_touch_dt_init.exit_crit_edge:   ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pm860x_touch_dt_init.exit

if.then61.i:                                      ; preds = %if.end59.i
  %conv62.i = trunc i32 %49 to i8
  %call63.i = call i32 @pm860x_reg_write(ptr noundef %cond.i, i32 noundef 86, i8 noundef zeroext %conv62.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %cmp64.i = icmp slt i32 %call63.i, 0
  br i1 %cmp64.i, label %if.then61.i.err_put_node.i_crit_edge, label %if.then61.i.pm860x_touch_dt_init.exit_crit_edge

if.then61.i.pm860x_touch_dt_init.exit_crit_edge:  ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pm860x_touch_dt_init.exit

if.then61.i.err_put_node.i_crit_edge:             ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_put_node.i

err_put_node.i:                                   ; preds = %if.then61.i.err_put_node.i_crit_edge, %if.then40.i.err_put_node.i_crit_edge, %if.then31.i.err_put_node.i_crit_edge
  call void @of_node_put(ptr noundef nonnull %call.i) #6
  br label %if.then6

pm860x_touch_dt_init.exit:                        ; preds = %if.then61.i.pm860x_touch_dt_init.exit_crit_edge, %if.end59.i.pm860x_touch_dt_init.exit_crit_edge
  %call.i.i101.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.23, ptr noundef nonnull %res_x, i32 noundef 1, i32 noundef 0) #6
  call void @of_node_put(ptr noundef nonnull %call.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #6
  br label %if.end53

if.then6:                                         ; preds = %err_put_node.i, %do.end.i, %if.end.if.then6_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #6
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %do.end, label %if.then8

if.then8:                                         ; preds = %if.then6
  %50 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %5, align 4
  %shl = shl i32 %51, 1
  %and = and i32 %shl, 6
  %slot_cycle = getelementptr inbounds %struct.pm860x_touch_pdata, ptr %5, i32 0, i32 1
  %52 = ptrtoint ptr %slot_cycle to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %slot_cycle, align 4
  %shl9 = shl i32 %53, 3
  %and10 = and i32 %shl9, 24
  %or11 = or i32 %and10, %and
  %off_scale = getelementptr inbounds %struct.pm860x_touch_pdata, ptr %5, i32 0, i32 2
  %54 = ptrtoint ptr %off_scale to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %off_scale, align 4
  %shl12 = shl i32 %55, 5
  %and13 = and i32 %shl12, 96
  %or14 = or i32 %or11, %and13
  %sw_cal = getelementptr inbounds %struct.pm860x_touch_pdata, ptr %5, i32 0, i32 3
  %56 = ptrtoint ptr %sw_cal to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sw_cal, align 4
  %shl15 = shl i32 %57, 7
  %and16 = and i32 %shl15, 128
  %or17 = or i32 %or14, %and16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or17)
  %tobool18.not = icmp eq i32 %or17, 0
  br i1 %tobool18.not, label %if.then8.if.end25_crit_edge, label %if.then19

if.then8.if.end25_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then19:                                        ; preds = %if.then8
  %conv = trunc i32 %or17 to i8
  %call20 = call i32 @pm860x_reg_write(ptr noundef %cond, i32 noundef 87, i8 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then19.cleanup_crit_edge, label %if.then19.if.end25_crit_edge

if.then19.if.end25_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.then19.if.end25_crit_edge, %if.then8.if.end25_crit_edge
  %tsi_prebias = getelementptr inbounds %struct.pm860x_touch_pdata, ptr %5, i32 0, i32 4
  %58 = ptrtoint ptr %tsi_prebias to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tsi_prebias, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool26.not = icmp eq i32 %59, 0
  br i1 %tobool26.not, label %if.end25.if.end35_crit_edge, label %if.then27

if.end25.if.end35_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then27:                                        ; preds = %if.end25
  %conv29 = trunc i32 %59 to i8
  %call30 = call i32 @pm860x_reg_write(ptr noundef %cond, i32 noundef 85, i8 noundef zeroext %conv29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then27.cleanup_crit_edge, label %if.then27.if.end35_crit_edge

if.then27.if.end35_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end35:                                         ; preds = %if.then27.if.end35_crit_edge, %if.end25.if.end35_crit_edge
  %pen_prebias = getelementptr inbounds %struct.pm860x_touch_pdata, ptr %5, i32 0, i32 5
  %60 = ptrtoint ptr %pen_prebias to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pen_prebias, align 4
  %and36 = and i32 %61, 31
  %pen_prechg = getelementptr inbounds %struct.pm860x_touch_pdata, ptr %5, i32 0, i32 6
  %62 = ptrtoint ptr %pen_prechg to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pen_prechg, align 4
  %shl38 = shl i32 %63, 5
  %and39 = and i32 %shl38, 224
  %or40 = or i32 %and39, %and36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or40)
  %tobool41.not = icmp eq i32 %or40, 0
  br i1 %tobool41.not, label %if.end35.if.end49_crit_edge, label %if.then42

if.end35.if.end49_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then42:                                        ; preds = %if.end35
  %conv43 = trunc i32 %or40 to i8
  %call44 = call i32 @pm860x_reg_write(ptr noundef %cond, i32 noundef 86, i8 noundef zeroext %conv43) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.then42.cleanup_crit_edge, label %if.then42.if.end49_crit_edge

if.then42.if.end49_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then42.cleanup_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end49:                                         ; preds = %if.then42.if.end49_crit_edge, %if.end35.if.end49_crit_edge
  %res_x50 = getelementptr inbounds %struct.pm860x_touch_pdata, ptr %5, i32 0, i32 7
  %64 = ptrtoint ptr %res_x50 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %res_x50, align 4
  %66 = ptrtoint ptr %res_x to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %res_x, align 4
  br label %if.end53

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end53:                                         ; preds = %if.end49, %pm860x_touch_dt_init.exit
  %call54 = call i32 @pm860x_set_bits(ptr noundef %cond, i32 noundef 87, i8 noundef zeroext 1, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end57:                                         ; preds = %if.end53
  %call.i212 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #6
  %tobool60.not = icmp eq ptr %call.i212, null
  br i1 %tobool60.not, label %if.end57.cleanup_crit_edge, label %if.end62

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end62:                                         ; preds = %if.end57
  %call64 = call ptr @devm_input_allocate_device(ptr noundef %dev) #6
  %67 = ptrtoint ptr %call.i212 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call64, ptr %call.i212, align 4
  %tobool66.not = icmp eq ptr %call64, null
  br i1 %tobool66.not, label %do.end70, label %if.end72

do.end70:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end72:                                         ; preds = %if.end62
  %68 = ptrtoint ptr %call64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @.str, ptr %call64, align 8
  %69 = ptrtoint ptr %call.i212 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %call.i212, align 4
  %phys = getelementptr inbounds %struct.input_dev, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.9, ptr %phys, align 4
  %72 = load ptr, ptr %call.i212, align 4
  %id76 = getelementptr inbounds %struct.input_dev, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %id76 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 24, ptr %id76, align 4
  %74 = load ptr, ptr %call.i212, align 4
  %parent80 = getelementptr inbounds %struct.input_dev, ptr %74, i32 0, i32 40, i32 1
  %75 = ptrtoint ptr %parent80 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %dev, ptr %parent80, align 8
  %76 = load ptr, ptr %call.i212, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %76, i32 0, i32 31
  %77 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @pm860x_touch_open, ptr %open, align 8
  %78 = load ptr, ptr %call.i212, align 4
  %close = getelementptr inbounds %struct.input_dev, ptr %78, i32 0, i32 32
  %79 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @pm860x_touch_close, ptr %close, align 4
  %chip83 = getelementptr inbounds %struct.pm860x_touch, ptr %call.i212, i32 0, i32 2
  %80 = ptrtoint ptr %chip83 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %3, ptr %chip83, align 4
  %i2c84 = getelementptr inbounds %struct.pm860x_touch, ptr %call.i212, i32 0, i32 1
  %81 = ptrtoint ptr %i2c84 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %cond, ptr %i2c84, align 4
  %irq85 = getelementptr inbounds %struct.pm860x_touch, ptr %call.i212, i32 0, i32 3
  %82 = ptrtoint ptr %irq85 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %call3, ptr %irq85, align 4
  %83 = ptrtoint ptr %res_x to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %res_x, align 4
  %res_x86 = getelementptr inbounds %struct.pm860x_touch, ptr %call.i212, i32 0, i32 4
  %85 = ptrtoint ptr %res_x86 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %res_x86, align 4
  %86 = load ptr, ptr %call.i212, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %86, i32 0, i32 40, i32 8
  %87 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call.i212, ptr %driver_data.i.i, align 4
  %88 = load i32, ptr %irq85, align 4
  %call90 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %88, ptr noundef null, ptr noundef nonnull @pm860x_touch_handler, i32 noundef 8192, ptr noundef nonnull @.str.10, ptr noundef nonnull %call.i212) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %if.end72.cleanup_crit_edge, label %if.end94

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end94:                                         ; preds = %if.end72
  %89 = ptrtoint ptr %call.i212 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %call.i212, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %90, i32 0, i32 5
  %91 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %evbit, align 4
  %or.i = or i32 %92, 8
  store i32 %or.i, ptr %evbit, align 4
  %93 = load ptr, ptr %call.i212, align 4
  %absbit = getelementptr inbounds %struct.input_dev, ptr %93, i32 0, i32 8
  %94 = ptrtoint ptr %absbit to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %absbit, align 4
  %or.i205 = or i32 %95, 1
  store i32 %or.i205, ptr %absbit, align 4
  %96 = load ptr, ptr %call.i212, align 4
  %absbit99 = getelementptr inbounds %struct.input_dev, ptr %96, i32 0, i32 8
  %97 = ptrtoint ptr %absbit99 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %absbit99, align 4
  %or.i206 = or i32 %98, 2
  store i32 %or.i206, ptr %absbit99, align 4
  %99 = load ptr, ptr %call.i212, align 4
  %absbit102 = getelementptr inbounds %struct.input_dev, ptr %99, i32 0, i32 8
  %100 = ptrtoint ptr %absbit102 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %absbit102, align 4
  %or.i207 = or i32 %101, 16777216
  store i32 %or.i207, ptr %absbit102, align 4
  %102 = load ptr, ptr %call.i212, align 4
  %evbit105 = getelementptr inbounds %struct.input_dev, ptr %102, i32 0, i32 5
  %103 = ptrtoint ptr %evbit105 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %evbit105, align 4
  %or.i208 = or i32 %104, 1
  store i32 %or.i208, ptr %evbit105, align 4
  %105 = load ptr, ptr %call.i212, align 4
  %evbit108 = getelementptr inbounds %struct.input_dev, ptr %105, i32 0, i32 5
  %106 = ptrtoint ptr %evbit108 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %evbit108, align 4
  %or.i209 = or i32 %107, 2
  store i32 %or.i209, ptr %evbit108, align 4
  %108 = load ptr, ptr %call.i212, align 4
  %add.ptr.i = getelementptr %struct.input_dev, ptr %108, i32 0, i32 6, i32 10
  %109 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %add.ptr.i, align 4
  %or.i210 = or i32 %110, 1024
  store i32 %or.i210, ptr %add.ptr.i, align 4
  %111 = load ptr, ptr %call.i212, align 4
  call void @input_set_abs_params(ptr noundef %111, i32 noundef 0, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #6
  %112 = ptrtoint ptr %call.i212 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %call.i212, align 4
  call void @input_set_abs_params(ptr noundef %113, i32 noundef 1, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #6
  %114 = ptrtoint ptr %call.i212 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %call.i212, align 4
  call void @input_set_abs_params(ptr noundef %115, i32 noundef 24, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #6
  %116 = ptrtoint ptr %call.i212 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %call.i212, align 4
  %call116 = call i32 @input_register_device(ptr noundef %117) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %cmp117 = icmp slt i32 %call116, 0
  br i1 %cmp117, label %do.end122, label %if.end94.cleanup_crit_edge

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end122:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  %118 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %119, ptr noundef nonnull @.str.12) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end122, %if.end94.cleanup_crit_edge, %if.end72.cleanup_crit_edge, %do.end70, %if.end57.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %do.end, %if.then42.cleanup_crit_edge, %if.then27.cleanup_crit_edge, %if.then19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call116, %do.end122 ], [ -12, %do.end70 ], [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then19.cleanup_crit_edge ], [ -22, %if.then27.cleanup_crit_edge ], [ -22, %if.then42.cleanup_crit_edge ], [ %call54, %if.end53.cleanup_crit_edge ], [ -12, %if.end57.cleanup_crit_edge ], [ %call90, %if.end72.cleanup_crit_edge ], [ 0, %if.end94.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res_x) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm860x_reg_write(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm860x_set_bits(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_touch_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %i2c = getelementptr inbounds %struct.pm860x_touch, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c, align 4
  %call2 = tail call i32 @pm860x_set_bits(ptr noundef %3, i32 noundef 82, i8 noundef zeroext -8, i8 noundef zeroext -8) #6
  %4 = tail call i32 @llvm.smin.i32(i32 %call2, i32 0)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pm860x_touch_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %i2c = getelementptr inbounds %struct.pm860x_touch, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c, align 4
  %call1 = tail call i32 @pm860x_set_bits(ptr noundef %3, i32 noundef 82, i8 noundef zeroext -8, i8 noundef zeroext 0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_touch_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1 = getelementptr inbounds %struct.pm860x_touch, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #6
  %i2c = getelementptr inbounds %struct.pm860x_touch, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %buf, align 8
  %3 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i2c, align 4
  %call = call i32 @pm860x_bulk_read(ptr noundef %4, i32 noundef 141, i32 noundef 8, ptr noundef nonnull %buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %5 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 7
  %6 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 6
  %7 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 5
  %8 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 4
  %9 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 3
  %10 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 2
  %11 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  %conv = zext i8 %13 to i32
  %and = and i32 %conv, 64
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %buf, align 8
  %conv3 = zext i8 %15 to i32
  %shl = shl nuw nsw i32 %conv3, 4
  %and7 = and i32 %conv, 15
  %or = or i32 %shl, %and7
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %10, align 2
  %conv9 = zext i8 %17 to i32
  %shl11 = shl nuw nsw i32 %conv9, 4
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %9, align 1
  %20 = and i8 %19, 15
  %and14 = zext i8 %20 to i32
  %or15 = or i32 %shl11, %and14
  %21 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %8, align 4
  %conv17 = zext i8 %22 to i32
  %shl19 = shl nuw nsw i32 %conv17, 4
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %7, align 1
  %25 = and i8 %24, 15
  %and22 = zext i8 %25 to i32
  %or23 = or i32 %shl19, %and22
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %6, align 2
  %conv25 = zext i8 %27 to i32
  %shl27 = shl nuw nsw i32 %conv25, 4
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %5, align 1
  %30 = and i8 %29, 15
  %and30 = zext i8 %30 to i32
  %or31 = or i32 %shl27, %and30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %cmp33.not = icmp eq i32 %or, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or23)
  %cmp35.not = icmp eq i32 %or23, 0
  %or.cond = select i1 %cmp33.not, i1 true, i1 %cmp35.not
  br i1 %or.cond, label %if.then32.if.end49_crit_edge, label %land.lhs.true37

if.then32.if.end49_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

land.lhs.true37:                                  ; preds = %if.then32
  %res_x = getelementptr inbounds %struct.pm860x_touch, ptr %data, i32 0, i32 4
  %31 = ptrtoint ptr %res_x to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %res_x, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp38.not = icmp eq i32 %32, 0
  br i1 %cmp38.not, label %land.lhs.true37.if.end49_crit_edge, label %if.then40

land.lhs.true37.if.end49_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then40:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #8
  %div = udiv i32 %or31, %or23
  %sub = add nsw i32 %div, -1
  %mul = mul i32 %32, %or
  %mul42 = mul i32 %mul, %sub
  %shr = ashr i32 %mul42, 12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm860x_touch_handler.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pm860x_touch_handler, %if.then47)) #6
          to label %if.end49 [label %if.then47], !srcloc !78

if.then47:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm860x_touch_handler.__UNIQUE_ID_ddebug288, ptr noundef %34, ptr noundef nonnull @.str.26, i32 noundef %or23, i32 noundef %or31, i32 noundef %shr) #6
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.then40, %land.lhs.true37.if.end49_crit_edge, %if.then32.if.end49_crit_edge
  %rt.0 = phi i32 [ %shr, %if.then47 ], [ 0, %land.lhs.true37.if.end49_crit_edge ], [ 0, %if.then32.if.end49_crit_edge ], [ %shr, %if.then40 ]
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data, align 4
  call void @input_event(ptr noundef %36, i32 noundef 3, i32 noundef 0, i32 noundef %or) #6
  %37 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data, align 4
  call void @input_event(ptr noundef %38, i32 noundef 3, i32 noundef 1, i32 noundef %or15) #6
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data, align 4
  call void @input_event(ptr noundef %40, i32 noundef 3, i32 noundef 24, i32 noundef %rt.0) #6
  %41 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data, align 4
  call void @input_event(ptr noundef %42, i32 noundef 1, i32 noundef 330, i32 noundef 1) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm860x_touch_handler.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pm860x_touch_handler, %if.then65)) #6
          to label %if.end89 [label %if.then65], !srcloc !78

if.then65:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm860x_touch_handler.__UNIQUE_ID_ddebug289, ptr noundef %44, ptr noundef nonnull @.str.27, i32 noundef %or, i32 noundef %or15) #6
  br label %if.end89

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data, align 4
  call void @input_event(ptr noundef %46, i32 noundef 3, i32 noundef 24, i32 noundef 0) #6
  %47 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data, align 4
  call void @input_event(ptr noundef %48, i32 noundef 1, i32 noundef 330, i32 noundef 0) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm860x_touch_handler.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pm860x_touch_handler, %if.then84)) #6
          to label %if.end89 [label %if.then84], !srcloc !78

if.then84:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm860x_touch_handler.__UNIQUE_ID_ddebug290, ptr noundef %50, ptr noundef nonnull @.str.28) #6
  br label %if.end89

if.end89:                                         ; preds = %if.then84, %if.else, %if.then65, %if.end49
  %51 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data, align 4
  call void @input_event(ptr noundef %52, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %out

out:                                              ; preds = %if.end89, %entry.out_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm860x_bulk_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !34, !35, !36, !38, !39, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !60, !61, !62, !64, !65, !67}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__initcall__kmod_88pm860x_ts__291_298_pm860x_touch_driver_init6, !1, !"__initcall__kmod_88pm860x_ts__291_298_pm860x_touch_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/88pm860x-ts.c", i32 298, i32 1}
!2 = !{ptr @__exitcall_pm860x_touch_driver_exit, !1, !"__exitcall_pm860x_touch_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description292, !4, !"__UNIQUE_ID_description292", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/88pm860x-ts.c", i32 300, i32 1}
!5 = !{ptr @__UNIQUE_ID_author293, !6, !"__UNIQUE_ID_author293", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/88pm860x-ts.c", i32 301, i32 1}
!7 = !{ptr @__UNIQUE_ID_file294, !8, !"__UNIQUE_ID_file294", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/88pm860x-ts.c", i32 302, i32 1}
!9 = !{ptr @__UNIQUE_ID_license295, !8, !"__UNIQUE_ID_license295", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias296, !11, !"__UNIQUE_ID_alias296", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/88pm860x-ts.c", i32 303, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/88pm860x-ts.c", i32 294, i32 11}
!14 = !{ptr @pm860x_touch_driver, !15, !"pm860x_touch_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/88pm860x-ts.c", i32 292, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/touchscreen/88pm860x-ts.c", i32 231, i32 4}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @pm860x_touch_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @pm860x_touch_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/touchscreen/88pm860x-ts.c", i32 248, i32 3}
!26 = !{ptr @pm860x_touch_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @pm860x_touch_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/touchscreen/88pm860x-ts.c", i32 253, i32 22}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/touchscreen/88pm860x-ts.c", i32 266, i32 6}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/touchscreen/88pm860x-ts.c", i32 285, i32 3}
!34 = !{ptr @pm860x_touch_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @pm860x_touch_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/touchscreen/88pm860x-ts.c", i32 128, i32 3}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @pm860x_touch_dt_init._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @pm860x_touch_dt_init._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/input/touchscreen/88pm860x-ts.c", i32 133, i32 32}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/touchscreen/88pm860x-ts.c", i32 135, i32 32}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/touchscreen/88pm860x-ts.c", i32 137, i32 32}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/touchscreen/88pm860x-ts.c", i32 139, i32 32}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/input/touchscreen/88pm860x-ts.c", i32 147, i32 32}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/input/touchscreen/88pm860x-ts.c", i32 154, i32 32}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/input/touchscreen/88pm860x-ts.c", i32 156, i32 32}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/touchscreen/88pm860x-ts.c", i32 163, i32 27}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/input/touchscreen/88pm860x-ts.c", i32 71, i32 4}
!59 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @pm860x_touch_handler.__UNIQUE_ID_ddebug288, !58, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/touchscreen/88pm860x-ts.c", i32 78, i32 3}
!64 = !{ptr @pm860x_touch_handler.__UNIQUE_ID_ddebug289, !63, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/input/touchscreen/88pm860x-ts.c", i32 82, i32 3}
!67 = !{ptr @pm860x_touch_handler.__UNIQUE_ID_ddebug290, !66, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{!"auto-init"}
!78 = !{i64 2148697867, i64 2148697872, i64 2148697885, i64 2148697929, i64 2148697963, i64 2148697984}
