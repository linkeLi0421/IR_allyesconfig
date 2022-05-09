; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/eeti_ts.c_pt.bc'
source_filename = "../drivers/input/touchscreen/eeti_ts.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.eeti_ts = type { ptr, ptr, ptr, %struct.touchscreen_properties, %struct.mutex, i8 }
%struct.touchscreen_properties = type { i32, i32, i8, i8, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_eeti_ts__288_299_eeti_ts_driver_init6 = internal global ptr @eeti_ts_driver_init, section ".initcall6.init", align 4
@eeti_ts_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @eeti_ts_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_eeti_ts_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @eeti_ts_pm, ptr null, ptr null }, ptr @eeti_ts_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_eeti_ts_driver_exit = internal global ptr @eeti_ts_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [44 x i8] c"eeti_ts.description=EETI Touchscreen driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [47 x i8] c"eeti_ts.author=Daniel Mack <daniel@zonque.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [47 x i8] c"eeti_ts.file=drivers/input/touchscreen/eeti_ts\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [20 x i8] c"eeti_ts.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"eeti_ts\00", [24 x i8] zeroinitializer }, align 32
@of_eeti_ts_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"eeti,exc3000-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@eeti_ts_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @eeti_ts_suspend, ptr @eeti_ts_resume, ptr @eeti_ts_suspend, ptr @eeti_ts_resume, ptr @eeti_ts_suspend, ptr @eeti_ts_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@eeti_ts_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"eeti_ts\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@eeti_ts_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 178, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to allocate driver data\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"eeti_ts_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/input/touchscreen/eeti_ts.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@eeti_ts_probe._entry_ptr = internal global ptr @eeti_ts_probe._entry, section ".printk_index", align 4
@eeti_ts_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&eeti->mutex\00", [19 x i8] zeroinitializer }, align 32
@eeti_ts_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 186, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to allocate input device.\0A\00", [62 x i8] zeroinitializer }, align 32
@eeti_ts_probe._entry_ptr.9 = internal global ptr @eeti_ts_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"attn\00", [27 x i8] zeroinitializer }, align 32
@eeti_ts_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 219, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unable to request touchscreen IRQ: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@eeti_ts_probe._entry_ptr.13 = internal global ptr @eeti_ts_probe._entry.11, section ".printk_index", align 4
@eeti_ts_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 76, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to read touchscreen data: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"eeti_ts_read\00", [19 x i8] zeroinitializer }, align 32
@eeti_ts_read._entry_ptr = internal global ptr @eeti_ts_read._entry, section ".printk_index", align 4
@___asan_gen_.16 = private unnamed_addr constant [15 x i8] c"eeti_ts_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 289, i32 26 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 291, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"of_eeti_ts_match\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 283, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant [11 x i8] c"eeti_ts_pm\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 274, i32 8 }
@___asan_gen_.28 = private unnamed_addr constant [11 x i8] c"eeti_ts_id\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 276, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 178, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 182, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 186, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 206, i32 49 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 218, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private constant [39 x i8] c"../drivers/input/touchscreen/eeti_ts.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 74, i32 3 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_eeti_ts_driver_exit, ptr @__initcall__kmod_eeti_ts__288_299_eeti_ts_driver_init6, ptr @eeti_ts_driver_exit, ptr @eeti_ts_probe._entry, ptr @eeti_ts_probe._entry.11, ptr @eeti_ts_probe._entry.7, ptr @eeti_ts_probe._entry_ptr, ptr @eeti_ts_probe._entry_ptr.13, ptr @eeti_ts_probe._entry_ptr.9, ptr @eeti_ts_read._entry, ptr @eeti_ts_read._entry_ptr, ptr @eeti_ts_driver, ptr @.str, ptr @of_eeti_ts_match, ptr @eeti_ts_pm, ptr @eeti_ts_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @eeti_ts_probe.__key, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeti_ts_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_eeti_ts_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeti_ts_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeti_ts_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeti_ts_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeti_ts_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeti_ts_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeti_ts_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeti_ts_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @eeti_ts_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @eeti_ts_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @eeti_ts_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @eeti_ts_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eeti_ts_probe(ptr noundef %client, ptr nocapture noundef readnone %idp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 120, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

do.body2:                                         ; preds = %entry
  %mutex = getelementptr inbounds %struct.eeti_ts, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.6, ptr noundef nonnull @eeti_ts_probe.__key) #5
  %call5 = tail call ptr @devm_input_allocate_device(ptr noundef %dev1) #5
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end10, label %if.end11

