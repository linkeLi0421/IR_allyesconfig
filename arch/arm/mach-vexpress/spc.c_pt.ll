; ModuleID = '/llk/IR_all_yes/arch/arm/mach-vexpress/spc.c_pt.bc'
source_filename = "../arch/arm/mach-vexpress/spc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.cpu_topology = type { i32, i32, i32, i32, i32, %struct.cpumask, %struct.cpumask, %struct.cpumask, %struct.cpumask }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ve_spc_drvdata = type { ptr, i32, i32, i32, %struct.semaphore, %struct.completion, [2 x ptr], [2 x i32] }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.clk_spc = type { %struct.clk_hw, i32 }
%struct.ve_spc_opp = type { i32, i32 }

@info = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ve_spc_cpu_in_wfi.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"spc\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ve_spc_cpu_in_wfi\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"arch/arm/mach-vexpress/spc.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: PCFGREG[0x%X] = 0x%08X, mask = 0x%X\0A\00", [55 x i8] zeroinitializer }, align 32
@ve_spc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013vexpress-spc: Invalid IRQ %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ve_spc_init\00", [20 x i8] zeroinitializer }, align 32
@ve_spc_init._entry_ptr = internal global ptr @ve_spc_init._entry, section ".printk_index", align 4
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vexpress-spc\00", [19 x i8] zeroinitializer }, align 32
@ve_spc_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.2, i32 473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013vexpress-spc: IRQ %d request failed\0A\00", [57 x i8] zeroinitializer }, align 32
@ve_spc_init._entry_ptr.9 = internal global ptr @ve_spc_init._entry.7, section ".printk_index", align 4
@__initcall__kmod_spc__233_598_ve_spc_clk_init6 = internal global ptr @ve_spc_clk_init, section ".initcall6.init", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@ve_spc_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013failed to build OPP table\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ve_spc_clk_init\00", [16 x i8] zeroinitializer }, align 32
@ve_spc_clk_init._entry_ptr = internal global ptr @ve_spc_clk_init._entry, section ".printk_index", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@ve_spc_clk_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 569, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014failed to get cpu%d device\0A\00", [34 x i8] zeroinitializer }, align 32
@ve_spc_clk_init._entry_ptr.17 = internal global ptr @ve_spc_clk_init._entry.15, section ".printk_index", align 4
@ve_spc_clk_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.2, i32 574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014failed to register cpu%d clock\0A\00", [62 x i8] zeroinitializer }, align 32
@ve_spc_clk_init._entry_ptr.20 = internal global ptr @ve_spc_clk_init._entry.18, section ".printk_index", align 4
@ve_spc_clk_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.14, ptr @.str.2, i32 578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014failed to register cpu%d clock lookup\0A\00", [55 x i8] zeroinitializer }, align 32
@ve_spc_clk_init._entry_ptr.23 = internal global ptr @ve_spc_clk_init._entry.21, section ".printk_index", align 4
@cpu_topology = external dso_local global [4 x %struct.cpu_topology], align 4
@ve_spc_clk_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.14, ptr @.str.2, i32 587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014failed to initialise cpu%d opp table\0A\00", [56 x i8] zeroinitializer }, align 32
@ve_spc_clk_init._entry_ptr.26 = internal global ptr @ve_spc_clk_init._entry.24, section ".printk_index", align 4
@ve_spc_clk_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.14, ptr @.str.2, i32 590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014failed to mark OPPs shared for cpu%d\0A\00", [56 x i8] zeroinitializer }, align 32
@ve_spc_clk_init._entry_ptr.29 = internal global ptr @ve_spc_clk_init._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vexpress-spc-cpufreq\00", [43 x i8] zeroinitializer }, align 32
@clk_spc_ops = internal global { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @spc_recalc_rate, ptr @spc_round_rate, ptr null, ptr null, ptr null, ptr @spc_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ve_init_opp_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 443, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to add opp %lu %lu\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ve_init_opp_table\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ve_init_opp_table._entry_ptr = internal global ptr @ve_init_opp_table._entry, section ".printk_index", align 4
@___asan_gen_.35 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 117, i32 31 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 252, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 461, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 471, i32 21 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 473, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 87, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 33, i32 31 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 34, i32 28 }
@___asan_gen_.81 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 35, i32 39 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 562, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 569, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 574, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 578, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 587, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 590, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 595, i32 34 }
@___asan_gen_.125 = private unnamed_addr constant [12 x i8] c"clk_spc_ops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 524, i32 23 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.141 = private constant [32 x i8] c"../arch/arm/mach-vexpress/spc.c\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 442, i32 4 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__initcall__kmod_spc__233_598_ve_spc_clk_init6, ptr @ve_init_opp_table._entry, ptr @ve_init_opp_table._entry_ptr, ptr @ve_spc_clk_init._entry, ptr @ve_spc_clk_init._entry.15, ptr @ve_spc_clk_init._entry.18, ptr @ve_spc_clk_init._entry.21, ptr @ve_spc_clk_init._entry.24, ptr @ve_spc_clk_init._entry.27, ptr @ve_spc_clk_init._entry_ptr, ptr @ve_spc_clk_init._entry_ptr.17, ptr @ve_spc_clk_init._entry_ptr.20, ptr @ve_spc_clk_init._entry_ptr.23, ptr @ve_spc_clk_init._entry_ptr.26, ptr @ve_spc_clk_init._entry_ptr.29, ptr @ve_spc_init._entry, ptr @ve_spc_init._entry.7, ptr @ve_spc_init._entry_ptr, ptr @ve_spc_init._entry_ptr.9, ptr @info, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @init_completion.__key, ptr @.str.10, ptr @sema_init.__key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @clk_spc_ops, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @info to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ve_spc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ve_spc_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ve_spc_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ve_spc_clk_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ve_spc_clk_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ve_spc_clk_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ve_spc_clk_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ve_spc_clk_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_spc_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ve_init_opp_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ve_spc_global_wakeup_irq(i1 noundef zeroext %set) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @info, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 36
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !74
  %4 = and i32 %3, -786433
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %masksel = select i1 %set, i32 3072, i32 0
  %reg.0 = or i32 %5, %masksel
  %6 = tail call i32 @llvm.bswap.i32(i32 %reg.0)
  %7 = load ptr, ptr @info, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %add.ptr2 = getelementptr i8, ptr %9, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %6) #11, !srcloc !75
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ve_spc_cpu_wakeup_irq(i32 noundef %cluster, i32 noundef %cpu, i1 noundef zeroext %set) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cluster)
  %cmp = icmp ugt i32 %cluster, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %shl = shl nuw i32 1, %cpu
  %0 = load ptr, ptr @info, align 4
  %a15_clusid.i = getelementptr inbounds %struct.ve_spc_drvdata, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %a15_clusid.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %a15_clusid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %cluster)
  %cmp.i = icmp eq i32 %2, %cluster
  %shl2 = shl i32 %shl, 4
  %spec.select = select i1 %cmp.i, i32 %shl, i32 %shl2
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 36
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !74
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %or = or i32 %6, %spec.select
  %neg = xor i32 %spec.select, -1
  %and = and i32 %6, %neg
  %reg.0 = select i1 %set, i32 %or, i32 %and
  %7 = tail call i32 @llvm.bswap.i32(i32 %reg.0)
  %8 = load ptr, ptr @info, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %add.ptr8 = getelementptr i8, ptr %10, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %7) #11, !srcloc !75
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ve_spc_set_resume_addr(i32 noundef %cluster, i32 noundef %cpu, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cluster)
  %cmp = icmp ugt i32 %cluster, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @info, align 4
  %a15_clusid.i = getelementptr inbounds %struct.ve_spc_drvdata, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %a15_clusid.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %a15_clusid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %cluster)
  %cmp.i = icmp eq i32 %2, %cluster
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %0, align 4
  %. = select i1 %cmp.i, i32 104, i32 120
  %add.ptr5 = getelementptr i8, ptr %4, i32 %.
  %shl6 = shl i32 %cpu, 2
  %add.ptr7 = getelementptr i8, ptr %add.ptr5, i32 %shl6
  %5 = tail call i32 @llvm.bswap.i32(i32 %addr)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %5) #11, !srcloc !75
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ve_spc_powerdown(i32 noundef %cluster, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cluster)
  %cmp = icmp ugt i32 %cluster, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @info, align 4
  %a15_clusid.i = getelementptr inbounds %struct.ve_spc_drvdata, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %a15_clusid.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %a15_clusid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %cluster)
  %cmp.i = icmp eq i32 %2, %cluster
  %cond = select i1 %cmp.i, i32 48, i32 52
  %3 = select i1 %enable, i32 16777216, i32 0
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %cond
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #11, !srcloc !75
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ve_spc_cpu_in_wfi(i32 noundef %cpu, i32 noundef %cluster) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @info, align 4
  %a15_clusid.i.i = getelementptr inbounds %struct.ve_spc_drvdata, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %a15_clusid.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %a15_clusid.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %cluster)
  %cmp.i.i = icmp eq i32 %2, %cluster
  %add.i = add i32 %cpu, 3
  %cpu.pn.i = select i1 %cmp.i.i, i32 %cpu, i32 %add.i
  %cond.i = shl nuw i32 1, %cpu.pn.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cluster)
  %cmp = icmp ugt i32 %cluster, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 60
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !74
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ve_spc_cpu_in_wfi.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ve_spc_cpu_in_wfi, %if.then6)) #11
          to label %do.end [label %if.then6], !srcloc !76

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ve_spc_cpu_in_wfi.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 60, i32 noundef %6, i32 noundef %cond.i) #11
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.end
  %and = and i32 %6, %cond.i
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and, %do.end ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ve_spc_init(ptr noundef %baseaddr, i32 noundef %a15_clusid, i32 noundef %irq) local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 144) #12
  store ptr %call7.i.i, ptr @info, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %baseaddr, ptr %call7.i.i, align 8
  %a15_clusid2 = getelementptr inbounds %struct.ve_spc_drvdata, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %a15_clusid2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %a15_clusid, ptr %a15_clusid2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %irq)
  %cmp = icmp slt i32 %irq, 1
  br i1 %cmp, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %irq) #13
  %3 = load ptr, ptr @info, align 4
  tail call void @kfree(ptr noundef %3) #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %done = getelementptr inbounds %struct.ve_spc_drvdata, ptr %call7.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %done, align 8
  %wait.i = getelementptr inbounds %struct.ve_spc_drvdata, ptr %call7.i.i, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #11
  %5 = load ptr, ptr @info, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 24
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !74
  %9 = load ptr, ptr @info, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %irq, ptr noundef nonnull @ve_spc_irq_handler, ptr noundef null, i32 noundef 8196, ptr noundef nonnull @.str.6, ptr noundef %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %if.end17, label %do.end14

