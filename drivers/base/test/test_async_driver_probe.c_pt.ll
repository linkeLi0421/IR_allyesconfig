; ModuleID = '/llk/IR_all_yes/drivers/base/test/test_async_driver_probe.c_pt.bc'
source_filename = "../drivers/base/test/test_async_driver_probe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
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
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__UNIQUE_ID_description172 = internal constant [56 x i8] c"description=Test module for asynchronous driver probing\00", section ".modinfo", align 1
@__UNIQUE_ID_author173 = internal constant [43 x i8] c"author=Dmitry Torokhov <dtor@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@test_async_probe_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\016test_async_driver_probe: registering first set of asynchronous devices...\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"test_async_probe_init\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/base/test/test_async_driver_probe.c\00", [52 x i8] zeroinitializer }, align 32
@test_async_probe_init._entry_ptr = internal global ptr @test_async_probe_init._entry, section ".printk_index", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@async_dev = internal global { [8 x ptr], [32 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"test_async_driver\00", [46 x i8] zeroinitializer }, align 32
@test_async_probe_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013test_async_driver_probe: failed to create async_dev: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@test_async_probe_init._entry_ptr.6 = internal global ptr @test_async_probe_init._entry.4, section ".printk_index", align 4
@test_async_probe_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016test_async_driver_probe: registering asynchronous driver...\0A\00", [33 x i8] zeroinitializer }, align 32
@test_async_probe_init._entry_ptr.9 = internal global ptr @test_async_probe_init._entry.7, section ".printk_index", align 4
@async_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @test_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__this_module = external dso_local global %struct.module, align 128
@test_async_probe_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013test_async_driver_probe: Failed to register async_driver: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@test_async_probe_init._entry_ptr.12 = internal global ptr @test_async_probe_init._entry.10, section ".printk_index", align 4
@test_async_probe_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016test_async_driver_probe: registration took %lld msecs\0A\00", [39 x i8] zeroinitializer }, align 32
@test_async_probe_init._entry_ptr.15 = internal global ptr @test_async_probe_init._entry.13, section ".printk_index", align 4
@test_async_probe_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013test_async_driver_probe: test failed: probe took too long\0A\00", [35 x i8] zeroinitializer }, align 32
@test_async_probe_init._entry_ptr.18 = internal global ptr @test_async_probe_init._entry.16, section ".printk_index", align 4
@test_async_probe_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\016test_async_driver_probe: registering second set of asynchronous devices...\0A\00", [50 x i8] zeroinitializer }, align 32
@test_async_probe_init._entry_ptr.21 = internal global ptr @test_async_probe_init._entry.19, section ".printk_index", align 4
@sync_dev = internal global { [2 x ptr], [24 x i8] } zeroinitializer, align 32
@test_async_probe_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_async_probe_init._entry_ptr.23 = internal global ptr @test_async_probe_init._entry.22, section ".printk_index", align 4
@test_async_probe_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 165, ptr @.str.26, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"registration took %lld msecs\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@test_async_probe_init._entry_ptr.28 = internal global ptr @test_async_probe_init._entry.24, section ".printk_index", align 4
@test_async_probe_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.1, ptr @.str.2, i32 168, ptr @.str.31, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"test failed: probe took too long\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@test_async_probe_init._entry_ptr.32 = internal global ptr @test_async_probe_init._entry.29, section ".printk_index", align 4
@test_async_probe_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.1, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016test_async_driver_probe: registering first synchronous device...\0A\00", [60 x i8] zeroinitializer }, align 32
@test_async_probe_init._entry_ptr.35 = internal global ptr @test_async_probe_init._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"test_sync_driver\00", [47 x i8] zeroinitializer }, align 32
@test_async_probe_init._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.1, ptr @.str.2, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013test_async_driver_probe: failed to create sync_dev: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@test_async_probe_init._entry_ptr.39 = internal global ptr @test_async_probe_init._entry.37, section ".printk_index", align 4
@test_async_probe_init._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.1, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016test_async_driver_probe: registering synchronous driver...\0A\00", [34 x i8] zeroinitializer }, align 32
@test_async_probe_init._entry_ptr.42 = internal global ptr @test_async_probe_init._entry.40, section ".printk_index", align 4
@sync_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @test_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.36, ptr null, ptr null, ptr null, i8 0, i32 2, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@test_async_probe_init._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_async_probe_init._entry_ptr.44 = internal global ptr @test_async_probe_init._entry.43, section ".printk_index", align 4
@test_async_probe_init._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_async_probe_init._entry_ptr.46 = internal global ptr @test_async_probe_init._entry.45, section ".printk_index", align 4
@test_async_probe_init._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.1, ptr @.str.2, i32 202, ptr @.str.31, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"test failed: probe was too quick\0A\00", [62 x i8] zeroinitializer }, align 32
@test_async_probe_init._entry_ptr.49 = internal global ptr @test_async_probe_init._entry.47, section ".printk_index", align 4
@test_async_probe_init._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.1, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016test_async_driver_probe: registering second synchronous device...\0A\00", [59 x i8] zeroinitializer }, align 32
@test_async_probe_init._entry_ptr.52 = internal global ptr @test_async_probe_init._entry.50, section ".printk_index", align 4
@test_async_probe_init._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.1, ptr @.str.2, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_async_probe_init._entry_ptr.54 = internal global ptr @test_async_probe_init._entry.53, section ".printk_index", align 4
@test_async_probe_init._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 225, ptr @.str.26, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@test_async_probe_init._entry_ptr.56 = internal global ptr @test_async_probe_init._entry.55, section ".printk_index", align 4
@test_async_probe_init._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.1, ptr @.str.2, i32 228, ptr @.str.31, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@test_async_probe_init._entry_ptr.58 = internal global ptr @test_async_probe_init._entry.57, section ".printk_index", align 4
@async_completed = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@test_async_probe_init._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.1, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013test_async_driver_probe: async events still pending, forcing timeout\0A\00", [56 x i8] zeroinitializer }, align 32
@test_async_probe_init._entry_ptr.61 = internal global ptr @test_async_probe_init._entry.59, section ".printk_index", align 4
@timeout = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@errors = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@warnings = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@test_async_probe_init._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.1, ptr @.str.2, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016test_async_driver_probe: completed successfully\0A\00", [45 x i8] zeroinitializer }, align 32
@test_async_probe_init._entry_ptr.64 = internal global ptr @test_async_probe_init._entry.62, section ".printk_index", align 4
@test_async_probe_init._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.1, ptr @.str.2, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013test_async_driver_probe: Test failed with %d errors and %d warnings\0A\00", [57 x i8] zeroinitializer }, align 32
@test_async_probe_init._entry_ptr.67 = internal global ptr @test_async_probe_init._entry.65, section ".printk_index", align 4
@test_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 33, ptr @.str.31, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"async probe took too long\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"test_probe\00", [21 x i8] zeroinitializer }, align 32
@test_probe._entry_ptr = internal global ptr @test_probe._entry, section ".printk_index", align 4
@test_probe.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.70, ptr @.str.69, ptr @.str.2, ptr @.str.71, i8 0, i8 9, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"test_async_driver_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sleeping for %d msecs in probe\0A\00", [32 x i8] zeroinitializer }, align 32
@test_probe.__UNIQUE_ID_ddebug171 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.70, ptr @.str.69, ptr @.str.2, ptr @.str.72, i8 0, i8 9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"done sleeping\0A\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 110, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [10 x i8] c"async_dev\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 76, i32 32 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 115, i32 46 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 121, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 128, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [13 x i8] c"async_driver\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 60, i32 31 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 132, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 137, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 139, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 144, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [9 x i8] c"sync_dev\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 77, i32 32 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 156, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 164, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 167, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 174, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 178, i32 45 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 184, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 190, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant [12 x i8] c"sync_driver\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 68, i32 31 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 194, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 199, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 201, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 207, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 217, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 224, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 227, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant [16 x i8] c"async_completed\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 21, i32 44 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 244, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 21, i32 35 }
@___asan_gen_.220 = private unnamed_addr constant [7 x i8] c"errors\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 21, i32 27 }
@___asan_gen_.223 = private unnamed_addr constant [9 x i8] c"warnings\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 21, i32 17 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 248, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 274, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 33, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 36, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.254 = private constant [47 x i8] c"../drivers/base/test/test_async_driver_probe.c\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 39, i32 3 }
@llvm.compiler.used = appending global [88 x ptr] [ptr @__UNIQUE_ID_author173, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_license174, ptr @test_async_probe_init._entry, ptr @test_async_probe_init._entry.10, ptr @test_async_probe_init._entry.13, ptr @test_async_probe_init._entry.16, ptr @test_async_probe_init._entry.19, ptr @test_async_probe_init._entry.22, ptr @test_async_probe_init._entry.24, ptr @test_async_probe_init._entry.29, ptr @test_async_probe_init._entry.33, ptr @test_async_probe_init._entry.37, ptr @test_async_probe_init._entry.4, ptr @test_async_probe_init._entry.40, ptr @test_async_probe_init._entry.43, ptr @test_async_probe_init._entry.45, ptr @test_async_probe_init._entry.47, ptr @test_async_probe_init._entry.50, ptr @test_async_probe_init._entry.53, ptr @test_async_probe_init._entry.55, ptr @test_async_probe_init._entry.57, ptr @test_async_probe_init._entry.59, ptr @test_async_probe_init._entry.62, ptr @test_async_probe_init._entry.65, ptr @test_async_probe_init._entry.7, ptr @test_async_probe_init._entry_ptr, ptr @test_async_probe_init._entry_ptr.12, ptr @test_async_probe_init._entry_ptr.15, ptr @test_async_probe_init._entry_ptr.18, ptr @test_async_probe_init._entry_ptr.21, ptr @test_async_probe_init._entry_ptr.23, ptr @test_async_probe_init._entry_ptr.28, ptr @test_async_probe_init._entry_ptr.32, ptr @test_async_probe_init._entry_ptr.35, ptr @test_async_probe_init._entry_ptr.39, ptr @test_async_probe_init._entry_ptr.42, ptr @test_async_probe_init._entry_ptr.44, ptr @test_async_probe_init._entry_ptr.46, ptr @test_async_probe_init._entry_ptr.49, ptr @test_async_probe_init._entry_ptr.52, ptr @test_async_probe_init._entry_ptr.54, ptr @test_async_probe_init._entry_ptr.56, ptr @test_async_probe_init._entry_ptr.58, ptr @test_async_probe_init._entry_ptr.6, ptr @test_async_probe_init._entry_ptr.61, ptr @test_async_probe_init._entry_ptr.64, ptr @test_async_probe_init._entry_ptr.67, ptr @test_async_probe_init._entry_ptr.9, ptr @test_probe._entry, ptr @test_probe._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @async_dev, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @async_driver, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @sync_dev, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.30, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @sync_driver, ptr @.str.48, ptr @.str.51, ptr @async_completed, ptr @.str.60, ptr @timeout, ptr @errors, ptr @warnings, ptr @.str.63, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_async_probe_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @async_dev to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_async_probe_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_async_probe_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @async_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_async_probe_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_async_probe_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_async_probe_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_async_probe_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync_dev to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_async_probe_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_async_probe_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_async_probe_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_async_probe_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_async_probe_init._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_async_probe_init._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_async_probe_init._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_async_probe_init._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_async_probe_init._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_async_probe_init._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_async_probe_init._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_async_probe_init._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_async_probe_init._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @async_completed to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_async_probe_init._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @errors to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @warnings to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_async_probe_init._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_async_probe_init._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  %call1289 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1289, i32 %0)
  %cmp290 = icmp ult i32 %call1289, %0
  br i1 %cmp290, label %entry.for.body_crit_edge, label %entry.do.end12_crit_edge

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %call1292 = phi i32 [ %call1, %if.end.for.body_crit_edge ], [ %call1289, %entry.for.body_crit_edge ]
  %async_id.0291 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x ptr], ptr @async_dev, i32 0, i32 %async_id.0291
  %call2 = tail call fastcc ptr @test_platform_device_register_node(ptr noundef nonnull @.str.3, i32 noundef %async_id.0291, i32 noundef 0)
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call2 to i32
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %arrayidx, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %2) #10
  br label %err_unregister_async_devs

