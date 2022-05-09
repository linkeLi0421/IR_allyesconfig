; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/mcs_touchkey.c_pt.bc'
source_filename = "../drivers/input/keyboard/mcs_touchkey.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.mcs_platform_data = type { ptr, ptr, i32, i32, ptr, i32, i32, i8 }
%struct.mcs_touchkey_data = type { ptr, ptr, ptr, %struct.mcs_touchkey_chip, i32, i32, [0 x i16] }
%struct.mcs_touchkey_chip = type { i32, i32, i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_mcs_touchkey__289_271_mcs_touchkey_driver_init6 = internal global ptr @mcs_touchkey_driver_init, section ".initcall6.init", align 4
@mcs_touchkey_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @mcs_touchkey_probe, ptr @mcs_touchkey_remove, ptr null, ptr @mcs_touchkey_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mcs_touchkey_pm_ops, ptr null, ptr null }, ptr @mcs_touchkey_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_mcs_touchkey_driver_exit = internal global ptr @mcs_touchkey_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [61 x i8] c"mcs_touchkey.author=Joonyoung Shim <jy0922.shim@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [60 x i8] c"mcs_touchkey.author=HeungJun Kim <riverful.kim@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [76 x i8] c"mcs_touchkey.description=Touchkey driver for MELFAS MCS5000/5080 controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [54 x i8] c"mcs_touchkey.file=drivers/input/keyboard/mcs_touchkey\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [25 x i8] c"mcs_touchkey.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mcs_touchkey\00", [19 x i8] zeroinitializer }, align 32
@mcs_touchkey_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mcs_touchkey_suspend, ptr @mcs_touchkey_resume, ptr @mcs_touchkey_suspend, ptr @mcs_touchkey_resume, ptr @mcs_touchkey_suspend, ptr @mcs_touchkey_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mcs_touchkey_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mcs5000_touchkey\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"mcs5080_touchkey\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@mcs_touchkey_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 108, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no platform data defined\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mcs_touchkey_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/input/keyboard/mcs_touchkey.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mcs_touchkey_probe._entry_ptr = internal global ptr @mcs_touchkey_probe._entry, section ".printk_index", align 4
@mcs_touchkey_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 116, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to allocate memory\0A\00", [37 x i8] zeroinitializer }, align 32
@mcs_touchkey_probe._entry_ptr.8 = internal global ptr @mcs_touchkey_probe._entry.6, section ".printk_index", align 4
@mcs_touchkey_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 140, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"i2c read error[%d]\0A\00", [44 x i8] zeroinitializer }, align 32
@mcs_touchkey_probe._entry_ptr.11 = internal global ptr @mcs_touchkey_probe._entry.9, section ".printk_index", align 4
@mcs_touchkey_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 143, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Firmware version: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mcs_touchkey_probe._entry_ptr.15 = internal global ptr @mcs_touchkey_probe._entry.12, section ".printk_index", align 4
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MELFAS MCS Touchkey\00", [44 x i8] zeroinitializer }, align 32
@mcs_touchkey_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 178, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register interrupt\0A\00", [34 x i8] zeroinitializer }, align 32
@mcs_touchkey_probe._entry_ptr.19 = internal global ptr @mcs_touchkey_probe._entry.17, section ".printk_index", align 4
@mcs_touchkey_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 66, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"i2c read error [%d]\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mcs_touchkey_interrupt\00", [41 x i8] zeroinitializer }, align 32
@mcs_touchkey_interrupt._entry_ptr = internal global ptr @mcs_touchkey_interrupt._entry, section ".printk_index", align 4
@mcs_touchkey_interrupt.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.3, ptr @.str.22, i8 0, i8 22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"key %d %d %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pressed\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"released\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.25 = private unnamed_addr constant [20 x i8] c"mcs_touchkey_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 260, i32 26 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 262, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [20 x i8] c"mcs_touchkey_pm_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 250, i32 8 }
@___asan_gen_.34 = private unnamed_addr constant [16 x i8] c"mcs_touchkey_id\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 253, i32 35 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 108, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 116, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 140, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 143, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 145, i32 20 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 178, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 66, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private constant [41 x i8] c"../drivers/input/keyboard/mcs_touchkey.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 88, i32 2 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_mcs_touchkey_driver_exit, ptr @__initcall__kmod_mcs_touchkey__289_271_mcs_touchkey_driver_init6, ptr @mcs_touchkey_driver_exit, ptr @mcs_touchkey_interrupt._entry, ptr @mcs_touchkey_interrupt._entry_ptr, ptr @mcs_touchkey_probe._entry, ptr @mcs_touchkey_probe._entry.12, ptr @mcs_touchkey_probe._entry.17, ptr @mcs_touchkey_probe._entry.6, ptr @mcs_touchkey_probe._entry.9, ptr @mcs_touchkey_probe._entry_ptr, ptr @mcs_touchkey_probe._entry_ptr.11, ptr @mcs_touchkey_probe._entry_ptr.15, ptr @mcs_touchkey_probe._entry_ptr.19, ptr @mcs_touchkey_probe._entry_ptr.8, ptr @mcs_touchkey_driver, ptr @.str, ptr @mcs_touchkey_pm_ops, ptr @mcs_touchkey_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcs_touchkey_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcs_touchkey_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcs_touchkey_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcs_touchkey_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcs_touchkey_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcs_touchkey_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcs_touchkey_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcs_touchkey_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcs_touchkey_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mcs_touchkey_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @mcs_touchkey_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mcs_touchkey_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @mcs_touchkey_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcs_touchkey_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %key_maxval = getelementptr inbounds %struct.mcs_platform_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %key_maxval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key_maxval, align 4
  %add = add i32 %3, 1
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 2) #6
  %5 = extractvalue { i32, i1 } %4, 1
  %6 = extractvalue { i32, i1 } %4, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %6, i32 36) #6
  %retval.0.i = select i1 %5, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #10
  %call4 = tail call ptr @input_allocate_device() #6
  %tobool5.not = icmp eq ptr %call9.i.i, null
  %tobool6.not = icmp eq ptr %call4, null
  %or.cond = select i1 %tobool5.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %do.end10, label %if.end12

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %err_free_mem

