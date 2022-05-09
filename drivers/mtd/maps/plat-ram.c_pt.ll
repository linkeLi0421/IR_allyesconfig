; ModuleID = '/llk/IR_all_yes/drivers/mtd/maps/plat-ram.c_pt.bc'
source_filename = "../drivers/mtd/maps/plat-ram.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.platram_info = type { ptr, ptr, %struct.map_info, ptr }
%struct.map_info = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platdata_mtd_ram = type { ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }

@__UNIQUE_ID_alias190 = internal constant [32 x i8] c"plat_ram.alias=platform:mtd-ram\00", section ".modinfo", align 1
@__initcall__kmod_plat_ram__191_217_platram_driver_init6 = internal global ptr @platram_driver_init, section ".initcall6.init", align 4
@platram_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @platram_probe, ptr @platram_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_platram_driver_exit = internal global ptr @platram_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file192 = internal constant [40 x i8] c"plat_ram.file=drivers/mtd/maps/plat-ram\00", section ".modinfo", align 1
@__UNIQUE_ID_license193 = internal constant [21 x i8] c"plat_ram.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author194 = internal constant [45 x i8] c"plat_ram.author=Ben Dooks <ben@simtec.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description195 = internal constant [49 x i8] c"plat_ram.description=MTD platform RAM map driver\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mtd-ram\00", [24 x i8] zeroinitializer }, align 32
@platram_probe.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"plat_ram\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"platram_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/mtd/maps/plat-ram.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"probe entered\0A\00", [17 x i8] zeroinitializer }, align 32
@platram_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 107, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no platform data supplied\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@platram_probe._entry_ptr = internal global ptr @platram_probe._entry, section ".printk_index", align 4
@platram_probe.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 0, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"got platform resource %p (0x%llx)\0A\00", [61 x i8] zeroinitializer }, align 32
@platram_probe.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.9, i8 0, i8 36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"virt %p, %lu bytes\0A\00", [44 x i8] zeroinitializer }, align 32
@platram_probe.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.10, i8 0, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"initialised map, probing for mtd\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"map_ram\00", [24 x i8] zeroinitializer }, align 32
@platram_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 164, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to probe for map_ram\0A\00", [35 x i8] zeroinitializer }, align 32
@platram_probe._entry_ptr.14 = internal global ptr @platram_probe._entry.12, section ".printk_index", align 4
@platram_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 180, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register mtd device\0A\00", [33 x i8] zeroinitializer }, align 32
@platram_probe._entry_ptr.17 = internal global ptr @platram_probe._entry.15, section ".printk_index", align 4
@platram_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 184, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"registered mtd device\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@platram_probe._entry_ptr.21 = internal global ptr @platram_probe._entry.18, section ".printk_index", align 4
@platram_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 191, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to register the entire device\0A\00", [58 x i8] zeroinitializer }, align 32
@platram_probe._entry_ptr.24 = internal global ptr @platram_probe._entry.22, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@platram_remove.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"platram_remove\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"removing device\0A\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant [15 x i8] c"platram_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 209, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 213, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 104, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 107, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 133, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 144, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 148, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 161, i32 28 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 164, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 180, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 184, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 190, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.100 = private constant [31 x i8] c"../drivers/mtd/maps/plat-ram.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 72, i32 2 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_alias190, ptr @__UNIQUE_ID_author194, ptr @__UNIQUE_ID_description195, ptr @__UNIQUE_ID_file192, ptr @__UNIQUE_ID_license193, ptr @__exitcall_platram_driver_exit, ptr @__initcall__kmod_plat_ram__191_217_platram_driver_init6, ptr @platram_driver_exit, ptr @platram_probe._entry, ptr @platram_probe._entry.12, ptr @platram_probe._entry.15, ptr @platram_probe._entry.18, ptr @platram_probe._entry.22, ptr @platram_probe._entry_ptr, ptr @platram_probe._entry_ptr.14, ptr @platram_probe._entry_ptr.17, ptr @platram_probe._entry_ptr.21, ptr @platram_probe._entry_ptr.24, ptr @platram_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platram_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platram_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platram_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platram_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platram_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platram_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @platram_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @platram_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @platram_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @platram_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @platram_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @platram_probe.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@platram_probe, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !69

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @platram_probe.__UNIQUE_ID_ddebug186, ptr noundef %dev, ptr noundef nonnull @.str.4) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end8, label %if.end10

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.5) #8
  br label %cleanup