do.end10:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end11:                                         ; preds = %do.body2
  tail call void @input_set_capability(ptr noundef nonnull %call5, i32 noundef 1, i32 noundef 330) #5
  tail call void @input_set_abs_params(ptr noundef nonnull %call5, i32 noundef 0, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #5
  tail call void @input_set_abs_params(ptr noundef nonnull %call5, i32 noundef 1, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #5
  tail call void @input_set_abs_params(ptr noundef nonnull %call5, i32 noundef 24, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #5
  %props = getelementptr inbounds %struct.eeti_ts, ptr %call.i, i32 0, i32 3
  tail call void @touchscreen_parse_properties(ptr noundef nonnull %call5, i1 noundef zeroext false, ptr noundef %props) #5
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %0 = ptrtoint ptr %call5 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %name, ptr %call5, align 8
  %id = getelementptr inbounds %struct.input_dev, ptr %call5, i32 0, i32 3
  %1 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 24, ptr %id, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call5, i32 0, i32 31
  %2 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @eeti_ts_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call5, i32 0, i32 32
  %3 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @eeti_ts_close, ptr %close, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %client, ptr %call.i, align 4
  %input14 = getelementptr inbounds %struct.eeti_ts, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %input14 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5, ptr %input14, align 4
  %call15 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef 1) #5
  %attn_gpio = getelementptr inbounds %struct.eeti_ts, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %attn_gpio to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call15, ptr %attn_gpio, align 4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end11
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i76 = getelementptr inbounds %struct.input_dev, ptr %call5, i32 0, i32 40, i32 8
  %9 = ptrtoint ptr %driver_data.i.i76 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i.i76, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  %call24 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %11, ptr noundef null, ptr noundef nonnull @eeti_ts_isr, i32 noundef 8192, ptr noundef %name, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end30, label %do.end29

do.end29:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %call24) #8
  br label %cleanup

if.end30:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %running.i = getelementptr inbounds %struct.eeti_ts, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %running.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %running.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  tail call void @arm_heavy_mb() #5
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %16) #5
  %call31 = tail call i32 @input_register_device(ptr noundef nonnull %call5) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end29, %if.then18, %do.end10, %do.end
  %retval.0 = phi i32 [ %7, %if.then18 ], [ %call24, %do.end29 ], [ -12, %do.end10 ], [ -12, %do.end ], [ %call31, %if.end30 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_parse_properties(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eeti_ts_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mutex.i = getelementptr inbounds %struct.eeti_ts, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %running.i = getelementptr inbounds %struct.eeti_ts, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %running.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %running.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq.i, align 4
  tail call void @enable_irq(i32 noundef %6) #5
  %attn_gpio.i = getelementptr inbounds %struct.eeti_ts, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %attn_gpio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %attn_gpio.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %entry.eeti_ts_start.exit_crit_edge, label %land.lhs.true.i

entry.eeti_ts_start.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %eeti_ts_start.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.eeti_ts_start.exit_crit_edge, label %if.then.i

land.lhs.true.i.eeti_ts_start.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %eeti_ts_start.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i = tail call fastcc i32 @eeti_ts_read(ptr noundef %1) #5
  br label %eeti_ts_start.exit

eeti_ts_start.exit:                               ; preds = %if.then.i, %land.lhs.true.i.eeti_ts_start.exit_crit_edge, %entry.eeti_ts_start.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @eeti_ts_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %running.i = getelementptr inbounds %struct.eeti_ts, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %running.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %running.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  tail call void @arm_heavy_mb() #5
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %6) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eeti_ts_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.eeti_ts, ptr %dev_id, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %running = getelementptr inbounds %struct.eeti_ts, ptr %dev_id, i32 0, i32 5
  %attn_gpio = getelementptr inbounds %struct.eeti_ts, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %attn_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pr = load ptr, ptr %attn_gpio, align 4
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %entry
  %1 = phi ptr [ %5, %land.rhs.do.body_crit_edge ], [ %.pr, %entry ]
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body.if.end_crit_edge, label %land.lhs.true

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %do.body
  %call = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %do.body.if.end_crit_edge
  %call3 = tail call fastcc i32 @eeti_ts_read(ptr noundef %dev_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.cond, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.cond:                                          ; preds = %if.end
  %2 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %running, align 4, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool7.not = icmp eq i8 %3, 0
  br i1 %tobool7.not, label %do.cond.do.end_crit_edge, label %land.rhs

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.rhs:                                         ; preds = %do.cond
  %4 = ptrtoint ptr %attn_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %attn_gpio, align 4
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %land.rhs.do.end_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %do.cond.do.end_crit_edge, %if.end.do.end_crit_edge, %land.lhs.true.do.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @eeti_ts_read(ptr noundef %eeti) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf) #5
  %0 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 3
  %2 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 5
  %3 = call ptr @memset(ptr %buf, i32 255, i32 6)
  %4 = ptrtoint ptr %eeti to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eeti, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef nonnull %buf, i32 noundef 6, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 6
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1 = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp1, i32 %call.i, i32 -5
  %6 = ptrtoint ptr %eeti to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %eeti, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %spec.select) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %tobool.not = icmp sgt i8 %9, -1
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %0, align 1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %1, align 1
  %14 = and i8 %9, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.then3.eeti_ts_report_event.exit_crit_edge, label %if.then.i

