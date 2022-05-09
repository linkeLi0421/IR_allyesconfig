; ModuleID = '/llk/IR_all_yes/mm/workingset.c_pt.bc'
source_filename = "../mm/workingset.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.list_head = type { ptr, ptr }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, [36 x i8], %struct.zone_padding, %struct.lruvec, i32, [12 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [92 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [96 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [90 x i8], %struct.zone_padding, [11 x %struct.atomic_t], [0 x %struct.atomic_t], [84 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32, ptr }
%struct.zone_padding = type { [0 x i8] }
%struct.static_key_true = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.58 }
%union.anon.58 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.mem_cgroup_per_node = type { %struct.lruvec, ptr, %struct.lruvec_stats, [4 x [5 x i32]], %struct.mem_cgroup_reclaim_iter, ptr, %struct.rb_node, i32, i8, ptr }
%struct.lruvec_stats = type { [40 x i32], [40 x i32] }
%struct.mem_cgroup_reclaim_iter = type { ptr, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mem_cgroup = type { %struct.cgroup_subsys_state, %struct.mem_cgroup_id, %struct.page_counter, %union.anon.84, %struct.page_counter, %struct.page_counter, %struct.work_struct, i32, %struct.vmpressure, i8, i8, i32, i32, i32, %struct.cgroup_file, %struct.cgroup_file, %struct.cgroup_file, %struct.mutex, %struct.mem_cgroup_thresholds, %struct.mem_cgroup_thresholds, %struct.list_head, i32, %struct.spinlock, i32, [20 x i8], %struct.memcg_padding, %struct.memcg_vmstats, [9 x %struct.atomic_t], [9 x %struct.atomic_t], i32, i8, i32, i32, ptr, %struct.list_head, [92 x i8], %struct.memcg_padding, %struct.atomic_t, ptr, ptr, %struct.list_head, %struct.wb_domain, [4 x %struct.memcg_cgwb_frn], %struct.list_head, %struct.spinlock, [0 x ptr], [84 x i8] }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.mem_cgroup_id = type { i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.84 = type { %struct.page_counter }
%struct.page_counter = type { %struct.atomic_t, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.vmpressure = type { i32, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.work_struct }
%struct.cgroup_file = type { ptr, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mem_cgroup_thresholds = type { ptr, ptr }
%struct.memcg_vmstats = type { [44 x i32], [76 x i32], [44 x i32], [76 x i32] }
%struct.memcg_padding = type { [0 x i8] }
%struct.wb_domain = type { %struct.spinlock, %struct.fprop_global, %struct.timer_list, i32, i32, i32 }
%struct.fprop_global = type { %struct.percpu_counter, i32, %struct.seqcount }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.memcg_cgwb_frn = type { i64, i32, i64, %struct.wb_completion }
%struct.wb_completion = type { %struct.atomic_t, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.77, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.77 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon.83 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.obj_cgroup = type { %struct.percpu_ref, ptr, %struct.atomic_t, %union.anon.85 }
%union.anon.85 = type { %struct.list_head }
%struct.xa_node = type { i8, i8, i8, i8, ptr, ptr, %union.anon.86, [64 x ptr], %union.anon.87 }
%union.anon.86 = type { %struct.list_head }
%union.anon.87 = type { [3 x [2 x i32]] }
%struct.shrink_control = type { i32, i32, i32, i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.79 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.81 = type { ptr }

@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"VM_BUG_ON_PAGE(PageLRU(page))\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"VM_BUG_ON_PAGE(page_count(page))\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"VM_BUG_ON_PAGE(!PageLocked(page))\00", [62 x i8] zeroinitializer }, align 32
@workingset_update_node.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mm/workingset.c\00", [16 x i8] zeroinitializer }, align 32
@shadow_nodes = internal global { %struct.list_lru, [44 x i8] } zeroinitializer, align 32
@__initcall__kmod_workingset__291_638_workingset_init6 = internal global ptr @workingset_init, section ".initcall6.init", align 4
@contig_page_data = external dso_local global %struct.pglist_data, align 128
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(p))\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@root_mem_cgroup = external dso_local local_unnamed_addr global ptr, align 4
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@bucket_order = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/xarray.h\00", [41 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@memory_cgrp_subsys_enabled_key = external dso_local global %struct.static_key_true, align 4
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"VM_BUG_ON_PAGE(PageTail(&folio->page))\00", [57 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"VM_BUG_ON_FOLIO(folio->memcg_data & MEMCG_DATA_OBJCGS)\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"VM_BUG_ON_FOLIO(folio_test_slab(folio))\00", [56 x i8] zeroinitializer }, align 32
@global_node_page_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/vmstat.h\00", [41 x i8] zeroinitializer }, align 32
@vm_node_stat = external dso_local global [40 x %struct.atomic_t], align 4
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@folio_memcg_rcu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/memcontrol.h\00", [37 x i8] zeroinitializer }, align 32
@folio_lruvec.__warned = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"VM_WARN_ON_ONCE_FOLIO(!memcg && !mem_cgroup_disabled())\00", [40 x i8] zeroinitializer }, align 32
@workingset_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016workingset: timestamp_bits=%d max_order=%d bucket_order=%u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"workingset_init\00", [16 x i8] zeroinitializer }, align 32
@workingset_init._entry_ptr = internal global ptr @workingset_init._entry, section ".printk_index", align 4
@workingset_shadow_shrinker = internal global { %struct.shrinker, [60 x i8] } { %struct.shrinker { ptr @count_shadow_nodes, ptr @scan_shadow_nodes, i32 0, i32 0, i32 6, %struct.list_head zeroinitializer, i32 0, ptr null }, [60 x i8] zeroinitializer }, align 32
@shadow_nodes_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@shadow_lru_isolate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@shadow_lru_isolate.__already_done.24 = internal unnamed_addr global i1 false, section ".data.once", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 263, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 264, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 265, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 444, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [13 x i8] c"shadow_nodes\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 432, i32 24 }
@___asan_gen_.41 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 1368, i32 10 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 422, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant [27 x i8] c"../include/linux/huge_mm.h\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 347, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 54, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 695, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 698, i32 1 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 537, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 538, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 417, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [26 x i8] c"../include/linux/vmstat.h\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 202, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 723, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 472, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [30 x i8] c"../include/linux/memcontrol.h\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 746, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 621, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [27 x i8] c"workingset_shadow_shrinker\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 590, i32 24 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"shadow_nodes_key\00", align 1
@___asan_gen_.95 = private constant [19 x i8] c"../mm/workingset.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 601, i32 30 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__initcall__kmod_workingset__291_638_workingset_init6, ptr @workingset_init._entry, ptr @workingset_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @shadow_nodes, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @workingset_shadow_shrinker, ptr @shadow_nodes_key], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shadow_nodes to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @workingset_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @workingset_shadow_shrinker to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shadow_nodes_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @workingset_age_nonresident(ptr noundef %lruvec, i32 noundef %nr_pages) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %parent_lruvec.exit.do.body_crit_edge, %entry
  %lruvec.addr.0 = phi ptr [ %lruvec, %entry ], [ %lruvec.0.i.i, %parent_lruvec.exit.do.body_crit_edge ]
  %nonresident_age = getelementptr inbounds %struct.lruvec, ptr %lruvec.addr.0, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nonresident_age, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %nonresident_age, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nonresident_age, ptr %nonresident_age, i32 %nr_pages, ptr elementtype(i32) %nonresident_age) #9, !srcloc !78
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@workingset_age_nonresident, %lruvec_memcg.exit.i)) #9
          to label %if.end.i.i [label %lruvec_memcg.exit.i], !srcloc !79

if.end.i.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %memcg.i.i = getelementptr inbounds %struct.mem_cgroup_per_node, ptr %lruvec.addr.0, i32 0, i32 9
  %1 = ptrtoint ptr %memcg.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %memcg.i.i, align 4
  br label %lruvec_memcg.exit.i

lruvec_memcg.exit.i:                              ; preds = %if.end.i.i, %do.body
  %retval.0.i.i = phi ptr [ %2, %if.end.i.i ], [ null, %do.body ]
  %tobool.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i, label %lruvec_memcg.exit.i.do.end_crit_edge, label %if.end.i

lruvec_memcg.exit.i.do.end_crit_edge:             ; preds = %lruvec_memcg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i:                                         ; preds = %lruvec_memcg.exit.i
  %parent.i.i = getelementptr inbounds %struct.mem_cgroup, ptr %retval.0.i.i, i32 0, i32 2, i32 13
  %3 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 -176
  %tobool2.not14.i = icmp eq ptr %add.ptr.i.i, null
  %tobool2.not.i = or i1 %tobool.not.i.i, %tobool2.not14.i
  br i1 %tobool2.not.i, label %if.end.i.do.end_crit_edge, label %if.end4.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end4.i:                                        ; preds = %if.end.i
  %pgdat.i.i = getelementptr inbounds %struct.lruvec, ptr %lruvec.addr.0, i32 0, i32 7
  %5 = ptrtoint ptr %pgdat.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pgdat.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@workingset_age_nonresident, %if.then.i.i)) #9
          to label %if.end2.i.i [label %if.then.i.i], !srcloc !79

if.then.i.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %__lruvec.i.i = getelementptr inbounds %struct.pglist_data, ptr %6, i32 0, i32 26
  br label %out.i.i

if.end2.i.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %node_id.i.i = getelementptr inbounds %struct.pglist_data, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %node_id.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %node_id.i.i, align 64
  %arrayidx.i.i = getelementptr %struct.mem_cgroup, ptr %add.ptr.i.i, i32 0, i32 45, i32 %8
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i, align 4
  br label %out.i.i

out.i.i:                                          ; preds = %if.end2.i.i, %if.then.i.i
  %lruvec.0.i.i = phi ptr [ %__lruvec.i.i, %if.then.i.i ], [ %10, %if.end2.i.i ]
  %pgdat4.i.i = getelementptr inbounds %struct.lruvec, ptr %lruvec.0.i.i, i32 0, i32 7
  %11 = ptrtoint ptr %pgdat4.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pgdat4.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %12, %6
  br i1 %cmp.not.i.i, label %out.i.i.parent_lruvec.exit_crit_edge, label %if.then7.i.i, !prof !80

out.i.i.parent_lruvec.exit_crit_edge:             ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %parent_lruvec.exit

if.then7.i.i:                                     ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %pgdat4.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %6, ptr %pgdat4.i.i, align 4
  br label %parent_lruvec.exit

parent_lruvec.exit:                               ; preds = %if.then7.i.i, %out.i.i.parent_lruvec.exit_crit_edge
  %tobool.not = icmp eq ptr %lruvec.0.i.i, null
  br i1 %tobool.not, label %parent_lruvec.exit.do.end_crit_edge, label %parent_lruvec.exit.do.body_crit_edge

parent_lruvec.exit.do.body_crit_edge:             ; preds = %parent_lruvec.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

parent_lruvec.exit.do.end_crit_edge:              ; preds = %parent_lruvec.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %parent_lruvec.exit.do.end_crit_edge, %if.end.i.do.end_crit_edge, %lruvec_memcg.exit.i.do.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @workingset_eviction(ptr noundef %page, ptr noundef readonly %target_memcg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i.not.i.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i102, label %page_pgdat.exit, !prof !81

if.then.i.i102:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.4) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #9, !srcloc !82
  unreachable

page_pgdat.exit:                                  ; preds = %entry
  %2 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !80

if.then.i.i:                                      ; preds = %page_pgdat.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %page_pgdat.exit
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.i.not.i = icmp eq i32 %8, -1
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %2, align 4
  %and.i13.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !81

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !80

if.then.i16.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i15.i = add i32 %10, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %page to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %11, %if.end.i17.i ]
  %12 = inttoptr i32 %retval.0.i18.i to ptr
  tail call void @dump_page(ptr noundef %12, ptr noundef nonnull @.str.5) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 422, 0\0A.popsection", ""() #9, !srcloc !83
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !80

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i22.i = add i32 %10, -1
  br label %PageLRU.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %page to i32
  br label %PageLRU.exit

PageLRU.exit:                                     ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %13, %if.end.i24.i ]
  %14 = inttoptr i32 %retval.0.i25.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %17 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %do.body10, label %if.then, !prof !80

if.then:                                          ; preds = %PageLRU.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/workingset.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 263, 0\0A.popsection", ""() #9, !srcloc !84
  unreachable