if.end:                                           ; preds = %for.body
  %inc = add i32 %async_id.0291, 1
  %call1 = tail call i32 @cpumask_next(i32 noundef %call1292, ptr noundef nonnull @__cpu_online_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call1, %4
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.do.end12_crit_edge

if.end.do.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end12:                                         ; preds = %if.end.do.end12_crit_edge, %entry.do.end12_crit_edge
  %async_id.0.lcssa = phi i32 [ 0, %entry.do.end12_crit_edge ], [ %inc, %if.end.do.end12_crit_edge ]
  %pdev.0.lcssa = phi ptr [ null, %entry.do.end12_crit_edge ], [ %arrayidx, %if.end.do.end12_crit_edge ]
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #10
  %call15 = tail call i64 @ktime_get() #7
  %call16 = tail call i32 @__platform_driver_register(ptr noundef nonnull @async_driver, ptr noundef nonnull @__this_module) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.end23, label %do.end20

do.end20:                                         ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %call16) #10
  br label %err_unregister_async_devs

if.end23:                                         ; preds = %do.end12
  %call24 = tail call i64 @ktime_get() #7
  %sub.i = sub i64 %call24, %call15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %5 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #7
  %6 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %5) #12, !srcloc !138
  %7 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %5, i64 %6, i32 0) #12, !srcloc !139
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %7, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 18
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i64 noundef %cond213.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 2500, i64 %cond213.i.i.i)
  %cmp31 = icmp ugt i64 %cond213.i.i.i, 2500
  br i1 %cmp31, label %do.end35, label %do.end41

