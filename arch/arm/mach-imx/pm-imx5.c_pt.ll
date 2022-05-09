; ModuleID = '/llk/IR_all_yes/arch/arm/mach-imx/pm-imx5.c_pt.bc'
source_filename = "../arch/arm/mach-imx/pm-imx5.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.imx5_pm_data = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_suspend_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpu_tlb_fns = type { ptr, ptr, i32 }
%struct.imx5_suspend_io_state = type { i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.imx5_cpu_suspend_info = type { ptr, ptr, i32, [20 x %struct.imx5_suspend_io_state], [4 x i8] }
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
%struct.gen_pool = type { %struct.spinlock, %struct.list_head, i32, ptr, ptr, ptr }

@imx51_pm_data = internal constant %struct.imx5_pm_data { i32 1945976832, i32 -2080768000, i32 1945993216, i32 0, i32 0, ptr null, ptr null, ptr null, i32 0 }, section ".init.rodata", align 4
@imx53_pm_data = internal constant %struct.imx5_pm_data { i32 1409105920, i32 1677328384, i32 1409122304, i32 1677557760, i32 1408925696, ptr @imx53_suspend, ptr @imx53_suspend_sz, ptr @imx53_suspend_io_config, i32 20 }, section ".init.rodata", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpc_dvfs\00", [23 x i8] zeroinitializer }, align 32
@arm_pm_idle = external dso_local local_unnamed_addr global ptr, align 4
@ccm_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@cortex_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@gpc_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"arch/arm/mach-imx/pm-imx5.c\00", [36 x i8] zeroinitializer }, align 32
@imx5_pm_common_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.1, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014%s: cpuidle init failed %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imx5_pm_common_init\00", [44 x i8] zeroinitializer }, align 32
@imx5_pm_common_init._entry_ptr = internal global ptr @imx5_pm_common_init._entry, section ".printk_index", align 4
@imx5_pm_common_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.3, ptr @.str.1, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014%s: No DDR LPM support with suspend %d!\0A\00", [53 x i8] zeroinitializer }, align 32
@imx5_pm_common_init._entry_ptr.6 = internal global ptr @imx5_pm_common_init._entry.4, section ".printk_index", align 4
@mx5_suspend_ops = internal constant { %struct.platform_suspend_ops, [56 x i8] } { %struct.platform_suspend_ops { ptr @mx5_pm_valid, ptr null, ptr null, ptr null, ptr @mx5_suspend_enter, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@cpu_vtable = external dso_local local_unnamed_addr global [0 x ptr], align 4
@mx5_cpu_lp_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.1, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014UNKNOWN cpu power mode: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mx5_cpu_lp_set\00", [17 x i8] zeroinitializer }, align 32
@mx5_cpu_lp_set._entry_ptr = internal global ptr @mx5_cpu_lp_set._entry, section ".printk_index", align 4
@suspend_ocram_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@imx5_suspend_in_ocram_fn = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmio-sram\00", [22 x i8] zeroinitializer }, align 32
@imx_suspend_alloc_ocram._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.1, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014%s: failed to find ocram node!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"imx_suspend_alloc_ocram\00", [40 x i8] zeroinitializer }, align 32
@imx_suspend_alloc_ocram._entry_ptr = internal global ptr @imx_suspend_alloc_ocram._entry, section ".printk_index", align 4
@imx_suspend_alloc_ocram._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.1, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014%s: failed to find ocram device!\0A\00", [60 x i8] zeroinitializer }, align 32
@imx_suspend_alloc_ocram._entry_ptr.14 = internal global ptr @imx_suspend_alloc_ocram._entry.12, section ".printk_index", align 4
@imx_suspend_alloc_ocram._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.1, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: ocram pool unavailable!\0A\00", [33 x i8] zeroinitializer }, align 32
@imx_suspend_alloc_ocram._entry_ptr.17 = internal global ptr @imx_suspend_alloc_ocram._entry.15, section ".printk_index", align 4
@imx_suspend_alloc_ocram._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.1, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014%s: unable to alloc ocram!\0A\00", [34 x i8] zeroinitializer }, align 32
@imx_suspend_alloc_ocram._entry_ptr.20 = internal global ptr @imx_suspend_alloc_ocram._entry.18, section ".printk_index", align 4
@cpu_tlb = external dso_local local_unnamed_addr global %struct.cpu_tlb_fns, align 4
@imx53_suspend_sz = external dso_local constant i32, align 4
@imx53_suspend_io_config = internal constant { [20 x %struct.imx5_suspend_io_state], [64 x i8] } { [20 x %struct.imx5_suspend_io_state] [%struct.imx5_suspend_io_state { i32 1412, i32 3670016, i32 0, i32 0 }, %struct.imx5_suspend_io_state { i32 1428, i32 3670016, i32 0, i32 0 }, %struct.imx5_suspend_io_state { i32 1376, i32 3670016, i32 0, i32 0 }, %struct.imx5_suspend_io_state { i32 1364, i32 3670016, i32 0, i32 0 }, %struct.imx5_suspend_io_state { i32 1396, i32 3670016, i32 0, i32 0 }, %struct.imx5_suspend_io_state { i32 1416, i32 3670016, i32 0, i32 0 }, %struct.imx5_suspend_io_state { i32 1400, i32 3670016, i32 0, i32 0 }, %struct.imx5_suspend_io_state { i32 1392, i32 3670016, i32 0, i32 0 }, %struct.imx5_suspend_io_state { i32 1408, i32 3670016, i32 0, i32 0 }, %struct.imx5_suspend_io_state { i32 1380, i32 3670016, i32 0, i32 0 }, %struct.imx5_suspend_io_state { i32 1404, i32 3670016, i32 0, i32 0 }, %struct.imx5_suspend_io_state { i32 1424, i32 3670016, i32 0, i32 0 }, %struct.imx5_suspend_io_state { i32 1384, i32 3670016, i32 0, i32 0 }, %struct.imx5_suspend_io_state { i32 1368, i32 3670016, i32 0, i32 0 }, %struct.imx5_suspend_io_state { i32 1776, i32 3670016, i32 0, i32 0 }, %struct.imx5_suspend_io_state { i32 1816, i32 3670016, i32 0, i32 0 }, %struct.imx5_suspend_io_state { i32 1820, i32 3670016, i32 0, i32 0 }, %struct.imx5_suspend_io_state { i32 1832, i32 3670016, i32 0, i32 0 }, %struct.imx5_suspend_io_state { i32 1836, i32 3670016, i32 0, i32 0 }, %struct.imx5_suspend_io_state { i32 1824, i32 3670016, i32 524288, i32 0 }], [64 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 377, i32 43 }
@___asan_gen_.24 = private unnamed_addr constant [9 x i8] c"ccm_base\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 133, i32 22 }
@___asan_gen_.27 = private unnamed_addr constant [12 x i8] c"cortex_base\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 134, i32 22 }
@___asan_gen_.30 = private unnamed_addr constant [9 x i8] c"gpc_base\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 135, i32 22 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 391, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 398, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 402, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [16 x i8] c"mx5_suspend_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 247, i32 42 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 189, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [19 x i8] c"suspend_ocram_base\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 136, i32 22 }
@___asan_gen_.66 = private unnamed_addr constant [25 x i8] c"imx5_suspend_in_ocram_fn\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 137, i32 15 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 281, i32 45 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 283, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 289, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 296, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 303, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [24 x i8] c"imx53_suspend_io_config\00", align 1
@___asan_gen_.100 = private constant [31 x i8] c"../arch/arm/mach-imx/pm-imx5.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 72, i32 43 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @imx5_pm_common_init._entry, ptr @imx5_pm_common_init._entry.4, ptr @imx5_pm_common_init._entry_ptr, ptr @imx5_pm_common_init._entry_ptr.6, ptr @imx_suspend_alloc_ocram._entry, ptr @imx_suspend_alloc_ocram._entry.12, ptr @imx_suspend_alloc_ocram._entry.15, ptr @imx_suspend_alloc_ocram._entry.18, ptr @imx_suspend_alloc_ocram._entry_ptr, ptr @imx_suspend_alloc_ocram._entry_ptr.14, ptr @imx_suspend_alloc_ocram._entry_ptr.17, ptr @imx_suspend_alloc_ocram._entry_ptr.20, ptr @mx5_cpu_lp_set._entry, ptr @mx5_cpu_lp_set._entry_ptr, ptr @.str, ptr @ccm_base, ptr @cortex_base, ptr @gpc_base, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @mx5_suspend_ops, ptr @.str.7, ptr @.str.8, ptr @suspend_ocram_base, ptr @imx5_suspend_in_ocram_fn, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @imx53_suspend_io_config], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccm_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cortex_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpc_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx5_pm_common_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx5_pm_common_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx5_suspend_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx5_cpu_lp_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @suspend_ocram_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx5_suspend_in_ocram_fn to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_suspend_alloc_ocram._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_suspend_alloc_ocram._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_suspend_alloc_ocram._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_suspend_alloc_ocram._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx53_suspend_io_config to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @imx51_pm_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @imx5_pm_common_init(ptr noundef nonnull @imx51_pm_data) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @imx5_pm_common_init(ptr nocapture noundef readonly %data) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_get(ptr noundef null, ptr noundef nonnull @.str) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end5, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call) #6
  br label %cleanup

if.end5:                                          ; preds = %if.end.i
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @arm_pm_idle to i32))
  store ptr @imx5_pm_idle, ptr @arm_pm_idle, align 4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %call6 = tail call ptr @ioremap(i32 noundef %1, i32 noundef 16384) #6
  store ptr %call6, ptr @ccm_base, align 4
  %cortex_addr = getelementptr inbounds %struct.imx5_pm_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %cortex_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cortex_addr, align 4
  %call7 = tail call ptr @ioremap(i32 noundef %3, i32 noundef 16384) #6
  store ptr %call7, ptr @cortex_base, align 4
  %gpc_addr = getelementptr inbounds %struct.imx5_pm_data, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %gpc_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpc_addr, align 4
  %call8 = tail call ptr @ioremap(i32 noundef %5, i32 noundef 16384) #6
  store ptr %call8, ptr @gpc_base, align 4
  %6 = load ptr, ptr @ccm_base, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %if.end5.do.end_crit_edge, label %lor.lhs.false