do.body10:                                        ; preds = %PageLRU.exit
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %2, align 4
  %and.i.i103 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i103)
  %tobool.not.i.i104 = icmp eq i32 %and.i.i103, 0
  br i1 %tobool.not.i.i104, label %if.end.i.i107, label %if.then.i.i106, !prof !80

if.then.i.i106:                                   ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i105 = add i32 %19, -1
  br label %page_count.exit

if.end.i.i107:                                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %page to i32
  br label %page_count.exit

page_count.exit:                                  ; preds = %if.end.i.i107, %if.then.i.i106
  %retval.0.i.i108 = phi i32 [ %sub.i.i105, %if.then.i.i106 ], [ %20, %if.end.i.i107 ]
  %21 = inttoptr i32 %retval.0.i.i108 to ptr
  %_refcount.i.i.i = getelementptr inbounds %struct.page, ptr %21, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i, i32 noundef 4) #9
  %22 = ptrtoint ptr %_refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %_refcount.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool12.not = icmp eq i32 %23, 0
  br i1 %tobool12.not, label %do.body29, label %if.then19, !prof !80

if.then19:                                        ; preds = %page_count.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.1) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/workingset.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 264, 0\0A.popsection", ""() #9, !srcloc !85
  unreachable

do.body29:                                        ; preds = %page_count.exit
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %2, align 4
  %and.i.i69 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i69)
  %tobool.not.i.i70 = icmp eq i32 %and.i.i69, 0
  br i1 %tobool.not.i.i70, label %if.end.i.i73, label %if.then.i.i72, !prof !80

if.then.i.i72:                                    ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i71 = add i32 %25, -1
  br label %_compound_head.exit.i76

if.end.i.i73:                                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i76

_compound_head.exit.i76:                          ; preds = %if.end.i.i73, %if.then.i.i72
  %retval.0.i.i74 = phi i32 [ %sub.i.i71, %if.then.i.i72 ], [ %26, %if.end.i.i73 ]
  %27 = inttoptr i32 %retval.0.i.i74 to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp.i.not.i75 = icmp eq i32 %29, -1
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %2, align 4
  %and.i16.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i75, label %if.then.i77, label %do.end10.i, !prof !81

if.then.i77:                                      ; preds = %_compound_head.exit.i76
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !80

if.then.i19.i:                                    ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i18.i = add i32 %31, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %32, %if.end.i20.i ]
  %33 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %33, ptr noundef nonnull @.str.5) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #9, !srcloc !86
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i76
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !80

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i25.i = add i32 %31, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %34, %if.end.i27.i ]
  %35 = inttoptr i32 %retval.0.i28.i to ptr
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %35, align 4
  %and1.i.i78 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i78)
  %tobool31.not = icmp eq i32 %and1.i.i78, 0
  br i1 %tobool31.not, label %if.then40, label %do.end49, !prof !81

if.then40:                                        ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.2) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/workingset.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 265, 0\0A.popsection", ""() #9, !srcloc !87
  unreachable

do.end49:                                         ; preds = %PageLocked.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@workingset_eviction, %out.i)) #9
          to label %if.end.i [label %out.i], !srcloc !79

if.end.i:                                         ; preds = %do.end49
  %tobool.not.i = icmp eq ptr %target_memcg, null
  br i1 %tobool.not.i, label %if.then1.i, label %if.end.i.if.end2.i_crit_edge

if.end.i.if.end2.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @root_mem_cgroup to i32))
  %38 = load ptr, ptr @root_mem_cgroup, align 4
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.then1.i, %if.end.i.if.end2.i_crit_edge
  %memcg.addr.0.i = phi ptr [ %target_memcg, %if.end.i.if.end2.i_crit_edge ], [ %38, %if.then1.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 8) to i32))
  %39 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 8), align 64
  %arrayidx.i = getelementptr %struct.mem_cgroup, ptr %memcg.addr.0.i, i32 0, i32 45, i32 %39
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i, align 4
  br label %out.i

out.i:                                            ; preds = %if.end2.i, %do.end49
  %lruvec.0.i = phi ptr [ %41, %if.end2.i ], [ getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 26), %do.end49 ]
  %pgdat4.i = getelementptr inbounds %struct.lruvec, ptr %lruvec.0.i, i32 0, i32 7
  %42 = ptrtoint ptr %pgdat4.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pgdat4.i, align 4
  %cmp.not.i = icmp eq ptr %43, @contig_page_data
  br i1 %cmp.not.i, label %out.i.mem_cgroup_lruvec.exit_crit_edge, label %if.then7.i, !prof !80

out.i.mem_cgroup_lruvec.exit_crit_edge:           ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mem_cgroup_lruvec.exit

if.then7.i:                                       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %pgdat4.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @contig_page_data, ptr %pgdat4.i, align 4
  br label %mem_cgroup_lruvec.exit

mem_cgroup_lruvec.exit:                           ; preds = %if.then7.i, %out.i.mem_cgroup_lruvec.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@workingset_eviction, %lruvec_memcg.exit)) #9
          to label %if.end.i111 [label %lruvec_memcg.exit], !srcloc !79

if.end.i111:                                      ; preds = %mem_cgroup_lruvec.exit
  call void @__sanitizer_cov_trace_pc() #11
  %memcg.i = getelementptr inbounds %struct.mem_cgroup_per_node, ptr %lruvec.0.i, i32 0, i32 9
  %45 = ptrtoint ptr %memcg.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %memcg.i, align 4
  br label %lruvec_memcg.exit

lruvec_memcg.exit:                                ; preds = %if.end.i111, %mem_cgroup_lruvec.exit
  %retval.0.i = phi ptr [ %46, %if.end.i111 ], [ null, %mem_cgroup_lruvec.exit ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@workingset_eviction, %mem_cgroup_id.exit)) #9
          to label %if.end.i112 [label %mem_cgroup_id.exit], !srcloc !79

if.end.i112:                                      ; preds = %lruvec_memcg.exit
  call void @__sanitizer_cov_trace_pc() #11
  %id.i = getelementptr inbounds %struct.mem_cgroup, ptr %retval.0.i, i32 0, i32 1
  %47 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %id.i, align 8
  %phi.cast = and i32 %48, 65535
  br label %mem_cgroup_id.exit

mem_cgroup_id.exit:                               ; preds = %if.end.i112, %lruvec_memcg.exit
  %retval.0.i113 = phi i32 [ %phi.cast, %if.end.i112 ], [ 0, %lruvec_memcg.exit ]
  %nonresident_age = getelementptr inbounds %struct.lruvec, ptr %lruvec.0.i, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nonresident_age, i32 noundef 4) #9
  %49 = ptrtoint ptr %nonresident_age to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %nonresident_age, align 4
  %51 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %2, align 4
  %and.i.i114 = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i114)
  %tobool.not.i115 = icmp eq i32 %and.i.i114, 0
  br i1 %tobool.not.i115, label %mem_cgroup_id.exit.do.body.i_crit_edge, label %if.then.i116, !prof !80

mem_cgroup_id.exit.do.body.i_crit_edge:           ; preds = %mem_cgroup_id.exit
  br label %do.body.i

if.then.i116:                                     ; preds = %mem_cgroup_id.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.6) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 347, 0\0A.popsection", ""() #9, !srcloc !88
  unreachable

do.body.i:                                        ; preds = %parent_lruvec.exit.i.do.body.i_crit_edge, %mem_cgroup_id.exit.do.body.i_crit_edge
  %lruvec.addr.0.i = phi ptr [ %lruvec.0.i.i.i, %parent_lruvec.exit.i.do.body.i_crit_edge ], [ %lruvec.0.i, %mem_cgroup_id.exit.do.body.i_crit_edge ]
  %nonresident_age.i = getelementptr inbounds %struct.lruvec, ptr %lruvec.addr.0.i, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nonresident_age.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %nonresident_age.i, i32 1, i32 3, i32 1) #9
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nonresident_age.i, ptr %nonresident_age.i, i32 1, ptr elementtype(i32) %nonresident_age.i) #9, !srcloc !78
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@workingset_eviction, %lruvec_memcg.exit.i.i)) #9
          to label %if.end.i.i.i [label %lruvec_memcg.exit.i.i], !srcloc !79

if.end.i.i.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %memcg.i.i.i = getelementptr inbounds %struct.mem_cgroup_per_node, ptr %lruvec.addr.0.i, i32 0, i32 9
  %54 = ptrtoint ptr %memcg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %memcg.i.i.i, align 4
  br label %lruvec_memcg.exit.i.i

lruvec_memcg.exit.i.i:                            ; preds = %if.end.i.i.i, %do.body.i
  %retval.0.i.i.i = phi ptr [ %55, %if.end.i.i.i ], [ null, %do.body.i ]
  %tobool.not.i.i117 = icmp eq ptr %retval.0.i.i.i, null
  br i1 %tobool.not.i.i117, label %lruvec_memcg.exit.i.i.workingset_age_nonresident.exit_crit_edge, label %if.end.i.i118

lruvec_memcg.exit.i.i.workingset_age_nonresident.exit_crit_edge: ; preds = %lruvec_memcg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %workingset_age_nonresident.exit

if.end.i.i118:                                    ; preds = %lruvec_memcg.exit.i.i
  %parent.i.i.i = getelementptr inbounds %struct.mem_cgroup, ptr %retval.0.i.i.i, i32 0, i32 2, i32 13
  %56 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %parent.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %57, null
  %add.ptr.i.i.i = getelementptr i8, ptr %57, i32 -176
  %tobool2.not14.i.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool2.not.i.i = or i1 %tobool.not.i.i.i, %tobool2.not14.i.i
  br i1 %tobool2.not.i.i, label %if.end.i.i118.workingset_age_nonresident.exit_crit_edge, label %if.end4.i.i

if.end.i.i118.workingset_age_nonresident.exit_crit_edge: ; preds = %if.end.i.i118
  call void @__sanitizer_cov_trace_pc() #11
  br label %workingset_age_nonresident.exit

if.end4.i.i:                                      ; preds = %if.end.i.i118
  %pgdat.i.i.i = getelementptr inbounds %struct.lruvec, ptr %lruvec.addr.0.i, i32 0, i32 7
  %58 = ptrtoint ptr %pgdat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pgdat.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@workingset_eviction, %if.then.i.i.i)) #9
          to label %if.end2.i.i.i [label %if.then.i.i.i], !srcloc !79

if.then.i.i.i:                                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %__lruvec.i.i.i = getelementptr inbounds %struct.pglist_data, ptr %59, i32 0, i32 26
  br label %out.i.i.i

if.end2.i.i.i:                                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %node_id.i.i.i = getelementptr inbounds %struct.pglist_data, ptr %59, i32 0, i32 8
  %60 = ptrtoint ptr %node_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %node_id.i.i.i, align 64
  %arrayidx.i.i.i = getelementptr %struct.mem_cgroup, ptr %add.ptr.i.i.i, i32 0, i32 45, i32 %61
  %62 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i.i.i, align 4
  br label %out.i.i.i

out.i.i.i:                                        ; preds = %if.end2.i.i.i, %if.then.i.i.i
  %lruvec.0.i.i.i = phi ptr [ %__lruvec.i.i.i, %if.then.i.i.i ], [ %63, %if.end2.i.i.i ]
  %pgdat4.i.i.i = getelementptr inbounds %struct.lruvec, ptr %lruvec.0.i.i.i, i32 0, i32 7
  %64 = ptrtoint ptr %pgdat4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pgdat4.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %65, %59
  br i1 %cmp.not.i.i.i, label %out.i.i.i.parent_lruvec.exit.i_crit_edge, label %if.then7.i.i.i, !prof !80

out.i.i.i.parent_lruvec.exit.i_crit_edge:         ; preds = %out.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %parent_lruvec.exit.i

if.then7.i.i.i:                                   ; preds = %out.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %pgdat4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %59, ptr %pgdat4.i.i.i, align 4
  br label %parent_lruvec.exit.i

parent_lruvec.exit.i:                             ; preds = %if.then7.i.i.i, %out.i.i.i.parent_lruvec.exit.i_crit_edge
  %tobool.not.i119 = icmp eq ptr %lruvec.0.i.i.i, null
  br i1 %tobool.not.i119, label %parent_lruvec.exit.i.workingset_age_nonresident.exit_crit_edge, label %parent_lruvec.exit.i.do.body.i_crit_edge

