; ModuleID = '/llk/IR_all_yes/drivers/input/misc/arizona-haptics.c_pt.bc'
source_filename = "../drivers/input/misc/arizona-haptics.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.arizona = type { ptr, ptr, i32, i32, i32, [2 x %struct.regulator_bulk_data], ptr, i8, %struct.arizona_pdata, i8, i32, ptr, ptr, ptr, i8, i32, %struct.mutex, i32, [2 x ptr], i8, ptr, [3 x i32], [3 x i32], i16, i8, %struct.mutex, %struct.blocking_notifier_head }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.arizona_pdata = type { ptr, %struct.arizona_micsupp_pdata, %struct.arizona_ldo1_pdata, i32, i32, i32, [5 x i32], [3 x i32], i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i8, ptr, i32, ptr, i32, [4 x i32], [3 x %struct.arizona_micbias], [4 x i32], [6 x i32], [12 x i32], [2 x i32], [2 x i32], i32, i32, i32 }
%struct.arizona_micsupp_pdata = type { ptr }
%struct.arizona_ldo1_pdata = type { ptr }
%struct.arizona_micbias = type { i32, i8 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.arizona_haptics = type { ptr, ptr, %struct.work_struct, %struct.mutex, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.105 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.105 = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }

@__initcall__kmod_arizona_haptics__294_210_arizona_haptics_driver_init6 = internal global ptr @arizona_haptics_driver_init, section ".initcall6.init", align 4
@arizona_haptics_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @arizona_haptics_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_arizona_haptics_driver_exit = internal global ptr @arizona_haptics_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias295 = internal constant [47 x i8] c"arizona_haptics.alias=platform:arizona-haptics\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [51 x i8] c"arizona_haptics.description=Arizona haptics driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [56 x i8] c"arizona_haptics.file=drivers/input/misc/arizona-haptics\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [28 x i8] c"arizona_haptics.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author299 = internal constant [72 x i8] c"arizona_haptics.author=Mark Brown <broonie@opensource.wolfsonmicro.com>\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"arizona-haptics\00", [16 x i8] zeroinitializer }, align 32
@arizona_haptics_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 168, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to set haptics actuator: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"arizona_haptics_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/input/misc/arizona-haptics.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@arizona_haptics_probe._entry_ptr = internal global ptr @arizona_haptics_probe._entry, section ".printk_index", align 4
@arizona_haptics_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&haptics->work)\00", [62 x i8] zeroinitializer }, align 32
@arizona_haptics_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 176, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to allocate input device\0A\00", [63 x i8] zeroinitializer }, align 32
@arizona_haptics_probe._entry_ptr.9 = internal global ptr @arizona_haptics_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"arizona:haptics\00", [16 x i8] zeroinitializer }, align 32
@arizona_haptics_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 190, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"input_ff_create_memless() failed: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@arizona_haptics_probe._entry_ptr.13 = internal global ptr @arizona_haptics_probe._entry.11, section ".printk_index", align 4
@arizona_haptics_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 197, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"couldn't register input device: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@arizona_haptics_probe._entry_ptr.16 = internal global ptr @arizona_haptics_probe._entry.14, section ".printk_index", align 4
@arizona_haptics_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 42, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"No DAPM context\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"arizona_haptics_work\00", [43 x i8] zeroinitializer }, align 32
@arizona_haptics_work._entry_ptr = internal global ptr @arizona_haptics_work._entry, section ".printk_index", align 4
@arizona_haptics_work._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.3, i32 53, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to set intensity: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@arizona_haptics_work._entry_ptr.21 = internal global ptr @arizona_haptics_work._entry.19, section ".printk_index", align 4
@arizona_haptics_work._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.3, i32 64, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to start haptics: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@arizona_haptics_work._entry_ptr.24 = internal global ptr @arizona_haptics_work._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HAPTICS\00", [24 x i8] zeroinitializer }, align 32
@arizona_haptics_work._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.18, ptr @.str.3, i32 71, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to start HAPTICS: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@arizona_haptics_work._entry_ptr.28 = internal global ptr @arizona_haptics_work._entry.26, section ".printk_index", align 4
@arizona_haptics_work._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.18, ptr @.str.3, i32 78, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to sync DAPM: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@arizona_haptics_work._entry_ptr.31 = internal global ptr @arizona_haptics_work._entry.29, section ".printk_index", align 4
@arizona_haptics_work._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.18, ptr @.str.3, i32 86, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to disable HAPTICS: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@arizona_haptics_work._entry_ptr.34 = internal global ptr @arizona_haptics_work._entry.32, section ".printk_index", align 4
@arizona_haptics_work._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.18, ptr @.str.3, i32 93, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@arizona_haptics_work._entry_ptr.36 = internal global ptr @arizona_haptics_work._entry.35, section ".printk_index", align 4
@arizona_haptics_work._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.18, ptr @.str.3, i32 102, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to stop haptics: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@arizona_haptics_work._entry_ptr.39 = internal global ptr @arizona_haptics_work._entry.37, section ".printk_index", align 4
@arizona_haptics_play._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.40, ptr @.str.3, i32 115, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"arizona_haptics_play\00", [43 x i8] zeroinitializer }, align 32
@arizona_haptics_play._entry_ptr = internal global ptr @arizona_haptics_play._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.41 = private unnamed_addr constant [23 x i8] c"arizona_haptics_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 204, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 207, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 167, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 172, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 176, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 182, i32 29 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 189, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 196, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 42, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 52, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 63, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 68, i32 49 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 70, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 77, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 85, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 92, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 101, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.147 = private constant [40 x i8] c"../drivers/input/misc/arizona-haptics.c\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 115, i32 3 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_alias295, ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_arizona_haptics_driver_exit, ptr @__initcall__kmod_arizona_haptics__294_210_arizona_haptics_driver_init6, ptr @arizona_haptics_driver_exit, ptr @arizona_haptics_play._entry, ptr @arizona_haptics_play._entry_ptr, ptr @arizona_haptics_probe._entry, ptr @arizona_haptics_probe._entry.11, ptr @arizona_haptics_probe._entry.14, ptr @arizona_haptics_probe._entry.7, ptr @arizona_haptics_probe._entry_ptr, ptr @arizona_haptics_probe._entry_ptr.13, ptr @arizona_haptics_probe._entry_ptr.16, ptr @arizona_haptics_probe._entry_ptr.9, ptr @arizona_haptics_work._entry, ptr @arizona_haptics_work._entry.19, ptr @arizona_haptics_work._entry.22, ptr @arizona_haptics_work._entry.26, ptr @arizona_haptics_work._entry.29, ptr @arizona_haptics_work._entry.32, ptr @arizona_haptics_work._entry.35, ptr @arizona_haptics_work._entry.37, ptr @arizona_haptics_work._entry_ptr, ptr @arizona_haptics_work._entry_ptr.21, ptr @arizona_haptics_work._entry_ptr.24, ptr @arizona_haptics_work._entry_ptr.28, ptr @arizona_haptics_work._entry_ptr.31, ptr @arizona_haptics_work._entry_ptr.34, ptr @arizona_haptics_work._entry_ptr.36, ptr @arizona_haptics_work._entry_ptr.39, ptr @arizona_haptics_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @arizona_haptics_probe.__key, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.38, ptr @.str.40], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_haptics_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_haptics_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_haptics_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_haptics_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_haptics_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_haptics_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_haptics_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_haptics_work._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_haptics_work._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_haptics_work._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_haptics_work._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_haptics_work._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_haptics_work._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_haptics_work._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_haptics_play._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @arizona_haptics_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @arizona_haptics_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @arizona_haptics_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @arizona_haptics_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arizona_haptics_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 148, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %call.i, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %hap_act = getelementptr inbounds %struct.arizona, ptr %3, i32 0, i32 8, i32 34
  %7 = ptrtoint ptr %hap_act to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hap_act, align 4
  %call.i81 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 144, i32 noundef 2, i32 noundef %8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %cmp.not = icmp eq i32 %call.i81, 0
  br i1 %cmp.not, label %do.body8, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev6 = getelementptr inbounds %struct.arizona, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.1, i32 noundef %call.i81) #7
  br label %cleanup