do.end35:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #10
  br label %err_unregister_async_driver

do.end41:                                         ; preds = %if.end23
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #10
  %call44 = tail call i64 @ktime_get() #7
  %call46294 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call46294, i32 %8)
  %cmp47295 = icmp ult i32 %call46294, %8
  br i1 %cmp47295, label %do.end41.for.body48_crit_edge, label %do.end41.for.end61_crit_edge

do.end41.for.end61_crit_edge:                     ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end61

do.end41.for.body48_crit_edge:                    ; preds = %do.end41
  br label %for.body48

for.body48:                                       ; preds = %if.end59.for.body48_crit_edge, %do.end41.for.body48_crit_edge
  %call46297 = phi i32 [ %call46, %if.end59.for.body48_crit_edge ], [ %call46294, %do.end41.for.body48_crit_edge ]
  %async_id.1296 = phi i32 [ %inc60, %if.end59.for.body48_crit_edge ], [ %async_id.0.lcssa, %do.end41.for.body48_crit_edge ]
  %call50 = tail call fastcc ptr @test_platform_device_register_node(ptr noundef nonnull @.str.3, i32 noundef %async_id.1296, i32 noundef 0)
  store ptr %call50, ptr @sync_dev, align 4
  %cmp.i264 = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i264, label %if.then52, label %if.end59

if.then52:                                        ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call50 to i32
  store ptr null, ptr @sync_dev, align 4
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %9) #10
  br label %err_unregister_async_driver