do.end14:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %irq) #13
  %10 = load ptr, ptr @info, align 4
  tail call void @kfree(ptr noundef %10) #11
  br label %cleanup

if.end17:                                         ; preds = %if.end5
  %11 = load ptr, ptr @info, align 4
  %sem = getelementptr inbounds %struct.ve_spc_drvdata, ptr %11, i32 0, i32 4
  %wait_list1.i = getelementptr inbounds %struct.ve_spc_drvdata, ptr %11, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %sem to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %sem, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.ve_spc_drvdata, ptr %11, i32 0, i32 4, i32 0, i32 1
  %13 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds %struct.ve_spc_drvdata, ptr %11, i32 0, i32 4, i32 0, i32 2
  %14 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds %struct.ve_spc_drvdata, ptr %11, i32 0, i32 4, i32 0, i32 3
  %15 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds %struct.ve_spc_drvdata, ptr %11, i32 0, i32 4, i32 0, i32 4
  %16 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i = getelementptr inbounds %struct.ve_spc_drvdata, ptr %11, i32 0, i32 4, i32 0, i32 4, i32 2
  %17 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.11, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i = getelementptr inbounds %struct.ve_spc_drvdata, ptr %11, i32 0, i32 4, i32 0, i32 4, i32 3
  %18 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.75.0..sroa_idx.i = getelementptr inbounds %struct.ve_spc_drvdata, ptr %11, i32 0, i32 4, i32 0, i32 4, i32 4
  %19 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i = getelementptr inbounds %struct.ve_spc_drvdata, ptr %11, i32 0, i32 4, i32 0, i32 4, i32 5
  %20 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i, i32 0, i32 10)
  %.compoundliteral.sroa.86.0..sroa_idx.i = getelementptr inbounds %struct.ve_spc_drvdata, ptr %11, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %.compoundliteral.sroa.86.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %.compoundliteral.sroa.86.0..sroa_idx.i, align 4
  %22 = ptrtoint ptr %wait_list1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %wait_list1.i, ptr %wait_list1.i, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i = getelementptr inbounds %struct.ve_spc_drvdata, ptr %11, i32 0, i32 4, i32 2, i32 1
  %23 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %wait_list1.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i, align 4
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %24 = load ptr, ptr @info, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %25(ptr noundef %24, i32 noundef 144) #11
  %26 = ptrtoint ptr %24 to i32
  %call.i21 = tail call i32 @__virt_to_phys(i32 noundef %26) #11
  %add.ptr.i = getelementptr i8, ptr %24, i32 144
  %27 = ptrtoint ptr %add.ptr.i to i32
  %call1.i = tail call i32 @__virt_to_phys(i32 noundef %27) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %if.end17.__sync_cache_range_w.exit_crit_edge, label %if.then.i.i

