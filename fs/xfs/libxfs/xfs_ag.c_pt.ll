; ModuleID = '/llk/IR_all_yes/fs/xfs/libxfs/xfs_ag.c_pt.bc'
source_filename = "../fs/xfs/libxfs/xfs_ag.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.xfs_buf_ops = type { ptr, %union.anon.87, ptr, ptr, ptr }
%union.anon.87 = type { [2 x i32] }
%struct.xfs_owner_info = type { i64, i64, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.radix_tree_preload = type { %struct.local_lock_t, i32, ptr }
%struct.local_lock_t = type { %struct.lockdep_map, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xfs_perag = type { ptr, i32, %struct.atomic_t, i8, i8, i8, i8, [3 x i8], i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.xfs_ag_resv, %struct.xfs_ag_resv, %struct.callback_head, i16, i16, %struct.spinlock, %struct.spinlock, %struct.rb_root, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.xarray, i32, i32, %struct.spinlock, %struct.rhashtable, %struct.delayed_work, %struct.rhashtable }
%struct.xfs_ag_resv = type { i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.xfs_aghdr_grow_data = type { i64, i32, ptr, ptr, i32, i8 }
%struct.aghdr_init_data = type { i32, i32, %struct.list_head, i64, i64, i32, i32 }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.xfs_buf_map = type { i64, i32 }
%struct.xfs_dsb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.xfs_agf = type { i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, %struct.uuid_t, i32, i32, i32, i32, [14 x i64], i64, i32, i32 }
%struct.xfs_agfl = type <{ i32, i32, %struct.uuid_t, i64, i32 }>
%struct.xfs_agi = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i32], %struct.uuid_t, i32, i32, i64, i32, i32, i32, i32 }
%struct.xfs_btree_block = type { i32, i16, i16, %union.anon.88 }
%union.anon.88 = type { %struct.xfs_btree_block_lhdr }
%struct.xfs_btree_block_lhdr = type { i64, i64, i64, i64, %struct.uuid_t, i64, i32, i32 }
%struct.xfs_rmap_rec = type { i32, i32, i64, i64 }
%struct.xfs_alloc_arg = type { ptr, ptr, ptr, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, %struct.xfs_owner_info, i32, i8 }
%struct.xfs_ag_geometry = type { i32, i32, i32, i32, i32, i32, i32, i32, [12 x i64] }
%struct.xfs_alloc_rec = type { i32, i32 }

@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"atomic_read(&pag->pag_ref) >= 0\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/xfs/libxfs/xfs_ag.c\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"atomic_read(&pag->pag_ref) > 0\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"AGF corruption. Please run xfs_repair.\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pag\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"atomic_read(&pag->pag_ref) == 0\00", [32 x i8] zeroinitializer }, align 32
@xfs_initialize_perag.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@xfs_initialize_perag.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&pag->pag_ici_lock\00", [45 x i8] zeroinitializer }, align 32
@xfs_initialize_perag.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&pag->pagb_lock\00", [16 x i8] zeroinitializer }, align 32
@xfs_initialize_perag.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&pag->pag_state_lock\00", [43 x i8] zeroinitializer }, align 32
@xfs_initialize_perag.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&(&pag->pag_blockgc_work)->work)\00", [45 x i8] zeroinitializer }, align 32
@xfs_initialize_perag.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&(&pag->pag_blockgc_work)->timer\00", [63 x i8] zeroinitializer }, align 32
@xfs_initialize_perag.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&pag->pagb_wait\00", [16 x i8] zeroinitializer }, align 32
@xfs_sb_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@xfs_agf_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@xfs_agfl_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@xfs_agi_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@xfs_bnobt_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@xfs_cntbt_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@xfs_inobt_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@xfs_finobt_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@xfs_rmapbt_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@xfs_refcountbt_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@XFS_RMAP_OINFO_SKIP_UPDATE = external dso_local constant %struct.xfs_owner_info, align 8
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"agno == mp->m_sb.sb_agcount - 1\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"agf->agf_length != agi->agi_length\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Error %d reserving per-AG metadata reserve pool.\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"id->agno == mp->m_sb.sb_agcount - 1 || be32_to_cpu(agi->agi_length) == mp->m_sb.sb_agblocks\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"agf->agf_length == agi->agi_length\00", [61 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_perag_get = external dso_local global %struct.tracepoint, align 4
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_perag_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_perag_get_tag = external dso_local global %struct.tracepoint, align 4
@trace_xfs_perag_get_tag.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_perag_put = external dso_local global %struct.tracepoint, align 4
@trace_xfs_perag_put.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"!delayed_work_pending(&pag->pag_blockgc_work)\00", [50 x i8] zeroinitializer }, align 32
@radix_tree_preloads = external dso_local global %struct.radix_tree_preload, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"include/linux/local_lock_internal.h\00", [60 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l->owner != current\00", [44 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"start >= mp->m_ag_prealloc_blocks\00", [62 x i8] zeroinitializer }, align 32
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 52, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 92, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 151, i32 17 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 194, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 195, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 253, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 254, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 255, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 256, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 258, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 786, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 800, i32 6 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 877, i32 15 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 906, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 919, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 695, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 723, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 189, i32 1 }
@___asan_gen_.119 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 108, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 175, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant [39 x i8] c"../include/linux/local_lock_internal.h\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 36, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 378, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.140 = private constant [26 x i8] c"../fs/xfs/libxfs/xfs_ag.c\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 361, i32 3 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @xfs_initialize_perag.__key, ptr @.str.6, ptr @xfs_initialize_perag.__key.7, ptr @.str.8, ptr @xfs_initialize_perag.__key.9, ptr @.str.10, ptr @xfs_initialize_perag.__key.11, ptr @.str.12, ptr @xfs_initialize_perag.__key.13, ptr @.str.14, ptr @xfs_initialize_perag.__key.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @xa_init_flags.__key, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_initialize_perag.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_initialize_perag.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_initialize_perag.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_initialize_perag.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_initialize_perag.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_initialize_perag.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xfs_perag_get(ptr noundef %mp, i32 noundef %agno) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !82
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %m_perag_tree = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 82
  %call = tail call ptr @radix_tree_lookup(ptr noundef %m_perag_tree, i32 noundef %agno) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %rcu_read_lock.exit.if.end_crit_edge, label %if.then

rcu_read_lock.exit.if.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  %pag_ref = getelementptr inbounds %struct.xfs_perag, ptr %call, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pag_ref, i32 noundef 4) #9
  %4 = ptrtoint ptr %pag_ref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %pag_ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp sgt i32 %5, -1
  br i1 %cmp, label %if.then.cond.end_crit_edge, label %cond.false, !prof !83

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 52) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then.cond.end_crit_edge
  %call.i.i11 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pag_ref, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !84
  tail call void @llvm.prefetch.p0(ptr %pag_ref, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pag_ref, ptr %pag_ref, i32 1, ptr elementtype(i32) %pag_ref) #9, !srcloc !85
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !86
  br label %if.end

if.end:                                           ; preds = %cond.end, %rcu_read_lock.exit.if.end_crit_edge
  %ref.0 = phi i32 [ %asmresult.i.i.i.i, %cond.end ], [ 0, %rcu_read_lock.exit.if.end_crit_edge ]
  %call.i12 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i12, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i15

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i15:                                ; preds = %if.end
  %call1.i13 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i13)
  %tobool.not.i14 = icmp eq i32 %call1.i13, 0
  br i1 %tobool.not.i14, label %land.lhs.true.i15.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i17

land.lhs.true.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i17:                               ; preds = %land.lhs.true.i15
  %.b4.i16 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i16, label %land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge, label %if.then.i18

land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i17
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i18:                                      ; preds = %land.lhs.true2.i17
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i18, %land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i15.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !87
  %7 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i.i.i.i19 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i19 to ptr
  %preempt_count.i.i.i.i20 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i20, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i20, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %11 = tail call ptr @llvm.returnaddress(i32 0)
  %12 = ptrtoint ptr %11 to i32
  tail call fastcc void @trace_xfs_perag_get(ptr noundef %mp, i32 noundef %agno, i32 noundef %ref.0, i32 noundef %12)
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_perag_get(ptr noundef %mp, i32 noundef %agno, i32 noundef %refcount, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_perag_get, i32 0, i32 1), ptr blockaddress(@trace_xfs_perag_get, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !88

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !83

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !89
  %call42 = tail call i32 @__traceiter_xfs_perag_get(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %refcount, i32 noundef %caller_ip) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !90
  %13 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !83

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !91
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_perag_get, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_perag_get, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_perag_get.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_xfs_perag_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 189, ptr noundef nonnull @.str.26) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !92
  %31 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xfs_perag_get_tag(ptr noundef %mp, i32 noundef %first, i32 noundef %tag) local_unnamed_addr #0 align 64 {
entry:
  %pag = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pag) #9
  %0 = ptrtoint ptr %pag to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pag, align 4, !annotation !93
  %1 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !82
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %m_perag_tree = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 82
  %call = call i32 @radix_tree_gang_lookup_tag(ptr noundef %m_perag_tree, ptr noundef nonnull %pag, i32 noundef %first, i32 noundef 1, i32 noundef %tag) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  %call.i5 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i5, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i8

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i8:                                 ; preds = %if.then
  %call1.i6 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i6)
  %tobool.not.i7 = icmp eq i32 %call1.i6, 0
  br i1 %tobool.not.i7, label %land.lhs.true.i8.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i10

land.lhs.true.i8.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i8
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i10:                               ; preds = %land.lhs.true.i8
  %.b4.i9 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i9, label %land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge, label %if.then.i11

land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i10
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i11:                                      ; preds = %land.lhs.true2.i10
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i11, %land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i8.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !87
  %5 = call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i.i.i.i12 = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i12 to ptr
  %preempt_count.i.i.i.i13 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i13, align 4
  %sub.i.i.i = add i32 %8, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i13, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %cleanup

if.end:                                           ; preds = %rcu_read_lock.exit
  %9 = ptrtoint ptr %pag to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pag, align 4
  %pag_ref = getelementptr inbounds %struct.xfs_perag, ptr %10, i32 0, i32 2
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %pag_ref, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !84
  call void @llvm.prefetch.p0(ptr %pag_ref, i32 1, i32 3, i32 1) #9
  %11 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pag_ref, ptr %pag_ref, i32 1, ptr elementtype(i32) %pag_ref) #9, !srcloc !85
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %11, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !86
  %call.i14 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i14, label %if.end.rcu_read_unlock.exit24_crit_edge, label %land.lhs.true.i17

if.end.rcu_read_unlock.exit24_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit24

land.lhs.true.i17:                                ; preds = %if.end
  %call1.i15 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i15)
  %tobool.not.i16 = icmp eq i32 %call1.i15, 0
  br i1 %tobool.not.i16, label %land.lhs.true.i17.rcu_read_unlock.exit24_crit_edge, label %land.lhs.true2.i19

land.lhs.true.i17.rcu_read_unlock.exit24_crit_edge: ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit24

land.lhs.true2.i19:                               ; preds = %land.lhs.true.i17
  %.b4.i18 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i18, label %land.lhs.true2.i19.rcu_read_unlock.exit24_crit_edge, label %if.then.i20

land.lhs.true2.i19.rcu_read_unlock.exit24_crit_edge: ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit24

if.then.i20:                                      ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #9
  br label %rcu_read_unlock.exit24