if.end5.do.end_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end5
  %7 = load ptr, ptr @cortex_base, align 4
  %tobool10.not = icmp eq ptr %7, null
  %tobool11.not = icmp eq ptr %call8, null
  %spec.select = select i1 %tobool10.not, i1 true, i1 %tobool11.not
  br i1 %spec.select, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false.if.end27_crit_edge, !prof !65

lor.lhs.false.if.end27_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end5.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 391, i32 noundef 9, ptr noundef null) #6
  br label %if.end27

if.end27:                                         ; preds = %do.end, %lor.lhs.false.if.end27_crit_edge
  %8 = load ptr, ptr @cortex_base, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 12
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !66
  %10 = load ptr, ptr @ccm_base, align 4
  %add.ptr2.i = getelementptr i8, ptr %10, i32 84
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #6, !srcloc !66
  %12 = load ptr, ptr @gpc_base, align 4
  %add.ptr7.i = getelementptr i8, ptr %12, i32 672
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #6, !srcloc !66
  %14 = load ptr, ptr @gpc_base, align 4
  %add.ptr12.i = getelementptr i8, ptr %14, i32 704
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #6, !srcloc !66
  %16 = load ptr, ptr @gpc_base, align 4
  %add.ptr17.i = getelementptr i8, ptr %16, i32 720
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #6, !srcloc !66
  %18 = or i32 %9, 50331648
  %19 = and i32 %11, -1124139009
  %20 = or i32 %19, 16777216
  %21 = or i32 %13, 16777216
  %22 = load ptr, ptr @cortex_base, align 4
  %add.ptr35.i = getelementptr i8, ptr %22, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i, i32 %18) #6, !srcloc !67
  %23 = load ptr, ptr @ccm_base, align 4
  %add.ptr36.i = getelementptr i8, ptr %23, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 %20) #6, !srcloc !67
  %24 = load ptr, ptr @gpc_base, align 4
  %add.ptr37.i = getelementptr i8, ptr %24, i32 672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i, i32 %21) #6, !srcloc !67
  %25 = load ptr, ptr @gpc_base, align 4
  %add.ptr38.i = getelementptr i8, ptr %25, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i, i32 %21) #6, !srcloc !67
  %call34 = tail call i32 @imx5_cpuidle_init() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end27.if.end42_crit_edge, label %do.end39