parent_lruvec.exit.i.do.body.i_crit_edge:         ; preds = %parent_lruvec.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

parent_lruvec.exit.i.workingset_age_nonresident.exit_crit_edge: ; preds = %parent_lruvec.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %workingset_age_nonresident.exit

workingset_age_nonresident.exit:                  ; preds = %parent_lruvec.exit.i.workingset_age_nonresident.exit_crit_edge, %if.end.i.i118.workingset_age_nonresident.exit_crit_edge, %lruvec_memcg.exit.i.i.workingset_age_nonresident.exit_crit_edge
  %67 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %2, align 4
  %and.i.i79 = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i79)
  %tobool.not.i.i80 = icmp eq i32 %and.i.i79, 0
  br i1 %tobool.not.i.i80, label %if.end.i.i83, label %if.then.i.i82, !prof !80

if.then.i.i82:                                    ; preds = %workingset_age_nonresident.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i81 = add i32 %68, -1
  br label %_compound_head.exit.i88

if.end.i.i83:                                     ; preds = %workingset_age_nonresident.exit
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i88

_compound_head.exit.i88:                          ; preds = %if.end.i.i83, %if.then.i.i82
  %retval.0.i.i84 = phi i32 [ %sub.i.i81, %if.then.i.i82 ], [ %69, %if.end.i.i83 ]
  %70 = inttoptr i32 %retval.0.i.i84 to ptr
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %72)
  %cmp.i.not.i85 = icmp eq i32 %72, -1
  %73 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %2, align 4
  %and.i13.i86 = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i86)
  %tobool.not.i14.i87 = icmp eq i32 %and.i13.i86, 0
  br i1 %cmp.i.not.i85, label %if.then.i89, label %do.end8.i95, !prof !81

if.then.i89:                                      ; preds = %_compound_head.exit.i88
  br i1 %tobool.not.i14.i87, label %if.end.i17.i92, label %if.then.i16.i91, !prof !80

if.then.i16.i91:                                  ; preds = %if.then.i89
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i15.i90 = add i32 %74, -1
  br label %_compound_head.exit19.i94

if.end.i17.i92:                                   ; preds = %if.then.i89
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %page to i32
  br label %_compound_head.exit19.i94

_compound_head.exit19.i94:                        ; preds = %if.end.i17.i92, %if.then.i16.i91
  %retval.0.i18.i93 = phi i32 [ %sub.i15.i90, %if.then.i16.i91 ], [ %75, %if.end.i17.i92 ]
  %76 = inttoptr i32 %retval.0.i18.i93 to ptr
  tail call void @dump_page(ptr noundef %76, ptr noundef nonnull @.str.5) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #9, !srcloc !89
  unreachable

do.end8.i95:                                      ; preds = %_compound_head.exit.i88
  br i1 %tobool.not.i14.i87, label %if.end.i24.i98, label %if.then.i23.i97, !prof !80

if.then.i23.i97:                                  ; preds = %do.end8.i95
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i22.i96 = add i32 %74, -1
  br label %PageWorkingset.exit

if.end.i24.i98:                                   ; preds = %do.end8.i95
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %page to i32
  br label %PageWorkingset.exit

PageWorkingset.exit:                              ; preds = %if.end.i24.i98, %if.then.i23.i97
  %retval.0.i25.i99 = phi i32 [ %sub.i22.i96, %if.then.i23.i97 ], [ %77, %if.end.i24.i98 ]
  %78 = inttoptr i32 %retval.0.i25.i99 to ptr
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %78, align 4
  %81 = load i32, ptr @bucket_order, align 4
  %shr.i = lshr i32 %50, %81
  %and.i = shl i32 %shr.i, 16
  %shl.i = and i32 %and.i, 1073676288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 8) to i32))
  %82 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 8), align 64
  %or.i = or i32 %82, %retval.0.i113
  %or2.i = or i32 %or.i, %shl.i
  %shl3.i = shl i32 %or2.i, 1
  %83 = lshr i32 %80, 6
  %.lobit = and i32 %83, 1
  %or4.i = or i32 %shl3.i, %.lobit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or4.i)
  %cmp.i.i = icmp slt i32 %or4.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %PageWorkingset.exit.pack_shadow.exit_crit_edge, !prof !81

PageWorkingset.exit.pack_shadow.exit_crit_edge:   ; preds = %PageWorkingset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %pack_shadow.exit

do.end.i.i:                                       ; preds = %PageWorkingset.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 54, i32 noundef 9, ptr noundef null) #9
  br label %pack_shadow.exit

pack_shadow.exit:                                 ; preds = %do.end.i.i, %PageWorkingset.exit.pack_shadow.exit_crit_edge
  %shl.i.i = shl i32 %or4.i, 1
  %or.i.i = or i32 %shl.i.i, 1
  %84 = inttoptr i32 %or.i.i to ptr
  ret ptr %84
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @workingset_refault(ptr noundef %folio, ptr noundef %shadow) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_is_file_lru.exit, label %if.then.i.i.i, !prof !80

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.6) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !90
  unreachable

folio_is_file_lru.exit:                           ; preds = %entry
  %3 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %folio, align 4
  %5 = and i32 %4, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.not = icmp eq i32 %5, 0
  %6 = ptrtoint ptr %shadow to i32
  %shr.i = lshr i32 %6, 2
  %shr5.i = lshr i32 %6, 18
  %7 = load i32, ptr @bucket_order, align 4
  %shl.i = shl i32 %shr5.i, %7
  %8 = tail call i32 @llvm.read_register.i32(metadata !68) #9
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !91
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %folio_is_file_lru.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

folio_is_file_lru.exit.rcu_read_lock.exit_crit_edge: ; preds = %folio_is_file_lru.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %folio_is_file_lru.exit
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %folio_is_file_lru.exit.rcu_read_lock.exit_crit_edge
  %conv = trunc i32 %shr.i to i16
  %call1 = tail call ptr @mem_cgroup_from_id(i16 noundef zeroext %conv) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@workingset_refault, %mem_cgroup_disabled.exit.thread)) #9
          to label %mem_cgroup_disabled.exit [label %mem_cgroup_disabled.exit.thread], !srcloc !79

mem_cgroup_disabled.exit.thread:                  ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  %tobool3.not148 = icmp eq ptr %call1, null
  br label %if.end

mem_cgroup_disabled.exit:                         ; preds = %rcu_read_lock.exit
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %mem_cgroup_disabled.exit.out_crit_edge, label %mem_cgroup_disabled.exit.if.end_crit_edge

mem_cgroup_disabled.exit.if.end_crit_edge:        ; preds = %mem_cgroup_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

mem_cgroup_disabled.exit.out_crit_edge:           ; preds = %mem_cgroup_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %mem_cgroup_disabled.exit.if.end_crit_edge, %mem_cgroup_disabled.exit.thread
  %tobool3.not150 = phi i1 [ %tobool3.not148, %mem_cgroup_disabled.exit.thread ], [ false, %mem_cgroup_disabled.exit.if.end_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@workingset_refault, %out.i)) #9
          to label %if.end.i [label %out.i], !srcloc !79

if.end.i:                                         ; preds = %if.end
  br i1 %tobool3.not150, label %if.then1.i, label %if.end.i.if.end2.i_crit_edge

if.end.i.if.end2.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @root_mem_cgroup to i32))
  %12 = load ptr, ptr @root_mem_cgroup, align 4
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.then1.i, %if.end.i.if.end2.i_crit_edge
  %memcg.addr.0.i = phi ptr [ %call1, %if.end.i.if.end2.i_crit_edge ], [ %12, %if.then1.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 8) to i32))
  %13 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 8), align 64
  %arrayidx.i = getelementptr %struct.mem_cgroup, ptr %memcg.addr.0.i, i32 0, i32 45, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  br label %out.i

out.i:                                            ; preds = %if.end2.i, %if.end
  %lruvec.0.i = phi ptr [ %15, %if.end2.i ], [ getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 26), %if.end ]
  %pgdat4.i = getelementptr inbounds %struct.lruvec, ptr %lruvec.0.i, i32 0, i32 7
  %16 = ptrtoint ptr %pgdat4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pgdat4.i, align 4
  %cmp.not.i = icmp eq ptr %17, @contig_page_data
  br i1 %cmp.not.i, label %out.i.mem_cgroup_lruvec.exit_crit_edge, label %if.then7.i, !prof !80

out.i.mem_cgroup_lruvec.exit_crit_edge:           ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mem_cgroup_lruvec.exit

if.then7.i:                                       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %pgdat4.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @contig_page_data, ptr %pgdat4.i, align 4
  br label %mem_cgroup_lruvec.exit

mem_cgroup_lruvec.exit:                           ; preds = %if.then7.i, %out.i.mem_cgroup_lruvec.exit_crit_edge
  %nonresident_age = getelementptr inbounds %struct.lruvec, ptr %lruvec.0.i, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nonresident_age, i32 noundef 4) #9
  %19 = ptrtoint ptr %nonresident_age to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %nonresident_age, align 4
  %sub = sub i32 %20, %shl.i
  %and = and i32 %sub, 16383
  %21 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp.i.not.i.i.i = icmp eq i32 %22, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i70, label %PageHead.exit.i.i, !prof !81

if.then.i.i.i70:                                  ; preds = %mem_cgroup_lruvec.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.11) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !92
  unreachable

PageHead.exit.i.i:                                ; preds = %mem_cgroup_lruvec.exit
  %23 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %folio, align 4
  %25 = and i32 %24, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i71 = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i71, label %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge, label %if.end.i.i

PageHead.exit.i.i.folio_nr_pages.exit_crit_edge:  ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %folio_nr_pages.exit

if.end.i.i:                                       ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %compound_nr.i.i = getelementptr %struct.page, ptr %folio, i32 1, i32 1, i32 0, i32 2
  %26 = ptrtoint ptr %compound_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %compound_nr.i.i, align 4
  br label %folio_nr_pages.exit

folio_nr_pages.exit:                              ; preds = %if.end.i.i, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge
  %retval.0.i.i72 = phi i32 [ %27, %if.end.i.i ], [ 1, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge ]
  %call7 = tail call fastcc ptr @folio_memcg(ptr noundef %folio)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@workingset_refault, %out.i85)) #9
          to label %if.end.i76 [label %out.i85], !srcloc !79

if.end.i76:                                       ; preds = %folio_nr_pages.exit
  %tobool.not.i75 = icmp eq ptr %call7, null
  br i1 %tobool.not.i75, label %if.then1.i77, label %if.end.i76.if.end2.i81_crit_edge

if.end.i76.if.end2.i81_crit_edge:                 ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2.i81

if.then1.i77:                                     ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @root_mem_cgroup to i32))
  %28 = load ptr, ptr @root_mem_cgroup, align 4
  br label %if.end2.i81

if.end2.i81:                                      ; preds = %if.then1.i77, %if.end.i76.if.end2.i81_crit_edge
  %memcg.addr.0.i78 = phi ptr [ %call7, %if.end.i76.if.end2.i81_crit_edge ], [ %28, %if.then1.i77 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 8) to i32))
  %29 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 8), align 64
  %arrayidx.i80 = getelementptr %struct.mem_cgroup, ptr %memcg.addr.0.i78, i32 0, i32 45, i32 %29
  %30 = ptrtoint ptr %arrayidx.i80 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i80, align 4
  br label %out.i85

out.i85:                                          ; preds = %if.end2.i81, %folio_nr_pages.exit
  %lruvec.0.i82 = phi ptr [ %31, %if.end2.i81 ], [ getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 26), %folio_nr_pages.exit ]
  %pgdat4.i83 = getelementptr inbounds %struct.lruvec, ptr %lruvec.0.i82, i32 0, i32 7
  %32 = ptrtoint ptr %pgdat4.i83 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pgdat4.i83, align 4
  %cmp.not.i84 = icmp eq ptr %33, @contig_page_data
  br i1 %cmp.not.i84, label %out.i85.mem_cgroup_lruvec.exit87_crit_edge, label %if.then7.i86, !prof !80

out.i85.mem_cgroup_lruvec.exit87_crit_edge:       ; preds = %out.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %mem_cgroup_lruvec.exit87

if.then7.i86:                                     ; preds = %out.i85
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %pgdat4.i83 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @contig_page_data, ptr %pgdat4.i83, align 4
  br label %mem_cgroup_lruvec.exit87