rcu_read_unlock.exit24:                           ; preds = %if.then.i20, %land.lhs.true2.i19.rcu_read_unlock.exit24_crit_edge, %land.lhs.true.i17.rcu_read_unlock.exit24_crit_edge, %if.end.rcu_read_unlock.exit24_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !87
  %12 = call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i.i.i.i21 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i21 to ptr
  %preempt_count.i.i.i.i22 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i22, align 4
  %sub.i.i.i23 = add i32 %15, -1
  store volatile i32 %sub.i.i.i23, ptr %preempt_count.i.i.i.i22, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %16 = ptrtoint ptr %pag to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pag, align 4
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pag_agno, align 4
  %20 = call ptr @llvm.returnaddress(i32 0)
  %21 = ptrtoint ptr %20 to i32
  call fastcc void @trace_xfs_perag_get_tag(ptr noundef %mp, i32 noundef %19, i32 noundef %asmresult.i.i.i.i, i32 noundef %21)
  %22 = ptrtoint ptr %pag to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pag, align 4
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit24, %rcu_read_unlock.exit
  %retval.0 = phi ptr [ null, %rcu_read_unlock.exit ], [ %23, %rcu_read_unlock.exit24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pag) #9
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_gang_lookup_tag(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_perag_get_tag(ptr noundef %mp, i32 noundef %agno, i32 noundef %refcount, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_perag_get_tag, i32 0, i32 1), ptr blockaddress(@trace_xfs_perag_get_tag, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !88

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !83

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !94
  %call42 = tail call i32 @__traceiter_xfs_perag_get_tag(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %refcount, i32 noundef %caller_ip) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !95
  %13 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !83

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !91
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_perag_get_tag, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_perag_get_tag, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_perag_get_tag.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_xfs_perag_get_tag.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 190, ptr noundef nonnull @.str.26) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !92
  %31 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_perag_put(ptr noundef %pag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pag_ref = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pag_ref, i32 noundef 4) #9
  %0 = ptrtoint ptr %pag_ref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %pag_ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !83

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 92) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %call.i.i7 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pag_ref, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !96
  tail call void @llvm.prefetch.p0(ptr %pag_ref, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pag_ref, ptr %pag_ref, i32 1, ptr elementtype(i32) %pag_ref) #9, !srcloc !97
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !98
  %3 = ptrtoint ptr %pag to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pag, align 4
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 1
  %5 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pag_agno, align 4
  %7 = tail call ptr @llvm.returnaddress(i32 0)
  %8 = ptrtoint ptr %7 to i32
  tail call fastcc void @trace_xfs_perag_put(ptr noundef %4, i32 noundef %6, i32 noundef %asmresult.i.i.i.i, i32 noundef %8)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_perag_put(ptr noundef %mp, i32 noundef %agno, i32 noundef %refcount, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_perag_put, i32 0, i32 1), ptr blockaddress(@trace_xfs_perag_put, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !88

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !83

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !99
  %call42 = tail call i32 @__traceiter_xfs_perag_put(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %refcount, i32 noundef %caller_ip) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !100
  %13 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !83

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !91
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_perag_put, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_perag_put, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_perag_put.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_xfs_perag_put.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 191, ptr noundef nonnull @.str.26) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !92
  %31 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_initialize_perag_data(ptr noundef %mp, i32 noundef %agcount) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %agcount)
  %cmp69.not = icmp eq i32 %agcount, 0
  br i1 %cmp69.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %if.end4.for.body_crit_edge, %entry.for.body_crit_edge
  %btree.075 = phi i64 [ %add13, %if.end4.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %bfreelst.074 = phi i64 [ %add11, %if.end4.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %bfree.073 = phi i64 [ %add9, %if.end4.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %ialloc.072 = phi i64 [ %add7, %if.end4.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %ifree.071 = phi i64 [ %add, %if.end4.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %index.070 = phi i32 [ %inc, %if.end4.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call i32 @xfs_alloc_pagf_init(ptr noundef %mp, ptr noundef null, i32 noundef %index.070, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body
  %call1 = tail call i32 @xfs_ialloc_pagi_init(ptr noundef %mp, ptr noundef null, i32 noundef %index.070) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @xfs_perag_get(ptr noundef %mp, i32 noundef %index.070)
  %pagi_freecount = getelementptr inbounds %struct.xfs_perag, ptr %call5, i32 0, i32 13
  %0 = ptrtoint ptr %pagi_freecount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pagi_freecount, align 4
  %conv = zext i32 %1 to i64
  %add = add i64 %ifree.071, %conv
  %pagi_count = getelementptr inbounds %struct.xfs_perag, ptr %call5, i32 0, i32 14
  %2 = ptrtoint ptr %pagi_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pagi_count, align 4
  %conv6 = zext i32 %3 to i64
  %add7 = add i64 %ialloc.072, %conv6
  %pagf_freeblks = getelementptr inbounds %struct.xfs_perag, ptr %call5, i32 0, i32 10
  %4 = ptrtoint ptr %pagf_freeblks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pagf_freeblks, align 4
  %conv8 = zext i32 %5 to i64
  %add9 = add i64 %bfree.073, %conv8
  %pagf_flcount = getelementptr inbounds %struct.xfs_perag, ptr %call5, i32 0, i32 9
  %6 = ptrtoint ptr %pagf_flcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pagf_flcount, align 4
  %conv10 = zext i32 %7 to i64
  %add11 = add i64 %bfreelst.074, %conv10
  %pagf_btreeblks = getelementptr inbounds %struct.xfs_perag, ptr %call5, i32 0, i32 12
  %8 = ptrtoint ptr %pagf_btreeblks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pagf_btreeblks, align 4
  %conv12 = zext i32 %9 to i64
  %add13 = add i64 %btree.075, %conv12
  tail call void @xfs_perag_put(ptr noundef %call5)
  %inc = add nuw i32 %index.070, 1
  %exitcond.not = icmp eq i32 %inc, %agcount
  br i1 %exitcond.not, label %for.end.loopexit, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end.loopexit:                                 ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %10 = add i64 %add11, %add9
  %11 = add i64 %10, %add13
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %ifree.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %add, %for.end.loopexit ]
  %ialloc.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %add7, %for.end.loopexit ]
  %add15 = phi i64 [ 0, %entry.for.end_crit_edge ], [ %11, %for.end.loopexit ]
  %sb_dblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 2
  %12 = ptrtoint ptr %sb_dblocks to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %sb_dblocks, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add15, i64 %13)
  %cmp16 = icmp ugt i64 %add15, %13
  call void @__sanitizer_cov_trace_cmp8(i64 %ifree.0.lcssa, i64 %ialloc.0.lcssa)
  %cmp18 = icmp ugt i64 %ifree.0.lcssa, %ialloc.0.lcssa
  %or.cond = select i1 %cmp16, i1 true, i1 %cmp18
  br i1 %or.cond, label %if.then20, label %if.end21

if.then20:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %mp, ptr noundef nonnull @.str.3) #9
  br label %out

if.end21:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %m_sb_lock = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 76
  tail call void @_raw_spin_lock(ptr noundef %m_sb_lock) #9
  %sb_ifree = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 29
  %14 = ptrtoint ptr %sb_ifree to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %ifree.0.lcssa, ptr %sb_ifree, align 8
  %sb_icount = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 28
  %15 = ptrtoint ptr %sb_icount to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %ialloc.0.lcssa, ptr %sb_icount, align 8
  %sb_fdblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 30
  %16 = ptrtoint ptr %sb_fdblocks to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %add15, ptr %sb_fdblocks, align 8
  tail call void @_raw_spin_unlock(ptr noundef %m_sb_lock) #9
  tail call void @xfs_reinit_percpu_counters(ptr noundef %mp) #9
  br label %out

out:                                              ; preds = %if.end21, %if.then20
  %error.1 = phi i32 [ -117, %if.then20 ], [ 0, %if.end21 ]
  tail call void @xfs_fs_mark_healthy(ptr noundef %mp, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1, %out ], [ %call1, %if.end.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_alloc_pagf_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ialloc_pagi_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_reinit_percpu_counters(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_fs_mark_healthy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_free_perag(ptr noundef %mp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_agcount = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 12
  %0 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sb_agcount, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp26.not = icmp eq i32 %1, 0
  br i1 %cmp26.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %m_perag_lock = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 83
  %m_perag_tree = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 82
  br label %for.body

for.body:                                         ; preds = %cond.end14.for.body_crit_edge, %for.body.lr.ph
  %agno.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cond.end14.for.body_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %m_perag_lock) #9
  %call = tail call ptr @radix_tree_delete(ptr noundef %m_perag_tree, i32 noundef %agno.027) #9
  tail call void @_raw_spin_unlock(ptr noundef %m_perag_lock) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.false, label %for.body.cond.end_crit_edge, !prof !101

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 194) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.body.cond.end_crit_edge
  %pag_ref = getelementptr inbounds %struct.xfs_perag, ptr %call, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pag_ref, i32 noundef 4) #9
  %2 = ptrtoint ptr %pag_ref to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %pag_ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp5 = icmp eq i32 %3, 0
  br i1 %cmp5, label %cond.end.cond.end14_crit_edge, label %cond.false13, !prof !83

cond.end.cond.end14_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end14

cond.false13:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 195) #9
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false13, %cond.end.cond.end14_crit_edge
  %pag_blockgc_work = getelementptr inbounds %struct.xfs_perag, ptr %call, i32 0, i32 37
  %call15 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %pag_blockgc_work) #9
  tail call void @xfs_iunlink_destroy(ptr noundef %call) #9
  tail call void @xfs_buf_hash_destroy(ptr noundef %call) #9
  %callback_head = getelementptr inbounds %struct.xfs_perag, ptr %call, i32 0, i32 22
  tail call void @call_rcu(ptr noundef %callback_head, ptr noundef nonnull @__xfs_free_perag) #9
  %inc = add nuw i32 %agno.027, 1
  %4 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sb_agcount, align 8
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %cond.end14.for.body_crit_edge, label %cond.end14.for.end_crit_edge

cond.end14.for.end_crit_edge:                     ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cond.end14.for.body_crit_edge:                    ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %cond.end14.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_delete(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iunlink_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_hash_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__xfs_free_perag(ptr noundef %head) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pag_blockgc_work = getelementptr i8, ptr %head, i32 540
  %0 = ptrtoint ptr %pag_blockgc_work to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %pag_blockgc_work, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.false, !prof !83

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1, i32 noundef 175) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %pag_ref = getelementptr i8, ptr %head, i32 -80
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pag_ref, i32 noundef 4) #9
  %2 = ptrtoint ptr %pag_ref to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %pag_ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %cond.end.cond.end13_crit_edge, label %cond.false12, !prof !83

cond.end.cond.end13_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end13

cond.false12:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 176) #9
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false12, %cond.end.cond.end13_crit_edge
  %add.ptr = getelementptr i8, ptr %head, i32 -88
  tail call void @kvfree(ptr noundef %add.ptr) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_initialize_perag(ptr noundef %mp, i32 noundef %agcount, ptr noundef writeonly %maxagi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %agcount)
  %cmp209.not = icmp eq i32 %agcount, 0
  br i1 %cmp209.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %m_perag_lock = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 83
  %m_perag_tree = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 82
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %index.0211 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %first_initialised.0210 = phi i32 [ -1, %for.body.lr.ph ], [ %first_initialised.1, %for.inc.for.body_crit_edge ]
  %call = tail call ptr @xfs_perag_get(ptr noundef %mp, i32 noundef %index.0211)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @xfs_perag_put(ptr noundef nonnull %call)
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call.i = tail call ptr @kmem_alloc(i32 noundef 956, i32 noundef 24) #9
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.out_unwind_new_pags_crit_edge, label %if.end4

if.end.out_unwind_new_pags_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unwind_new_pags

if.end4:                                          ; preds = %if.end
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %pag_agno to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %index.0211, ptr %pag_agno, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %mp, ptr %call.i, align 4
  %call5 = tail call i32 @radix_tree_preload(i32 noundef 3136) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.out_free_pag_crit_edge

if.end4.out_free_pag_crit_edge:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_pag

if.end8:                                          ; preds = %if.end4
  tail call void @_raw_spin_lock(ptr noundef %m_perag_lock) #9
  %call9 = tail call i32 @radix_tree_insert(ptr noundef %m_perag_tree, i32 noundef %index.0211, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end48, label %land.end

land.end:                                         ; preds = %if.end8
  %.b172 = load i1, ptr @xfs_initialize_perag.__already_done, align 1
  br i1 %.b172, label %land.end.if.end39_crit_edge, label %if.then17, !prof !83

land.end.if.end39_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then17:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @xfs_initialize_perag.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 242, i32 noundef 9, ptr noundef null) #9
  br label %if.end39

if.end39:                                         ; preds = %if.then17, %land.end.if.end39_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %m_perag_lock) #9
  %2 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %7, ptrtoint (ptr @radix_tree_preloads to i32)
  %8 = inttoptr i32 %add.i to ptr
  tail call fastcc void @local_lock_release(ptr noundef %8) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !102
  %9 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br label %out_free_pag