if.end59:                                         ; preds = %for.body48
  %inc60 = add i32 %async_id.1296, 1
  %call46 = tail call i32 @cpumask_next(i32 noundef %call46297, ptr noundef nonnull @__cpu_online_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %cmp47 = icmp ult i32 %call46, %10
  br i1 %cmp47, label %if.end59.for.body48_crit_edge, label %if.end59.for.end61_crit_edge

if.end59.for.end61_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end61

if.end59.for.body48_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body48

for.end61:                                        ; preds = %if.end59.for.end61_crit_edge, %do.end41.for.end61_crit_edge
  %async_id.1.lcssa = phi i32 [ %async_id.0.lcssa, %do.end41.for.end61_crit_edge ], [ %inc60, %if.end59.for.end61_crit_edge ]
  %pdev.1.lcssa = phi ptr [ %pdev.0.lcssa, %do.end41.for.end61_crit_edge ], [ @sync_dev, %if.end59.for.end61_crit_edge ]
  %call62 = tail call i64 @ktime_get() #7
  %sub.i265 = sub i64 %call62, %call44
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i265)
  %cmp8.i.i.i266 = icmp slt i64 %sub.i265, 0
  %11 = tail call i64 @llvm.abs.i64(i64 %sub.i265, i1 false) #7
  %12 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %11) #12, !srcloc !138
  %13 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %11, i64 %12, i32 0) #12, !srcloc !139
  %asmresult10.i.i.i.i267 = extractvalue { i64, i32 } %13, 0
  %div1811.i.i.i268 = lshr i64 %asmresult10.i.i.i.i267, 18
  %sub210.i.i.i269 = sub nsw i64 0, %div1811.i.i.i268
  %cond213.i.i.i270 = select i1 %cmp8.i.i.i266, i64 %sub210.i.i.i269, i64 %div1811.i.i.i268
  %14 = ptrtoint ptr %pdev.1.lcssa to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev.1.lcssa, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.25, i64 noundef %cond213.i.i.i270) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 2500, i64 %cond213.i.i.i270)
  %cmp67 = icmp ugt i64 %cond213.i.i.i270, 2500
  br i1 %cmp67, label %do.end71, label %do.end76

do.end71:                                         ; preds = %for.end61
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %pdev.1.lcssa to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev.1.lcssa, align 4
  %dev72 = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev72, ptr noundef nonnull @.str.30) #10
  br label %err_unregister_async_driver

do.end76:                                         ; preds = %for.end61
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #10
  %call80 = tail call fastcc ptr @test_platform_device_register_node(ptr noundef nonnull @.str.36, i32 noundef 0, i32 noundef -1)
  store ptr %call80, ptr @sync_dev, align 4
  %cmp.i271 = icmp ugt ptr %call80, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i271, label %if.then82, label %if.end89

if.then82:                                        ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %call80 to i32
  store ptr null, ptr @sync_dev, align 4
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %18) #10
  br label %err_unregister_async_driver

if.end89:                                         ; preds = %do.end76
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #10
  %call96 = tail call i64 @ktime_get() #7
  %call97 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sync_driver, ptr noundef nonnull @__this_module) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end105, label %do.end102

do.end102:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  %call104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %call97) #10
  br label %err_unregister_sync_devs

if.end105:                                        ; preds = %if.end89
  %call106 = tail call i64 @ktime_get() #7
  %sub.i272 = sub i64 %call106, %call96
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i272)
  %cmp8.i.i.i273 = icmp slt i64 %sub.i272, 0
  %19 = tail call i64 @llvm.abs.i64(i64 %sub.i272, i1 false) #7
  %20 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %19) #12, !srcloc !138
  %21 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %19, i64 %20, i32 0) #12, !srcloc !139
  %asmresult10.i.i.i.i274 = extractvalue { i64, i32 } %21, 0
  %div1811.i.i.i275 = lshr i64 %asmresult10.i.i.i.i274, 18
  %sub210.i.i.i276 = sub nsw i64 0, %div1811.i.i.i275
  %cond213.i.i.i277 = select i1 %cmp8.i.i.i273, i64 %sub210.i.i.i276, i64 %div1811.i.i.i275
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i64 noundef %cond213.i.i.i277) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 2500, i64 %cond213.i.i.i277)
  %cmp113 = icmp ult i64 %cond213.i.i.i277, 2500
  br i1 %cmp113, label %do.end117, label %do.end122

do.end117:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  %22 = load ptr, ptr @sync_dev, align 4
  %dev118 = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev118, ptr noundef nonnull @.str.48) #10
  br label %err_unregister_sync_driver

do.end122:                                        ; preds = %if.end105
  %call124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #10
  %call126 = tail call i64 @ktime_get() #7
  %call127 = tail call fastcc ptr @test_platform_device_register_node(ptr noundef nonnull @.str.36, i32 noundef 1, i32 noundef -1)
  store ptr %call127, ptr getelementptr inbounds ([2 x ptr], ptr @sync_dev, i32 0, i32 1), align 4
  %cmp.i278 = icmp ugt ptr %call127, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i278, label %if.then129, label %if.end136

if.then129:                                       ; preds = %do.end122
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %call127 to i32
  store ptr null, ptr getelementptr inbounds ([2 x ptr], ptr @sync_dev, i32 0, i32 1), align 4
  %call135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %23) #10
  br label %err_unregister_sync_driver