if.end27.if.end42_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

do.end39:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %call34) #10
  br label %if.end42

if.end42:                                         ; preds = %do.end39, %if.end27.if.end42_crit_edge
  %call43 = tail call fastcc i32 @imx5_suspend_init(ptr noundef %data) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end42.if.end51_crit_edge, label %do.end48

if.end42.if.end51_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

do.end48:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef %call43) #10
  br label %if.end51

if.end51:                                         ; preds = %do.end48, %if.end42.if.end51_crit_edge
  tail call void @suspend_set_ops(ptr noundef nonnull @mx5_suspend_ops) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.then3.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @imx53_pm_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @imx5_pm_common_init(ptr noundef nonnull @imx53_pm_data) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx5_pm_idle() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @tzic_enable_wake() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.imx5_cpu_do_idle.exit_crit_edge, !prof !68

entry.imx5_cpu_do_idle.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %imx5_cpu_do_idle.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #6
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %_do_idle.i = getelementptr inbounds %struct.processor, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %_do_idle.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_do_idle.i, align 4
  %call5.i = tail call i32 %7() #6
  br label %imx5_cpu_do_idle.exit

imx5_cpu_do_idle.exit:                            ; preds = %if.then.i, %entry.imx5_cpu_do_idle.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx5_cpuidle_init() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx5_suspend_init(ptr nocapture noundef readonly %soc_data) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %suspend_asm1 = getelementptr inbounds %struct.imx5_pm_data, ptr %soc_data, i32 0, i32 5
  %0 = ptrtoint ptr %suspend_asm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %suspend_asm1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %suspend_asm_sz = getelementptr inbounds %struct.imx5_pm_data, ptr %soc_data, i32 0, i32 6
  %2 = ptrtoint ptr %suspend_asm_sz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %suspend_asm_sz, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %add = add i32 %5, 336
  %call = tail call fastcc i32 @imx_suspend_alloc_ocram(i32 noundef %add) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %6 = load ptr, ptr @suspend_ocram_base, align 4
  %suspend_io_count = getelementptr inbounds %struct.imx5_pm_data, ptr %soc_data, i32 0, i32 8
  %7 = ptrtoint ptr %suspend_io_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %suspend_io_count, align 4
  %io_count = getelementptr inbounds %struct.imx5_cpu_suspend_info, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %io_count to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %io_count, align 8
  %io_state = getelementptr inbounds %struct.imx5_cpu_suspend_info, ptr %6, i32 0, i32 3
  %suspend_io_config = getelementptr inbounds %struct.imx5_pm_data, ptr %soc_data, i32 0, i32 7
  %10 = ptrtoint ptr %suspend_io_config to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %suspend_io_config, align 4
  %12 = load i32, ptr %suspend_io_count, align 4
  %mul = shl i32 %12, 4
  %13 = call ptr @memcpy(ptr %io_state, ptr %11, i32 %mul)
  %m4if_addr = getelementptr inbounds %struct.imx5_pm_data, ptr %soc_data, i32 0, i32 3
  %14 = ptrtoint ptr %m4if_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %m4if_addr, align 4
  %call12 = tail call ptr @ioremap(i32 noundef %15, i32 noundef 16384) #6
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call12, ptr %6, align 8
  %tobool14.not = icmp eq ptr %call12, null
  br i1 %tobool14.not, label %if.end10.cleanup_crit_edge, label %if.end16

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %iomuxc_addr = getelementptr inbounds %struct.imx5_pm_data, ptr %soc_data, i32 0, i32 4
  %17 = ptrtoint ptr %iomuxc_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iomuxc_addr, align 4
  %call17 = tail call ptr @ioremap(i32 noundef %18, i32 noundef 16384) #6
  %iomuxc_base = getelementptr inbounds %struct.imx5_cpu_suspend_info, ptr %6, i32 0, i32 1
  %19 = ptrtoint ptr %iomuxc_base to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call17, ptr %iomuxc_base, align 4
  %tobool19.not = icmp eq ptr %call17, null
  br i1 %tobool19.not, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %6, align 8
  tail call void @iounmap(ptr noundef %21) #6
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %22 = tail call i32 asm "", "=r,0"(ptr nonnull %1) #11, !srcloc !69
  %23 = load ptr, ptr @suspend_ocram_base, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 336
  %24 = ptrtoint ptr %add.ptr to i32
  %and = and i32 %24, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp ne i32 %and, 0
  %and24 = and i32 %22, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25 = icmp ne i32 %and24, 0
  %25 = select i1 %tobool22.not, i1 true, i1 %tobool25
  br i1 %25, label %do.body29, label %do.end35, !prof !65