if.end48:                                         ; preds = %if.end8
  tail call void @_raw_spin_unlock(ptr noundef %m_perag_lock) #9
  %13 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i173 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i173 to ptr
  %cpu.i174 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu.i174 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu.i174, align 4
  %arrayidx.i175 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i175 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i175, align 4
  %add.i176 = add i32 %18, ptrtoint (ptr @radix_tree_preloads to i32)
  %19 = inttoptr i32 %add.i176 to ptr
  tail call fastcc void @local_lock_release(ptr noundef %19) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !102
  %20 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i.i.i177 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i177 to ptr
  %preempt_count.i.i.i178 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i178 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i178, align 4
  %sub.i.i179 = add i32 %23, -1
  store volatile i32 %sub.i.i179, ptr %preempt_count.i.i.i178, align 4
  %pag_ici_lock = getelementptr inbounds %struct.xfs_perag, ptr %call.i, i32 0, i32 31
  tail call void @__raw_spin_lock_init(ptr noundef %pag_ici_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @xfs_initialize_perag.__key, i16 noundef signext 3) #9
  %pagb_lock = getelementptr inbounds %struct.xfs_perag, ptr %call.i, i32 0, i32 26
  tail call void @__raw_spin_lock_init(ptr noundef %pagb_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @xfs_initialize_perag.__key.7, i16 noundef signext 3) #9
  %pag_state_lock = getelementptr inbounds %struct.xfs_perag, ptr %call.i, i32 0, i32 25
  tail call void @__raw_spin_lock_init(ptr noundef %pag_state_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @xfs_initialize_perag.__key.9, i16 noundef signext 3) #9
  %pag_blockgc_work = getelementptr inbounds %struct.xfs_perag, ptr %call.i, i32 0, i32 37
  tail call void @__init_work(ptr noundef %pag_blockgc_work, i32 noundef 0) #9
  %24 = ptrtoint ptr %pag_blockgc_work to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -64, ptr %pag_blockgc_work, align 4
  %lockdep_map = getelementptr inbounds %struct.xfs_perag, ptr %call.i, i32 0, i32 37, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @xfs_initialize_perag.__key.11, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry70 = getelementptr inbounds %struct.xfs_perag, ptr %call.i, i32 0, i32 37, i32 0, i32 1
  %25 = ptrtoint ptr %entry70 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %entry70, ptr %entry70, align 4
  %prev.i = getelementptr inbounds %struct.xfs_perag, ptr %call.i, i32 0, i32 37, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %entry70, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.xfs_perag, ptr %call.i, i32 0, i32 37, i32 0, i32 2
  %27 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @xfs_blockgc_worker, ptr %func, align 4
  %timer = getelementptr inbounds %struct.xfs_perag, ptr %call.i, i32 0, i32 37, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.14, ptr noundef nonnull @xfs_initialize_perag.__key.13) #9
  %pag_ici_root = getelementptr inbounds %struct.xfs_perag, ptr %call.i, i32 0, i32 32
  tail call void @__raw_spin_lock_init(ptr noundef %pag_ici_root, ptr noundef nonnull @.str.32, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #9
  %xa_flags.i = getelementptr inbounds %struct.xfs_perag, ptr %call.i, i32 0, i32 32, i32 1
  %28 = ptrtoint ptr %xa_flags.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2592, ptr %xa_flags.i, align 4
  %xa_head.i = getelementptr inbounds %struct.xfs_perag, ptr %call.i, i32 0, i32 32, i32 2
  %29 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %xa_head.i, align 4
  %pagb_wait = getelementptr inbounds %struct.xfs_perag, ptr %call.i, i32 0, i32 29
  tail call void @__init_waitqueue_head(ptr noundef %pagb_wait, ptr noundef nonnull @.str.16, ptr noundef nonnull @xfs_initialize_perag.__key.15) #9
  %pagb_count = getelementptr inbounds %struct.xfs_perag, ptr %call.i, i32 0, i32 18
  %30 = ptrtoint ptr %pagb_count to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %pagb_count, align 4
  %pagb_tree = getelementptr inbounds %struct.xfs_perag, ptr %call.i, i32 0, i32 27
  %31 = ptrtoint ptr %pagb_tree to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %pagb_tree, align 4
  %call85 = tail call i32 @xfs_buf_hash_init(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %if.end48.out_remove_pag_crit_edge

if.end48.out_remove_pag_crit_edge:                ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_remove_pag

if.end88:                                         ; preds = %if.end48
  %call89 = tail call i32 @xfs_iunlink_init(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %out_hash_destroy

if.end92:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %first_initialised.0210)
  %cmp93 = icmp eq i32 %first_initialised.0210, -1
  %spec.select = select i1 %cmp93, i32 %index.0211, i32 %first_initialised.0210
  br label %for.inc

for.inc:                                          ; preds = %if.end92, %if.then
  %first_initialised.1 = phi i32 [ %first_initialised.0210, %if.then ], [ %spec.select, %if.end92 ]
  %inc = add nuw i32 %index.0211, 1
  %exitcond.not = icmp eq i32 %inc, %agcount
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %call96 = tail call i32 @xfs_set_inode_alloc(ptr noundef %mp, i32 noundef %agcount) #9
  %tobool97.not = icmp eq ptr %maxagi, null
  br i1 %tobool97.not, label %for.end.if.end99_crit_edge, label %if.then98

for.end.if.end99_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

if.then98:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %maxagi to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call96, ptr %maxagi, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then98, %for.end.if.end99_crit_edge
  %call100 = tail call i32 @xfs_prealloc_blocks(ptr noundef %mp) #9
  %m_ag_prealloc_blocks = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 47
  %33 = ptrtoint ptr %m_ag_prealloc_blocks to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call100, ptr %m_ag_prealloc_blocks, align 4
  br label %cleanup

out_hash_destroy:                                 ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @xfs_buf_hash_destroy(ptr noundef nonnull %call.i) #9
  br label %out_remove_pag

out_remove_pag:                                   ; preds = %out_hash_destroy, %if.end48.out_remove_pag_crit_edge
  %error.0 = phi i32 [ %call89, %out_hash_destroy ], [ %call85, %if.end48.out_remove_pag_crit_edge ]
  %call102 = tail call ptr @radix_tree_delete(ptr noundef %m_perag_tree, i32 noundef %index.0211) #9
  br label %out_free_pag

out_free_pag:                                     ; preds = %out_remove_pag, %if.end39, %if.end4.out_free_pag_crit_edge
  %error.1 = phi i32 [ -17, %if.end39 ], [ %error.0, %out_remove_pag ], [ %call5, %if.end4.out_free_pag_crit_edge ]
  tail call void @kvfree(ptr noundef nonnull %call.i) #9
  br label %out_unwind_new_pags

out_unwind_new_pags:                              ; preds = %out_free_pag, %if.end.out_unwind_new_pags_crit_edge
  %error.2 = phi i32 [ %error.1, %out_free_pag ], [ -12, %if.end.out_unwind_new_pags_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %first_initialised.0210, i32 %agcount)
  %cmp104213 = icmp ult i32 %first_initialised.0210, %agcount
  br i1 %cmp104213, label %out_unwind_new_pags.for.body105_crit_edge, label %out_unwind_new_pags.cleanup_crit_edge

out_unwind_new_pags.cleanup_crit_edge:            ; preds = %out_unwind_new_pags
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

out_unwind_new_pags.for.body105_crit_edge:        ; preds = %out_unwind_new_pags
  br label %for.body105

for.body105:                                      ; preds = %if.end110.for.body105_crit_edge, %out_unwind_new_pags.for.body105_crit_edge
  %index.1214 = phi i32 [ %inc112, %if.end110.for.body105_crit_edge ], [ %first_initialised.0210, %out_unwind_new_pags.for.body105_crit_edge ]
  %call107 = tail call ptr @radix_tree_delete(ptr noundef %m_perag_tree, i32 noundef %index.1214) #9
  %tobool108.not = icmp eq ptr %call107, null
  br i1 %tobool108.not, label %for.body105.cleanup_crit_edge, label %if.end110

for.body105.cleanup_crit_edge:                    ; preds = %for.body105
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end110:                                        ; preds = %for.body105
  tail call void @xfs_buf_hash_destroy(ptr noundef nonnull %call107) #9
  tail call void @xfs_iunlink_destroy(ptr noundef nonnull %call107) #9
  tail call void @kvfree(ptr noundef nonnull %call107) #9
  %inc112 = add i32 %index.1214, 1
  %exitcond239.not = icmp eq i32 %inc112, %agcount
  br i1 %exitcond239.not, label %if.end110.cleanup_crit_edge, label %if.end110.for.body105_crit_edge

if.end110.for.body105_crit_edge:                  ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body105

if.end110.cleanup_crit_edge:                      ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end110.cleanup_crit_edge, %for.body105.cleanup_crit_edge, %out_unwind_new_pags.cleanup_crit_edge, %if.end99
  %retval.0 = phi i32 [ 0, %if.end99 ], [ %error.2, %out_unwind_new_pags.cleanup_crit_edge ], [ %error.2, %if.end110.cleanup_crit_edge ], [ %error.2, %for.body105.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_preload(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_blockgc_worker(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_buf_hash_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iunlink_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_set_inode_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_prealloc_blocks(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_ag_init_headers(ptr noundef %mp, ptr noundef %id) local_unnamed_addr #0 align 64 {
entry:
  %bp.i.i = alloca ptr, align 4
  %aghdr_data = alloca [11 x %struct.xfs_aghdr_grow_data], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 352, ptr nonnull %aghdr_data) #9
  %0 = getelementptr inbounds i8, ptr %aghdr_data, i32 24
  %1 = call ptr @memset(ptr %0, i32 255, i32 296)
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %conv = zext i32 %3 to i64
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %4 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sb_agblocks, align 4
  %conv1 = zext i32 %5 to i64
  %mul = mul nuw i64 %conv1, %conv
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 28
  %6 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom = zext i8 %7 to i64
  %shl = shl i64 %mul, %sh_prom
  %8 = ptrtoint ptr %aghdr_data to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %shl, ptr %aghdr_data, align 8
  %numblks = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 0, i32 1
  %m_sectbb_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 30
  %9 = ptrtoint ptr %m_sectbb_log to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %m_sectbb_log, align 1
  %conv4 = zext i8 %10 to i32
  %shl5 = shl nuw i32 1, %conv4
  %11 = ptrtoint ptr %numblks to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shl5, ptr %numblks, align 8
  %ops = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 0, i32 2
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @xfs_sb_buf_ops, ptr %ops, align 4
  %work = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 0, i32 3
  %13 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @xfs_sbblock_init, ptr %work, align 8
  %type = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 0, i32 4
  %14 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %type, align 4
  %need_init = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 0, i32 5
  %15 = ptrtoint ptr %need_init to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %need_init, align 8
  %arrayinit.element = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 1
  %conv21 = sext i32 %shl5 to i64
  %add22 = add i64 %shl, %conv21
  %16 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %add22, ptr %arrayinit.element, align 8
  %numblks23 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 1, i32 1
  %17 = ptrtoint ptr %numblks23 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shl5, ptr %numblks23, align 8
  %ops27 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 1, i32 2
  %18 = ptrtoint ptr %ops27 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @xfs_agf_buf_ops, ptr %ops27, align 4
  %work28 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 1, i32 3
  %19 = ptrtoint ptr %work28 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @xfs_agfblock_init, ptr %work28, align 8
  %type29 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 1, i32 4
  %20 = ptrtoint ptr %type29 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %type29, align 4
  %need_init30 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 1, i32 5
  %21 = ptrtoint ptr %need_init30 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %need_init30, align 8
  %arrayinit.element31 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 2
  %shl46 = shl i32 3, %conv4
  %conv47 = sext i32 %shl46 to i64
  %add48 = add i64 %shl, %conv47
  %22 = ptrtoint ptr %arrayinit.element31 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %add48, ptr %arrayinit.element31, align 8
  %numblks49 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 2, i32 1
  %23 = ptrtoint ptr %numblks49 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shl5, ptr %numblks49, align 8
  %ops53 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 2, i32 2
  %24 = ptrtoint ptr %ops53 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @xfs_agfl_buf_ops, ptr %ops53, align 4
  %work54 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 2, i32 3
  %25 = ptrtoint ptr %work54 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @xfs_agflblock_init, ptr %work54, align 8
  %type55 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 2, i32 4
  %26 = ptrtoint ptr %type55 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %type55, align 4
  %need_init56 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 2, i32 5
  %27 = ptrtoint ptr %need_init56 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %need_init56, align 8
  %arrayinit.element57 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 3
  %shl72 = shl i32 2, %conv4
  %conv73 = sext i32 %shl72 to i64
  %add74 = add i64 %shl, %conv73
  %28 = ptrtoint ptr %arrayinit.element57 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %add74, ptr %arrayinit.element57, align 8
  %numblks75 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 3, i32 1
  %29 = ptrtoint ptr %numblks75 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shl5, ptr %numblks75, align 8
  %ops79 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 3, i32 2
  %30 = ptrtoint ptr %ops79 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @xfs_agi_buf_ops, ptr %ops79, align 4
  %work80 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 3, i32 3
  %31 = ptrtoint ptr %work80 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @xfs_agiblock_init, ptr %work80, align 8
  %type81 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 3, i32 4
  %32 = ptrtoint ptr %type81 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %type81, align 4
  %need_init82 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 3, i32 5
  %33 = ptrtoint ptr %need_init82 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %need_init82, align 8
  %arrayinit.element83 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 4
  %shr = ashr i64 %conv47, %sh_prom
  %conv98 = trunc i64 %shr to i32
  %add99 = add i32 %conv98, 1
  %conv100 = zext i32 %add99 to i64
  %add101 = add nuw i64 %mul, %conv100
  %shl105 = shl i64 %add101, %sh_prom
  %34 = ptrtoint ptr %arrayinit.element83 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %shl105, ptr %arrayinit.element83, align 8
  %numblks106 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 4, i32 1
  %sb_blocksize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 1
  %35 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sb_blocksize, align 4
  %conv108 = zext i32 %36 to i64
  %sub = add nuw nsw i64 %conv108, 511
  %shr110 = lshr i64 %sub, 9
  %conv111 = trunc i64 %shr110 to i32
  %37 = ptrtoint ptr %numblks106 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv111, ptr %numblks106, align 8
  %ops112 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 4, i32 2
  %38 = ptrtoint ptr %ops112 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @xfs_bnobt_buf_ops, ptr %ops112, align 4
  %work113 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 4, i32 3
  %39 = ptrtoint ptr %work113 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @xfs_bnoroot_init, ptr %work113, align 8
  %type114 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 4, i32 4
  %40 = ptrtoint ptr %type114 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %type114, align 4
  %need_init115 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 4, i32 5
  %41 = ptrtoint ptr %need_init115 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %need_init115, align 8
  %arrayinit.element116 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 5
  %add134 = add i32 %conv98, 2
  %conv135 = zext i32 %add134 to i64
  %add136 = add nuw i64 %mul, %conv135
  %shl140 = shl i64 %add136, %sh_prom
  %42 = ptrtoint ptr %arrayinit.element116 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %shl140, ptr %arrayinit.element116, align 8
  %numblks141 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 5, i32 1
  %43 = ptrtoint ptr %numblks141 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv111, ptr %numblks141, align 8
  %ops149 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 5, i32 2
  %44 = ptrtoint ptr %ops149 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @xfs_cntbt_buf_ops, ptr %ops149, align 4
  %work150 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 5, i32 3
  %45 = ptrtoint ptr %work150 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @xfs_cntroot_init, ptr %work150, align 8
  %type151 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 5, i32 4
  %46 = ptrtoint ptr %type151 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %type151, align 4
  %need_init152 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 5, i32 5
  %47 = ptrtoint ptr %need_init152 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %need_init152, align 8
  %arrayinit.element153 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 6
  %add172 = add i32 %conv98, 3
  %conv173 = zext i32 %add172 to i64
  %add174 = add nuw i64 %mul, %conv173
  %shl178 = shl i64 %add174, %sh_prom
  %48 = ptrtoint ptr %arrayinit.element153 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %shl178, ptr %arrayinit.element153, align 8
  %numblks179 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 6, i32 1
  %49 = ptrtoint ptr %numblks179 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv111, ptr %numblks179, align 8
  %ops187 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 6, i32 2
  %50 = ptrtoint ptr %ops187 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @xfs_inobt_buf_ops, ptr %ops187, align 4
  %work188 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 6, i32 3
  %51 = ptrtoint ptr %work188 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @xfs_btroot_init, ptr %work188, align 8
  %type189 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 6, i32 4
  %52 = ptrtoint ptr %type189 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 4, ptr %type189, align 4
  %need_init190 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 6, i32 5
  %53 = ptrtoint ptr %need_init190 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %need_init190, align 8
  %arrayinit.element191 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 7
  %add211 = add i32 %conv98, 4
  %conv212 = zext i32 %add211 to i64
  %add213 = add nuw i64 %mul, %conv212
  %shl217 = shl i64 %add213, %sh_prom
  %54 = ptrtoint ptr %arrayinit.element191 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %shl217, ptr %arrayinit.element191, align 8
  %numblks218 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 7, i32 1
  %55 = ptrtoint ptr %numblks218 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv111, ptr %numblks218, align 8
  %ops226 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 7, i32 2
  %56 = ptrtoint ptr %ops226 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @xfs_finobt_buf_ops, ptr %ops226, align 4
  %work227 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 7, i32 3
  %57 = ptrtoint ptr %work227 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @xfs_btroot_init, ptr %work227, align 8
  %type228 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 7, i32 4
  %58 = ptrtoint ptr %type228 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 5, ptr %type228, align 4
  %need_init229 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 7, i32 5
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %59 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %60, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %and.i.lobit = lshr exact i64 %and.i, 17
  %61 = trunc i64 %and.i.lobit to i8
  %62 = ptrtoint ptr %need_init229 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %need_init229, align 8
  %arrayinit.element230 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 8
  %add253 = add i32 %conv98, 5
  %spec.select = select i1 %tobool.i.not, i32 %add211, i32 %add253
  %conv267 = zext i32 %spec.select to i64
  %add268 = add nuw i64 %mul, %conv267
  %shl272 = shl i64 %add268, %sh_prom
  %63 = ptrtoint ptr %arrayinit.element230 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %shl272, ptr %arrayinit.element230, align 8
  %numblks273 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 8, i32 1
  %64 = ptrtoint ptr %numblks273 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv111, ptr %numblks273, align 8
  %ops281 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 8, i32 2
  %65 = ptrtoint ptr %ops281 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @xfs_rmapbt_buf_ops, ptr %ops281, align 4
  %work282 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 8, i32 3
  %66 = ptrtoint ptr %work282 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @xfs_rmaproot_init, ptr %work282, align 8
  %type283 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 8, i32 4
  %67 = ptrtoint ptr %type283 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %type283, align 4
  %need_init284 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 8, i32 5
  %and.i419 = lshr i64 %60, 18
  %68 = trunc i64 %and.i419 to i8
  %69 = and i8 %68, 1
  %70 = ptrtoint ptr %need_init284 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %need_init284, align 8
  %arrayinit.element287 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 9
  %call295 = tail call i32 @xfs_refc_block(ptr noundef %mp) #9
  %conv296 = zext i32 %call295 to i64
  %add297 = add nuw i64 %mul, %conv296
  %71 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom300 = zext i8 %72 to i64
  %shl301 = shl i64 %add297, %sh_prom300
  %73 = ptrtoint ptr %arrayinit.element287 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %shl301, ptr %arrayinit.element287, align 8
  %numblks302 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 9, i32 1
  %74 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %sb_blocksize, align 4
  %conv305 = zext i32 %75 to i64
  %sub307 = add nuw nsw i64 %conv305, 511
  %shr308 = lshr i64 %sub307, 9
  %conv309 = trunc i64 %shr308 to i32
  %76 = ptrtoint ptr %numblks302 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %conv309, ptr %numblks302, align 8
  %ops310 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 9, i32 2
  %77 = ptrtoint ptr %ops310 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @xfs_refcountbt_buf_ops, ptr %ops310, align 4
  %work311 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 9, i32 3
  %78 = ptrtoint ptr %work311 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @xfs_btroot_init, ptr %work311, align 8
  %type312 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 9, i32 4
  %79 = ptrtoint ptr %type312 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 6, ptr %type312, align 4
  %need_init313 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 9, i32 5
  %80 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %m_features.i, align 8
  %and.i422 = lshr i64 %81, 19
  %82 = trunc i64 %and.i422 to i8
  %83 = and i8 %82, 1
  %84 = ptrtoint ptr %need_init313 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %need_init313, align 8
  %arrayinit.element316 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 10
  %85 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %aghdr_data, i32 10, i32 1
  %86 = call ptr @memset(ptr %85, i32 0, i32 24)
  %87 = ptrtoint ptr %arrayinit.element316 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 -1, ptr %arrayinit.element316, align 8
  %agsize = getelementptr inbounds %struct.aghdr_init_data, ptr %id, i32 0, i32 1
  %88 = ptrtoint ptr %agsize to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %agsize, align 4
  %m_ag_prealloc_blocks = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 47
  %90 = ptrtoint ptr %m_ag_prealloc_blocks to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %m_ag_prealloc_blocks, align 4
  %sub323 = sub i32 %89, %91
  %conv324 = zext i32 %sub323 to i64
  %nfree = getelementptr inbounds %struct.aghdr_init_data, ptr %id, i32 0, i32 3
  %92 = ptrtoint ptr %nfree to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %nfree, align 8
  %add325 = add i64 %93, %conv324
  store i64 %add325, ptr %nfree, align 8
  %94 = ptrtoint ptr %aghdr_data to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %aghdr_data, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %95)
  %cmp.not424 = icmp eq i64 %95, -1
  br i1 %cmp.not424, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %daddr330 = getelementptr inbounds %struct.aghdr_init_data, ptr %id, i32 0, i32 4
  %numblks332 = getelementptr inbounds %struct.aghdr_init_data, ptr %id, i32 0, i32 5
  %type334 = getelementptr inbounds %struct.aghdr_init_data, ptr %id, i32 0, i32 6
  %m_ddev_targp.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 13
  %buffer_list.i = getelementptr inbounds %struct.aghdr_init_data, ptr %id, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %96 = phi i64 [ %95, %for.body.lr.ph ], [ %120, %for.inc.for.body_crit_edge ]
  %dp.0425 = phi ptr [ %aghdr_data, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %need_init328 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %dp.0425, i32 0, i32 5
  %97 = ptrtoint ptr %need_init328 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %need_init328, align 8, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool.not = icmp eq i8 %98, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %99 = ptrtoint ptr %daddr330 to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %96, ptr %daddr330, align 8
  %numblks331 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %dp.0425, i32 0, i32 1
  %100 = ptrtoint ptr %numblks331 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %numblks331, align 8
  %102 = ptrtoint ptr %numblks332 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %numblks332, align 8
  %type333 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %dp.0425, i32 0, i32 4
  %103 = ptrtoint ptr %type333 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %type333, align 4
  %105 = ptrtoint ptr %type334 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %type334, align 4
  %work335 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %dp.0425, i32 0, i32 3
  %106 = ptrtoint ptr %work335 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %work335, align 8
  %ops336 = getelementptr inbounds %struct.xfs_aghdr_grow_data, ptr %dp.0425, i32 0, i32 2
  %108 = ptrtoint ptr %ops336 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ops336, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp.i.i) #9
  %110 = ptrtoint ptr %bp.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp.i.i, align 4, !annotation !93
  %111 = ptrtoint ptr %m_ddev_targp.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %m_ddev_targp.i.i, align 8
  %call.i.i = call i32 @xfs_buf_get_uncached(ptr noundef %112, i32 noundef %101, i32 noundef 0, ptr noundef nonnull %bp.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %xfs_ag_init_hdr.exit.thread, label %xfs_ag_init_hdr.exit

xfs_ag_init_hdr.exit.thread:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %113 = ptrtoint ptr %bp.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %bp.i.i, align 4
  %b_maps.i.i = getelementptr inbounds %struct.xfs_buf, ptr %114, i32 0, i32 24
  %115 = ptrtoint ptr %b_maps.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %b_maps.i.i, align 8
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %96, ptr %116, align 8
  %b_ops.i.i = getelementptr inbounds %struct.xfs_buf, ptr %114, i32 0, i32 35
  %118 = ptrtoint ptr %b_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %109, ptr %b_ops.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp.i.i) #9
  call void %107(ptr noundef %mp, ptr noundef %114, ptr noundef %id) #9
  %call1.i = call zeroext i1 @xfs_buf_delwri_queue(ptr noundef %114, ptr noundef %buffer_list.i) #9
  call void @xfs_buf_unlock(ptr noundef %114) #9
  call void @xfs_buf_rele(ptr noundef %114) #9
  br label %for.inc

xfs_ag_init_hdr.exit:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp.i.i) #9
  br label %for.end

for.inc:                                          ; preds = %xfs_ag_init_hdr.exit.thread, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.xfs_aghdr_grow_data, ptr %dp.0425, i32 1
  %119 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %incdec.ptr, align 8
  %cmp.not = icmp eq i64 %120, -1
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %xfs_ag_init_hdr.exit, %entry.for.end_crit_edge
  %error.2 = phi i32 [ %call.i.i, %xfs_ag_init_hdr.exit ], [ 0, %entry.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 352, ptr nonnull %aghdr_data) #9
  ret i32 %error.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_sbblock_init(ptr noundef %mp, ptr nocapture noundef readonly %bp, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  tail call void @xfs_sb_to_disk(ptr noundef %1, ptr noundef %mp) #9
  %sb_inprogress = getelementptr inbounds %struct.xfs_dsb, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %sb_inprogress to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %sb_inprogress, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_agfblock_init(ptr noundef %mp, ptr nocapture noundef readonly %bp, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1480673094, ptr %1, align 8
  %agf_versionnum = getelementptr inbounds %struct.xfs_agf, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %agf_versionnum to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %agf_versionnum, align 4
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %agf_seqno = getelementptr inbounds %struct.xfs_agf, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %agf_seqno to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %agf_seqno, align 8
  %agsize = getelementptr inbounds %struct.aghdr_init_data, ptr %id, i32 0, i32 1
  %7 = ptrtoint ptr %agsize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %agsize, align 4
  %agf_length = getelementptr inbounds %struct.xfs_agf, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %agf_length to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %agf_length, align 4
  %m_sectbb_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 30
  %10 = ptrtoint ptr %m_sectbb_log to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %m_sectbb_log, align 1
  %conv = zext i8 %11 to i32
  %shl = shl i32 3, %conv
  %conv1 = sext i32 %shl to i64
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 28
  %12 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom = zext i8 %13 to i64
  %shr = ashr i64 %conv1, %sh_prom
  %conv3 = trunc i64 %shr to i32
  %add = add i32 %conv3, 1
  %agf_roots = getelementptr inbounds %struct.xfs_agf, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %agf_roots to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %agf_roots, align 8
  %15 = load i8, ptr %m_sectbb_log, align 1
  %conv5 = zext i8 %15 to i32
  %shl6 = shl i32 3, %conv5
  %conv7 = sext i32 %shl6 to i64
  %16 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom10 = zext i8 %16 to i64
  %shr11 = ashr i64 %conv7, %sh_prom10
  %conv12 = trunc i64 %shr11 to i32
  %add14 = add i32 %conv12, 2
  %arrayidx16 = getelementptr %struct.xfs_agf, ptr %1, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add14, ptr %arrayidx16, align 4
  %agf_levels = getelementptr inbounds %struct.xfs_agf, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %agf_levels to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %agf_levels, align 4
  %arrayidx19 = getelementptr %struct.xfs_agf, ptr %1, i32 0, i32 5, i32 1
  %19 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %arrayidx19, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %20 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %21, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and.i127 = and i64 %21, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i127)
  %tobool.i128.not = icmp eq i64 %and.i127, 0
  %22 = ptrtoint ptr %m_sectbb_log to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %m_sectbb_log, align 1
  %conv37 = zext i8 %23 to i32
  %shl38 = shl i32 3, %conv37
  %conv39 = sext i32 %shl38 to i64
  %24 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom42 = zext i8 %25 to i64
  %shr43 = ashr i64 %conv39, %sh_prom42
  %conv44 = trunc i64 %shr43 to i32
  %. = select i1 %tobool.i128.not, i32 4, i32 5
  %add48 = add i32 %., %conv44
  %arrayidx50 = getelementptr %struct.xfs_agf, ptr %1, i32 0, i32 4, i32 2
  %26 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add48, ptr %arrayidx50, align 8
  %arrayidx52 = getelementptr %struct.xfs_agf, ptr %1, i32 0, i32 5, i32 2
  %27 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %arrayidx52, align 4
  %agf_rmap_blocks = getelementptr inbounds %struct.xfs_agf, ptr %1, i32 0, i32 13
  %28 = ptrtoint ptr %agf_rmap_blocks to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %agf_rmap_blocks, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %agf_flfirst = getelementptr inbounds %struct.xfs_agf, ptr %1, i32 0, i32 6
  %29 = ptrtoint ptr %agf_flfirst to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %agf_flfirst, align 8
  %agf_fllast = getelementptr inbounds %struct.xfs_agf, ptr %1, i32 0, i32 7
  %30 = ptrtoint ptr %agf_fllast to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %agf_fllast, align 4
  %agf_flcount = getelementptr inbounds %struct.xfs_agf, ptr %1, i32 0, i32 8
  %31 = ptrtoint ptr %agf_flcount to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %agf_flcount, align 8
  %32 = ptrtoint ptr %agsize to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %agsize, align 4
  %m_ag_prealloc_blocks = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 47
  %34 = ptrtoint ptr %m_ag_prealloc_blocks to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %m_ag_prealloc_blocks, align 4
  %sub = sub i32 %33, %35
  %agf_freeblks = getelementptr inbounds %struct.xfs_agf, ptr %1, i32 0, i32 9
  %36 = ptrtoint ptr %agf_freeblks to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sub, ptr %agf_freeblks, align 4
  %agf_longest = getelementptr inbounds %struct.xfs_agf, ptr %1, i32 0, i32 10
  %37 = ptrtoint ptr %agf_longest to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %sub, ptr %agf_longest, align 8
  %38 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %m_features.i, align 8
  %and.i130 = and i64 %39, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i130)
  %tobool.i131.not = icmp eq i64 %and.i130, 0
  br i1 %tobool.i131.not, label %if.end.if.end56_crit_edge, label %if.then55

if.end.if.end56_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then55:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %agf_uuid = getelementptr inbounds %struct.xfs_agf, ptr %1, i32 0, i32 12
  %sb_meta_uuid = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 54
  %40 = call ptr @memcpy(ptr %agf_uuid, ptr %sb_meta_uuid, i32 16)
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end.if.end56_crit_edge
  %41 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %m_features.i, align 8
  %and.i133 = and i64 %42, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i133)
  %tobool.i134.not = icmp eq i64 %and.i133, 0
  br i1 %tobool.i134.not, label %if.end56.if.end60_crit_edge, label %if.then58

if.end56.if.end60_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then58:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %call59 = tail call i32 @xfs_refc_block(ptr noundef %mp) #9
  %agf_refcount_root = getelementptr inbounds %struct.xfs_agf, ptr %1, i32 0, i32 15
  %43 = ptrtoint ptr %agf_refcount_root to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call59, ptr %agf_refcount_root, align 8
  %agf_refcount_level = getelementptr inbounds %struct.xfs_agf, ptr %1, i32 0, i32 16
  %44 = ptrtoint ptr %agf_refcount_level to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %agf_refcount_level, align 4
  %agf_refcount_blocks = getelementptr inbounds %struct.xfs_agf, ptr %1, i32 0, i32 14
  %45 = ptrtoint ptr %agf_refcount_blocks to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %agf_refcount_blocks, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end56.if.end60_crit_edge
  %sb_logstart.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 6
  %46 = ptrtoint ptr %sb_logstart.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %sb_logstart.i, align 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %47)
  %cmp.not.i = icmp eq i64 %47, 0
  br i1 %cmp.not.i, label %if.end60.if.end80_crit_edge, label %is_log_ag.exit

if.end60.if.end80_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

is_log_ag.exit:                                   ; preds = %if.end60
  %48 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %id, align 8
  %sb_agblklog.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 24
  %50 = ptrtoint ptr %sb_agblklog.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %sb_agblklog.i, align 4
  %sh_prom.i = zext i8 %51 to i64
  %shr.i = lshr i64 %47, %sh_prom.i
  %conv4.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %conv4.i)
  %cmp5.i = icmp eq i32 %49, %conv4.i
  br i1 %cmp5.i, label %if.then62, label %is_log_ag.exit.if.end80_crit_edge