if.end17.__sync_cache_range_w.exit_crit_edge:     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sync_cache_range_w.exit

if.then.i.i:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %28(i32 noundef %call.i21, i32 noundef %call1.i) #11
  br label %__sync_cache_range_w.exit

__sync_cache_range_w.exit:                        ; preds = %if.then.i.i, %if.end17.__sync_cache_range_w.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %29(ptr noundef nonnull @info, i32 noundef 4) #11
  %call.i22 = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr @info to i32)) #11
  %call1.i23 = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr getelementptr inbounds (ptr, ptr @info, i32 1) to i32)) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %tobool.not.i.i24 = icmp eq ptr %30, null
  br i1 %tobool.not.i.i24, label %__sync_cache_range_w.exit.cleanup_crit_edge, label %if.then.i.i25

__sync_cache_range_w.exit.cleanup_crit_edge:      ; preds = %__sync_cache_range_w.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.i25:                                    ; preds = %__sync_cache_range_w.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %30(i32 noundef %call.i22, i32 noundef %call1.i23) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i25, %__sync_cache_range_w.exit.cleanup_crit_edge, %do.end14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -19, %do.end14 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %__sync_cache_range_w.exit.cleanup_crit_edge ], [ 0, %if.then.i.i25 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ve_spc_irq_handler(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !74
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = load ptr, ptr @info, align 4
  %cur_rsp_mask = getelementptr inbounds %struct.ve_spc_drvdata, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %cur_rsp_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cur_rsp_mask, align 4
  %and = and i32 %6, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cur_rsp_stat = getelementptr inbounds %struct.ve_spc_drvdata, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %cur_rsp_stat to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %3, ptr %cur_rsp_stat, align 4
  %done = getelementptr inbounds %struct.ve_spc_drvdata, ptr %data, i32 0, i32 5
  tail call void @complete(ptr noundef %done) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ve_spc_clk_init() #4 section ".init.text" align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  %init.i = alloca %struct.clk_init_data, align 4
  %init_opp_table = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %init_opp_table) #11
  %0 = ptrtoint ptr %init_opp_table to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %init_opp_table, align 2
  %1 = load ptr, ptr @info, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup63_crit_edge, label %if.end

entry.cleanup63_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup63

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @ve_spc_populate_opps(i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %call2 = tail call fastcc i32 @ve_spc_populate_opps(i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %for.cond.preheader, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.cond.preheader:                               ; preds = %lor.lhs.false
  %call796 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call796, i32 %2)
  %cmp97 = icmp ult i32 %call796, %2
  br i1 %cmp97, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %3 = getelementptr inbounds i8, ptr %init.i, i32 8
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  br label %for.body

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #13
  br label %cleanup63

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %call798 = phi i32 [ %call796, %for.body.lr.ph ], [ %call7, %cleanup.for.body_crit_edge ]
  %call8 = call ptr @get_cpu_device(i32 noundef %call798) #11
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end13, label %if.end16

do.end13:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call798) #13
  br label %cleanup

if.end16:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #11
  %4 = call ptr @memset(ptr %3, i32 255, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 16) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %ve_spc_clk_register.exit.thread, label %if.end.i

ve_spc_clk_register.exit.thread:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #11
  br label %do.end22

if.end.i:                                         ; preds = %if.end16
  %init2.i = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %init2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %init.i, ptr %init2.i, align 8
  %id.i = getelementptr inbounds %struct.device, ptr %call8, i32 0, i32 30
  %7 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id.i, align 4
  %package_id.i = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %8, i32 3
  %9 = ptrtoint ptr %package_id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %package_id.i, align 4
  %cluster.i = getelementptr inbounds %struct.clk_spc, ptr %call7.i.i.i, i32 0, i32 1
  %11 = call i32 @llvm.smax.i32(i32 %10, i32 0) #11
  %12 = ptrtoint ptr %cluster.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %cluster.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %call8, i32 0, i32 3
  %13 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.ve_spc_clk_register.exit_crit_edge

if.end.i.ve_spc_clk_register.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ve_spc_clk_register.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call8, align 4
  br label %ve_spc_clk_register.exit

ve_spc_clk_register.exit:                         ; preds = %if.end.i.i, %if.end.i.ve_spc_clk_register.exit_crit_edge
  %retval.0.i.i = phi ptr [ %16, %if.end.i.i ], [ %14, %if.end.i.ve_spc_clk_register.exit_crit_edge ]
  %17 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %retval.0.i.i, ptr %init.i, align 4
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @clk_spc_ops, ptr %ops.i, align 4
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 64, ptr %flags.i, align 4
  %20 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %num_parents.i, align 4
  %call8.i = call ptr @devm_clk_register(ptr noundef nonnull %call8, ptr noundef nonnull %call7.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #11
  %cmp.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %ve_spc_clk_register.exit.do.end22_crit_edge, label %if.end25

ve_spc_clk_register.exit.do.end22_crit_edge:      ; preds = %ve_spc_clk_register.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22

do.end22:                                         ; preds = %ve_spc_clk_register.exit.do.end22_crit_edge, %ve_spc_clk_register.exit.thread
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call798) #13
  br label %cleanup

if.end25:                                         ; preds = %ve_spc_clk_register.exit
  %21 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i82 = icmp eq ptr %22, null
  br i1 %tobool.not.i82, label %if.end.i83, label %if.end25.dev_name.exit_crit_edge

if.end25.dev_name.exit_crit_edge:                 ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i83:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call8, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i83, %if.end25.dev_name.exit_crit_edge
  %retval.0.i84 = phi ptr [ %24, %if.end.i83 ], [ %22, %if.end25.dev_name.exit_crit_edge ]
  %call27 = call i32 @clk_register_clkdev(ptr noundef %call8.i, ptr noundef null, ptr noundef %retval.0.i84) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end35, label %do.end32

do.end32:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %call798) #13
  br label %cleanup