if.end12:                                         ; preds = %if.end
  %client13 = getelementptr inbounds %struct.mcs_touchkey_data, ptr %call9.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %client13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %client, ptr %client13, align 4
  %input_dev14 = getelementptr inbounds %struct.mcs_touchkey_data, ptr %call9.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %input_dev14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call4, ptr %input_dev14, align 8
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %9 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.end12.if.end25_crit_edge, label %if.else

if.end12.if.end25_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %press_invert = getelementptr inbounds %struct.mcs_touchkey_data, ptr %call9.i.i, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %press_invert to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %press_invert, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.end12.if.end25_crit_edge
  %.sink159 = phi i32 [ 0, %if.else ], [ 4, %if.end12.if.end25_crit_edge ]
  %.sink158 = phi i32 [ 3, %if.else ], [ 7, %if.end12.if.end25_crit_edge ]
  %.sink = phi i32 [ 1, %if.else ], [ 97, %if.end12.if.end25_crit_edge ]
  %fw_reg.0 = phi i8 [ 1, %if.else ], [ 10, %if.end12.if.end25_crit_edge ]
  %12 = getelementptr inbounds %struct.mcs_touchkey_data, ptr %call9.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink159, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mcs_touchkey_data, ptr %call9.i.i, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink158, ptr %14, align 16
  %16 = getelementptr inbounds %struct.mcs_touchkey_data, ptr %call9.i.i, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink, ptr %16, align 8
  %call26 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %fw_reg.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then29, label %do.end37

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call26) #9
  br label %err_free_mem