mem_cgroup_lruvec.exit87:                         ; preds = %if.then7.i86, %out.i85.mem_cgroup_lruvec.exit87_crit_edge
  %add = select i1 %tobool.not.not, i32 11, i32 10
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !93
  %and.i.i = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i88 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i88, label %if.then21.i, label %do.end11.i

do.end11.i:                                       ; preds = %mem_cgroup_lruvec.exit87
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mod_lruvec_state(ptr noundef %lruvec.0.i82, i32 noundef %add, i32 noundef %retval.0.i.i72) #9
  br label %do.body23.i

if.then21.i:                                      ; preds = %mem_cgroup_lruvec.exit87
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  tail call void @__mod_lruvec_state(ptr noundef %lruvec.0.i82, i32 noundef %add, i32 noundef %retval.0.i.i72) #9
  tail call void @trace_hardirqs_on() #9
  br label %do.body23.i

do.body23.i:                                      ; preds = %if.then21.i, %do.end11.i
  %36 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !94
  %and.i.i.i89 = and i32 %36, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i89)
  %tobool32.not.i = icmp eq i32 %and.i.i.i89, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body23.i.mod_lruvec_state.exit_crit_edge, !prof !81

do.body23.i.mod_lruvec_state.exit_crit_edge:      ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mod_lruvec_state.exit

if.then36.i:                                      ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %mod_lruvec_state.exit

mod_lruvec_state.exit:                            ; preds = %if.then36.i, %do.body23.i.mod_lruvec_state.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %35) #9, !srcloc !95
  tail call void @mem_cgroup_flush_stats() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@workingset_refault, %if.then.i90)) #9
          to label %if.end.i92 [label %if.then.i90], !srcloc !79

if.then.i90:                                      ; preds = %mod_lruvec_state.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 3), i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 3) to i32))
  %37 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 3), align 4
  %38 = tail call i32 @llvm.smax.i32(i32 %37, i32 0) #9
  br label %lruvec_page_state.exit

if.end.i92:                                       ; preds = %mod_lruvec_state.exit
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i91 = getelementptr %struct.mem_cgroup_per_node, ptr %lruvec.0.i, i32 0, i32 2, i32 0, i32 3
  %39 = ptrtoint ptr %arrayidx.i91 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %arrayidx.i91, align 4
  br label %lruvec_page_state.exit

lruvec_page_state.exit:                           ; preds = %if.end.i92, %if.then.i90
  %retval.0.i = phi i32 [ %38, %if.then.i90 ], [ %40, %if.end.i92 ]
  br i1 %tobool.not.not, label %lruvec_page_state.exit.if.end16_crit_edge, label %if.then13

lruvec_page_state.exit.if.end16_crit_edge:        ; preds = %lruvec_page_state.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then13:                                        ; preds = %lruvec_page_state.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@workingset_refault, %if.then.i93)) #9
          to label %if.end.i97 [label %if.then.i93], !srcloc !79

if.then.i93:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.i94 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 2), i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 2) to i32))
  %41 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 2), align 4
  %42 = tail call i32 @llvm.smax.i32(i32 %41, i32 0) #9
  br label %lruvec_page_state.exit99

if.end.i97:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i96 = getelementptr %struct.mem_cgroup_per_node, ptr %lruvec.0.i, i32 0, i32 2, i32 0, i32 2
  %43 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %arrayidx.i96, align 4
  br label %lruvec_page_state.exit99

lruvec_page_state.exit99:                         ; preds = %if.end.i97, %if.then.i93
  %retval.0.i98 = phi i32 [ %42, %if.then.i93 ], [ %44, %if.end.i97 ]
  %add15 = add i32 %retval.0.i98, %retval.0.i
  br label %if.end16

if.end16:                                         ; preds = %lruvec_page_state.exit99, %lruvec_page_state.exit.if.end16_crit_edge
  %workingset_size.0 = phi i32 [ %retval.0.i, %lruvec_page_state.exit.if.end16_crit_edge ], [ %add15, %lruvec_page_state.exit99 ]
  %call17 = tail call i32 @mem_cgroup_get_nr_swap_pages(ptr noundef %call7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp sgt i32 %call17, 0
  br i1 %cmp, label %if.then19, label %if.end16.if.end27_crit_edge

if.end16.if.end27_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then19:                                        ; preds = %if.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@workingset_refault, %if.then.i100)) #9
          to label %if.end.i104 [label %if.then.i100], !srcloc !79

if.then.i100:                                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.i101 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 1), i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 1) to i32))
  %45 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 1), align 4
  %46 = tail call i32 @llvm.smax.i32(i32 %45, i32 0) #9
  br label %lruvec_page_state.exit106

if.end.i104:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i103 = getelementptr %struct.mem_cgroup_per_node, ptr %lruvec.0.i, i32 0, i32 2, i32 0, i32 1
  %47 = ptrtoint ptr %arrayidx.i103 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %arrayidx.i103, align 4
  br label %lruvec_page_state.exit106

lruvec_page_state.exit106:                        ; preds = %if.end.i104, %if.then.i100
  %retval.0.i105 = phi i32 [ %46, %if.then.i100 ], [ %48, %if.end.i104 ]
  %add21 = add i32 %retval.0.i105, %workingset_size.0
  br i1 %tobool.not.not, label %if.then23, label %lruvec_page_state.exit106.if.end27_crit_edge

lruvec_page_state.exit106.if.end27_crit_edge:     ; preds = %lruvec_page_state.exit106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then23:                                        ; preds = %lruvec_page_state.exit106
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@workingset_refault, %if.then.i107)) #9
          to label %if.end.i110 [label %if.then.i107], !srcloc !79

if.then.i107:                                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.i108 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @vm_node_stat, i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_node_stat to i32))
  %49 = load volatile i32, ptr @vm_node_stat, align 4
  %50 = tail call i32 @llvm.smax.i32(i32 %49, i32 0) #9
  br label %lruvec_page_state.exit112

if.end.i110:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  %lruvec_stats.i109 = getelementptr inbounds %struct.mem_cgroup_per_node, ptr %lruvec.0.i, i32 0, i32 2
  %51 = ptrtoint ptr %lruvec_stats.i109 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %lruvec_stats.i109, align 4
  br label %lruvec_page_state.exit112

lruvec_page_state.exit112:                        ; preds = %if.end.i110, %if.then.i107
  %retval.0.i111 = phi i32 [ %50, %if.then.i107 ], [ %52, %if.end.i110 ]
  %add25 = add i32 %retval.0.i111, %add21
  br label %if.end27

if.end27:                                         ; preds = %lruvec_page_state.exit112, %lruvec_page_state.exit106.if.end27_crit_edge, %if.end16.if.end27_crit_edge
  %workingset_size.1 = phi i32 [ %add25, %lruvec_page_state.exit112 ], [ %add21, %lruvec_page_state.exit106.if.end27_crit_edge ], [ %workingset_size.0, %if.end16.if.end27_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %workingset_size.1)
  %cmp28 = icmp ugt i32 %and, %workingset_size.1
  br i1 %cmp28, label %if.end27.out_crit_edge, label %if.end31

if.end27.out_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end31:                                         ; preds = %if.end27
  %53 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_set_active.exit, label %if.then.i.i, !prof !80

if.then.i.i:                                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.6) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !90
  unreachable

folio_set_active.exit:                            ; preds = %if.end31
  tail call void @_set_bit(i32 noundef 5, ptr noundef %folio) #9
  br label %do.body.i

do.body.i:                                        ; preds = %parent_lruvec.exit.i.do.body.i_crit_edge, %folio_set_active.exit
  %lruvec.addr.0.i = phi ptr [ %lruvec.0.i82, %folio_set_active.exit ], [ %lruvec.0.i.i.i, %parent_lruvec.exit.i.do.body.i_crit_edge ]
  %nonresident_age.i = getelementptr inbounds %struct.lruvec, ptr %lruvec.addr.0.i, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nonresident_age.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %nonresident_age.i, i32 1, i32 3, i32 1) #9
  %55 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nonresident_age.i, ptr %nonresident_age.i, i32 %retval.0.i.i72, ptr elementtype(i32) %nonresident_age.i) #9, !srcloc !78
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@workingset_refault, %lruvec_memcg.exit.i.i)) #9
          to label %if.end.i.i.i [label %lruvec_memcg.exit.i.i], !srcloc !79

if.end.i.i.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %memcg.i.i.i = getelementptr inbounds %struct.mem_cgroup_per_node, ptr %lruvec.addr.0.i, i32 0, i32 9
  %56 = ptrtoint ptr %memcg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %memcg.i.i.i, align 4
  br label %lruvec_memcg.exit.i.i

lruvec_memcg.exit.i.i:                            ; preds = %if.end.i.i.i, %do.body.i
  %retval.0.i.i.i = phi ptr [ %57, %if.end.i.i.i ], [ null, %do.body.i ]
  %tobool.not.i.i113 = icmp eq ptr %retval.0.i.i.i, null
  br i1 %tobool.not.i.i113, label %lruvec_memcg.exit.i.i.workingset_age_nonresident.exit_crit_edge, label %if.end.i.i115

lruvec_memcg.exit.i.i.workingset_age_nonresident.exit_crit_edge: ; preds = %lruvec_memcg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %workingset_age_nonresident.exit

if.end.i.i115:                                    ; preds = %lruvec_memcg.exit.i.i
  %parent.i.i.i = getelementptr inbounds %struct.mem_cgroup, ptr %retval.0.i.i.i, i32 0, i32 2, i32 13
  %58 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %parent.i.i.i, align 4
  %tobool.not.i.i.i114 = icmp eq ptr %59, null
  %add.ptr.i.i.i = getelementptr i8, ptr %59, i32 -176
  %tobool2.not14.i.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool2.not.i.i = or i1 %tobool.not.i.i.i114, %tobool2.not14.i.i
  br i1 %tobool2.not.i.i, label %if.end.i.i115.workingset_age_nonresident.exit_crit_edge, label %if.end4.i.i

if.end.i.i115.workingset_age_nonresident.exit_crit_edge: ; preds = %if.end.i.i115
  call void @__sanitizer_cov_trace_pc() #11
  br label %workingset_age_nonresident.exit

if.end4.i.i:                                      ; preds = %if.end.i.i115
  %pgdat.i.i.i = getelementptr inbounds %struct.lruvec, ptr %lruvec.addr.0.i, i32 0, i32 7
  %60 = ptrtoint ptr %pgdat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pgdat.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@workingset_refault, %if.then.i.i.i116)) #9
          to label %if.end2.i.i.i [label %if.then.i.i.i116], !srcloc !79

if.then.i.i.i116:                                 ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %__lruvec.i.i.i = getelementptr inbounds %struct.pglist_data, ptr %61, i32 0, i32 26
  br label %out.i.i.i

if.end2.i.i.i:                                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %node_id.i.i.i = getelementptr inbounds %struct.pglist_data, ptr %61, i32 0, i32 8
  %62 = ptrtoint ptr %node_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %node_id.i.i.i, align 64
  %arrayidx.i.i.i = getelementptr %struct.mem_cgroup, ptr %add.ptr.i.i.i, i32 0, i32 45, i32 %63
  %64 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i.i.i, align 4
  br label %out.i.i.i

out.i.i.i:                                        ; preds = %if.end2.i.i.i, %if.then.i.i.i116
  %lruvec.0.i.i.i = phi ptr [ %__lruvec.i.i.i, %if.then.i.i.i116 ], [ %65, %if.end2.i.i.i ]
  %pgdat4.i.i.i = getelementptr inbounds %struct.lruvec, ptr %lruvec.0.i.i.i, i32 0, i32 7
  %66 = ptrtoint ptr %pgdat4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pgdat4.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %67, %61
  br i1 %cmp.not.i.i.i, label %out.i.i.i.parent_lruvec.exit.i_crit_edge, label %if.then7.i.i.i, !prof !80

out.i.i.i.parent_lruvec.exit.i_crit_edge:         ; preds = %out.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %parent_lruvec.exit.i

if.then7.i.i.i:                                   ; preds = %out.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %pgdat4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %61, ptr %pgdat4.i.i.i, align 4
  br label %parent_lruvec.exit.i