if.end10:                                         ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 88) #9
  %cmp14 = icmp eq ptr %call7.i.i, null
  br i1 %cmp14, label %if.end10.cleanup_crit_edge, label %if.end16

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev3, ptr %call7.i.i, align 8
  %pdata19 = getelementptr inbounds %struct.platram_info, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %pdata19 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %pdata19, align 4
  %call20 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %call22 = tail call ptr @devm_ioremap_resource(ptr noundef %dev3, ptr noundef %call20) #5
  %map = getelementptr inbounds %struct.platram_info, ptr %call7.i.i, i32 0, i32 2
  %virt = getelementptr inbounds %struct.platram_info, ptr %call7.i.i, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call22, ptr %virt, align 4
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then26, label %do.body31

if.then26:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call22 to i32
  br label %exit_free

do.body31:                                        ; preds = %if.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @platram_probe.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@platram_probe, %if.then43)) #5
          to label %do.end47 [label %if.then43], !srcloc !69

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %call20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call20, align 4
  %conv = zext i32 %9 to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @platram_probe.__UNIQUE_ID_ddebug187, ptr noundef %dev3, ptr noundef nonnull @.str.8, ptr noundef %call20, i64 noundef %conv) #5
  br label %do.end47

do.end47:                                         ; preds = %if.then43, %do.body31
  %10 = ptrtoint ptr %call20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call20, align 4
  %phys = getelementptr inbounds %struct.platram_info, ptr %call7.i.i, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %phys, align 8
  %end.i = getelementptr inbounds %struct.resource, ptr %call20, i32 0, i32 1
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end.i, align 4
  %15 = load i32, ptr %call20, align 4
  %sub.i = add i32 %14, 1
  %add.i = sub i32 %sub.i, %15
  %size = getelementptr inbounds %struct.platram_info, ptr %call7.i.i, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add.i, ptr %size, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %cmp52.not = icmp eq ptr %18, null
  br i1 %cmp52.not, label %cond.false, label %do.end47.cond.end_crit_edge

do.end47.cond.end_crit_edge:                      ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %do.end47.cond.end_crit_edge
  %cond = phi ptr [ %20, %cond.false ], [ %18, %do.end47.cond.end_crit_edge ]
  %21 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %cond, ptr %map, align 8
  %bankwidth = getelementptr inbounds %struct.platdata_mtd_ram, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bankwidth, align 4
  %bankwidth58 = getelementptr inbounds %struct.platram_info, ptr %call7.i.i, i32 0, i32 2, i32 6
  %24 = ptrtoint ptr %bankwidth58 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %bankwidth58, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @platram_probe.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@platram_probe, %if.then71)) #5
          to label %do.end79 [label %if.then71], !srcloc !69

if.then71:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %virt, align 4
  %27 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @platram_probe.__UNIQUE_ID_ddebug188, ptr noundef %dev3, ptr noundef nonnull @.str.9, ptr noundef %26, i32 noundef %28) #5
  br label %do.end79

do.end79:                                         ; preds = %if.then71, %cond.end
  tail call void @simple_map_init(ptr noundef %map) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @platram_probe.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@platram_probe, %if.then93)) #5
          to label %do.end97 [label %if.then93], !srcloc !69

if.then93:                                        ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @platram_probe.__UNIQUE_ID_ddebug189, ptr noundef %dev3, ptr noundef nonnull @.str.10) #5
  br label %do.end97

do.end97:                                         ; preds = %if.then93, %do.end79
  %map_probes = getelementptr inbounds %struct.platdata_mtd_ram, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %map_probes to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map_probes, align 4
  %tobool98.not = icmp eq ptr %30, null
  br i1 %tobool98.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.end97
  %mtd = getelementptr inbounds %struct.platram_info, ptr %call7.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mtd, align 4
  %tobool102.not229 = icmp eq ptr %32, null
  br i1 %tobool102.not229, label %for.cond.preheader.land.rhs_crit_edge, label %for.cond.preheader.if.end110_crit_edge

for.cond.preheader.if.end110_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110