if.end35:                                         ; preds = %dev_name.exit
  %25 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id.i, align 4
  %package_id = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %26, i32 3
  %27 = ptrtoint ptr %package_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %package_id, align 4
  %arrayidx36 = getelementptr [2 x i8], ptr %init_opp_table, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx36, align 1, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool37.not = icmp eq i8 %30, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end39:                                         ; preds = %if.end35
  %31 = call i32 @llvm.smax.i32(i32 %28, i32 0) #11
  %32 = load ptr, ptr @info, align 4
  %arrayidx1.i = getelementptr %struct.ve_spc_drvdata, ptr %32, i32 0, i32 7, i32 %31
  %33 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp424.i = icmp sgt i32 %34, 0
  br i1 %cmp424.i, label %for.body.preheader.i, label %if.end39.if.else_crit_edge

if.end39.if.else_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

for.body.preheader.i:                             ; preds = %if.end39
  %arrayidx3.i = getelementptr %struct.ve_spc_drvdata, ptr %32, i32 0, i32 6, i32 %31
  %35 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx3.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %opps.026.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %36, %for.body.preheader.i ]
  %idx.025.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %37 = ptrtoint ptr %opps.026.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %opps.026.i, align 4
  %mul.i = mul i32 %38, 1000
  %u_volt.i = getelementptr inbounds %struct.ve_spc_opp, ptr %opps.026.i, i32 0, i32 1
  %39 = ptrtoint ptr %u_volt.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %u_volt.i, align 4
  %call.i = call i32 @dev_pm_opp_add(ptr noundef nonnull %call8, i32 noundef %mul.i, i32 noundef %40) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i87 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i87, label %for.inc.i, label %do.end45

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %idx.025.i, 1
  %incdec.ptr.i = getelementptr %struct.ve_spc_opp, ptr %opps.026.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %34
  br i1 %exitcond.not.i, label %for.inc.i.if.else_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.else_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

do.end45:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %u_volt.i.le = getelementptr inbounds %struct.ve_spc_opp, ptr %opps.026.i, i32 0, i32 1
  %41 = ptrtoint ptr %opps.026.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %opps.026.i, align 4
  %43 = ptrtoint ptr %u_volt.i.le to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %u_volt.i.le, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %call8, ptr noundef nonnull @.str.31, i32 noundef %42, i32 noundef %44) #13
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %call798) #13
  br label %cleanup

if.else:                                          ; preds = %for.inc.i.if.else_crit_edge, %if.end39.if.else_crit_edge
  %45 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %id.i, align 4
  %core_sibling = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %46, i32 6
  %call50 = call i32 @dev_pm_opp_set_sharing_cpus(ptr noundef nonnull %call8, ptr noundef %core_sibling) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.else58, label %do.end55

do.end55:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %call798) #13
  br label %cleanup

if.else58:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %arrayidx36, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else58, %do.end55, %do.end45, %if.end35.cleanup_crit_edge, %do.end32, %do.end22, %do.end13
  %call7 = call i32 @cpumask_next(i32 noundef %call798, ptr noundef nonnull @__cpu_possible_mask) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %48 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call7, %48
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #11
  %49 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %50 = call ptr @memset(ptr %49, i32 255, i32 48)
  %51 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %fwnode.i.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %49, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %54 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.30, ptr %name2.i.i, align 4
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %55 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %56 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %properties.i.i, align 8
  %57 = call ptr @memset(ptr %res4.i.i, i32 0, i32 16)
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #11
  br label %cleanup63