is_log_ag.exit.if.end80_crit_edge:                ; preds = %is_log_ag.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then62:                                        ; preds = %is_log_ag.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sb_logblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 14
  %52 = ptrtoint ptr %sb_logblocks to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sb_logblocks, align 32
  %54 = ptrtoint ptr %agf_freeblks to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %agf_freeblks, align 4
  %add.i = sub i32 %55, %53
  store i32 %add.i, ptr %agf_freeblks, align 4
  %56 = ptrtoint ptr %agsize to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %agsize, align 4
  %58 = ptrtoint ptr %sb_logstart.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %sb_logstart.i, align 16
  %60 = ptrtoint ptr %sb_agblklog.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %sb_agblklog.i, align 4
  %conv71 = zext i8 %61 to i32
  %notmask.i = shl nsw i32 -1, %conv71
  %sub.i = xor i32 %notmask.i, -1
  %62 = trunc i64 %59 to i32
  %conv74 = and i32 %sub.i, %62
  %63 = add i32 %53, %conv74
  %sub77 = sub i32 %57, %63
  %64 = ptrtoint ptr %agf_longest to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %sub77, ptr %agf_longest, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.then62, %is_log_ag.exit.if.end80_crit_edge, %if.end60.if.end80_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_agflblock_init(ptr noundef %mp, ptr nocapture noundef readonly %bp, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %0 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_addr, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 1480672844, ptr %3, align 1
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 8
  %agfl_seqno = getelementptr inbounds %struct.xfs_agfl, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %agfl_seqno to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %agfl_seqno, align 1
  %agfl_uuid = getelementptr inbounds %struct.xfs_agfl, ptr %3, i32 0, i32 2
  %sb_meta_uuid = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 54
  %8 = call ptr @memcpy(ptr %agfl_uuid, ptr %sb_meta_uuid, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %b_mount.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %9 = ptrtoint ptr %b_mount.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_mount.i, align 4
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %10, i32 0, i32 61
  %11 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %12, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %13 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_addr, align 4
  %retval.0.idx.i = select i1 %tobool.i.not.i, i32 0, i32 36
  %retval.0.i = getelementptr i8, ptr %14, i32 %retval.0.idx.i
  %call210 = tail call i32 @xfs_agfl_size(ptr noundef %mp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call210)
  %cmp11.not = icmp eq i32 %call210, 0
  br i1 %cmp11.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %bucket.012 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %retval.0.i, i32 %bucket.012
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %arrayidx, align 4
  %inc = add nuw i32 %bucket.012, 1
  %call2 = tail call i32 @xfs_agfl_size(ptr noundef %mp) #9
  %cmp = icmp ult i32 %inc, %call2
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_agiblock_init(ptr nocapture noundef readonly %mp, ptr nocapture noundef readonly %bp, ptr nocapture noundef readonly %id) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1480673097, ptr %1, align 8
  %agi_versionnum = getelementptr inbounds %struct.xfs_agi, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %agi_versionnum to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %agi_versionnum, align 4
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %agi_seqno = getelementptr inbounds %struct.xfs_agi, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %agi_seqno to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %agi_seqno, align 8
  %agsize = getelementptr inbounds %struct.aghdr_init_data, ptr %id, i32 0, i32 1
  %7 = ptrtoint ptr %agsize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %agsize, align 4
  %agi_length = getelementptr inbounds %struct.xfs_agi, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %agi_length to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %agi_length, align 4
  %agi_count = getelementptr inbounds %struct.xfs_agi, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %agi_count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %agi_count, align 8
  %m_sectbb_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 30
  %11 = ptrtoint ptr %m_sectbb_log to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %m_sectbb_log, align 1
  %conv = zext i8 %12 to i32
  %shl = shl i32 3, %conv
  %conv1 = sext i32 %shl to i64
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 28
  %13 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom = zext i8 %14 to i64
  %shr = ashr i64 %conv1, %sh_prom
  %conv3 = trunc i64 %shr to i32
  %add5 = add i32 %conv3, 3
  %agi_root = getelementptr inbounds %struct.xfs_agi, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %agi_root to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add5, ptr %agi_root, align 4
  %agi_level = getelementptr inbounds %struct.xfs_agi, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %agi_level to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %agi_level, align 8
  %agi_freecount = getelementptr inbounds %struct.xfs_agi, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %agi_freecount to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %agi_freecount, align 4
  %agi_newino = getelementptr inbounds %struct.xfs_agi, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %agi_newino to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %agi_newino, align 8
  %agi_dirino = getelementptr inbounds %struct.xfs_agi, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %agi_dirino to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %agi_dirino, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %20 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %21, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %agi_uuid = getelementptr inbounds %struct.xfs_agi, ptr %1, i32 0, i32 11
  %sb_meta_uuid = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 54
  %22 = call ptr @memcpy(ptr %agi_uuid, ptr %sb_meta_uuid, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %23 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %m_features.i, align 8
  %and.i56 = and i64 %24, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i56)
  %tobool.i57.not = icmp eq i64 %and.i56, 0
  br i1 %tobool.i57.not, label %if.end.if.end21_crit_edge, label %if.then7

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %m_sectbb_log to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %m_sectbb_log, align 1
  %conv9 = zext i8 %26 to i32
  %shl10 = shl i32 3, %conv9
  %conv11 = sext i32 %shl10 to i64
  %27 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom14 = zext i8 %28 to i64
  %shr15 = ashr i64 %conv11, %sh_prom14
  %conv16 = trunc i64 %shr15 to i32
  %add20 = add i32 %conv16, 4
  %agi_free_root = getelementptr inbounds %struct.xfs_agi, ptr %1, i32 0, i32 15
  %29 = ptrtoint ptr %agi_free_root to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add20, ptr %agi_free_root, align 8
  %agi_free_level = getelementptr inbounds %struct.xfs_agi, ptr %1, i32 0, i32 16
  %30 = ptrtoint ptr %agi_free_level to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %agi_free_level, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then7, %if.end.if.end21_crit_edge
  %uglygep = getelementptr i8, ptr %1, i32 40
  %31 = call ptr @memset(ptr %uglygep, i32 255, i32 256)
  %32 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %m_features.i, align 8
  %and.i59 = and i64 %33, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i59)
  %tobool.i60.not = icmp eq i64 %and.i59, 0
  br i1 %tobool.i60.not, label %if.end21.if.end28_crit_edge, label %if.then24

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then24:                                        ; preds = %if.end21
  %agi_iblocks = getelementptr inbounds %struct.xfs_agi, ptr %1, i32 0, i32 17
  %34 = ptrtoint ptr %agi_iblocks to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %agi_iblocks, align 8
  %35 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %m_features.i, align 8
  %and.i62 = and i64 %36, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i62)
  %tobool.i63.not = icmp eq i64 %and.i62, 0
  br i1 %tobool.i63.not, label %if.then24.if.end28_crit_edge, label %if.then26

