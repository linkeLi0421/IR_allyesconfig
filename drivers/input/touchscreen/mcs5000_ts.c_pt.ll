; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/mcs5000_ts.c_pt.bc'
source_filename = "../drivers/input/touchscreen/mcs5000_ts.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.mcs5000_ts_data = type { ptr, ptr, ptr }
%struct.mcs_platform_data = type { ptr, ptr, i32, i32, ptr, i32, i32, i8 }

@__initcall__kmod_mcs5000_ts__288_283_mcs5000_ts_driver_init6 = internal global ptr @mcs5000_ts_driver_init, section ".initcall6.init", align 4
@mcs5000_ts_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @mcs5000_ts_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mcs5000_ts_pm, ptr null, ptr null }, ptr @mcs5000_ts_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_mcs5000_ts_driver_exit = internal global ptr @mcs5000_ts_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [59 x i8] c"mcs5000_ts.author=Joonyoung Shim <jy0922.shim@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [73 x i8] c"mcs5000_ts.description=Touchscreen driver for MELFAS MCS-5000 controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [53 x i8] c"mcs5000_ts.file=drivers/input/touchscreen/mcs5000_ts\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [23 x i8] c"mcs5000_ts.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mcs5000_ts\00", [21 x i8] zeroinitializer }, align 32
@mcs5000_ts_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mcs5000_ts_suspend, ptr @mcs5000_ts_resume, ptr @mcs5000_ts_suspend, ptr @mcs5000_ts_resume, ptr @mcs5000_ts_suspend, ptr @mcs5000_ts_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mcs5000_ts_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mcs5000_ts\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mcs5000_ts_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 197, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to allocate memory\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mcs5000_ts_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/input/touchscreen/mcs5000_ts.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mcs5000_ts_probe._entry_ptr = internal global ptr @mcs5000_ts_probe._entry, section ".printk_index", align 4
@mcs5000_ts_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 205, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to allocate input device\0A\00", [63 x i8] zeroinitializer }, align 32
@mcs5000_ts_probe._entry_ptr.8 = internal global ptr @mcs5000_ts_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"MELFAS MCS-5000 Touchscreen\00", [36 x i8] zeroinitializer }, align 32
@mcs5000_ts_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 229, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register interrupt\0A\00", [34 x i8] zeroinitializer }, align 32
@mcs5000_ts_probe._entry_ptr.12 = internal global ptr @mcs5000_ts_probe._entry.10, section ".printk_index", align 4
@mcs5000_ts_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 235, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register input device\0A\00", [63 x i8] zeroinitializer }, align 32
@mcs5000_ts_probe._entry_ptr.15 = internal global ptr @mcs5000_ts_probe._entry.13, section ".printk_index", align 4
@mcs5000_ts_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 117, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s, err[%d]\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mcs5000_ts_interrupt\00", [43 x i8] zeroinitializer }, align 32
@mcs5000_ts_interrupt._entry_ptr = internal global ptr @mcs5000_ts_interrupt._entry, section ".printk_index", align 4
@mcs5000_ts_interrupt._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.3, i32 151, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unknown ts input type %d\0A\00", [38 x i8] zeroinitializer }, align 32
@mcs5000_ts_interrupt._entry_ptr.20 = internal global ptr @mcs5000_ts_interrupt._entry.18, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 7]
@___asan_gen_.21 = private unnamed_addr constant [18 x i8] c"mcs5000_ts_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 274, i32 26 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 277, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [14 x i8] c"mcs5000_ts_pm\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 266, i32 8 }
@___asan_gen_.30 = private unnamed_addr constant [14 x i8] c"mcs5000_ts_id\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 268, i32 35 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 197, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 205, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 209, i32 20 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 229, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 235, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 117, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [42 x i8] c"../drivers/input/touchscreen/mcs5000_ts.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 150, i32 3 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_mcs5000_ts_driver_exit, ptr @__initcall__kmod_mcs5000_ts__288_283_mcs5000_ts_driver_init6, ptr @mcs5000_ts_driver_exit, ptr @mcs5000_ts_interrupt._entry, ptr @mcs5000_ts_interrupt._entry.18, ptr @mcs5000_ts_interrupt._entry_ptr, ptr @mcs5000_ts_interrupt._entry_ptr.20, ptr @mcs5000_ts_probe._entry, ptr @mcs5000_ts_probe._entry.10, ptr @mcs5000_ts_probe._entry.13, ptr @mcs5000_ts_probe._entry.6, ptr @mcs5000_ts_probe._entry_ptr, ptr @mcs5000_ts_probe._entry_ptr.12, ptr @mcs5000_ts_probe._entry_ptr.15, ptr @mcs5000_ts_probe._entry_ptr.8, ptr @mcs5000_ts_driver, ptr @.str, ptr @mcs5000_ts_pm, ptr @mcs5000_ts_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcs5000_ts_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcs5000_ts_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcs5000_ts_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcs5000_ts_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcs5000_ts_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcs5000_ts_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcs5000_ts_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcs5000_ts_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcs5000_ts_interrupt._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mcs5000_ts_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @mcs5000_ts_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mcs5000_ts_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @mcs5000_ts_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcs5000_ts_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #5
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client, ptr %call.i, align 4
  %call9 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #5
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %do.end14, label %if.end16