do.body29:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-imx/pm-imx5.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 363, 0\0A.popsection", ""() #6, !srcloc !70
  unreachable

do.end35:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %and37 = and i32 %22, -2
  %26 = inttoptr i32 %and37 to ptr
  %27 = ptrtoint ptr %suspend_asm_sz to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %suspend_asm_sz, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %31 = call ptr @memcpy(ptr %add.ptr, ptr %26, i32 %30)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  %33 = load ptr, ptr %suspend_asm_sz, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %add42 = add i32 %35, %24
  tail call void %32(i32 noundef %24, i32 noundef %add42) #6
  %36 = load ptr, ptr @suspend_ocram_base, align 4
  %add.ptr43 = getelementptr i8, ptr %36, i32 336
  %37 = ptrtoint ptr %add.ptr43 to i32
  %and44 = and i32 %22, 1
  %or = or i32 %and44, %37
  %38 = tail call ptr asm "", "=r,0"(i32 %or) #11, !srcloc !71
  store ptr %38, ptr @imx5_suspend_in_ocram_fn, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %if.then20, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end35 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call, %if.end6.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ -12, %if.then20 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @suspend_set_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tzic_enable_wake() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx_suspend_alloc_ocram(i32 noundef %size) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.9) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_find_device_by_node(ptr noundef nonnull %call) #6
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11) #10
  br label %put_node

