; ModuleID = '/llk/IR_all_yes/drivers/input/misc/sc27xx-vibra.c_pt.bc'
source_filename = "../drivers/input/misc/sc27xx-vibra.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sc27xx_vibra_data = type { i32, i32, i32 }
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
%struct.vibra_info = type { ptr, %struct.work_struct, ptr, ptr, i32, i32, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.68 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.68 = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }

@__initcall__kmod_sc27xx_vibra__210_197_sc27xx_vibra_driver_init6 = internal global ptr @sc27xx_vibra_driver_init, section ".initcall6.init", align 4
@sc27xx_vibra_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sc27xx_vibra_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sc27xx_vibra_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sc27xx_vibra_driver_exit = internal global ptr @sc27xx_vibra_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description211 = internal constant [59 x i8] c"sc27xx_vibra.description=Spreadtrum SC27xx Vibrator Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file212 = internal constant [50 x i8] c"sc27xx_vibra.file=drivers/input/misc/sc27xx-vibra\00", section ".modinfo", align 1
@__UNIQUE_ID_license213 = internal constant [28 x i8] c"sc27xx_vibra.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author214 = internal constant [61 x i8] c"sc27xx_vibra.author=Xiaotong Lu <xiaotong.lu@spreadtrum.com>\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sc27xx-vibrator\00", [16 x i8] zeroinitializer }, align 32
@sc27xx_vibra_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sprd,sc2721-vibrator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc2721_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sprd,sc2730-vibrator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc2730_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sprd,sc2731-vibrator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc2731_data }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@sc27xx_vibra_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 123, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"no matching driver data found\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sc27xx_vibra_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/input/misc/sc27xx-vibra.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sc27xx_vibra_probe._entry_ptr = internal global ptr @sc27xx_vibra_probe._entry, section ".printk_index", align 4
@sc27xx_vibra_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 133, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get vibrator regmap.\0A\00", [32 x i8] zeroinitializer }, align 32
@sc27xx_vibra_probe._entry_ptr.8 = internal global ptr @sc27xx_vibra_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@sc27xx_vibra_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 139, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to get vibrator base address.\0A\00", [58 x i8] zeroinitializer }, align 32
@sc27xx_vibra_probe._entry_ptr.12 = internal global ptr @sc27xx_vibra_probe._entry.10, section ".printk_index", align 4
@sc27xx_vibra_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 145, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to allocate input device.\0A\00", [62 x i8] zeroinitializer }, align 32
@sc27xx_vibra_probe._entry_ptr.15 = internal global ptr @sc27xx_vibra_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sc27xx:vibrator\00", [16 x i8] zeroinitializer }, align 32
@sc27xx_vibra_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&info->play_work)\00", [60 x i8] zeroinitializer }, align 32
@sc27xx_vibra_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 161, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to initialize the vibrator.\0A\00", [60 x i8] zeroinitializer }, align 32
@sc27xx_vibra_probe._entry_ptr.20 = internal global ptr @sc27xx_vibra_probe._entry.18, section ".printk_index", align 4
@sc27xx_vibra_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 168, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to register vibrator to FF.\0A\00", [60 x i8] zeroinitializer }, align 32
@sc27xx_vibra_probe._entry_ptr.23 = internal global ptr @sc27xx_vibra_probe._entry.21, section ".printk_index", align 4
@sc27xx_vibra_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 174, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to register input device.\0A\00", [62 x i8] zeroinitializer }, align 32
@sc27xx_vibra_probe._entry_ptr.26 = internal global ptr @sc27xx_vibra_probe._entry.24, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@sc2721_data = internal constant { %struct.sc27xx_vibra_data, [20 x i8] } { %struct.sc27xx_vibra_data { i32 12288, i32 512, i32 256 }, [20 x i8] zeroinitializer }, align 32
@sc2730_data = internal constant { %struct.sc27xx_vibra_data, [20 x i8] } { %struct.sc27xx_vibra_data { i32 0, i32 16384, i32 8192 }, [20 x i8] zeroinitializer }, align 32
@sc2731_data = internal constant { %struct.sc27xx_vibra_data, [20 x i8] } { %struct.sc27xx_vibra_data { i32 12288, i32 512, i32 256 }, [20 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant [20 x i8] c"sc27xx_vibra_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 189, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 191, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [22 x i8] c"sc27xx_vibra_of_match\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 181, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 123, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 133, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 137, i32 47 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 139, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 145, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 149, i32 26 }
@___asan_gen_.78 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 156, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 161, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 168, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 174, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [12 x i8] c"sc2721_data\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 50, i32 39 }
@___asan_gen_.105 = private unnamed_addr constant [12 x i8] c"sc2730_data\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 44, i32 39 }
@___asan_gen_.108 = private unnamed_addr constant [12 x i8] c"sc2731_data\00", align 1
@___asan_gen_.109 = private constant [37 x i8] c"../drivers/input/misc/sc27xx-vibra.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 38, i32 39 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_author214, ptr @__UNIQUE_ID_description211, ptr @__UNIQUE_ID_file212, ptr @__UNIQUE_ID_license213, ptr @__exitcall_sc27xx_vibra_driver_exit, ptr @__initcall__kmod_sc27xx_vibra__210_197_sc27xx_vibra_driver_init6, ptr @sc27xx_vibra_driver_exit, ptr @sc27xx_vibra_probe._entry, ptr @sc27xx_vibra_probe._entry.10, ptr @sc27xx_vibra_probe._entry.13, ptr @sc27xx_vibra_probe._entry.18, ptr @sc27xx_vibra_probe._entry.21, ptr @sc27xx_vibra_probe._entry.24, ptr @sc27xx_vibra_probe._entry.6, ptr @sc27xx_vibra_probe._entry_ptr, ptr @sc27xx_vibra_probe._entry_ptr.12, ptr @sc27xx_vibra_probe._entry_ptr.15, ptr @sc27xx_vibra_probe._entry_ptr.20, ptr @sc27xx_vibra_probe._entry_ptr.23, ptr @sc27xx_vibra_probe._entry_ptr.26, ptr @sc27xx_vibra_probe._entry_ptr.8, ptr @sc27xx_vibra_driver, ptr @.str, ptr @sc27xx_vibra_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @sc27xx_vibra_probe.__key, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @sc2721_data, ptr @sc2730_data, ptr @sc2731_data], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_vibra_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_vibra_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_vibra_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_vibra_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_vibra_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_vibra_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_vibra_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_vibra_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_vibra_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_vibra_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc2721_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc2730_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc2731_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sc27xx_vibra_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sc27xx_vibra_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sc27xx_vibra_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @sc27xx_vibra_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc27xx_vibra_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @device_get_match_data(ptr noundef %dev) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 68, i32 noundef 3520) #4
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call8 = tail call ptr @dev_get_regmap(ptr noundef %1, ptr noundef null) #4
  %regmap = getelementptr inbounds %struct.vibra_info, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call8, ptr %regmap, align 4
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.end6.cleanup.sink.split_crit_edge, label %if.end16

if.end6.cleanup.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end16:                                         ; preds = %if.end6
  %base = getelementptr inbounds %struct.vibra_info, ptr %call.i, i32 0, i32 4
  %call.i119 = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef %base, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool19.not = icmp eq i32 %call.i119, 0
  br i1 %tobool19.not, label %if.end25, label %if.end16.cleanup.sink.split_crit_edge

if.end16.cleanup.sink.split_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end25:                                         ; preds = %if.end16
  %call27 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call27, ptr %call.i, align 4
  %tobool29.not = icmp eq ptr %call27, null
  br i1 %tobool29.not, label %if.end25.cleanup.sink.split_crit_edge, label %if.end35

if.end25.cleanup.sink.split_crit_edge:            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end35:                                         ; preds = %if.end25
  %4 = ptrtoint ptr %call27 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.16, ptr %call27, align 8
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %6, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %version, align 2
  %8 = load ptr, ptr %call.i, align 4
  %close = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 32
  %9 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @sc27xx_vibra_close, ptr %close, align 4
  %data39 = getelementptr inbounds %struct.vibra_info, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %data39 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %data39, align 4
  %11 = load ptr, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %11, i32 0, i32 40, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %13 = load ptr, ptr %call.i, align 4
  tail call void @input_set_capability(ptr noundef %13, i32 noundef 21, i32 noundef 80) #4
  %play_work = getelementptr inbounds %struct.vibra_info, ptr %call.i, i32 0, i32 1
  tail call void @__init_work(ptr noundef %play_work, i32 noundef 0) #4
  %14 = ptrtoint ptr %play_work to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -64, ptr %play_work, align 4
  %lockdep_map = getelementptr inbounds %struct.vibra_info, ptr %call.i, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.17, ptr noundef nonnull @sc27xx_vibra_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry47 = getelementptr inbounds %struct.vibra_info, ptr %call.i, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %entry47 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entry47, ptr %entry47, align 4
  %prev.i = getelementptr inbounds %struct.vibra_info, ptr %call.i, i32 0, i32 1, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %entry47, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.vibra_info, ptr %call.i, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @sc27xx_vibra_play_work, ptr %func, align 4
  %enabled = getelementptr inbounds %struct.vibra_info, ptr %call.i, i32 0, i32 6
  %18 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %enabled, align 4
  %19 = ptrtoint ptr %data39 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data39, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %if.end35.if.end58_crit_edge, label %sc27xx_vibra_hw_init.exit

if.end35.if.end58_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58

sc27xx_vibra_hw_init.exit:                        ; preds = %if.end35
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %base, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef %26, i32 noundef %22, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool52.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool52.not, label %sc27xx_vibra_hw_init.exit.if.end58_crit_edge, label %sc27xx_vibra_hw_init.exit.cleanup.sink.split_crit_edge

sc27xx_vibra_hw_init.exit.cleanup.sink.split_crit_edge: ; preds = %sc27xx_vibra_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

sc27xx_vibra_hw_init.exit.if.end58_crit_edge:     ; preds = %sc27xx_vibra_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58

if.end58:                                         ; preds = %sc27xx_vibra_hw_init.exit.if.end58_crit_edge, %if.end35.if.end58_crit_edge
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  %call60 = tail call i32 @input_ff_create_memless(ptr noundef %28, ptr noundef null, ptr noundef nonnull @sc27xx_vibra_play) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end67, label %if.end58.cleanup.sink.split_crit_edge

if.end58.cleanup.sink.split_crit_edge:            ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end67:                                         ; preds = %if.end58
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 4
  %call69 = tail call i32 @input_register_device(ptr noundef %30) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end67.cleanup_crit_edge, label %if.end67.cleanup.sink.split_crit_edge

if.end67.cleanup.sink.split_crit_edge:            ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end67.cleanup.sink.split_crit_edge, %if.end58.cleanup.sink.split_crit_edge, %sc27xx_vibra_hw_init.exit.cleanup.sink.split_crit_edge, %if.end25.cleanup.sink.split_crit_edge, %if.end16.cleanup.sink.split_crit_edge, %if.end6.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.25.sink = phi ptr [ @.str.1, %entry.cleanup.sink.split_crit_edge ], [ @.str.7, %if.end6.cleanup.sink.split_crit_edge ], [ @.str.11, %if.end16.cleanup.sink.split_crit_edge ], [ @.str.14, %if.end25.cleanup.sink.split_crit_edge ], [ @.str.19, %sc27xx_vibra_hw_init.exit.cleanup.sink.split_crit_edge ], [ @.str.22, %if.end58.cleanup.sink.split_crit_edge ], [ @.str.25, %if.end67.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -22, %entry.cleanup.sink.split_crit_edge ], [ -19, %if.end6.cleanup.sink.split_crit_edge ], [ %call.i119, %if.end16.cleanup.sink.split_crit_edge ], [ -12, %if.end25.cleanup.sink.split_crit_edge ], [ %call.i.i, %sc27xx_vibra_hw_init.exit.cleanup.sink.split_crit_edge ], [ %call60, %if.end58.cleanup.sink.split_crit_edge ], [ %call69, %if.end67.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.25.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end67.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end67.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sc27xx_vibra_close(ptr nocapture noundef readonly %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %play_work = getelementptr inbounds %struct.vibra_info, ptr %1, i32 0, i32 1
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %play_work) #4
  %enabled = getelementptr inbounds %struct.vibra_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %data1.i = getelementptr inbounds %struct.vibra_info, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data1.i, align 4
  %regmap.i = getelementptr inbounds %struct.vibra_info, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %base.i = getelementptr inbounds %struct.vibra_info, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base.i, align 4
  %ldo_pd.i = getelementptr inbounds %struct.sc27xx_vibra_data, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %ldo_pd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ldo_pd.i, align 4
  %call.i32.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base.i, align 4
  %slp_pd_en12.i = getelementptr inbounds %struct.sc27xx_vibra_data, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %slp_pd_en12.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %slp_pd_en12.i, align 4
  %call.i33.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %17, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %18 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %enabled, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sc27xx_vibra_play_work(ptr nocapture noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %strength = getelementptr i8, ptr %work, i32 56
  %0 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %strength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %enabled4 = getelementptr i8, ptr %work, i32 60
  %2 = ptrtoint ptr %enabled4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled4, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true3, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  br i1 %tobool5.not, label %if.then, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %data1.i = getelementptr i8, ptr %work, i32 48
  %4 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data1.i, align 4
  %regmap.i = getelementptr i8, ptr %work, i32 44
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %base.i = getelementptr i8, ptr %work, i32 52
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base.i, align 4
  %ldo_pd.i = getelementptr inbounds %struct.sc27xx_vibra_data, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %ldo_pd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ldo_pd.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base.i, align 4
  %slp_pd_en.i = getelementptr inbounds %struct.sc27xx_vibra_data, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %slp_pd_en.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %slp_pd_en.i, align 4
  %call.i31.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %if.end7.sink.split

land.lhs.true3:                                   ; preds = %entry
  br i1 %tobool5.not, label %land.lhs.true3.if.end7_crit_edge, label %if.then6

land.lhs.true3.if.end7_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then6:                                         ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  %data1.i13 = getelementptr i8, ptr %work, i32 48
  %18 = ptrtoint ptr %data1.i13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data1.i13, align 4
  %regmap.i14 = getelementptr i8, ptr %work, i32 44
  %20 = ptrtoint ptr %regmap.i14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i14, align 4
  %base.i15 = getelementptr i8, ptr %work, i32 52
  %22 = ptrtoint ptr %base.i15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %base.i15, align 4
  %ldo_pd.i16 = getelementptr inbounds %struct.sc27xx_vibra_data, ptr %19, i32 0, i32 2
  %24 = ptrtoint ptr %ldo_pd.i16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ldo_pd.i16, align 4
  %call.i32.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %25, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %26 = ptrtoint ptr %regmap.i14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i14, align 4
  %28 = ptrtoint ptr %base.i15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %base.i15, align 4
  %slp_pd_en12.i = getelementptr inbounds %struct.sc27xx_vibra_data, ptr %19, i32 0, i32 1
  %30 = ptrtoint ptr %slp_pd_en12.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %slp_pd_en12.i, align 4
  %call.i33.i = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %31, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %if.end7.sink.split

if.end7.sink.split:                               ; preds = %if.then6, %if.then
  %.sink = phi i8 [ 0, %if.then6 ], [ 1, %if.then ]
  %32 = ptrtoint ptr %enabled4 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %.sink, ptr %enabled4, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end7.sink.split, %land.lhs.true3.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_create_memless(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc27xx_vibra_play(ptr nocapture noundef readonly %input, ptr nocapture noundef readnone %data, ptr nocapture noundef readonly %effect) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %weak_magnitude = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %2 = ptrtoint ptr %weak_magnitude to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %weak_magnitude, align 2
  %conv = zext i16 %3 to i32
  %strength = getelementptr inbounds %struct.vibra_info, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %strength to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %strength, align 4
  %play_work = getelementptr inbounds %struct.vibra_info, ptr %1, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %play_work) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !38, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !57, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__initcall__kmod_sc27xx_vibra__210_197_sc27xx_vibra_driver_init6, !1, !"__initcall__kmod_sc27xx_vibra__210_197_sc27xx_vibra_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/misc/sc27xx-vibra.c", i32 197, i32 1}
!2 = !{ptr @__exitcall_sc27xx_vibra_driver_exit, !1, !"__exitcall_sc27xx_vibra_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description211, !4, !"__UNIQUE_ID_description211", i1 false, i1 false}
!4 = !{!"../drivers/input/misc/sc27xx-vibra.c", i32 199, i32 1}
!5 = !{ptr @__UNIQUE_ID_file212, !6, !"__UNIQUE_ID_file212", i1 false, i1 false}
!6 = !{!"../drivers/input/misc/sc27xx-vibra.c", i32 200, i32 1}
!7 = !{ptr @__UNIQUE_ID_license213, !6, !"__UNIQUE_ID_license213", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author214, !9, !"__UNIQUE_ID_author214", i1 false, i1 false}
!9 = !{!"../drivers/input/misc/sc27xx-vibra.c", i32 201, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/misc/sc27xx-vibra.c", i32 191, i32 11}
!12 = !{ptr @sc27xx_vibra_driver, !13, !"sc27xx_vibra_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/misc/sc27xx-vibra.c", i32 189, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/misc/sc27xx-vibra.c", i32 123, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sc27xx_vibra_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @sc27xx_vibra_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/misc/sc27xx-vibra.c", i32 133, i32 3}
!24 = !{ptr @sc27xx_vibra_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @sc27xx_vibra_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/misc/sc27xx-vibra.c", i32 137, i32 47}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/misc/sc27xx-vibra.c", i32 139, i32 3}
!30 = !{ptr @sc27xx_vibra_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @sc27xx_vibra_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/misc/sc27xx-vibra.c", i32 145, i32 3}
!34 = !{ptr @sc27xx_vibra_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @sc27xx_vibra_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/misc/sc27xx-vibra.c", i32 149, i32 26}
!38 = !{ptr @sc27xx_vibra_probe.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/input/misc/sc27xx-vibra.c", i32 156, i32 2}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/input/misc/sc27xx-vibra.c", i32 161, i32 3}
!43 = !{ptr @sc27xx_vibra_probe._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @sc27xx_vibra_probe._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/misc/sc27xx-vibra.c", i32 168, i32 3}
!47 = !{ptr @sc27xx_vibra_probe._entry.21, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @sc27xx_vibra_probe._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/input/misc/sc27xx-vibra.c", i32 174, i32 3}
!51 = !{ptr @sc27xx_vibra_probe._entry.24, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @sc27xx_vibra_probe._entry_ptr.26, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @sc27xx_vibra_of_match, !54, !"sc27xx_vibra_of_match", i1 false, i1 false}
!54 = !{!"../drivers/input/misc/sc27xx-vibra.c", i32 181, i32 34}
!55 = !{ptr @sc2721_data, !56, !"sc2721_data", i1 false, i1 false}
!56 = !{!"../drivers/input/misc/sc27xx-vibra.c", i32 50, i32 39}
!57 = !{ptr @sc2730_data, !58, !"sc2730_data", i1 false, i1 false}
!58 = !{!"../drivers/input/misc/sc27xx-vibra.c", i32 44, i32 39}
!59 = !{ptr @sc2731_data, !60, !"sc2731_data", i1 false, i1 false}
!60 = !{!"../drivers/input/misc/sc27xx-vibra.c", i32 38, i32 39}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{i8 0, i8 2}