do.body8:                                         ; preds = %if.end
  %work = getelementptr inbounds %struct.arizona_haptics, ptr %call.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #4
  %11 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.arizona_haptics, ptr %call.i, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @arizona_haptics_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry12 = getelementptr inbounds %struct.arizona_haptics, ptr %call.i, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %entry12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entry12, ptr %entry12, align 4
  %prev.i = getelementptr inbounds %struct.arizona_haptics, ptr %call.i, i32 0, i32 2, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry12, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.arizona_haptics, ptr %call.i, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @arizona_haptics_work, ptr %func, align 4
  %call17 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #4
  %input_dev = getelementptr inbounds %struct.arizona_haptics, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %input_dev to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call17, ptr %input_dev, align 4
  %tobool19.not = icmp eq ptr %call17, null
  br i1 %tobool19.not, label %do.end23, label %if.end25

do.end23:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #6
  %dev24 = getelementptr inbounds %struct.arizona, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.8) #7
  br label %cleanup

if.end25:                                         ; preds = %do.body8
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call17, i32 0, i32 40, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %19 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %input_dev, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.10, ptr %20, align 8
  %22 = load ptr, ptr %input_dev, align 4
  %close = getelementptr inbounds %struct.input_dev, ptr %22, i32 0, i32 32
  %23 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @arizona_haptics_close, ptr %close, align 4
  %24 = load ptr, ptr %input_dev, align 4
  %add.ptr.i = getelementptr %struct.input_dev, ptr %24, i32 0, i32 12, i32 2
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %26, 65536
  store i32 %or.i, ptr %add.ptr.i, align 4
  %27 = load ptr, ptr %input_dev, align 4
  %call31 = tail call i32 @input_ff_create_memless(ptr noundef %27, ptr noundef null, ptr noundef nonnull @arizona_haptics_play) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %do.end36, label %if.end38