do.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end16:                                         ; preds = %if.end6
  %3 = ptrtoint ptr %call9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.9, ptr %call9, align 8
  %id17 = getelementptr inbounds %struct.input_dev, ptr %call9, i32 0, i32 3
  %4 = ptrtoint ptr %id17 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 24, ptr %id17, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %call9, i32 0, i32 40, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %parent, align 8
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call9, i32 0, i32 5
  %6 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %evbit, align 4
  %or.i81 = or i32 %7, 10
  store i32 %or.i81, ptr %evbit, align 4
  %add.ptr.i = getelementptr %struct.input_dev, ptr %call9, i32 0, i32 6, i32 10
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 4
  %or.i82 = or i32 %9, 1024
  store i32 %or.i82, ptr %add.ptr.i, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call9, i32 noundef 0, i32 noundef 0, i32 noundef 1023, i32 noundef 0, i32 noundef 0) #5
  tail call void @input_set_abs_params(ptr noundef nonnull %call9, i32 noundef 1, i32 noundef 0, i32 noundef 1023, i32 noundef 0, i32 noundef 0) #5
  %input_dev23 = getelementptr inbounds %struct.mcs5000_ts_data, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %input_dev23 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9, ptr %input_dev23, align 4
  %cfg_pin = getelementptr inbounds %struct.mcs_platform_data, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %cfg_pin to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cfg_pin, align 4
  %tobool24.not = icmp eq ptr %12, null
  br i1 %tobool24.not, label %if.end16.if.end27_crit_edge, label %if.then25

if.end16.if.end27_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then25:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %12() #5
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end16.if.end27_crit_edge
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  %call29 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %14, ptr noundef null, ptr noundef nonnull @mcs5000_ts_interrupt, i32 noundef 8200, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end36, label %do.end34

do.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end36:                                         ; preds = %if.end27
  %15 = ptrtoint ptr %input_dev23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %input_dev23, align 4
  %call38 = tail call i32 @input_register_device(ptr noundef %16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end45, label %do.end43

do.end43:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #8
  br label %cleanup

if.end45:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 4
  %call.i83 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 1, i8 noundef zeroext 1) #5
  %x_size.i = getelementptr inbounds %struct.mcs_platform_data, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %x_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %x_size.i, align 4
  %shr.i = lshr i32 %20, 8
  %conv.i = trunc i32 %shr.i to i8
  %call2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 8, i8 noundef zeroext %conv.i) #5
  %21 = ptrtoint ptr %x_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %x_size.i, align 4
  %conv4.i = trunc i32 %22 to i8
  %call5.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 9, i8 noundef zeroext %conv4.i) #5
  %y_size.i = getelementptr inbounds %struct.mcs_platform_data, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %y_size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %y_size.i, align 4
  %shr6.i = lshr i32 %24, 8
  %conv7.i = trunc i32 %shr6.i to i8
  %call8.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 10, i8 noundef zeroext %conv7.i) #5
  %25 = ptrtoint ptr %y_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %y_size.i, align 4
  %conv11.i = trunc i32 %26 to i8
  %call12.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 11, i8 noundef zeroext %conv11.i) #5
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  %call14.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %28, i8 noundef zeroext 1, i8 noundef zeroext -126) #5
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %29 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %do.end43, %do.end34, %do.end14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call29, %do.end34 ], [ %call38, %do.end43 ], [ 0, %if.end45 ], [ -12, %do.end14 ], [ -12, %do.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcs5000_ts_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  %buffer = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buffer) #5
  %2 = getelementptr inbounds [5 x i8], ptr %buffer, i32 0, i32 1
  %3 = getelementptr inbounds [5 x i8], ptr %buffer, i32 0, i32 2
  %4 = getelementptr inbounds [5 x i8], ptr %buffer, i32 0, i32 3
  %5 = getelementptr inbounds [5 x i8], ptr %buffer, i32 0, i32 4
  %6 = call ptr @memset(ptr %buffer, i32 255, i32 5)
  %call = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %1, i8 noundef zeroext 16, i8 noundef zeroext 5, ptr noundef nonnull %buffer) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef %call) #8
  br label %out

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %buffer, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i8 %8, label %do.end20 [
    i8 0, label %sw.bb
    i8 1, label %sw.bb3
    i8 2, label %if.end.out_crit_edge
    i8 3, label %if.end.out_crit_edge33
    i8 7, label %if.end.out_crit_edge34
  ]