if.then24.if.end28_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then26:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %agi_fblocks = getelementptr inbounds %struct.xfs_agi, ptr %1, i32 0, i32 18
  %37 = ptrtoint ptr %agi_fblocks to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %agi_fblocks, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.then24.if.end28_crit_edge, %if.end21.if.end28_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_bnoroot_init(ptr noundef %mp, ptr noundef %bp, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  %conv = zext i32 %1 to i64
  tail call void @xfs_btree_init_block(ptr noundef %mp, ptr noundef %bp, i32 noundef 0, i16 noundef zeroext 0, i16 noundef zeroext 1, i64 noundef %conv) #9
  tail call fastcc void @xfs_freesp_init_recs(ptr noundef %mp, ptr noundef %bp, ptr noundef %id)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_cntroot_init(ptr noundef %mp, ptr noundef %bp, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  %conv = zext i32 %1 to i64
  tail call void @xfs_btree_init_block(ptr noundef %mp, ptr noundef %bp, i32 noundef 1, i16 noundef zeroext 0, i16 noundef zeroext 1, i64 noundef %conv) #9
  tail call fastcc void @xfs_freesp_init_recs(ptr noundef %mp, ptr noundef %bp, ptr noundef %id)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_btroot_init(ptr noundef %mp, ptr noundef %bp, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.aghdr_init_data, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %conv = zext i32 %3 to i64
  tail call void @xfs_btree_init_block(ptr noundef %mp, ptr noundef %bp, i32 noundef %1, i16 noundef zeroext 0, i16 noundef zeroext 0, i64 noundef %conv) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_rmaproot_init(ptr noundef %mp, ptr noundef %bp, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %conv = zext i32 %3 to i64
  tail call void @xfs_btree_init_block(ptr noundef %mp, ptr noundef %bp, i32 noundef 2, i16 noundef zeroext 0, i16 noundef zeroext 4, i64 noundef %conv) #9
  %add.ptr = getelementptr i8, ptr %1, i32 56
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %add.ptr, align 8
  %m_sectbb_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 30
  %5 = ptrtoint ptr %m_sectbb_log to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %m_sectbb_log, align 1
  %conv2 = zext i8 %6 to i32
  %shl = shl i32 3, %conv2
  %conv3 = sext i32 %shl to i64
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 28
  %7 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom = zext i8 %8 to i64
  %shr = ashr i64 %conv3, %sh_prom
  %conv5 = trunc i64 %shr to i32
  %add = add i32 %conv5, 1
  %rm_blockcount = getelementptr i8, ptr %1, i32 60
  %9 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %rm_blockcount, align 4
  %rm_owner = getelementptr i8, ptr %1, i32 64
  %10 = ptrtoint ptr %rm_owner to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -3, ptr %rm_owner, align 8
  %rm_offset = getelementptr i8, ptr %1, i32 72
  %11 = ptrtoint ptr %rm_offset to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %rm_offset, align 8
  %add.ptr7 = getelementptr i8, ptr %1, i32 80
  %12 = load i8, ptr %m_sectbb_log, align 1
  %conv9 = zext i8 %12 to i32
  %shl10 = shl i32 3, %conv9
  %conv11 = sext i32 %shl10 to i64
  %13 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom14 = zext i8 %13 to i64
  %shr15 = ashr i64 %conv11, %sh_prom14
  %conv16 = trunc i64 %shr15 to i32
  %add17 = add i32 %conv16, 1
  %14 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add17, ptr %add.ptr7, align 8
  %rm_blockcount19 = getelementptr i8, ptr %1, i32 84
  %15 = ptrtoint ptr %rm_blockcount19 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %rm_blockcount19, align 4
  %rm_owner20 = getelementptr i8, ptr %1, i32 88
  %16 = ptrtoint ptr %rm_owner20 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 -5, ptr %rm_owner20, align 8
  %rm_offset21 = getelementptr i8, ptr %1, i32 96
  %17 = ptrtoint ptr %rm_offset21 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %rm_offset21, align 8
  %add.ptr23 = getelementptr i8, ptr %1, i32 104
  %18 = load i8, ptr %m_sectbb_log, align 1
  %conv25 = zext i8 %18 to i32
  %shl26 = shl i32 3, %conv25
  %conv27 = sext i32 %shl26 to i64
  %19 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom30 = zext i8 %19 to i64
  %shr31 = ashr i64 %conv27, %sh_prom30
  %conv32 = trunc i64 %shr31 to i32
  %add35 = add i32 %conv32, 3
  %20 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add35, ptr %add.ptr23, align 8
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %21 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %22, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %23 = ptrtoint ptr %m_sectbb_log to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %m_sectbb_log, align 1
  %conv53 = zext i8 %24 to i32
  %shl54 = shl i32 3, %conv53
  %conv55 = sext i32 %shl54 to i64
  %25 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom58 = zext i8 %26 to i64
  %shr59 = ashr i64 %conv55, %sh_prom58
  %conv60 = trunc i64 %shr59 to i32
  %. = select i1 %tobool.i.not, i32 4, i32 5
  %add64 = add i32 %., %conv60
  %27 = load i8, ptr %m_sectbb_log, align 1
  %conv66 = zext i8 %27 to i32
  %shl67 = shl i32 3, %conv66
  %conv68 = sext i32 %shl67 to i64
  %28 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom71 = zext i8 %28 to i64
  %shr72 = ashr i64 %conv68, %sh_prom71
  %conv73 = trunc i64 %shr72 to i32
  %add76.neg = add i32 %add64, -3
  %sub = sub i32 %add76.neg, %conv73
  %rm_blockcount77 = getelementptr i8, ptr %1, i32 108
  %29 = ptrtoint ptr %rm_blockcount77 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub, ptr %rm_blockcount77, align 4
  %rm_owner78 = getelementptr i8, ptr %1, i32 112
  %30 = ptrtoint ptr %rm_owner78 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 -6, ptr %rm_owner78, align 8
  %rm_offset79 = getelementptr i8, ptr %1, i32 120
  %31 = ptrtoint ptr %rm_offset79 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 0, ptr %rm_offset79, align 8
  %add.ptr81 = getelementptr i8, ptr %1, i32 128
  %32 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %m_features.i, align 8
  %and.i205 = and i64 %33, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i205)
  %tobool.i206.not = icmp eq i64 %and.i205, 0
  %.sink211 = select i1 %tobool.i206.not, i32 4, i32 5
  %34 = ptrtoint ptr %m_sectbb_log to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %m_sectbb_log, align 1
  %conv101 = zext i8 %35 to i32
  %shl102 = shl i32 3, %conv101
  %conv103 = sext i32 %shl102 to i64
  %36 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom106 = zext i8 %37 to i64
  %shr107 = ashr i64 %conv103, %sh_prom106
  %conv108 = trunc i64 %shr107 to i32
  %add112 = add i32 %.sink211, %conv108
  %38 = ptrtoint ptr %add.ptr81 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add112, ptr %add.ptr81, align 8
  %rm_blockcount116 = getelementptr i8, ptr %1, i32 132
  %39 = ptrtoint ptr %rm_blockcount116 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %rm_blockcount116, align 4
  %rm_owner117 = getelementptr i8, ptr %1, i32 136
  %40 = ptrtoint ptr %rm_owner117 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 -5, ptr %rm_owner117, align 8
  %rm_offset118 = getelementptr i8, ptr %1, i32 144
  %41 = ptrtoint ptr %rm_offset118 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 0, ptr %rm_offset118, align 8
  %42 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %m_features.i, align 8
  %and.i208 = and i64 %43, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i208)
  %tobool.i209.not = icmp eq i64 %and.i208, 0
  br i1 %tobool.i209.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr121 = getelementptr i8, ptr %1, i32 152
  %call122 = tail call i32 @xfs_refc_block(ptr noundef %mp) #9
  %44 = ptrtoint ptr %add.ptr121 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call122, ptr %add.ptr121, align 8
  %rm_blockcount124 = getelementptr i8, ptr %1, i32 156
  %45 = ptrtoint ptr %rm_blockcount124 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %rm_blockcount124, align 4
  %rm_owner125 = getelementptr i8, ptr %1, i32 160
  %46 = ptrtoint ptr %rm_owner125 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 -8, ptr %rm_owner125, align 8
  %rm_offset126 = getelementptr i8, ptr %1, i32 168
  %47 = ptrtoint ptr %rm_offset126 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 0, ptr %rm_offset126, align 8
  %bb_numrecs = getelementptr inbounds %struct.xfs_btree_block, ptr %1, i32 0, i32 2
  %48 = ptrtoint ptr %bb_numrecs to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %bb_numrecs, align 2
  %add.i = add i16 %49, 1
  store i16 %add.i, ptr %bb_numrecs, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sb_logstart.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 6
  %50 = ptrtoint ptr %sb_logstart.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %sb_logstart.i, align 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %51)
  %cmp.not.i = icmp eq i64 %51, 0
  br i1 %cmp.not.i, label %if.end.if.end146_crit_edge, label %is_log_ag.exit

if.end.if.end146_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end146

is_log_ag.exit:                                   ; preds = %if.end
  %52 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %id, align 8
  %sb_agblklog.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 24
  %54 = ptrtoint ptr %sb_agblklog.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %sb_agblklog.i, align 4
  %sh_prom.i = zext i8 %55 to i64
  %shr.i = lshr i64 %51, %sh_prom.i
  %conv4.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %conv4.i)
  %cmp5.i = icmp eq i32 %53, %conv4.i
  br i1 %cmp5.i, label %if.then128, label %is_log_ag.exit.if.end146_crit_edge