parent_lruvec.exit.i:                             ; preds = %if.then7.i.i.i, %out.i.i.i.parent_lruvec.exit.i_crit_edge
  %tobool.not.i117 = icmp eq ptr %lruvec.0.i.i.i, null
  br i1 %tobool.not.i117, label %parent_lruvec.exit.i.workingset_age_nonresident.exit_crit_edge, label %parent_lruvec.exit.i.do.body.i_crit_edge

parent_lruvec.exit.i.do.body.i_crit_edge:         ; preds = %parent_lruvec.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

parent_lruvec.exit.i.workingset_age_nonresident.exit_crit_edge: ; preds = %parent_lruvec.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %workingset_age_nonresident.exit

workingset_age_nonresident.exit:                  ; preds = %parent_lruvec.exit.i.workingset_age_nonresident.exit_crit_edge, %if.end.i.i115.workingset_age_nonresident.exit_crit_edge, %lruvec_memcg.exit.i.i.workingset_age_nonresident.exit_crit_edge
  %add34 = select i1 %tobool.not.not, i32 13, i32 12
  %69 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !93
  %and.i.i118 = and i32 %69, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i118)
  %tobool.not.i119 = icmp eq i32 %and.i.i118, 0
  br i1 %tobool.not.i119, label %if.then21.i121, label %do.end11.i120

do.end11.i120:                                    ; preds = %workingset_age_nonresident.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mod_lruvec_state(ptr noundef %lruvec.0.i82, i32 noundef %add34, i32 noundef %retval.0.i.i72) #9
  br label %do.body23.i124

if.then21.i121:                                   ; preds = %workingset_age_nonresident.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  tail call void @__mod_lruvec_state(ptr noundef %lruvec.0.i82, i32 noundef %add34, i32 noundef %retval.0.i.i72) #9
  tail call void @trace_hardirqs_on() #9
  br label %do.body23.i124

do.body23.i124:                                   ; preds = %if.then21.i121, %do.end11.i120
  %70 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !94
  %and.i.i.i122 = and i32 %70, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i122)
  %tobool32.not.i123 = icmp eq i32 %and.i.i.i122, 0
  br i1 %tobool32.not.i123, label %if.then36.i125, label %do.body23.i124.mod_lruvec_state.exit126_crit_edge, !prof !81

do.body23.i124.mod_lruvec_state.exit126_crit_edge: ; preds = %do.body23.i124
  call void @__sanitizer_cov_trace_pc() #11
  br label %mod_lruvec_state.exit126

if.then36.i125:                                   ; preds = %do.body23.i124
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %mod_lruvec_state.exit126

mod_lruvec_state.exit126:                         ; preds = %if.then36.i125, %do.body23.i124.mod_lruvec_state.exit126_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %69) #9, !srcloc !95
  %71 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool35.not = icmp eq i32 %71, 0
  br i1 %tobool35.not, label %mod_lruvec_state.exit126.out_crit_edge, label %if.then36

mod_lruvec_state.exit126.out_crit_edge:           ; preds = %mod_lruvec_state.exit126
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then36:                                        ; preds = %mod_lruvec_state.exit126
  %72 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %0, align 4
  %and.i.i.i65 = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i65)
  %tobool.not.i.i66 = icmp eq i32 %and.i.i.i65, 0
  br i1 %tobool.not.i.i66, label %folio_set_workingset.exit, label %if.then.i.i67, !prof !80

if.then.i.i67:                                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.6) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !90
  unreachable

folio_set_workingset.exit:                        ; preds = %if.then36
  tail call void @_set_bit(i32 noundef 6, ptr noundef %folio) #9
  tail call void @lru_note_cost_folio(ptr noundef %folio) #9
  %add39 = select i1 %tobool.not.not, i32 15, i32 14
  %74 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !93
  %and.i.i127 = and i32 %74, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i127)
  %tobool.not.i128 = icmp eq i32 %and.i.i127, 0
  br i1 %tobool.not.i128, label %if.then21.i130, label %do.end11.i129

do.end11.i129:                                    ; preds = %folio_set_workingset.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mod_lruvec_state(ptr noundef %lruvec.0.i82, i32 noundef %add39, i32 noundef %retval.0.i.i72) #9
  br label %do.body23.i133

if.then21.i130:                                   ; preds = %folio_set_workingset.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  tail call void @__mod_lruvec_state(ptr noundef %lruvec.0.i82, i32 noundef %add39, i32 noundef %retval.0.i.i72) #9
  tail call void @trace_hardirqs_on() #9
  br label %do.body23.i133

do.body23.i133:                                   ; preds = %if.then21.i130, %do.end11.i129
  %75 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !94
  %and.i.i.i131 = and i32 %75, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i131)
  %tobool32.not.i132 = icmp eq i32 %and.i.i.i131, 0
  br i1 %tobool32.not.i132, label %if.then36.i134, label %do.body23.i133.mod_lruvec_state.exit135_crit_edge, !prof !81

do.body23.i133.mod_lruvec_state.exit135_crit_edge: ; preds = %do.body23.i133
  call void @__sanitizer_cov_trace_pc() #11
  br label %mod_lruvec_state.exit135

if.then36.i134:                                   ; preds = %do.body23.i133
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %mod_lruvec_state.exit135

mod_lruvec_state.exit135:                         ; preds = %if.then36.i134, %do.body23.i133.mod_lruvec_state.exit135_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %74) #9, !srcloc !95
  br label %out

out:                                              ; preds = %mod_lruvec_state.exit135, %mod_lruvec_state.exit126.out_crit_edge, %if.end27.out_crit_edge, %mem_cgroup_disabled.exit.out_crit_edge
  %call.i136 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i136, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i139

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i139:                               ; preds = %out
  %call1.i137 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i137)
  %tobool.not.i138 = icmp eq i32 %call1.i137, 0
  br i1 %tobool.not.i138, label %land.lhs.true.i139.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i141

land.lhs.true.i139.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i141:                              ; preds = %land.lhs.true.i139
  %.b4.i140 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i140, label %land.lhs.true2.i141.rcu_read_unlock.exit_crit_edge, label %if.then.i142

land.lhs.true2.i141.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i141
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i142:                                     ; preds = %land.lhs.true2.i141
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.19) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i142, %land.lhs.true2.i141.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i139.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !96
  %76 = tail call i32 @llvm.read_register.i32(metadata !68) #9
  %and.i.i.i.i.i143 = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i.i.i143 to ptr
  %preempt_count.i.i.i.i144 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %preempt_count.i.i.i.i144 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %preempt_count.i.i.i.i144, align 4
  %sub.i.i.i = add i32 %79, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i144, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mem_cgroup_from_id(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @folio_memcg(ptr noundef %folio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !80

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.12) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/memcontrol.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 537, 0\0A.popsection", ""() #9, !srcloc !97
  unreachable

do.body7.i:                                       ; preds = %entry
  %memcg_data.i = getelementptr inbounds %struct.anon.83, ptr %folio, i32 0, i32 7
  %3 = ptrtoint ptr %memcg_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %memcg_data.i, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool8.not.i, label %folio_memcg_kmem.exit, label %if.then15.i, !prof !80

if.then15.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.13) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/memcontrol.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 538, 0\0A.popsection", ""() #9, !srcloc !98
  unreachable

folio_memcg_kmem.exit:                            ; preds = %do.body7.i
  %and23.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.i.not = icmp eq i32 %and23.i, 0
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %0, align 4
  %and.i.i.i.i9 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i9)
  %tobool.not.i.i.i10 = icmp eq i32 %and.i.i.i.i9, 0
  br i1 %tobool24.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %folio_memcg_kmem.exit
  br i1 %tobool.not.i.i.i10, label %folio_test_slab.exit.i, label %if.then.i.i.i, !prof !80

if.then.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.6) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !90
  unreachable

folio_test_slab.exit.i:                           ; preds = %if.then
  %7 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %folio, align 4
  %9 = and i32 %8, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not.i = icmp eq i32 %9, 0
  br i1 %tobool.i.not.i, label %__folio_objcg.exit, label %if.then.i6, !prof !80

if.then.i6:                                       ; preds = %folio_test_slab.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.14) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/memcontrol.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 417, 0\0A.popsection", ""() #9, !srcloc !99
  unreachable

__folio_objcg.exit:                               ; preds = %folio_test_slab.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %and48.i = and i32 %4, -4
  %10 = inttoptr i32 %and48.i to ptr
  %memcg.i = getelementptr inbounds %struct.obj_cgroup, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %memcg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %memcg.i, align 4
  br label %return

if.end:                                           ; preds = %folio_memcg_kmem.exit
  br i1 %tobool.not.i.i.i10, label %folio_test_slab.exit.i13, label %if.then.i.i.i11, !prof !80

if.then.i.i.i11:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.6) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !90
  unreachable

folio_test_slab.exit.i13:                         ; preds = %if.end
  %13 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %folio, align 4
  %15 = and i32 %14, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not.i12 = icmp eq i32 %15, 0
  br i1 %tobool.i.not.i12, label %__folio_memcg.exit, label %if.then.i14, !prof !80

if.then.i14:                                      ; preds = %folio_test_slab.exit.i13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.14) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/memcontrol.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 396, 0\0A.popsection", ""() #9, !srcloc !100
  unreachable

__folio_memcg.exit:                               ; preds = %folio_test_slab.exit.i13
  call void @__sanitizer_cov_trace_pc() #11
  %and46.i = and i32 %4, -4
  %16 = inttoptr i32 %and46.i to ptr
  br label %return

return:                                           ; preds = %__folio_memcg.exit, %__folio_objcg.exit
  %retval.0 = phi ptr [ %12, %__folio_objcg.exit ], [ %16, %__folio_memcg.exit ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mem_cgroup_flush_stats() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mem_cgroup_get_nr_swap_pages(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_note_cost_folio(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @workingset_activation(ptr noundef %folio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !91
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %memcg_data1.i = getelementptr inbounds %struct.anon.83, ptr %folio, i32 0, i32 7
  %4 = ptrtoint ptr %memcg_data1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %memcg_data1.i, align 4
  %6 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and.i.i.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_test_slab.exit.i, label %if.then.i.i.i, !prof !80

if.then.i.i.i:                                    ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.6) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !90
  unreachable

folio_test_slab.exit.i:                           ; preds = %rcu_read_lock.exit
  %9 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %folio, align 4
  %11 = and i32 %10, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i, label %do.end11.i, label %if.then.i6, !prof !80

if.then.i6:                                       ; preds = %folio_test_slab.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.14) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/memcontrol.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 471, 0\0A.popsection", ""() #9, !srcloc !101
  unreachable

do.end11.i:                                       ; preds = %folio_test_slab.exit.i
  %call12.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %land.rhs.i, label %do.end11.i.if.end56.i_crit_edge

do.end11.i.if.end56.i_crit_edge:                  ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56.i

land.rhs.i:                                       ; preds = %do.end11.i
  %.b76.i = load i1, ptr @folio_memcg_rcu.__already_done, align 1
  br i1 %.b76.i, label %land.rhs.i.if.end56.i_crit_edge, label %if.then30.i, !prof !80

land.rhs.i.if.end56.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56.i

if.then30.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @folio_memcg_rcu.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 472, i32 noundef 9, ptr noundef null) #9
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then30.i, %land.rhs.i.if.end56.i_crit_edge, %do.end11.i.if.end56.i_crit_edge
  %and.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool64.not.i = icmp eq i32 %and.i, 0
  %and69.i = and i32 %5, -4
  %12 = inttoptr i32 %and69.i to ptr
  br i1 %tobool64.not.i, label %if.end56.i.folio_memcg_rcu.exit_crit_edge, label %if.then65.i

if.end56.i.folio_memcg_rcu.exit_crit_edge:        ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %folio_memcg_rcu.exit

if.then65.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #11
  %memcg.i.i = getelementptr inbounds %struct.obj_cgroup, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %memcg.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %memcg.i.i, align 4
  br label %folio_memcg_rcu.exit

folio_memcg_rcu.exit:                             ; preds = %if.then65.i, %if.end56.i.folio_memcg_rcu.exit_crit_edge
  %retval.0.i = phi ptr [ %14, %if.then65.i ], [ %12, %if.end56.i.folio_memcg_rcu.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@workingset_activation, %if.end)) #9
          to label %mem_cgroup_disabled.exit [label %if.end], !srcloc !79

mem_cgroup_disabled.exit:                         ; preds = %folio_memcg_rcu.exit
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %mem_cgroup_disabled.exit.out_crit_edge, label %mem_cgroup_disabled.exit.if.end_crit_edge