if.end136:                                        ; preds = %do.end122
  %call138 = tail call i64 @ktime_get() #7
  %sub.i279 = sub i64 %call138, %call126
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i279)
  %cmp8.i.i.i280 = icmp slt i64 %sub.i279, 0
  %24 = tail call i64 @llvm.abs.i64(i64 %sub.i279, i1 false) #7
  %25 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %24) #12, !srcloc !138
  %26 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %24, i64 %25, i32 0) #12, !srcloc !139
  %asmresult10.i.i.i.i281 = extractvalue { i64, i32 } %26, 0
  %div1811.i.i.i282 = lshr i64 %asmresult10.i.i.i.i281, 18
  %sub210.i.i.i283 = sub nsw i64 0, %div1811.i.i.i282
  %cond213.i.i.i284 = select i1 %cmp8.i.i.i280, i64 %sub210.i.i.i283, i64 %div1811.i.i.i282
  %27 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @sync_dev, i32 0, i32 1), align 4
  %dev143 = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev143, ptr noundef nonnull @.str.25, i64 noundef %cond213.i.i.i284) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 2500, i64 %cond213.i.i.i284)
  %cmp144 = icmp ult i64 %cond213.i.i.i284, 2500
  br i1 %cmp144, label %do.end148, label %if.end150

do.end148:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  %28 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @sync_dev, i32 0, i32 1), align 4
  %dev149 = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev149, ptr noundef nonnull @.str.48) #10
  br label %err_unregister_sync_driver

if.end150:                                        ; preds = %if.end136
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @async_completed, i32 noundef 4) #7
  %29 = load volatile i32, ptr @async_completed, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %async_id.1.lcssa)
  %cmp152.not = icmp eq i32 %29, %async_id.1.lcssa
  br i1 %cmp152.not, label %if.else, label %do.end156

do.end156:                                        ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #9
  %call158 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #10
  %call.i.i258 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @timeout, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr nonnull @timeout, i32 1, i32 3, i32 1) #7
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @timeout, ptr nonnull @timeout, i32 1, ptr nonnull elementtype(i32) @timeout) #7, !srcloc !140
  br label %err_unregister_sync_driver

if.else:                                          ; preds = %if.end150
  %call.i.i259 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @errors, i32 noundef 4) #7
  %31 = load volatile i32, ptr @errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool160.not = icmp eq i32 %31, 0
  br i1 %tobool160.not, label %land.lhs.true, label %if.else.err_unregister_sync_driver_crit_edge

if.else.err_unregister_sync_driver_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unregister_sync_driver

land.lhs.true:                                    ; preds = %if.else
  %call.i.i260 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @warnings, i32 noundef 4) #7
  %32 = load volatile i32, ptr @warnings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool162.not = icmp eq i32 %32, 0
  br i1 %tobool162.not, label %do.end166, label %land.lhs.true.err_unregister_sync_driver_crit_edge

land.lhs.true.err_unregister_sync_driver_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unregister_sync_driver

do.end166:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #10
  br label %cleanup

err_unregister_sync_driver:                       ; preds = %land.lhs.true.err_unregister_sync_driver_crit_edge, %if.else.err_unregister_sync_driver_crit_edge, %do.end156, %do.end148, %if.then129, %do.end117
  %err.0 = phi i32 [ -110, %do.end117 ], [ %23, %if.then129 ], [ -110, %do.end148 ], [ -110, %do.end156 ], [ 0, %if.else.err_unregister_sync_driver_crit_edge ], [ 0, %land.lhs.true.err_unregister_sync_driver_crit_edge ]
  %sync_id.0 = phi i32 [ 1, %do.end117 ], [ 1, %if.then129 ], [ 2, %do.end148 ], [ 2, %do.end156 ], [ 2, %if.else.err_unregister_sync_driver_crit_edge ], [ 2, %land.lhs.true.err_unregister_sync_driver_crit_edge ]
  tail call void @platform_driver_unregister(ptr noundef nonnull @sync_driver) #7
  br label %err_unregister_sync_devs