cleanup63:                                        ; preds = %for.end, %do.end, %entry.cleanup63_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %for.end ], [ 0, %entry.cleanup63_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %init_opp_table) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ve_spc_populate_opps(i32 noundef %cluster) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 64) #12
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @info, align 4
  %arrayidx = getelementptr %struct.ve_spc_drvdata, ptr %1, i32 0, i32 6, i32 %cluster
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i.i, ptr %arrayidx, align 4
  %3 = load ptr, ptr @info, align 4
  %a15_clusid.i = getelementptr inbounds %struct.ve_spc_drvdata, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %a15_clusid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %a15_clusid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %cluster)
  %cmp.i = icmp eq i32 %5, %cluster
  %cond = select i1 %cmp.i, i32 3088, i32 3120
  br label %for.body

for.body:                                         ; preds = %if.then5.for.body_crit_edge, %if.end
  %opps.029 = phi ptr [ %call7.i.i.i, %if.end ], [ %incdec.ptr, %if.then5.for.body_crit_edge ]
  %idx.028 = phi i32 [ 0, %if.end ], [ %inc, %if.then5.for.body_crit_edge ]
  %off.027 = phi i32 [ %cond, %if.end ], [ %add, %if.then5.for.body_crit_edge ]
  %data.026 = phi i32 [ 0, %if.end ], [ %data.1, %if.then5.for.body_crit_edge ]
  %6 = load ptr, ptr @info, align 4
  %sem.i = getelementptr inbounds %struct.ve_spc_drvdata, ptr %6, i32 0, i32 4
  %call.i.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %call.i.i)
  %cmp.i.i = icmp ult i32 %call.i.i, 20000
  %spec.select.i.i = select i1 %cmp.i.i, i32 1073741822, i32 2
  %call1.i = tail call i32 @down_timeout(ptr noundef %sem.i, i32 noundef %spec.select.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.i:                                         ; preds = %for.body
  %7 = load ptr, ptr @info, align 4
  %done.i = getelementptr inbounds %struct.ve_spc_drvdata, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %done.i, align 4
  %wait.i.i = getelementptr inbounds %struct.ve_spc_drvdata, ptr %7, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #11
  %9 = load ptr, ptr @info, align 4
  %cur_rsp_mask.i = getelementptr inbounds %struct.ve_spc_drvdata, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %cur_rsp_mask.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 768, ptr %cur_rsp_mask.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !78
  tail call void @arm_heavy_mb() #11
  %11 = lshr exact i32 %off.027, 2
  %or2.i = or i32 %11, -2141192192
  %12 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #11
  %13 = load ptr, ptr @info, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #11, !srcloc !75
  %16 = load ptr, ptr @info, align 4
  %done.i.i = getelementptr inbounds %struct.ve_spc_drvdata, ptr %16, i32 0, i32 5
  %call.i.i.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %call.i.i.i)
  %cmp.i.i.i = icmp ult i32 %call.i.i.i, 20000
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 1073741822, i32 2
  %call1.i.i = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %done.i.i, i32 noundef %spec.select.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i1.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp.i1.i, label %if.end.i.ve_spc_read_sys_cfg.exit_crit_edge, label %if.else.i.i

if.end.i.ve_spc_read_sys_cfg.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ve_spc_read_sys_cfg.exit

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i.i = icmp sgt i32 %call1.i.i, 0
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.else.i.i.ve_spc_read_sys_cfg.exit_crit_edge

if.else.i.i.ve_spc_read_sys_cfg.exit_crit_edge:   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ve_spc_read_sys_cfg.exit

if.then3.i.i:                                     ; preds = %if.else.i.i
  %17 = load ptr, ptr @info, align 4
  %cur_rsp_stat.i.i = getelementptr inbounds %struct.ve_spc_drvdata, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cur_rsp_stat.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cur_rsp_stat.i.i, align 4
  %and.i.i = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then3.i.i.ve_spc_read_sys_cfg.exit_crit_edge, label %if.then4.i

if.then3.i.i.ve_spc_read_sys_cfg.exit_crit_edge:  ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ve_spc_read_sys_cfg.exit

if.then4.i:                                       ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  %add.ptr6.i = getelementptr i8, ptr %21, i32 116
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #11, !srcloc !74
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !79
  br label %ve_spc_read_sys_cfg.exit

ve_spc_read_sys_cfg.exit:                         ; preds = %if.then4.i, %if.then3.i.i.ve_spc_read_sys_cfg.exit_crit_edge, %if.else.i.i.ve_spc_read_sys_cfg.exit_crit_edge, %if.end.i.ve_spc_read_sys_cfg.exit_crit_edge
  %data.1 = phi i32 [ %data.026, %if.end.i.ve_spc_read_sys_cfg.exit_crit_edge ], [ %data.026, %if.then3.i.i.ve_spc_read_sys_cfg.exit_crit_edge ], [ %23, %if.then4.i ], [ %data.026, %if.else.i.i.ve_spc_read_sys_cfg.exit_crit_edge ]
  %ret.0.i4.i = phi i32 [ -110, %if.end.i.ve_spc_read_sys_cfg.exit_crit_edge ], [ -5, %if.then3.i.i.ve_spc_read_sys_cfg.exit_crit_edge ], [ 0, %if.then4.i ], [ %call1.i.i, %if.else.i.i.ve_spc_read_sys_cfg.exit_crit_edge ]
  %24 = load ptr, ptr @info, align 4
  %cur_rsp_mask10.i = getelementptr inbounds %struct.ve_spc_drvdata, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %cur_rsp_mask10.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %cur_rsp_mask10.i, align 4
  %sem11.i = getelementptr inbounds %struct.ve_spc_drvdata, ptr %24, i32 0, i32 4
  tail call void @up(ptr noundef %sem11.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i4.i)
  %tobool4.not = icmp eq i32 %ret.0.i4.i, 0
  br i1 %tobool4.not, label %if.then5, label %ve_spc_read_sys_cfg.exit.for.end_crit_edge