is_log_ag.exit.if.end146_crit_edge:               ; preds = %is_log_ag.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end146

if.then128:                                       ; preds = %is_log_ag.exit
  call void @__sanitizer_cov_trace_pc() #11
  %bb_numrecs130 = getelementptr inbounds %struct.xfs_btree_block, ptr %1, i32 0, i32 2
  %56 = ptrtoint ptr %bb_numrecs130 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %bb_numrecs130, align 2
  %conv131 = zext i16 %57 to i32
  %mul = mul nuw nsw i32 %conv131, 24
  %add.ptr134 = getelementptr i8, ptr %add.ptr, i32 %mul
  %58 = ptrtoint ptr %sb_agblklog.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %sb_agblklog.i, align 4
  %conv136 = zext i8 %59 to i32
  %notmask.i = shl nsw i32 -1, %conv136
  %sub.i = xor i32 %notmask.i, -1
  %60 = trunc i64 %51 to i32
  %conv139 = and i32 %sub.i, %60
  %61 = ptrtoint ptr %add.ptr134 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv139, ptr %add.ptr134, align 8
  %sb_logblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 14
  %62 = ptrtoint ptr %sb_logblocks to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sb_logblocks, align 32
  %rm_blockcount142 = getelementptr inbounds %struct.xfs_rmap_rec, ptr %add.ptr134, i32 0, i32 1
  %64 = ptrtoint ptr %rm_blockcount142 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %rm_blockcount142, align 4
  %rm_owner143 = getelementptr inbounds %struct.xfs_rmap_rec, ptr %add.ptr134, i32 0, i32 2
  %65 = ptrtoint ptr %rm_owner143 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 -4, ptr %rm_owner143, align 8
  %rm_offset144 = getelementptr inbounds %struct.xfs_rmap_rec, ptr %add.ptr134, i32 0, i32 3
  %66 = ptrtoint ptr %rm_offset144 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 0, ptr %rm_offset144, align 8
  %add.i210 = add i16 %57, 1
  store i16 %add.i210, ptr %bb_numrecs130, align 2
  br label %if.end146

if.end146:                                        ; preds = %if.then128, %is_log_ag.exit.if.end146_crit_edge, %if.end.if.end146_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_refc_block(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_ag_shrink_space(ptr noundef %mp, ptr noundef %tpp, i32 noundef %agno, i32 noundef %delta) #0 align 64 {
entry:
  %args = alloca %struct.xfs_alloc_arg, align 8
  %agibp = alloca ptr, align 4
  %agfbp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %args) #9
  %0 = getelementptr inbounds i8, ptr %args, i32 88
  %1 = call ptr @memset(ptr %0, i32 255, i32 40)
  %2 = ptrtoint ptr %tpp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tpp, align 4
  %4 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %args, align 8
  %mp1 = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 1
  %5 = ptrtoint ptr %mp1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %mp, ptr %mp1, align 4
  %agbp = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 2
  %fsbno = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 4
  %agbno = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 6
  %minlen = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 7
  %6 = call ptr @memset(ptr %agbp, i32 0, i32 24)
  %7 = ptrtoint ptr %minlen to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %delta, ptr %minlen, align 8
  %maxlen = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 8
  %8 = ptrtoint ptr %maxlen to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %delta, ptr %maxlen, align 4
  %mod = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 9
  %9 = ptrtoint ptr %mod to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %mod, align 8
  %prod = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 10
  %10 = ptrtoint ptr %prod to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %prod, align 4
  %minleft = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 11
  %type = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 18
  %11 = call ptr @memset(ptr %minleft, i32 0, i32 28)
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 64, ptr %type, align 4
  %otype = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 19
  %oinfo = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 23
  %13 = call ptr @memset(ptr %otype, i32 0, i32 10)
  %14 = call ptr @memcpy(ptr %oinfo, ptr @XFS_RMAP_OINFO_SKIP_UPDATE, i32 24)
  %resv = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 24
  %15 = ptrtoint ptr %resv to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %resv, align 8
  %alloc_minlen_only = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 25
  %16 = ptrtoint ptr %alloc_minlen_only to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %alloc_minlen_only, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agibp) #9
  %17 = ptrtoint ptr %agibp to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -1 to ptr), ptr %agibp, align 4, !annotation !93
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agfbp) #9
  %18 = ptrtoint ptr %agfbp to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 -1 to ptr), ptr %agfbp, align 4, !annotation !93
  %sb_agcount = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 12
  %19 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sb_agcount, align 8
  %sub = add i32 %20, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %agno)
  %cmp = icmp eq i32 %sub, %agno
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !83

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 786) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %21 = ptrtoint ptr %tpp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tpp, align 4
  %call = call i32 @xfs_ialloc_read_agi(ptr noundef %mp, ptr noundef %22, i32 noundef %agno, ptr noundef nonnull %agibp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %23 = ptrtoint ptr %agibp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %agibp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %24, i32 0, i32 16
  %25 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %b_addr, align 4
  %27 = ptrtoint ptr %tpp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tpp, align 4
  %call5 = call i32 @xfs_alloc_read_agf(ptr noundef %mp, ptr noundef %28, i32 noundef %agno, i32 noundef 0, ptr noundef nonnull %agfbp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %29 = ptrtoint ptr %agfbp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %agfbp, align 4
  %b_addr9 = getelementptr inbounds %struct.xfs_buf, ptr %30, i32 0, i32 16
  %31 = ptrtoint ptr %b_addr9 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %b_addr9, align 4
  %agi_length = getelementptr inbounds %struct.xfs_agi, ptr %26, i32 0, i32 3
  %33 = ptrtoint ptr %agi_length to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %agi_length, align 4
  %agf_length = getelementptr inbounds %struct.xfs_agf, ptr %32, i32 0, i32 3
  %35 = ptrtoint ptr %agf_length to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %agf_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %34)
  %cmp11.not = icmp eq i32 %36, %34
  br i1 %cmp11.not, label %if.end21, label %__here, !prof !83

__here:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !104
  call void @xfs_corruption_error(ptr noundef nonnull @.str.18, i32 noundef 1, ptr noundef %mp, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 800, ptr noundef blockaddress(@xfs_ag_shrink_space, %__here)) #9
  br label %cleanup

if.end21:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %delta)
  %cmp22.not = icmp ugt i32 %34, %delta
  br i1 %cmp22.not, label %if.end24, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %if.end21
  %conv = zext i32 %agno to i64
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 24
  %37 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %sb_agblklog, align 4
  %sh_prom = zext i8 %38 to i64
  %shl = shl i64 %conv, %sh_prom
  %sub27 = sub i32 %34, %delta
  %conv28 = zext i32 %sub27 to i64
  %or = or i64 %shl, %conv28
  %39 = ptrtoint ptr %fsbno to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %or, ptr %fsbno, align 8
  %40 = ptrtoint ptr %tpp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tpp, align 4
  %42 = ptrtoint ptr %agibp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %agibp, align 4
  %call31 = call i32 @xfs_ialloc_check_shrink(ptr noundef %41, i32 noundef %agno, ptr noundef %43, i32 noundef %sub27) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end34:                                         ; preds = %if.end24
  %44 = ptrtoint ptr %agibp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %agibp, align 4
  %b_pag = getelementptr inbounds %struct.xfs_buf, ptr %45, i32 0, i32 13
  %46 = ptrtoint ptr %b_pag to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %b_pag, align 8
  %call35 = call i32 @xfs_ag_resv_free(ptr noundef %47) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  %call39 = call i32 @xfs_alloc_vextent(ptr noundef nonnull %args) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.lhs.true, label %if.end38.if.then47_crit_edge