do.end37:                                         ; preds = %if.end25
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call26) #9
  %18 = ptrtoint ptr %call4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.16, ptr %call4, align 8
  %id39 = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 3
  %19 = ptrtoint ptr %id39 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 24, ptr %id39, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 40, i32 1
  %20 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev, ptr %parent, align 8
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 5
  %21 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %evbit, align 8
  %no_autorepeat = getelementptr inbounds %struct.mcs_platform_data, ptr %1, i32 0, i32 7
  %22 = ptrtoint ptr %no_autorepeat to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %no_autorepeat, align 4, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool42.not = icmp eq i8 %23, 0
  %spec.store.select = select i1 %tobool42.not, i32 1048578, i32 2
  %24 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %spec.store.select, ptr %evbit, align 8
  %keycodes = getelementptr inbounds %struct.mcs_touchkey_data, ptr %call9.i.i, i32 0, i32 6
  %keycode = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 17
  %25 = ptrtoint ptr %keycode to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %keycodes, ptr %keycode, align 4
  %keycodesize = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 16
  %26 = ptrtoint ptr %keycodesize to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %keycodesize, align 8
  %27 = ptrtoint ptr %key_maxval to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %key_maxval, align 4
  %add48 = add i32 %28, 1
  %keycodemax = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 15
  %29 = ptrtoint ptr %keycodemax to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add48, ptr %keycodemax, align 4
  %keymap_size = getelementptr inbounds %struct.mcs_platform_data, ptr %1, i32 0, i32 5
  %30 = ptrtoint ptr %keymap_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %keymap_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp49156.not = icmp eq i32 %31, 0
  br i1 %cmp49156.not, label %do.end37.for.end_crit_edge, label %for.body.lr.ph

do.end37.for.end_crit_edge:                       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end37
  %keymap = getelementptr inbounds %struct.mcs_platform_data, ptr %1, i32 0, i32 4
  %keybit = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0157 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %32 = ptrtoint ptr %keymap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %keymap, align 4
  %arrayidx51 = getelementptr i32, ptr %33, i32 %i.0157
  %34 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx51, align 4
  %shr = lshr i32 %35, 16
  %and = and i32 %shr, 255
  %conv55 = trunc i32 %35 to i16
  %arrayidx57 = getelementptr %struct.mcs_touchkey_data, ptr %call9.i.i, i32 0, i32 6, i32 %and
  %36 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv55, ptr %arrayidx57, align 2
  %rem.i = and i32 %35, 31
  %shl.i = shl nuw i32 1, %rem.i
  %and54 = lshr i32 %35, 5
  %div2.i = and i32 %and54, 2047
  %add.ptr.i = getelementptr i32, ptr %keybit, i32 %div2.i
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %38, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  %inc = add nuw i32 %i.0157, 1
  %39 = ptrtoint ptr %keymap_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %keymap_size, align 4
  %cmp49 = icmp ult i32 %inc, %40
  br i1 %cmp49, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end37.for.end_crit_edge
  tail call void @input_set_capability(ptr noundef nonnull %call4, i32 noundef 4, i32 noundef 4) #6
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 40, i32 8
  %41 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call9.i.i, ptr %driver_data.i.i, align 4
  %cfg_pin = getelementptr inbounds %struct.mcs_platform_data, ptr %1, i32 0, i32 1
  %42 = ptrtoint ptr %cfg_pin to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cfg_pin, align 4
  %tobool59.not = icmp eq ptr %43, null
  br i1 %tobool59.not, label %for.end.if.end62_crit_edge, label %if.then60

for.end.if.end62_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.then60:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %43() #6
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %for.end.if.end62_crit_edge
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %tobool63.not = icmp eq ptr %45, null
  br i1 %tobool63.not, label %if.end62.if.end68_crit_edge, label %if.then64

if.end62.if.end68_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

if.then64:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %call9.i.i, align 128
  tail call void %45(i1 noundef zeroext true) #6
  br label %if.end68