err_unregister_sync_devs:                         ; preds = %err_unregister_sync_driver, %do.end102
  %err.1 = phi i32 [ %call97, %do.end102 ], [ %err.0, %err_unregister_sync_driver ]
  %sync_id.1 = phi i32 [ 1, %do.end102 ], [ %sync_id.0, %err_unregister_sync_driver ]
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %err_unregister_sync_devs
  %sync_id.2300 = phi i32 [ %sync_id.1, %err_unregister_sync_devs ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %sync_id.2300, -1
  %arrayidx172 = getelementptr [2 x ptr], ptr @sync_dev, i32 0, i32 %dec
  %33 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx172, align 4
  tail call void @platform_device_unregister(ptr noundef %34) #7
  %tobool171.not = icmp eq i32 %dec, 0
  br i1 %tobool171.not, label %while.body.err_unregister_async_driver_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.err_unregister_async_driver_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unregister_async_driver

err_unregister_async_driver:                      ; preds = %while.body.err_unregister_async_driver_crit_edge, %if.then82, %do.end71, %if.then52, %do.end35
  %err.2 = phi i32 [ -110, %do.end35 ], [ %9, %if.then52 ], [ -110, %do.end71 ], [ %18, %if.then82 ], [ %err.1, %while.body.err_unregister_async_driver_crit_edge ]
  %async_id.2 = phi i32 [ %async_id.0.lcssa, %do.end35 ], [ %async_id.1296, %if.then52 ], [ %async_id.1.lcssa, %do.end71 ], [ %async_id.1.lcssa, %if.then82 ], [ %async_id.1.lcssa, %while.body.err_unregister_async_driver_crit_edge ]
  tail call void @platform_driver_unregister(ptr noundef nonnull @async_driver) #7
  br label %err_unregister_async_devs

err_unregister_async_devs:                        ; preds = %err_unregister_async_driver, %do.end20, %if.then
  %err.3 = phi i32 [ %2, %if.then ], [ %call16, %do.end20 ], [ %err.2, %err_unregister_async_driver ]
  %async_id.3 = phi i32 [ %async_id.0291, %if.then ], [ %async_id.0.lcssa, %do.end20 ], [ %async_id.2, %err_unregister_async_driver ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %async_id.3)
  %tobool175.not301 = icmp eq i32 %async_id.3, 0
  br i1 %tobool175.not301, label %err_unregister_async_devs.while.end178_crit_edge, label %err_unregister_async_devs.while.body176_crit_edge

err_unregister_async_devs.while.body176_crit_edge: ; preds = %err_unregister_async_devs
  br label %while.body176

err_unregister_async_devs.while.end178_crit_edge: ; preds = %err_unregister_async_devs
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end178

while.body176:                                    ; preds = %while.body176.while.body176_crit_edge, %err_unregister_async_devs.while.body176_crit_edge
  %async_id.4302 = phi i32 [ %dec174, %while.body176.while.body176_crit_edge ], [ %async_id.3, %err_unregister_async_devs.while.body176_crit_edge ]
  %dec174 = add i32 %async_id.4302, -1
  %arrayidx177 = getelementptr [8 x ptr], ptr @async_dev, i32 0, i32 %dec174
  %35 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx177, align 4
  tail call void @platform_device_unregister(ptr noundef %36) #7
  %tobool175.not = icmp eq i32 %dec174, 0
  br i1 %tobool175.not, label %while.body176.while.end178_crit_edge, label %while.body176.while.body176_crit_edge

while.body176.while.body176_crit_edge:            ; preds = %while.body176
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body176

while.body176.while.end178_crit_edge:             ; preds = %while.body176
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end178

while.end178:                                     ; preds = %while.body176.while.end178_crit_edge, %err_unregister_async_devs.while.end178_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3)
  %tobool179.not = icmp eq i32 %err.3, 0
  br i1 %tobool179.not, label %while.end178.do.end185_crit_edge, label %if.then180

while.end178.do.end185_crit_edge:                 ; preds = %while.end178
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end185

if.then180:                                       ; preds = %while.end178
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i261 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @errors, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr nonnull @errors, i32 1, i32 3, i32 1) #7
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @errors, ptr nonnull @errors, i32 1, ptr nonnull elementtype(i32) @errors) #7, !srcloc !140
  br label %do.end185

do.end185:                                        ; preds = %if.then180, %while.end178.do.end185_crit_edge
  %err.4 = phi i32 [ %err.3, %if.then180 ], [ -22, %while.end178.do.end185_crit_edge ]
  %call.i.i262 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @errors, i32 noundef 4) #7
  %38 = load volatile i32, ptr @errors, align 4
  %call.i.i263 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @warnings, i32 noundef 4) #7
  %39 = load volatile i32, ptr @warnings, align 4
  %call189 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %38, i32 noundef %39) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end185, %do.end166
  %retval.0 = phi i32 [ %err.4, %do.end185 ], [ 0, %do.end166 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @async_driver) #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @sync_driver) #7
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %id.010 = phi i32 [ 2, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %id.010, -1
  %arrayidx = getelementptr [2 x ptr], ptr @sync_dev, i32 0, i32 %dec
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @platform_device_unregister(ptr noundef %1) #7
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.body4_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.body4_crit_edge:                 ; preds = %while.body
  br label %while.body4

while.body4:                                      ; preds = %while.body4.while.body4_crit_edge, %while.body.while.body4_crit_edge
  %id.111 = phi i32 [ %dec2, %while.body4.while.body4_crit_edge ], [ 8, %while.body.while.body4_crit_edge ]
  %dec2 = add nsw i32 %id.111, -1
  %arrayidx5 = getelementptr [8 x ptr], ptr @async_dev, i32 0, i32 %dec2
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx5, align 4
  tail call void @platform_device_unregister(ptr noundef %3) #7
  %tobool3.not = icmp eq i32 %dec2, 0
  br i1 %tobool3.not, label %while.end6, label %while.body4.while.body4_crit_edge

while.body4.while.body4_crit_edge:                ; preds = %while.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body4

while.end6:                                       ; preds = %while.body4
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @test_platform_device_register_node(ptr noundef %name, i32 noundef %id, i32 noundef %nid) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @platform_device_alloc(ptr noundef %name, i32 noundef %id) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %entry
  %call3 = tail call i32 @platform_device_add(ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %if.then5

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_device_put(ptr noundef nonnull %call) #7
  %0 = inttoptr i32 %call3 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %0, %if.then5 ], [ null, %entry.cleanup_crit_edge ], [ %call, %if.end2.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @timeout, i32 noundef 4) #7
  %0 = load volatile i32, ptr @timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.body2, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.68) #10
  %call.i.i34 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @errors, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr nonnull @errors, i32 1, i32 3, i32 1) #7
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @errors, ptr nonnull @errors, i32 1, ptr nonnull elementtype(i32) @errors) #7, !srcloc !140
  br label %if.end28