for.cond.preheader.land.rhs_crit_edge:            ; preds = %for.cond.preheader
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %for.cond.preheader.land.rhs_crit_edge
  %map_probes100.0230 = phi ptr [ %incdec.ptr, %for.body.land.rhs_crit_edge ], [ %30, %for.cond.preheader.land.rhs_crit_edge ]
  %33 = ptrtoint ptr %map_probes100.0230 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %map_probes100.0230, align 4
  %tobool103.not = icmp eq ptr %34, null
  br i1 %tobool103.not, label %land.rhs.if.end110_crit_edge, label %for.body

land.rhs.if.end110_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110

for.body:                                         ; preds = %land.rhs
  %call105 = tail call ptr @do_map_probe(ptr noundef nonnull %34, ptr noundef %map) #5
  %35 = ptrtoint ptr %mtd to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call105, ptr %mtd, align 4
  %incdec.ptr = getelementptr ptr, ptr %map_probes100.0230, i32 1
  %tobool102.not = icmp eq ptr %call105, null
  br i1 %tobool102.not, label %for.body.land.rhs_crit_edge, label %for.body.if.end110_crit_edge

for.body.if.end110_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

if.else:                                          ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #7
  %call108 = tail call ptr @do_map_probe(ptr noundef nonnull @.str.11, ptr noundef %map) #5
  %mtd109 = getelementptr inbounds %struct.platram_info, ptr %call7.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %mtd109 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call108, ptr %mtd109, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.else, %for.body.if.end110_crit_edge, %land.rhs.if.end110_crit_edge, %for.cond.preheader.if.end110_crit_edge
  %mtd111 = getelementptr inbounds %struct.platram_info, ptr %call7.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %mtd111 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mtd111, align 4
  %cmp112 = icmp eq ptr %38, null
  br i1 %cmp112, label %do.end117, label %if.end119

do.end117:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.13) #8
  br label %exit_free

if.end119:                                        ; preds = %if.end110
  %parent = getelementptr inbounds %struct.mtd_info, ptr %38, i32 0, i32 56, i32 1
  %39 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %dev3, ptr %parent, align 8
  %40 = ptrtoint ptr %pdata19 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdata19, align 4
  %cmp.i223 = icmp eq ptr %41, null
  br i1 %cmp.i223, label %if.end119.platram_setrw.exit_crit_edge, label %if.end.i

if.end119.platram_setrw.exit_crit_edge:           ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #7
  br label %platram_setrw.exit

if.end.i:                                         ; preds = %if.end119
  %set_rw.i = getelementptr inbounds %struct.platdata_mtd_ram, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %set_rw.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %set_rw.i, align 4
  %cmp2.not.i = icmp eq ptr %43, null
  br i1 %cmp2.not.i, label %if.end.i.platram_setrw.exit_crit_edge, label %if.then3.i

if.end.i.platram_setrw.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %platram_setrw.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call7.i.i, align 8
  tail call void %43(ptr noundef %45, i32 noundef 1) #5
  br label %platram_setrw.exit

platram_setrw.exit:                               ; preds = %if.then3.i, %if.end.i.platram_setrw.exit_crit_edge, %if.end119.platram_setrw.exit_crit_edge
  %46 = ptrtoint ptr %mtd111 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mtd111, align 4
  %probes = getelementptr inbounds %struct.platdata_mtd_ram, ptr %1, i32 0, i32 2
  %48 = ptrtoint ptr %probes to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %probes, align 4
  %partitions = getelementptr inbounds %struct.platdata_mtd_ram, ptr %1, i32 0, i32 3
  %50 = ptrtoint ptr %partitions to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %partitions, align 4
  %nr_partitions = getelementptr inbounds %struct.platdata_mtd_ram, ptr %1, i32 0, i32 4
  %52 = ptrtoint ptr %nr_partitions to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nr_partitions, align 4
  %call124 = tail call i32 @mtd_device_parse_register(ptr noundef %47, ptr noundef %49, ptr noundef null, ptr noundef %51, i32 noundef %53) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %do.end134, label %do.end129

do.end129:                                        ; preds = %platram_setrw.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.16) #8
  br label %exit_free

do.end134:                                        ; preds = %platram_setrw.exit
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3, ptr noundef nonnull @.str.19) #8
  %54 = ptrtoint ptr %nr_partitions to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nr_partitions, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool137.not = icmp eq i32 %55, 0
  br i1 %tobool137.not, label %do.end134.cleanup_crit_edge, label %if.then138