mem_cgroup_disabled.exit.if.end_crit_edge:        ; preds = %mem_cgroup_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

mem_cgroup_disabled.exit.out_crit_edge:           ; preds = %mem_cgroup_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %mem_cgroup_disabled.exit.if.end_crit_edge, %folio_memcg_rcu.exit
  %call.i7 = tail call fastcc ptr @folio_memcg(ptr noundef %folio) #9
  %tobool.not.i8 = icmp eq ptr %call.i7, null
  br i1 %tobool.not.i8, label %land.rhs.i9, label %if.end.if.end35.i_crit_edge

if.end.if.end35.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

land.rhs.i9:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@workingset_activation, %if.end35.i)) #9
          to label %land.rhs5.i [label %if.end35.i], !srcloc !79

land.rhs5.i:                                      ; preds = %land.rhs.i9
  %.b50.i = load i1, ptr @folio_lruvec.__warned, align 1
  br i1 %.b50.i, label %land.rhs5.i.if.end35.i_crit_edge, label %if.then.i10, !prof !80

land.rhs5.i.if.end35.i_crit_edge:                 ; preds = %land.rhs5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

if.then.i10:                                      ; preds = %land.rhs5.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.21) #9
  store i1 true, ptr @folio_lruvec.__warned, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 746, i32 noundef 9, ptr noundef null) #9
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then.i10, %land.rhs5.i.if.end35.i_crit_edge, %land.rhs.i9, %if.end.if.end35.i_crit_edge
  %15 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp.i.not.i.i.i.i = icmp eq i32 %16, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i, label %folio_pgdat.exit.i, !prof !81

if.then.i.i.i.i:                                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.4) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #9, !srcloc !82
  unreachable

folio_pgdat.exit.i:                               ; preds = %if.end35.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@workingset_activation, %out.i.i)) #9
          to label %if.end.i.i [label %out.i.i], !srcloc !79

if.end.i.i:                                       ; preds = %folio_pgdat.exit.i
  br i1 %tobool.not.i8, label %if.then1.i.i, label %if.end.i.i.if.end2.i.i_crit_edge

if.end.i.i.if.end2.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @root_mem_cgroup to i32))
  %17 = load ptr, ptr @root_mem_cgroup, align 4
  br label %if.end2.i.i

if.end2.i.i:                                      ; preds = %if.then1.i.i, %if.end.i.i.if.end2.i.i_crit_edge
  %memcg.addr.0.i.i = phi ptr [ %call.i7, %if.end.i.i.if.end2.i.i_crit_edge ], [ %17, %if.then1.i.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 8) to i32))
  %18 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 8), align 64
  %arrayidx.i.i = getelementptr %struct.mem_cgroup, ptr %memcg.addr.0.i.i, i32 0, i32 45, i32 %18
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i, align 4
  br label %out.i.i

out.i.i:                                          ; preds = %if.end2.i.i, %folio_pgdat.exit.i
  %lruvec.0.i.i = phi ptr [ %20, %if.end2.i.i ], [ getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 26), %folio_pgdat.exit.i ]
  %pgdat4.i.i = getelementptr inbounds %struct.lruvec, ptr %lruvec.0.i.i, i32 0, i32 7
  %21 = ptrtoint ptr %pgdat4.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pgdat4.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %22, @contig_page_data
  br i1 %cmp.not.i.i, label %out.i.i.folio_lruvec.exit_crit_edge, label %if.then7.i.i, !prof !80

out.i.i.folio_lruvec.exit_crit_edge:              ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %folio_lruvec.exit

if.then7.i.i:                                     ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %pgdat4.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @contig_page_data, ptr %pgdat4.i.i, align 4
  br label %folio_lruvec.exit

folio_lruvec.exit:                                ; preds = %if.then7.i.i, %out.i.i.folio_lruvec.exit_crit_edge
  %24 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp.i.not.i.i.i = icmp eq i32 %25, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i11, label %PageHead.exit.i.i, !prof !81

if.then.i.i.i11:                                  ; preds = %folio_lruvec.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.11) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !92
  unreachable

PageHead.exit.i.i:                                ; preds = %folio_lruvec.exit
  %26 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %folio, align 4
  %28 = and i32 %27, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i, label %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge, label %if.end.i.i12

PageHead.exit.i.i.folio_nr_pages.exit_crit_edge:  ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %folio_nr_pages.exit

if.end.i.i12:                                     ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %compound_nr.i.i = getelementptr %struct.page, ptr %folio, i32 1, i32 1, i32 0, i32 2
  %29 = ptrtoint ptr %compound_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %compound_nr.i.i, align 4
  br label %folio_nr_pages.exit

folio_nr_pages.exit:                              ; preds = %if.end.i.i12, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge
  %retval.0.i.i13 = phi i32 [ %30, %if.end.i.i12 ], [ 1, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge ]
  br label %do.body.i

do.body.i:                                        ; preds = %parent_lruvec.exit.i.do.body.i_crit_edge, %folio_nr_pages.exit
  %lruvec.addr.0.i = phi ptr [ %lruvec.0.i.i, %folio_nr_pages.exit ], [ %lruvec.0.i.i.i, %parent_lruvec.exit.i.do.body.i_crit_edge ]
  %nonresident_age.i = getelementptr inbounds %struct.lruvec, ptr %lruvec.addr.0.i, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nonresident_age.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %nonresident_age.i, i32 1, i32 3, i32 1) #9
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nonresident_age.i, ptr %nonresident_age.i, i32 %retval.0.i.i13, ptr elementtype(i32) %nonresident_age.i) #9, !srcloc !78
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@workingset_activation, %lruvec_memcg.exit.i.i)) #9
          to label %if.end.i.i.i [label %lruvec_memcg.exit.i.i], !srcloc !79

if.end.i.i.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %memcg.i.i.i = getelementptr inbounds %struct.mem_cgroup_per_node, ptr %lruvec.addr.0.i, i32 0, i32 9
  %32 = ptrtoint ptr %memcg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %memcg.i.i.i, align 4
  br label %lruvec_memcg.exit.i.i

lruvec_memcg.exit.i.i:                            ; preds = %if.end.i.i.i, %do.body.i
  %retval.0.i.i.i = phi ptr [ %33, %if.end.i.i.i ], [ null, %do.body.i ]
  %tobool.not.i.i14 = icmp eq ptr %retval.0.i.i.i, null
  br i1 %tobool.not.i.i14, label %lruvec_memcg.exit.i.i.out_crit_edge, label %if.end.i.i16

lruvec_memcg.exit.i.i.out_crit_edge:              ; preds = %lruvec_memcg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i.i16:                                     ; preds = %lruvec_memcg.exit.i.i
  %parent.i.i.i = getelementptr inbounds %struct.mem_cgroup, ptr %retval.0.i.i.i, i32 0, i32 2, i32 13
  %34 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parent.i.i.i, align 4
  %tobool.not.i.i.i15 = icmp eq ptr %35, null
  %add.ptr.i.i.i = getelementptr i8, ptr %35, i32 -176
  %tobool2.not14.i.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool2.not.i.i = or i1 %tobool.not.i.i.i15, %tobool2.not14.i.i
  br i1 %tobool2.not.i.i, label %if.end.i.i16.out_crit_edge, label %if.end4.i.i

if.end.i.i16.out_crit_edge:                       ; preds = %if.end.i.i16
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end4.i.i:                                      ; preds = %if.end.i.i16
  %pgdat.i.i.i = getelementptr inbounds %struct.lruvec, ptr %lruvec.addr.0.i, i32 0, i32 7
  %36 = ptrtoint ptr %pgdat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pgdat.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@workingset_activation, %if.then.i.i.i17)) #9
          to label %if.end2.i.i.i [label %if.then.i.i.i17], !srcloc !79

if.then.i.i.i17:                                  ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %__lruvec.i.i.i = getelementptr inbounds %struct.pglist_data, ptr %37, i32 0, i32 26
  br label %out.i.i.i

if.end2.i.i.i:                                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %node_id.i.i.i = getelementptr inbounds %struct.pglist_data, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %node_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %node_id.i.i.i, align 64
  %arrayidx.i.i.i = getelementptr %struct.mem_cgroup, ptr %add.ptr.i.i.i, i32 0, i32 45, i32 %39
  %40 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i.i.i, align 4
  br label %out.i.i.i

out.i.i.i:                                        ; preds = %if.end2.i.i.i, %if.then.i.i.i17
  %lruvec.0.i.i.i = phi ptr [ %__lruvec.i.i.i, %if.then.i.i.i17 ], [ %41, %if.end2.i.i.i ]
  %pgdat4.i.i.i = getelementptr inbounds %struct.lruvec, ptr %lruvec.0.i.i.i, i32 0, i32 7
  %42 = ptrtoint ptr %pgdat4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pgdat4.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %43, %37
  br i1 %cmp.not.i.i.i, label %out.i.i.i.parent_lruvec.exit.i_crit_edge, label %if.then7.i.i.i, !prof !80

out.i.i.i.parent_lruvec.exit.i_crit_edge:         ; preds = %out.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %parent_lruvec.exit.i

if.then7.i.i.i:                                   ; preds = %out.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %pgdat4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %37, ptr %pgdat4.i.i.i, align 4
  br label %parent_lruvec.exit.i

parent_lruvec.exit.i:                             ; preds = %if.then7.i.i.i, %out.i.i.i.parent_lruvec.exit.i_crit_edge
  %tobool.not.i18 = icmp eq ptr %lruvec.0.i.i.i, null
  br i1 %tobool.not.i18, label %parent_lruvec.exit.i.out_crit_edge, label %parent_lruvec.exit.i.do.body.i_crit_edge

parent_lruvec.exit.i.do.body.i_crit_edge:         ; preds = %parent_lruvec.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

parent_lruvec.exit.i.out_crit_edge:               ; preds = %parent_lruvec.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

out:                                              ; preds = %parent_lruvec.exit.i.out_crit_edge, %if.end.i.i16.out_crit_edge, %lruvec_memcg.exit.i.i.out_crit_edge, %mem_cgroup_disabled.exit.out_crit_edge
  %call.i19 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i19, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i22

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i22:                                ; preds = %out
  %call1.i20 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20)
  %tobool.not.i21 = icmp eq i32 %call1.i20, 0
  br i1 %tobool.not.i21, label %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i24

land.lhs.true.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i24:                               ; preds = %land.lhs.true.i22
  %.b4.i23 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i23, label %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, label %if.then.i25

land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i25:                                      ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.19) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i25, %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !96
  %45 = tail call i32 @llvm.read_register.i32(metadata !68) #9
  %and.i.i.i.i.i26 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i26 to ptr
  %preempt_count.i.i.i.i27 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i27, align 4
  %sub.i.i.i = add i32 %48, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i27, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @workingset_update_node(ptr noundef %node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !94
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end43_crit_edge

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

land.rhs:                                         ; preds = %entry
  %.b80 = load i1, ptr @workingset_update_node.__already_done, align 1
  br i1 %.b80, label %land.rhs.if.end43_crit_edge, label %if.then, !prof !80

land.rhs.if.end43_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @workingset_update_node.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 444, i32 noundef 9, ptr noundef null) #9
  br label %if.end43

if.end43:                                         ; preds = %if.then, %land.rhs.if.end43_crit_edge, %entry.if.end43_crit_edge
  %count = getelementptr inbounds %struct.xa_node, ptr %node, i32 0, i32 2
  %1 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %count, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool52.not = icmp eq i8 %2, 0
  br i1 %tobool52.not, label %if.end43.if.else_crit_edge, label %land.lhs.true

if.end43.if.else_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.end43
  %nr_values = getelementptr inbounds %struct.xa_node, ptr %node, i32 0, i32 3
  %3 = ptrtoint ptr %nr_values to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %nr_values, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %4)
  %cmp56 = icmp eq i8 %2, %4
  br i1 %cmp56, label %if.then58, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then58:                                        ; preds = %land.lhs.true
  %5 = getelementptr inbounds %struct.xa_node, ptr %node, i32 0, i32 6
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %5, align 4
  %cmp.i.not = icmp eq ptr %7, %5
  br i1 %cmp.i.not, label %if.then61, label %if.then58.if.end69_crit_edge