ve_spc_read_sys_cfg.exit.for.end_crit_edge:       ; preds = %ve_spc_read_sys_cfg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then5:                                         ; preds = %ve_spc_read_sys_cfg.exit
  %and = and i32 %data.1, 1048575
  %mul = mul nuw nsw i32 %and, 20
  %26 = ptrtoint ptr %opps.029 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %mul, ptr %opps.029, align 4
  %shr = lshr i32 %data.1, 20
  %mul6 = mul nuw nsw i32 %shr, 1000
  %u_volt = getelementptr inbounds %struct.ve_spc_opp, ptr %opps.029, i32 0, i32 1
  %27 = ptrtoint ptr %u_volt to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul6, ptr %u_volt, align 4
  %inc = add nuw nsw i32 %idx.028, 1
  %add = add nuw nsw i32 %off.027, 4
  %incdec.ptr = getelementptr %struct.ve_spc_opp, ptr %opps.029, i32 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %if.then5.for.end_crit_edge, label %if.then5.for.body_crit_edge

if.then5.for.body_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.then5.for.end_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.then5.for.end_crit_edge, %ve_spc_read_sys_cfg.exit.for.end_crit_edge, %for.body.for.end_crit_edge
  %idx.0.lcssa = phi i32 [ %idx.028, %for.body.for.end_crit_edge ], [ %idx.028, %ve_spc_read_sys_cfg.exit.for.end_crit_edge ], [ 8, %if.then5.for.end_crit_edge ]
  %ret.1 = phi i32 [ -62, %for.body.for.end_crit_edge ], [ %ret.0.i4.i, %ve_spc_read_sys_cfg.exit.for.end_crit_edge ], [ 0, %if.then5.for.end_crit_edge ]
  %28 = load ptr, ptr @info, align 4
  %arrayidx8 = getelementptr %struct.ve_spc_drvdata, ptr %28, i32 0, i32 7, i32 %cluster
  %29 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %idx.0.lcssa, ptr %arrayidx8, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_register_clkdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_sharing_cpus(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spc_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %cluster = getelementptr inbounds %struct.clk_spc, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cluster to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cluster, align 4
  %2 = load ptr, ptr @info, align 4
  %arrayidx.i = getelementptr %struct.ve_spc_drvdata, ptr %2, i32 0, i32 6, i32 %1
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %a15_clusid.i.i = getelementptr inbounds %struct.ve_spc_drvdata, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %a15_clusid.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %a15_clusid.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %1)
  %cmp.i.i = icmp eq i32 %6, %1
  %cond.i = select i1 %cmp.i.i, i32 0, i32 8
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 %cond.i
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !74
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #11
  %11 = load ptr, ptr @info, align 4
  %arrayidx3.i = getelementptr %struct.ve_spc_drvdata, ptr %11, i32 0, i32 7, i32 %1
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %13)
  %cmp.not.i = icmp ult i32 %10, %13
  br i1 %cmp.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr4.i = getelementptr %struct.ve_spc_opp, ptr %4, i32 %10
  %14 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr4.i, align 4
  %mul = mul i32 %15, 1000
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @spc_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %drate, ptr nocapture noundef readnone %parent_rate) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %cluster = getelementptr inbounds %struct.clk_spc, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cluster to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cluster, align 4
  %2 = load ptr, ptr @info, align 4
  %arrayidx.i = getelementptr %struct.ve_spc_drvdata, ptr %2, i32 0, i32 7, i32 %1
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  %div.i = udiv i32 %drate, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp32.i = icmp sgt i32 %4, 0
  br i1 %cmp32.i, label %for.body.preheader.i, label %entry.for.end.thread.i_crit_edge

entry.for.end.thread.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i

for.body.preheader.i:                             ; preds = %entry
  %arrayidx2.i = getelementptr %struct.ve_spc_drvdata, ptr %2, i32 0, i32 6, i32 %1
  %5 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx2.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %fmax.036.i = phi i32 [ %fmax.1.i, %for.body.i.for.body.i_crit_edge ], [ -1, %for.body.preheader.i ]
  %fmin.035.i = phi i32 [ %fmin.1.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %opps.034.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %6, %for.body.preheader.i ]
  %idx.033.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %7 = ptrtoint ptr %opps.034.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %opps.034.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %div.i)
  %cmp4.not.i = icmp ult i32 %8, %div.i
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 %fmax.036.i) #11
  %10 = tail call i32 @llvm.umax.i32(i32 %8, i32 %fmin.035.i) #11
  %fmin.1.i = select i1 %cmp4.not.i, i32 %10, i32 %fmin.035.i
  %fmax.1.i = select i1 %cmp4.not.i, i32 %fmax.036.i, i32 %9
  %inc.i = add nuw nsw i32 %idx.033.i, 1
  %incdec.ptr.i = getelementptr %struct.ve_spc_opp, ptr %opps.034.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %4
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %fmax.1.i)
  %cmp11.not.i = icmp eq i32 %fmax.1.i, -1
  br i1 %cmp11.not.i, label %for.end.i.for.end.thread.i_crit_edge, label %for.end.i.ve_spc_round_performance.exit_crit_edge

for.end.i.ve_spc_round_performance.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ve_spc_round_performance.exit

for.end.i.for.end.thread.i_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i