do.end134.cleanup_crit_edge:                      ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then138:                                       ; preds = %do.end134
  %56 = ptrtoint ptr %mtd111 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mtd111, align 4
  %call140 = tail call i32 @mtd_device_parse_register(ptr noundef %57, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.then138.cleanup_crit_edge, label %do.end145

if.then138.cleanup_crit_edge:                     ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end145:                                        ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.23) #8
  br label %exit_free

exit_free:                                        ; preds = %do.end145, %do.end129, %do.end117, %if.then26
  %err.0 = phi i32 [ %7, %if.then26 ], [ -12, %do.end117 ], [ %call124, %do.end129 ], [ %call140, %do.end145 ]
  %58 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @platram_remove.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@platram_probe, %if.then.i)) #5
          to label %do.end.i [label %if.then.i], !srcloc !69

if.then.i:                                        ; preds = %exit_free
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @platram_remove.__UNIQUE_ID_ddebug185, ptr noundef %dev3, ptr noundef nonnull @.str.26) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %exit_free
  %cmp.i224 = icmp eq ptr %59, null
  br i1 %cmp.i224, label %do.end.i.cleanup_crit_edge, label %if.end5.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5.i:                                        ; preds = %do.end.i
  %mtd.i = getelementptr inbounds %struct.platram_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %mtd.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mtd.i, align 4
  %tobool6.not.i = icmp eq ptr %61, null
  br i1 %tobool6.not.i, label %if.end5.i.if.end11.i_crit_edge, label %if.then7.i

if.end5.i.if.end11.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  %call9.i = tail call i32 @mtd_device_unregister(ptr noundef nonnull %61) #5
  %62 = ptrtoint ptr %mtd.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mtd.i, align 4
  tail call void @map_destroy(ptr noundef %63) #5
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then7.i, %if.end5.i.if.end11.i_crit_edge
  %pdata.i.i = getelementptr inbounds %struct.platram_info, ptr %59, i32 0, i32 3
  %64 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pdata.i.i, align 4
  %cmp.i.i = icmp eq ptr %65, null
  br i1 %cmp.i.i, label %if.end11.i.platram_setrw.exit.i_crit_edge, label %if.end.i.i

if.end11.i.platram_setrw.exit.i_crit_edge:        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %platram_setrw.exit.i

if.end.i.i:                                       ; preds = %if.end11.i
  %set_rw.i.i = getelementptr inbounds %struct.platdata_mtd_ram, ptr %65, i32 0, i32 6
  %66 = ptrtoint ptr %set_rw.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %set_rw.i.i, align 4
  %cmp2.not.i.i = icmp eq ptr %67, null
  br i1 %cmp2.not.i.i, label %if.end.i.i.platram_setrw.exit.i_crit_edge, label %if.then3.i.i

if.end.i.i.platram_setrw.exit.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %platram_setrw.exit.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %59, align 4
  tail call void %67(ptr noundef %69, i32 noundef 0) #5
  br label %platram_setrw.exit.i

platram_setrw.exit.i:                             ; preds = %if.then3.i.i, %if.end.i.i.platram_setrw.exit.i_crit_edge, %if.end11.i.platram_setrw.exit.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %59) #5
  br label %cleanup

cleanup:                                          ; preds = %platram_setrw.exit.i, %do.end.i.cleanup_crit_edge, %if.then138.cleanup_crit_edge, %do.end134.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %do.end8
  %retval.0 = phi i32 [ 0, %if.then138.cleanup_crit_edge ], [ 0, %do.end134.cleanup_crit_edge ], [ -2, %do.end8 ], [ -12, %if.end10.cleanup_crit_edge ], [ %err.0, %do.end.i.cleanup_crit_edge ], [ %err.0, %platram_setrw.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @platram_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @platram_remove.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@platram_remove, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !69

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @platram_remove.__UNIQUE_ID_ddebug185, ptr noundef %dev, ptr noundef nonnull @.str.26) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %mtd = getelementptr inbounds %struct.platram_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mtd, align 4
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %if.end5.if.end11_crit_edge, label %if.then7

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call i32 @mtd_device_unregister(ptr noundef nonnull %3) #5
  %4 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mtd, align 4
  tail call void @map_destroy(ptr noundef %5) #5
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end5.if.end11_crit_edge
  %pdata.i = getelementptr inbounds %struct.platram_info, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata.i, align 4
  %cmp.i = icmp eq ptr %7, null
  br i1 %cmp.i, label %if.end11.platram_setrw.exit_crit_edge, label %if.end.i