if.end10:                                         ; preds = %if.end
  %dev = getelementptr inbounds %struct.platform_device, ptr %call2, i32 0, i32 3
  %call11 = tail call ptr @gen_pool_get(ptr noundef %dev, ptr noundef null) #6
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %do.end16, label %if.end19

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.11) #10
  br label %put_device

if.end19:                                         ; preds = %if.end10
  %algo.i = getelementptr inbounds %struct.gen_pool, ptr %call11, i32 0, i32 3
  %0 = ptrtoint ptr %algo.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo.i, align 4
  %data.i = getelementptr inbounds %struct.gen_pool, ptr %call11, i32 0, i32 4
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %call.i.i = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef nonnull %call11, i32 noundef %size, ptr noundef %1, ptr noundef %3, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool21.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool21.not, label %do.end25, label %if.end28

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.11) #10
  br label %put_device

if.end28:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %call29 = tail call i32 @gen_pool_virt_to_phys(ptr noundef nonnull %call11, i32 noundef %call.i.i) #6
  %call30 = tail call ptr @__arm_ioremap_exec(i32 noundef %call29, i32 noundef %size, i1 noundef zeroext false) #6
  store ptr %call30, ptr @suspend_ocram_base, align 4
  br label %put_device

put_device:                                       ; preds = %if.end28, %do.end25, %do.end16
  %ret.0 = phi i32 [ 0, %if.end28 ], [ -12, %do.end25 ], [ -19, %do.end16 ]
  tail call void @put_device(ptr noundef %dev) #6
  br label %put_node