if.then58.if.end69_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then61:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  %call62 = tail call zeroext i1 @list_lru_add(ptr noundef nonnull @shadow_nodes, ptr noundef %5) #9
  br label %if.end69.sink.split

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end43.if.else_crit_edge
  %8 = getelementptr inbounds %struct.xa_node, ptr %node, i32 0, i32 6
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %8, align 4
  %cmp.i81.not = icmp eq ptr %10, %8
  br i1 %cmp.i81.not, label %if.else.if.end69_crit_edge, label %if.then66

if.else.if.end69_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then66:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call67 = tail call zeroext i1 @list_lru_del(ptr noundef nonnull @shadow_nodes, ptr noundef %8) #9
  br label %if.end69.sink.split

if.end69.sink.split:                              ; preds = %if.then66, %if.then61
  %.sink = phi i32 [ -1, %if.then66 ], [ 1, %if.then61 ]
  tail call void @__mod_lruvec_kmem_state(ptr noundef %node, i32 noundef 9, i32 noundef %.sink) #9
  br label %if.end69

if.end69:                                         ; preds = %if.end69.sink.split, %if.else.if.end69_crit_edge, %if.then58.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @list_lru_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @list_lru_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @workingset_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %0 = load volatile i32, ptr @_totalram_pages, align 4
  %sub = add i32 %0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not.i.i = icmp eq i32 %sub, 0
  %1 = tail call i32 @llvm.ctlz.i32(i32 %sub, i1 true) #9, !range !102
  %sub.i.i = sub nuw nsw i32 32, %1
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %cond.i.i)
  %cmp = icmp ugt i32 %cond.i.i, 14
  br i1 %cmp, label %if.then, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub2 = add nsw i32 %cond.i.i, -14
  store i32 %sub2, ptr @bucket_order, align 4
  br label %do.end5

do.end5:                                          ; preds = %if.then, %entry.do.end5_crit_edge
  %2 = load i32, ptr @bucket_order, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef 14, i32 noundef %cond.i.i, i32 noundef %2) #12
  %call7 = tail call i32 @prealloc_shrinker(ptr noundef nonnull @workingset_shadow_shrinker) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end9, label %do.end5.cleanup_crit_edge

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %do.end5
  %call10 = tail call i32 @__list_lru_init(ptr noundef nonnull @shadow_nodes, i1 noundef zeroext true, ptr noundef nonnull @shadow_nodes_key, ptr noundef nonnull @workingset_shadow_shrinker) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %err_list_lru

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @register_shrinker_prepared(ptr noundef nonnull @workingset_shadow_shrinker) #9
  br label %cleanup

err_list_lru:                                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @free_prealloced_shrinker(ptr noundef nonnull @workingset_shadow_shrinker) #9
  br label %cleanup

cleanup:                                          ; preds = %err_list_lru, %if.end13, %do.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ %call7, %do.end5.cleanup_crit_edge ], [ %call10, %err_list_lru ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_lruvec_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_lruvec_kmem_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prealloc_shrinker(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__list_lru_init(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_shrinker_prepared(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_prealloced_shrinker(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @count_shadow_nodes(ptr nocapture noundef readnone %shrinker, ptr nocapture noundef readonly %sc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nid.i = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 1
  %0 = ptrtoint ptr %nid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nid.i, align 4
  %memcg.i = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 4
  %2 = ptrtoint ptr %memcg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %memcg.i, align 4
  %call.i = tail call i32 @list_lru_count_one(ptr noundef nonnull @shadow_nodes, i32 noundef %1, ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %memcg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %memcg.i, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@count_shadow_nodes, %out.i)) #9
          to label %if.end2.i [label %out.i], !srcloc !79

if.end2.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 8) to i32))
  %6 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 8), align 64
  %arrayidx.i = getelementptr %struct.mem_cgroup, ptr %5, i32 0, i32 45, i32 %6
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  br label %out.i

out.i:                                            ; preds = %if.end2.i, %if.then2
  %lruvec.0.i = phi ptr [ %8, %if.end2.i ], [ getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 26), %if.then2 ]
  %pgdat4.i = getelementptr inbounds %struct.lruvec, ptr %lruvec.0.i, i32 0, i32 7
  %9 = ptrtoint ptr %pgdat4.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pgdat4.i, align 4
  %cmp.not.i = icmp eq ptr %10, @contig_page_data
  br i1 %cmp.not.i, label %out.i.for.body.preheader_crit_edge, label %if.then7.i, !prof !80

out.i.for.body.preheader_crit_edge:               ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

if.then7.i:                                       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %pgdat4.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @contig_page_data, ptr %pgdat4.i, align 4
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then7.i, %out.i.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %lruvec_page_state_local.exit.for.body_crit_edge, %for.body.preheader
  %i.079 = phi i32 [ %inc, %lruvec_page_state_local.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %pages.078 = phi i32 [ %add7, %lruvec_page_state_local.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@count_shadow_nodes, %if.then.i36)) #9
          to label %for.cond.i [label %if.then.i36], !srcloc !79

if.then.i36:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i.i = getelementptr [40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 %i.079
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i.i, i32 noundef 4) #9
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  br label %lruvec_page_state_local.exit

for.cond.i:                                       ; preds = %do.body.i, %for.body
  %cpu.0.i = phi i32 [ %call2.i, %do.body.i ], [ -1, %for.body ]
  %x.0.i = phi i32 [ %add6.i, %do.body.i ], [ 0, %for.body ]
  %call2.i = tail call i32 @cpumask_next(i32 noundef %cpu.0.i, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call2.i, %14
  br i1 %cmp.i, label %do.body.i, label %for.cond.i.lruvec_page_state_local.exit_crit_edge

for.cond.i.lruvec_page_state_local.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lruvec_page_state_local.exit

do.body.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %lruvec_stats_percpu.i = getelementptr inbounds %struct.mem_cgroup_per_node, ptr %lruvec.0.i, i32 0, i32 1
  %15 = ptrtoint ptr %lruvec_stats_percpu.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lruvec_stats_percpu.i, align 4
  %arrayidx.i37 = getelementptr [40 x i32], ptr %16, i32 0, i32 %i.079
  %17 = ptrtoint ptr %arrayidx.i37 to i32
  %arrayidx5.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call2.i
  %18 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx5.i, align 4
  %add.i = add i32 %19, %17
  %20 = inttoptr i32 %add.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add6.i = add i32 %22, %x.0.i
  br label %for.cond.i

lruvec_page_state_local.exit:                     ; preds = %for.cond.i.lruvec_page_state_local.exit_crit_edge, %if.then.i36
  %.sink = phi i32 [ %13, %if.then.i36 ], [ %x.0.i, %for.cond.i.lruvec_page_state_local.exit_crit_edge ]
  %23 = tail call i32 @llvm.smax.i32(i32 %.sink, i32 0) #9
  %add7 = add i32 %23, %pages.078
  %inc = add nuw nsw i32 %i.079, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %lruvec_page_state_local.exit.for.body_crit_edge

lruvec_page_state_local.exit.for.body_crit_edge:  ; preds = %lruvec_page_state_local.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %lruvec_page_state_local.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@count_shadow_nodes, %if.then.i38)) #9
          to label %for.cond.i48 [label %if.then.i38], !srcloc !79

if.then.i38:                                      ; preds = %for.end
  %.b39.i.i39 = load i1, ptr @global_node_page_state.__already_done, align 1
  br i1 %.b39.i.i39, label %if.then.i38.global_node_page_state.exit.i43_crit_edge, label %if.then.i.i41, !prof !80

if.then.i38.global_node_page_state.exit.i43_crit_edge: ; preds = %if.then.i38
  call void @__sanitizer_cov_trace_pc() #11
  br label %global_node_page_state.exit.i43

if.then.i.i41:                                    ; preds = %if.then.i38
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @global_node_page_state.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 202, i32 noundef 9, ptr noundef null) #9
  br label %global_node_page_state.exit.i43

global_node_page_state.exit.i43:                  ; preds = %if.then.i.i41, %if.then.i38.global_node_page_state.exit.i43_crit_edge
  %call.i.i.i.i.i42 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 5), i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 5) to i32))
  %24 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 5), align 4
  br label %lruvec_page_state_local.exit57

for.cond.i48:                                     ; preds = %do.body.i54, %for.end
  %cpu.0.i44 = phi i32 [ %call2.i46, %do.body.i54 ], [ -1, %for.end ]
  %x.0.i45 = phi i32 [ %add6.i53, %do.body.i54 ], [ 0, %for.end ]
  %call2.i46 = tail call i32 @cpumask_next(i32 noundef %cpu.0.i44, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %25 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i47 = icmp ult i32 %call2.i46, %25
  br i1 %cmp.i47, label %do.body.i54, label %for.cond.i48.lruvec_page_state_local.exit57_crit_edge

for.cond.i48.lruvec_page_state_local.exit57_crit_edge: ; preds = %for.cond.i48
  call void @__sanitizer_cov_trace_pc() #11
  br label %lruvec_page_state_local.exit57

do.body.i54:                                      ; preds = %for.cond.i48
  call void @__sanitizer_cov_trace_pc() #11
  %lruvec_stats_percpu.i49 = getelementptr inbounds %struct.mem_cgroup_per_node, ptr %lruvec.0.i, i32 0, i32 1
  %26 = ptrtoint ptr %lruvec_stats_percpu.i49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lruvec_stats_percpu.i49, align 4
  %arrayidx.i50 = getelementptr [40 x i32], ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %arrayidx.i50 to i32
  %arrayidx5.i51 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call2.i46
  %29 = ptrtoint ptr %arrayidx5.i51 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx5.i51, align 4
  %add.i52 = add i32 %30, %28
  %31 = inttoptr i32 %add.i52 to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add6.i53 = add i32 %33, %x.0.i45
  br label %for.cond.i48

lruvec_page_state_local.exit57:                   ; preds = %for.cond.i48.lruvec_page_state_local.exit57_crit_edge, %global_node_page_state.exit.i43
  %.sink81 = phi i32 [ %24, %global_node_page_state.exit.i43 ], [ %x.0.i45, %for.cond.i48.lruvec_page_state_local.exit57_crit_edge ]
  %34 = tail call i32 @llvm.smax.i32(i32 %.sink81, i32 0) #9
  %shr = lshr i32 %34, 12
  %add9 = add i32 %shr, %add7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@count_shadow_nodes, %if.then.i58)) #9
          to label %for.cond.i68 [label %if.then.i58], !srcloc !79

if.then.i58:                                      ; preds = %lruvec_page_state_local.exit57
  %.b39.i.i59 = load i1, ptr @global_node_page_state.__already_done, align 1
  br i1 %.b39.i.i59, label %if.then.i58.global_node_page_state.exit.i63_crit_edge, label %if.then.i.i61, !prof !80

if.then.i58.global_node_page_state.exit.i63_crit_edge: ; preds = %if.then.i58
  call void @__sanitizer_cov_trace_pc() #11
  br label %global_node_page_state.exit.i63

if.then.i.i61:                                    ; preds = %if.then.i58
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @global_node_page_state.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 202, i32 noundef 9, ptr noundef null) #9
  br label %global_node_page_state.exit.i63

global_node_page_state.exit.i63:                  ; preds = %if.then.i.i61, %if.then.i58.global_node_page_state.exit.i63_crit_edge
  %call.i.i.i.i.i62 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 6), i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 6) to i32))
  %35 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 6), align 4
  br label %lruvec_page_state_local.exit77