if.end.out_crit_edge34:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end.out_crit_edge33:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %input_dev = getelementptr inbounds %struct.mcs5000_ts_data, ptr %dev_id, i32 0, i32 1
  %10 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %input_dev, align 4
  call void @input_event(ptr noundef %11, i32 noundef 1, i32 noundef 330, i32 noundef 0) #5
  %12 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %input_dev, align 4
  call void @input_event(ptr noundef %13, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %out

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %2, align 1
  %conv5 = zext i8 %15 to i32
  %shl = shl nuw nsw i32 %conv5, 8
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %3, align 1
  %conv7 = zext i8 %17 to i32
  %or = or i32 %shl, %conv7
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %4, align 1
  %conv9 = zext i8 %19 to i32
  %shl10 = shl nuw nsw i32 %conv9, 8
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %5, align 1
  %conv12 = zext i8 %21 to i32
  %or13 = or i32 %shl10, %conv12
  %input_dev14 = getelementptr inbounds %struct.mcs5000_ts_data, ptr %dev_id, i32 0, i32 1
  %22 = ptrtoint ptr %input_dev14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %input_dev14, align 4
  call void @input_event(ptr noundef %23, i32 noundef 1, i32 noundef 330, i32 noundef 1) #5
  %24 = ptrtoint ptr %input_dev14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %input_dev14, align 4
  call void @input_event(ptr noundef %25, i32 noundef 3, i32 noundef 0, i32 noundef %or) #5
  %26 = ptrtoint ptr %input_dev14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %input_dev14, align 4
  call void @input_event(ptr noundef %27, i32 noundef 3, i32 noundef 1, i32 noundef %or13) #5
  %28 = ptrtoint ptr %input_dev14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %input_dev14, align 4
  call void @input_event(ptr noundef %29, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %out

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %8 to i32
  %dev21 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.19, i32 noundef %conv) #8
  br label %out

out:                                              ; preds = %do.end20, %sw.bb3, %sw.bb, %if.end.out_crit_edge, %if.end.out_crit_edge33, %if.end.out_crit_edge34, %do.end
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buffer) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcs5000_ts_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcs5000_ts_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 1, i8 noundef zeroext 1) #5
  %x_size.i = getelementptr inbounds %struct.mcs_platform_data, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %x_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %x_size.i, align 4
  %shr.i = lshr i32 %7, 8
  %conv.i = trunc i32 %shr.i to i8
  %call2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 8, i8 noundef zeroext %conv.i) #5
  %8 = ptrtoint ptr %x_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %x_size.i, align 4
  %conv4.i = trunc i32 %9 to i8
  %call5.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 9, i8 noundef zeroext %conv4.i) #5
  %y_size.i = getelementptr inbounds %struct.mcs_platform_data, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %y_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %y_size.i, align 4
  %shr6.i = lshr i32 %11, 8
  %conv7.i = trunc i32 %shr6.i to i8
  %call8.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 10, i8 noundef zeroext %conv7.i) #5
  %12 = ptrtoint ptr %y_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %y_size.i, align 4
  %conv11.i = trunc i32 %13 to i8
  %call12.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 11, i8 noundef zeroext %conv11.i) #5
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call14.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext 1, i8 noundef zeroext -126) #5
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__initcall__kmod_mcs5000_ts__288_283_mcs5000_ts_driver_init6, !1, !"__initcall__kmod_mcs5000_ts__288_283_mcs5000_ts_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/mcs5000_ts.c", i32 283, i32 1}
!2 = !{ptr @__exitcall_mcs5000_ts_driver_exit, !1, !"__exitcall_mcs5000_ts_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/mcs5000_ts.c", i32 286, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/mcs5000_ts.c", i32 287, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/mcs5000_ts.c", i32 288, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/mcs5000_ts.c", i32 277, i32 11}
!12 = !{ptr @mcs5000_ts_driver, !13, !"mcs5000_ts_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/mcs5000_ts.c", i32 274, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/mcs5000_ts.c", i32 197, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mcs5000_ts_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mcs5000_ts_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/touchscreen/mcs5000_ts.c", i32 205, i32 3}
!24 = !{ptr @mcs5000_ts_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @mcs5000_ts_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/touchscreen/mcs5000_ts.c", i32 209, i32 20}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/touchscreen/mcs5000_ts.c", i32 229, i32 3}
!30 = !{ptr @mcs5000_ts_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @mcs5000_ts_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/touchscreen/mcs5000_ts.c", i32 235, i32 3}
!34 = !{ptr @mcs5000_ts_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mcs5000_ts_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/touchscreen/mcs5000_ts.c", i32 117, i32 3}
!38 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @mcs5000_ts_interrupt._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @mcs5000_ts_interrupt._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/input/touchscreen/mcs5000_ts.c", i32 150, i32 3}
!43 = !{ptr @mcs5000_ts_interrupt._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @mcs5000_ts_interrupt._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @mcs5000_ts_pm, !46, !"mcs5000_ts_pm", i1 false, i1 false}
!46 = !{!"../drivers/input/touchscreen/mcs5000_ts.c", i32 266, i32 8}
!47 = !{ptr @mcs5000_ts_id, !48, !"mcs5000_ts_id", i1 false, i1 false}
!48 = !{!"../drivers/input/touchscreen/mcs5000_ts.c", i32 268, i32 35}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