if.end11.platram_setrw.exit_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %platram_setrw.exit

if.end.i:                                         ; preds = %if.end11
  %set_rw.i = getelementptr inbounds %struct.platdata_mtd_ram, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %set_rw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_rw.i, align 4
  %cmp2.not.i = icmp eq ptr %9, null
  br i1 %cmp2.not.i, label %if.end.i.platram_setrw.exit_crit_edge, label %if.then3.i

if.end.i.platram_setrw.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %platram_setrw.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void %9(ptr noundef %11, i32 noundef 0) #5
  br label %platram_setrw.exit

platram_setrw.exit:                               ; preds = %if.then3.i, %if.end.i.platram_setrw.exit_crit_edge, %if.end11.platram_setrw.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #5
  br label %cleanup

cleanup:                                          ; preds = %platram_setrw.exit, %do.end.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @simple_map_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @do_map_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @map_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !30, !31, !33, !34, !36, !37, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__UNIQUE_ID_alias190, !1, !"__UNIQUE_ID_alias190", i1 false, i1 false}
!1 = !{!"../drivers/mtd/maps/plat-ram.c", i32 207, i32 1}
!2 = !{ptr @__initcall__kmod_plat_ram__191_217_platram_driver_init6, !3, !"__initcall__kmod_plat_ram__191_217_platram_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/mtd/maps/plat-ram.c", i32 217, i32 1}
!4 = !{ptr @__exitcall_platram_driver_exit, !3, !"__exitcall_platram_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_file192, !6, !"__UNIQUE_ID_file192", i1 false, i1 false}
!6 = !{!"../drivers/mtd/maps/plat-ram.c", i32 219, i32 1}
!7 = !{ptr @__UNIQUE_ID_license193, !6, !"__UNIQUE_ID_license193", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author194, !9, !"__UNIQUE_ID_author194", i1 false, i1 false}
!9 = !{!"../drivers/mtd/maps/plat-ram.c", i32 220, i32 1}
!10 = !{ptr @__UNIQUE_ID_description195, !11, !"__UNIQUE_ID_description195", i1 false, i1 false}
!11 = !{!"../drivers/mtd/maps/plat-ram.c", i32 221, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/maps/plat-ram.c", i32 213, i32 11}
!14 = !{ptr @platram_driver, !15, !"platram_driver", i1 false, i1 false}
!15 = !{!"../drivers/mtd/maps/plat-ram.c", i32 209, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/maps/plat-ram.c", i32 104, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @platram_probe.__UNIQUE_ID_ddebug186, !17, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mtd/maps/plat-ram.c", i32 107, i32 3}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @platram_probe._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @platram_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/maps/plat-ram.c", i32 133, i32 2}
!30 = !{ptr @platram_probe.__UNIQUE_ID_ddebug187, !29, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mtd/maps/plat-ram.c", i32 144, i32 2}
!33 = !{ptr @platram_probe.__UNIQUE_ID_ddebug188, !32, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/maps/plat-ram.c", i32 148, i32 2}
!36 = !{ptr @platram_probe.__UNIQUE_ID_ddebug189, !35, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mtd/maps/plat-ram.c", i32 161, i32 28}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mtd/maps/plat-ram.c", i32 164, i32 3}
!41 = !{ptr @platram_probe._entry.12, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @platram_probe._entry_ptr.14, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mtd/maps/plat-ram.c", i32 180, i32 3}
!45 = !{ptr @platram_probe._entry.15, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @platram_probe._entry_ptr.17, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mtd/maps/plat-ram.c", i32 184, i32 2}
!49 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @platram_probe._entry.18, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @platram_probe._entry_ptr.21, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mtd/maps/plat-ram.c", i32 190, i32 4}
!54 = !{ptr @platram_probe._entry.22, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @platram_probe._entry_ptr.24, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mtd/maps/plat-ram.c", i32 72, i32 2}
!58 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @platram_remove.__UNIQUE_ID_ddebug185, !57, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i64 2148956255, i64 2148956260, i64 2148956273, i64 2148956317, i64 2148956351, i64 2148956372}