for.cond.i68:                                     ; preds = %do.body.i74, %lruvec_page_state_local.exit57
  %cpu.0.i64 = phi i32 [ %call2.i66, %do.body.i74 ], [ -1, %lruvec_page_state_local.exit57 ]
  %x.0.i65 = phi i32 [ %add6.i73, %do.body.i74 ], [ 0, %lruvec_page_state_local.exit57 ]
  %call2.i66 = tail call i32 @cpumask_next(i32 noundef %cpu.0.i64, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %36 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i67 = icmp ult i32 %call2.i66, %36
  br i1 %cmp.i67, label %do.body.i74, label %for.cond.i68.lruvec_page_state_local.exit77_crit_edge

for.cond.i68.lruvec_page_state_local.exit77_crit_edge: ; preds = %for.cond.i68
  call void @__sanitizer_cov_trace_pc() #11
  br label %lruvec_page_state_local.exit77

do.body.i74:                                      ; preds = %for.cond.i68
  call void @__sanitizer_cov_trace_pc() #11
  %lruvec_stats_percpu.i69 = getelementptr inbounds %struct.mem_cgroup_per_node, ptr %lruvec.0.i, i32 0, i32 1
  %37 = ptrtoint ptr %lruvec_stats_percpu.i69 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lruvec_stats_percpu.i69, align 4
  %arrayidx.i70 = getelementptr [40 x i32], ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %arrayidx.i70 to i32
  %arrayidx5.i71 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call2.i66
  %40 = ptrtoint ptr %arrayidx5.i71 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx5.i71, align 4
  %add.i72 = add i32 %41, %39
  %42 = inttoptr i32 %add.i72 to ptr
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %add6.i73 = add i32 %44, %x.0.i65
  br label %for.cond.i68

lruvec_page_state_local.exit77:                   ; preds = %for.cond.i68.lruvec_page_state_local.exit77_crit_edge, %global_node_page_state.exit.i63
  %.sink82 = phi i32 [ %35, %global_node_page_state.exit.i63 ], [ %x.0.i65, %for.cond.i68.lruvec_page_state_local.exit77_crit_edge ]
  %45 = tail call i32 @llvm.smax.i32(i32 %.sink82, i32 0) #9
  %shr11 = lshr i32 %45, 12
  %add12 = add i32 %add9, %shr11
  br label %if.end15

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 6) to i32))
  %46 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 6), align 8
  br label %if.end15

if.end15:                                         ; preds = %if.else, %lruvec_page_state_local.exit77
  %pages.1 = phi i32 [ %add12, %lruvec_page_state_local.exit77 ], [ %46, %if.else ]
  %shr16 = lshr i32 %pages.1, 3
  %47 = tail call i32 @llvm.usub.sat.i32(i32 %call.i, i32 %shr16)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ %47, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scan_shadow_nodes(ptr nocapture noundef readnone %shrinker, ptr noundef %sc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nid.i = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 1
  %0 = ptrtoint ptr %nid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nid.i, align 4
  %memcg.i = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 4
  %2 = ptrtoint ptr %memcg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %memcg.i, align 4
  %nr_to_scan.i = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 2
  %call.i = tail call i32 @list_lru_walk_one_irq(ptr noundef nonnull @shadow_nodes, i32 noundef %1, ptr noundef %3, ptr noundef nonnull @shadow_lru_isolate, ptr noundef null, ptr noundef %nr_to_scan.i) #9
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @list_lru_count_one(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shadow_lru_isolate(ptr noundef %item, ptr noundef %lru, ptr noundef %lru_lock, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -12
  %array = getelementptr i8, ptr %item, i32 -4
  %0 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %array, align 4
  %add.ptr3 = getelementptr i8, ptr %1, i32 -4
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irq(ptr noundef %lru_lock) #9
  br label %out

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr3, align 4
  %i_lock = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 18
  %call.i149 = tail call i32 @_raw_spin_trylock(ptr noundef %i_lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i149)
  %tobool5.not = icmp eq i32 %call.i149, 0
  br i1 %tobool5.not, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %1) #9
  tail call void @_raw_spin_unlock_irq(ptr noundef %lru_lock) #9
  br label %out

if.end9:                                          ; preds = %if.end
  tail call void @list_lru_isolate(ptr noundef %lru, ptr noundef %item) #9
  tail call void @__mod_lruvec_kmem_state(ptr noundef %add.ptr, i32 noundef 9, i32 noundef -1) #9
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock) #9
  %nr_values = getelementptr i8, ptr %item, i32 -9
  %4 = ptrtoint ptr %nr_values to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nr_values, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool10.not = icmp eq i8 %5, 0
  br i1 %tobool10.not, label %land.rhs, label %if.end52.critedge

land.rhs:                                         ; preds = %if.end9
  %.b145 = load i1, ptr @shadow_lru_isolate.__already_done, align 1
  br i1 %.b145, label %land.rhs.out_invalid_crit_edge, label %if.then19, !prof !80

land.rhs.out_invalid_crit_edge:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_invalid

if.then19:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @shadow_lru_isolate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 563, i32 noundef 9, ptr noundef null) #9
  br label %out_invalid

if.end52.critedge:                                ; preds = %if.end9
  %count = getelementptr i8, ptr %item, i32 -10
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %count, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %5)
  %cmp.not = icmp eq i8 %7, %5
  br i1 %cmp.not, label %if.end112.critedge, label %land.rhs64

land.rhs64:                                       ; preds = %if.end52.critedge
  %.b143144 = load i1, ptr @shadow_lru_isolate.__already_done.24, align 1
  br i1 %.b143144, label %land.rhs64.out_invalid_crit_edge, label %if.then75, !prof !80

land.rhs64.out_invalid_crit_edge:                 ; preds = %land.rhs64
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_invalid

if.then75:                                        ; preds = %land.rhs64
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @shadow_lru_isolate.__already_done.24, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 565, i32 noundef 9, ptr noundef null) #9
  br label %out_invalid

if.end112.critedge:                               ; preds = %if.end52.critedge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @xa_delete_node(ptr noundef %add.ptr, ptr noundef nonnull @workingset_update_node) #9
  tail call void @__mod_lruvec_kmem_state(ptr noundef %add.ptr, i32 noundef 16, i32 noundef 1) #9
  br label %out_invalid

out_invalid:                                      ; preds = %if.end112.critedge, %if.then75, %land.rhs64.out_invalid_crit_edge, %if.then19, %land.rhs.out_invalid_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #9
  %8 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr3, align 4
  tail call void @inode_add_lru(ptr noundef %9) #9
  %10 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr3, align 4
  %i_lock120 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 18
  tail call void @_raw_spin_unlock(ptr noundef %i_lock120) #9
  br label %out

out:                                              ; preds = %out_invalid, %if.then6, %if.then
  %ret.0 = phi i32 [ 1, %out_invalid ], [ 4, %if.then6 ], [ 4, %if.then ]
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 577, i32 noundef 0) #9
  %call.i150 = tail call i32 @__cond_resched() #9
  tail call void @_raw_spin_lock_irq(ptr noundef %lru_lock) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @list_lru_walk_one_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_lru_isolate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xa_delete_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_add_lru(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !59, !60, !62, !64, !66}
!llvm.named.register.sp = !{!68}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../mm/workingset.c", i32 263, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../mm/workingset.c", i32 264, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../mm/workingset.c", i32 265, i32 2}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../mm/workingset.c", i32 444, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_workingset__291_638_workingset_init6, !10, !"__initcall__kmod_workingset__291_638_workingset_init6", i1 false, i1 false}
!10 = !{!"../mm/workingset.c", i32 638, i32 1}
!11 = !{ptr @shadow_nodes, !12, !"shadow_nodes", i1 false, i1 false}
!12 = !{!"../mm/workingset.c", i32 432, i32 24}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../include/linux/mm.h", i32 1368, i32 10}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../include/linux/page-flags.h", i32 422, i32 1}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/linux/huge_mm.h", i32 347, i32 2}
!19 = !{ptr @bucket_order, !20, !"bucket_order", i1 false, i1 false}
!20 = !{!"../mm/workingset.c", i32 185, i32 21}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/linux/xarray.h", i32 54, i32 2}
!23 = distinct !{null, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/linux/page-flags.h", i32 698, i32 1}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/linux/memcontrol.h", i32 537, i32 2}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/linux/memcontrol.h", i32 538, i32 2}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/linux/memcontrol.h", i32 417, i32 2}
!37 = distinct !{null, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../include/linux/memcontrol.h", i32 418, i32 2}
!39 = distinct !{null, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../include/linux/memcontrol.h", i32 419, i32 2}
!41 = distinct !{null, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/memcontrol.h", i32 398, i32 2}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../include/linux/vmstat.h", i32 202, i32 2}
!45 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../include/linux/memcontrol.h", i32 472, i32 2}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../include/linux/memcontrol.h", i32 746, i32 2}
!54 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../mm/workingset.c", i32 621, i32 2}
!57 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @workingset_init._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @workingset_init._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @workingset_shadow_shrinker, !61, !"workingset_shadow_shrinker", i1 false, i1 false}
!61 = !{!"../mm/workingset.c", i32 590, i32 24}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../mm/workingset.c", i32 563, i32 6}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../mm/workingset.c", i32 565, i32 6}
!66 = !{ptr @shadow_nodes_key, !67, !"shadow_nodes_key", i1 false, i1 false}
!67 = !{!"../mm/workingset.c", i32 601, i32 30}
!68 = !{!"sp"}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{i64 2148512703, i64 2148512729, i64 2148512758, i64 2148512792, i64 2148512823, i64 2148512846}
!79 = !{i64 2148326096, i64 2148326101, i64 2148326114, i64 2148326158, i64 2148326192, i64 2148326213}
!80 = !{!"branch_weights", i32 2000, i32 1}
!81 = !{!"branch_weights", i32 1, i32 2000}
!82 = !{i64 2153895540, i64 2153896024, i64 2153895577, i64 2153895633, i64 2153895667, i64 2153895691, i64 2153895732, i64 2153895753, i64 2153895781, i64 2153895815}
!83 = !{i64 2151157276, i64 2151157767, i64 2151157313, i64 2151157369, i64 2151157403, i64 2151157427, i64 2151157468, i64 2151157489, i64 2151157517, i64 2151157551}
!84 = !{i64 2154959334, i64 2154959814, i64 2154959371, i64 2154959427, i64 2154959461, i64 2154959485, i64 2154959526, i64 2154959547, i64 2154959575, i64 2154959609}
!85 = !{i64 2154961086, i64 2154961566, i64 2154961123, i64 2154961179, i64 2154961213, i64 2154961237, i64 2154961278, i64 2154961299, i64 2154961327, i64 2154961361}
!86 = !{i64 2151022643, i64 2151027195, i64 2151022680, i64 2151022736, i64 2151022770, i64 2151022794, i64 2151022835, i64 2151022856, i64 2151022884, i64 2151022918}
!87 = !{i64 2154962843, i64 2154963323, i64 2154962880, i64 2154962936, i64 2154962970, i64 2154962994, i64 2154963035, i64 2154963056, i64 2154963084, i64 2154963118}
!88 = !{i64 2153856775, i64 2153857263, i64 2153856812, i64 2153856868, i64 2153856902, i64 2153856926, i64 2153856967, i64 2153856988, i64 2153857016, i64 2153857050}
!89 = !{i64 2151206653, i64 2151207144, i64 2151206690, i64 2151206746, i64 2151206780, i64 2151206804, i64 2151206845, i64 2151206866, i64 2151206894, i64 2151206928}
!90 = !{i64 2151015210, i64 2151015701, i64 2151015247, i64 2151015303, i64 2151015337, i64 2151015361, i64 2151015402, i64 2151015423, i64 2151015451, i64 2151015485}
!91 = !{i64 2149340217}
!92 = !{i64 2151781996, i64 2151782487, i64 2151782033, i64 2151782089, i64 2151782123, i64 2151782147, i64 2151782188, i64 2151782209, i64 2151782237, i64 2151782271}
!93 = !{i64 906961, i64 907022}
!94 = !{i64 909693}
!95 = !{i64 909978}
!96 = !{i64 2149340483}
!97 = !{i64 2154613969, i64 2154614460, i64 2154614006, i64 2154614062, i64 2154614096, i64 2154614120, i64 2154614161, i64 2154614182, i64 2154614210, i64 2154614244}
!98 = !{i64 2154615869, i64 2154616360, i64 2154615906, i64 2154615962, i64 2154615996, i64 2154616020, i64 2154616061, i64 2154616082, i64 2154616110, i64 2154616144}
!99 = !{i64 2154598469, i64 2154598960, i64 2154598506, i64 2154598562, i64 2154598596, i64 2154598620, i64 2154598661, i64 2154598682, i64 2154598710, i64 2154598744}
!100 = !{i64 2154592727, i64 2154593218, i64 2154592764, i64 2154592820, i64 2154592854, i64 2154592878, i64 2154592919, i64 2154592940, i64 2154592968, i64 2154593002}
!101 = !{i64 2154607674, i64 2154608165, i64 2154607711, i64 2154607767, i64 2154607801, i64 2154607825, i64 2154607866, i64 2154607887, i64 2154607915, i64 2154607949}
!102 = !{i32 0, i32 33}