do.body2:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_probe.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@test_probe, %if.then7)) #7
          to label %do.end10 [label %if.then7], !srcloc !141

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @test_probe.__UNIQUE_ID_ddebug170, ptr noundef %dev1, ptr noundef nonnull @.str.71, i32 noundef 5000) #7
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body2
  tail call void @msleep(i32 noundef 5000) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_probe.__UNIQUE_ID_ddebug171, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@test_probe, %if.then23)) #7
          to label %if.end28 [label %if.then23], !srcloc !141

if.then23:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @test_probe.__UNIQUE_ID_ddebug171, ptr noundef %dev1, ptr noundef nonnull @.str.72) #7
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %do.end10, %do.end
  %driver = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 6
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %probe_type = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %probe_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %probe_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then29, label %if.end28.if.end30_crit_edge

if.end28.if.end30_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then29:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i38 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @async_completed, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr nonnull @async_completed, i32 1, i32 3, i32 1) #7
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @async_completed, ptr nonnull @async_completed, i32 1, ptr nonnull elementtype(i32) @async_completed) #7, !srcloc !140
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end28.if.end30_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !60, !61, !62, !64, !65, !66, !68, !69, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !119, !121, !123, !125, !127}
!llvm.module.flags = !{!129, !130, !131, !132, !133, !134, !135, !136}
!llvm.ident = !{!137}