if.end38.if.then47_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then47

land.lhs.true:                                    ; preds = %if.end38
  %48 = ptrtoint ptr %agbno to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %agbno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %cmp42 = icmp eq i32 %49, -1
  br i1 %cmp42, label %land.lhs.true.if.then47_crit_edge, label %if.end52

land.lhs.true.if.then47_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then47

if.then47:                                        ; preds = %land.lhs.true.if.then47_crit_edge, %if.end38.if.then47_crit_edge
  %error.0.ph = phi i32 [ %call39, %if.end38.if.then47_crit_edge ], [ -28, %land.lhs.true.if.then47_crit_edge ]
  %50 = ptrtoint ptr %tpp to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tpp, align 4
  %52 = ptrtoint ptr %agfbp to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %agfbp, align 4
  call void @xfs_trans_bhold(ptr noundef %51, ptr noundef %53) #9
  %call48 = call i32 @xfs_trans_roll(ptr noundef %tpp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.then47.cleanup_crit_edge

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end51:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %tpp to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tpp, align 4
  %56 = ptrtoint ptr %agfbp to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %agfbp, align 4
  call void @xfs_trans_bjoin(ptr noundef %55, ptr noundef %57) #9
  br label %resv_init_out

if.end52:                                         ; preds = %land.lhs.true
  %58 = ptrtoint ptr %agi_length to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %agi_length, align 4
  %add.i = sub i32 %59, %delta
  store i32 %add.i, ptr %agi_length, align 4
  %60 = ptrtoint ptr %agf_length to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %agf_length, align 4
  %add.i143 = sub i32 %61, %delta
  store i32 %add.i143, ptr %agf_length, align 4
  %62 = ptrtoint ptr %agibp to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %agibp, align 4
  %b_pag57 = getelementptr inbounds %struct.xfs_buf, ptr %63, i32 0, i32 13
  %64 = ptrtoint ptr %b_pag57 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %b_pag57, align 8
  %66 = ptrtoint ptr %tpp to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tpp, align 4
  %call58 = call i32 @xfs_ag_resv_init(ptr noundef %65, ptr noundef %67) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end73, label %if.then60

if.then60:                                        ; preds = %if.end52
  %68 = ptrtoint ptr %agi_length to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %agi_length, align 4
  %add.i144 = add i32 %69, %delta
  store i32 %add.i144, ptr %agi_length, align 4
  %70 = ptrtoint ptr %agf_length to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %agf_length, align 4
  %add.i145 = add i32 %71, %delta
  store i32 %add.i145, ptr %agf_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call58)
  %cmp63.not = icmp eq i32 %call58, -28
  br i1 %cmp63.not, label %if.end66, label %if.then60.resv_err_crit_edge

if.then60.resv_err_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  br label %resv_err

if.end66:                                         ; preds = %if.then60
  %72 = ptrtoint ptr %tpp to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tpp, align 4
  %74 = ptrtoint ptr %fsbno to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %fsbno, align 8
  %conv68 = zext i32 %delta to i64
  call void @__xfs_free_extent_later(ptr noundef %73, i64 noundef %75, i64 noundef %conv68, ptr noundef null, i1 noundef zeroext true) #9
  %call69 = call i32 @xfs_defer_finish(ptr noundef %tpp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end66.resv_init_out_crit_edge, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end66.resv_init_out_crit_edge:                 ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %resv_init_out

if.end73:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %tpp to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tpp, align 4
  %78 = ptrtoint ptr %agibp to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %agibp, align 4
  call void @xfs_ialloc_log_agi(ptr noundef %77, ptr noundef %79, i32 noundef 8) #9
  %80 = ptrtoint ptr %tpp to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %tpp, align 4
  %82 = ptrtoint ptr %agfbp to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %agfbp, align 4
  call void @xfs_alloc_log_agf(ptr noundef %81, ptr noundef %83, i32 noundef 8) #9
  br label %cleanup

resv_init_out:                                    ; preds = %if.end66.resv_init_out_crit_edge, %if.end51
  %error.1 = phi i32 [ %error.0.ph, %if.end51 ], [ -28, %if.end66.resv_init_out_crit_edge ]
  %84 = ptrtoint ptr %agibp to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %agibp, align 4
  %b_pag74 = getelementptr inbounds %struct.xfs_buf, ptr %85, i32 0, i32 13
  %86 = ptrtoint ptr %b_pag74 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %b_pag74, align 8
  %88 = ptrtoint ptr %tpp to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %tpp, align 4
  %call75 = call i32 @xfs_ag_resv_init(ptr noundef %87, ptr noundef %89) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %resv_init_out.cleanup_crit_edge, label %resv_init_out.resv_err_crit_edge

resv_init_out.resv_err_crit_edge:                 ; preds = %resv_init_out
  call void @__sanitizer_cov_trace_pc() #11
  br label %resv_err

resv_init_out.cleanup_crit_edge:                  ; preds = %resv_init_out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

resv_err:                                         ; preds = %resv_init_out.resv_err_crit_edge, %if.then60.resv_err_crit_edge
  %err2.0 = phi i32 [ %call75, %resv_init_out.resv_err_crit_edge ], [ %call58, %if.then60.resv_err_crit_edge ]
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.19, i32 noundef %err2.0) #9
  call void @xfs_do_force_shutdown(ptr noundef %mp, i32 noundef 8, ptr noundef nonnull @.str.1, i32 noundef 878) #9
  br label %cleanup