do.end36:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %dev37 = getelementptr inbounds %struct.arizona, ptr %3, i32 0, i32 1
  %28 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev37, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.12, i32 noundef %call31) #7
  br label %cleanup

if.end38:                                         ; preds = %if.end25
  %30 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %input_dev, align 4
  %call40 = tail call i32 @input_register_device(ptr noundef %31) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %do.end45, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end45:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  %dev46 = getelementptr inbounds %struct.arizona, ptr %3, i32 0, i32 1
  %32 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev46, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.15, i32 noundef %call40) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %if.end38.cleanup_crit_edge, %do.end36, %do.end23, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i81, %do.end ], [ %call31, %do.end36 ], [ %call40, %do.end45 ], [ -12, %do.end23 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arizona_haptics_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %dapm = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -176
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.17) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %intensity = getelementptr i8, ptr %work, i32 136
  %6 = ptrtoint ptr %intensity to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %intensity, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %conv = zext i8 %7 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 148, i32 noundef 255, i32 noundef %conv, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end14, label %do.end12

do.end12:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  %dev13 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.20, i32 noundef %call.i) #7
  br label %cleanup

if.end14:                                         ; preds = %if.then5
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call.i107 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 144, i32 noundef 12, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %cmp17.not = icmp eq i32 %call.i107, 0
  br i1 %cmp17.not, label %if.end24, label %do.end22

do.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %dev23 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.23, i32 noundef %call.i107) #7
  br label %cleanup

if.end24:                                         ; preds = %if.end14
  %call25 = tail call i32 @snd_soc_component_enable_pin(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.25) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26.not = icmp eq i32 %call25, 0
  br i1 %cmp26.not, label %if.end33, label %do.end31