!0 = !{ptr @__UNIQUE_ID_description172, !1, !"__UNIQUE_ID_description172", i1 false, i1 false}
!1 = !{!"../drivers/base/test/test_async_driver_probe.c", i32 297, i32 1}
!2 = !{ptr @__UNIQUE_ID_author173, !3, !"__UNIQUE_ID_author173", i1 false, i1 false}
!3 = !{!"../drivers/base/test/test_async_driver_probe.c", i32 298, i32 1}
!4 = !{ptr @__UNIQUE_ID_license174, !5, !"__UNIQUE_ID_license174", i1 false, i1 false}
!5 = !{!"../drivers/base/test/test_async_driver_probe.c", i32 299, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/base/test/test_async_driver_probe.c", i32 110, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @test_async_probe_init._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @test_async_probe_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/base/test/test_async_driver_probe.c", i32 115, i32 46}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/base/test/test_async_driver_probe.c", i32 121, i32 4}
!16 = !{ptr @test_async_probe_init._entry.4, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @test_async_probe_init._entry_ptr.6, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/base/test/test_async_driver_probe.c", i32 128, i32 2}
!20 = !{ptr @test_async_probe_init._entry.7, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @test_async_probe_init._entry_ptr.9, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/base/test/test_async_driver_probe.c", i32 132, i32 3}
!24 = !{ptr @test_async_probe_init._entry.10, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @test_async_probe_init._entry_ptr.12, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/base/test/test_async_driver_probe.c", i32 137, i32 2}
!28 = !{ptr @test_async_probe_init._entry.13, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @test_async_probe_init._entry_ptr.15, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/base/test/test_async_driver_probe.c", i32 139, i32 3}
!32 = !{ptr @test_async_probe_init._entry.16, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @test_async_probe_init._entry_ptr.18, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/base/test/test_async_driver_probe.c", i32 144, i32 2}
!36 = !{ptr @test_async_probe_init._entry.19, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @test_async_probe_init._entry_ptr.21, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @test_async_probe_init._entry.22, !39, !"_entry", i1 false, i1 false}
!39 = !{!"../drivers/base/test/test_async_driver_probe.c", i32 156, i32 4}
!40 = !{ptr @test_async_probe_init._entry_ptr.23, !39, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/base/test/test_async_driver_probe.c", i32 164, i32 2}
!43 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.27, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @test_async_probe_init._entry.24, !42, !"_entry", i1 false, i1 false}
!46 = !{ptr @test_async_probe_init._entry_ptr.28, !42, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.30, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/base/test/test_async_driver_probe.c", i32 167, i32 3}
!49 = !{ptr @.str.31, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @test_async_probe_init._entry.29, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @test_async_probe_init._entry_ptr.32, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.34, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/base/test/test_async_driver_probe.c", i32 174, i32 2}
!54 = !{ptr @test_async_probe_init._entry.33, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @test_async_probe_init._entry_ptr.35, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.36, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/base/test/test_async_driver_probe.c", i32 178, i32 45}
!58 = !{ptr @.str.38, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/base/test/test_async_driver_probe.c", i32 184, i32 3}
!60 = !{ptr @test_async_probe_init._entry.37, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @test_async_probe_init._entry_ptr.39, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.41, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/base/test/test_async_driver_probe.c", i32 190, i32 2}
!64 = !{ptr @test_async_probe_init._entry.40, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @test_async_probe_init._entry_ptr.42, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @test_async_probe_init._entry.43, !67, !"_entry", i1 false, i1 false}
!67 = !{!"../drivers/base/test/test_async_driver_probe.c", i32 194, i32 3}
!68 = !{ptr @test_async_probe_init._entry_ptr.44, !67, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @test_async_probe_init._entry.45, !70, !"_entry", i1 false, i1 false}
!70 = !{!"../drivers/base/test/test_async_driver_probe.c", i32 199, i32 2}
!71 = !{ptr @test_async_probe_init._entry_ptr.46, !70, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.48, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/base/test/test_async_driver_probe.c", i32 201, i32 3}
!74 = !{ptr @test_async_probe_init._entry.47, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @test_async_probe_init._entry_ptr.49, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.51, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/base/test/test_async_driver_probe.c", i32 207, i32 2}
!78 = !{ptr @test_async_probe_init._entry.50, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @test_async_probe_init._entry_ptr.52, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @test_async_probe_init._entry.53, !81, !"_entry", i1 false, i1 false}
!81 = !{!"../drivers/base/test/test_async_driver_probe.c", i32 217, i32 3}
!82 = !{ptr @test_async_probe_init._entry_ptr.54, !81, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @test_async_probe_init._entry.55, !84, !"_entry", i1 false, i1 false}
!84 = !{!"../drivers/base/test/test_async_driver_probe.c", i32 224, i32 2}
!85 = !{ptr @test_async_probe_init._entry_ptr.56, !84, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @test_async_probe_init._entry.57, !87, !"_entry", i1 false, i1 false}
!87 = !{!"../drivers/base/test/test_async_driver_probe.c", i32 227, i32 3}
!88 = !{ptr @test_async_probe_init._entry_ptr.58, !87, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.60, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/base/test/test_async_driver_probe.c", i32 244, i32 3}
!91 = !{ptr @test_async_probe_init._entry.59, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @test_async_probe_init._entry_ptr.61, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.63, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/base/test/test_async_driver_probe.c", i32 248, i32 3}
!95 = !{ptr @test_async_probe_init._entry.62, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @test_async_probe_init._entry_ptr.64, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.66, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/base/test/test_async_driver_probe.c", i32 274, i32 2}
!99 = !{ptr @test_async_probe_init._entry.65, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @test_async_probe_init._entry_ptr.67, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @async_dev, !102, !"async_dev", i1 false, i1 false}
!102 = !{!"../drivers/base/test/test_async_driver_probe.c", i32 76, i32 32}
!103 = !{ptr @async_driver, !104, !"async_driver", i1 false, i1 false}
!104 = !{!"../drivers/base/test/test_async_driver_probe.c", i32 60, i32 31}
!105 = !{ptr @.str.68, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/base/test/test_async_driver_probe.c", i32 33, i32 3}
!107 = !{ptr @.str.69, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @test_probe._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @test_probe._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.70, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/base/test/test_async_driver_probe.c", i32 36, i32 3}
!112 = !{ptr @.str.71, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @test_probe.__UNIQUE_ID_ddebug170, !111, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!114 = !{ptr @.str.72, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/base/test/test_async_driver_probe.c", i32 39, i32 3}
!116 = !{ptr @test_probe.__UNIQUE_ID_ddebug171, !115, !"__UNIQUE_ID_ddebug171", i1 false, i1 false}
!117 = !{ptr @sync_dev, !118, !"sync_dev", i1 false, i1 false}
!118 = !{!"../drivers/base/test/test_async_driver_probe.c", i32 77, i32 32}
!119 = !{ptr @sync_driver, !120, !"sync_driver", i1 false, i1 false}
!120 = !{!"../drivers/base/test/test_async_driver_probe.c", i32 68, i32 31}
!121 = !{ptr @async_completed, !122, !"async_completed", i1 false, i1 false}
!122 = !{!"../drivers/base/test/test_async_driver_probe.c", i32 21, i32 44}
!123 = !{ptr @timeout, !124, !"timeout", i1 false, i1 false}
!124 = !{!"../drivers/base/test/test_async_driver_probe.c", i32 21, i32 35}
!125 = !{ptr @errors, !126, !"errors", i1 false, i1 false}
!126 = !{!"../drivers/base/test/test_async_driver_probe.c", i32 21, i32 27}
!127 = !{ptr @warnings, !128, !"warnings", i1 false, i1 false}
!128 = !{!"../drivers/base/test/test_async_driver_probe.c", i32 21, i32 17}
!129 = !{i32 1, !"wchar_size", i32 2}
!130 = !{i32 1, !"min_enum_size", i32 4}
!131 = !{i32 8, !"branch-target-enforcement", i32 0}
!132 = !{i32 8, !"sign-return-address", i32 0}
!133 = !{i32 8, !"sign-return-address-all", i32 0}
!134 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!135 = !{i32 7, !"uwtable", i32 1}
!136 = !{i32 7, !"frame-pointer", i32 2}
!137 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!138 = !{i64 480181, i64 480208}
!139 = !{i64 480876, i64 480903, i64 480936, i64 480957, i64 480984, i64 481010}
!140 = !{i64 2148194858, i64 2148194884, i64 2148194913, i64 2148194947, i64 2148194978, i64 2148195001}
!141 = !{i64 2148762139, i64 2148762144, i64 2148762157, i64 2148762201, i64 2148762235, i64 2148762256}