put_node:                                         ; preds = %put_device, %do.end7
  %ret.1 = phi i32 [ %ret.0, %put_device ], [ -19, %do.end7 ]
  tail call void @of_node_put(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %put_node, %do.end
  %retval.0 = phi i32 [ %ret.1, %put_node ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gen_pool_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_virt_to_phys(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__arm_ioremap_exec(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_alloc_algo_owner(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mx5_pm_valid(i32 noundef %state) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %state, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %1 = icmp ult i32 %0, 4
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mx5_suspend_enter(i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %state, label %entry.return_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %if.else4
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr @cortex_base, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !66
  %3 = load ptr, ptr @ccm_base, align 4
  %add.ptr2.i = getelementptr i8, ptr %3, i32 84
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #6, !srcloc !66
  %5 = and i32 %4, -1124532225
  %6 = load ptr, ptr @gpc_base, align 4
  %add.ptr7.i = getelementptr i8, ptr %6, i32 672
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #6, !srcloc !66
  %8 = load ptr, ptr @gpc_base, align 4
  %add.ptr12.i = getelementptr i8, ptr %8, i32 704
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #6, !srcloc !66
  %10 = load ptr, ptr @gpc_base, align 4
  %add.ptr17.i = getelementptr i8, ptr %10, i32 720
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #6, !srcloc !66
  %12 = or i32 %2, 50331648
  %13 = or i32 %5, 1107755008
  %14 = or i32 %7, 16777216
  %15 = load ptr, ptr @cortex_base, align 4
  %add.ptr35.i = getelementptr i8, ptr %15, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i, i32 %12) #6, !srcloc !67
  %16 = load ptr, ptr @ccm_base, align 4
  %add.ptr36.i = getelementptr i8, ptr %16, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 %13) #6, !srcloc !67
  %17 = load ptr, ptr @gpc_base, align 4
  %add.ptr37.i = getelementptr i8, ptr %17, i32 672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i, i32 %14) #6, !srcloc !67
  %18 = load ptr, ptr @gpc_base, align 4
  %add.ptr38.i = getelementptr i8, ptr %18, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i, i32 %14) #6, !srcloc !67
  %19 = or i32 %9, 16777216
  %20 = or i32 %11, 16777216
  %21 = load ptr, ptr @gpc_base, align 4
  %add.ptr42.i = getelementptr i8, ptr %21, i32 704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42.i, i32 %19) #6, !srcloc !67
  %22 = load ptr, ptr @gpc_base, align 4
  %add.ptr43.i = getelementptr i8, ptr %22, i32 720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.i, i32 %20) #6, !srcloc !67
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %23 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %24 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %24, i32 4608) #6, !srcloc !73
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c6, 0", "r,r,Ir,~{cc}"(i32 0, i32 %24, i32 9216) #6, !srcloc !74
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c5, 0", "r,r,Ir,~{cc}"(i32 0, i32 %24, i32 18432) #6, !srcloc !75
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %23, i32 2097152) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %25() #6
  %26 = load ptr, ptr @gpc_base, align 4
  %add.ptr = getelementptr i8, ptr %26, i32 704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !67
  %27 = load ptr, ptr @gpc_base, align 4
  %add.ptr1 = getelementptr i8, ptr %27, i32 720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 0) #6, !srcloc !67
  %28 = load ptr, ptr @imx5_suspend_in_ocram_fn, align 4
  %tobool.not = icmp eq ptr %28, null
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %29 = load ptr, ptr @suspend_ocram_base, align 4
  tail call void %28(ptr noundef %29) #6
  br label %if.end10

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %30 = tail call i32 @llvm.read_register.i32(metadata !55) #6
  %and.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 4
  %_do_idle = getelementptr inbounds %struct.processor, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %_do_idle to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %_do_idle, align 4
  %call3 = tail call i32 %37() #6
  br label %if.end10