if.then3.eeti_ts_report_event.exit_crit_edge:     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %eeti_ts_report_event.exit

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %input.i = getelementptr inbounds %struct.eeti_ts, ptr %eeti, i32 0, i32 1
  %15 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %input.i, align 4
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %2, align 1
  %conv15.i = zext i8 %18 to i32
  call void @input_event(ptr noundef %16, i32 noundef 3, i32 noundef 24, i32 noundef %conv15.i) #5
  br label %eeti_ts_report_event.exit

eeti_ts_report_event.exit:                        ; preds = %if.then.i, %if.then3.eeti_ts_report_event.exit_crit_edge
  %conv8.i = zext i16 %13 to i32
  %19 = lshr i8 %9, 1
  %20 = and i8 %19, 3
  %shr.i = zext i8 %20 to i32
  %shr9.i = lshr i32 %conv8.i, %shr.i
  %conv4.i = zext i16 %11 to i32
  %shr5.i = lshr i32 %conv4.i, %shr.i
  %input16.i = getelementptr inbounds %struct.eeti_ts, ptr %eeti, i32 0, i32 1
  %21 = ptrtoint ptr %input16.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %input16.i, align 4
  %props.i = getelementptr inbounds %struct.eeti_ts, ptr %eeti, i32 0, i32 3
  call void @touchscreen_report_pos(ptr noundef %22, ptr noundef %props.i, i32 noundef %shr5.i, i32 noundef %shr9.i, i1 noundef zeroext false) #5
  %23 = ptrtoint ptr %input16.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %input16.i, align 4
  %25 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %buf, align 1
  %27 = and i8 %26, 1
  %28 = zext i8 %27 to i32
  call void @input_event(ptr noundef %24, i32 noundef 1, i32 noundef 330, i32 noundef %28) #5
  %29 = ptrtoint ptr %input16.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %input16.i, align 4
  call void @input_event(ptr noundef %30, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %eeti_ts_report_event.exit, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %spec.select, %if.then ], [ 0, %eeti_ts_report_event.exit ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_report_pos(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eeti_ts_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input = getelementptr inbounds %struct.eeti_ts, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %call1 = tail call zeroext i1 @input_device_enabled(ptr noundef %3) #5
  br i1 %call1, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %running.i = getelementptr inbounds %struct.eeti_ts, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %running.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %running.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  tail call void @arm_heavy_mb() #5
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %8) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %9 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.if.end7_crit_edge, label %device_may_wakeup.exit

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

device_may_wakeup.exit:                           ; preds = %if.end
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %10 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %11, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end7_crit_edge, label %if.then5

device_may_wakeup.exit.if.end7_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then5:                                         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  %irq = getelementptr i8, ptr %dev, i32 932
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %13, i32 noundef 1) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %device_may_wakeup.exit.if.end7_crit_edge, %if.end.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eeti_ts_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input = getelementptr inbounds %struct.eeti_ts, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  %irq = getelementptr i8, ptr %dev, i32 932
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %call4 = tail call zeroext i1 @input_device_enabled(ptr noundef %3) #5
  br i1 %call4, label %if.then5, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then5:                                         ; preds = %if.end
  %mutex.i = getelementptr inbounds %struct.eeti_ts, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %running.i = getelementptr inbounds %struct.eeti_ts, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %running.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %running.i, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq.i, align 4
  tail call void @enable_irq(i32 noundef %13) #5
  %attn_gpio.i = getelementptr inbounds %struct.eeti_ts, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %attn_gpio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %attn_gpio.i, align 4
  %tobool.not.i13 = icmp eq ptr %15, null
  br i1 %tobool.not.i13, label %if.then5.eeti_ts_start.exit_crit_edge, label %land.lhs.true.i