cleanup:                                          ; preds = %resv_err, %resv_init_out.cleanup_crit_edge, %if.end73, %if.end66.cleanup_crit_edge, %if.then47.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %__here, %if.end.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -117, %__here ], [ %err2.0, %resv_err ], [ 0, %if.end73 ], [ %call, %cond.end.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ -22, %if.end21.cleanup_crit_edge ], [ %call31, %if.end24.cleanup_crit_edge ], [ %call35, %if.end34.cleanup_crit_edge ], [ %call48, %if.then47.cleanup_crit_edge ], [ %call69, %if.end66.cleanup_crit_edge ], [ %error.1, %resv_init_out.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agfbp) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agibp) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %args) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ialloc_read_agi(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_alloc_read_agf(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_corruption_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ialloc_check_shrink(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ag_resv_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_alloc_vextent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_bhold(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_roll(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_bjoin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ag_resv_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xfs_free_extent_later(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_defer_finish(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ialloc_log_agi(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_alloc_log_agf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_do_force_shutdown(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_ag_extend_space(ptr noundef %mp, ptr noundef %tp, ptr nocapture noundef readonly %id, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #9
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !93
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 8
  %call = call i32 @xfs_ialloc_read_agi(ptr noundef %mp, ptr noundef %tp, i32 noundef %2, ptr noundef nonnull %bp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %4, i32 0, i32 16
  %5 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %b_addr, align 4
  %agi_length = getelementptr inbounds %struct.xfs_agi, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %agi_length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %agi_length, align 4
  %add.i = add i32 %8, %len
  store i32 %add.i, ptr %agi_length, align 4
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 8
  %sb_agcount = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 12
  %11 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sb_agcount, align 8
  %sub = add i32 %12, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %sub)
  %cmp = icmp eq i32 %10, %sub
  br i1 %cmp, label %if.end.cond.end_crit_edge, label %lor.rhs

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

lor.rhs:                                          ; preds = %if.end
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %13 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sb_agblocks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %14)
  %cmp4 = icmp eq i32 %add.i, %14
  br i1 %cmp4, label %lor.rhs.cond.end_crit_edge, label %cond.false, !prof !83

lor.rhs.cond.end_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 907) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %lor.rhs.cond.end_crit_edge, %if.end.cond.end_crit_edge
  %15 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bp, align 4
  call void @xfs_ialloc_log_agi(ptr noundef %tp, ptr noundef %16, i32 noundef 8) #9
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id, align 8
  %call8 = call i32 @xfs_alloc_read_agf(ptr noundef %mp, ptr noundef %tp, i32 noundef %18, i32 noundef 0, ptr noundef nonnull %bp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %cond.end
  %19 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bp, align 4
  %b_addr12 = getelementptr inbounds %struct.xfs_buf, ptr %20, i32 0, i32 16
  %21 = ptrtoint ptr %b_addr12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %b_addr12, align 4
  %agf_length = getelementptr inbounds %struct.xfs_agf, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %agf_length to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %agf_length, align 4
  %add.i68 = add i32 %24, %len
  store i32 %add.i68, ptr %agf_length, align 4
  %25 = ptrtoint ptr %agi_length to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %agi_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i68, i32 %26)
  %cmp15 = icmp eq i32 %add.i68, %26
  br i1 %cmp15, label %if.end11.cond.end24_crit_edge, label %cond.false23, !prof !83

if.end11.cond.end24_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end24

cond.false23:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 919) #9
  br label %cond.end24

cond.end24:                                       ; preds = %cond.false23, %if.end11.cond.end24_crit_edge
  %27 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bp, align 4
  call void @xfs_alloc_log_agf(ptr noundef %tp, ptr noundef %28, i32 noundef 8) #9
  %29 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bp, align 4
  %b_pag = getelementptr inbounds %struct.xfs_buf, ptr %30, i32 0, i32 13
  %31 = ptrtoint ptr %b_pag to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %b_pag, align 8
  %33 = ptrtoint ptr %agf_length to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %agf_length, align 4
  %sub26 = sub i32 %34, %len
  %call27 = call i32 @xfs_rmap_free(ptr noundef %tp, ptr noundef %30, ptr noundef %32, i32 noundef %sub26, i32 noundef %len, ptr noundef nonnull @XFS_RMAP_OINFO_SKIP_UPDATE) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %cond.end24.cleanup_crit_edge

cond.end24.cleanup_crit_edge:                     ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end30:                                         ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %id, align 8
  %conv = zext i32 %36 to i64
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 24
  %37 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %sb_agblklog, align 4
  %sh_prom = zext i8 %38 to i64
  %shl = shl i64 %conv, %sh_prom
  %39 = ptrtoint ptr %agf_length to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %agf_length, align 4
  %sub35 = sub i32 %40, %len
  %conv36 = zext i32 %sub35 to i64
  %or = or i64 %shl, %conv36
  %call.i = call i32 @__xfs_free_extent(ptr noundef %tp, i64 noundef %or, i32 noundef %len, ptr noundef nonnull @XFS_RMAP_OINFO_SKIP_UPDATE, i32 noundef 0, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %cond.end24.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end30 ], [ %call, %entry.cleanup_crit_edge ], [ %call8, %cond.end.cleanup_crit_edge ], [ %call27, %cond.end24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_rmap_free(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_ag_get_geometry(ptr noundef %mp, i32 noundef %agno, ptr noundef %ageo) local_unnamed_addr #0 align 64 {
entry:
  %agi_bp = alloca ptr, align 4
  %agf_bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agi_bp) #9
  %0 = ptrtoint ptr %agi_bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %agi_bp, align 4, !annotation !93
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agf_bp) #9
  %1 = ptrtoint ptr %agf_bp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %agf_bp, align 4, !annotation !93
  %sb_agcount = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 12
  %2 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb_agcount, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %agno)
  %cmp.not = icmp ugt i32 %3, %agno
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @xfs_ialloc_read_agi(ptr noundef %mp, ptr noundef null, i32 noundef %agno, ptr noundef nonnull %agi_bp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call3 = call i32 @xfs_alloc_read_agf(ptr noundef %mp, ptr noundef null, i32 noundef %agno, i32 noundef 0, ptr noundef nonnull %agf_bp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end2.out_agi_crit_edge

if.end2.out_agi_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_agi

if.end6:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %agi_bp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %agi_bp, align 4
  %b_pag = getelementptr inbounds %struct.xfs_buf, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %b_pag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_pag, align 8
  %8 = call ptr @memset(ptr %ageo, i32 0, i32 128)
  %9 = ptrtoint ptr %ageo to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %agno, ptr %ageo, align 8
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %5, i32 0, i32 16
  %10 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_addr, align 4
  %agi_count = getelementptr inbounds %struct.xfs_agi, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %agi_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %agi_count, align 8
  %ag_icount = getelementptr inbounds %struct.xfs_ag_geometry, ptr %ageo, i32 0, i32 3
  %14 = ptrtoint ptr %ag_icount to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %ag_icount, align 4
  %agi_freecount = getelementptr inbounds %struct.xfs_agi, ptr %11, i32 0, i32 7
  %15 = ptrtoint ptr %agi_freecount to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %agi_freecount, align 4
  %ag_ifree = getelementptr inbounds %struct.xfs_ag_geometry, ptr %ageo, i32 0, i32 4
  %17 = ptrtoint ptr %ag_ifree to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %ag_ifree, align 8
  %18 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %agf_bp, align 4
  %b_addr7 = getelementptr inbounds %struct.xfs_buf, ptr %19, i32 0, i32 16
  %20 = ptrtoint ptr %b_addr7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %b_addr7, align 4
  %agf_length = getelementptr inbounds %struct.xfs_agf, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %agf_length to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %agf_length, align 4
  %ag_length = getelementptr inbounds %struct.xfs_ag_geometry, ptr %ageo, i32 0, i32 1
  %24 = ptrtoint ptr %ag_length to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %ag_length, align 4
  %pagf_freeblks = getelementptr inbounds %struct.xfs_perag, ptr %7, i32 0, i32 10
  %25 = ptrtoint ptr %pagf_freeblks to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pagf_freeblks, align 4
  %pagf_flcount = getelementptr inbounds %struct.xfs_perag, ptr %7, i32 0, i32 9
  %27 = ptrtoint ptr %pagf_flcount to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pagf_flcount, align 4
  %add = add i32 %28, %26
  %pagf_btreeblks = getelementptr inbounds %struct.xfs_perag, ptr %7, i32 0, i32 12
  %29 = ptrtoint ptr %pagf_btreeblks to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pagf_btreeblks, align 4
  %add8 = add i32 %add, %30
  %call9 = call i32 @xfs_ag_resv_needed(ptr noundef %7, i32 noundef 0) #9
  %sub = sub i32 %add8, %call9
  %ag_freeblks = getelementptr inbounds %struct.xfs_ag_geometry, ptr %ageo, i32 0, i32 2
  %31 = ptrtoint ptr %ag_freeblks to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub, ptr %ag_freeblks, align 8
  call void @xfs_ag_geom_health(ptr noundef %7, ptr noundef %ageo) #9
  %32 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %agf_bp, align 4
  call void @xfs_buf_unlock(ptr noundef %33) #9
  call void @xfs_buf_rele(ptr noundef %33) #9
  br label %out_agi

out_agi:                                          ; preds = %if.end6, %if.end2.out_agi_crit_edge
  %34 = ptrtoint ptr %agi_bp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %agi_bp, align 4
  call void @xfs_buf_unlock(ptr noundef %35) #9
  call void @xfs_buf_rele(ptr noundef %35) #9
  br label %cleanup

cleanup:                                          ; preds = %out_agi, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %out_agi ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agf_bp) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agi_bp) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ag_resv_needed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ag_geom_health(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_perag_get(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_perag_get_tag(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_perag_put(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_release(ptr noundef %l) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %2, %6
  br i1 %cmp.not, label %land.lhs.true.if.end35_crit_edge, label %do.end, !prof !83

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

do.end:                                           ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_locks_off() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end35_crit_edge, label %land.lhs.true5

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %7 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end35_crit_edge

land.lhs.true5.if.end35_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 36, i32 noundef 9, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #9
  br label %if.end35

if.end35:                                         ; preds = %do.end19, %land.lhs.true5.if.end35_crit_edge, %do.end.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  %owner37 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner37 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %owner37, align 4
  br label %__here

__here:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef %l, i32 noundef ptrtoint (ptr blockaddress(@local_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_sb_to_disk(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_agfl_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_btree_init_block(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_freesp_init_recs(ptr nocapture noundef readonly %mp, ptr nocapture noundef readonly %bp, ptr nocapture noundef readonly %id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %2 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %cond = select i1 %tobool.i.not, i32 16, i32 56
  %add.ptr = getelementptr i8, ptr %1, i32 %cond
  %m_ag_prealloc_blocks = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 47
  %4 = ptrtoint ptr %m_ag_prealloc_blocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %m_ag_prealloc_blocks, align 4
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %add.ptr, align 4
  %sb_logstart.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 6
  %7 = ptrtoint ptr %sb_logstart.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %sb_logstart.i, align 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %cmp.not.i = icmp eq i64 %8, 0
  br i1 %cmp.not.i, label %entry.if.end22_crit_edge, label %is_log_ag.exit

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

is_log_ag.exit:                                   ; preds = %entry
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 8
  %sb_agblklog.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 24
  %11 = ptrtoint ptr %sb_agblklog.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %sb_agblklog.i, align 4
  %sh_prom.i = zext i8 %12 to i64
  %shr.i = lshr i64 %8, %sh_prom.i
  %conv4.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv4.i)
  %cmp5.i = icmp eq i32 %10, %conv4.i
  br i1 %cmp5.i, label %if.then, label %is_log_ag.exit.if.end22_crit_edge

is_log_ag.exit.if.end22_crit_edge:                ; preds = %is_log_ag.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then:                                          ; preds = %is_log_ag.exit
  %13 = ptrtoint ptr %sb_agblklog.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sb_agblklog.i, align 4
  %conv = zext i8 %14 to i32
  %notmask.i = shl nsw i32 -1, %conv
  %sub.i = xor i32 %notmask.i, -1
  %15 = trunc i64 %8 to i32
  %conv7 = and i32 %sub.i, %15
  %16 = ptrtoint ptr %m_ag_prealloc_blocks to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %m_ag_prealloc_blocks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv7, i32 %17)
  %cmp.not = icmp ult i32 %conv7, %17
  br i1 %cmp.not, label %cond.false, label %if.then.cond.end_crit_edge, !prof !101

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1, i32 noundef 361) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then.cond.end_crit_edge
  %18 = ptrtoint ptr %m_ag_prealloc_blocks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %m_ag_prealloc_blocks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv7, i32 %19)
  %cmp12.not = icmp eq i32 %conv7, %19
  br i1 %cmp12.not, label %cond.end.if.end_crit_edge, label %if.then14

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then14:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 %conv7, %19
  %ar_blockcount = getelementptr inbounds %struct.xfs_alloc_rec, ptr %add.ptr, i32 0, i32 1
  %20 = ptrtoint ptr %ar_blockcount to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub, ptr %ar_blockcount, align 4
  %add.ptr16 = getelementptr %struct.xfs_alloc_rec, ptr %add.ptr, i32 1
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr, align 4
  %add = add i32 %22, %sub
  %23 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add, ptr %add.ptr16, align 4
  %bb_numrecs = getelementptr inbounds %struct.xfs_btree_block, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %bb_numrecs to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %bb_numrecs, align 2
  %add.i = add i16 %25, 1
  store i16 %add.i, ptr %bb_numrecs, align 2
  br label %if.end

if.end:                                           ; preds = %if.then14, %cond.end.if.end_crit_edge
  %arec.0 = phi ptr [ %add.ptr16, %if.then14 ], [ %add.ptr, %cond.end.if.end_crit_edge ]
  %sb_logblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 14
  %26 = ptrtoint ptr %sb_logblocks to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sb_logblocks, align 32
  %28 = ptrtoint ptr %arec.0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arec.0, align 4
  %add.i53 = add i32 %29, %27
  store i32 %add.i53, ptr %arec.0, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end, %is_log_ag.exit.if.end22_crit_edge, %entry.if.end22_crit_edge
  %arec.1 = phi ptr [ %arec.0, %if.end ], [ %add.ptr, %is_log_ag.exit.if.end22_crit_edge ], [ %add.ptr, %entry.if.end22_crit_edge ]
  %agsize = getelementptr inbounds %struct.aghdr_init_data, ptr %id, i32 0, i32 1
  %30 = ptrtoint ptr %agsize to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %agsize, align 4
  %32 = ptrtoint ptr %arec.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arec.1, align 4
  %sub24 = sub i32 %31, %33
  %ar_blockcount25 = getelementptr inbounds %struct.xfs_alloc_rec, ptr %arec.1, i32 0, i32 1
  %34 = ptrtoint ptr %ar_blockcount25 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub24, ptr %ar_blockcount25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %tobool27.not = icmp eq i32 %31, %33
  br i1 %tobool27.not, label %if.then28, label %if.end22.if.end30_crit_edge

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %bb_numrecs29 = getelementptr inbounds %struct.xfs_btree_block, ptr %1, i32 0, i32 2
  %35 = ptrtoint ptr %bb_numrecs29 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %bb_numrecs29, align 2
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end22.if.end30_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_buf_delwri_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_buf_get_uncached(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfs_free_extent(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_rele(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !18, !19, !21, !22, !24, !25, !26, !27, !29, !30, !32, !34, !36, !38, !40, !42, !43, !44, !46, !47, !49, !50, !51, !52, !54, !55, !57, !58, !60, !61, !63, !65, !66, !67, !69, !70}
!llvm.named.register.sp = !{!72}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/libxfs/xfs_ag.c", i32 52, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/libxfs/xfs_ag.c", i32 92, i32 2}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/xfs/libxfs/xfs_ag.c", i32 151, i32 17}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/xfs/libxfs/xfs_ag.c", i32 194, i32 3}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/xfs/libxfs/xfs_ag.c", i32 195, i32 3}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../fs/xfs/libxfs/xfs_ag.c", i32 242, i32 4}
!13 = !{ptr @xfs_initialize_perag.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../fs/xfs/libxfs/xfs_ag.c", i32 253, i32 3}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @xfs_initialize_perag.__key.7, !17, !"__key", i1 false, i1 false}
!17 = !{!"../fs/xfs/libxfs/xfs_ag.c", i32 254, i32 3}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @xfs_initialize_perag.__key.9, !20, !"__key", i1 false, i1 false}
!20 = !{!"../fs/xfs/libxfs/xfs_ag.c", i32 255, i32 3}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @xfs_initialize_perag.__key.11, !23, !"__key", i1 false, i1 false}
!23 = !{!"../fs/xfs/libxfs/xfs_ag.c", i32 256, i32 3}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @xfs_initialize_perag.__key.13, !23, !"__key", i1 false, i1 false}
!26 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @xfs_initialize_perag.__key.15, !28, !"__key", i1 false, i1 false}
!28 = !{!"../fs/xfs/libxfs/xfs_ag.c", i32 258, i32 3}
!29 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/xfs/libxfs/xfs_ag.c", i32 786, i32 2}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/xfs/libxfs/xfs_ag.c", i32 800, i32 6}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/xfs/libxfs/xfs_ag.c", i32 877, i32 15}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/xfs/libxfs/xfs_ag.c", i32 906, i32 2}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/xfs/libxfs/xfs_ag.c", i32 919, i32 2}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!42 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!46 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../fs/xfs/xfs_trace.h", i32 189, i32 1}
!49 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!50 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!51 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!54 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../fs/xfs/xfs_trace.h", i32 190, i32 1}
!57 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../fs/xfs/xfs_trace.h", i32 191, i32 1}
!60 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/xfs/libxfs/xfs_ag.c", i32 175, i32 2}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/local_lock_internal.h", i32 36, i32 2}
!65 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @xa_init_flags.__key, !68, !"__key", i1 false, i1 false}
!68 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!69 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/xfs/libxfs/xfs_ag.c", i32 361, i32 3}
!72 = !{!"sp"}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i64 2149961995}
!83 = !{!"branch_weights", i32 2000, i32 1}
!84 = !{i64 2148725908}
!85 = !{i64 2148641193, i64 2148641225, i64 2148641254, i64 2148641288, i64 2148641319, i64 2148641342}
!86 = !{i64 2148726137}
!87 = !{i64 2149962261}
!88 = !{i64 2148268461, i64 2148268466, i64 2148268479, i64 2148268523, i64 2148268557, i64 2148268578}
!89 = !{i64 2156141381}
!90 = !{i64 2156145689}
!91 = !{i64 2149970554}
!92 = !{i64 2149971590}
!93 = !{!"auto-init"}
!94 = !{i64 2156163068}
!95 = !{i64 2156163323}
!96 = !{i64 2148728949}
!97 = !{i64 2148643658, i64 2148643690, i64 2148643719, i64 2148643753, i64 2148643784, i64 2148643807}
!98 = !{i64 2148729178}
!99 = !{i64 2156180754}
!100 = !{i64 2156181001}
!101 = !{!"branch_weights", i32 1, i32 2000}
!102 = !{i64 2152650099}
!103 = !{i8 0, i8 2}
!104 = !{i64 2166373222}