if.else4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %38 = tail call i32 @llvm.read_register.i32(metadata !55) #6
  %and.i12 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i12 to ptr
  %cpu6 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %cpu6 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cpu6, align 4
  %arrayidx7 = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %41
  %42 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx7, align 4
  %_do_idle8 = getelementptr inbounds %struct.processor, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %_do_idle8 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %_do_idle8, align 4
  %call9 = tail call i32 %45() #6
  br label %if.end10

if.end10:                                         ; preds = %if.else4, %if.else, %if.then2
  %46 = load ptr, ptr @cortex_base, align 4
  %add.ptr.i13 = getelementptr i8, ptr %46, i32 12
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #6, !srcloc !66
  %48 = load ptr, ptr @ccm_base, align 4
  %add.ptr2.i14 = getelementptr i8, ptr %48, i32 84
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i14) #6, !srcloc !66
  %50 = load ptr, ptr @gpc_base, align 4
  %add.ptr7.i15 = getelementptr i8, ptr %50, i32 672
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i15) #6, !srcloc !66
  %52 = load ptr, ptr @gpc_base, align 4
  %add.ptr12.i16 = getelementptr i8, ptr %52, i32 704
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i16) #6, !srcloc !66
  %54 = load ptr, ptr @gpc_base, align 4
  %add.ptr17.i17 = getelementptr i8, ptr %54, i32 720
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i17) #6, !srcloc !66
  %56 = or i32 %47, 50331648
  %57 = and i32 %49, -1124139009
  %58 = or i32 %57, 16777216
  %59 = or i32 %51, 16777216
  %60 = load ptr, ptr @cortex_base, align 4
  %add.ptr35.i23 = getelementptr i8, ptr %60, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i23, i32 %56) #6, !srcloc !67
  %61 = load ptr, ptr @ccm_base, align 4
  %add.ptr36.i24 = getelementptr i8, ptr %61, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i24, i32 %58) #6, !srcloc !67
  %62 = load ptr, ptr @gpc_base, align 4
  %add.ptr37.i25 = getelementptr i8, ptr %62, i32 672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i25, i32 %59) #6, !srcloc !67
  %63 = load ptr, ptr @gpc_base, align 4
  %add.ptr38.i26 = getelementptr i8, ptr %63, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i26, i32 %59) #6, !srcloc !67
  br label %return