do.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %dev32 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev32, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.27, i32 noundef %call25) #7
  br label %cleanup

if.end33:                                         ; preds = %if.end24
  %18 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dapm, align 4
  %call35 = tail call i32 @snd_soc_dapm_sync(ptr noundef %19) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36.not = icmp eq i32 %call35, 0
  br i1 %cmp36.not, label %if.end33.cleanup_crit_edge, label %do.end41

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end41:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  %dev42 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev42, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.30, i32 noundef %call35) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call44 = tail call i32 @snd_soc_component_disable_pin(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.25) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45.not = icmp eq i32 %call44, 0
  br i1 %cmp45.not, label %if.end52, label %do.end50

do.end50:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %dev51 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev51, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.33, i32 noundef %call44) #7
  br label %cleanup

if.end52:                                         ; preds = %if.else
  %24 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dapm, align 4
  %call54 = tail call i32 @snd_soc_dapm_sync(ptr noundef %25) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55.not = icmp eq i32 %call54, 0
  br i1 %cmp55.not, label %if.end62, label %do.end60

do.end60:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  %dev61 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev61, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.30, i32 noundef %call54) #7
  br label %cleanup

if.end62:                                         ; preds = %if.end52
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %call.i108 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 144, i32 noundef 12, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %cmp65.not = icmp eq i32 %call.i108, 0
  br i1 %cmp65.not, label %if.end62.cleanup_crit_edge, label %do.end70

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end70:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #6
  %dev71 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %dev71 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev71, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.38, i32 noundef %call.i108) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end70, %if.end62.cleanup_crit_edge, %do.end60, %do.end50, %do.end41, %if.end33.cleanup_crit_edge, %do.end31, %do.end22, %do.end12, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arizona_haptics_close(ptr nocapture noundef readonly %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %work = getelementptr inbounds %struct.arizona_haptics, ptr %1, i32 0, i32 2
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dapm = getelementptr inbounds %struct.arizona, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dapm, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i = getelementptr i8, ptr %5, i32 -176
  %call5 = tail call i32 @snd_soc_component_disable_pin(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.25) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_create_memless(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arizona_haptics_play(ptr nocapture noundef readonly %input, ptr nocapture noundef readnone %data, ptr nocapture noundef readonly %effect) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dapm = getelementptr inbounds %struct.arizona, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dapm, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.arizona, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.17) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %u = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %8 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool2.not = icmp eq i16 %9, 0
  br i1 %tobool2.not, label %if.else23, label %if.then3

if.then3:                                         ; preds = %if.end
  %hap_act = getelementptr inbounds %struct.arizona, ptr %3, i32 0, i32 8, i32 34
  %10 = ptrtoint ptr %hap_act to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hap_act, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not = icmp eq i32 %11, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then3
  %12 = lshr i16 %9, 9
  %conv8 = trunc i16 %12 to i8
  %intensity = getelementptr inbounds %struct.arizona_haptics, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %intensity to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv8, ptr %intensity, align 4
  %direction = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 2
  %14 = ptrtoint ptr %direction to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %15)
  %cmp = icmp sgt i16 %15, -1
  br i1 %cmp, label %if.then11, label %if.then5.if.end25_crit_edge

if.then5.if.end25_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then11:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  %conv14 = add nuw i8 %conv8, 127
  %16 = ptrtoint ptr %intensity to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv14, ptr %intensity, align 4
  br label %if.end25

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  %17 = lshr i16 %9, 8
  %conv20 = trunc i16 %17 to i8
  %intensity21 = getelementptr inbounds %struct.arizona_haptics, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %intensity21 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv20, ptr %intensity21, align 4
  br label %if.end25