if.then5.eeti_ts_start.exit_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %eeti_ts_start.exit

land.lhs.true.i:                                  ; preds = %if.then5
  %call.i14 = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool2.not.i = icmp eq i32 %call.i14, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.eeti_ts_start.exit_crit_edge, label %if.then.i

land.lhs.true.i.eeti_ts_start.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %eeti_ts_start.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i = tail call fastcc i32 @eeti_ts_read(ptr noundef %1) #5
  br label %eeti_ts_start.exit

eeti_ts_start.exit:                               ; preds = %if.then.i, %land.lhs.true.i.eeti_ts_start.exit_crit_edge, %if.then5.eeti_ts_start.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  br label %if.end6

if.end6:                                          ; preds = %eeti_ts_start.exit, %if.end.if.end6_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !31, !33, !34, !35, !37, !38, !39, !40, !42, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__initcall__kmod_eeti_ts__288_299_eeti_ts_driver_init6, !1, !"__initcall__kmod_eeti_ts__288_299_eeti_ts_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/eeti_ts.c", i32 299, i32 1}
!2 = !{ptr @__exitcall_eeti_ts_driver_exit, !1, !"__exitcall_eeti_ts_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/eeti_ts.c", i32 301, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/eeti_ts.c", i32 302, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/eeti_ts.c", i32 303, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/eeti_ts.c", i32 291, i32 11}
!12 = !{ptr @eeti_ts_driver, !13, !"eeti_ts_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/eeti_ts.c", i32 289, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/eeti_ts.c", i32 178, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @eeti_ts_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @eeti_ts_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @eeti_ts_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/input/touchscreen/eeti_ts.c", i32 182, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/input/touchscreen/eeti_ts.c", i32 186, i32 3}
!27 = !{ptr @eeti_ts_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @eeti_ts_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/touchscreen/eeti_ts.c", i32 206, i32 49}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/touchscreen/eeti_ts.c", i32 218, i32 3}
!33 = !{ptr @eeti_ts_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @eeti_ts_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/touchscreen/eeti_ts.c", i32 74, i32 3}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @eeti_ts_read._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @eeti_ts_read._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @of_eeti_ts_match, !41, !"of_eeti_ts_match", i1 false, i1 false}
!41 = !{!"../drivers/input/touchscreen/eeti_ts.c", i32 283, i32 34}
!42 = !{ptr @eeti_ts_pm, !43, !"eeti_ts_pm", i1 false, i1 false}
!43 = !{!"../drivers/input/touchscreen/eeti_ts.c", i32 274, i32 8}
!44 = !{ptr @eeti_ts_id, !45, !"eeti_ts_id", i1 false, i1 false}
!45 = !{!"../drivers/input/touchscreen/eeti_ts.c", i32 276, i32 35}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i64 2155619209}
!56 = !{i8 0, i8 2}