if.end68:                                         ; preds = %if.then64, %if.end62.if.end68_crit_edge
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %47 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %irq, align 4
  %driver = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %49 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %driver, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %call71 = tail call i32 @request_threaded_irq(i32 noundef %48, ptr noundef null, ptr noundef nonnull @mcs_touchkey_interrupt, i32 noundef 8194, ptr noundef %52, ptr noundef nonnull %call9.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end78, label %do.end76

do.end76:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #9
  br label %err_free_mem

if.end78:                                         ; preds = %if.end68
  %call79 = tail call i32 @input_register_device(ptr noundef nonnull %call4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %err_free_irq

if.end82:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i155 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %53 = ptrtoint ptr %driver_data.i.i155 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call9.i.i, ptr %driver_data.i.i155, align 4
  br label %cleanup

err_free_irq:                                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %irq, align 4
  %call84 = tail call ptr @free_irq(i32 noundef %55, ptr noundef nonnull %call9.i.i) #6
  br label %err_free_mem

err_free_mem:                                     ; preds = %err_free_irq, %do.end76, %if.then29, %do.end10
  %error.0 = phi i32 [ %call26, %if.then29 ], [ %call71, %do.end76 ], [ %call79, %err_free_irq ], [ -12, %do.end10 ]
  tail call void @input_free_device(ptr noundef %call4) #6
  tail call void @kfree(ptr noundef %call9.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_free_mem, %if.end82, %do.end
  %retval.0 = phi i32 [ %error.0, %err_free_mem ], [ 0, %if.end82 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcs_touchkey_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %5(i1 noundef zeroext false) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %input_dev = getelementptr inbounds %struct.mcs_touchkey_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input_dev, align 4
  tail call void @input_unregister_device(ptr noundef %7) #6
  tail call void @kfree(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcs_touchkey_shutdown(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %3(i1 noundef zeroext false) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcs_touchkey_interrupt(i32 noundef %irq, ptr nocapture noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1 = getelementptr inbounds %struct.mcs_touchkey_data, ptr %dev_id, i32 0, i32 3
  %client2 = getelementptr inbounds %struct.mcs_touchkey_data, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %client2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client2, align 4
  %input_dev = getelementptr inbounds %struct.mcs_touchkey_data, ptr %dev_id, i32 0, i32 2
  %2 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input_dev, align 4
  %4 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chip1, align 4
  %conv = trunc i32 %5 to i8
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %call) #9
  br label %out

if.end:                                           ; preds = %entry
  %pressbit = getelementptr inbounds %struct.mcs_touchkey_data, ptr %dev_id, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %pressbit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pressbit, align 4
  %shl = shl nuw i32 1, %7
  %and = and i32 %shl, %call
  %shr64 = lshr i32 %and, %7
  %press_invert = getelementptr inbounds %struct.mcs_touchkey_data, ptr %dev_id, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %press_invert to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %press_invert, align 4
  %xor = xor i32 %shr64, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor)
  %tobool8.not = icmp eq i32 %xor, 0
  br i1 %tobool8.not, label %if.end.if.end19_crit_edge, label %if.then9

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then9:                                         ; preds = %if.end
  %sub = sub i32 8, %7
  %shr11 = lshr i32 255, %sub
  %and12 = and i32 %shr11, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.then9.out_crit_edge, label %if.end15

if.then9.out_crit_edge:                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end15:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %baseval = getelementptr inbounds %struct.mcs_touchkey_data, ptr %dev_id, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %baseval to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %baseval, align 4
  %sub16 = sub i32 %and12, %11
  %arrayidx = getelementptr %struct.mcs_touchkey_data, ptr %dev_id, i32 0, i32 6, i32 %sub16
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx, align 2
  %conv17 = zext i16 %13 to i32
  %key_code = getelementptr inbounds %struct.mcs_touchkey_data, ptr %dev_id, i32 0, i32 4
  %14 = ptrtoint ptr %key_code to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv17, ptr %key_code, align 4
  %key_val18 = getelementptr inbounds %struct.mcs_touchkey_data, ptr %dev_id, i32 0, i32 5
  %15 = ptrtoint ptr %key_val18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub16, ptr %key_val18, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end15, %if.end.if.end19_crit_edge
  %key_val20 = getelementptr inbounds %struct.mcs_touchkey_data, ptr %dev_id, i32 0, i32 5
  %16 = ptrtoint ptr %key_val20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %key_val20, align 4
  tail call void @input_event(ptr noundef %3, i32 noundef 4, i32 noundef 4, i32 noundef %17) #6
  %key_code21 = getelementptr inbounds %struct.mcs_touchkey_data, ptr %dev_id, i32 0, i32 4
  %18 = ptrtoint ptr %key_code21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %key_code21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor)
  %tobool.i = icmp ne i32 %xor, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %19, i32 noundef %lnot.ext.i) #6
  tail call void @input_event(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcs_touchkey_interrupt.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcs_touchkey_interrupt, %if.then27)) #6
          to label %out [label %if.then27], !srcloc !67

if.then27:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %dev28 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %key_val20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %key_val20, align 4
  %22 = ptrtoint ptr %key_code21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %key_code21, align 4
  %cond = select i1 %tobool8.not, ptr @.str.24, ptr @.str.23
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcs_touchkey_interrupt.__UNIQUE_ID_ddebug288, ptr noundef %dev28, ptr noundef nonnull @.str.22, i32 noundef %21, i32 noundef %23, ptr noundef nonnull %cond) #6
  br label %out

out:                                              ; preds = %if.then27, %if.end19, %if.then9.out_crit_edge, %do.end
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcs_touchkey_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %client1 = getelementptr inbounds %struct.mcs_touchkey_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %5) #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %7(i1 noundef zeroext false) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcs_touchkey_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %client1 = getelementptr inbounds %struct.mcs_touchkey_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %5(i1 noundef zeroext true) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %irq = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %7) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__initcall__kmod_mcs_touchkey__289_271_mcs_touchkey_driver_init6, !1, !"__initcall__kmod_mcs_touchkey__289_271_mcs_touchkey_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/mcs_touchkey.c", i32 271, i32 1}
!2 = !{ptr @__exitcall_mcs_touchkey_driver_exit, !1, !"__exitcall_mcs_touchkey_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/input/keyboard/mcs_touchkey.c", i32 274, i32 1}
!5 = !{ptr @__UNIQUE_ID_author291, !6, !"__UNIQUE_ID_author291", i1 false, i1 false}
!6 = !{!"../drivers/input/keyboard/mcs_touchkey.c", i32 275, i32 1}
!7 = !{ptr @__UNIQUE_ID_description292, !8, !"__UNIQUE_ID_description292", i1 false, i1 false}
!8 = !{!"../drivers/input/keyboard/mcs_touchkey.c", i32 276, i32 1}
!9 = !{ptr @__UNIQUE_ID_file293, !10, !"__UNIQUE_ID_file293", i1 false, i1 false}
!10 = !{!"../drivers/input/keyboard/mcs_touchkey.c", i32 277, i32 1}
!11 = !{ptr @__UNIQUE_ID_license294, !10, !"__UNIQUE_ID_license294", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/keyboard/mcs_touchkey.c", i32 262, i32 11}
!14 = !{ptr @mcs_touchkey_driver, !15, !"mcs_touchkey_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/keyboard/mcs_touchkey.c", i32 260, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/keyboard/mcs_touchkey.c", i32 108, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mcs_touchkey_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @mcs_touchkey_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/keyboard/mcs_touchkey.c", i32 116, i32 3}
!26 = !{ptr @mcs_touchkey_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @mcs_touchkey_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/keyboard/mcs_touchkey.c", i32 140, i32 3}
!30 = !{ptr @mcs_touchkey_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @mcs_touchkey_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/keyboard/mcs_touchkey.c", i32 143, i32 2}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @mcs_touchkey_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @mcs_touchkey_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/keyboard/mcs_touchkey.c", i32 145, i32 20}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/keyboard/mcs_touchkey.c", i32 178, i32 3}
!41 = !{ptr @mcs_touchkey_probe._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @mcs_touchkey_probe._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/keyboard/mcs_touchkey.c", i32 66, i32 3}
!45 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @mcs_touchkey_interrupt._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @mcs_touchkey_interrupt._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/keyboard/mcs_touchkey.c", i32 88, i32 2}
!50 = !{ptr @mcs_touchkey_interrupt.__UNIQUE_ID_ddebug288, !49, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!51 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @mcs_touchkey_pm_ops, !54, !"mcs_touchkey_pm_ops", i1 false, i1 false}
!54 = !{!"../drivers/input/keyboard/mcs_touchkey.c", i32 250, i32 8}
!55 = !{ptr @mcs_touchkey_id, !56, !"mcs_touchkey_id", i1 false, i1 false}
!56 = !{!"../drivers/input/keyboard/mcs_touchkey.c", i32 253, i32 35}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{i8 0, i8 2}
!67 = !{i64 2148958422, i64 2148958427, i64 2148958440, i64 2148958484, i64 2148958518, i64 2148958539}