return:                                           ; preds = %if.end10, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx53_suspend(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !11, !12, !13, !15, !17, !19, !21, !22, !23, !24, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !53}
!llvm.named.register.sp = !{!55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-imx/pm-imx5.c", i32 377, i32 43}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-imx/pm-imx5.c", i32 391, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-imx/pm-imx5.c", i32 398, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @imx5_pm_common_init._entry, !5, !"_entry", i1 false, i1 false}
!8 = !{ptr @imx5_pm_common_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../arch/arm/mach-imx/pm-imx5.c", i32 402, i32 3}
!11 = !{ptr @imx5_pm_common_init._entry.4, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @imx5_pm_common_init._entry_ptr.6, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @ccm_base, !14, !"ccm_base", i1 false, i1 false}
!14 = !{!"../arch/arm/mach-imx/pm-imx5.c", i32 133, i32 22}
!15 = !{ptr @cortex_base, !16, !"cortex_base", i1 false, i1 false}
!16 = !{!"../arch/arm/mach-imx/pm-imx5.c", i32 134, i32 22}
!17 = !{ptr @gpc_base, !18, !"gpc_base", i1 false, i1 false}
!18 = !{!"../arch/arm/mach-imx/pm-imx5.c", i32 135, i32 22}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../arch/arm/mach-imx/pm-imx5.c", i32 189, i32 3}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mx5_cpu_lp_set._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @mx5_cpu_lp_set._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-imx/pm-imx5.c", i32 281, i32 45}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-imx/pm-imx5.c", i32 283, i32 3}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @imx_suspend_alloc_ocram._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @imx_suspend_alloc_ocram._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../arch/arm/mach-imx/pm-imx5.c", i32 289, i32 3}
!33 = !{ptr @imx_suspend_alloc_ocram._entry.12, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @imx_suspend_alloc_ocram._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../arch/arm/mach-imx/pm-imx5.c", i32 296, i32 3}
!37 = !{ptr @imx_suspend_alloc_ocram._entry.15, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @imx_suspend_alloc_ocram._entry_ptr.17, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../arch/arm/mach-imx/pm-imx5.c", i32 303, i32 3}
!41 = !{ptr @imx_suspend_alloc_ocram._entry.18, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @imx_suspend_alloc_ocram._entry_ptr.20, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @suspend_ocram_base, !44, !"suspend_ocram_base", i1 false, i1 false}
!44 = !{!"../arch/arm/mach-imx/pm-imx5.c", i32 136, i32 22}
!45 = !{ptr @imx5_suspend_in_ocram_fn, !46, !"imx5_suspend_in_ocram_fn", i1 false, i1 false}
!46 = !{!"../arch/arm/mach-imx/pm-imx5.c", i32 137, i32 15}
!47 = !{ptr @mx5_suspend_ops, !48, !"mx5_suspend_ops", i1 false, i1 false}
!48 = !{!"../arch/arm/mach-imx/pm-imx5.c", i32 247, i32 42}
!49 = !{ptr @imx51_pm_data, !50, !"imx51_pm_data", i1 false, i1 false}
!50 = !{!"../arch/arm/mach-imx/pm-imx5.c", i32 99, i32 34}
!51 = !{ptr @imx53_pm_data, !52, !"imx53_pm_data", i1 false, i1 false}
!52 = !{!"../arch/arm/mach-imx/pm-imx5.c", i32 105, i32 34}
!53 = !{ptr @imx53_suspend_io_config, !54, !"imx53_suspend_io_config", i1 false, i1 false}
!54 = !{!"../arch/arm/mach-imx/pm-imx5.c", i32 72, i32 43}
!55 = !{!"sp"}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"branch_weights", i32 1, i32 2000}
!66 = !{i64 5372891}
!67 = !{i64 5372473}
!68 = !{!"branch_weights", i32 2000, i32 1}
!69 = !{i64 2155082419}
!70 = !{i64 2155083836, i64 2155084328, i64 2155083873, i64 2155083929, i64 2155083963, i64 2155083987, i64 2155084028, i64 2155084049, i64 2155084077, i64 2155084111}
!71 = !{i64 2155082914}
!72 = !{i64 2153134883}
!73 = !{i64 2153126230, i64 2153126243}
!74 = !{i64 2153128508, i64 2153128521}
!75 = !{i64 2153130789, i64 2153130802}
!76 = !{i64 2153135179, i64 2153135192}
!77 = !{i64 2153139050}
!78 = !{i64 2153139135}