for.end.thread.i:                                 ; preds = %for.end.i.for.end.thread.i_crit_edge, %entry.for.end.thread.i_crit_edge
  %fmin.0.lcssa41.i = phi i32 [ %fmin.1.i, %for.end.i.for.end.thread.i_crit_edge ], [ 0, %entry.for.end.thread.i_crit_edge ]
  br label %ve_spc_round_performance.exit

ve_spc_round_performance.exit:                    ; preds = %for.end.thread.i, %for.end.i.ve_spc_round_performance.exit_crit_edge
  %11 = phi i32 [ %fmin.0.lcssa41.i, %for.end.thread.i ], [ %fmax.1.i, %for.end.i.ve_spc_round_performance.exit_crit_edge ]
  %retval.0.i = mul i32 %11, 1000
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spc_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %cluster = getelementptr inbounds %struct.clk_spc, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cluster to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cluster, align 4
  %div = udiv i32 %rate, 1000
  %2 = load ptr, ptr @info, align 4
  %a15_clusid.i.i = getelementptr inbounds %struct.ve_spc_drvdata, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %a15_clusid.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %a15_clusid.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %1)
  %cmp.i23.i = icmp eq i32 %4, %1
  %..i = select i1 %cmp.i23.i, i32 0, i32 8
  %arrayidx.i.i = getelementptr %struct.ve_spc_drvdata, ptr %2, i32 0, i32 7, i32 %1
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp12.i.i = icmp sgt i32 %6, 0
  br i1 %cmp12.i.i, label %for.body.preheader.i.i, label %entry.ve_spc_find_performance_index.exit.i_crit_edge

entry.ve_spc_find_performance_index.exit.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ve_spc_find_performance_index.exit.i

for.body.preheader.i.i:                           ; preds = %entry
  %arrayidx2.i.i = getelementptr %struct.ve_spc_drvdata, ptr %2, i32 0, i32 6, i32 %1
  %7 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx2.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %opps.014.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %8, %for.body.preheader.i.i ]
  %idx.013.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %9 = ptrtoint ptr %opps.014.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %opps.014.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %div)
  %cmp4.i.i = icmp eq i32 %10, %div
  br i1 %cmp4.i.i, label %for.body.i.i.ve_spc_find_performance_index.exit.i_crit_edge, label %for.inc.i.i

for.body.i.i.ve_spc_find_performance_index.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ve_spc_find_performance_index.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %idx.013.i.i, 1
  %incdec.ptr.i.i = getelementptr %struct.ve_spc_opp, ptr %opps.014.i.i, i32 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %6
  br i1 %exitcond.not.i.i, label %for.inc.i.i.ve_spc_set_performance.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.ve_spc_set_performance.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ve_spc_set_performance.exit

ve_spc_find_performance_index.exit.i:             ; preds = %for.body.i.i.ve_spc_find_performance_index.exit.i_crit_edge, %entry.ve_spc_find_performance_index.exit.i_crit_edge
  %idx.0.lcssa.i.i = phi i32 [ 0, %entry.ve_spc_find_performance_index.exit.i_crit_edge ], [ %idx.013.i.i, %for.body.i.i.ve_spc_find_performance_index.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.0.lcssa.i.i, i32 %6)
  %cmp5.i.i = icmp eq i32 %idx.0.lcssa.i.i, %6
  %spec.select.i24.i = select i1 %cmp5.i.i, i32 -22, i32 %idx.0.lcssa.i.i
  br i1 %cmp5.i.i, label %ve_spc_find_performance_index.exit.i.ve_spc_set_performance.exit_crit_edge, label %if.end3.i

ve_spc_find_performance_index.exit.i.ve_spc_set_performance.exit_crit_edge: ; preds = %ve_spc_find_performance_index.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ve_spc_set_performance.exit

if.end3.i:                                        ; preds = %ve_spc_find_performance_index.exit.i
  %sem.i = getelementptr inbounds %struct.ve_spc_drvdata, ptr %2, i32 0, i32 4
  %call.i.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %call.i.i)
  %cmp.i.i = icmp ult i32 %call.i.i, 20000
  %spec.select.i.i = select i1 %cmp.i.i, i32 1073741822, i32 2
  %call5.i = tail call i32 @down_timeout(ptr noundef %sem.i, i32 noundef %spec.select.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end7.i, label %if.end3.i.ve_spc_set_performance.exit_crit_edge

if.end3.i.ve_spc_set_performance.exit_crit_edge:  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ve_spc_set_performance.exit

if.end7.i:                                        ; preds = %if.end3.i
  %11 = load ptr, ptr @info, align 4
  %done.i = getelementptr inbounds %struct.ve_spc_drvdata, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %done.i, align 4
  %wait.i.i = getelementptr inbounds %struct.ve_spc_drvdata, ptr %11, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #11
  %shl.i = select i1 %cmp.i23.i, i32 0, i32 4
  %or.i = shl nuw nsw i32 3, %shl.i
  %13 = load ptr, ptr @info, align 4
  %cur_rsp_mask.i = getelementptr inbounds %struct.ve_spc_drvdata, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %cur_rsp_mask.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or.i, ptr %cur_rsp_mask.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !80
  tail call void @arm_heavy_mb() #11
  %15 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i24.i) #11
  %16 = load ptr, ptr @info, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 %..i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %15) #11, !srcloc !75
  %19 = load ptr, ptr @info, align 4
  %done.i.i = getelementptr inbounds %struct.ve_spc_drvdata, ptr %19, i32 0, i32 5
  %call.i.i.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %call.i.i.i)
  %cmp.i.i.i = icmp ult i32 %call.i.i.i, 20000
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 1073741822, i32 2
  %call1.i.i = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %done.i.i, i32 noundef %spec.select.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i25.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp.i25.i, label %if.end7.i.ve_spc_waitforcompletion.exit.i_crit_edge, label %if.else.i.i