if.else23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %intensity24 = getelementptr inbounds %struct.arizona_haptics, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %intensity24 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %intensity24, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.else23, %if.else, %if.then11, %if.then5.if.end25_crit_edge
  %work = getelementptr inbounds %struct.arizona_haptics, ptr %1, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %20 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %20, ptr noundef %work) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %do.end
  %retval.0 = phi i32 [ 0, %if.end25 ], [ -16, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_enable_pin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_disable_pin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !73, !74, !75, !77, !78}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @__initcall__kmod_arizona_haptics__294_210_arizona_haptics_driver_init6, !1, !"__initcall__kmod_arizona_haptics__294_210_arizona_haptics_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/misc/arizona-haptics.c", i32 210, i32 1}
!2 = !{ptr @__exitcall_arizona_haptics_driver_exit, !1, !"__exitcall_arizona_haptics_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias295, !4, !"__UNIQUE_ID_alias295", i1 false, i1 false}
!4 = !{!"../drivers/input/misc/arizona-haptics.c", i32 212, i32 1}
!5 = !{ptr @__UNIQUE_ID_description296, !6, !"__UNIQUE_ID_description296", i1 false, i1 false}
!6 = !{!"../drivers/input/misc/arizona-haptics.c", i32 213, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../drivers/input/misc/arizona-haptics.c", i32 214, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_author299, !11, !"__UNIQUE_ID_author299", i1 false, i1 false}
!11 = !{!"../drivers/input/misc/arizona-haptics.c", i32 215, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/misc/arizona-haptics.c", i32 207, i32 11}
!14 = !{ptr @arizona_haptics_driver, !15, !"arizona_haptics_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/misc/arizona-haptics.c", i32 204, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/misc/arizona-haptics.c", i32 167, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @arizona_haptics_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @arizona_haptics_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @arizona_haptics_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/input/misc/arizona-haptics.c", i32 172, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/misc/arizona-haptics.c", i32 176, i32 3}
!29 = !{ptr @arizona_haptics_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @arizona_haptics_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/misc/arizona-haptics.c", i32 182, i32 29}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/misc/arizona-haptics.c", i32 189, i32 3}
!35 = !{ptr @arizona_haptics_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @arizona_haptics_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/misc/arizona-haptics.c", i32 196, i32 3}
!39 = !{ptr @arizona_haptics_probe._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @arizona_haptics_probe._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/input/misc/arizona-haptics.c", i32 42, i32 3}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @arizona_haptics_work._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @arizona_haptics_work._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/misc/arizona-haptics.c", i32 52, i32 4}
!48 = !{ptr @arizona_haptics_work._entry.19, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @arizona_haptics_work._entry_ptr.21, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/misc/arizona-haptics.c", i32 63, i32 4}
!52 = !{ptr @arizona_haptics_work._entry.22, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @arizona_haptics_work._entry_ptr.24, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/misc/arizona-haptics.c", i32 68, i32 49}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/misc/arizona-haptics.c", i32 70, i32 4}
!58 = !{ptr @arizona_haptics_work._entry.26, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @arizona_haptics_work._entry_ptr.28, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/misc/arizona-haptics.c", i32 77, i32 4}
!62 = !{ptr @arizona_haptics_work._entry.29, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @arizona_haptics_work._entry_ptr.31, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/input/misc/arizona-haptics.c", i32 85, i32 4}
!66 = !{ptr @arizona_haptics_work._entry.32, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @arizona_haptics_work._entry_ptr.34, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @arizona_haptics_work._entry.35, !69, !"_entry", i1 false, i1 false}
!69 = !{!"../drivers/input/misc/arizona-haptics.c", i32 92, i32 4}
!70 = !{ptr @arizona_haptics_work._entry_ptr.36, !69, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/input/misc/arizona-haptics.c", i32 101, i32 4}
!73 = !{ptr @arizona_haptics_work._entry.37, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @arizona_haptics_work._entry_ptr.39, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/input/misc/arizona-haptics.c", i32 115, i32 3}
!77 = !{ptr @arizona_haptics_play._entry, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @arizona_haptics_play._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