if.end7.i.ve_spc_waitforcompletion.exit.i_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ve_spc_waitforcompletion.exit.i

if.else.i.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i.i = icmp sgt i32 %call1.i.i, 0
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.else.i.i.ve_spc_waitforcompletion.exit.i_crit_edge

if.else.i.i.ve_spc_waitforcompletion.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ve_spc_waitforcompletion.exit.i

if.then3.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = load ptr, ptr @info, align 4
  %cur_rsp_stat.i.i = getelementptr inbounds %struct.ve_spc_drvdata, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cur_rsp_stat.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cur_rsp_stat.i.i, align 4
  %shl4.i.i = shl nuw nsw i32 1, %shl.i
  %and.i.i = and i32 %22, %shl4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 -5, i32 0
  br label %ve_spc_waitforcompletion.exit.i

ve_spc_waitforcompletion.exit.i:                  ; preds = %if.then3.i.i, %if.else.i.i.ve_spc_waitforcompletion.exit.i_crit_edge, %if.end7.i.ve_spc_waitforcompletion.exit.i_crit_edge
  %ret.0.i.i = phi i32 [ %cond.i.i, %if.then3.i.i ], [ %call1.i.i, %if.else.i.i.ve_spc_waitforcompletion.exit.i_crit_edge ], [ -110, %if.end7.i.ve_spc_waitforcompletion.exit.i_crit_edge ]
  %23 = load ptr, ptr @info, align 4
  %cur_rsp_mask12.i = getelementptr inbounds %struct.ve_spc_drvdata, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %cur_rsp_mask12.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %cur_rsp_mask12.i, align 4
  %sem13.i = getelementptr inbounds %struct.ve_spc_drvdata, ptr %23, i32 0, i32 4
  tail call void @up(ptr noundef %sem13.i) #11
  br label %ve_spc_set_performance.exit

ve_spc_set_performance.exit:                      ; preds = %ve_spc_waitforcompletion.exit.i, %if.end3.i.ve_spc_set_performance.exit_crit_edge, %ve_spc_find_performance_index.exit.i.ve_spc_set_performance.exit_crit_edge, %for.inc.i.i.ve_spc_set_performance.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i.i, %ve_spc_waitforcompletion.exit.i ], [ -22, %ve_spc_find_performance_index.exit.i.ve_spc_set_performance.exit_crit_edge ], [ -62, %if.end3.i.ve_spc_set_performance.exit_crit_edge ], [ -22, %for.inc.i.i.ve_spc_set_performance.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind uwtable(sync) }
attributes #10 = { nomerge }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !15, !16, !17, !19, !21, !23, !24, !26, !28, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !59, !61, !62, !63, !64, !65}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-vexpress/spc.c", i32 252, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ve_spc_cpu_in_wfi.__UNIQUE_ID_ddebug232, !1, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-vexpress/spc.c", i32 461, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ve_spc_init._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @ve_spc_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../arch/arm/mach-vexpress/spc.c", i32 471, i32 21}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../arch/arm/mach-vexpress/spc.c", i32 473, i32 3}
!15 = !{ptr @ve_spc_init._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @ve_spc_init._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @__initcall__kmod_spc__233_598_ve_spc_clk_init6, !18, !"__initcall__kmod_spc__233_598_ve_spc_clk_init6", i1 false, i1 false}
!18 = !{!"../arch/arm/mach-vexpress/spc.c", i32 598, i32 1}
!19 = !{ptr @info, !20, !"info", i1 false, i1 false}
!20 = !{!"../arch/arm/mach-vexpress/spc.c", i32 117, i32 31}
!21 = !{ptr @init_completion.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../include/linux/completion.h", i32 87, i32 2}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @sema_init.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-vexpress/spc.c", i32 562, i32 3}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ve_spc_clk_init._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @ve_spc_clk_init._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../arch/arm/mach-vexpress/spc.c", i32 569, i32 4}
!37 = !{ptr @ve_spc_clk_init._entry.15, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @ve_spc_clk_init._entry_ptr.17, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../arch/arm/mach-vexpress/spc.c", i32 574, i32 4}
!41 = !{ptr @ve_spc_clk_init._entry.18, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @ve_spc_clk_init._entry_ptr.20, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../arch/arm/mach-vexpress/spc.c", i32 578, i32 4}
!45 = !{ptr @ve_spc_clk_init._entry.21, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @ve_spc_clk_init._entry_ptr.23, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../arch/arm/mach-vexpress/spc.c", i32 587, i32 4}
!49 = !{ptr @ve_spc_clk_init._entry.24, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @ve_spc_clk_init._entry_ptr.26, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../arch/arm/mach-vexpress/spc.c", i32 590, i32 4}
!53 = !{ptr @ve_spc_clk_init._entry.27, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @ve_spc_clk_init._entry_ptr.29, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../arch/arm/mach-vexpress/spc.c", i32 595, i32 34}
!57 = !{ptr @clk_spc_ops, !58, !"clk_spc_ops", i1 false, i1 false}
!58 = !{!"../arch/arm/mach-vexpress/spc.c", i32 524, i32 23}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../arch/arm/mach-vexpress/spc.c", i32 442, i32 4}
!61 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ve_init_opp_table._entry, !60, !"_entry", i1 false, i1 false}
!65 = !{ptr @ve_init_opp_table._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i64 5483088}
!75 = !{i64 5482670}
!76 = !{i64 2148929339, i64 2148929344, i64 2148929357, i64 2148929401, i64 2148929435, i64 2148929456}
!77 = !{i8 0, i8 2}
!78 = !{i64 2154301567}
!79 = !{i64 2154302393}
!80 = !{i64 2154300914}
