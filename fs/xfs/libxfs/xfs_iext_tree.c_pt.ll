; ModuleID = '/llk/IR_all_yes/fs/xfs/libxfs/xfs_iext_tree.c_pt.bc'
source_filename = "../fs/xfs/libxfs/xfs_iext_tree.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.74 }
%union.anon.74 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.xfs_iext_cursor = type { ptr, i32 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.0, i16, i8, i32 }
%union.anon.0 = type { ptr }
%struct.xfs_iext_node = type { [21 x i64], [21 x ptr] }
%struct.xfs_iext_rec = type { i64, i64 }
%struct.xfs_iext_leaf = type { [15 x %struct.xfs_iext_rec], ptr, ptr }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__xfsstats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"cur->pos <= 0 || cur->pos >= RECS_PER_LEAF\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fs/xfs/libxfs/xfs_iext_tree.c\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cur->pos >= 0\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cur->pos < xfs_iext_max_recs(ifp)\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cur->pos <= RECS_PER_LEAF\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nr_entries <= RECS_PER_LEAF\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"cur->pos >= nr_entries || xfs_iext_rec_cmp(cur_rec(cur), irec->br_startoff) != 0\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ifp->if_height > 0\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ifp->if_u1.if_root != NULL\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xfs_iext_valid(ifp, cur)\00", [39 x i8] zeroinitializer }, align 32
@xfsstats = external dso_local local_unnamed_addr global %struct.xstats, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"node\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ifp->if_bytes == 0\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"node == ptr\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(irec->br_startoff & ~XFS_IEXT_STARTOFF_MASK) == 0\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(irec->br_blockcount & ~XFS_IEXT_LENGTH_MASK) == 0\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"(irec->br_startblock & ~XFS_IEXT_STARTBLOCK_MASK) == 0\00", [41 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_iext_insert = external dso_local global %struct.tracepoint, align 4
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_iext_insert.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"pos >= nr_entries || xfs_iext_key_cmp(node, pos, offset) != 0\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nr_entries <= KEYS_PER_NODE\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ifp->if_height > 1\00", [45 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_iext_remove = external dso_local global %struct.tracepoint, align 4
@trace_xfs_iext_remove.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"level <= ifp->if_height\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"node->ptrs[pos]\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"node->ptrs[pos] == victim\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pos != KEYS_PER_NODE\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"parent->ptrs[pos] == node\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"node == ifp->if_u1.if_root\00", [37 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_bmap_pre_update = external dso_local global %struct.tracepoint, align 4
@trace_xfs_bmap_pre_update.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_bmap_post_update = external dso_local global %struct.tracepoint, align 4
@trace_xfs_bmap_post_update.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 231, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 236, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 237, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 259, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 644, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 645, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 874, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 875, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 876, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 169, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 584, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 447, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 57, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 58, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 59, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 402, i32 1 }
@___asan_gen_.83 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 108, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 511, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 512, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 412, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 731, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 735, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 736, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 766, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 767, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [33 x i8] c"../fs/xfs/libxfs/xfs_iext_tree.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 780, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xfs_iext_count(ptr nocapture noundef readonly %ifp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %ifp to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ifp, align 8
  %div = sdiv i64 %1, 16
  %conv = trunc i64 %div to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_iext_first(ptr nocapture noundef readonly %ifp, ptr nocapture noundef writeonly %cur) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pos = getelementptr inbounds %struct.xfs_iext_cursor, ptr %cur, i32 0, i32 1
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %pos, align 4
  %if_height.i = getelementptr inbounds %struct.xfs_ifork, ptr %ifp, i32 0, i32 3
  %1 = ptrtoint ptr %if_height.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %if_height.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.xfs_iext_find_first_leaf.exit_crit_edge, label %if.end.i

entry.xfs_iext_find_first_leaf.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_find_first_leaf.exit

if.end.i:                                         ; preds = %entry
  %if_u1.i = getelementptr inbounds %struct.xfs_ifork, ptr %ifp, i32 0, i32 4
  %3 = ptrtoint ptr %if_u1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %if_u1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp11.i = icmp sgt i32 %2, 1
  br i1 %cmp11.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.xfs_iext_find_first_leaf.exit_crit_edge

if.end.i.xfs_iext_find_first_leaf.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_find_first_leaf.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %height.013.i = phi i32 [ %dec.i, %for.inc.i.for.body.i_crit_edge ], [ %2, %if.end.i.for.body.i_crit_edge ]
  %node.012.i = phi ptr [ %6, %for.inc.i.for.body.i_crit_edge ], [ %4, %if.end.i.for.body.i_crit_edge ]
  %ptrs.i = getelementptr inbounds %struct.xfs_iext_node, ptr %node.012.i, i32 0, i32 1
  %5 = ptrtoint ptr %ptrs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ptrs.i, align 8
  %tobool2.not.i = icmp eq ptr %6, null
  br i1 %tobool2.not.i, label %cond.false.i, label %for.body.i.for.inc.i_crit_edge, !prof !76

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

cond.false.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 169) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %cond.false.i, %for.body.i.for.inc.i_crit_edge
  %dec.i = add nsw i32 %height.013.i, -1
  %cmp.i = icmp sgt i32 %height.013.i, 2
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.xfs_iext_find_first_leaf.exit_crit_edge

for.inc.i.xfs_iext_find_first_leaf.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_find_first_leaf.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

xfs_iext_find_first_leaf.exit:                    ; preds = %for.inc.i.xfs_iext_find_first_leaf.exit_crit_edge, %if.end.i.xfs_iext_find_first_leaf.exit_crit_edge, %entry.xfs_iext_find_first_leaf.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.xfs_iext_find_first_leaf.exit_crit_edge ], [ %4, %if.end.i.xfs_iext_find_first_leaf.exit_crit_edge ], [ %6, %for.inc.i.xfs_iext_find_first_leaf.exit_crit_edge ]
  %7 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %retval.0.i, ptr %cur, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_iext_last(ptr nocapture noundef readonly %ifp, ptr nocapture noundef %cur) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %if_height.i = getelementptr inbounds %struct.xfs_ifork, ptr %ifp, i32 0, i32 3
  %0 = ptrtoint ptr %if_height.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %if_height.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %xfs_iext_find_last_leaf.exit.thread, label %if.end.i

xfs_iext_find_last_leaf.exit.thread:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %cur, align 4
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %if_u1.i = getelementptr inbounds %struct.xfs_ifork, ptr %ifp, i32 0, i32 4
  %3 = ptrtoint ptr %if_u1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %if_u1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp27.i = icmp sgt i32 %1, 1
  br i1 %cmp27.i, label %if.end.i.for.cond2.preheader.i_crit_edge, label %if.end.i.xfs_iext_find_last_leaf.exit_crit_edge

if.end.i.xfs_iext_find_last_leaf.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_find_last_leaf.exit

if.end.i.for.cond2.preheader.i_crit_edge:         ; preds = %if.end.i
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc13.i.for.cond2.preheader.i_crit_edge, %if.end.i.for.cond2.preheader.i_crit_edge
  %height.030.i = phi i32 [ %dec.i, %for.inc13.i.for.cond2.preheader.i_crit_edge ], [ %1, %if.end.i.for.cond2.preheader.i_crit_edge ]
  %node.028.i = phi ptr [ %46, %for.inc13.i.for.cond2.preheader.i_crit_edge ], [ %4, %if.end.i.for.cond2.preheader.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.xfs_iext_node, ptr %node.028.i, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool5.not.i = icmp eq ptr %6, null
  br i1 %tobool5.not.i, label %for.cond2.preheader.i.for.end.i_crit_edge, label %for.inc.i

for.cond2.preheader.i.for.end.i_crit_edge:        ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.i:                                        ; preds = %for.cond2.preheader.i
  %arrayidx.1.i = getelementptr %struct.xfs_iext_node, ptr %node.028.i, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool5.not.1.i = icmp eq ptr %8, null
  br i1 %tobool5.not.1.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.1.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx.2.i = getelementptr %struct.xfs_iext_node, ptr %node.028.i, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool5.not.2.i = icmp eq ptr %10, null
  br i1 %tobool5.not.2.i, label %for.inc.1.i.for.end.i_crit_edge, label %for.inc.2.i

for.inc.1.i.for.end.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %arrayidx.3.i = getelementptr %struct.xfs_iext_node, ptr %node.028.i, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.3.i, align 4
  %tobool5.not.3.i = icmp eq ptr %12, null
  br i1 %tobool5.not.3.i, label %for.inc.2.i.for.end.i_crit_edge, label %for.inc.3.i

for.inc.2.i.for.end.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %arrayidx.4.i = getelementptr %struct.xfs_iext_node, ptr %node.028.i, i32 0, i32 1, i32 5
  %13 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.4.i, align 4
  %tobool5.not.4.i = icmp eq ptr %14, null
  br i1 %tobool5.not.4.i, label %for.inc.3.i.for.end.i_crit_edge, label %for.inc.4.i

for.inc.3.i.for.end.i_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %arrayidx.5.i = getelementptr %struct.xfs_iext_node, ptr %node.028.i, i32 0, i32 1, i32 6
  %15 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.5.i, align 4
  %tobool5.not.5.i = icmp eq ptr %16, null
  br i1 %tobool5.not.5.i, label %for.inc.4.i.for.end.i_crit_edge, label %for.inc.5.i

for.inc.4.i.for.end.i_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %arrayidx.6.i = getelementptr %struct.xfs_iext_node, ptr %node.028.i, i32 0, i32 1, i32 7
  %17 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.6.i, align 4
  %tobool5.not.6.i = icmp eq ptr %18, null
  br i1 %tobool5.not.6.i, label %for.inc.5.i.for.end.i_crit_edge, label %for.inc.6.i

for.inc.5.i.for.end.i_crit_edge:                  ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %arrayidx.7.i = getelementptr %struct.xfs_iext_node, ptr %node.028.i, i32 0, i32 1, i32 8
  %19 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.7.i, align 4
  %tobool5.not.7.i = icmp eq ptr %20, null
  br i1 %tobool5.not.7.i, label %for.inc.6.i.for.end.i_crit_edge, label %for.inc.7.i

for.inc.6.i.for.end.i_crit_edge:                  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %arrayidx.8.i = getelementptr %struct.xfs_iext_node, ptr %node.028.i, i32 0, i32 1, i32 9
  %21 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.8.i, align 4
  %tobool5.not.8.i = icmp eq ptr %22, null
  br i1 %tobool5.not.8.i, label %for.inc.7.i.for.end.i_crit_edge, label %for.inc.8.i

for.inc.7.i.for.end.i_crit_edge:                  ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %arrayidx.9.i = getelementptr %struct.xfs_iext_node, ptr %node.028.i, i32 0, i32 1, i32 10
  %23 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.9.i, align 4
  %tobool5.not.9.i = icmp eq ptr %24, null
  br i1 %tobool5.not.9.i, label %for.inc.8.i.for.end.i_crit_edge, label %for.inc.9.i

for.inc.8.i.for.end.i_crit_edge:                  ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.9.i:                                      ; preds = %for.inc.8.i
  %arrayidx.10.i = getelementptr %struct.xfs_iext_node, ptr %node.028.i, i32 0, i32 1, i32 11
  %25 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.10.i, align 4
  %tobool5.not.10.i = icmp eq ptr %26, null
  br i1 %tobool5.not.10.i, label %for.inc.9.i.for.end.i_crit_edge, label %for.inc.10.i

for.inc.9.i.for.end.i_crit_edge:                  ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.10.i:                                     ; preds = %for.inc.9.i
  %arrayidx.11.i = getelementptr %struct.xfs_iext_node, ptr %node.028.i, i32 0, i32 1, i32 12
  %27 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.11.i, align 4
  %tobool5.not.11.i = icmp eq ptr %28, null
  br i1 %tobool5.not.11.i, label %for.inc.10.i.for.end.i_crit_edge, label %for.inc.11.i

for.inc.10.i.for.end.i_crit_edge:                 ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.11.i:                                     ; preds = %for.inc.10.i
  %arrayidx.12.i = getelementptr %struct.xfs_iext_node, ptr %node.028.i, i32 0, i32 1, i32 13
  %29 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.12.i, align 4
  %tobool5.not.12.i = icmp eq ptr %30, null
  br i1 %tobool5.not.12.i, label %for.inc.11.i.for.end.i_crit_edge, label %for.inc.12.i

for.inc.11.i.for.end.i_crit_edge:                 ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.12.i:                                     ; preds = %for.inc.11.i
  %arrayidx.13.i = getelementptr %struct.xfs_iext_node, ptr %node.028.i, i32 0, i32 1, i32 14
  %31 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.13.i, align 4
  %tobool5.not.13.i = icmp eq ptr %32, null
  br i1 %tobool5.not.13.i, label %for.inc.12.i.for.end.i_crit_edge, label %for.inc.13.i

for.inc.12.i.for.end.i_crit_edge:                 ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.13.i:                                     ; preds = %for.inc.12.i
  %arrayidx.14.i = getelementptr %struct.xfs_iext_node, ptr %node.028.i, i32 0, i32 1, i32 15
  %33 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.14.i, align 4
  %tobool5.not.14.i = icmp eq ptr %34, null
  br i1 %tobool5.not.14.i, label %for.inc.13.i.for.end.i_crit_edge, label %for.inc.14.i

for.inc.13.i.for.end.i_crit_edge:                 ; preds = %for.inc.13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.14.i:                                     ; preds = %for.inc.13.i
  %arrayidx.15.i = getelementptr %struct.xfs_iext_node, ptr %node.028.i, i32 0, i32 1, i32 16
  %35 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.15.i, align 4
  %tobool5.not.15.i = icmp eq ptr %36, null
  br i1 %tobool5.not.15.i, label %for.inc.14.i.for.end.i_crit_edge, label %for.inc.15.i

for.inc.14.i.for.end.i_crit_edge:                 ; preds = %for.inc.14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.15.i:                                     ; preds = %for.inc.14.i
  %arrayidx.16.i = getelementptr %struct.xfs_iext_node, ptr %node.028.i, i32 0, i32 1, i32 17
  %37 = ptrtoint ptr %arrayidx.16.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.16.i, align 4
  %tobool5.not.16.i = icmp eq ptr %38, null
  br i1 %tobool5.not.16.i, label %for.inc.15.i.for.end.i_crit_edge, label %for.inc.16.i

for.inc.15.i.for.end.i_crit_edge:                 ; preds = %for.inc.15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.16.i:                                     ; preds = %for.inc.15.i
  %arrayidx.17.i = getelementptr %struct.xfs_iext_node, ptr %node.028.i, i32 0, i32 1, i32 18
  %39 = ptrtoint ptr %arrayidx.17.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.17.i, align 4
  %tobool5.not.17.i = icmp eq ptr %40, null
  br i1 %tobool5.not.17.i, label %for.inc.16.i.for.end.i_crit_edge, label %for.inc.17.i

for.inc.16.i.for.end.i_crit_edge:                 ; preds = %for.inc.16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.17.i:                                     ; preds = %for.inc.16.i
  %arrayidx.18.i = getelementptr %struct.xfs_iext_node, ptr %node.028.i, i32 0, i32 1, i32 19
  %41 = ptrtoint ptr %arrayidx.18.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.18.i, align 4
  %tobool5.not.18.i = icmp eq ptr %42, null
  br i1 %tobool5.not.18.i, label %for.inc.17.i.for.end.i_crit_edge, label %for.inc.18.i

for.inc.17.i.for.end.i_crit_edge:                 ; preds = %for.inc.17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.18.i:                                     ; preds = %for.inc.17.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.19.i = getelementptr %struct.xfs_iext_node, ptr %node.028.i, i32 0, i32 1, i32 20
  %43 = ptrtoint ptr %arrayidx.19.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.19.i, align 4
  %tobool5.not.19.i = icmp eq ptr %44, null
  %spec.select.i = select i1 %tobool5.not.19.i, i32 19, i32 20
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.18.i, %for.inc.17.i.for.end.i_crit_edge, %for.inc.16.i.for.end.i_crit_edge, %for.inc.15.i.for.end.i_crit_edge, %for.inc.14.i.for.end.i_crit_edge, %for.inc.13.i.for.end.i_crit_edge, %for.inc.12.i.for.end.i_crit_edge, %for.inc.11.i.for.end.i_crit_edge, %for.inc.10.i.for.end.i_crit_edge, %for.inc.9.i.for.end.i_crit_edge, %for.inc.8.i.for.end.i_crit_edge, %for.inc.7.i.for.end.i_crit_edge, %for.inc.6.i.for.end.i_crit_edge, %for.inc.5.i.for.end.i_crit_edge, %for.inc.4.i.for.end.i_crit_edge, %for.inc.3.i.for.end.i_crit_edge, %for.inc.2.i.for.end.i_crit_edge, %for.inc.1.i.for.end.i_crit_edge, %for.inc.i.for.end.i_crit_edge, %for.cond2.preheader.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %for.cond2.preheader.i.for.end.i_crit_edge ], [ 1, %for.inc.i.for.end.i_crit_edge ], [ 2, %for.inc.1.i.for.end.i_crit_edge ], [ 3, %for.inc.2.i.for.end.i_crit_edge ], [ 4, %for.inc.3.i.for.end.i_crit_edge ], [ 5, %for.inc.4.i.for.end.i_crit_edge ], [ 6, %for.inc.5.i.for.end.i_crit_edge ], [ 7, %for.inc.6.i.for.end.i_crit_edge ], [ 8, %for.inc.7.i.for.end.i_crit_edge ], [ 9, %for.inc.8.i.for.end.i_crit_edge ], [ 10, %for.inc.9.i.for.end.i_crit_edge ], [ 11, %for.inc.10.i.for.end.i_crit_edge ], [ 12, %for.inc.11.i.for.end.i_crit_edge ], [ 13, %for.inc.12.i.for.end.i_crit_edge ], [ 14, %for.inc.13.i.for.end.i_crit_edge ], [ 15, %for.inc.14.i.for.end.i_crit_edge ], [ 16, %for.inc.15.i.for.end.i_crit_edge ], [ 17, %for.inc.16.i.for.end.i_crit_edge ], [ 18, %for.inc.17.i.for.end.i_crit_edge ], [ %spec.select.i, %for.inc.18.i ]
  %arrayidx9.i = getelementptr %struct.xfs_iext_node, ptr %node.028.i, i32 0, i32 1, i32 %i.0.lcssa.i
  %45 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx9.i, align 4
  %tobool10.not.i = icmp eq ptr %46, null
  br i1 %tobool10.not.i, label %cond.false.i, label %for.end.i.for.inc13.i_crit_edge, !prof !76

for.end.i.for.inc13.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc13.i

cond.false.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 190) #11
  br label %for.inc13.i

for.inc13.i:                                      ; preds = %cond.false.i, %for.end.i.for.inc13.i_crit_edge
  %dec.i = add nsw i32 %height.030.i, -1
  %cmp.i = icmp sgt i32 %height.030.i, 2
  br i1 %cmp.i, label %for.inc13.i.for.cond2.preheader.i_crit_edge, label %for.inc13.i.xfs_iext_find_last_leaf.exit_crit_edge

for.inc13.i.xfs_iext_find_last_leaf.exit_crit_edge: ; preds = %for.inc13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_find_last_leaf.exit

for.inc13.i.for.cond2.preheader.i_crit_edge:      ; preds = %for.inc13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond2.preheader.i

xfs_iext_find_last_leaf.exit:                     ; preds = %for.inc13.i.xfs_iext_find_last_leaf.exit_crit_edge, %if.end.i.xfs_iext_find_last_leaf.exit_crit_edge
  %retval.0.i = phi ptr [ %4, %if.end.i.xfs_iext_find_last_leaf.exit_crit_edge ], [ %46, %for.inc13.i.xfs_iext_find_last_leaf.exit_crit_edge ]
  %47 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %retval.0.i, ptr %cur, align 4
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %xfs_iext_find_last_leaf.exit.cleanup_crit_edge, label %for.cond.preheader

xfs_iext_find_last_leaf.exit.cleanup_crit_edge:   ; preds = %xfs_iext_find_last_leaf.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %xfs_iext_find_last_leaf.exit
  %48 = ptrtoint ptr %if_height.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %if_height.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp.i17 = icmp eq i32 %49, 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %for.cond.preheader
  %i.0 = phi i32 [ %inc, %for.inc ], [ 1, %for.cond.preheader ]
  br i1 %cmp.i17, label %if.then.i, label %for.cond.xfs_iext_max_recs.exit_crit_edge

for.cond.xfs_iext_max_recs.exit_crit_edge:        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_max_recs.exit

if.then.i:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %ifp to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %ifp, align 8
  %div.i.i = sdiv i64 %51, 16
  %conv.i.i = trunc i64 %div.i.i to i32
  br label %xfs_iext_max_recs.exit

xfs_iext_max_recs.exit:                           ; preds = %if.then.i, %for.cond.xfs_iext_max_recs.exit_crit_edge
  %retval.0.i18 = phi i32 [ %conv.i.i, %if.then.i ], [ 15, %for.cond.xfs_iext_max_recs.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %retval.0.i18)
  %cmp = icmp slt i32 %i.0, %retval.0.i18
  br i1 %cmp, label %for.body, label %xfs_iext_max_recs.exit.for.end_crit_edge

xfs_iext_max_recs.exit.for.end_crit_edge:         ; preds = %xfs_iext_max_recs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %xfs_iext_max_recs.exit
  %hi.i = getelementptr [15 x %struct.xfs_iext_rec], ptr %retval.0.i, i32 0, i32 %i.0, i32 1
  %52 = ptrtoint ptr %hi.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %hi.i, align 8
  %cmp.i19 = icmp eq i64 %53, 0
  br i1 %cmp.i19, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %xfs_iext_max_recs.exit.for.end_crit_edge
  %sub = add nsw i32 %i.0, -1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %xfs_iext_find_last_leaf.exit.cleanup_crit_edge, %xfs_iext_find_last_leaf.exit.thread
  %sub.sink = phi i32 [ %sub, %for.end ], [ 0, %xfs_iext_find_last_leaf.exit.thread ], [ 0, %xfs_iext_find_last_leaf.exit.cleanup_crit_edge ]
  %pos7 = getelementptr inbounds %struct.xfs_iext_cursor, ptr %cur, i32 0, i32 1
  %54 = ptrtoint ptr %pos7 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %sub.sink, ptr %pos7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_iext_next(ptr nocapture noundef readonly %ifp, ptr nocapture noundef %cur) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur, align 4
  %tobool.not = icmp eq ptr %1, null
  %pos = getelementptr inbounds %struct.xfs_iext_cursor, ptr %cur, i32 0, i32 1
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pos, align 4
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = add i32 %3, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %4)
  %5 = icmp ult i32 %4, -14
  br i1 %5, label %if.then.cond.end_crit_edge, label %cond.false, !prof !77

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 231) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then.cond.end_crit_edge
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %pos, align 4
  %if_height.i.i = getelementptr inbounds %struct.xfs_ifork, ptr %ifp, i32 0, i32 3
  %7 = ptrtoint ptr %if_height.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %if_height.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %cond.end.xfs_iext_first.exit_crit_edge, label %if.end.i.i

cond.end.xfs_iext_first.exit_crit_edge:           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_first.exit

if.end.i.i:                                       ; preds = %cond.end
  %if_u1.i.i = getelementptr inbounds %struct.xfs_ifork, ptr %ifp, i32 0, i32 4
  %9 = ptrtoint ptr %if_u1.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %if_u1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp11.i.i = icmp sgt i32 %8, 1
  br i1 %cmp11.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.xfs_iext_first.exit_crit_edge

if.end.i.i.xfs_iext_first.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_first.exit

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %height.013.i.i = phi i32 [ %dec.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %8, %if.end.i.i.for.body.i.i_crit_edge ]
  %node.012.i.i = phi ptr [ %12, %for.inc.i.i.for.body.i.i_crit_edge ], [ %10, %if.end.i.i.for.body.i.i_crit_edge ]
  %ptrs.i.i = getelementptr inbounds %struct.xfs_iext_node, ptr %node.012.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %ptrs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ptrs.i.i, align 8
  %tobool2.not.i.i = icmp eq ptr %12, null
  br i1 %tobool2.not.i.i, label %cond.false.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, !prof !76

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

cond.false.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 169) #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %cond.false.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %dec.i.i = add nsw i32 %height.013.i.i, -1
  %cmp.i.i = icmp sgt i32 %height.013.i.i, 2
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.xfs_iext_first.exit_crit_edge

for.inc.i.i.xfs_iext_first.exit_crit_edge:        ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_first.exit

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

xfs_iext_first.exit:                              ; preds = %for.inc.i.i.xfs_iext_first.exit_crit_edge, %if.end.i.i.xfs_iext_first.exit_crit_edge, %cond.end.xfs_iext_first.exit_crit_edge
  %retval.0.i.i = phi ptr [ null, %cond.end.xfs_iext_first.exit_crit_edge ], [ %10, %if.end.i.i.xfs_iext_first.exit_crit_edge ], [ %12, %for.inc.i.i.xfs_iext_first.exit_crit_edge ]
  %13 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %retval.0.i.i, ptr %cur, align 4
  br label %if.end38

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp6 = icmp sgt i32 %3, -1
  br i1 %cmp6, label %if.end.cond.end15_crit_edge, label %cond.false14, !prof !77

if.end.cond.end15_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end15

cond.false14:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 236) #11
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false14, %if.end.cond.end15_crit_edge
  %14 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pos, align 4
  %if_height.i = getelementptr inbounds %struct.xfs_ifork, ptr %ifp, i32 0, i32 3
  %16 = ptrtoint ptr %if_height.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %if_height.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.i = icmp eq i32 %17, 1
  br i1 %cmp.i, label %if.then.i, label %cond.end15.xfs_iext_max_recs.exit_crit_edge

cond.end15.xfs_iext_max_recs.exit_crit_edge:      ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_max_recs.exit

if.then.i:                                        ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %ifp to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %ifp, align 8
  %div.i.i = sdiv i64 %19, 16
  %conv.i.i = trunc i64 %div.i.i to i32
  br label %xfs_iext_max_recs.exit

xfs_iext_max_recs.exit:                           ; preds = %if.then.i, %cond.end15.xfs_iext_max_recs.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i.i, %if.then.i ], [ 15, %cond.end15.xfs_iext_max_recs.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %retval.0.i)
  %cmp17 = icmp slt i32 %15, %retval.0.i
  br i1 %cmp17, label %xfs_iext_max_recs.exit.cond.end26_crit_edge, label %cond.false25, !prof !77

xfs_iext_max_recs.exit.cond.end26_crit_edge:      ; preds = %xfs_iext_max_recs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end26

cond.false25:                                     ; preds = %xfs_iext_max_recs.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 237) #11
  br label %cond.end26

cond.end26:                                       ; preds = %cond.false25, %xfs_iext_max_recs.exit.cond.end26_crit_edge
  %20 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pos, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %pos, align 4
  %22 = ptrtoint ptr %if_height.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %if_height.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp28 = icmp sgt i32 %23, 1
  br i1 %cmp28, label %land.lhs.true, label %cond.end26.if.end38_crit_edge

cond.end26.if.end38_crit_edge:                    ; preds = %cond.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

land.lhs.true:                                    ; preds = %cond.end26
  %24 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cur, align 4
  %tobool.not.i = icmp ne ptr %25, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %inc)
  %cmp.i55 = icmp sgt i32 %inc, -1
  %or.cond = select i1 %tobool.not.i, i1 %cmp.i55, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc)
  %cmp2.not.i = icmp ult i32 %inc, 15
  %or.cond61 = select i1 %or.cond, i1 %cmp2.not.i, i1 false
  br i1 %or.cond61, label %xfs_iext_valid.exit, label %land.lhs.true.land.lhs.true30_crit_edge

land.lhs.true.land.lhs.true30_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true30

xfs_iext_valid.exit:                              ; preds = %land.lhs.true
  %hi.i.i = getelementptr [15 x %struct.xfs_iext_rec], ptr %25, i32 0, i32 %inc, i32 1
  %26 = ptrtoint ptr %hi.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %hi.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %cmp.i12.i.not = icmp eq i64 %27, 0
  br i1 %cmp.i12.i.not, label %xfs_iext_valid.exit.land.lhs.true30_crit_edge, label %xfs_iext_valid.exit.if.end38_crit_edge

xfs_iext_valid.exit.if.end38_crit_edge:           ; preds = %xfs_iext_valid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

xfs_iext_valid.exit.land.lhs.true30_crit_edge:    ; preds = %xfs_iext_valid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true30

land.lhs.true30:                                  ; preds = %xfs_iext_valid.exit.land.lhs.true30_crit_edge, %land.lhs.true.land.lhs.true30_crit_edge
  %next = getelementptr inbounds %struct.xfs_iext_leaf, ptr %25, i32 0, i32 2
  %28 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %next, align 4
  %tobool32.not = icmp eq ptr %29, null
  br i1 %tobool32.not, label %land.lhs.true30.if.end38_crit_edge, label %if.then33

land.lhs.true30.if.end38_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then33:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %cur, align 4
  %31 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %pos, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %land.lhs.true30.if.end38_crit_edge, %xfs_iext_valid.exit.if.end38_crit_edge, %cond.end26.if.end38_crit_edge, %xfs_iext_first.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_iext_prev(ptr nocapture noundef readonly %ifp, ptr nocapture noundef %cur) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur, align 4
  %tobool.not = icmp eq ptr %1, null
  %pos = getelementptr inbounds %struct.xfs_iext_cursor, ptr %cur, i32 0, i32 1
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pos, align 4
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = add i32 %3, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %4)
  %5 = icmp ult i32 %4, -14
  br i1 %5, label %if.then.cond.end_crit_edge, label %cond.false, !prof !77

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 253) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then.cond.end_crit_edge
  tail call void @xfs_iext_last(ptr noundef %ifp, ptr noundef %cur)
  br label %if.end40

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp6 = icmp sgt i32 %3, -1
  br i1 %cmp6, label %if.end.cond.end15_crit_edge, label %cond.false14, !prof !77

if.end.cond.end15_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end15

cond.false14:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 258) #11
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %pos, align 4
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false14, %if.end.cond.end15_crit_edge
  %7 = phi i32 [ %3, %if.end.cond.end15_crit_edge ], [ %.pr, %cond.false14 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp17 = icmp slt i32 %7, 16
  br i1 %cmp17, label %cond.end15.cond.end26_crit_edge, label %cond.false25, !prof !77

cond.end15.cond.end26_crit_edge:                  ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end26

cond.false25:                                     ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 259) #11
  br label %cond.end26

cond.end26:                                       ; preds = %cond.false25, %cond.end15.cond.end26_crit_edge
  %if_height.i.i = getelementptr inbounds %struct.xfs_ifork, ptr %ifp, i32 0, i32 3
  %8 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr61 = load ptr, ptr %cur, align 4
  br label %recurse

recurse:                                          ; preds = %if.then35, %cond.end26
  %9 = phi ptr [ %21, %if.then35 ], [ %.pr61, %cond.end26 ]
  %tobool.not.i = icmp eq ptr %9, null
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %recurse
  %10 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pos, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %pos, align 4
  br i1 %tobool.not.i, label %do.body.do.cond_crit_edge, label %if.end.i

do.body.do.cond_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond

if.end.i:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp.i = icmp slt i32 %dec, 0
  br i1 %cmp.i, label %if.end.i.do.end_crit_edge, label %lor.lhs.false.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false.i:                                  ; preds = %if.end.i
  %12 = ptrtoint ptr %if_height.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %if_height.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i.i = icmp eq i32 %13, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %lor.lhs.false.i.xfs_iext_max_recs.exit.i_crit_edge

lor.lhs.false.i.xfs_iext_max_recs.exit.i_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_max_recs.exit.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %ifp to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ifp, align 8
  %div.i.i.i = sdiv i64 %15, 16
  %conv.i.i.i = trunc i64 %div.i.i.i to i32
  br label %xfs_iext_max_recs.exit.i

xfs_iext_max_recs.exit.i:                         ; preds = %if.then.i.i, %lor.lhs.false.i.xfs_iext_max_recs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %conv.i.i.i, %if.then.i.i ], [ 15, %lor.lhs.false.i.xfs_iext_max_recs.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %dec, i32 %retval.0.i.i)
  %cmp2.not.i = icmp slt i32 %dec, %retval.0.i.i
  br i1 %cmp2.not.i, label %xfs_iext_valid.exit, label %xfs_iext_max_recs.exit.i.do.cond_crit_edge

xfs_iext_max_recs.exit.i.do.cond_crit_edge:       ; preds = %xfs_iext_max_recs.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond

xfs_iext_valid.exit:                              ; preds = %xfs_iext_max_recs.exit.i
  %hi.i.i = getelementptr [15 x %struct.xfs_iext_rec], ptr %9, i32 0, i32 %dec, i32 1
  %16 = ptrtoint ptr %hi.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %hi.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %cmp.i12.i.not = icmp eq i64 %17, 0
  br i1 %cmp.i12.i.not, label %xfs_iext_valid.exit.do.cond_crit_edge, label %xfs_iext_valid.exit.if.end40_crit_edge

xfs_iext_valid.exit.if.end40_crit_edge:           ; preds = %xfs_iext_valid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

xfs_iext_valid.exit.do.cond_crit_edge:            ; preds = %xfs_iext_valid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond

do.cond:                                          ; preds = %xfs_iext_valid.exit.do.cond_crit_edge, %xfs_iext_max_recs.exit.i.do.cond_crit_edge, %do.body.do.cond_crit_edge
  %cmp31 = icmp sgt i32 %dec, 0
  br i1 %cmp31, label %do.cond.do.body_crit_edge, label %do.cond.do.end_crit_edge

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %if.end.i.do.end_crit_edge
  %18 = ptrtoint ptr %if_height.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %if_height.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp32 = icmp sgt i32 %19, 1
  br i1 %cmp32, label %land.lhs.true, label %do.end.if.end40_crit_edge

do.end.if.end40_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

land.lhs.true:                                    ; preds = %do.end
  %prev = getelementptr inbounds %struct.xfs_iext_leaf, ptr %9, i32 0, i32 1
  %20 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev, align 8
  %tobool34.not = icmp eq ptr %21, null
  br i1 %tobool34.not, label %land.lhs.true.if.end40_crit_edge, label %if.then35

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then35:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %cur, align 4
  %23 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 15, ptr %pos, align 4
  br label %recurse

if.end40:                                         ; preds = %land.lhs.true.if.end40_crit_edge, %do.end.if.end40_crit_edge, %xfs_iext_valid.exit.if.end40_crit_edge, %cond.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_iext_insert(ptr noundef %ip, ptr noundef %cur, ptr nocapture noundef readonly %irec, i32 noundef %state) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xfs_iext_state_to_fork(ptr noundef %ip, i32 noundef %state) #11
  %0 = ptrtoint ptr %irec to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %irec, align 8
  %if_seq.i = getelementptr inbounds %struct.xfs_ifork, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %if_seq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %if_seq.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %if_seq.i, align 4
  %if_height = getelementptr inbounds %struct.xfs_ifork, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %if_height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %if_height, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.if.end4_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then3
  ]

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %call, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %cmp.i = icmp eq i64 %8, 0
  br i1 %cmp.i, label %if.then.xfs_iext_alloc_root.exit_crit_edge, label %cond.false.i, !prof !77

if.then.xfs_iext_alloc_root.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_alloc_root.exit

cond.false.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 584) #11
  br label %xfs_iext_alloc_root.exit

xfs_iext_alloc_root.exit:                         ; preds = %cond.false.i, %if.then.xfs_iext_alloc_root.exit_crit_edge
  %call.i.i = tail call ptr @kmem_alloc(i32 noundef 16, i32 noundef 20) #11
  %if_u1.i = getelementptr inbounds %struct.xfs_ifork, ptr %call, i32 0, i32 4
  %9 = ptrtoint ptr %if_u1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i.i, ptr %if_u1.i, align 4
  %10 = ptrtoint ptr %if_height to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %if_height, align 8
  %11 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i.i, ptr %cur, align 4
  %pos.i = getelementptr inbounds %struct.xfs_iext_cursor, ptr %cur, i32 0, i32 1
  %12 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %pos.i, align 4
  br label %if.end4thread-pre-split

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %call to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %call, align 8
  %add.i83 = add i64 %14, 16
  %15 = and i64 %14, -16
  call void @__sanitizer_cov_trace_const_cmp8(i64 224, i64 %15)
  %16 = icmp eq i64 %15, 224
  %spec.store.select.i = select i1 %16, i64 256, i64 %add.i83
  %if_u1.i84 = getelementptr inbounds %struct.xfs_ifork, ptr %call, i32 0, i32 4
  %17 = ptrtoint ptr %if_u1.i84 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %if_u1.i84, align 4
  %conv.i = trunc i64 %spec.store.select.i to i32
  %call.i = tail call noalias ptr @krealloc(ptr noundef %18, i32 noundef %conv.i, i32 noundef 35904) #14
  %19 = ptrtoint ptr %call to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %call, align 8
  %idx.ext.i = trunc i64 %20 to i32
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %idx.ext.i
  %sub.i = sub i64 %spec.store.select.i, %20
  %conv3.i = trunc i64 %sub.i to i32
  %21 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %conv3.i)
  %22 = ptrtoint ptr %if_u1.i84 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %if_u1.i84, align 4
  %23 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %cur, align 4
  br label %if.end4thread-pre-split

if.end4thread-pre-split:                          ; preds = %if.then3, %xfs_iext_alloc_root.exit
  %24 = ptrtoint ptr %if_height to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr = load i32, ptr %if_height, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.end4thread-pre-split, %entry.if.end4_crit_edge
  %25 = phi i32 [ %.pr, %if.end4thread-pre-split ], [ %5, %entry.if.end4_crit_edge ]
  %26 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cur, align 4
  %pos = getelementptr inbounds %struct.xfs_iext_cursor, ptr %cur, i32 0, i32 1
  %28 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp.i.i = icmp eq i32 %25, 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc.i, %if.end4
  %i.0.i = phi i32 [ %29, %if.end4 ], [ %inc.i, %for.inc.i ]
  br i1 %cmp.i.i, label %if.then.i.i, label %for.cond.i.xfs_iext_max_recs.exit.i_crit_edge

for.cond.i.xfs_iext_max_recs.exit.i_crit_edge:    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_max_recs.exit.i

if.then.i.i:                                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %call to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %call, align 8
  %div.i.i.i = sdiv i64 %31, 16
  %conv.i.i.i = trunc i64 %div.i.i.i to i32
  br label %xfs_iext_max_recs.exit.i

xfs_iext_max_recs.exit.i:                         ; preds = %if.then.i.i, %for.cond.i.xfs_iext_max_recs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %conv.i.i.i, %if.then.i.i ], [ 15, %for.cond.i.xfs_iext_max_recs.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i, i32 %retval.0.i.i)
  %cmp.i85 = icmp slt i32 %i.0.i, %retval.0.i.i
  br i1 %cmp.i85, label %for.body.i, label %xfs_iext_max_recs.exit.i.xfs_iext_leaf_nr_entries.exit_crit_edge

xfs_iext_max_recs.exit.i.xfs_iext_leaf_nr_entries.exit_crit_edge: ; preds = %xfs_iext_max_recs.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_leaf_nr_entries.exit

for.body.i:                                       ; preds = %xfs_iext_max_recs.exit.i
  %hi.i.i = getelementptr [15 x %struct.xfs_iext_rec], ptr %27, i32 0, i32 %i.0.i, i32 1
  %32 = ptrtoint ptr %hi.i.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %hi.i.i, align 8
  %cmp.i5.i = icmp eq i64 %33, 0
  br i1 %cmp.i5.i, label %for.body.i.xfs_iext_leaf_nr_entries.exit_crit_edge, label %for.inc.i

for.body.i.xfs_iext_leaf_nr_entries.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_leaf_nr_entries.exit

for.inc.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc.i = add nsw i32 %i.0.i, 1
  br label %for.cond.i

xfs_iext_leaf_nr_entries.exit:                    ; preds = %for.body.i.xfs_iext_leaf_nr_entries.exit_crit_edge, %xfs_iext_max_recs.exit.i.xfs_iext_leaf_nr_entries.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %i.0.i)
  %cmp6 = icmp slt i32 %i.0.i, 16
  br i1 %cmp6, label %xfs_iext_leaf_nr_entries.exit.cond.end_crit_edge, label %cond.false, !prof !77

xfs_iext_leaf_nr_entries.exit.cond.end_crit_edge: ; preds = %xfs_iext_leaf_nr_entries.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %xfs_iext_leaf_nr_entries.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 644) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %xfs_iext_leaf_nr_entries.exit.cond.end_crit_edge
  %34 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %i.0.i)
  %cmp9.not = icmp slt i32 %35, %i.0.i
  br i1 %cmp9.not, label %lor.rhs, label %cond.end.cond.end22_crit_edge

cond.end.cond.end22_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end22

lor.rhs:                                          ; preds = %cond.end
  %36 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cur, align 4
  %arrayidx.i = getelementptr [15 x %struct.xfs_iext_rec], ptr %37, i32 0, i32 %35
  %38 = ptrtoint ptr %irec to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %irec, align 8
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx.i, align 8
  %and.i = and i64 %41, 18014398509481983
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i, i64 %39)
  %cmp.i87 = icmp ugt i64 %and.i, %39
  br i1 %cmp.i87, label %lor.rhs.cond.end22_crit_edge, label %xfs_iext_rec_cmp.exit

lor.rhs.cond.end22_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end22

xfs_iext_rec_cmp.exit:                            ; preds = %lor.rhs
  %hi.i = getelementptr [15 x %struct.xfs_iext_rec], ptr %37, i32 0, i32 %35, i32 1
  %42 = ptrtoint ptr %hi.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %hi.i, align 8
  %and2.i = and i64 %43, 2097151
  %add.i88 = add nuw nsw i64 %and2.i, %and.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i88, i64 %39)
  %cmp5.not.i.not = icmp ugt i64 %add.i88, %39
  br i1 %cmp5.not.i.not, label %cond.false21, label %xfs_iext_rec_cmp.exit.cond.end22_crit_edge, !prof !76

xfs_iext_rec_cmp.exit.cond.end22_crit_edge:       ; preds = %xfs_iext_rec_cmp.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end22

cond.false21:                                     ; preds = %xfs_iext_rec_cmp.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 646) #11
  br label %cond.end22

cond.end22:                                       ; preds = %cond.false21, %xfs_iext_rec_cmp.exit.cond.end22_crit_edge, %lor.rhs.cond.end22_crit_edge, %cond.end.cond.end22_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %i.0.i)
  %cmp23 = icmp eq i32 %i.0.i, 15
  br i1 %cmp23, label %if.then24, label %cond.end22.if.end26_crit_edge

cond.end22.if.end26_crit_edge:                    ; preds = %cond.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then24:                                        ; preds = %cond.end22
  %44 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cur, align 4
  %call.i.i89 = tail call ptr @kmem_alloc(i32 noundef 256, i32 noundef 20) #11
  %46 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %47)
  %cmp.i91 = icmp eq i32 %47, 15
  br i1 %cmp.i91, label %if.then.i, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.then24
  %arrayidx6.i = getelementptr [15 x %struct.xfs_iext_rec], ptr %45, i32 0, i32 8
  %48 = call ptr @memcpy(ptr %call.i.i89, ptr %arrayidx6.i, i32 16)
  %49 = call ptr @memset(ptr %arrayidx6.i, i32 0, i32 16)
  %arrayidx.1.i = getelementptr [15 x %struct.xfs_iext_rec], ptr %call.i.i89, i32 0, i32 1
  %arrayidx6.1.i = getelementptr [15 x %struct.xfs_iext_rec], ptr %45, i32 0, i32 9
  %50 = call ptr @memcpy(ptr %arrayidx.1.i, ptr %arrayidx6.1.i, i32 16)
  %51 = call ptr @memset(ptr %arrayidx6.1.i, i32 0, i32 16)
  %arrayidx.2.i = getelementptr [15 x %struct.xfs_iext_rec], ptr %call.i.i89, i32 0, i32 2
  %arrayidx6.2.i = getelementptr [15 x %struct.xfs_iext_rec], ptr %45, i32 0, i32 10
  %52 = call ptr @memcpy(ptr %arrayidx.2.i, ptr %arrayidx6.2.i, i32 16)
  %53 = call ptr @memset(ptr %arrayidx6.2.i, i32 0, i32 16)
  %arrayidx.3.i = getelementptr [15 x %struct.xfs_iext_rec], ptr %call.i.i89, i32 0, i32 3
  %arrayidx6.3.i = getelementptr [15 x %struct.xfs_iext_rec], ptr %45, i32 0, i32 11
  %54 = call ptr @memcpy(ptr %arrayidx.3.i, ptr %arrayidx6.3.i, i32 16)
  %55 = call ptr @memset(ptr %arrayidx6.3.i, i32 0, i32 16)
  %arrayidx.4.i = getelementptr [15 x %struct.xfs_iext_rec], ptr %call.i.i89, i32 0, i32 4
  %arrayidx6.4.i = getelementptr [15 x %struct.xfs_iext_rec], ptr %45, i32 0, i32 12
  %56 = call ptr @memcpy(ptr %arrayidx.4.i, ptr %arrayidx6.4.i, i32 16)
  %57 = call ptr @memset(ptr %arrayidx6.4.i, i32 0, i32 16)
  %arrayidx.5.i = getelementptr [15 x %struct.xfs_iext_rec], ptr %call.i.i89, i32 0, i32 5
  %arrayidx6.5.i = getelementptr [15 x %struct.xfs_iext_rec], ptr %45, i32 0, i32 13
  %58 = call ptr @memcpy(ptr %arrayidx.5.i, ptr %arrayidx6.5.i, i32 16)
  %59 = call ptr @memset(ptr %arrayidx6.5.i, i32 0, i32 16)
  %arrayidx.6.i = getelementptr [15 x %struct.xfs_iext_rec], ptr %call.i.i89, i32 0, i32 6
  %arrayidx6.6.i = getelementptr [15 x %struct.xfs_iext_rec], ptr %45, i32 0, i32 14
  %60 = call ptr @memcpy(ptr %arrayidx.6.i, ptr %arrayidx6.6.i, i32 16)
  %61 = call ptr @memset(ptr %arrayidx6.6.i, i32 0, i32 16)
  %62 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %63)
  %cmp11.i = icmp sgt i32 %63, 7
  br i1 %cmp11.i, label %if.then12.i, label %for.body.preheader.i.done.i_crit_edge

for.body.preheader.i.done.i_crit_edge:            ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %done.i

if.then.i:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i.i89, ptr %cur, align 4
  br label %done.sink.split.i

if.then12.i:                                      ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  %65 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i.i89, ptr %cur, align 4
  %sub.i92 = add nsw i32 %63, -8
  br label %done.sink.split.i

done.sink.split.i:                                ; preds = %if.then12.i, %if.then.i
  %sub.sink.i = phi i32 [ %sub.i92, %if.then12.i ], [ 0, %if.then.i ]
  %.sink.ph.i = phi i32 [ 7, %if.then12.i ], [ 0, %if.then.i ]
  %66 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %sub.sink.i, ptr %pos, align 4
  br label %done.i

done.i:                                           ; preds = %done.sink.split.i, %for.body.preheader.i.done.i_crit_edge
  %.sink.i = phi i32 [ 8, %for.body.preheader.i.done.i_crit_edge ], [ %.sink.ph.i, %done.sink.split.i ]
  %next.i = getelementptr inbounds %struct.xfs_iext_leaf, ptr %45, i32 0, i32 2
  %67 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %next.i, align 4
  %tobool.not.i = icmp eq ptr %68, null
  br i1 %tobool.not.i, label %done.i.xfs_iext_split_leaf.exit_crit_edge, label %if.then16.i

done.i.xfs_iext_split_leaf.exit_crit_edge:        ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_split_leaf.exit

if.then16.i:                                      ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i = getelementptr inbounds %struct.xfs_iext_leaf, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call.i.i89, ptr %prev.i, align 8
  br label %xfs_iext_split_leaf.exit

xfs_iext_split_leaf.exit:                         ; preds = %if.then16.i, %done.i.xfs_iext_split_leaf.exit_crit_edge
  %70 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %next.i, align 4
  %next20.i = getelementptr inbounds %struct.xfs_iext_leaf, ptr %call.i.i89, i32 0, i32 2
  %72 = ptrtoint ptr %next20.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %71, ptr %next20.i, align 4
  %prev21.i = getelementptr inbounds %struct.xfs_iext_leaf, ptr %call.i.i89, i32 0, i32 1
  %73 = ptrtoint ptr %prev21.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %45, ptr %prev21.i, align 8
  store ptr %call.i.i89, ptr %next.i, align 4
  br label %if.end26

if.end26:                                         ; preds = %xfs_iext_split_leaf.exit, %cond.end22.if.end26_crit_edge
  %nr_entries.0 = phi i32 [ %.sink.i, %xfs_iext_split_leaf.exit ], [ %i.0.i, %cond.end22.if.end26_crit_edge ]
  %new.0 = phi ptr [ %call.i.i89, %xfs_iext_split_leaf.exit ], [ null, %cond.end22.if.end26_crit_edge ]
  %74 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cur, align 4
  %cmp28.not = icmp eq ptr %75, %new.0
  br i1 %cmp28.not, label %if.end26.if.end37_crit_edge, label %land.lhs.true

if.end26.if.end37_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

land.lhs.true:                                    ; preds = %if.end26
  %76 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp30 = icmp eq i32 %77, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_entries.0)
  %cmp32 = icmp sgt i32 %nr_entries.0, 0
  %or.cond = select i1 %cmp30, i1 %cmp32, i1 false
  br i1 %or.cond, label %if.then33, label %land.lhs.true.if.end37_crit_edge

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then33:                                        ; preds = %land.lhs.true
  %78 = ptrtoint ptr %75 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %75, align 8
  %and.i93 = and i64 %79, 18014398509481983
  %if_u1.i94 = getelementptr inbounds %struct.xfs_ifork, ptr %call, i32 0, i32 4
  %80 = ptrtoint ptr %if_u1.i94 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %if_u1.i94, align 4
  %82 = ptrtoint ptr %if_height to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %if_height, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %83)
  %cmp42.i = icmp sgt i32 %83, 1
  br i1 %cmp42.i, label %if.then33.for.cond1.preheader.i_crit_edge, label %if.then33.for.end15.i_crit_edge

if.then33.for.end15.i_crit_edge:                  ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end15.i

if.then33.for.cond1.preheader.i_crit_edge:        ; preds = %if.then33
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc14.i.for.cond1.preheader.i_crit_edge, %if.then33.for.cond1.preheader.i_crit_edge
  %height.045.i = phi i32 [ %dec.i, %for.inc14.i.for.cond1.preheader.i_crit_edge ], [ %83, %if.then33.for.cond1.preheader.i_crit_edge ]
  %node.043.i = phi ptr [ %90, %for.inc14.i.for.cond1.preheader.i_crit_edge ], [ %81, %if.then33.for.cond1.preheader.i_crit_edge ]
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc.i100.for.body3.i_crit_edge, %for.cond1.preheader.i
  %i.040.i = phi i32 [ 0, %for.cond1.preheader.i ], [ %inc.i99, %for.inc.i100.for.body3.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.040.i)
  %cmp4.not.i = icmp eq i32 %i.040.i, 0
  br i1 %cmp4.not.i, label %for.body3.i.if.end.i98_crit_edge, label %land.lhs.true.i

for.body3.i.if.end.i98_crit_edge:                 ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i98

land.lhs.true.i:                                  ; preds = %for.body3.i
  %arrayidx.i.i = getelementptr [21 x i64], ptr %node.043.i, i32 0, i32 %i.040.i
  %84 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %85, i64 %and.i93)
  %cmp.i.i96 = icmp ugt i64 %85, %and.i93
  br i1 %cmp.i.i96, label %land.lhs.true.i.for.end.i_crit_edge, label %land.lhs.true.i.if.end.i98_crit_edge

land.lhs.true.i.if.end.i98_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i98

land.lhs.true.i.for.end.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.end.i98:                                       ; preds = %land.lhs.true.i.if.end.i98_crit_edge, %for.body3.i.if.end.i98_crit_edge
  %arrayidx.i97 = getelementptr [21 x i64], ptr %node.043.i, i32 0, i32 %i.040.i
  %86 = ptrtoint ptr %arrayidx.i97 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %arrayidx.i97, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %87, i64 %and.i93)
  %cmp6.i = icmp eq i64 %87, %and.i93
  br i1 %cmp6.i, label %if.then7.i, label %if.end.i98.for.inc.i100_crit_edge

if.end.i98.for.inc.i100_crit_edge:                ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i100

if.then7.i:                                       ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #13
  %88 = ptrtoint ptr %arrayidx.i97 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %1, ptr %arrayidx.i97, align 8
  br label %for.inc.i100

for.inc.i100:                                     ; preds = %if.then7.i, %if.end.i98.for.inc.i100_crit_edge
  %inc.i99 = add nuw nsw i32 %i.040.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i99, 21
  br i1 %exitcond.not.i, label %for.inc.i100.for.end.i_crit_edge, label %for.inc.i100.for.body3.i_crit_edge

for.inc.i100.for.body3.i_crit_edge:               ; preds = %for.inc.i100
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body3.i

for.inc.i100.for.end.i_crit_edge:                 ; preds = %for.inc.i100
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i100.for.end.i_crit_edge, %land.lhs.true.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ %i.040.i, %land.lhs.true.i.for.end.i_crit_edge ], [ 21, %for.inc.i100.for.end.i_crit_edge ]
  %sub.i101 = add nsw i32 %i.0.lcssa.i, -1
  %arrayidx11.i = getelementptr %struct.xfs_iext_node, ptr %node.043.i, i32 0, i32 1, i32 %sub.i101
  %89 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx11.i, align 4
  %tobool.not.i102 = icmp eq ptr %90, null
  br i1 %tobool.not.i102, label %cond.false.i103, label %for.end.i.for.inc14.i_crit_edge, !prof !76

for.end.i.for.inc14.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc14.i

cond.false.i103:                                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 444) #11
  br label %for.inc14.i

for.inc14.i:                                      ; preds = %cond.false.i103, %for.end.i.for.inc14.i_crit_edge
  %dec.i = add nsw i32 %height.045.i, -1
  %cmp.i104 = icmp sgt i32 %height.045.i, 2
  br i1 %cmp.i104, label %for.inc14.i.for.cond1.preheader.i_crit_edge, label %for.inc14.i.for.end15.i_crit_edge

for.inc14.i.for.end15.i_crit_edge:                ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end15.i

for.inc14.i.for.cond1.preheader.i_crit_edge:      ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond1.preheader.i

for.end15.i:                                      ; preds = %for.inc14.i.for.end15.i_crit_edge, %if.then33.for.end15.i_crit_edge
  %node.0.lcssa.i = phi ptr [ %81, %if.then33.for.end15.i_crit_edge ], [ %90, %for.inc14.i.for.end15.i_crit_edge ]
  %cmp16.i = icmp eq ptr %node.0.lcssa.i, %75
  br i1 %cmp16.i, label %for.end15.i.if.end37_crit_edge, label %cond.false24.i, !prof !77

for.end15.i.if.end37_crit_edge:                   ; preds = %for.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

cond.false24.i:                                   ; preds = %for.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 447) #11
  br label %if.end37

if.end37:                                         ; preds = %cond.false24.i, %for.end15.i.if.end37_crit_edge, %land.lhs.true.if.end37_crit_edge, %if.end26.if.end37_crit_edge
  %91 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %pos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %nr_entries.0, i32 %92)
  %cmp39130 = icmp sgt i32 %nr_entries.0, %92
  br i1 %cmp39130, label %if.end37.for.body_crit_edge, label %if.end37.for.end_crit_edge

if.end37.for.end_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end37.for.body_crit_edge:                      ; preds = %if.end37
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end37.for.body_crit_edge
  %i.0131 = phi i32 [ %sub, %for.body.for.body_crit_edge ], [ %nr_entries.0, %if.end37.for.body_crit_edge ]
  %93 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %cur, align 4
  %arrayidx = getelementptr [15 x %struct.xfs_iext_rec], ptr %94, i32 0, i32 %i.0131
  %sub = add nsw i32 %i.0131, -1
  %arrayidx43 = getelementptr [15 x %struct.xfs_iext_rec], ptr %94, i32 0, i32 %sub
  %95 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx43, i32 16)
  %96 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %pos, align 4
  %cmp39 = icmp sgt i32 %sub, %97
  br i1 %cmp39, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end37.for.end_crit_edge
  %.lcssa128 = phi i32 [ %92, %if.end37.for.end_crit_edge ], [ %97, %for.body.for.end_crit_edge ]
  %98 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cur, align 4
  %arrayidx.i106 = getelementptr [15 x %struct.xfs_iext_rec], ptr %99, i32 0, i32 %.lcssa128
  tail call fastcc void @xfs_iext_set(ptr noundef %arrayidx.i106, ptr noundef %irec)
  %100 = ptrtoint ptr %call to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %call, align 8
  %add = add i64 %101, 16
  store i64 %add, ptr %call, align 8
  %102 = tail call ptr @llvm.returnaddress(i32 0)
  %103 = ptrtoint ptr %102 to i32
  tail call fastcc void @trace_xfs_iext_insert(ptr noundef %ip, ptr noundef %cur, i32 noundef %state, i32 noundef %103)
  %tobool45.not = icmp eq ptr %new.0, null
  br i1 %tobool45.not, label %for.end.if.end48_crit_edge, label %if.then46

for.end.if.end48_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then46:                                        ; preds = %for.end
  %104 = ptrtoint ptr %new.0 to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %new.0, align 8
  %and.i107 = and i64 %105, 18014398509481983
  %if_u1.i.i = getelementptr inbounds %struct.xfs_ifork, ptr %call, i32 0, i32 4
  br label %again.i

again.i:                                          ; preds = %if.then41.i, %if.then46
  %offset.addr.0.i = phi i64 [ %and.i107, %if.then46 ], [ %271, %if.then41.i ]
  %ptr.addr.0.i = phi ptr [ %new.0, %if.then46 ], [ %new.0.i, %if.then41.i ]
  %level.addr.0.i = phi i32 [ 2, %if.then46 ], [ %inc.i121, %if.then41.i ]
  %106 = ptrtoint ptr %if_height to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %if_height, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %level.addr.0.i)
  %cmp.i109 = icmp slt i32 %107, %level.addr.0.i
  br i1 %cmp.i109, label %if.then.i111, label %again.i.if.end.i114_crit_edge

again.i.if.end.i114_crit_edge:                    ; preds = %again.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i114

if.then.i111:                                     ; preds = %again.i
  %call.i.i.i = tail call ptr @kmem_alloc(i32 noundef 256, i32 noundef 20) #11
  %108 = ptrtoint ptr %if_height to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %if_height, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %109)
  %cmp.i.i110 = icmp eq i32 %109, 1
  %110 = ptrtoint ptr %if_u1.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %if_u1.i.i, align 4
  br i1 %cmp.i.i110, label %if.then.i.i112, label %if.else.i.i

if.then.i.i112:                                   ; preds = %if.then.i111
  call void @__sanitizer_cov_trace_pc() #13
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %111, align 8
  %and.i.i.i = and i64 %113, 18014398509481983
  br label %xfs_iext_grow.exit.i

if.else.i.i:                                      ; preds = %if.then.i111
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %109)
  %cmp6.i.i = icmp sgt i32 %109, 1
  br i1 %cmp6.i.i, label %if.else.i.i.cond.end.i.i_crit_edge, label %cond.false.i.i, !prof !77

if.else.i.i.cond.end.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 412) #11
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %if.else.i.i.cond.end.i.i_crit_edge
  %114 = ptrtoint ptr %111 to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %111, align 8
  br label %xfs_iext_grow.exit.i

xfs_iext_grow.exit.i:                             ; preds = %cond.end.i.i, %if.then.i.i112
  %.sink.i.i = phi i64 [ %115, %cond.end.i.i ], [ %and.i.i.i, %if.then.i.i112 ]
  %116 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %.sink.i.i, ptr %call.i.i.i, align 8
  %ptrs12.i.i = getelementptr inbounds %struct.xfs_iext_node, ptr %call.i.i.i, i32 0, i32 1
  %117 = ptrtoint ptr %ptrs12.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %111, ptr %ptrs12.i.i, align 8
  %arrayidx16.i.i = getelementptr [21 x i64], ptr %call.i.i.i, i32 0, i32 1
  %118 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 -9223372036854775808, ptr %arrayidx16.i.i, align 8
  %arrayidx16.1.i.i = getelementptr [21 x i64], ptr %call.i.i.i, i32 0, i32 2
  %119 = ptrtoint ptr %arrayidx16.1.i.i to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 -9223372036854775808, ptr %arrayidx16.1.i.i, align 8
  %arrayidx16.2.i.i = getelementptr [21 x i64], ptr %call.i.i.i, i32 0, i32 3
  %120 = ptrtoint ptr %arrayidx16.2.i.i to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 -9223372036854775808, ptr %arrayidx16.2.i.i, align 8
  %arrayidx16.3.i.i = getelementptr [21 x i64], ptr %call.i.i.i, i32 0, i32 4
  %121 = ptrtoint ptr %arrayidx16.3.i.i to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 -9223372036854775808, ptr %arrayidx16.3.i.i, align 8
  %arrayidx16.4.i.i = getelementptr [21 x i64], ptr %call.i.i.i, i32 0, i32 5
  %122 = ptrtoint ptr %arrayidx16.4.i.i to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 -9223372036854775808, ptr %arrayidx16.4.i.i, align 8
  %arrayidx16.5.i.i = getelementptr [21 x i64], ptr %call.i.i.i, i32 0, i32 6
  %123 = ptrtoint ptr %arrayidx16.5.i.i to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 -9223372036854775808, ptr %arrayidx16.5.i.i, align 8
  %arrayidx16.6.i.i = getelementptr [21 x i64], ptr %call.i.i.i, i32 0, i32 7
  %124 = ptrtoint ptr %arrayidx16.6.i.i to i32
  call void @__asan_store8_noabort(i32 %124)
  store i64 -9223372036854775808, ptr %arrayidx16.6.i.i, align 8
  %arrayidx16.7.i.i = getelementptr [21 x i64], ptr %call.i.i.i, i32 0, i32 8
  %125 = ptrtoint ptr %arrayidx16.7.i.i to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 -9223372036854775808, ptr %arrayidx16.7.i.i, align 8
  %arrayidx16.8.i.i = getelementptr [21 x i64], ptr %call.i.i.i, i32 0, i32 9
  %126 = ptrtoint ptr %arrayidx16.8.i.i to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 -9223372036854775808, ptr %arrayidx16.8.i.i, align 8
  %arrayidx16.9.i.i = getelementptr [21 x i64], ptr %call.i.i.i, i32 0, i32 10
  %127 = ptrtoint ptr %arrayidx16.9.i.i to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 -9223372036854775808, ptr %arrayidx16.9.i.i, align 8
  %arrayidx16.10.i.i = getelementptr [21 x i64], ptr %call.i.i.i, i32 0, i32 11
  %128 = ptrtoint ptr %arrayidx16.10.i.i to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 -9223372036854775808, ptr %arrayidx16.10.i.i, align 8
  %arrayidx16.11.i.i = getelementptr [21 x i64], ptr %call.i.i.i, i32 0, i32 12
  %129 = ptrtoint ptr %arrayidx16.11.i.i to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 -9223372036854775808, ptr %arrayidx16.11.i.i, align 8
  %arrayidx16.12.i.i = getelementptr [21 x i64], ptr %call.i.i.i, i32 0, i32 13
  %130 = ptrtoint ptr %arrayidx16.12.i.i to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 -9223372036854775808, ptr %arrayidx16.12.i.i, align 8
  %arrayidx16.13.i.i = getelementptr [21 x i64], ptr %call.i.i.i, i32 0, i32 14
  %131 = ptrtoint ptr %arrayidx16.13.i.i to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 -9223372036854775808, ptr %arrayidx16.13.i.i, align 8
  %arrayidx16.14.i.i = getelementptr [21 x i64], ptr %call.i.i.i, i32 0, i32 15
  %132 = ptrtoint ptr %arrayidx16.14.i.i to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 -9223372036854775808, ptr %arrayidx16.14.i.i, align 8
  %arrayidx16.15.i.i = getelementptr [21 x i64], ptr %call.i.i.i, i32 0, i32 16
  %133 = ptrtoint ptr %arrayidx16.15.i.i to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 -9223372036854775808, ptr %arrayidx16.15.i.i, align 8
  %arrayidx16.16.i.i = getelementptr [21 x i64], ptr %call.i.i.i, i32 0, i32 17
  %134 = ptrtoint ptr %arrayidx16.16.i.i to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 -9223372036854775808, ptr %arrayidx16.16.i.i, align 8
  %arrayidx16.17.i.i = getelementptr [21 x i64], ptr %call.i.i.i, i32 0, i32 18
  %135 = ptrtoint ptr %arrayidx16.17.i.i to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 -9223372036854775808, ptr %arrayidx16.17.i.i, align 8
  %arrayidx16.18.i.i = getelementptr [21 x i64], ptr %call.i.i.i, i32 0, i32 19
  %136 = ptrtoint ptr %arrayidx16.18.i.i to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 -9223372036854775808, ptr %arrayidx16.18.i.i, align 8
  %arrayidx16.19.i.i = getelementptr [21 x i64], ptr %call.i.i.i, i32 0, i32 20
  %137 = ptrtoint ptr %arrayidx16.19.i.i to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 -9223372036854775808, ptr %arrayidx16.19.i.i, align 8
  %138 = ptrtoint ptr %if_u1.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %call.i.i.i, ptr %if_u1.i.i, align 4
  %139 = ptrtoint ptr %if_height to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %if_height, align 8
  %inc19.i.i = add i32 %140, 1
  store i32 %inc19.i.i, ptr %if_height, align 8
  br label %if.end.i114

if.end.i114:                                      ; preds = %xfs_iext_grow.exit.i, %again.i.if.end.i114_crit_edge
  %call.i113 = tail call fastcc ptr @xfs_iext_find_level(ptr noundef %call, i64 noundef %offset.addr.0.i, i32 noundef %level.addr.0.i) #11
  %141 = ptrtoint ptr %call.i113 to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %call.i113, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %142, i64 %offset.addr.0.i)
  %cmp.i.i.i = icmp ugt i64 %142, %offset.addr.0.i
  br i1 %cmp.i.i.i, label %if.end.i114.xfs_iext_node_insert_pos.exit.i_crit_edge, label %for.inc.i.i

if.end.i114.xfs_iext_node_insert_pos.exit.i_crit_edge: ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_insert_pos.exit.i

for.inc.i.i:                                      ; preds = %if.end.i114
  %arrayidx.i.1.i.i = getelementptr [21 x i64], ptr %call.i113, i32 0, i32 1
  %143 = ptrtoint ptr %arrayidx.i.1.i.i to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %arrayidx.i.1.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %144, i64 %offset.addr.0.i)
  %cmp.i.1.i.i = icmp ugt i64 %144, %offset.addr.0.i
  br i1 %cmp.i.1.i.i, label %for.inc.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge, label %for.inc.1.i.i

for.inc.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_insert_pos.exit.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %arrayidx.i.2.i.i = getelementptr [21 x i64], ptr %call.i113, i32 0, i32 2
  %145 = ptrtoint ptr %arrayidx.i.2.i.i to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %arrayidx.i.2.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %146, i64 %offset.addr.0.i)
  %cmp.i.2.i.i = icmp ugt i64 %146, %offset.addr.0.i
  br i1 %cmp.i.2.i.i, label %for.inc.1.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge, label %for.inc.2.i.i

for.inc.1.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge: ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_insert_pos.exit.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  %arrayidx.i.3.i.i = getelementptr [21 x i64], ptr %call.i113, i32 0, i32 3
  %147 = ptrtoint ptr %arrayidx.i.3.i.i to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %arrayidx.i.3.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %148, i64 %offset.addr.0.i)
  %cmp.i.3.i.i = icmp ugt i64 %148, %offset.addr.0.i
  br i1 %cmp.i.3.i.i, label %for.inc.2.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge, label %for.inc.3.i.i

for.inc.2.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge: ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_insert_pos.exit.i

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.i
  %arrayidx.i.4.i.i = getelementptr [21 x i64], ptr %call.i113, i32 0, i32 4
  %149 = ptrtoint ptr %arrayidx.i.4.i.i to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %arrayidx.i.4.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %150, i64 %offset.addr.0.i)
  %cmp.i.4.i.i = icmp ugt i64 %150, %offset.addr.0.i
  br i1 %cmp.i.4.i.i, label %for.inc.3.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge, label %for.inc.4.i.i

for.inc.3.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge: ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_insert_pos.exit.i

for.inc.4.i.i:                                    ; preds = %for.inc.3.i.i
  %arrayidx.i.5.i.i = getelementptr [21 x i64], ptr %call.i113, i32 0, i32 5
  %151 = ptrtoint ptr %arrayidx.i.5.i.i to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %arrayidx.i.5.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %152, i64 %offset.addr.0.i)
  %cmp.i.5.i.i = icmp ugt i64 %152, %offset.addr.0.i
  br i1 %cmp.i.5.i.i, label %for.inc.4.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge, label %for.inc.5.i.i

for.inc.4.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge: ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_insert_pos.exit.i

for.inc.5.i.i:                                    ; preds = %for.inc.4.i.i
  %arrayidx.i.6.i.i = getelementptr [21 x i64], ptr %call.i113, i32 0, i32 6
  %153 = ptrtoint ptr %arrayidx.i.6.i.i to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %arrayidx.i.6.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %154, i64 %offset.addr.0.i)
  %cmp.i.6.i.i = icmp ugt i64 %154, %offset.addr.0.i
  br i1 %cmp.i.6.i.i, label %for.inc.5.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge, label %for.inc.6.i.i

for.inc.5.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge: ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_insert_pos.exit.i

for.inc.6.i.i:                                    ; preds = %for.inc.5.i.i
  %arrayidx.i.7.i.i = getelementptr [21 x i64], ptr %call.i113, i32 0, i32 7
  %155 = ptrtoint ptr %arrayidx.i.7.i.i to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %arrayidx.i.7.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %156, i64 %offset.addr.0.i)
  %cmp.i.7.i.i = icmp ugt i64 %156, %offset.addr.0.i
  br i1 %cmp.i.7.i.i, label %for.inc.6.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge, label %for.inc.7.i.i

for.inc.6.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge: ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_insert_pos.exit.i

for.inc.7.i.i:                                    ; preds = %for.inc.6.i.i
  %arrayidx.i.8.i.i = getelementptr [21 x i64], ptr %call.i113, i32 0, i32 8
  %157 = ptrtoint ptr %arrayidx.i.8.i.i to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %arrayidx.i.8.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %158, i64 %offset.addr.0.i)
  %cmp.i.8.i.i = icmp ugt i64 %158, %offset.addr.0.i
  br i1 %cmp.i.8.i.i, label %for.inc.7.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge, label %for.inc.8.i.i

for.inc.7.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge: ; preds = %for.inc.7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_insert_pos.exit.i

for.inc.8.i.i:                                    ; preds = %for.inc.7.i.i
  %arrayidx.i.9.i.i = getelementptr [21 x i64], ptr %call.i113, i32 0, i32 9
  %159 = ptrtoint ptr %arrayidx.i.9.i.i to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %arrayidx.i.9.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %160, i64 %offset.addr.0.i)
  %cmp.i.9.i.i = icmp ugt i64 %160, %offset.addr.0.i
  br i1 %cmp.i.9.i.i, label %for.inc.8.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge, label %for.inc.9.i.i

for.inc.8.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge: ; preds = %for.inc.8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_insert_pos.exit.i

for.inc.9.i.i:                                    ; preds = %for.inc.8.i.i
  %arrayidx.i.10.i.i = getelementptr [21 x i64], ptr %call.i113, i32 0, i32 10
  %161 = ptrtoint ptr %arrayidx.i.10.i.i to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %arrayidx.i.10.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %162, i64 %offset.addr.0.i)
  %cmp.i.10.i.i = icmp ugt i64 %162, %offset.addr.0.i
  br i1 %cmp.i.10.i.i, label %for.inc.9.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge, label %for.inc.10.i.i

for.inc.9.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge: ; preds = %for.inc.9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_insert_pos.exit.i

for.inc.10.i.i:                                   ; preds = %for.inc.9.i.i
  %arrayidx.i.11.i.i = getelementptr [21 x i64], ptr %call.i113, i32 0, i32 11
  %163 = ptrtoint ptr %arrayidx.i.11.i.i to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %arrayidx.i.11.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %164, i64 %offset.addr.0.i)
  %cmp.i.11.i.i = icmp ugt i64 %164, %offset.addr.0.i
  br i1 %cmp.i.11.i.i, label %for.inc.10.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge, label %for.inc.11.i.i

for.inc.10.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge: ; preds = %for.inc.10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_insert_pos.exit.i

for.inc.11.i.i:                                   ; preds = %for.inc.10.i.i
  %arrayidx.i.12.i.i = getelementptr [21 x i64], ptr %call.i113, i32 0, i32 12
  %165 = ptrtoint ptr %arrayidx.i.12.i.i to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %arrayidx.i.12.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %166, i64 %offset.addr.0.i)
  %cmp.i.12.i.i = icmp ugt i64 %166, %offset.addr.0.i
  br i1 %cmp.i.12.i.i, label %for.inc.11.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge, label %for.inc.12.i.i

for.inc.11.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge: ; preds = %for.inc.11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_insert_pos.exit.i

for.inc.12.i.i:                                   ; preds = %for.inc.11.i.i
  %arrayidx.i.13.i.i = getelementptr [21 x i64], ptr %call.i113, i32 0, i32 13
  %167 = ptrtoint ptr %arrayidx.i.13.i.i to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %arrayidx.i.13.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %168, i64 %offset.addr.0.i)
  %cmp.i.13.i.i = icmp ugt i64 %168, %offset.addr.0.i
  br i1 %cmp.i.13.i.i, label %for.inc.12.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge, label %for.inc.13.i.i

for.inc.12.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge: ; preds = %for.inc.12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_insert_pos.exit.i

for.inc.13.i.i:                                   ; preds = %for.inc.12.i.i
  %arrayidx.i.14.i.i = getelementptr [21 x i64], ptr %call.i113, i32 0, i32 14
  %169 = ptrtoint ptr %arrayidx.i.14.i.i to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %arrayidx.i.14.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %170, i64 %offset.addr.0.i)
  %cmp.i.14.i.i = icmp ugt i64 %170, %offset.addr.0.i
  br i1 %cmp.i.14.i.i, label %for.inc.13.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge, label %for.inc.14.i.i

for.inc.13.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge: ; preds = %for.inc.13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_insert_pos.exit.i

for.inc.14.i.i:                                   ; preds = %for.inc.13.i.i
  %arrayidx.i.15.i.i = getelementptr [21 x i64], ptr %call.i113, i32 0, i32 15
  %171 = ptrtoint ptr %arrayidx.i.15.i.i to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %arrayidx.i.15.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %172, i64 %offset.addr.0.i)
  %cmp.i.15.i.i = icmp ugt i64 %172, %offset.addr.0.i
  br i1 %cmp.i.15.i.i, label %for.inc.14.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge, label %for.inc.15.i.i

for.inc.14.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge: ; preds = %for.inc.14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_insert_pos.exit.i

for.inc.15.i.i:                                   ; preds = %for.inc.14.i.i
  %arrayidx.i.16.i.i = getelementptr [21 x i64], ptr %call.i113, i32 0, i32 16
  %173 = ptrtoint ptr %arrayidx.i.16.i.i to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %arrayidx.i.16.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %174, i64 %offset.addr.0.i)
  %cmp.i.16.i.i = icmp ugt i64 %174, %offset.addr.0.i
  br i1 %cmp.i.16.i.i, label %for.inc.15.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge, label %for.inc.16.i.i

for.inc.15.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge: ; preds = %for.inc.15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_insert_pos.exit.i

for.inc.16.i.i:                                   ; preds = %for.inc.15.i.i
  %arrayidx.i.17.i.i = getelementptr [21 x i64], ptr %call.i113, i32 0, i32 17
  %175 = ptrtoint ptr %arrayidx.i.17.i.i to i32
  call void @__asan_load8_noabort(i32 %175)
  %176 = load i64, ptr %arrayidx.i.17.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %176, i64 %offset.addr.0.i)
  %cmp.i.17.i.i = icmp ugt i64 %176, %offset.addr.0.i
  br i1 %cmp.i.17.i.i, label %for.inc.16.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge, label %for.inc.17.i.i

for.inc.16.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge: ; preds = %for.inc.16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_insert_pos.exit.i

for.inc.17.i.i:                                   ; preds = %for.inc.16.i.i
  %arrayidx.i.18.i.i = getelementptr [21 x i64], ptr %call.i113, i32 0, i32 18
  %177 = ptrtoint ptr %arrayidx.i.18.i.i to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %arrayidx.i.18.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %178, i64 %offset.addr.0.i)
  %cmp.i.18.i.i = icmp ugt i64 %178, %offset.addr.0.i
  br i1 %cmp.i.18.i.i, label %for.inc.17.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge, label %for.inc.18.i.i

for.inc.17.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge: ; preds = %for.inc.17.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_insert_pos.exit.i

for.inc.18.i.i:                                   ; preds = %for.inc.17.i.i
  %arrayidx.i.19.i.i = getelementptr [21 x i64], ptr %call.i113, i32 0, i32 19
  %179 = ptrtoint ptr %arrayidx.i.19.i.i to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %arrayidx.i.19.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %180, i64 %offset.addr.0.i)
  %cmp.i.19.i.i = icmp ugt i64 %180, %offset.addr.0.i
  br i1 %cmp.i.19.i.i, label %for.inc.18.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge, label %for.inc.19.i.i

for.inc.18.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge: ; preds = %for.inc.18.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_insert_pos.exit.i

for.inc.19.i.i:                                   ; preds = %for.inc.18.i.i
  %arrayidx.i.20.i.i = getelementptr [21 x i64], ptr %call.i113, i32 0, i32 20
  %181 = ptrtoint ptr %arrayidx.i.20.i.i to i32
  call void @__asan_load8_noabort(i32 %181)
  %182 = load i64, ptr %arrayidx.i.20.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %182, i64 %offset.addr.0.i)
  %cmp.i.20.i.i = icmp ugt i64 %182, %offset.addr.0.i
  br i1 %cmp.i.20.i.i, label %for.inc.19.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge, label %if.then18.thread.i

for.inc.19.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge: ; preds = %for.inc.19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_insert_pos.exit.i

if.then18.thread.i:                               ; preds = %for.inc.19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i565.i = tail call ptr @kmem_alloc(i32 noundef 256, i32 noundef 20) #11
  br label %for.body19.preheader.i.i

xfs_iext_node_insert_pos.exit.i:                  ; preds = %for.inc.19.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge, %for.inc.18.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge, %for.inc.17.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge, %for.inc.16.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge, %for.inc.15.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge, %for.inc.14.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge, %for.inc.13.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge, %for.inc.12.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge, %for.inc.11.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge, %for.inc.10.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge, %for.inc.9.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge, %for.inc.8.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge, %for.inc.7.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge, %for.inc.6.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge, %for.inc.5.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge, %for.inc.4.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge, %for.inc.3.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge, %for.inc.2.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge, %for.inc.1.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge, %for.inc.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge, %if.end.i114.xfs_iext_node_insert_pos.exit.i_crit_edge
  %cmp14.i.i = phi i1 [ true, %for.inc.19.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge ], [ false, %if.end.i114.xfs_iext_node_insert_pos.exit.i_crit_edge ], [ false, %for.inc.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge ], [ false, %for.inc.1.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge ], [ false, %for.inc.2.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge ], [ false, %for.inc.3.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge ], [ false, %for.inc.4.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge ], [ false, %for.inc.5.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge ], [ false, %for.inc.6.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge ], [ false, %for.inc.7.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge ], [ false, %for.inc.8.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge ], [ false, %for.inc.9.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge ], [ true, %for.inc.10.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge ], [ true, %for.inc.11.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge ], [ true, %for.inc.12.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge ], [ true, %for.inc.13.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge ], [ true, %for.inc.14.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge ], [ true, %for.inc.15.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge ], [ true, %for.inc.16.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge ], [ true, %for.inc.17.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge ], [ true, %for.inc.18.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge ]
  %retval.0.i.i115 = phi i32 [ 20, %for.inc.19.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge ], [ 0, %if.end.i114.xfs_iext_node_insert_pos.exit.i_crit_edge ], [ 1, %for.inc.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge ], [ 2, %for.inc.1.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge ], [ 3, %for.inc.2.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge ], [ 4, %for.inc.3.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge ], [ 5, %for.inc.4.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge ], [ 6, %for.inc.5.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge ], [ 7, %for.inc.6.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge ], [ 8, %for.inc.7.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge ], [ 9, %for.inc.8.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge ], [ 10, %for.inc.9.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge ], [ 11, %for.inc.10.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge ], [ 12, %for.inc.11.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge ], [ 13, %for.inc.12.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge ], [ 14, %for.inc.13.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge ], [ 15, %for.inc.14.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge ], [ 16, %for.inc.15.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge ], [ 17, %for.inc.16.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge ], [ 18, %for.inc.17.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge ], [ 19, %for.inc.18.i.i.xfs_iext_node_insert_pos.exit.i_crit_edge ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i1.i.for.body.i.i_crit_edge, %xfs_iext_node_insert_pos.exit.i
  %i.06.i.i = phi i32 [ %inc.i.i, %for.inc.i1.i.for.body.i.i_crit_edge ], [ %retval.0.i.i115, %xfs_iext_node_insert_pos.exit.i ]
  %arrayidx.i.i116 = getelementptr [21 x i64], ptr %call.i113, i32 0, i32 %i.06.i.i
  %183 = ptrtoint ptr %arrayidx.i.i116 to i32
  call void @__asan_load8_noabort(i32 %183)
  %184 = load i64, ptr %arrayidx.i.i116, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %184)
  %cmp1.i.i = icmp eq i64 %184, -9223372036854775808
  br i1 %cmp1.i.i, label %xfs_iext_node_nr_entries.exit.i, label %for.inc.i1.i

for.inc.i1.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.06.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 21
  br i1 %exitcond.not.i.i, label %for.inc.i1.i.lor.rhs.i_crit_edge, label %for.inc.i1.i.for.body.i.i_crit_edge

for.inc.i1.i.for.body.i.i_crit_edge:              ; preds = %for.inc.i1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i1.i.lor.rhs.i_crit_edge:                 ; preds = %for.inc.i1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.rhs.i

xfs_iext_node_nr_entries.exit.i:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i115, i32 %i.06.i.i)
  %cmp3.not.i = icmp ult i32 %retval.0.i.i115, %i.06.i.i
  br i1 %cmp3.not.i, label %xfs_iext_node_nr_entries.exit.i.lor.rhs.i_crit_edge, label %xfs_iext_node_nr_entries.exit.i.cond.end.i_crit_edge

xfs_iext_node_nr_entries.exit.i.cond.end.i_crit_edge: ; preds = %xfs_iext_node_nr_entries.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

xfs_iext_node_nr_entries.exit.i.lor.rhs.i_crit_edge: ; preds = %xfs_iext_node_nr_entries.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %xfs_iext_node_nr_entries.exit.i.lor.rhs.i_crit_edge, %for.inc.i1.i.lor.rhs.i_crit_edge
  %i.0.lcssa.i46.i = phi i32 [ %i.06.i.i, %xfs_iext_node_nr_entries.exit.i.lor.rhs.i_crit_edge ], [ 21, %for.inc.i1.i.lor.rhs.i_crit_edge ]
  %arrayidx.i2.i = getelementptr [21 x i64], ptr %call.i113, i32 0, i32 %retval.0.i.i115
  %185 = ptrtoint ptr %arrayidx.i2.i to i32
  call void @__asan_load8_noabort(i32 %185)
  %186 = load i64, ptr %arrayidx.i2.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %186, i64 %offset.addr.0.i)
  %187 = icmp eq i64 %186, %offset.addr.0.i
  br i1 %187, label %cond.false.i117, label %lor.rhs.i.cond.end.i_crit_edge, !prof !76

lor.rhs.i.cond.end.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.false.i117:                                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 511) #11
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i117, %lor.rhs.i.cond.end.i_crit_edge, %xfs_iext_node_nr_entries.exit.i.cond.end.i_crit_edge
  %i.0.lcssa.i45.i = phi i32 [ %i.06.i.i, %xfs_iext_node_nr_entries.exit.i.cond.end.i_crit_edge ], [ %i.0.lcssa.i46.i, %lor.rhs.i.cond.end.i_crit_edge ], [ %i.0.lcssa.i46.i, %cond.false.i117 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %i.0.lcssa.i45.i)
  %cmp7.i = icmp slt i32 %i.0.lcssa.i45.i, 22
  br i1 %cmp7.i, label %cond.end16.i, label %cond.end16.thread60.i, !prof !77

cond.end16.thread60.i:                            ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 512) #11
  br label %if.end20.i

cond.end16.i:                                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %i.0.lcssa.i45.i)
  %cmp17.i = icmp eq i32 %i.0.lcssa.i45.i, 21
  br i1 %cmp17.i, label %if.then18.i, label %cond.end16.i.if.end20.i_crit_edge

cond.end16.i.if.end20.i_crit_edge:                ; preds = %cond.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

if.then18.i:                                      ; preds = %cond.end16.i
  %call.i.i5.i = tail call ptr @kmem_alloc(i32 noundef 256, i32 noundef 20) #11
  %arrayidx.i7.i = getelementptr [21 x i64], ptr %call.i113, i32 0, i32 11
  %188 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load8_noabort(i32 %188)
  %189 = load i64, ptr %arrayidx.i7.i, align 8
  %190 = ptrtoint ptr %call.i.i5.i to i32
  call void @__asan_store8_noabort(i32 %190)
  store i64 %189, ptr %call.i.i5.i, align 8
  %arrayidx5.i.i = getelementptr %struct.xfs_iext_node, ptr %call.i113, i32 0, i32 1, i32 11
  %191 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %arrayidx5.i.i, align 4
  %arrayidx7.i.i = getelementptr %struct.xfs_iext_node, ptr %call.i.i5.i, i32 0, i32 1, i32 0
  %193 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %192, ptr %arrayidx7.i.i, align 4
  store i64 -9223372036854775808, ptr %arrayidx.i7.i, align 8
  store ptr null, ptr %arrayidx5.i.i, align 4
  %arrayidx.1.i.i = getelementptr [21 x i64], ptr %call.i113, i32 0, i32 12
  %194 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load8_noabort(i32 %194)
  %195 = load i64, ptr %arrayidx.1.i.i, align 8
  %arrayidx3.1.i.i = getelementptr [21 x i64], ptr %call.i.i5.i, i32 0, i32 1
  %196 = ptrtoint ptr %arrayidx3.1.i.i to i32
  call void @__asan_store8_noabort(i32 %196)
  store i64 %195, ptr %arrayidx3.1.i.i, align 8
  %arrayidx5.1.i.i = getelementptr %struct.xfs_iext_node, ptr %call.i113, i32 0, i32 1, i32 12
  %197 = ptrtoint ptr %arrayidx5.1.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %arrayidx5.1.i.i, align 4
  %arrayidx7.1.i.i = getelementptr %struct.xfs_iext_node, ptr %call.i.i5.i, i32 0, i32 1, i32 1
  %199 = ptrtoint ptr %arrayidx7.1.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %198, ptr %arrayidx7.1.i.i, align 4
  store i64 -9223372036854775808, ptr %arrayidx.1.i.i, align 8
  store ptr null, ptr %arrayidx5.1.i.i, align 4
  %arrayidx.2.i.i = getelementptr [21 x i64], ptr %call.i113, i32 0, i32 13
  %200 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %arrayidx.2.i.i, align 8
  %arrayidx3.2.i.i = getelementptr [21 x i64], ptr %call.i.i5.i, i32 0, i32 2
  %202 = ptrtoint ptr %arrayidx3.2.i.i to i32
  call void @__asan_store8_noabort(i32 %202)
  store i64 %201, ptr %arrayidx3.2.i.i, align 8
  %arrayidx5.2.i.i = getelementptr %struct.xfs_iext_node, ptr %call.i113, i32 0, i32 1, i32 13
  %203 = ptrtoint ptr %arrayidx5.2.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %arrayidx5.2.i.i, align 4
  %arrayidx7.2.i.i = getelementptr %struct.xfs_iext_node, ptr %call.i.i5.i, i32 0, i32 1, i32 2
  %205 = ptrtoint ptr %arrayidx7.2.i.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %204, ptr %arrayidx7.2.i.i, align 4
  store i64 -9223372036854775808, ptr %arrayidx.2.i.i, align 8
  store ptr null, ptr %arrayidx5.2.i.i, align 4
  %arrayidx.3.i.i = getelementptr [21 x i64], ptr %call.i113, i32 0, i32 14
  %206 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load8_noabort(i32 %206)
  %207 = load i64, ptr %arrayidx.3.i.i, align 8
  %arrayidx3.3.i.i = getelementptr [21 x i64], ptr %call.i.i5.i, i32 0, i32 3
  %208 = ptrtoint ptr %arrayidx3.3.i.i to i32
  call void @__asan_store8_noabort(i32 %208)
  store i64 %207, ptr %arrayidx3.3.i.i, align 8
  %arrayidx5.3.i.i = getelementptr %struct.xfs_iext_node, ptr %call.i113, i32 0, i32 1, i32 14
  %209 = ptrtoint ptr %arrayidx5.3.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %arrayidx5.3.i.i, align 4
  %arrayidx7.3.i.i = getelementptr %struct.xfs_iext_node, ptr %call.i.i5.i, i32 0, i32 1, i32 3
  %211 = ptrtoint ptr %arrayidx7.3.i.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %210, ptr %arrayidx7.3.i.i, align 4
  store i64 -9223372036854775808, ptr %arrayidx.3.i.i, align 8
  store ptr null, ptr %arrayidx5.3.i.i, align 4
  %arrayidx.4.i.i = getelementptr [21 x i64], ptr %call.i113, i32 0, i32 15
  %212 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load8_noabort(i32 %212)
  %213 = load i64, ptr %arrayidx.4.i.i, align 8
  %arrayidx3.4.i.i = getelementptr [21 x i64], ptr %call.i.i5.i, i32 0, i32 4
  %214 = ptrtoint ptr %arrayidx3.4.i.i to i32
  call void @__asan_store8_noabort(i32 %214)
  store i64 %213, ptr %arrayidx3.4.i.i, align 8
  %arrayidx5.4.i.i = getelementptr %struct.xfs_iext_node, ptr %call.i113, i32 0, i32 1, i32 15
  %215 = ptrtoint ptr %arrayidx5.4.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %arrayidx5.4.i.i, align 4
  %arrayidx7.4.i.i = getelementptr %struct.xfs_iext_node, ptr %call.i.i5.i, i32 0, i32 1, i32 4
  %217 = ptrtoint ptr %arrayidx7.4.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %216, ptr %arrayidx7.4.i.i, align 4
  store i64 -9223372036854775808, ptr %arrayidx.4.i.i, align 8
  store ptr null, ptr %arrayidx5.4.i.i, align 4
  %arrayidx.5.i.i = getelementptr [21 x i64], ptr %call.i113, i32 0, i32 16
  %218 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load8_noabort(i32 %218)
  %219 = load i64, ptr %arrayidx.5.i.i, align 8
  %arrayidx3.5.i.i = getelementptr [21 x i64], ptr %call.i.i5.i, i32 0, i32 5
  %220 = ptrtoint ptr %arrayidx3.5.i.i to i32
  call void @__asan_store8_noabort(i32 %220)
  store i64 %219, ptr %arrayidx3.5.i.i, align 8
  %arrayidx5.5.i.i = getelementptr %struct.xfs_iext_node, ptr %call.i113, i32 0, i32 1, i32 16
  %221 = ptrtoint ptr %arrayidx5.5.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %arrayidx5.5.i.i, align 4
  %arrayidx7.5.i.i = getelementptr %struct.xfs_iext_node, ptr %call.i.i5.i, i32 0, i32 1, i32 5
  %223 = ptrtoint ptr %arrayidx7.5.i.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %222, ptr %arrayidx7.5.i.i, align 4
  store i64 -9223372036854775808, ptr %arrayidx.5.i.i, align 8
  store ptr null, ptr %arrayidx5.5.i.i, align 4
  %arrayidx.6.i.i = getelementptr [21 x i64], ptr %call.i113, i32 0, i32 17
  %224 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_load8_noabort(i32 %224)
  %225 = load i64, ptr %arrayidx.6.i.i, align 8
  %arrayidx3.6.i.i = getelementptr [21 x i64], ptr %call.i.i5.i, i32 0, i32 6
  %226 = ptrtoint ptr %arrayidx3.6.i.i to i32
  call void @__asan_store8_noabort(i32 %226)
  store i64 %225, ptr %arrayidx3.6.i.i, align 8
  %arrayidx5.6.i.i = getelementptr %struct.xfs_iext_node, ptr %call.i113, i32 0, i32 1, i32 17
  %227 = ptrtoint ptr %arrayidx5.6.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %arrayidx5.6.i.i, align 4
  %arrayidx7.6.i.i = getelementptr %struct.xfs_iext_node, ptr %call.i.i5.i, i32 0, i32 1, i32 6
  %229 = ptrtoint ptr %arrayidx7.6.i.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %228, ptr %arrayidx7.6.i.i, align 4
  store i64 -9223372036854775808, ptr %arrayidx.6.i.i, align 8
  store ptr null, ptr %arrayidx5.6.i.i, align 4
  %arrayidx.7.i.i = getelementptr [21 x i64], ptr %call.i113, i32 0, i32 18
  %230 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_load8_noabort(i32 %230)
  %231 = load i64, ptr %arrayidx.7.i.i, align 8
  %arrayidx3.7.i.i = getelementptr [21 x i64], ptr %call.i.i5.i, i32 0, i32 7
  %232 = ptrtoint ptr %arrayidx3.7.i.i to i32
  call void @__asan_store8_noabort(i32 %232)
  store i64 %231, ptr %arrayidx3.7.i.i, align 8
  %arrayidx5.7.i.i = getelementptr %struct.xfs_iext_node, ptr %call.i113, i32 0, i32 1, i32 18
  %233 = ptrtoint ptr %arrayidx5.7.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %arrayidx5.7.i.i, align 4
  %arrayidx7.7.i.i = getelementptr %struct.xfs_iext_node, ptr %call.i.i5.i, i32 0, i32 1, i32 7
  %235 = ptrtoint ptr %arrayidx7.7.i.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr %234, ptr %arrayidx7.7.i.i, align 4
  store i64 -9223372036854775808, ptr %arrayidx.7.i.i, align 8
  store ptr null, ptr %arrayidx5.7.i.i, align 4
  %arrayidx.8.i.i = getelementptr [21 x i64], ptr %call.i113, i32 0, i32 19
  %236 = ptrtoint ptr %arrayidx.8.i.i to i32
  call void @__asan_load8_noabort(i32 %236)
  %237 = load i64, ptr %arrayidx.8.i.i, align 8
  %arrayidx3.8.i.i = getelementptr [21 x i64], ptr %call.i.i5.i, i32 0, i32 8
  %238 = ptrtoint ptr %arrayidx3.8.i.i to i32
  call void @__asan_store8_noabort(i32 %238)
  store i64 %237, ptr %arrayidx3.8.i.i, align 8
  %arrayidx5.8.i.i = getelementptr %struct.xfs_iext_node, ptr %call.i113, i32 0, i32 1, i32 19
  %239 = ptrtoint ptr %arrayidx5.8.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %arrayidx5.8.i.i, align 4
  %arrayidx7.8.i.i = getelementptr %struct.xfs_iext_node, ptr %call.i.i5.i, i32 0, i32 1, i32 8
  %241 = ptrtoint ptr %arrayidx7.8.i.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr %240, ptr %arrayidx7.8.i.i, align 4
  store i64 -9223372036854775808, ptr %arrayidx.8.i.i, align 8
  store ptr null, ptr %arrayidx5.8.i.i, align 4
  %arrayidx.9.i.i = getelementptr [21 x i64], ptr %call.i113, i32 0, i32 20
  %242 = ptrtoint ptr %arrayidx.9.i.i to i32
  call void @__asan_load8_noabort(i32 %242)
  %243 = load i64, ptr %arrayidx.9.i.i, align 8
  %arrayidx3.9.i.i = getelementptr [21 x i64], ptr %call.i.i5.i, i32 0, i32 9
  %244 = ptrtoint ptr %arrayidx3.9.i.i to i32
  call void @__asan_store8_noabort(i32 %244)
  store i64 %243, ptr %arrayidx3.9.i.i, align 8
  %arrayidx5.9.i.i = getelementptr %struct.xfs_iext_node, ptr %call.i113, i32 0, i32 1, i32 20
  %245 = ptrtoint ptr %arrayidx5.9.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %arrayidx5.9.i.i, align 4
  %arrayidx7.9.i.i = getelementptr %struct.xfs_iext_node, ptr %call.i.i5.i, i32 0, i32 1, i32 9
  %247 = ptrtoint ptr %arrayidx7.9.i.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %246, ptr %arrayidx7.9.i.i, align 4
  store i64 -9223372036854775808, ptr %arrayidx.9.i.i, align 8
  store ptr null, ptr %arrayidx5.9.i.i, align 4
  br i1 %cmp14.i.i, label %if.then15.i.i, label %if.then18.i.for.body19.preheader.i.i_crit_edge

if.then18.i.for.body19.preheader.i.i_crit_edge:   ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body19.preheader.i.i

if.then15.i.i:                                    ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add nsw i32 %retval.0.i.i115, -11
  br label %for.body19.preheader.i.i

for.body19.preheader.i.i:                         ; preds = %if.then15.i.i, %if.then18.i.for.body19.preheader.i.i_crit_edge, %if.then18.thread.i
  %call.i.i567.i = phi ptr [ %call.i.i5.i, %if.then18.i.for.body19.preheader.i.i_crit_edge ], [ %call.i.i5.i, %if.then15.i.i ], [ %call.i.i565.i, %if.then18.thread.i ]
  %node.1.i = phi ptr [ %call.i113, %if.then18.i.for.body19.preheader.i.i_crit_edge ], [ %call.i.i5.i, %if.then15.i.i ], [ %call.i.i565.i, %if.then18.thread.i ]
  %pos.0.i = phi i32 [ %retval.0.i.i115, %if.then18.i.for.body19.preheader.i.i_crit_edge ], [ %sub.i.i, %if.then15.i.i ], [ 0, %if.then18.thread.i ]
  %.sink.i9.i = phi i32 [ 11, %if.then18.i.for.body19.preheader.i.i_crit_edge ], [ 10, %if.then15.i.i ], [ 0, %if.then18.thread.i ]
  %i.1.i.i = phi i32 [ 10, %if.then18.i.for.body19.preheader.i.i_crit_edge ], [ 10, %if.then15.i.i ], [ 0, %if.then18.thread.i ]
  br label %for.body19.i.i

for.body19.i.i:                                   ; preds = %for.body19.i.i.for.body19.i.i_crit_edge, %for.body19.preheader.i.i
  %i.258.i.i = phi i32 [ %inc23.i.i, %for.body19.i.i.for.body19.i.i_crit_edge ], [ %i.1.i.i, %for.body19.preheader.i.i ]
  %arrayidx21.i.i = getelementptr [21 x i64], ptr %call.i.i567.i, i32 0, i32 %i.258.i.i
  %248 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_store8_noabort(i32 %248)
  store i64 -9223372036854775808, ptr %arrayidx21.i.i, align 8
  %inc23.i.i = add nuw nsw i32 %i.258.i.i, 1
  %exitcond.not.i10.i = icmp eq i32 %inc23.i.i, 21
  br i1 %exitcond.not.i10.i, label %for.body19.i.i.if.end20.i_crit_edge, label %for.body19.i.i.for.body19.i.i_crit_edge

for.body19.i.i.for.body19.i.i_crit_edge:          ; preds = %for.body19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body19.i.i

for.body19.i.i.if.end20.i_crit_edge:              ; preds = %for.body19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

if.end20.i:                                       ; preds = %for.body19.i.i.if.end20.i_crit_edge, %cond.end16.i.if.end20.i_crit_edge, %cond.end16.thread60.i
  %node.2.i = phi ptr [ %call.i113, %cond.end16.i.if.end20.i_crit_edge ], [ %call.i113, %cond.end16.thread60.i ], [ %node.1.i, %for.body19.i.i.if.end20.i_crit_edge ]
  %pos.1.i = phi i32 [ %retval.0.i.i115, %cond.end16.i.if.end20.i_crit_edge ], [ %retval.0.i.i115, %cond.end16.thread60.i ], [ %pos.0.i, %for.body19.i.i.if.end20.i_crit_edge ]
  %nr_entries.0.i = phi i32 [ %i.0.lcssa.i45.i, %cond.end16.i.if.end20.i_crit_edge ], [ %i.0.lcssa.i45.i, %cond.end16.thread60.i ], [ %.sink.i9.i, %for.body19.i.i.if.end20.i_crit_edge ]
  %new.0.i = phi ptr [ null, %cond.end16.i.if.end20.i_crit_edge ], [ null, %cond.end16.thread60.i ], [ %call.i.i567.i, %for.body19.i.i.if.end20.i_crit_edge ]
  %cmp21.not.i = icmp ne ptr %node.2.i, %new.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pos.1.i)
  %cmp22.i = icmp eq i32 %pos.1.i, 0
  %or.cond.i = select i1 %cmp21.not.i, i1 %cmp22.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_entries.0.i)
  %cmp24.i = icmp sgt i32 %nr_entries.0.i, 0
  %or.cond70.i = select i1 %or.cond.i, i1 %cmp24.i, i1 false
  br i1 %or.cond70.i, label %if.then25.i, label %if.end20.i.if.end26.i_crit_edge

if.end20.i.if.end26.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i

if.then25.i:                                      ; preds = %if.end20.i
  %249 = ptrtoint ptr %node.2.i to i32
  call void @__asan_load8_noabort(i32 %249)
  %250 = load i64, ptr %node.2.i, align 8
  %251 = ptrtoint ptr %if_u1.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %if_u1.i.i, align 4
  %253 = ptrtoint ptr %if_height to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %if_height, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %254, i32 %level.addr.0.i)
  %cmp42.i.i = icmp sgt i32 %254, %level.addr.0.i
  br i1 %cmp42.i.i, label %if.then25.i.for.cond1.preheader.i.i_crit_edge, label %if.then25.i.for.end15.i.i_crit_edge

if.then25.i.for.end15.i.i_crit_edge:              ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end15.i.i

if.then25.i.for.cond1.preheader.i.i_crit_edge:    ; preds = %if.then25.i
  br label %for.cond1.preheader.i.i

for.cond1.preheader.i.i:                          ; preds = %for.inc14.i.i.for.cond1.preheader.i.i_crit_edge, %if.then25.i.for.cond1.preheader.i.i_crit_edge
  %height.045.i.i = phi i32 [ %dec.i.i, %for.inc14.i.i.for.cond1.preheader.i.i_crit_edge ], [ %254, %if.then25.i.for.cond1.preheader.i.i_crit_edge ]
  %node.043.i.i = phi ptr [ %261, %for.inc14.i.i.for.cond1.preheader.i.i_crit_edge ], [ %252, %if.then25.i.for.cond1.preheader.i.i_crit_edge ]
  br label %for.body3.i.i

for.body3.i.i:                                    ; preds = %for.inc.i18.i.for.body3.i.i_crit_edge, %for.cond1.preheader.i.i
  %i.040.i.i = phi i32 [ 0, %for.cond1.preheader.i.i ], [ %inc.i16.i, %for.inc.i18.i.for.body3.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.040.i.i)
  %cmp4.not.i.i = icmp eq i32 %i.040.i.i, 0
  br i1 %cmp4.not.i.i, label %for.body3.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

for.body3.i.i.if.end.i.i_crit_edge:               ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %for.body3.i.i
  %arrayidx.i.i.i = getelementptr [21 x i64], ptr %node.043.i.i, i32 0, i32 %i.040.i.i
  %255 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %255)
  %256 = load i64, ptr %arrayidx.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %256, i64 %250)
  %cmp.i.i13.i = icmp ugt i64 %256, %250
  br i1 %cmp.i.i13.i, label %land.lhs.true.i.i.for.end.i.i_crit_edge, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i.for.end.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %for.body3.i.i.if.end.i.i_crit_edge
  %arrayidx.i14.i = getelementptr [21 x i64], ptr %node.043.i.i, i32 0, i32 %i.040.i.i
  %257 = ptrtoint ptr %arrayidx.i14.i to i32
  call void @__asan_load8_noabort(i32 %257)
  %258 = load i64, ptr %arrayidx.i14.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %258, i64 %250)
  %cmp6.i15.i = icmp eq i64 %258, %250
  br i1 %cmp6.i15.i, label %if.then7.i.i, label %if.end.i.i.for.inc.i18.i_crit_edge

if.end.i.i.for.inc.i18.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i18.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %259 = ptrtoint ptr %arrayidx.i14.i to i32
  call void @__asan_store8_noabort(i32 %259)
  store i64 %offset.addr.0.i, ptr %arrayidx.i14.i, align 8
  br label %for.inc.i18.i

for.inc.i18.i:                                    ; preds = %if.then7.i.i, %if.end.i.i.for.inc.i18.i_crit_edge
  %inc.i16.i = add nuw nsw i32 %i.040.i.i, 1
  %exitcond.not.i17.i = icmp eq i32 %inc.i16.i, 21
  br i1 %exitcond.not.i17.i, label %for.inc.i18.i.for.end.i.i_crit_edge, label %for.inc.i18.i.for.body3.i.i_crit_edge

for.inc.i18.i.for.body3.i.i_crit_edge:            ; preds = %for.inc.i18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body3.i.i

for.inc.i18.i.for.end.i.i_crit_edge:              ; preds = %for.inc.i18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i18.i.for.end.i.i_crit_edge, %land.lhs.true.i.i.for.end.i.i_crit_edge
  %i.0.lcssa.i19.i = phi i32 [ %i.040.i.i, %land.lhs.true.i.i.for.end.i.i_crit_edge ], [ 21, %for.inc.i18.i.for.end.i.i_crit_edge ]
  %sub.i20.i = add nsw i32 %i.0.lcssa.i19.i, -1
  %arrayidx11.i.i = getelementptr %struct.xfs_iext_node, ptr %node.043.i.i, i32 0, i32 1, i32 %sub.i20.i
  %260 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %arrayidx11.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %261, null
  br i1 %tobool.not.i.i, label %cond.false.i21.i, label %for.end.i.i.for.inc14.i.i_crit_edge, !prof !76

for.end.i.i.for.inc14.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc14.i.i

cond.false.i21.i:                                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 444) #11
  br label %for.inc14.i.i

for.inc14.i.i:                                    ; preds = %cond.false.i21.i, %for.end.i.i.for.inc14.i.i_crit_edge
  %dec.i.i = add nsw i32 %height.045.i.i, -1
  %cmp.i22.i = icmp sgt i32 %dec.i.i, %level.addr.0.i
  br i1 %cmp.i22.i, label %for.inc14.i.i.for.cond1.preheader.i.i_crit_edge, label %for.inc14.i.i.for.end15.i.i_crit_edge

for.inc14.i.i.for.end15.i.i_crit_edge:            ; preds = %for.inc14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end15.i.i

for.inc14.i.i.for.cond1.preheader.i.i_crit_edge:  ; preds = %for.inc14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond1.preheader.i.i

for.end15.i.i:                                    ; preds = %for.inc14.i.i.for.end15.i.i_crit_edge, %if.then25.i.for.end15.i.i_crit_edge
  %node.0.lcssa.i.i = phi ptr [ %252, %if.then25.i.for.end15.i.i_crit_edge ], [ %261, %for.inc14.i.i.for.end15.i.i_crit_edge ]
  %cmp16.i.i = icmp eq ptr %node.0.lcssa.i.i, %node.2.i
  br i1 %cmp16.i.i, label %for.end15.i.i.if.end26.i_crit_edge, label %cond.false24.i.i, !prof !77

for.end15.i.i.if.end26.i_crit_edge:               ; preds = %for.end15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i

cond.false24.i.i:                                 ; preds = %for.end15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 447) #11
  br label %if.end26.i

if.end26.i:                                       ; preds = %cond.false24.i.i, %for.end15.i.i.if.end26.i_crit_edge, %if.end20.i.if.end26.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %nr_entries.0.i, i32 %pos.1.i)
  %cmp2773.i = icmp sgt i32 %nr_entries.0.i, %pos.1.i
  br i1 %cmp2773.i, label %if.end26.i.for.body.i119_crit_edge, label %if.end26.i.for.end.i120_crit_edge

if.end26.i.for.end.i120_crit_edge:                ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i120

if.end26.i.for.body.i119_crit_edge:               ; preds = %if.end26.i
  br label %for.body.i119

for.body.i119:                                    ; preds = %for.body.i119.for.body.i119_crit_edge, %if.end26.i.for.body.i119_crit_edge
  %i.074.i = phi i32 [ %sub.i118, %for.body.i119.for.body.i119_crit_edge ], [ %nr_entries.0.i, %if.end26.i.for.body.i119_crit_edge ]
  %sub.i118 = add nsw i32 %i.074.i, -1
  %arrayidx29.i = getelementptr [21 x i64], ptr %node.2.i, i32 0, i32 %sub.i118
  %262 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load8_noabort(i32 %262)
  %263 = load i64, ptr %arrayidx29.i, align 8
  %arrayidx31.i = getelementptr [21 x i64], ptr %node.2.i, i32 0, i32 %i.074.i
  %264 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store8_noabort(i32 %264)
  store i64 %263, ptr %arrayidx31.i, align 8
  %arrayidx33.i = getelementptr %struct.xfs_iext_node, ptr %node.2.i, i32 0, i32 1, i32 %sub.i118
  %265 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %arrayidx33.i, align 4
  %arrayidx35.i = getelementptr %struct.xfs_iext_node, ptr %node.2.i, i32 0, i32 1, i32 %i.074.i
  %267 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store ptr %266, ptr %arrayidx35.i, align 4
  %cmp27.i = icmp sgt i32 %sub.i118, %pos.1.i
  br i1 %cmp27.i, label %for.body.i119.for.body.i119_crit_edge, label %for.body.i119.for.end.i120_crit_edge

for.body.i119.for.end.i120_crit_edge:             ; preds = %for.body.i119
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i120

for.body.i119.for.body.i119_crit_edge:            ; preds = %for.body.i119
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i119

for.end.i120:                                     ; preds = %for.body.i119.for.end.i120_crit_edge, %if.end26.i.for.end.i120_crit_edge
  %arrayidx37.i = getelementptr [21 x i64], ptr %node.2.i, i32 0, i32 %pos.1.i
  %268 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store8_noabort(i32 %268)
  store i64 %offset.addr.0.i, ptr %arrayidx37.i, align 8
  %arrayidx39.i = getelementptr %struct.xfs_iext_node, ptr %node.2.i, i32 0, i32 1, i32 %pos.1.i
  %269 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr %ptr.addr.0.i, ptr %arrayidx39.i, align 4
  %tobool40.not.i = icmp eq ptr %new.0.i, null
  br i1 %tobool40.not.i, label %for.end.i120.if.end48_crit_edge, label %if.then41.i

for.end.i120.if.end48_crit_edge:                  ; preds = %for.end.i120
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then41.i:                                      ; preds = %for.end.i120
  call void @__sanitizer_cov_trace_pc() #13
  %270 = ptrtoint ptr %new.0.i to i32
  call void @__asan_load8_noabort(i32 %270)
  %271 = load i64, ptr %new.0.i, align 8
  %inc.i121 = add i32 %level.addr.0.i, 1
  br label %again.i

if.end48:                                         ; preds = %for.end.i120.if.end48_crit_edge, %for.end.if.end48_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_iext_state_to_fork(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_iext_set(ptr nocapture noundef %rec, ptr nocapture noundef readonly %irec) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %irec to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %irec, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 18014398509481984, i64 %1)
  %cmp = icmp ult i64 %1, 18014398509481984
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !77

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 57) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %irec, i32 0, i32 2
  %2 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %br_blockcount, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2097152, i64 %3)
  %cmp5 = icmp ult i64 %3, 2097152
  br i1 %cmp5, label %cond.end.cond.end14_crit_edge, label %cond.false13, !prof !77

cond.end.cond.end14_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end14

cond.false13:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 58) #11
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false13, %cond.end.cond.end14_crit_edge
  %br_startblock = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %irec, i32 0, i32 1
  %4 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %br_startblock, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4503599627370496, i64 %5)
  %cmp18 = icmp ult i64 %5, 4503599627370496
  br i1 %cmp18, label %cond.end14.cond.end27_crit_edge, label %cond.false26, !prof !77

cond.end14.cond.end27_crit_edge:                  ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end27

cond.false26:                                     ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 59) #11
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false26, %cond.end14.cond.end27_crit_edge
  %6 = ptrtoint ptr %irec to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %irec, align 8
  %and30 = and i64 %7, 18014398509481983
  %8 = ptrtoint ptr %rec to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %and30, ptr %rec, align 8
  %9 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %br_blockcount, align 8
  %and33 = and i64 %10, 2097151
  %hi = getelementptr inbounds %struct.xfs_iext_rec, ptr %rec, i32 0, i32 1
  %11 = ptrtoint ptr %hi to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %and33, ptr %hi, align 8
  %12 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %br_startblock, align 8
  %shl = shl i64 %13, 54
  %or = or i64 %shl, %and30
  store i64 %or, ptr %rec, align 8
  %14 = load i64, ptr %br_startblock, align 8
  %and39 = shl i64 %14, 12
  %shl40 = and i64 %and39, -4194304
  %or42 = or i64 %shl40, %and33
  store i64 %or42, ptr %hi, align 8
  %br_state = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %irec, i32 0, i32 3
  %15 = ptrtoint ptr %br_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %br_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp43 = icmp eq i32 %16, 1
  br i1 %cmp43, label %if.then, label %cond.end27.if.end_crit_edge

cond.end27.if.end_crit_edge:                      ; preds = %cond.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %cond.end27
  call void @__sanitizer_cov_trace_pc() #13
  %or45 = or i64 %or42, 2097152
  %17 = ptrtoint ptr %hi to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %or45, ptr %hi, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end27.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_iext_insert(ptr noundef %ip, ptr noundef %cur, i32 noundef %state, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iext_insert, i32 0, i32 1), ptr blockaddress(@trace_xfs_iext_insert, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !78

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !66) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !77

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !66) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !79
  %call42 = tail call i32 @__traceiter_xfs_iext_insert(ptr noundef null, ptr noundef %ip, ptr noundef %cur, i32 noundef %state, i32 noundef %caller_ip) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !80
  %13 = tail call i32 @llvm.read_register.i32(metadata !66) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !66) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !77

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !66) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !81
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iext_insert, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iext_insert, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_iext_insert.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_iext_insert.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 402, ptr noundef nonnull @.str.17) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !82
  %31 = tail call i32 @llvm.read_register.i32(metadata !66) #11
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_iext_remove(ptr noundef %ip, ptr noundef %cur, i32 noundef %state) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xfs_iext_state_to_fork(ptr noundef %ip, i32 noundef %state) #11
  %0 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %1, align 8
  %and.i = and i64 %3, 18014398509481983
  %4 = tail call ptr @llvm.returnaddress(i32 0)
  %5 = ptrtoint ptr %4 to i32
  tail call fastcc void @trace_xfs_iext_remove(ptr noundef %ip, ptr noundef %cur, i32 noundef %state, i32 noundef %5)
  %if_height = getelementptr inbounds %struct.xfs_ifork, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %if_height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %if_height, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp sgt i32 %7, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !77

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 874) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %if_u1 = getelementptr inbounds %struct.xfs_ifork, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %if_u1, align 4
  %cmp4.not = icmp eq ptr %9, null
  br i1 %cmp4.not, label %cond.false12, label %cond.end.cond.end13_crit_edge, !prof !76

cond.end.cond.end13_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end13

cond.false12:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 875) #11
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false12, %cond.end.cond.end13_crit_edge
  %10 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cur, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %cond.end13.cond.false22_crit_edge, label %if.end.i, !prof !83

cond.end13.cond.false22_crit_edge:                ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false22

if.end.i:                                         ; preds = %cond.end13
  %pos.i = getelementptr inbounds %struct.xfs_iext_cursor, ptr %cur, i32 0, i32 1
  %12 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pos.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i = icmp slt i32 %13, 0
  br i1 %cmp.i, label %if.end.i.cond.false22_crit_edge, label %lor.lhs.false.i, !prof !83

if.end.i.cond.false22_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false22

lor.lhs.false.i:                                  ; preds = %if.end.i
  %14 = ptrtoint ptr %if_height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %if_height, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i.i = icmp eq i32 %15, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %lor.lhs.false.i.xfs_iext_max_recs.exit.i_crit_edge

lor.lhs.false.i.xfs_iext_max_recs.exit.i_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_max_recs.exit.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %call to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %call, align 8
  %div.i.i.i = sdiv i64 %17, 16
  %conv.i.i.i = trunc i64 %div.i.i.i to i32
  br label %xfs_iext_max_recs.exit.i

xfs_iext_max_recs.exit.i:                         ; preds = %if.then.i.i, %lor.lhs.false.i.xfs_iext_max_recs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %conv.i.i.i, %if.then.i.i ], [ 15, %lor.lhs.false.i.xfs_iext_max_recs.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %retval.0.i.i)
  %cmp2.not.i = icmp slt i32 %13, %retval.0.i.i
  br i1 %cmp2.not.i, label %xfs_iext_valid.exit, label %xfs_iext_max_recs.exit.i.cond.false22_crit_edge, !prof !84

xfs_iext_max_recs.exit.i.cond.false22_crit_edge:  ; preds = %xfs_iext_max_recs.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false22

xfs_iext_valid.exit:                              ; preds = %xfs_iext_max_recs.exit.i
  %hi.i.i = getelementptr [15 x %struct.xfs_iext_rec], ptr %11, i32 0, i32 %13, i32 1
  %18 = ptrtoint ptr %hi.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %hi.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %cmp.i12.i.not = icmp eq i64 %19, 0
  br i1 %cmp.i12.i.not, label %xfs_iext_valid.exit.cond.false22_crit_edge, label %xfs_iext_valid.exit.cond.end23_crit_edge, !prof !76

xfs_iext_valid.exit.cond.end23_crit_edge:         ; preds = %xfs_iext_valid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end23

xfs_iext_valid.exit.cond.false22_crit_edge:       ; preds = %xfs_iext_valid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false22

cond.false22:                                     ; preds = %xfs_iext_valid.exit.cond.false22_crit_edge, %xfs_iext_max_recs.exit.i.cond.false22_crit_edge, %if.end.i.cond.false22_crit_edge, %cond.end13.cond.false22_crit_edge
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 876) #11
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false22, %xfs_iext_valid.exit.cond.end23_crit_edge
  %if_seq.i = getelementptr inbounds %struct.xfs_ifork, ptr %call, i32 0, i32 2
  %20 = ptrtoint ptr %if_seq.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %if_seq.i, align 4
  %add.i = add i32 %21, 1
  store volatile i32 %add.i, ptr %if_seq.i, align 4
  %pos = getelementptr inbounds %struct.xfs_iext_cursor, ptr %cur, i32 0, i32 1
  %22 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pos, align 4
  %24 = ptrtoint ptr %if_height to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %if_height, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp.i.i110 = icmp eq i32 %25, 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc.i, %cond.end23
  %i.0.i = phi i32 [ %23, %cond.end23 ], [ %inc.i, %for.inc.i ]
  br i1 %cmp.i.i110, label %if.then.i.i113, label %for.cond.i.xfs_iext_max_recs.exit.i116_crit_edge

for.cond.i.xfs_iext_max_recs.exit.i116_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_max_recs.exit.i116

if.then.i.i113:                                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %call to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %call, align 8
  %div.i.i.i111 = sdiv i64 %27, 16
  %conv.i.i.i112 = trunc i64 %div.i.i.i111 to i32
  br label %xfs_iext_max_recs.exit.i116

xfs_iext_max_recs.exit.i116:                      ; preds = %if.then.i.i113, %for.cond.i.xfs_iext_max_recs.exit.i116_crit_edge
  %retval.0.i.i114 = phi i32 [ %conv.i.i.i112, %if.then.i.i113 ], [ 15, %for.cond.i.xfs_iext_max_recs.exit.i116_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i, i32 %retval.0.i.i114)
  %cmp.i115 = icmp slt i32 %i.0.i, %retval.0.i.i114
  br i1 %cmp.i115, label %for.body.i, label %xfs_iext_max_recs.exit.i116.xfs_iext_leaf_nr_entries.exit_crit_edge

xfs_iext_max_recs.exit.i116.xfs_iext_leaf_nr_entries.exit_crit_edge: ; preds = %xfs_iext_max_recs.exit.i116
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_leaf_nr_entries.exit

for.body.i:                                       ; preds = %xfs_iext_max_recs.exit.i116
  %hi.i.i117 = getelementptr [15 x %struct.xfs_iext_rec], ptr %1, i32 0, i32 %i.0.i, i32 1
  %28 = ptrtoint ptr %hi.i.i117 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %hi.i.i117, align 8
  %cmp.i5.i = icmp eq i64 %29, 0
  br i1 %cmp.i5.i, label %for.body.i.xfs_iext_leaf_nr_entries.exit_crit_edge, label %for.inc.i

for.body.i.xfs_iext_leaf_nr_entries.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_leaf_nr_entries.exit

for.inc.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc.i = add nsw i32 %i.0.i, 1
  br label %for.cond.i

xfs_iext_leaf_nr_entries.exit:                    ; preds = %for.body.i.xfs_iext_leaf_nr_entries.exit_crit_edge, %xfs_iext_max_recs.exit.i116.xfs_iext_leaf_nr_entries.exit_crit_edge
  %sub = add i32 %i.0.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %sub)
  %cmp26148 = icmp slt i32 %23, %sub
  br i1 %cmp26148, label %xfs_iext_leaf_nr_entries.exit.for.body_crit_edge, label %xfs_iext_leaf_nr_entries.exit.for.end_crit_edge

xfs_iext_leaf_nr_entries.exit.for.end_crit_edge:  ; preds = %xfs_iext_leaf_nr_entries.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

xfs_iext_leaf_nr_entries.exit.for.body_crit_edge: ; preds = %xfs_iext_leaf_nr_entries.exit
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %xfs_iext_leaf_nr_entries.exit.for.body_crit_edge
  %i.0149 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ %23, %xfs_iext_leaf_nr_entries.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [15 x %struct.xfs_iext_rec], ptr %1, i32 0, i32 %i.0149
  %add = add nsw i32 %i.0149, 1
  %arrayidx28 = getelementptr [15 x %struct.xfs_iext_rec], ptr %1, i32 0, i32 %add
  %30 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx28, i32 16)
  %exitcond.not = icmp eq i32 %add, %sub
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %xfs_iext_leaf_nr_entries.exit.for.end_crit_edge
  %arrayidx30 = getelementptr [15 x %struct.xfs_iext_rec], ptr %1, i32 0, i32 %sub
  %31 = call ptr @memset(ptr %arrayidx30, i32 0, i32 16)
  %32 = ptrtoint ptr %call to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %call, align 8
  %sub31 = add i64 %33, -16
  store i64 %sub31, ptr %call, align 8
  %34 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp33 = icmp eq i32 %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp34 = icmp sgt i32 %sub, 0
  %or.cond = select i1 %cmp33, i1 %cmp34, i1 false
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %1, align 8
  %and.i118 = and i64 %37, 18014398509481983
  %38 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %if_u1, align 4
  %40 = ptrtoint ptr %if_height to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %if_height, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp42.i = icmp sgt i32 %41, 1
  br i1 %cmp42.i, label %if.then.for.cond1.preheader.i_crit_edge, label %if.then.for.end15.i_crit_edge

if.then.for.end15.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end15.i

if.then.for.cond1.preheader.i_crit_edge:          ; preds = %if.then
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc14.i.for.cond1.preheader.i_crit_edge, %if.then.for.cond1.preheader.i_crit_edge
  %height.045.i = phi i32 [ %dec.i, %for.inc14.i.for.cond1.preheader.i_crit_edge ], [ %41, %if.then.for.cond1.preheader.i_crit_edge ]
  %node.043.i = phi ptr [ %48, %for.inc14.i.for.cond1.preheader.i_crit_edge ], [ %39, %if.then.for.cond1.preheader.i_crit_edge ]
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc.i122.for.body3.i_crit_edge, %for.cond1.preheader.i
  %i.040.i = phi i32 [ 0, %for.cond1.preheader.i ], [ %inc.i121, %for.inc.i122.for.body3.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.040.i)
  %cmp4.not.i = icmp eq i32 %i.040.i, 0
  br i1 %cmp4.not.i, label %for.body3.i.if.end.i120_crit_edge, label %land.lhs.true.i

for.body3.i.if.end.i120_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i120

land.lhs.true.i:                                  ; preds = %for.body3.i
  %arrayidx.i.i = getelementptr [21 x i64], ptr %node.043.i, i32 0, i32 %i.040.i
  %42 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %43, i64 %and.i)
  %cmp.i.i119 = icmp ugt i64 %43, %and.i
  br i1 %cmp.i.i119, label %land.lhs.true.i.for.end.i_crit_edge, label %land.lhs.true.i.if.end.i120_crit_edge

land.lhs.true.i.if.end.i120_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i120

land.lhs.true.i.for.end.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.end.i120:                                      ; preds = %land.lhs.true.i.if.end.i120_crit_edge, %for.body3.i.if.end.i120_crit_edge
  %arrayidx.i = getelementptr [21 x i64], ptr %node.043.i, i32 0, i32 %i.040.i
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %45, i64 %and.i)
  %cmp6.i = icmp eq i64 %45, %and.i
  br i1 %cmp6.i, label %if.then7.i, label %if.end.i120.for.inc.i122_crit_edge

if.end.i120.for.inc.i122_crit_edge:               ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i122

if.then7.i:                                       ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %and.i118, ptr %arrayidx.i, align 8
  br label %for.inc.i122

for.inc.i122:                                     ; preds = %if.then7.i, %if.end.i120.for.inc.i122_crit_edge
  %inc.i121 = add nuw nsw i32 %i.040.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i121, 21
  br i1 %exitcond.not.i, label %for.inc.i122.for.end.i_crit_edge, label %for.inc.i122.for.body3.i_crit_edge

for.inc.i122.for.body3.i_crit_edge:               ; preds = %for.inc.i122
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body3.i

for.inc.i122.for.end.i_crit_edge:                 ; preds = %for.inc.i122
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i122.for.end.i_crit_edge, %land.lhs.true.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ %i.040.i, %land.lhs.true.i.for.end.i_crit_edge ], [ 21, %for.inc.i122.for.end.i_crit_edge ]
  %sub.i = add nsw i32 %i.0.lcssa.i, -1
  %arrayidx11.i = getelementptr %struct.xfs_iext_node, ptr %node.043.i, i32 0, i32 1, i32 %sub.i
  %47 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx11.i, align 4
  %tobool.not.i123 = icmp eq ptr %48, null
  br i1 %tobool.not.i123, label %cond.false.i, label %for.end.i.for.inc14.i_crit_edge, !prof !76

for.end.i.for.inc14.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc14.i

cond.false.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 444) #11
  br label %for.inc14.i

for.inc14.i:                                      ; preds = %cond.false.i, %for.end.i.for.inc14.i_crit_edge
  %dec.i = add nsw i32 %height.045.i, -1
  %cmp.i124 = icmp sgt i32 %height.045.i, 2
  br i1 %cmp.i124, label %for.inc14.i.for.cond1.preheader.i_crit_edge, label %for.inc14.i.for.end15.i_crit_edge

for.inc14.i.for.end15.i_crit_edge:                ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end15.i

for.inc14.i.for.cond1.preheader.i_crit_edge:      ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond1.preheader.i

for.end15.i:                                      ; preds = %for.inc14.i.for.end15.i_crit_edge, %if.then.for.end15.i_crit_edge
  %node.0.lcssa.i = phi ptr [ %39, %if.then.for.end15.i_crit_edge ], [ %48, %for.inc14.i.for.end15.i_crit_edge ]
  %cmp16.i = icmp eq ptr %node.0.lcssa.i, %1
  br i1 %cmp16.i, label %for.end15.i.xfs_iext_update_node.exit_crit_edge, label %cond.false24.i, !prof !77

for.end15.i.xfs_iext_update_node.exit_crit_edge:  ; preds = %for.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_update_node.exit

cond.false24.i:                                   ; preds = %for.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 447) #11
  br label %xfs_iext_update_node.exit

xfs_iext_update_node.exit:                        ; preds = %cond.false24.i, %for.end15.i.xfs_iext_update_node.exit_crit_edge
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %1, align 8
  %and.i125 = and i64 %50, 18014398509481983
  br label %if.end51

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %sub)
  %cmp38 = icmp eq i32 %35, %sub
  br i1 %cmp38, label %if.then39, label %if.else.if.end51_crit_edge

if.else.if.end51_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.then39:                                        ; preds = %if.else
  %51 = ptrtoint ptr %if_height to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %if_height, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp41 = icmp sgt i32 %52, 1
  br i1 %cmp41, label %land.lhs.true42, label %if.then39.if.else47_crit_edge

if.then39.if.else47_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else47

land.lhs.true42:                                  ; preds = %if.then39
  %next = getelementptr inbounds %struct.xfs_iext_leaf, ptr %1, i32 0, i32 2
  %53 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %next, align 4
  %tobool43.not = icmp eq ptr %54, null
  br i1 %tobool43.not, label %land.lhs.true42.if.else47_crit_edge, label %land.lhs.true42.if.end_crit_edge

land.lhs.true42.if.end_crit_edge:                 ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true42.if.else47_crit_edge:              ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else47

if.else47:                                        ; preds = %land.lhs.true42.if.else47_crit_edge, %if.then39.if.else47_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else47, %land.lhs.true42.if.end_crit_edge
  %storemerge = phi ptr [ null, %if.else47 ], [ %54, %land.lhs.true42.if.end_crit_edge ]
  %55 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %storemerge, ptr %cur, align 4
  %56 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %pos, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.end, %if.else.if.end51_crit_edge, %xfs_iext_update_node.exit
  %offset.0 = phi i64 [ %and.i125, %xfs_iext_update_node.exit ], [ %and.i, %if.end ], [ %and.i, %if.else.if.end51_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %sub)
  %cmp52 = icmp sgt i32 %sub, 6
  br i1 %cmp52, label %if.end51.cleanup_crit_edge, label %if.end54

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end54:                                         ; preds = %if.end51
  %57 = ptrtoint ptr %if_height to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %if_height, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp56 = icmp sgt i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp.i126 = icmp eq i32 %sub, 0
  br i1 %cmp56, label %if.then57, label %if.else58

if.then57:                                        ; preds = %if.end54
  br i1 %cmp.i126, label %if.then57.remove_node.i_crit_edge, label %if.end.i128

if.then57.remove_node.i_crit_edge:                ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  br label %remove_node.i

if.end.i128:                                      ; preds = %if.then57
  %prev.i = getelementptr inbounds %struct.xfs_iext_leaf, ptr %1, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i, align 8
  %tobool.not.i127 = icmp eq ptr %60, null
  br i1 %tobool.not.i127, label %if.end.i128.if.end19.i_crit_edge, label %for.body.i.i.preheader

if.end.i128.if.end19.i_crit_edge:                 ; preds = %if.end.i128
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

for.body.i.i.preheader:                           ; preds = %if.end.i128
  %hi.i.i.i = getelementptr [15 x %struct.xfs_iext_rec], ptr %60, i32 0, i32 0, i32 1
  %61 = ptrtoint ptr %hi.i.i.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %hi.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %62)
  %cmp.i5.i.i = icmp eq i64 %62, 0
  br i1 %cmp.i5.i.i, label %for.body.i.i.preheader.xfs_iext_leaf_nr_entries.exit.i_crit_edge, label %for.inc.i.i

for.body.i.i.preheader.xfs_iext_leaf_nr_entries.exit.i_crit_edge: ; preds = %for.body.i.i.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_leaf_nr_entries.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i.preheader
  %hi.i.i.i.1 = getelementptr [15 x %struct.xfs_iext_rec], ptr %60, i32 0, i32 1, i32 1
  %63 = ptrtoint ptr %hi.i.i.i.1 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %hi.i.i.i.1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %64)
  %cmp.i5.i.i.1 = icmp eq i64 %64, 0
  br i1 %cmp.i5.i.i.1, label %for.inc.i.i.xfs_iext_leaf_nr_entries.exit.i_crit_edge, label %for.inc.i.i.1

for.inc.i.i.xfs_iext_leaf_nr_entries.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_leaf_nr_entries.exit.i

for.inc.i.i.1:                                    ; preds = %for.inc.i.i
  %hi.i.i.i.2 = getelementptr [15 x %struct.xfs_iext_rec], ptr %60, i32 0, i32 2, i32 1
  %65 = ptrtoint ptr %hi.i.i.i.2 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %hi.i.i.i.2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %66)
  %cmp.i5.i.i.2 = icmp eq i64 %66, 0
  br i1 %cmp.i5.i.i.2, label %for.inc.i.i.1.xfs_iext_leaf_nr_entries.exit.i_crit_edge, label %for.inc.i.i.2

for.inc.i.i.1.xfs_iext_leaf_nr_entries.exit.i_crit_edge: ; preds = %for.inc.i.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_leaf_nr_entries.exit.i

for.inc.i.i.2:                                    ; preds = %for.inc.i.i.1
  %hi.i.i.i.3 = getelementptr [15 x %struct.xfs_iext_rec], ptr %60, i32 0, i32 3, i32 1
  %67 = ptrtoint ptr %hi.i.i.i.3 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %hi.i.i.i.3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %68)
  %cmp.i5.i.i.3 = icmp eq i64 %68, 0
  br i1 %cmp.i5.i.i.3, label %for.inc.i.i.2.xfs_iext_leaf_nr_entries.exit.i_crit_edge, label %for.inc.i.i.3

for.inc.i.i.2.xfs_iext_leaf_nr_entries.exit.i_crit_edge: ; preds = %for.inc.i.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_leaf_nr_entries.exit.i

for.inc.i.i.3:                                    ; preds = %for.inc.i.i.2
  %hi.i.i.i.4 = getelementptr [15 x %struct.xfs_iext_rec], ptr %60, i32 0, i32 4, i32 1
  %69 = ptrtoint ptr %hi.i.i.i.4 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %hi.i.i.i.4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %70)
  %cmp.i5.i.i.4 = icmp eq i64 %70, 0
  br i1 %cmp.i5.i.i.4, label %for.inc.i.i.3.xfs_iext_leaf_nr_entries.exit.i_crit_edge, label %for.inc.i.i.4

for.inc.i.i.3.xfs_iext_leaf_nr_entries.exit.i_crit_edge: ; preds = %for.inc.i.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_leaf_nr_entries.exit.i

for.inc.i.i.4:                                    ; preds = %for.inc.i.i.3
  %hi.i.i.i.5 = getelementptr [15 x %struct.xfs_iext_rec], ptr %60, i32 0, i32 5, i32 1
  %71 = ptrtoint ptr %hi.i.i.i.5 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %hi.i.i.i.5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %72)
  %cmp.i5.i.i.5 = icmp eq i64 %72, 0
  br i1 %cmp.i5.i.i.5, label %for.inc.i.i.4.xfs_iext_leaf_nr_entries.exit.i_crit_edge, label %for.inc.i.i.5

for.inc.i.i.4.xfs_iext_leaf_nr_entries.exit.i_crit_edge: ; preds = %for.inc.i.i.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_leaf_nr_entries.exit.i

for.inc.i.i.5:                                    ; preds = %for.inc.i.i.4
  %hi.i.i.i.6 = getelementptr [15 x %struct.xfs_iext_rec], ptr %60, i32 0, i32 6, i32 1
  %73 = ptrtoint ptr %hi.i.i.i.6 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %hi.i.i.i.6, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %74)
  %cmp.i5.i.i.6 = icmp eq i64 %74, 0
  br i1 %cmp.i5.i.i.6, label %for.inc.i.i.5.xfs_iext_leaf_nr_entries.exit.i_crit_edge, label %for.inc.i.i.6

for.inc.i.i.5.xfs_iext_leaf_nr_entries.exit.i_crit_edge: ; preds = %for.inc.i.i.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_leaf_nr_entries.exit.i

for.inc.i.i.6:                                    ; preds = %for.inc.i.i.5
  %hi.i.i.i.7 = getelementptr [15 x %struct.xfs_iext_rec], ptr %60, i32 0, i32 7, i32 1
  %75 = ptrtoint ptr %hi.i.i.i.7 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %hi.i.i.i.7, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %76)
  %cmp.i5.i.i.7 = icmp eq i64 %76, 0
  br i1 %cmp.i5.i.i.7, label %for.inc.i.i.6.xfs_iext_leaf_nr_entries.exit.i_crit_edge, label %for.inc.i.i.7

for.inc.i.i.6.xfs_iext_leaf_nr_entries.exit.i_crit_edge: ; preds = %for.inc.i.i.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_leaf_nr_entries.exit.i

for.inc.i.i.7:                                    ; preds = %for.inc.i.i.6
  %hi.i.i.i.8 = getelementptr [15 x %struct.xfs_iext_rec], ptr %60, i32 0, i32 8, i32 1
  %77 = ptrtoint ptr %hi.i.i.i.8 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %hi.i.i.i.8, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %78)
  %cmp.i5.i.i.8 = icmp eq i64 %78, 0
  br i1 %cmp.i5.i.i.8, label %for.inc.i.i.7.xfs_iext_leaf_nr_entries.exit.i_crit_edge, label %for.inc.i.i.8

for.inc.i.i.7.xfs_iext_leaf_nr_entries.exit.i_crit_edge: ; preds = %for.inc.i.i.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_leaf_nr_entries.exit.i

for.inc.i.i.8:                                    ; preds = %for.inc.i.i.7
  %hi.i.i.i.9 = getelementptr [15 x %struct.xfs_iext_rec], ptr %60, i32 0, i32 9, i32 1
  %79 = ptrtoint ptr %hi.i.i.i.9 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %hi.i.i.i.9, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %80)
  %cmp.i5.i.i.9 = icmp eq i64 %80, 0
  br i1 %cmp.i5.i.i.9, label %for.inc.i.i.8.xfs_iext_leaf_nr_entries.exit.i_crit_edge, label %for.inc.i.i.9

for.inc.i.i.8.xfs_iext_leaf_nr_entries.exit.i_crit_edge: ; preds = %for.inc.i.i.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_leaf_nr_entries.exit.i

for.inc.i.i.9:                                    ; preds = %for.inc.i.i.8
  %hi.i.i.i.10 = getelementptr [15 x %struct.xfs_iext_rec], ptr %60, i32 0, i32 10, i32 1
  %81 = ptrtoint ptr %hi.i.i.i.10 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %hi.i.i.i.10, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %82)
  %cmp.i5.i.i.10 = icmp eq i64 %82, 0
  br i1 %cmp.i5.i.i.10, label %for.inc.i.i.9.xfs_iext_leaf_nr_entries.exit.i_crit_edge, label %for.inc.i.i.10

for.inc.i.i.9.xfs_iext_leaf_nr_entries.exit.i_crit_edge: ; preds = %for.inc.i.i.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_leaf_nr_entries.exit.i

for.inc.i.i.10:                                   ; preds = %for.inc.i.i.9
  %hi.i.i.i.11 = getelementptr [15 x %struct.xfs_iext_rec], ptr %60, i32 0, i32 11, i32 1
  %83 = ptrtoint ptr %hi.i.i.i.11 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %hi.i.i.i.11, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %84)
  %cmp.i5.i.i.11 = icmp eq i64 %84, 0
  br i1 %cmp.i5.i.i.11, label %for.inc.i.i.10.xfs_iext_leaf_nr_entries.exit.i_crit_edge, label %for.inc.i.i.11

for.inc.i.i.10.xfs_iext_leaf_nr_entries.exit.i_crit_edge: ; preds = %for.inc.i.i.10
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_leaf_nr_entries.exit.i

for.inc.i.i.11:                                   ; preds = %for.inc.i.i.10
  %hi.i.i.i.12 = getelementptr [15 x %struct.xfs_iext_rec], ptr %60, i32 0, i32 12, i32 1
  %85 = ptrtoint ptr %hi.i.i.i.12 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %hi.i.i.i.12, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %86)
  %cmp.i5.i.i.12 = icmp eq i64 %86, 0
  br i1 %cmp.i5.i.i.12, label %for.inc.i.i.11.xfs_iext_leaf_nr_entries.exit.i_crit_edge, label %for.inc.i.i.12

for.inc.i.i.11.xfs_iext_leaf_nr_entries.exit.i_crit_edge: ; preds = %for.inc.i.i.11
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_leaf_nr_entries.exit.i

for.inc.i.i.12:                                   ; preds = %for.inc.i.i.11
  %hi.i.i.i.13 = getelementptr [15 x %struct.xfs_iext_rec], ptr %60, i32 0, i32 13, i32 1
  %87 = ptrtoint ptr %hi.i.i.i.13 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %hi.i.i.i.13, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %88)
  %cmp.i5.i.i.13 = icmp eq i64 %88, 0
  br i1 %cmp.i5.i.i.13, label %for.inc.i.i.12.xfs_iext_leaf_nr_entries.exit.i_crit_edge, label %for.inc.i.i.13

for.inc.i.i.12.xfs_iext_leaf_nr_entries.exit.i_crit_edge: ; preds = %for.inc.i.i.12
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_leaf_nr_entries.exit.i

for.inc.i.i.13:                                   ; preds = %for.inc.i.i.12
  call void @__sanitizer_cov_trace_pc() #13
  %hi.i.i.i.14 = getelementptr [15 x %struct.xfs_iext_rec], ptr %60, i32 0, i32 14, i32 1
  %89 = ptrtoint ptr %hi.i.i.i.14 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %hi.i.i.i.14, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %90)
  %cmp.i5.i.i.14 = icmp eq i64 %90, 0
  %spec.select = select i1 %cmp.i5.i.i.14, i32 14, i32 15
  br label %xfs_iext_leaf_nr_entries.exit.i

xfs_iext_leaf_nr_entries.exit.i:                  ; preds = %for.inc.i.i.13, %for.inc.i.i.12.xfs_iext_leaf_nr_entries.exit.i_crit_edge, %for.inc.i.i.11.xfs_iext_leaf_nr_entries.exit.i_crit_edge, %for.inc.i.i.10.xfs_iext_leaf_nr_entries.exit.i_crit_edge, %for.inc.i.i.9.xfs_iext_leaf_nr_entries.exit.i_crit_edge, %for.inc.i.i.8.xfs_iext_leaf_nr_entries.exit.i_crit_edge, %for.inc.i.i.7.xfs_iext_leaf_nr_entries.exit.i_crit_edge, %for.inc.i.i.6.xfs_iext_leaf_nr_entries.exit.i_crit_edge, %for.inc.i.i.5.xfs_iext_leaf_nr_entries.exit.i_crit_edge, %for.inc.i.i.4.xfs_iext_leaf_nr_entries.exit.i_crit_edge, %for.inc.i.i.3.xfs_iext_leaf_nr_entries.exit.i_crit_edge, %for.inc.i.i.2.xfs_iext_leaf_nr_entries.exit.i_crit_edge, %for.inc.i.i.1.xfs_iext_leaf_nr_entries.exit.i_crit_edge, %for.inc.i.i.xfs_iext_leaf_nr_entries.exit.i_crit_edge, %for.body.i.i.preheader.xfs_iext_leaf_nr_entries.exit.i_crit_edge
  %i.0.i.i.lcssa = phi i32 [ 0, %for.body.i.i.preheader.xfs_iext_leaf_nr_entries.exit.i_crit_edge ], [ 1, %for.inc.i.i.xfs_iext_leaf_nr_entries.exit.i_crit_edge ], [ 2, %for.inc.i.i.1.xfs_iext_leaf_nr_entries.exit.i_crit_edge ], [ 3, %for.inc.i.i.2.xfs_iext_leaf_nr_entries.exit.i_crit_edge ], [ 4, %for.inc.i.i.3.xfs_iext_leaf_nr_entries.exit.i_crit_edge ], [ 5, %for.inc.i.i.4.xfs_iext_leaf_nr_entries.exit.i_crit_edge ], [ 6, %for.inc.i.i.5.xfs_iext_leaf_nr_entries.exit.i_crit_edge ], [ 7, %for.inc.i.i.6.xfs_iext_leaf_nr_entries.exit.i_crit_edge ], [ 8, %for.inc.i.i.7.xfs_iext_leaf_nr_entries.exit.i_crit_edge ], [ 9, %for.inc.i.i.8.xfs_iext_leaf_nr_entries.exit.i_crit_edge ], [ 10, %for.inc.i.i.9.xfs_iext_leaf_nr_entries.exit.i_crit_edge ], [ 11, %for.inc.i.i.10.xfs_iext_leaf_nr_entries.exit.i_crit_edge ], [ 12, %for.inc.i.i.11.xfs_iext_leaf_nr_entries.exit.i_crit_edge ], [ 13, %for.inc.i.i.12.xfs_iext_leaf_nr_entries.exit.i_crit_edge ], [ %spec.select, %for.inc.i.i.13 ]
  %add.i130 = add nsw i32 %i.0.i.i.lcssa, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add.i130)
  %cmp3.i = icmp slt i32 %add.i130, 16
  br i1 %cmp3.i, label %for.cond.preheader.i, label %xfs_iext_leaf_nr_entries.exit.i.if.end19.i_crit_edge

xfs_iext_leaf_nr_entries.exit.i.if.end19.i_crit_edge: ; preds = %xfs_iext_leaf_nr_entries.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

for.cond.preheader.i:                             ; preds = %xfs_iext_leaf_nr_entries.exit.i
  br i1 %cmp34, label %for.cond.preheader.i.for.body.i134_crit_edge, label %for.cond.preheader.i.for.end.i135_crit_edge

for.cond.preheader.i.for.end.i135_crit_edge:      ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i135

for.cond.preheader.i.for.body.i134_crit_edge:     ; preds = %for.cond.preheader.i
  br label %for.body.i134

for.body.i134:                                    ; preds = %for.body.i134.for.body.i134_crit_edge, %for.cond.preheader.i.for.body.i134_crit_edge
  %i.0145.i = phi i32 [ %inc.i132, %for.body.i134.for.body.i134_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i134_crit_edge ]
  %91 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %prev.i, align 8
  %add7.i = add nuw i32 %i.0145.i, %i.0.i.i.lcssa
  %arrayidx.i131 = getelementptr [15 x %struct.xfs_iext_rec], ptr %92, i32 0, i32 %add7.i
  %arrayidx9.i = getelementptr [15 x %struct.xfs_iext_rec], ptr %1, i32 0, i32 %i.0145.i
  %93 = call ptr @memcpy(ptr %arrayidx.i131, ptr %arrayidx9.i, i32 16)
  %inc.i132 = add nuw nsw i32 %i.0145.i, 1
  %exitcond.not.i133 = icmp eq i32 %inc.i132, %sub
  br i1 %exitcond.not.i133, label %for.body.i134.for.end.i135_crit_edge, label %for.body.i134.for.body.i134_crit_edge

for.body.i134.for.body.i134_crit_edge:            ; preds = %for.body.i134
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i134

for.body.i134.for.end.i135_crit_edge:             ; preds = %for.body.i134
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i135

for.end.i135:                                     ; preds = %for.body.i134.for.end.i135_crit_edge, %for.cond.preheader.i.for.end.i135_crit_edge
  %94 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cur, align 4
  %cmp11.i = icmp eq ptr %95, %1
  br i1 %cmp11.i, label %if.then12.i, label %for.end.i135.remove_node.i_crit_edge

for.end.i135.remove_node.i_crit_edge:             ; preds = %for.end.i135
  call void @__sanitizer_cov_trace_pc() #13
  br label %remove_node.i

if.then12.i:                                      ; preds = %for.end.i135
  call void @__sanitizer_cov_trace_pc() #13
  %96 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %prev.i, align 8
  %98 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %97, ptr %cur, align 4
  %99 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %pos, align 4
  %add15.i = add i32 %100, %i.0.i.i.lcssa
  store i32 %add15.i, ptr %pos, align 4
  br label %remove_node.i

if.end19.i:                                       ; preds = %xfs_iext_leaf_nr_entries.exit.i.if.end19.i_crit_edge, %if.end.i128.if.end19.i_crit_edge
  %next.i = getelementptr inbounds %struct.xfs_iext_leaf, ptr %1, i32 0, i32 2
  %101 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %next.i, align 4
  %tobool20.not.i = icmp eq ptr %102, null
  br i1 %tobool20.not.i, label %if.end19.i.cleanup_crit_edge, label %for.body.i129.i

if.end19.i.cleanup_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i129.i:                                  ; preds = %if.end19.i
  %hi.i.i127.i = getelementptr [15 x %struct.xfs_iext_rec], ptr %102, i32 0, i32 0, i32 1
  %103 = ptrtoint ptr %hi.i.i127.i to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %hi.i.i127.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %104)
  %cmp.i5.i128.i = icmp eq i64 %104, 0
  br i1 %cmp.i5.i128.i, label %for.body.i129.i.xfs_iext_leaf_nr_entries.exit132.i_crit_edge, label %for.inc.i131.i

for.body.i129.i.xfs_iext_leaf_nr_entries.exit132.i_crit_edge: ; preds = %for.body.i129.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_leaf_nr_entries.exit132.i

for.inc.i131.i:                                   ; preds = %for.body.i129.i
  %hi.i.i127.i.1 = getelementptr [15 x %struct.xfs_iext_rec], ptr %102, i32 0, i32 1, i32 1
  %105 = ptrtoint ptr %hi.i.i127.i.1 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %hi.i.i127.i.1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %106)
  %cmp.i5.i128.i.1 = icmp eq i64 %106, 0
  br i1 %cmp.i5.i128.i.1, label %for.inc.i131.i.xfs_iext_leaf_nr_entries.exit132.i_crit_edge, label %for.inc.i131.i.1

for.inc.i131.i.xfs_iext_leaf_nr_entries.exit132.i_crit_edge: ; preds = %for.inc.i131.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_leaf_nr_entries.exit132.i

for.inc.i131.i.1:                                 ; preds = %for.inc.i131.i
  %hi.i.i127.i.2 = getelementptr [15 x %struct.xfs_iext_rec], ptr %102, i32 0, i32 2, i32 1
  %107 = ptrtoint ptr %hi.i.i127.i.2 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %hi.i.i127.i.2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %108)
  %cmp.i5.i128.i.2 = icmp eq i64 %108, 0
  br i1 %cmp.i5.i128.i.2, label %for.inc.i131.i.1.xfs_iext_leaf_nr_entries.exit132.i_crit_edge, label %for.inc.i131.i.2

for.inc.i131.i.1.xfs_iext_leaf_nr_entries.exit132.i_crit_edge: ; preds = %for.inc.i131.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_leaf_nr_entries.exit132.i

for.inc.i131.i.2:                                 ; preds = %for.inc.i131.i.1
  %hi.i.i127.i.3 = getelementptr [15 x %struct.xfs_iext_rec], ptr %102, i32 0, i32 3, i32 1
  %109 = ptrtoint ptr %hi.i.i127.i.3 to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %hi.i.i127.i.3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %110)
  %cmp.i5.i128.i.3 = icmp eq i64 %110, 0
  br i1 %cmp.i5.i128.i.3, label %for.inc.i131.i.2.xfs_iext_leaf_nr_entries.exit132.i_crit_edge, label %for.inc.i131.i.3

for.inc.i131.i.2.xfs_iext_leaf_nr_entries.exit132.i_crit_edge: ; preds = %for.inc.i131.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_leaf_nr_entries.exit132.i

for.inc.i131.i.3:                                 ; preds = %for.inc.i131.i.2
  %hi.i.i127.i.4 = getelementptr [15 x %struct.xfs_iext_rec], ptr %102, i32 0, i32 4, i32 1
  %111 = ptrtoint ptr %hi.i.i127.i.4 to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %hi.i.i127.i.4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %112)
  %cmp.i5.i128.i.4 = icmp eq i64 %112, 0
  br i1 %cmp.i5.i128.i.4, label %for.inc.i131.i.3.xfs_iext_leaf_nr_entries.exit132.i_crit_edge, label %for.inc.i131.i.4

for.inc.i131.i.3.xfs_iext_leaf_nr_entries.exit132.i_crit_edge: ; preds = %for.inc.i131.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_leaf_nr_entries.exit132.i

for.inc.i131.i.4:                                 ; preds = %for.inc.i131.i.3
  %hi.i.i127.i.5 = getelementptr [15 x %struct.xfs_iext_rec], ptr %102, i32 0, i32 5, i32 1
  %113 = ptrtoint ptr %hi.i.i127.i.5 to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %hi.i.i127.i.5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %114)
  %cmp.i5.i128.i.5 = icmp eq i64 %114, 0
  br i1 %cmp.i5.i128.i.5, label %for.inc.i131.i.4.xfs_iext_leaf_nr_entries.exit132.i_crit_edge, label %for.inc.i131.i.5

for.inc.i131.i.4.xfs_iext_leaf_nr_entries.exit132.i_crit_edge: ; preds = %for.inc.i131.i.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_leaf_nr_entries.exit132.i

for.inc.i131.i.5:                                 ; preds = %for.inc.i131.i.4
  %hi.i.i127.i.6 = getelementptr [15 x %struct.xfs_iext_rec], ptr %102, i32 0, i32 6, i32 1
  %115 = ptrtoint ptr %hi.i.i127.i.6 to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %hi.i.i127.i.6, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %116)
  %cmp.i5.i128.i.6 = icmp eq i64 %116, 0
  br i1 %cmp.i5.i128.i.6, label %for.inc.i131.i.5.xfs_iext_leaf_nr_entries.exit132.i_crit_edge, label %for.inc.i131.i.6

for.inc.i131.i.5.xfs_iext_leaf_nr_entries.exit132.i_crit_edge: ; preds = %for.inc.i131.i.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_leaf_nr_entries.exit132.i

for.inc.i131.i.6:                                 ; preds = %for.inc.i131.i.5
  %hi.i.i127.i.7 = getelementptr [15 x %struct.xfs_iext_rec], ptr %102, i32 0, i32 7, i32 1
  %117 = ptrtoint ptr %hi.i.i127.i.7 to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %hi.i.i127.i.7, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %118)
  %cmp.i5.i128.i.7 = icmp eq i64 %118, 0
  br i1 %cmp.i5.i128.i.7, label %for.inc.i131.i.6.xfs_iext_leaf_nr_entries.exit132.i_crit_edge, label %for.inc.i131.i.7

for.inc.i131.i.6.xfs_iext_leaf_nr_entries.exit132.i_crit_edge: ; preds = %for.inc.i131.i.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_leaf_nr_entries.exit132.i

for.inc.i131.i.7:                                 ; preds = %for.inc.i131.i.6
  %hi.i.i127.i.8 = getelementptr [15 x %struct.xfs_iext_rec], ptr %102, i32 0, i32 8, i32 1
  %119 = ptrtoint ptr %hi.i.i127.i.8 to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %hi.i.i127.i.8, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %120)
  %cmp.i5.i128.i.8 = icmp eq i64 %120, 0
  br i1 %cmp.i5.i128.i.8, label %for.inc.i131.i.7.xfs_iext_leaf_nr_entries.exit132.i_crit_edge, label %for.inc.i131.i.8

for.inc.i131.i.7.xfs_iext_leaf_nr_entries.exit132.i_crit_edge: ; preds = %for.inc.i131.i.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_leaf_nr_entries.exit132.i

for.inc.i131.i.8:                                 ; preds = %for.inc.i131.i.7
  %hi.i.i127.i.9 = getelementptr [15 x %struct.xfs_iext_rec], ptr %102, i32 0, i32 9, i32 1
  %121 = ptrtoint ptr %hi.i.i127.i.9 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %hi.i.i127.i.9, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %122)
  %cmp.i5.i128.i.9 = icmp eq i64 %122, 0
  br i1 %cmp.i5.i128.i.9, label %for.inc.i131.i.8.xfs_iext_leaf_nr_entries.exit132.i_crit_edge, label %for.inc.i131.i.9

for.inc.i131.i.8.xfs_iext_leaf_nr_entries.exit132.i_crit_edge: ; preds = %for.inc.i131.i.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_leaf_nr_entries.exit132.i

for.inc.i131.i.9:                                 ; preds = %for.inc.i131.i.8
  %hi.i.i127.i.10 = getelementptr [15 x %struct.xfs_iext_rec], ptr %102, i32 0, i32 10, i32 1
  %123 = ptrtoint ptr %hi.i.i127.i.10 to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %hi.i.i127.i.10, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %124)
  %cmp.i5.i128.i.10 = icmp eq i64 %124, 0
  br i1 %cmp.i5.i128.i.10, label %for.inc.i131.i.9.xfs_iext_leaf_nr_entries.exit132.i_crit_edge, label %for.inc.i131.i.10

for.inc.i131.i.9.xfs_iext_leaf_nr_entries.exit132.i_crit_edge: ; preds = %for.inc.i131.i.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_leaf_nr_entries.exit132.i

for.inc.i131.i.10:                                ; preds = %for.inc.i131.i.9
  %hi.i.i127.i.11 = getelementptr [15 x %struct.xfs_iext_rec], ptr %102, i32 0, i32 11, i32 1
  %125 = ptrtoint ptr %hi.i.i127.i.11 to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %hi.i.i127.i.11, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %126)
  %cmp.i5.i128.i.11 = icmp eq i64 %126, 0
  br i1 %cmp.i5.i128.i.11, label %for.inc.i131.i.10.xfs_iext_leaf_nr_entries.exit132.i_crit_edge, label %for.inc.i131.i.11

for.inc.i131.i.10.xfs_iext_leaf_nr_entries.exit132.i_crit_edge: ; preds = %for.inc.i131.i.10
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_leaf_nr_entries.exit132.i

for.inc.i131.i.11:                                ; preds = %for.inc.i131.i.10
  %hi.i.i127.i.12 = getelementptr [15 x %struct.xfs_iext_rec], ptr %102, i32 0, i32 12, i32 1
  %127 = ptrtoint ptr %hi.i.i127.i.12 to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %hi.i.i127.i.12, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %128)
  %cmp.i5.i128.i.12 = icmp eq i64 %128, 0
  br i1 %cmp.i5.i128.i.12, label %for.inc.i131.i.11.xfs_iext_leaf_nr_entries.exit132.i_crit_edge, label %for.inc.i131.i.12

for.inc.i131.i.11.xfs_iext_leaf_nr_entries.exit132.i_crit_edge: ; preds = %for.inc.i131.i.11
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_leaf_nr_entries.exit132.i

for.inc.i131.i.12:                                ; preds = %for.inc.i131.i.11
  %hi.i.i127.i.13 = getelementptr [15 x %struct.xfs_iext_rec], ptr %102, i32 0, i32 13, i32 1
  %129 = ptrtoint ptr %hi.i.i127.i.13 to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %hi.i.i127.i.13, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %130)
  %cmp.i5.i128.i.13 = icmp eq i64 %130, 0
  br i1 %cmp.i5.i128.i.13, label %for.inc.i131.i.12.xfs_iext_leaf_nr_entries.exit132.i_crit_edge, label %for.inc.i131.i.13

for.inc.i131.i.12.xfs_iext_leaf_nr_entries.exit132.i_crit_edge: ; preds = %for.inc.i131.i.12
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_leaf_nr_entries.exit132.i

for.inc.i131.i.13:                                ; preds = %for.inc.i131.i.12
  call void @__sanitizer_cov_trace_pc() #13
  %hi.i.i127.i.14 = getelementptr [15 x %struct.xfs_iext_rec], ptr %102, i32 0, i32 14, i32 1
  %131 = ptrtoint ptr %hi.i.i127.i.14 to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %hi.i.i127.i.14, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %132)
  %cmp.i5.i128.i.14 = icmp eq i64 %132, 0
  %spec.select173 = select i1 %cmp.i5.i128.i.14, i32 14, i32 15
  br label %xfs_iext_leaf_nr_entries.exit132.i

xfs_iext_leaf_nr_entries.exit132.i:               ; preds = %for.inc.i131.i.13, %for.inc.i131.i.12.xfs_iext_leaf_nr_entries.exit132.i_crit_edge, %for.inc.i131.i.11.xfs_iext_leaf_nr_entries.exit132.i_crit_edge, %for.inc.i131.i.10.xfs_iext_leaf_nr_entries.exit132.i_crit_edge, %for.inc.i131.i.9.xfs_iext_leaf_nr_entries.exit132.i_crit_edge, %for.inc.i131.i.8.xfs_iext_leaf_nr_entries.exit132.i_crit_edge, %for.inc.i131.i.7.xfs_iext_leaf_nr_entries.exit132.i_crit_edge, %for.inc.i131.i.6.xfs_iext_leaf_nr_entries.exit132.i_crit_edge, %for.inc.i131.i.5.xfs_iext_leaf_nr_entries.exit132.i_crit_edge, %for.inc.i131.i.4.xfs_iext_leaf_nr_entries.exit132.i_crit_edge, %for.inc.i131.i.3.xfs_iext_leaf_nr_entries.exit132.i_crit_edge, %for.inc.i131.i.2.xfs_iext_leaf_nr_entries.exit132.i_crit_edge, %for.inc.i131.i.1.xfs_iext_leaf_nr_entries.exit132.i_crit_edge, %for.inc.i131.i.xfs_iext_leaf_nr_entries.exit132.i_crit_edge, %for.body.i129.i.xfs_iext_leaf_nr_entries.exit132.i_crit_edge
  %i.0.i119.i.lcssa = phi i32 [ 0, %for.body.i129.i.xfs_iext_leaf_nr_entries.exit132.i_crit_edge ], [ 1, %for.inc.i131.i.xfs_iext_leaf_nr_entries.exit132.i_crit_edge ], [ 2, %for.inc.i131.i.1.xfs_iext_leaf_nr_entries.exit132.i_crit_edge ], [ 3, %for.inc.i131.i.2.xfs_iext_leaf_nr_entries.exit132.i_crit_edge ], [ 4, %for.inc.i131.i.3.xfs_iext_leaf_nr_entries.exit132.i_crit_edge ], [ 5, %for.inc.i131.i.4.xfs_iext_leaf_nr_entries.exit132.i_crit_edge ], [ 6, %for.inc.i131.i.5.xfs_iext_leaf_nr_entries.exit132.i_crit_edge ], [ 7, %for.inc.i131.i.6.xfs_iext_leaf_nr_entries.exit132.i_crit_edge ], [ 8, %for.inc.i131.i.7.xfs_iext_leaf_nr_entries.exit132.i_crit_edge ], [ 9, %for.inc.i131.i.8.xfs_iext_leaf_nr_entries.exit132.i_crit_edge ], [ 10, %for.inc.i131.i.9.xfs_iext_leaf_nr_entries.exit132.i_crit_edge ], [ 11, %for.inc.i131.i.10.xfs_iext_leaf_nr_entries.exit132.i_crit_edge ], [ 12, %for.inc.i131.i.11.xfs_iext_leaf_nr_entries.exit132.i_crit_edge ], [ 13, %for.inc.i131.i.12.xfs_iext_leaf_nr_entries.exit132.i_crit_edge ], [ %spec.select173, %for.inc.i131.i.13 ]
  %add25.i = add i32 %i.0.i119.i.lcssa, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add25.i)
  %cmp26.i = icmp slt i32 %add25.i, 16
  br i1 %cmp26.i, label %for.cond28.preheader.i, label %xfs_iext_leaf_nr_entries.exit132.i.cleanup_crit_edge

xfs_iext_leaf_nr_entries.exit132.i.cleanup_crit_edge: ; preds = %xfs_iext_leaf_nr_entries.exit132.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond28.preheader.i:                           ; preds = %xfs_iext_leaf_nr_entries.exit132.i
  br i1 %cmp.i5.i128.i, label %for.cond28.preheader.i.for.end39.i_crit_edge, label %for.cond28.preheader.i.for.body30.i_crit_edge

for.cond28.preheader.i.for.body30.i_crit_edge:    ; preds = %for.cond28.preheader.i
  br label %for.body30.i

for.cond28.preheader.i.for.end39.i_crit_edge:     ; preds = %for.cond28.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end39.i

for.body30.i:                                     ; preds = %for.body30.i.for.body30.i_crit_edge, %for.cond28.preheader.i.for.body30.i_crit_edge
  %i24.0147.i = phi i32 [ %inc38.i, %for.body30.i.for.body30.i_crit_edge ], [ 0, %for.cond28.preheader.i.for.body30.i_crit_edge ]
  %add32.i = add i32 %i24.0147.i, %sub
  %arrayidx33.i = getelementptr [15 x %struct.xfs_iext_rec], ptr %1, i32 0, i32 %add32.i
  %133 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %next.i, align 4
  %arrayidx36.i = getelementptr [15 x %struct.xfs_iext_rec], ptr %134, i32 0, i32 %i24.0147.i
  %135 = call ptr @memcpy(ptr %arrayidx33.i, ptr %arrayidx36.i, i32 16)
  %inc38.i = add nuw nsw i32 %i24.0147.i, 1
  %exitcond150.not.i = icmp eq i32 %inc38.i, %i.0.i119.i.lcssa
  br i1 %exitcond150.not.i, label %for.body30.i.for.end39.i_crit_edge, label %for.body30.i.for.body30.i_crit_edge

for.body30.i.for.body30.i_crit_edge:              ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body30.i

for.body30.i.for.end39.i_crit_edge:               ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end39.i

for.end39.i:                                      ; preds = %for.body30.i.for.end39.i_crit_edge, %for.cond28.preheader.i.for.end39.i_crit_edge
  %136 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %cur, align 4
  %138 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %next.i, align 4
  %cmp42.i137 = icmp eq ptr %137, %139
  br i1 %cmp42.i137, label %if.then43.i, label %for.end39.i.cleanup52.i_crit_edge

for.end39.i.cleanup52.i_crit_edge:                ; preds = %for.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup52.i

if.then43.i:                                      ; preds = %for.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  %140 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %1, ptr %cur, align 4
  %141 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %pos, align 4
  %add46.i = add i32 %142, %sub
  store i32 %add46.i, ptr %pos, align 4
  br label %cleanup52.i

cleanup52.i:                                      ; preds = %if.then43.i, %for.end39.i.cleanup52.i_crit_edge
  %143 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %next.i, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %144, align 8
  %and.i.i = and i64 %146, 18014398509481983
  br label %remove_node.i

remove_node.i:                                    ; preds = %cleanup52.i, %if.then12.i, %for.end.i135.remove_node.i_crit_edge, %if.then57.remove_node.i_crit_edge
  %offset.addr.1.i = phi i64 [ %offset.0, %if.then57.remove_node.i_crit_edge ], [ %and.i.i, %cleanup52.i ], [ %offset.0, %if.then12.i ], [ %offset.0, %for.end.i135.remove_node.i_crit_edge ]
  %leaf.addr.1.i = phi ptr [ %1, %if.then57.remove_node.i_crit_edge ], [ %144, %cleanup52.i ], [ %1, %if.then12.i ], [ %1, %for.end.i135.remove_node.i_crit_edge ]
  %prev57.i = getelementptr inbounds %struct.xfs_iext_leaf, ptr %leaf.addr.1.i, i32 0, i32 1
  %147 = ptrtoint ptr %prev57.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %prev57.i, align 8
  %tobool58.not.i = icmp eq ptr %148, null
  br i1 %tobool58.not.i, label %remove_node.i.if.end63.i_crit_edge, label %if.then59.i

remove_node.i.if.end63.i_crit_edge:               ; preds = %remove_node.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63.i

if.then59.i:                                      ; preds = %remove_node.i
  call void @__sanitizer_cov_trace_pc() #13
  %next60.i = getelementptr inbounds %struct.xfs_iext_leaf, ptr %leaf.addr.1.i, i32 0, i32 2
  %149 = ptrtoint ptr %next60.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %next60.i, align 4
  %next62.i = getelementptr inbounds %struct.xfs_iext_leaf, ptr %148, i32 0, i32 2
  %151 = ptrtoint ptr %next62.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %150, ptr %next62.i, align 4
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then59.i, %remove_node.i.if.end63.i_crit_edge
  %next64.i = getelementptr inbounds %struct.xfs_iext_leaf, ptr %leaf.addr.1.i, i32 0, i32 2
  %152 = ptrtoint ptr %next64.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %next64.i, align 4
  %tobool65.not.i = icmp eq ptr %153, null
  br i1 %tobool65.not.i, label %if.end63.i.if.end70.i_crit_edge, label %if.then66.i

if.end63.i.if.end70.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70.i

if.then66.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #13
  %154 = ptrtoint ptr %prev57.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %prev57.i, align 8
  %prev69.i = getelementptr inbounds %struct.xfs_iext_leaf, ptr %153, i32 0, i32 1
  %156 = ptrtoint ptr %prev69.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %155, ptr %prev69.i, align 8
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then66.i, %if.end63.i.if.end70.i_crit_edge
  %157 = ptrtoint ptr %if_height to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %if_height, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %158)
  %cmp.i133.i = icmp sgt i32 %158, 1
  br i1 %cmp.i133.i, label %if.end70.i.cond.end.i.i_crit_edge, label %cond.false.i.i, !prof !77

if.end70.i.cond.end.i.i_crit_edge:                ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 731) #11
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %if.end70.i.cond.end.i.i_crit_edge
  %call.i.i = tail call fastcc ptr @xfs_iext_find_level(ptr noundef %call, i64 noundef %offset.addr.1.i, i32 noundef 2) #11
  %call2.i.i = tail call fastcc i32 @xfs_iext_node_pos(ptr noundef %call.i.i, i64 noundef %offset.addr.1.i) #11
  br label %again.i.i

again.i.i:                                        ; preds = %xfs_iext_rebalance_node.exit.i.i.again.i.i_crit_edge, %cond.end.i.i
  %pos.0.i.i = phi i32 [ %call2.i.i, %cond.end.i.i ], [ %pos.1.i.i, %xfs_iext_rebalance_node.exit.i.i.again.i.i_crit_edge ]
  %victim.addr.0.i.i = phi ptr [ %leaf.addr.1.i, %cond.end.i.i ], [ %retval.3.i.i.i, %xfs_iext_rebalance_node.exit.i.i.again.i.i_crit_edge ]
  %node.0.i.i = phi ptr [ %call.i.i, %cond.end.i.i ], [ %call54.i.i, %xfs_iext_rebalance_node.exit.i.i.again.i.i_crit_edge ]
  %level.0.i.i = phi i32 [ 2, %cond.end.i.i ], [ %inc53.i.i, %xfs_iext_rebalance_node.exit.i.i.again.i.i_crit_edge ]
  %arrayidx.i.i139 = getelementptr %struct.xfs_iext_node, ptr %node.0.i.i, i32 0, i32 1, i32 %pos.0.i.i
  %159 = ptrtoint ptr %arrayidx.i.i139 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %arrayidx.i.i139, align 4
  %tobool3.not.i.i = icmp eq ptr %160, null
  br i1 %tobool3.not.i.i, label %cond.false11.i.i, label %again.i.i.cond.end12.i.i_crit_edge, !prof !76

again.i.i.cond.end12.i.i_crit_edge:               ; preds = %again.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end12.i.i

cond.false11.i.i:                                 ; preds = %again.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 735) #11
  br label %cond.end12.i.i

cond.end12.i.i:                                   ; preds = %cond.false11.i.i, %again.i.i.cond.end12.i.i_crit_edge
  %161 = ptrtoint ptr %arrayidx.i.i139 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %arrayidx.i.i139, align 4
  %cmp15.i.i = icmp eq ptr %162, %victim.addr.0.i.i
  br i1 %cmp15.i.i, label %cond.end12.i.i.cond.end24.i.i_crit_edge, label %cond.false23.i.i, !prof !77

cond.end12.i.i.cond.end24.i.i_crit_edge:          ; preds = %cond.end12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end24.i.i

cond.false23.i.i:                                 ; preds = %cond.end12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 736) #11
  br label %cond.end24.i.i

cond.end24.i.i:                                   ; preds = %cond.false23.i.i, %cond.end12.i.i.cond.end24.i.i_crit_edge
  tail call void @kvfree(ptr noundef %victim.addr.0.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %pos.0.i.i)
  %cmp5.i.i.i = icmp slt i32 %pos.0.i.i, 21
  br i1 %cmp5.i.i.i, label %cond.end24.i.i.for.body.i.i.i_crit_edge, label %cond.end24.i.i.xfs_iext_node_nr_entries.exit.i.i_crit_edge

cond.end24.i.i.xfs_iext_node_nr_entries.exit.i.i_crit_edge: ; preds = %cond.end24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit.i.i

cond.end24.i.i.for.body.i.i.i_crit_edge:          ; preds = %cond.end24.i.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %cond.end24.i.i.for.body.i.i.i_crit_edge
  %i.06.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %pos.0.i.i, %cond.end24.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr [21 x i64], ptr %node.0.i.i, i32 0, i32 %i.06.i.i.i
  %163 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %arrayidx.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %164)
  %cmp1.i.i.i = icmp eq i64 %164, -9223372036854775808
  br i1 %cmp1.i.i.i, label %for.body.i.i.i.xfs_iext_node_nr_entries.exit.i.i_crit_edge, label %for.inc.i.i.i

for.body.i.i.i.xfs_iext_node_nr_entries.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nsw i32 %i.06.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 21
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.xfs_iext_node_nr_entries.exit.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i

for.inc.i.i.i.xfs_iext_node_nr_entries.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit.i.i

xfs_iext_node_nr_entries.exit.i.i:                ; preds = %for.inc.i.i.i.xfs_iext_node_nr_entries.exit.i.i_crit_edge, %for.body.i.i.i.xfs_iext_node_nr_entries.exit.i.i_crit_edge, %cond.end24.i.i.xfs_iext_node_nr_entries.exit.i.i_crit_edge
  %i.0.lcssa.i.i.i = phi i32 [ %pos.0.i.i, %cond.end24.i.i.xfs_iext_node_nr_entries.exit.i.i_crit_edge ], [ 21, %for.inc.i.i.i.xfs_iext_node_nr_entries.exit.i.i_crit_edge ], [ %i.06.i.i.i, %for.body.i.i.i.xfs_iext_node_nr_entries.exit.i.i_crit_edge ]
  %sub.i.i = add i32 %i.0.lcssa.i.i.i, -1
  %165 = ptrtoint ptr %node.0.i.i to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %node.0.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.0.i.i, i32 %sub.i.i)
  %cmp27184.i.i = icmp slt i32 %pos.0.i.i, %sub.i.i
  br i1 %cmp27184.i.i, label %xfs_iext_node_nr_entries.exit.i.i.for.body.i134.i_crit_edge, label %xfs_iext_node_nr_entries.exit.i.i.for.end.i.i_crit_edge

xfs_iext_node_nr_entries.exit.i.i.for.end.i.i_crit_edge: ; preds = %xfs_iext_node_nr_entries.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

xfs_iext_node_nr_entries.exit.i.i.for.body.i134.i_crit_edge: ; preds = %xfs_iext_node_nr_entries.exit.i.i
  br label %for.body.i134.i

for.body.i134.i:                                  ; preds = %for.body.i134.i.for.body.i134.i_crit_edge, %xfs_iext_node_nr_entries.exit.i.i.for.body.i134.i_crit_edge
  %i.0185.i.i = phi i32 [ %add.i.i, %for.body.i134.i.for.body.i134.i_crit_edge ], [ %pos.0.i.i, %xfs_iext_node_nr_entries.exit.i.i.for.body.i134.i_crit_edge ]
  %add.i.i = add nsw i32 %i.0185.i.i, 1
  %arrayidx29.i.i = getelementptr [21 x i64], ptr %node.0.i.i, i32 0, i32 %add.i.i
  %167 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i.i = getelementptr [21 x i64], ptr %node.0.i.i, i32 0, i32 %i.0185.i.i
  %169 = ptrtoint ptr %arrayidx31.i.i to i32
  call void @__asan_store8_noabort(i32 %169)
  store i64 %168, ptr %arrayidx31.i.i, align 8
  %arrayidx34.i.i = getelementptr %struct.xfs_iext_node, ptr %node.0.i.i, i32 0, i32 1, i32 %add.i.i
  %170 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %arrayidx34.i.i, align 4
  %arrayidx36.i.i = getelementptr %struct.xfs_iext_node, ptr %node.0.i.i, i32 0, i32 1, i32 %i.0185.i.i
  %172 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %171, ptr %arrayidx36.i.i, align 4
  %exitcond.not.i.i = icmp eq i32 %add.i.i, %sub.i.i
  br i1 %exitcond.not.i.i, label %for.body.i134.i.for.end.i.i_crit_edge, label %for.body.i134.i.for.body.i134.i_crit_edge

for.body.i134.i.for.body.i134.i_crit_edge:        ; preds = %for.body.i134.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i134.i

for.body.i134.i.for.end.i.i_crit_edge:            ; preds = %for.body.i134.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i134.i.for.end.i.i_crit_edge, %xfs_iext_node_nr_entries.exit.i.i.for.end.i.i_crit_edge
  %arrayidx38.i.i = getelementptr [21 x i64], ptr %node.0.i.i, i32 0, i32 %sub.i.i
  %173 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_store8_noabort(i32 %173)
  store i64 -9223372036854775808, ptr %arrayidx38.i.i, align 8
  %arrayidx40.i.i = getelementptr %struct.xfs_iext_node, ptr %node.0.i.i, i32 0, i32 1, i32 %sub.i.i
  %174 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr null, ptr %arrayidx40.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pos.0.i.i)
  %cmp41.i.i = icmp eq i32 %pos.0.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp42.i.i = icmp sgt i32 %sub.i.i, 0
  %or.cond.i.i = select i1 %cmp41.i.i, i1 %cmp42.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then.i.i140, label %for.end.i.i.if.end.i.i_crit_edge

for.end.i.i.if.end.i.i_crit_edge:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i140:                                   ; preds = %for.end.i.i
  %175 = ptrtoint ptr %node.0.i.i to i32
  call void @__asan_load8_noabort(i32 %175)
  %176 = load i64, ptr %node.0.i.i, align 8
  %177 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %if_u1, align 4
  %179 = ptrtoint ptr %if_height to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %if_height, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %180, i32 %level.0.i.i)
  %cmp42.i.i.i = icmp sgt i32 %180, %level.0.i.i
  br i1 %cmp42.i.i.i, label %if.then.i.i140.for.cond1.preheader.i.i.i_crit_edge, label %if.then.i.i140.for.end15.i.i.i_crit_edge

if.then.i.i140.for.end15.i.i.i_crit_edge:         ; preds = %if.then.i.i140
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end15.i.i.i

if.then.i.i140.for.cond1.preheader.i.i.i_crit_edge: ; preds = %if.then.i.i140
  br label %for.cond1.preheader.i.i.i

for.cond1.preheader.i.i.i:                        ; preds = %for.inc14.i.i.i.for.cond1.preheader.i.i.i_crit_edge, %if.then.i.i140.for.cond1.preheader.i.i.i_crit_edge
  %height.045.i.i.i = phi i32 [ %dec.i.i.i, %for.inc14.i.i.i.for.cond1.preheader.i.i.i_crit_edge ], [ %180, %if.then.i.i140.for.cond1.preheader.i.i.i_crit_edge ]
  %node.043.i.i.i = phi ptr [ %187, %for.inc14.i.i.i.for.cond1.preheader.i.i.i_crit_edge ], [ %178, %if.then.i.i140.for.cond1.preheader.i.i.i_crit_edge ]
  br label %for.body3.i.i.i

for.body3.i.i.i:                                  ; preds = %for.inc.i159.i.i.for.body3.i.i.i_crit_edge, %for.cond1.preheader.i.i.i
  %i.040.i.i.i = phi i32 [ 0, %for.cond1.preheader.i.i.i ], [ %inc.i157.i.i, %for.inc.i159.i.i.for.body3.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.040.i.i.i)
  %cmp4.not.i.i.i = icmp eq i32 %i.040.i.i.i, 0
  br i1 %cmp4.not.i.i.i, label %for.body3.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

for.body3.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %for.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body3.i.i.i
  %arrayidx.i.i.i.i = getelementptr [21 x i64], ptr %node.043.i.i.i, i32 0, i32 %i.040.i.i.i
  %181 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %181)
  %182 = load i64, ptr %arrayidx.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %182, i64 %166)
  %cmp.i.i.i.i = icmp ugt i64 %182, %166
  br i1 %cmp.i.i.i.i, label %land.lhs.true.i.i.i.for.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

land.lhs.true.i.i.i.for.end.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %for.body3.i.i.i.if.end.i.i.i_crit_edge
  %arrayidx.i156.i.i = getelementptr [21 x i64], ptr %node.043.i.i.i, i32 0, i32 %i.040.i.i.i
  %183 = ptrtoint ptr %arrayidx.i156.i.i to i32
  call void @__asan_load8_noabort(i32 %183)
  %184 = load i64, ptr %arrayidx.i156.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %184, i64 %166)
  %cmp6.i.i.i = icmp eq i64 %184, %166
  br i1 %cmp6.i.i.i, label %if.then7.i.i.i, label %if.end.i.i.i.for.inc.i159.i.i_crit_edge

if.end.i.i.i.for.inc.i159.i.i_crit_edge:          ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i159.i.i

if.then7.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %185 = ptrtoint ptr %arrayidx.i156.i.i to i32
  call void @__asan_store8_noabort(i32 %185)
  store i64 %176, ptr %arrayidx.i156.i.i, align 8
  br label %for.inc.i159.i.i

for.inc.i159.i.i:                                 ; preds = %if.then7.i.i.i, %if.end.i.i.i.for.inc.i159.i.i_crit_edge
  %inc.i157.i.i = add nuw nsw i32 %i.040.i.i.i, 1
  %exitcond.not.i158.i.i = icmp eq i32 %inc.i157.i.i, 21
  br i1 %exitcond.not.i158.i.i, label %for.inc.i159.i.i.for.end.i.i.i_crit_edge, label %for.inc.i159.i.i.for.body3.i.i.i_crit_edge

for.inc.i159.i.i.for.body3.i.i.i_crit_edge:       ; preds = %for.inc.i159.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body3.i.i.i

for.inc.i159.i.i.for.end.i.i.i_crit_edge:         ; preds = %for.inc.i159.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.inc.i159.i.i.for.end.i.i.i_crit_edge, %land.lhs.true.i.i.i.for.end.i.i.i_crit_edge
  %i.0.lcssa.i160.i.i = phi i32 [ %i.040.i.i.i, %land.lhs.true.i.i.i.for.end.i.i.i_crit_edge ], [ 21, %for.inc.i159.i.i.for.end.i.i.i_crit_edge ]
  %sub.i.i.i = add nsw i32 %i.0.lcssa.i160.i.i, -1
  %arrayidx11.i.i.i = getelementptr %struct.xfs_iext_node, ptr %node.043.i.i.i, i32 0, i32 1, i32 %sub.i.i.i
  %186 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %arrayidx11.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %187, null
  br i1 %tobool.not.i.i.i, label %cond.false.i.i.i, label %for.end.i.i.i.for.inc14.i.i.i_crit_edge, !prof !76

for.end.i.i.i.for.inc14.i.i.i_crit_edge:          ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc14.i.i.i

cond.false.i.i.i:                                 ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 444) #11
  br label %for.inc14.i.i.i

for.inc14.i.i.i:                                  ; preds = %cond.false.i.i.i, %for.end.i.i.i.for.inc14.i.i.i_crit_edge
  %dec.i.i.i = add nsw i32 %height.045.i.i.i, -1
  %cmp.i.i135.i = icmp sgt i32 %dec.i.i.i, %level.0.i.i
  br i1 %cmp.i.i135.i, label %for.inc14.i.i.i.for.cond1.preheader.i.i.i_crit_edge, label %for.inc14.i.i.i.for.end15.i.i.i_crit_edge

for.inc14.i.i.i.for.end15.i.i.i_crit_edge:        ; preds = %for.inc14.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end15.i.i.i

for.inc14.i.i.i.for.cond1.preheader.i.i.i_crit_edge: ; preds = %for.inc14.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond1.preheader.i.i.i

for.end15.i.i.i:                                  ; preds = %for.inc14.i.i.i.for.end15.i.i.i_crit_edge, %if.then.i.i140.for.end15.i.i.i_crit_edge
  %node.0.lcssa.i.i.i = phi ptr [ %178, %if.then.i.i140.for.end15.i.i.i_crit_edge ], [ %187, %for.inc14.i.i.i.for.end15.i.i.i_crit_edge ]
  %cmp16.i.i.i = icmp eq ptr %node.0.lcssa.i.i.i, %node.0.i.i
  br i1 %cmp16.i.i.i, label %for.end15.i.i.i.xfs_iext_update_node.exit.i.i_crit_edge, label %cond.false24.i.i.i, !prof !77

for.end15.i.i.i.xfs_iext_update_node.exit.i.i_crit_edge: ; preds = %for.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_update_node.exit.i.i

cond.false24.i.i.i:                               ; preds = %for.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 447) #11
  br label %xfs_iext_update_node.exit.i.i

xfs_iext_update_node.exit.i.i:                    ; preds = %cond.false24.i.i.i, %for.end15.i.i.i.xfs_iext_update_node.exit.i.i_crit_edge
  %188 = ptrtoint ptr %node.0.i.i to i32
  call void @__asan_load8_noabort(i32 %188)
  %189 = load i64, ptr %node.0.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %xfs_iext_update_node.exit.i.i, %for.end.i.i.if.end.i.i_crit_edge
  %offset.addr.0.i.i = phi i64 [ %189, %xfs_iext_update_node.exit.i.i ], [ %166, %for.end.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %sub.i.i)
  %cmp47.i.i = icmp sgt i32 %sub.i.i, 9
  br i1 %cmp47.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end49.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end49.i.i:                                     ; preds = %if.end.i.i
  %190 = ptrtoint ptr %if_height to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %if_height, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %level.0.i.i, i32 %191)
  %cmp51.i.i = icmp slt i32 %level.0.i.i, %191
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.else.i.i

if.then52.i.i:                                    ; preds = %if.end49.i.i
  %inc53.i.i = add nuw nsw i32 %level.0.i.i, 1
  %call54.i.i = tail call fastcc ptr @xfs_iext_find_level(ptr noundef %call, i64 noundef %offset.addr.0.i.i, i32 noundef %inc53.i.i) #11
  %call55.i.i = tail call fastcc i32 @xfs_iext_node_pos(ptr noundef %call54.i.i, i64 noundef %offset.addr.0.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %call55.i.i)
  %cmp56.not.i.i = icmp eq i32 %call55.i.i, 21
  br i1 %cmp56.not.i.i, label %cond.false64.i.i, label %if.then52.i.i.cond.end65.i.i_crit_edge, !prof !76

if.then52.i.i.cond.end65.i.i_crit_edge:           ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end65.i.i

cond.false64.i.i:                                 ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1, i32 noundef 766) #11
  br label %cond.end65.i.i

cond.end65.i.i:                                   ; preds = %cond.false64.i.i, %if.then52.i.i.cond.end65.i.i_crit_edge
  %arrayidx67.i.i = getelementptr %struct.xfs_iext_node, ptr %call54.i.i, i32 0, i32 1, i32 %call55.i.i
  %192 = ptrtoint ptr %arrayidx67.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %arrayidx67.i.i, align 4
  %cmp68.i.i = icmp eq ptr %193, %node.0.i.i
  br i1 %cmp68.i.i, label %cond.end65.i.i.cond.end77.i.i_crit_edge, label %cond.false76.i.i, !prof !77

cond.end65.i.i.cond.end77.i.i_crit_edge:          ; preds = %cond.end65.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end77.i.i

cond.false76.i.i:                                 ; preds = %cond.end65.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 767) #11
  br label %cond.end77.i.i

cond.end77.i.i:                                   ; preds = %cond.false76.i.i, %cond.end65.i.i.cond.end77.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i161.i.i = icmp eq i32 %sub.i.i, 0
  br i1 %cmp.i161.i.i, label %cond.end77.i.i.xfs_iext_rebalance_node.exit.i.i_crit_edge, label %if.end.i163.i.i

cond.end77.i.i.xfs_iext_rebalance_node.exit.i.i_crit_edge: ; preds = %cond.end77.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_rebalance_node.exit.i.i

if.end.i163.i.i:                                  ; preds = %cond.end77.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i)
  %cmp1.i162.i.i = icmp sgt i32 %call55.i.i, 0
  br i1 %cmp1.i162.i.i, label %if.then2.i.i.i, label %if.end18.thread.i.i.i

if.end18.thread.i.i.i:                            ; preds = %if.end.i163.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add19119.i.i.i = add nsw i32 %call55.i.i, 1
  br label %for.body.i95.preheader.i.i.i

if.then2.i.i.i:                                   ; preds = %if.end.i163.i.i
  %sub.i164.i.i = add nsw i32 %call55.i.i, -1
  %arrayidx.i165.i.i = getelementptr %struct.xfs_iext_node, ptr %call54.i.i, i32 0, i32 1, i32 %sub.i164.i.i
  %194 = ptrtoint ptr %arrayidx.i165.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %arrayidx.i165.i.i, align 4
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load8_noabort(i32 %196)
  %197 = load i64, ptr %195, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %197)
  %cmp1.i.i.i.i = icmp eq i64 %197, -9223372036854775808
  br i1 %cmp1.i.i.i.i, label %if.then2.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge, label %for.inc.i.i.i.i

if.then2.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge: ; preds = %if.then2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit.i.i.i

for.inc.i.i.i.i:                                  ; preds = %if.then2.i.i.i
  %arrayidx.i.1.i.i.i = getelementptr [21 x i64], ptr %195, i32 0, i32 1
  %198 = ptrtoint ptr %arrayidx.i.1.i.i.i to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %arrayidx.i.1.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %199)
  %cmp1.i.1.i.i.i = icmp eq i64 %199, -9223372036854775808
  br i1 %cmp1.i.1.i.i.i, label %for.inc.i.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge, label %for.inc.i.1.i.i.i

for.inc.i.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit.i.i.i

for.inc.i.1.i.i.i:                                ; preds = %for.inc.i.i.i.i
  %arrayidx.i.2.i.i.i = getelementptr [21 x i64], ptr %195, i32 0, i32 2
  %200 = ptrtoint ptr %arrayidx.i.2.i.i.i to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %arrayidx.i.2.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %201)
  %cmp1.i.2.i.i.i = icmp eq i64 %201, -9223372036854775808
  br i1 %cmp1.i.2.i.i.i, label %for.inc.i.1.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge, label %for.inc.i.2.i.i.i

for.inc.i.1.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge: ; preds = %for.inc.i.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit.i.i.i

for.inc.i.2.i.i.i:                                ; preds = %for.inc.i.1.i.i.i
  %arrayidx.i.3.i.i.i = getelementptr [21 x i64], ptr %195, i32 0, i32 3
  %202 = ptrtoint ptr %arrayidx.i.3.i.i.i to i32
  call void @__asan_load8_noabort(i32 %202)
  %203 = load i64, ptr %arrayidx.i.3.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %203)
  %cmp1.i.3.i.i.i = icmp eq i64 %203, -9223372036854775808
  br i1 %cmp1.i.3.i.i.i, label %for.inc.i.2.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge, label %for.inc.i.3.i.i.i

for.inc.i.2.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge: ; preds = %for.inc.i.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit.i.i.i

for.inc.i.3.i.i.i:                                ; preds = %for.inc.i.2.i.i.i
  %arrayidx.i.4.i.i.i = getelementptr [21 x i64], ptr %195, i32 0, i32 4
  %204 = ptrtoint ptr %arrayidx.i.4.i.i.i to i32
  call void @__asan_load8_noabort(i32 %204)
  %205 = load i64, ptr %arrayidx.i.4.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %205)
  %cmp1.i.4.i.i.i = icmp eq i64 %205, -9223372036854775808
  br i1 %cmp1.i.4.i.i.i, label %for.inc.i.3.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge, label %for.inc.i.4.i.i.i

for.inc.i.3.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge: ; preds = %for.inc.i.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit.i.i.i

for.inc.i.4.i.i.i:                                ; preds = %for.inc.i.3.i.i.i
  %arrayidx.i.5.i.i.i = getelementptr [21 x i64], ptr %195, i32 0, i32 5
  %206 = ptrtoint ptr %arrayidx.i.5.i.i.i to i32
  call void @__asan_load8_noabort(i32 %206)
  %207 = load i64, ptr %arrayidx.i.5.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %207)
  %cmp1.i.5.i.i.i = icmp eq i64 %207, -9223372036854775808
  br i1 %cmp1.i.5.i.i.i, label %for.inc.i.4.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge, label %for.inc.i.5.i.i.i

for.inc.i.4.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge: ; preds = %for.inc.i.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit.i.i.i

for.inc.i.5.i.i.i:                                ; preds = %for.inc.i.4.i.i.i
  %arrayidx.i.6.i.i.i = getelementptr [21 x i64], ptr %195, i32 0, i32 6
  %208 = ptrtoint ptr %arrayidx.i.6.i.i.i to i32
  call void @__asan_load8_noabort(i32 %208)
  %209 = load i64, ptr %arrayidx.i.6.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %209)
  %cmp1.i.6.i.i.i = icmp eq i64 %209, -9223372036854775808
  br i1 %cmp1.i.6.i.i.i, label %for.inc.i.5.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge, label %for.inc.i.6.i.i.i

for.inc.i.5.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge: ; preds = %for.inc.i.5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit.i.i.i

for.inc.i.6.i.i.i:                                ; preds = %for.inc.i.5.i.i.i
  %arrayidx.i.7.i.i.i = getelementptr [21 x i64], ptr %195, i32 0, i32 7
  %210 = ptrtoint ptr %arrayidx.i.7.i.i.i to i32
  call void @__asan_load8_noabort(i32 %210)
  %211 = load i64, ptr %arrayidx.i.7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %211)
  %cmp1.i.7.i.i.i = icmp eq i64 %211, -9223372036854775808
  br i1 %cmp1.i.7.i.i.i, label %for.inc.i.6.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge, label %for.inc.i.7.i.i.i

for.inc.i.6.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge: ; preds = %for.inc.i.6.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit.i.i.i

for.inc.i.7.i.i.i:                                ; preds = %for.inc.i.6.i.i.i
  %arrayidx.i.8.i.i.i = getelementptr [21 x i64], ptr %195, i32 0, i32 8
  %212 = ptrtoint ptr %arrayidx.i.8.i.i.i to i32
  call void @__asan_load8_noabort(i32 %212)
  %213 = load i64, ptr %arrayidx.i.8.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %213)
  %cmp1.i.8.i.i.i = icmp eq i64 %213, -9223372036854775808
  br i1 %cmp1.i.8.i.i.i, label %for.inc.i.7.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge, label %for.inc.i.8.i.i.i

for.inc.i.7.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge: ; preds = %for.inc.i.7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit.i.i.i

for.inc.i.8.i.i.i:                                ; preds = %for.inc.i.7.i.i.i
  %arrayidx.i.9.i.i.i = getelementptr [21 x i64], ptr %195, i32 0, i32 9
  %214 = ptrtoint ptr %arrayidx.i.9.i.i.i to i32
  call void @__asan_load8_noabort(i32 %214)
  %215 = load i64, ptr %arrayidx.i.9.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %215)
  %cmp1.i.9.i.i.i = icmp eq i64 %215, -9223372036854775808
  br i1 %cmp1.i.9.i.i.i, label %for.inc.i.8.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge, label %for.inc.i.9.i.i.i

for.inc.i.8.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge: ; preds = %for.inc.i.8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit.i.i.i

for.inc.i.9.i.i.i:                                ; preds = %for.inc.i.8.i.i.i
  %arrayidx.i.10.i.i.i = getelementptr [21 x i64], ptr %195, i32 0, i32 10
  %216 = ptrtoint ptr %arrayidx.i.10.i.i.i to i32
  call void @__asan_load8_noabort(i32 %216)
  %217 = load i64, ptr %arrayidx.i.10.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %217)
  %cmp1.i.10.i.i.i = icmp eq i64 %217, -9223372036854775808
  br i1 %cmp1.i.10.i.i.i, label %for.inc.i.9.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge, label %for.inc.i.10.i.i.i

for.inc.i.9.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge: ; preds = %for.inc.i.9.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit.i.i.i

for.inc.i.10.i.i.i:                               ; preds = %for.inc.i.9.i.i.i
  %arrayidx.i.11.i.i.i = getelementptr [21 x i64], ptr %195, i32 0, i32 11
  %218 = ptrtoint ptr %arrayidx.i.11.i.i.i to i32
  call void @__asan_load8_noabort(i32 %218)
  %219 = load i64, ptr %arrayidx.i.11.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %219)
  %cmp1.i.11.i.i.i = icmp eq i64 %219, -9223372036854775808
  br i1 %cmp1.i.11.i.i.i, label %for.inc.i.10.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge, label %for.inc.i.11.i.i.i

for.inc.i.10.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge: ; preds = %for.inc.i.10.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit.i.i.i

for.inc.i.11.i.i.i:                               ; preds = %for.inc.i.10.i.i.i
  %arrayidx.i.12.i.i.i = getelementptr [21 x i64], ptr %195, i32 0, i32 12
  %220 = ptrtoint ptr %arrayidx.i.12.i.i.i to i32
  call void @__asan_load8_noabort(i32 %220)
  %221 = load i64, ptr %arrayidx.i.12.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %221)
  %cmp1.i.12.i.i.i = icmp eq i64 %221, -9223372036854775808
  br i1 %cmp1.i.12.i.i.i, label %for.inc.i.11.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge, label %for.inc.i.12.i.i.i

for.inc.i.11.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge: ; preds = %for.inc.i.11.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit.i.i.i

for.inc.i.12.i.i.i:                               ; preds = %for.inc.i.11.i.i.i
  %arrayidx.i.13.i.i.i = getelementptr [21 x i64], ptr %195, i32 0, i32 13
  %222 = ptrtoint ptr %arrayidx.i.13.i.i.i to i32
  call void @__asan_load8_noabort(i32 %222)
  %223 = load i64, ptr %arrayidx.i.13.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %223)
  %cmp1.i.13.i.i.i = icmp eq i64 %223, -9223372036854775808
  br i1 %cmp1.i.13.i.i.i, label %for.inc.i.12.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge, label %for.inc.i.13.i.i.i

for.inc.i.12.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge: ; preds = %for.inc.i.12.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit.i.i.i

for.inc.i.13.i.i.i:                               ; preds = %for.inc.i.12.i.i.i
  %arrayidx.i.14.i.i.i = getelementptr [21 x i64], ptr %195, i32 0, i32 14
  %224 = ptrtoint ptr %arrayidx.i.14.i.i.i to i32
  call void @__asan_load8_noabort(i32 %224)
  %225 = load i64, ptr %arrayidx.i.14.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %225)
  %cmp1.i.14.i.i.i = icmp eq i64 %225, -9223372036854775808
  br i1 %cmp1.i.14.i.i.i, label %for.inc.i.13.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge, label %for.inc.i.14.i.i.i

for.inc.i.13.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge: ; preds = %for.inc.i.13.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit.i.i.i

for.inc.i.14.i.i.i:                               ; preds = %for.inc.i.13.i.i.i
  %arrayidx.i.15.i.i.i = getelementptr [21 x i64], ptr %195, i32 0, i32 15
  %226 = ptrtoint ptr %arrayidx.i.15.i.i.i to i32
  call void @__asan_load8_noabort(i32 %226)
  %227 = load i64, ptr %arrayidx.i.15.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %227)
  %cmp1.i.15.i.i.i = icmp eq i64 %227, -9223372036854775808
  br i1 %cmp1.i.15.i.i.i, label %for.inc.i.14.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge, label %for.inc.i.15.i.i.i

for.inc.i.14.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge: ; preds = %for.inc.i.14.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit.i.i.i

for.inc.i.15.i.i.i:                               ; preds = %for.inc.i.14.i.i.i
  %arrayidx.i.16.i.i.i = getelementptr [21 x i64], ptr %195, i32 0, i32 16
  %228 = ptrtoint ptr %arrayidx.i.16.i.i.i to i32
  call void @__asan_load8_noabort(i32 %228)
  %229 = load i64, ptr %arrayidx.i.16.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %229)
  %cmp1.i.16.i.i.i = icmp eq i64 %229, -9223372036854775808
  br i1 %cmp1.i.16.i.i.i, label %for.inc.i.15.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge, label %for.inc.i.16.i.i.i

for.inc.i.15.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge: ; preds = %for.inc.i.15.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit.i.i.i

for.inc.i.16.i.i.i:                               ; preds = %for.inc.i.15.i.i.i
  %arrayidx.i.17.i.i.i = getelementptr [21 x i64], ptr %195, i32 0, i32 17
  %230 = ptrtoint ptr %arrayidx.i.17.i.i.i to i32
  call void @__asan_load8_noabort(i32 %230)
  %231 = load i64, ptr %arrayidx.i.17.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %231)
  %cmp1.i.17.i.i.i = icmp eq i64 %231, -9223372036854775808
  br i1 %cmp1.i.17.i.i.i, label %for.inc.i.16.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge, label %for.inc.i.17.i.i.i

for.inc.i.16.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge: ; preds = %for.inc.i.16.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit.i.i.i

for.inc.i.17.i.i.i:                               ; preds = %for.inc.i.16.i.i.i
  %arrayidx.i.18.i.i.i = getelementptr [21 x i64], ptr %195, i32 0, i32 18
  %232 = ptrtoint ptr %arrayidx.i.18.i.i.i to i32
  call void @__asan_load8_noabort(i32 %232)
  %233 = load i64, ptr %arrayidx.i.18.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %233)
  %cmp1.i.18.i.i.i = icmp eq i64 %233, -9223372036854775808
  br i1 %cmp1.i.18.i.i.i, label %for.inc.i.17.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge, label %for.inc.i.18.i.i.i

for.inc.i.17.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge: ; preds = %for.inc.i.17.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit.i.i.i

for.inc.i.18.i.i.i:                               ; preds = %for.inc.i.17.i.i.i
  %arrayidx.i.19.i.i.i = getelementptr [21 x i64], ptr %195, i32 0, i32 19
  %234 = ptrtoint ptr %arrayidx.i.19.i.i.i to i32
  call void @__asan_load8_noabort(i32 %234)
  %235 = load i64, ptr %arrayidx.i.19.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %235)
  %cmp1.i.19.i.i.i = icmp eq i64 %235, -9223372036854775808
  br i1 %cmp1.i.19.i.i.i, label %for.inc.i.18.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge, label %for.inc.i.19.i.i.i

for.inc.i.18.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge: ; preds = %for.inc.i.18.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit.i.i.i

for.inc.i.19.i.i.i:                               ; preds = %for.inc.i.18.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.20.i.i.i = getelementptr [21 x i64], ptr %195, i32 0, i32 20
  %236 = ptrtoint ptr %arrayidx.i.20.i.i.i to i32
  call void @__asan_load8_noabort(i32 %236)
  %237 = load i64, ptr %arrayidx.i.20.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %237)
  %cmp1.i.20.i.i.i = icmp eq i64 %237, -9223372036854775808
  %spec.select.i.i.i = select i1 %cmp1.i.20.i.i.i, i32 20, i32 21
  br label %xfs_iext_node_nr_entries.exit.i.i.i

xfs_iext_node_nr_entries.exit.i.i.i:              ; preds = %for.inc.i.19.i.i.i, %for.inc.i.18.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge, %for.inc.i.17.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge, %for.inc.i.16.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge, %for.inc.i.15.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge, %for.inc.i.14.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge, %for.inc.i.13.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge, %for.inc.i.12.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge, %for.inc.i.11.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge, %for.inc.i.10.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge, %for.inc.i.9.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge, %for.inc.i.8.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge, %for.inc.i.7.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge, %for.inc.i.6.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge, %for.inc.i.5.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge, %for.inc.i.4.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge, %for.inc.i.3.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge, %for.inc.i.2.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge, %for.inc.i.1.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge, %for.inc.i.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge, %if.then2.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge
  %i.0.lcssa.i.i.i.i = phi i32 [ 0, %if.then2.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge ], [ 1, %for.inc.i.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge ], [ 2, %for.inc.i.1.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge ], [ 3, %for.inc.i.2.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge ], [ 4, %for.inc.i.3.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge ], [ 5, %for.inc.i.4.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge ], [ 6, %for.inc.i.5.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge ], [ 7, %for.inc.i.6.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge ], [ 8, %for.inc.i.7.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge ], [ 9, %for.inc.i.8.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge ], [ 10, %for.inc.i.9.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge ], [ 11, %for.inc.i.10.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge ], [ 12, %for.inc.i.11.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge ], [ 13, %for.inc.i.12.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge ], [ 14, %for.inc.i.13.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge ], [ 15, %for.inc.i.14.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge ], [ 16, %for.inc.i.15.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge ], [ 17, %for.inc.i.16.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge ], [ 18, %for.inc.i.17.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge ], [ 19, %for.inc.i.18.i.i.i.xfs_iext_node_nr_entries.exit.i.i.i_crit_edge ], [ %spec.select.i.i.i, %for.inc.i.19.i.i.i ]
  %add.i.i.i = add nsw i32 %i.0.lcssa.i.i.i.i, %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %add.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %add.i.i.i, 22
  br i1 %cmp3.i.i.i, label %for.cond.preheader.i.i.i, label %if.end18.i.i.i

for.cond.preheader.i.i.i:                         ; preds = %xfs_iext_node_nr_entries.exit.i.i.i
  br i1 %cmp42.i.i, label %for.cond.preheader.i.i.i.for.body.i169.i.i_crit_edge, label %for.cond.preheader.i.i.i.xfs_iext_rebalance_node.exit.i.i_crit_edge

for.cond.preheader.i.i.i.xfs_iext_rebalance_node.exit.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_rebalance_node.exit.i.i

for.cond.preheader.i.i.i.for.body.i169.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  br label %for.body.i169.i.i

for.body.i169.i.i:                                ; preds = %for.body.i169.i.i.for.body.i169.i.i_crit_edge, %for.cond.preheader.i.i.i.for.body.i169.i.i_crit_edge
  %i.0114.i.i.i = phi i32 [ %inc.i167.i.i, %for.body.i169.i.i.for.body.i169.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i.for.body.i169.i.i_crit_edge ]
  %arrayidx6.i.i.i = getelementptr [21 x i64], ptr %node.0.i.i, i32 0, i32 %i.0114.i.i.i
  %238 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load8_noabort(i32 %238)
  %239 = load i64, ptr %arrayidx6.i.i.i, align 8
  %add8.i.i.i = add nuw i32 %i.0114.i.i.i, %i.0.lcssa.i.i.i.i
  %arrayidx9.i.i.i = getelementptr [21 x i64], ptr %195, i32 0, i32 %add8.i.i.i
  %240 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_store8_noabort(i32 %240)
  store i64 %239, ptr %arrayidx9.i.i.i, align 8
  %arrayidx11.i166.i.i = getelementptr %struct.xfs_iext_node, ptr %node.0.i.i, i32 0, i32 1, i32 %i.0114.i.i.i
  %241 = ptrtoint ptr %arrayidx11.i166.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %arrayidx11.i166.i.i, align 4
  %arrayidx14.i.i.i = getelementptr %struct.xfs_iext_node, ptr %195, i32 0, i32 1, i32 %add8.i.i.i
  %243 = ptrtoint ptr %arrayidx14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr %242, ptr %arrayidx14.i.i.i, align 4
  %inc.i167.i.i = add nuw nsw i32 %i.0114.i.i.i, 1
  %exitcond.not.i168.i.i = icmp eq i32 %inc.i167.i.i, %sub.i.i
  br i1 %exitcond.not.i168.i.i, label %for.body.i169.i.i.xfs_iext_rebalance_node.exit.i.i_crit_edge, label %for.body.i169.i.i.for.body.i169.i.i_crit_edge

for.body.i169.i.i.for.body.i169.i.i_crit_edge:    ; preds = %for.body.i169.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i169.i.i

for.body.i169.i.i.xfs_iext_rebalance_node.exit.i.i_crit_edge: ; preds = %for.body.i169.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_rebalance_node.exit.i.i

if.end18.i.i.i:                                   ; preds = %xfs_iext_node_nr_entries.exit.i.i.i
  %add19.i.i.i = add nuw i32 %call55.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %call55.i.i)
  %cmp5.i.i.i.i = icmp ult i32 %call55.i.i, 21
  br i1 %cmp5.i.i.i.i, label %if.end18.i.i.i.for.body.i95.preheader.i.i.i_crit_edge, label %if.end18.i.i.i.xfs_iext_node_nr_entries.exit100.i.i.i_crit_edge

if.end18.i.i.i.xfs_iext_node_nr_entries.exit100.i.i.i_crit_edge: ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit100.i.i.i

if.end18.i.i.i.for.body.i95.preheader.i.i.i_crit_edge: ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i95.preheader.i.i.i

for.body.i95.preheader.i.i.i:                     ; preds = %if.end18.i.i.i.for.body.i95.preheader.i.i.i_crit_edge, %if.end18.thread.i.i.i
  %add19122.i.i.i = phi i32 [ %add19119.i.i.i, %if.end18.thread.i.i.i ], [ %add19.i.i.i, %if.end18.i.i.i.for.body.i95.preheader.i.i.i_crit_edge ]
  br label %for.body.i95.i.i.i

for.body.i95.i.i.i:                               ; preds = %for.inc.i98.i.i.i.for.body.i95.i.i.i_crit_edge, %for.body.i95.preheader.i.i.i
  %i.06.i92.i.i.i = phi i32 [ %inc.i96.i.i.i, %for.inc.i98.i.i.i.for.body.i95.i.i.i_crit_edge ], [ %call55.i.i, %for.body.i95.preheader.i.i.i ]
  %arrayidx.i93.i.i.i = getelementptr [21 x i64], ptr %call54.i.i, i32 0, i32 %i.06.i92.i.i.i
  %244 = ptrtoint ptr %arrayidx.i93.i.i.i to i32
  call void @__asan_load8_noabort(i32 %244)
  %245 = load i64, ptr %arrayidx.i93.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %245)
  %cmp1.i94.i.i.i = icmp eq i64 %245, -9223372036854775808
  br i1 %cmp1.i94.i.i.i, label %for.body.i95.i.i.i.xfs_iext_node_nr_entries.exit100.i.i.i_crit_edge, label %for.inc.i98.i.i.i

for.body.i95.i.i.i.xfs_iext_node_nr_entries.exit100.i.i.i_crit_edge: ; preds = %for.body.i95.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit100.i.i.i

for.inc.i98.i.i.i:                                ; preds = %for.body.i95.i.i.i
  %inc.i96.i.i.i = add nsw i32 %i.06.i92.i.i.i, 1
  %exitcond.not.i97.i.i.i = icmp eq i32 %inc.i96.i.i.i, 21
  br i1 %exitcond.not.i97.i.i.i, label %for.inc.i98.i.i.i.xfs_iext_node_nr_entries.exit100.i.i.i_crit_edge, label %for.inc.i98.i.i.i.for.body.i95.i.i.i_crit_edge

for.inc.i98.i.i.i.for.body.i95.i.i.i_crit_edge:   ; preds = %for.inc.i98.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i95.i.i.i

for.inc.i98.i.i.i.xfs_iext_node_nr_entries.exit100.i.i.i_crit_edge: ; preds = %for.inc.i98.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit100.i.i.i

xfs_iext_node_nr_entries.exit100.i.i.i:           ; preds = %for.inc.i98.i.i.i.xfs_iext_node_nr_entries.exit100.i.i.i_crit_edge, %for.body.i95.i.i.i.xfs_iext_node_nr_entries.exit100.i.i.i_crit_edge, %if.end18.i.i.i.xfs_iext_node_nr_entries.exit100.i.i.i_crit_edge
  %add19121.i.i.i = phi i32 [ %add19.i.i.i, %if.end18.i.i.i.xfs_iext_node_nr_entries.exit100.i.i.i_crit_edge ], [ %add19122.i.i.i, %for.body.i95.i.i.i.xfs_iext_node_nr_entries.exit100.i.i.i_crit_edge ], [ %add19122.i.i.i, %for.inc.i98.i.i.i.xfs_iext_node_nr_entries.exit100.i.i.i_crit_edge ]
  %i.0.lcssa.i99.i.i.i = phi i32 [ %call55.i.i, %if.end18.i.i.i.xfs_iext_node_nr_entries.exit100.i.i.i_crit_edge ], [ 21, %for.inc.i98.i.i.i.xfs_iext_node_nr_entries.exit100.i.i.i_crit_edge ], [ %i.06.i92.i.i.i, %for.body.i95.i.i.i.xfs_iext_node_nr_entries.exit100.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add19121.i.i.i, i32 %i.0.lcssa.i99.i.i.i)
  %cmp21.i.i.i = icmp slt i32 %add19121.i.i.i, %i.0.lcssa.i99.i.i.i
  br i1 %cmp21.i.i.i, label %if.then22.i.i.i, label %xfs_iext_node_nr_entries.exit100.i.i.i.cleanup_crit_edge

xfs_iext_node_nr_entries.exit100.i.i.i.cleanup_crit_edge: ; preds = %xfs_iext_node_nr_entries.exit100.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then22.i.i.i:                                  ; preds = %xfs_iext_node_nr_entries.exit100.i.i.i
  %arrayidx25.i.i.i = getelementptr %struct.xfs_iext_node, ptr %call54.i.i, i32 0, i32 1, i32 %add19121.i.i.i
  %246 = ptrtoint ptr %arrayidx25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %arrayidx25.i.i.i, align 4
  %248 = ptrtoint ptr %247 to i32
  call void @__asan_load8_noabort(i32 %248)
  %249 = load i64, ptr %247, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %249)
  %cmp1.i103.i.i.i = icmp eq i64 %249, -9223372036854775808
  br i1 %cmp1.i103.i.i.i, label %xfs_iext_node_nr_entries.exit109.thread.i.i.i, label %for.inc.i107.i.i.i

for.inc.i107.i.i.i:                               ; preds = %if.then22.i.i.i
  %arrayidx.i102.1.i.i.i = getelementptr [21 x i64], ptr %247, i32 0, i32 1
  %250 = ptrtoint ptr %arrayidx.i102.1.i.i.i to i32
  call void @__asan_load8_noabort(i32 %250)
  %251 = load i64, ptr %arrayidx.i102.1.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %251)
  %cmp1.i103.1.i.i.i = icmp eq i64 %251, -9223372036854775808
  br i1 %cmp1.i103.1.i.i.i, label %for.inc.i107.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge, label %for.inc.i107.1.i.i.i

for.inc.i107.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge: ; preds = %for.inc.i107.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit109.i.i.i

for.inc.i107.1.i.i.i:                             ; preds = %for.inc.i107.i.i.i
  %arrayidx.i102.2.i.i.i = getelementptr [21 x i64], ptr %247, i32 0, i32 2
  %252 = ptrtoint ptr %arrayidx.i102.2.i.i.i to i32
  call void @__asan_load8_noabort(i32 %252)
  %253 = load i64, ptr %arrayidx.i102.2.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %253)
  %cmp1.i103.2.i.i.i = icmp eq i64 %253, -9223372036854775808
  br i1 %cmp1.i103.2.i.i.i, label %for.inc.i107.1.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge, label %for.inc.i107.2.i.i.i

for.inc.i107.1.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge: ; preds = %for.inc.i107.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit109.i.i.i

for.inc.i107.2.i.i.i:                             ; preds = %for.inc.i107.1.i.i.i
  %arrayidx.i102.3.i.i.i = getelementptr [21 x i64], ptr %247, i32 0, i32 3
  %254 = ptrtoint ptr %arrayidx.i102.3.i.i.i to i32
  call void @__asan_load8_noabort(i32 %254)
  %255 = load i64, ptr %arrayidx.i102.3.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %255)
  %cmp1.i103.3.i.i.i = icmp eq i64 %255, -9223372036854775808
  br i1 %cmp1.i103.3.i.i.i, label %for.inc.i107.2.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge, label %for.inc.i107.3.i.i.i

for.inc.i107.2.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge: ; preds = %for.inc.i107.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit109.i.i.i

for.inc.i107.3.i.i.i:                             ; preds = %for.inc.i107.2.i.i.i
  %arrayidx.i102.4.i.i.i = getelementptr [21 x i64], ptr %247, i32 0, i32 4
  %256 = ptrtoint ptr %arrayidx.i102.4.i.i.i to i32
  call void @__asan_load8_noabort(i32 %256)
  %257 = load i64, ptr %arrayidx.i102.4.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %257)
  %cmp1.i103.4.i.i.i = icmp eq i64 %257, -9223372036854775808
  br i1 %cmp1.i103.4.i.i.i, label %for.inc.i107.3.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge, label %for.inc.i107.4.i.i.i

for.inc.i107.3.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge: ; preds = %for.inc.i107.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit109.i.i.i

for.inc.i107.4.i.i.i:                             ; preds = %for.inc.i107.3.i.i.i
  %arrayidx.i102.5.i.i.i = getelementptr [21 x i64], ptr %247, i32 0, i32 5
  %258 = ptrtoint ptr %arrayidx.i102.5.i.i.i to i32
  call void @__asan_load8_noabort(i32 %258)
  %259 = load i64, ptr %arrayidx.i102.5.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %259)
  %cmp1.i103.5.i.i.i = icmp eq i64 %259, -9223372036854775808
  br i1 %cmp1.i103.5.i.i.i, label %for.inc.i107.4.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge, label %for.inc.i107.5.i.i.i

for.inc.i107.4.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge: ; preds = %for.inc.i107.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit109.i.i.i

for.inc.i107.5.i.i.i:                             ; preds = %for.inc.i107.4.i.i.i
  %arrayidx.i102.6.i.i.i = getelementptr [21 x i64], ptr %247, i32 0, i32 6
  %260 = ptrtoint ptr %arrayidx.i102.6.i.i.i to i32
  call void @__asan_load8_noabort(i32 %260)
  %261 = load i64, ptr %arrayidx.i102.6.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %261)
  %cmp1.i103.6.i.i.i = icmp eq i64 %261, -9223372036854775808
  br i1 %cmp1.i103.6.i.i.i, label %for.inc.i107.5.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge, label %for.inc.i107.6.i.i.i

for.inc.i107.5.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge: ; preds = %for.inc.i107.5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit109.i.i.i

for.inc.i107.6.i.i.i:                             ; preds = %for.inc.i107.5.i.i.i
  %arrayidx.i102.7.i.i.i = getelementptr [21 x i64], ptr %247, i32 0, i32 7
  %262 = ptrtoint ptr %arrayidx.i102.7.i.i.i to i32
  call void @__asan_load8_noabort(i32 %262)
  %263 = load i64, ptr %arrayidx.i102.7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %263)
  %cmp1.i103.7.i.i.i = icmp eq i64 %263, -9223372036854775808
  br i1 %cmp1.i103.7.i.i.i, label %for.inc.i107.6.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge, label %for.inc.i107.7.i.i.i

for.inc.i107.6.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge: ; preds = %for.inc.i107.6.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit109.i.i.i

for.inc.i107.7.i.i.i:                             ; preds = %for.inc.i107.6.i.i.i
  %arrayidx.i102.8.i.i.i = getelementptr [21 x i64], ptr %247, i32 0, i32 8
  %264 = ptrtoint ptr %arrayidx.i102.8.i.i.i to i32
  call void @__asan_load8_noabort(i32 %264)
  %265 = load i64, ptr %arrayidx.i102.8.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %265)
  %cmp1.i103.8.i.i.i = icmp eq i64 %265, -9223372036854775808
  br i1 %cmp1.i103.8.i.i.i, label %for.inc.i107.7.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge, label %for.inc.i107.8.i.i.i

for.inc.i107.7.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge: ; preds = %for.inc.i107.7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit109.i.i.i

for.inc.i107.8.i.i.i:                             ; preds = %for.inc.i107.7.i.i.i
  %arrayidx.i102.9.i.i.i = getelementptr [21 x i64], ptr %247, i32 0, i32 9
  %266 = ptrtoint ptr %arrayidx.i102.9.i.i.i to i32
  call void @__asan_load8_noabort(i32 %266)
  %267 = load i64, ptr %arrayidx.i102.9.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %267)
  %cmp1.i103.9.i.i.i = icmp eq i64 %267, -9223372036854775808
  br i1 %cmp1.i103.9.i.i.i, label %for.inc.i107.8.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge, label %for.inc.i107.9.i.i.i

for.inc.i107.8.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge: ; preds = %for.inc.i107.8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit109.i.i.i

for.inc.i107.9.i.i.i:                             ; preds = %for.inc.i107.8.i.i.i
  %arrayidx.i102.10.i.i.i = getelementptr [21 x i64], ptr %247, i32 0, i32 10
  %268 = ptrtoint ptr %arrayidx.i102.10.i.i.i to i32
  call void @__asan_load8_noabort(i32 %268)
  %269 = load i64, ptr %arrayidx.i102.10.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %269)
  %cmp1.i103.10.i.i.i = icmp eq i64 %269, -9223372036854775808
  br i1 %cmp1.i103.10.i.i.i, label %for.inc.i107.9.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge, label %for.inc.i107.10.i.i.i

for.inc.i107.9.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge: ; preds = %for.inc.i107.9.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit109.i.i.i

for.inc.i107.10.i.i.i:                            ; preds = %for.inc.i107.9.i.i.i
  %arrayidx.i102.11.i.i.i = getelementptr [21 x i64], ptr %247, i32 0, i32 11
  %270 = ptrtoint ptr %arrayidx.i102.11.i.i.i to i32
  call void @__asan_load8_noabort(i32 %270)
  %271 = load i64, ptr %arrayidx.i102.11.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %271)
  %cmp1.i103.11.i.i.i = icmp eq i64 %271, -9223372036854775808
  br i1 %cmp1.i103.11.i.i.i, label %for.inc.i107.10.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge, label %for.inc.i107.11.i.i.i

for.inc.i107.10.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge: ; preds = %for.inc.i107.10.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit109.i.i.i

for.inc.i107.11.i.i.i:                            ; preds = %for.inc.i107.10.i.i.i
  %arrayidx.i102.12.i.i.i = getelementptr [21 x i64], ptr %247, i32 0, i32 12
  %272 = ptrtoint ptr %arrayidx.i102.12.i.i.i to i32
  call void @__asan_load8_noabort(i32 %272)
  %273 = load i64, ptr %arrayidx.i102.12.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %273)
  %cmp1.i103.12.i.i.i = icmp eq i64 %273, -9223372036854775808
  br i1 %cmp1.i103.12.i.i.i, label %for.inc.i107.11.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge, label %for.inc.i107.12.i.i.i

for.inc.i107.11.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge: ; preds = %for.inc.i107.11.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit109.i.i.i

for.inc.i107.12.i.i.i:                            ; preds = %for.inc.i107.11.i.i.i
  %arrayidx.i102.13.i.i.i = getelementptr [21 x i64], ptr %247, i32 0, i32 13
  %274 = ptrtoint ptr %arrayidx.i102.13.i.i.i to i32
  call void @__asan_load8_noabort(i32 %274)
  %275 = load i64, ptr %arrayidx.i102.13.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %275)
  %cmp1.i103.13.i.i.i = icmp eq i64 %275, -9223372036854775808
  br i1 %cmp1.i103.13.i.i.i, label %for.inc.i107.12.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge, label %for.inc.i107.13.i.i.i

for.inc.i107.12.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge: ; preds = %for.inc.i107.12.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit109.i.i.i

for.inc.i107.13.i.i.i:                            ; preds = %for.inc.i107.12.i.i.i
  %arrayidx.i102.14.i.i.i = getelementptr [21 x i64], ptr %247, i32 0, i32 14
  %276 = ptrtoint ptr %arrayidx.i102.14.i.i.i to i32
  call void @__asan_load8_noabort(i32 %276)
  %277 = load i64, ptr %arrayidx.i102.14.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %277)
  %cmp1.i103.14.i.i.i = icmp eq i64 %277, -9223372036854775808
  br i1 %cmp1.i103.14.i.i.i, label %for.inc.i107.13.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge, label %for.inc.i107.14.i.i.i

for.inc.i107.13.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge: ; preds = %for.inc.i107.13.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit109.i.i.i

for.inc.i107.14.i.i.i:                            ; preds = %for.inc.i107.13.i.i.i
  %arrayidx.i102.15.i.i.i = getelementptr [21 x i64], ptr %247, i32 0, i32 15
  %278 = ptrtoint ptr %arrayidx.i102.15.i.i.i to i32
  call void @__asan_load8_noabort(i32 %278)
  %279 = load i64, ptr %arrayidx.i102.15.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %279)
  %cmp1.i103.15.i.i.i = icmp eq i64 %279, -9223372036854775808
  br i1 %cmp1.i103.15.i.i.i, label %for.inc.i107.14.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge, label %for.inc.i107.15.i.i.i

for.inc.i107.14.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge: ; preds = %for.inc.i107.14.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit109.i.i.i

for.inc.i107.15.i.i.i:                            ; preds = %for.inc.i107.14.i.i.i
  %arrayidx.i102.16.i.i.i = getelementptr [21 x i64], ptr %247, i32 0, i32 16
  %280 = ptrtoint ptr %arrayidx.i102.16.i.i.i to i32
  call void @__asan_load8_noabort(i32 %280)
  %281 = load i64, ptr %arrayidx.i102.16.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %281)
  %cmp1.i103.16.i.i.i = icmp eq i64 %281, -9223372036854775808
  br i1 %cmp1.i103.16.i.i.i, label %for.inc.i107.15.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge, label %for.inc.i107.16.i.i.i

for.inc.i107.15.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge: ; preds = %for.inc.i107.15.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit109.i.i.i

for.inc.i107.16.i.i.i:                            ; preds = %for.inc.i107.15.i.i.i
  %arrayidx.i102.17.i.i.i = getelementptr [21 x i64], ptr %247, i32 0, i32 17
  %282 = ptrtoint ptr %arrayidx.i102.17.i.i.i to i32
  call void @__asan_load8_noabort(i32 %282)
  %283 = load i64, ptr %arrayidx.i102.17.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %283)
  %cmp1.i103.17.i.i.i = icmp eq i64 %283, -9223372036854775808
  br i1 %cmp1.i103.17.i.i.i, label %for.inc.i107.16.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge, label %for.inc.i107.17.i.i.i

for.inc.i107.16.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge: ; preds = %for.inc.i107.16.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit109.i.i.i

for.inc.i107.17.i.i.i:                            ; preds = %for.inc.i107.16.i.i.i
  %arrayidx.i102.18.i.i.i = getelementptr [21 x i64], ptr %247, i32 0, i32 18
  %284 = ptrtoint ptr %arrayidx.i102.18.i.i.i to i32
  call void @__asan_load8_noabort(i32 %284)
  %285 = load i64, ptr %arrayidx.i102.18.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %285)
  %cmp1.i103.18.i.i.i = icmp eq i64 %285, -9223372036854775808
  br i1 %cmp1.i103.18.i.i.i, label %for.inc.i107.17.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge, label %for.inc.i107.18.i.i.i

for.inc.i107.17.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge: ; preds = %for.inc.i107.17.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit109.i.i.i

for.inc.i107.18.i.i.i:                            ; preds = %for.inc.i107.17.i.i.i
  %arrayidx.i102.19.i.i.i = getelementptr [21 x i64], ptr %247, i32 0, i32 19
  %286 = ptrtoint ptr %arrayidx.i102.19.i.i.i to i32
  call void @__asan_load8_noabort(i32 %286)
  %287 = load i64, ptr %arrayidx.i102.19.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %287)
  %cmp1.i103.19.i.i.i = icmp eq i64 %287, -9223372036854775808
  br i1 %cmp1.i103.19.i.i.i, label %for.inc.i107.18.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge, label %for.inc.i107.19.i.i.i

for.inc.i107.18.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge: ; preds = %for.inc.i107.18.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_node_nr_entries.exit109.i.i.i

for.inc.i107.19.i.i.i:                            ; preds = %for.inc.i107.18.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i102.20.i.i.i = getelementptr [21 x i64], ptr %247, i32 0, i32 20
  %288 = ptrtoint ptr %arrayidx.i102.20.i.i.i to i32
  call void @__asan_load8_noabort(i32 %288)
  %289 = load i64, ptr %arrayidx.i102.20.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %289)
  %cmp1.i103.20.i.i.i = icmp eq i64 %289, -9223372036854775808
  %spec.select128.i.i.i = select i1 %cmp1.i103.20.i.i.i, i32 20, i32 21
  br label %xfs_iext_node_nr_entries.exit109.i.i.i

xfs_iext_node_nr_entries.exit109.i.i.i:           ; preds = %for.inc.i107.19.i.i.i, %for.inc.i107.18.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge, %for.inc.i107.17.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge, %for.inc.i107.16.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge, %for.inc.i107.15.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge, %for.inc.i107.14.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge, %for.inc.i107.13.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge, %for.inc.i107.12.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge, %for.inc.i107.11.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge, %for.inc.i107.10.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge, %for.inc.i107.9.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge, %for.inc.i107.8.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge, %for.inc.i107.7.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge, %for.inc.i107.6.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge, %for.inc.i107.5.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge, %for.inc.i107.4.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge, %for.inc.i107.3.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge, %for.inc.i107.2.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge, %for.inc.i107.1.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge, %for.inc.i107.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge
  %i.0.lcssa.i108.i.i.i = phi i32 [ 1, %for.inc.i107.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge ], [ 2, %for.inc.i107.1.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge ], [ 3, %for.inc.i107.2.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge ], [ 4, %for.inc.i107.3.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge ], [ 5, %for.inc.i107.4.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge ], [ 6, %for.inc.i107.5.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge ], [ 7, %for.inc.i107.6.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge ], [ 8, %for.inc.i107.7.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge ], [ 9, %for.inc.i107.8.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge ], [ 10, %for.inc.i107.9.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge ], [ 11, %for.inc.i107.10.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge ], [ 12, %for.inc.i107.11.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge ], [ 13, %for.inc.i107.12.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge ], [ 14, %for.inc.i107.13.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge ], [ 15, %for.inc.i107.14.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge ], [ 16, %for.inc.i107.15.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge ], [ 17, %for.inc.i107.16.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge ], [ 18, %for.inc.i107.17.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge ], [ 19, %for.inc.i107.18.i.i.i.xfs_iext_node_nr_entries.exit109.i.i.i_crit_edge ], [ %spec.select128.i.i.i, %for.inc.i107.19.i.i.i ]
  %add28.i.i.i = add i32 %i.0.lcssa.i108.i.i.i, %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %add28.i.i.i)
  %cmp29.i.i.i = icmp slt i32 %add28.i.i.i, 22
  br i1 %cmp29.i.i.i, label %xfs_iext_node_nr_entries.exit109.i.i.i.for.body33.i.i.i_crit_edge, label %xfs_iext_node_nr_entries.exit109.i.i.i.cleanup_crit_edge

xfs_iext_node_nr_entries.exit109.i.i.i.cleanup_crit_edge: ; preds = %xfs_iext_node_nr_entries.exit109.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

xfs_iext_node_nr_entries.exit109.i.i.i.for.body33.i.i.i_crit_edge: ; preds = %xfs_iext_node_nr_entries.exit109.i.i.i
  br label %for.body33.i.i.i

xfs_iext_node_nr_entries.exit109.thread.i.i.i:    ; preds = %if.then22.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %sub.i.i)
  %cmp29125.i.i.i = icmp slt i32 %sub.i.i, 22
  br i1 %cmp29125.i.i.i, label %xfs_iext_node_nr_entries.exit109.thread.i.i.i.return.sink.split.i.i.i_crit_edge, label %xfs_iext_node_nr_entries.exit109.thread.i.i.i.cleanup_crit_edge

xfs_iext_node_nr_entries.exit109.thread.i.i.i.cleanup_crit_edge: ; preds = %xfs_iext_node_nr_entries.exit109.thread.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

xfs_iext_node_nr_entries.exit109.thread.i.i.i.return.sink.split.i.i.i_crit_edge: ; preds = %xfs_iext_node_nr_entries.exit109.thread.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return.sink.split.i.i.i

for.body33.i.i.i:                                 ; preds = %for.body33.i.i.i.for.body33.i.i.i_crit_edge, %xfs_iext_node_nr_entries.exit109.i.i.i.for.body33.i.i.i_crit_edge
  %i27.0116.i.i.i = phi i32 [ %inc45.i.i.i, %for.body33.i.i.i.for.body33.i.i.i_crit_edge ], [ 0, %xfs_iext_node_nr_entries.exit109.i.i.i.for.body33.i.i.i_crit_edge ]
  %arrayidx35.i.i.i = getelementptr [21 x i64], ptr %247, i32 0, i32 %i27.0116.i.i.i
  %290 = ptrtoint ptr %arrayidx35.i.i.i to i32
  call void @__asan_load8_noabort(i32 %290)
  %291 = load i64, ptr %arrayidx35.i.i.i, align 8
  %add37.i.i.i = add i32 %i27.0116.i.i.i, %sub.i.i
  %arrayidx38.i.i.i = getelementptr [21 x i64], ptr %node.0.i.i, i32 0, i32 %add37.i.i.i
  %292 = ptrtoint ptr %arrayidx38.i.i.i to i32
  call void @__asan_store8_noabort(i32 %292)
  store i64 %291, ptr %arrayidx38.i.i.i, align 8
  %arrayidx40.i.i.i = getelementptr %struct.xfs_iext_node, ptr %247, i32 0, i32 1, i32 %i27.0116.i.i.i
  %293 = ptrtoint ptr %arrayidx40.i.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %arrayidx40.i.i.i, align 4
  %arrayidx43.i.i.i = getelementptr %struct.xfs_iext_node, ptr %node.0.i.i, i32 0, i32 1, i32 %add37.i.i.i
  %295 = ptrtoint ptr %arrayidx43.i.i.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store ptr %294, ptr %arrayidx43.i.i.i, align 4
  %inc45.i.i.i = add nuw nsw i32 %i27.0116.i.i.i, 1
  %exitcond118.not.i.i.i = icmp eq i32 %inc45.i.i.i, %i.0.lcssa.i108.i.i.i
  br i1 %exitcond118.not.i.i.i, label %for.body33.i.i.i.return.sink.split.i.i.i_crit_edge, label %for.body33.i.i.i.for.body33.i.i.i_crit_edge

for.body33.i.i.i.for.body33.i.i.i_crit_edge:      ; preds = %for.body33.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body33.i.i.i

for.body33.i.i.i.return.sink.split.i.i.i_crit_edge: ; preds = %for.body33.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return.sink.split.i.i.i

return.sink.split.i.i.i:                          ; preds = %for.body33.i.i.i.return.sink.split.i.i.i_crit_edge, %xfs_iext_node_nr_entries.exit109.thread.i.i.i.return.sink.split.i.i.i_crit_edge
  %inc47.i.i.i = add i32 %call55.i.i, 1
  br label %xfs_iext_rebalance_node.exit.i.i

xfs_iext_rebalance_node.exit.i.i:                 ; preds = %return.sink.split.i.i.i, %for.body.i169.i.i.xfs_iext_rebalance_node.exit.i.i_crit_edge, %for.cond.preheader.i.i.i.xfs_iext_rebalance_node.exit.i.i_crit_edge, %cond.end77.i.i.xfs_iext_rebalance_node.exit.i.i_crit_edge
  %pos.1.i.i = phi i32 [ %call55.i.i, %cond.end77.i.i.xfs_iext_rebalance_node.exit.i.i_crit_edge ], [ %call55.i.i, %for.cond.preheader.i.i.i.xfs_iext_rebalance_node.exit.i.i_crit_edge ], [ %inc47.i.i.i, %return.sink.split.i.i.i ], [ %call55.i.i, %for.body.i169.i.i.xfs_iext_rebalance_node.exit.i.i_crit_edge ]
  %retval.3.i.i.i = phi ptr [ %node.0.i.i, %cond.end77.i.i.xfs_iext_rebalance_node.exit.i.i_crit_edge ], [ %node.0.i.i, %for.cond.preheader.i.i.i.xfs_iext_rebalance_node.exit.i.i_crit_edge ], [ %247, %return.sink.split.i.i.i ], [ %node.0.i.i, %for.body.i169.i.i.xfs_iext_rebalance_node.exit.i.i_crit_edge ]
  %tobool79.not.i.i = icmp eq ptr %retval.3.i.i.i, null
  br i1 %tobool79.not.i.i, label %xfs_iext_rebalance_node.exit.i.i.cleanup_crit_edge, label %xfs_iext_rebalance_node.exit.i.i.again.i.i_crit_edge

xfs_iext_rebalance_node.exit.i.i.again.i.i_crit_edge: ; preds = %xfs_iext_rebalance_node.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %again.i.i

xfs_iext_rebalance_node.exit.i.i.cleanup_crit_edge: ; preds = %xfs_iext_rebalance_node.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end49.i.i
  %ptrs.le.i.i = getelementptr inbounds %struct.xfs_iext_node, ptr %node.0.i.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp82.i.i = icmp eq i32 %sub.i.i, 1
  br i1 %cmp82.i.i, label %if.then83.i.i, label %if.else.i.i.cleanup_crit_edge

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then83.i.i:                                    ; preds = %if.else.i.i
  %296 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %if_u1, align 4
  %cmp84.i.i = icmp eq ptr %node.0.i.i, %297
  br i1 %cmp84.i.i, label %if.then83.i.i.cond.end93.i.i_crit_edge, label %cond.false92.i.i, !prof !77

if.then83.i.i.cond.end93.i.i_crit_edge:           ; preds = %if.then83.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end93.i.i

cond.false92.i.i:                                 ; preds = %if.then83.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1, i32 noundef 780) #11
  br label %cond.end93.i.i

cond.end93.i.i:                                   ; preds = %cond.false92.i.i, %if.then83.i.i.cond.end93.i.i_crit_edge
  %298 = ptrtoint ptr %ptrs.le.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %ptrs.le.i.i, align 8
  %300 = ptrtoint ptr %if_u1 to i32
  call void @__asan_store4_noabort(i32 %300)
  store ptr %299, ptr %if_u1, align 4
  %301 = ptrtoint ptr %if_height to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %if_height, align 8
  %dec.i.i = add i32 %302, -1
  store i32 %dec.i.i, ptr %if_height, align 8
  tail call void @kvfree(ptr noundef %node.0.i.i) #11
  br label %cleanup

if.else58:                                        ; preds = %if.end54
  br i1 %cmp.i126, label %if.then60, label %if.else58.cleanup_crit_edge

if.else58.cleanup_crit_edge:                      ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then60:                                        ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #13
  %dec.i142 = add i32 %58, -1
  %303 = ptrtoint ptr %if_height to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 %dec.i142, ptr %if_height, align 8
  %304 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %if_u1, align 4
  tail call void @kvfree(ptr noundef %305) #11
  %306 = ptrtoint ptr %if_u1 to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr null, ptr %if_u1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %if.else58.cleanup_crit_edge, %cond.end93.i.i, %if.else.i.i.cleanup_crit_edge, %xfs_iext_rebalance_node.exit.i.i.cleanup_crit_edge, %xfs_iext_node_nr_entries.exit109.thread.i.i.i.cleanup_crit_edge, %xfs_iext_node_nr_entries.exit109.i.i.i.cleanup_crit_edge, %xfs_iext_node_nr_entries.exit100.i.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %xfs_iext_leaf_nr_entries.exit132.i.cleanup_crit_edge, %if.end19.i.cleanup_crit_edge, %if.end51.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_iext_remove(ptr noundef %ip, ptr noundef %cur, i32 noundef %state, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iext_remove, i32 0, i32 1), ptr blockaddress(@trace_xfs_iext_remove, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !78

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !66) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !77

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !66) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !85
  %call42 = tail call i32 @__traceiter_xfs_iext_remove(ptr noundef null, ptr noundef %ip, ptr noundef %cur, i32 noundef %state, i32 noundef %caller_ip) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !86
  %13 = tail call i32 @llvm.read_register.i32(metadata !66) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !66) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !77

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !66) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !81
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iext_remove, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iext_remove, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_iext_remove.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_iext_remove.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 403, ptr noundef nonnull @.str.17) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !82
  %31 = tail call i32 @llvm.read_register.i32(metadata !66) #11
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

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @xfs_iext_lookup_extent(ptr nocapture noundef readonly %ip, ptr nocapture noundef readonly %ifp, i64 noundef %offset, ptr nocapture noundef %cur, ptr nocapture noundef writeonly %gotp) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %0 = load ptr, ptr @xfsstats, align 4
  %1 = ptrtoint ptr %0 to i32
  %2 = tail call i32 @llvm.read_register.i32(metadata !66) #11
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, %1
  %8 = inttoptr i32 %add to ptr
  %xs_look_exlist = getelementptr inbounds %struct.__xfsstats, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %xs_look_exlist to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %xs_look_exlist, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %xs_look_exlist, align 4
  %11 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ip, align 8
  %m_stats = getelementptr inbounds %struct.xfs_mount, ptr %12, i32 0, i32 92
  %13 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %m_stats, align 4
  %15 = ptrtoint ptr %14 to i32
  %16 = load i32, ptr %cpu, align 4
  %arrayidx11 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx11, align 4
  %add12 = add i32 %18, %15
  %19 = inttoptr i32 %add12 to ptr
  %xs_look_exlist13 = getelementptr inbounds %struct.__xfsstats, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %xs_look_exlist13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %xs_look_exlist13, align 4
  %inc14 = add i32 %21, 1
  store i32 %inc14, ptr %xs_look_exlist13, align 4
  %call16 = tail call fastcc ptr @xfs_iext_find_level(ptr noundef %ifp, i64 noundef %offset, i32 noundef 1)
  %22 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call16, ptr %cur, align 4
  %tobool.not = icmp eq ptr %call16, null
  %pos = getelementptr inbounds %struct.xfs_iext_cursor, ptr %cur, i32 0, i32 1
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %pos, align 4
  br label %return

if.end:                                           ; preds = %entry
  %if_height.i = getelementptr inbounds %struct.xfs_ifork, ptr %ifp, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %xfs_iext_rec_cmp.exit.for.cond_crit_edge, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ %inc30, %xfs_iext_rec_cmp.exit.for.cond_crit_edge ]
  %24 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %storemerge, ptr %pos, align 4
  %25 = ptrtoint ptr %if_height.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %if_height.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp.i = icmp eq i32 %26, 1
  br i1 %cmp.i, label %if.then.i, label %for.cond.xfs_iext_max_recs.exit_crit_edge

for.cond.xfs_iext_max_recs.exit_crit_edge:        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_max_recs.exit

if.then.i:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %ifp to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %ifp, align 8
  %div.i.i = sdiv i64 %28, 16
  %conv.i.i = trunc i64 %div.i.i to i32
  br label %xfs_iext_max_recs.exit

xfs_iext_max_recs.exit:                           ; preds = %if.then.i, %for.cond.xfs_iext_max_recs.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i.i, %if.then.i ], [ 15, %for.cond.xfs_iext_max_recs.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge, i32 %retval.0.i)
  %cmp = icmp slt i32 %storemerge, %retval.0.i
  br i1 %cmp, label %for.body, label %xfs_iext_max_recs.exit.for.end_crit_edge

xfs_iext_max_recs.exit.for.end_crit_edge:         ; preds = %xfs_iext_max_recs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %xfs_iext_max_recs.exit
  %hi.i = getelementptr [15 x %struct.xfs_iext_rec], ptr %call16, i32 0, i32 %storemerge, i32 1
  %29 = ptrtoint ptr %hi.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %hi.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %30)
  %cmp.i61 = icmp eq i64 %30, 0
  br i1 %cmp.i61, label %for.body.for.end_crit_edge, label %if.end24

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end24:                                         ; preds = %for.body
  %arrayidx.i = getelementptr [15 x %struct.xfs_iext_rec], ptr %call16, i32 0, i32 %storemerge
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx.i, align 8
  %and.i62 = and i64 %32, 18014398509481983
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i62, i64 %offset)
  %cmp.i63 = icmp ugt i64 %and.i62, %offset
  br i1 %cmp.i63, label %if.end24.found_crit_edge, label %xfs_iext_rec_cmp.exit

if.end24.found_crit_edge:                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %found

xfs_iext_rec_cmp.exit:                            ; preds = %if.end24
  %and2.i = and i64 %30, 2097151
  %add.i = add nuw nsw i64 %and.i62, %and2.i
  %cmp5.not.i.not = icmp ugt i64 %add.i, %offset
  %inc30 = add nuw nsw i32 %storemerge, 1
  br i1 %cmp5.not.i.not, label %xfs_iext_rec_cmp.exit.found_crit_edge, label %xfs_iext_rec_cmp.exit.for.cond_crit_edge

xfs_iext_rec_cmp.exit.for.cond_crit_edge:         ; preds = %xfs_iext_rec_cmp.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

xfs_iext_rec_cmp.exit.found_crit_edge:            ; preds = %xfs_iext_rec_cmp.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %found

for.end:                                          ; preds = %for.body.for.end_crit_edge, %xfs_iext_max_recs.exit.for.end_crit_edge
  br i1 %cmp.i, label %for.end.return_crit_edge, label %lor.lhs.false

for.end.return_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false:                                    ; preds = %for.end
  %next = getelementptr inbounds %struct.xfs_iext_leaf, ptr %call16, i32 0, i32 2
  %33 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %next, align 4
  %tobool33.not = icmp eq ptr %34, null
  br i1 %tobool33.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false.i

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false.i:                                  ; preds = %lor.lhs.false
  %35 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %cur, align 4
  %36 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %pos, align 4
  %37 = ptrtoint ptr %if_height.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %if_height.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp.i.i = icmp eq i32 %38, 1
  br i1 %cmp.i.i, label %xfs_iext_max_recs.exit.i, label %lor.lhs.false.i.xfs_iext_valid.exit_crit_edge

lor.lhs.false.i.xfs_iext_valid.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_valid.exit

xfs_iext_max_recs.exit.i:                         ; preds = %lor.lhs.false.i
  %39 = ptrtoint ptr %ifp to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %ifp, align 8
  %div.i.i.i = sdiv i64 %40, 16
  %conv.i.i.i = trunc i64 %div.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i)
  %cmp2.not.i = icmp sgt i32 %conv.i.i.i, 0
  br i1 %cmp2.not.i, label %xfs_iext_max_recs.exit.i.xfs_iext_valid.exit_crit_edge, label %xfs_iext_max_recs.exit.i.return_crit_edge

xfs_iext_max_recs.exit.i.return_crit_edge:        ; preds = %xfs_iext_max_recs.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

xfs_iext_max_recs.exit.i.xfs_iext_valid.exit_crit_edge: ; preds = %xfs_iext_max_recs.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_valid.exit

xfs_iext_valid.exit:                              ; preds = %xfs_iext_max_recs.exit.i.xfs_iext_valid.exit_crit_edge, %lor.lhs.false.i.xfs_iext_valid.exit_crit_edge
  %hi.i.i = getelementptr [15 x %struct.xfs_iext_rec], ptr %34, i32 0, i32 0, i32 1
  %41 = ptrtoint ptr %hi.i.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %hi.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %42)
  %cmp.i12.i.not = icmp eq i64 %42, 0
  br i1 %cmp.i12.i.not, label %xfs_iext_valid.exit.return_crit_edge, label %xfs_iext_valid.exit.found_crit_edge

xfs_iext_valid.exit.found_crit_edge:              ; preds = %xfs_iext_valid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %found

xfs_iext_valid.exit.return_crit_edge:             ; preds = %xfs_iext_valid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

found:                                            ; preds = %xfs_iext_valid.exit.found_crit_edge, %xfs_iext_rec_cmp.exit.found_crit_edge, %if.end24.found_crit_edge
  %43 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cur, align 4
  %45 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pos, align 4
  %arrayidx.i71 = getelementptr [15 x %struct.xfs_iext_rec], ptr %44, i32 0, i32 %46
  %47 = ptrtoint ptr %arrayidx.i71 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx.i71, align 8
  %and.i72 = and i64 %48, 18014398509481983
  %49 = ptrtoint ptr %gotp to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %and.i72, ptr %gotp, align 8
  %hi.i73 = getelementptr [15 x %struct.xfs_iext_rec], ptr %44, i32 0, i32 %46, i32 1
  %50 = ptrtoint ptr %hi.i73 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %hi.i73, align 8
  %and2.i74 = and i64 %51, 2097151
  %br_blockcount.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %gotp, i32 0, i32 2
  %52 = ptrtoint ptr %br_blockcount.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %and2.i74, ptr %br_blockcount.i, align 8
  %53 = load i64, ptr %arrayidx.i71, align 8
  %shr.i = lshr i64 %53, 54
  %br_startblock.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %gotp, i32 0, i32 1
  %54 = ptrtoint ptr %br_startblock.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %shr.i, ptr %br_startblock.i, align 8
  %55 = load i64, ptr %hi.i73, align 8
  %and6.i = lshr i64 %55, 12
  %shr7.i = and i64 %and6.i, 4503599627369472
  %or.i = or i64 %shr7.i, %shr.i
  store i64 %or.i, ptr %br_startblock.i, align 8
  %56 = load i64, ptr %hi.i73, align 8
  %57 = trunc i64 %56 to i32
  %58 = lshr i32 %57, 21
  %59 = and i32 %58, 1
  %60 = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %gotp, i32 0, i32 3
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %59, ptr %60, align 8
  br label %return

return:                                           ; preds = %found, %xfs_iext_valid.exit.return_crit_edge, %xfs_iext_max_recs.exit.i.return_crit_edge, %lor.lhs.false.return_crit_edge, %for.end.return_crit_edge, %if.then
  %retval.0 = phi i1 [ true, %found ], [ false, %if.then ], [ false, %lor.lhs.false.return_crit_edge ], [ false, %for.end.return_crit_edge ], [ false, %xfs_iext_valid.exit.return_crit_edge ], [ false, %xfs_iext_max_recs.exit.i.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xfs_iext_find_level(ptr nocapture noundef readonly %ifp, i64 noundef %offset, i32 noundef %level) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %if_height = getelementptr inbounds %struct.xfs_ifork, ptr %ifp, i32 0, i32 3
  %0 = ptrtoint ptr %if_height to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %if_height, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %if_u1 = getelementptr inbounds %struct.xfs_ifork, ptr %ifp, i32 0, i32 4
  %2 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %if_u1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %level)
  %cmp26 = icmp sgt i32 %1, %level
  br i1 %cmp26, label %if.end.for.cond2.preheader_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.for.cond2.preheader_crit_edge:             ; preds = %if.end
  br label %for.cond2.preheader

for.cond:                                         ; preds = %for.end
  %dec = add nsw i32 %height.029, -1
  %cmp = icmp sgt i32 %dec, %level
  br i1 %cmp, label %for.cond.for.cond2.preheader_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.for.cond2.preheader_crit_edge:           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond.for.cond2.preheader_crit_edge, %if.end.for.cond2.preheader_crit_edge
  %height.029 = phi i32 [ %dec, %for.cond.for.cond2.preheader_crit_edge ], [ %1, %if.end.for.cond2.preheader_crit_edge ]
  %node.027 = phi ptr [ %45, %for.cond.for.cond2.preheader_crit_edge ], [ %3, %if.end.for.cond2.preheader_crit_edge ]
  %arrayidx.i = getelementptr [21 x i64], ptr %node.027, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %offset)
  %cmp.i = icmp ugt i64 %5, %offset
  br i1 %cmp.i, label %for.cond2.preheader.for.end_crit_edge, label %for.inc

for.cond2.preheader.for.end_crit_edge:            ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc:                                          ; preds = %for.cond2.preheader
  %arrayidx.i.1 = getelementptr [21 x i64], ptr %node.027, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx.i.1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %offset)
  %cmp.i.1 = icmp ugt i64 %7, %offset
  br i1 %cmp.i.1, label %for.inc.for.end_crit_edge, label %for.inc.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.i.2 = getelementptr [21 x i64], ptr %node.027, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx.i.2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %offset)
  %cmp.i.2 = icmp ugt i64 %9, %offset
  br i1 %cmp.i.2, label %for.inc.1.for.end_crit_edge, label %for.inc.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.i.3 = getelementptr [21 x i64], ptr %node.027, i32 0, i32 4
  %10 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx.i.3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %offset)
  %cmp.i.3 = icmp ugt i64 %11, %offset
  br i1 %cmp.i.3, label %for.inc.2.for.end_crit_edge, label %for.inc.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.i.4 = getelementptr [21 x i64], ptr %node.027, i32 0, i32 5
  %12 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx.i.4, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %offset)
  %cmp.i.4 = icmp ugt i64 %13, %offset
  br i1 %cmp.i.4, label %for.inc.3.for.end_crit_edge, label %for.inc.4

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.i.5 = getelementptr [21 x i64], ptr %node.027, i32 0, i32 6
  %14 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx.i.5, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %offset)
  %cmp.i.5 = icmp ugt i64 %15, %offset
  br i1 %cmp.i.5, label %for.inc.4.for.end_crit_edge, label %for.inc.5

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.i.6 = getelementptr [21 x i64], ptr %node.027, i32 0, i32 7
  %16 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx.i.6, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %offset)
  %cmp.i.6 = icmp ugt i64 %17, %offset
  br i1 %cmp.i.6, label %for.inc.5.for.end_crit_edge, label %for.inc.6

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.i.7 = getelementptr [21 x i64], ptr %node.027, i32 0, i32 8
  %18 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx.i.7, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %offset)
  %cmp.i.7 = icmp ugt i64 %19, %offset
  br i1 %cmp.i.7, label %for.inc.6.for.end_crit_edge, label %for.inc.7

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.7:                                        ; preds = %for.inc.6
  %arrayidx.i.8 = getelementptr [21 x i64], ptr %node.027, i32 0, i32 9
  %20 = ptrtoint ptr %arrayidx.i.8 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx.i.8, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %offset)
  %cmp.i.8 = icmp ugt i64 %21, %offset
  br i1 %cmp.i.8, label %for.inc.7.for.end_crit_edge, label %for.inc.8

for.inc.7.for.end_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.8:                                        ; preds = %for.inc.7
  %arrayidx.i.9 = getelementptr [21 x i64], ptr %node.027, i32 0, i32 10
  %22 = ptrtoint ptr %arrayidx.i.9 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx.i.9, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %offset)
  %cmp.i.9 = icmp ugt i64 %23, %offset
  br i1 %cmp.i.9, label %for.inc.8.for.end_crit_edge, label %for.inc.9

for.inc.8.for.end_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.9:                                        ; preds = %for.inc.8
  %arrayidx.i.10 = getelementptr [21 x i64], ptr %node.027, i32 0, i32 11
  %24 = ptrtoint ptr %arrayidx.i.10 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx.i.10, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %offset)
  %cmp.i.10 = icmp ugt i64 %25, %offset
  br i1 %cmp.i.10, label %for.inc.9.for.end_crit_edge, label %for.inc.10

for.inc.9.for.end_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.10:                                       ; preds = %for.inc.9
  %arrayidx.i.11 = getelementptr [21 x i64], ptr %node.027, i32 0, i32 12
  %26 = ptrtoint ptr %arrayidx.i.11 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx.i.11, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %offset)
  %cmp.i.11 = icmp ugt i64 %27, %offset
  br i1 %cmp.i.11, label %for.inc.10.for.end_crit_edge, label %for.inc.11

for.inc.10.for.end_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.11:                                       ; preds = %for.inc.10
  %arrayidx.i.12 = getelementptr [21 x i64], ptr %node.027, i32 0, i32 13
  %28 = ptrtoint ptr %arrayidx.i.12 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx.i.12, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %offset)
  %cmp.i.12 = icmp ugt i64 %29, %offset
  br i1 %cmp.i.12, label %for.inc.11.for.end_crit_edge, label %for.inc.12

for.inc.11.for.end_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.12:                                       ; preds = %for.inc.11
  %arrayidx.i.13 = getelementptr [21 x i64], ptr %node.027, i32 0, i32 14
  %30 = ptrtoint ptr %arrayidx.i.13 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx.i.13, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %offset)
  %cmp.i.13 = icmp ugt i64 %31, %offset
  br i1 %cmp.i.13, label %for.inc.12.for.end_crit_edge, label %for.inc.13

for.inc.12.for.end_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.13:                                       ; preds = %for.inc.12
  %arrayidx.i.14 = getelementptr [21 x i64], ptr %node.027, i32 0, i32 15
  %32 = ptrtoint ptr %arrayidx.i.14 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx.i.14, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %offset)
  %cmp.i.14 = icmp ugt i64 %33, %offset
  br i1 %cmp.i.14, label %for.inc.13.for.end_crit_edge, label %for.inc.14

for.inc.13.for.end_crit_edge:                     ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.14:                                       ; preds = %for.inc.13
  %arrayidx.i.15 = getelementptr [21 x i64], ptr %node.027, i32 0, i32 16
  %34 = ptrtoint ptr %arrayidx.i.15 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx.i.15, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %offset)
  %cmp.i.15 = icmp ugt i64 %35, %offset
  br i1 %cmp.i.15, label %for.inc.14.for.end_crit_edge, label %for.inc.15

for.inc.14.for.end_crit_edge:                     ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.15:                                       ; preds = %for.inc.14
  %arrayidx.i.16 = getelementptr [21 x i64], ptr %node.027, i32 0, i32 17
  %36 = ptrtoint ptr %arrayidx.i.16 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx.i.16, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %offset)
  %cmp.i.16 = icmp ugt i64 %37, %offset
  br i1 %cmp.i.16, label %for.inc.15.for.end_crit_edge, label %for.inc.16

for.inc.15.for.end_crit_edge:                     ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.16:                                       ; preds = %for.inc.15
  %arrayidx.i.17 = getelementptr [21 x i64], ptr %node.027, i32 0, i32 18
  %38 = ptrtoint ptr %arrayidx.i.17 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx.i.17, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %39, i64 %offset)
  %cmp.i.17 = icmp ugt i64 %39, %offset
  br i1 %cmp.i.17, label %for.inc.16.for.end_crit_edge, label %for.inc.17

for.inc.16.for.end_crit_edge:                     ; preds = %for.inc.16
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.17:                                       ; preds = %for.inc.16
  %arrayidx.i.18 = getelementptr [21 x i64], ptr %node.027, i32 0, i32 19
  %40 = ptrtoint ptr %arrayidx.i.18 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx.i.18, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %offset)
  %cmp.i.18 = icmp ugt i64 %41, %offset
  br i1 %cmp.i.18, label %for.inc.17.for.end_crit_edge, label %for.inc.18

for.inc.17.for.end_crit_edge:                     ; preds = %for.inc.17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.18:                                       ; preds = %for.inc.17
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.19 = getelementptr [21 x i64], ptr %node.027, i32 0, i32 20
  %42 = ptrtoint ptr %arrayidx.i.19 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx.i.19, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %43, i64 %offset)
  %cmp.i.19 = icmp ugt i64 %43, %offset
  %spec.select = select i1 %cmp.i.19, i32 19, i32 20
  br label %for.end

for.end:                                          ; preds = %for.inc.18, %for.inc.17.for.end_crit_edge, %for.inc.16.for.end_crit_edge, %for.inc.15.for.end_crit_edge, %for.inc.14.for.end_crit_edge, %for.inc.13.for.end_crit_edge, %for.inc.12.for.end_crit_edge, %for.inc.11.for.end_crit_edge, %for.inc.10.for.end_crit_edge, %for.inc.9.for.end_crit_edge, %for.inc.8.for.end_crit_edge, %for.inc.7.for.end_crit_edge, %for.inc.6.for.end_crit_edge, %for.inc.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %for.cond2.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond2.preheader.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ 3, %for.inc.2.for.end_crit_edge ], [ 4, %for.inc.3.for.end_crit_edge ], [ 5, %for.inc.4.for.end_crit_edge ], [ 6, %for.inc.5.for.end_crit_edge ], [ 7, %for.inc.6.for.end_crit_edge ], [ 8, %for.inc.7.for.end_crit_edge ], [ 9, %for.inc.8.for.end_crit_edge ], [ 10, %for.inc.9.for.end_crit_edge ], [ 11, %for.inc.10.for.end_crit_edge ], [ 12, %for.inc.11.for.end_crit_edge ], [ 13, %for.inc.12.for.end_crit_edge ], [ 14, %for.inc.13.for.end_crit_edge ], [ 15, %for.inc.14.for.end_crit_edge ], [ 16, %for.inc.15.for.end_crit_edge ], [ 17, %for.inc.16.for.end_crit_edge ], [ 18, %for.inc.17.for.end_crit_edge ], [ %spec.select, %for.inc.18 ]
  %arrayidx = getelementptr %struct.xfs_iext_node, ptr %node.027, i32 0, i32 1, i32 %i.0.lcssa
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %45, null
  br i1 %tobool8.not, label %for.end.cleanup_crit_edge, label %for.cond

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %3, %if.end.cleanup_crit_edge ], [ null, %for.end.cleanup_crit_edge ], [ %45, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @xfs_iext_lookup_extent_before(ptr nocapture noundef readonly %ip, ptr nocapture noundef readonly %ifp, ptr nocapture noundef %end, ptr nocapture noundef %cur, ptr nocapture noundef %gotp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %end, align 8
  %sub = add i64 %1, -1
  %call = tail call zeroext i1 @xfs_iext_lookup_extent(ptr noundef %ip, ptr noundef %ifp, i64 noundef %sub, ptr noundef %cur, ptr noundef %gotp)
  br i1 %call, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %gotp to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %gotp, align 8
  %4 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %end, align 8
  %sub1 = add i64 %5, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %sub1)
  %cmp.not = icmp ugt i64 %3, %sub1
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @xfs_iext_prev(ptr noundef %ifp, ptr noundef %cur) #11
  %6 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur, align 4
  %tobool.not.i.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.i, label %if.end.return_crit_edge, label %if.end.i.i.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i.i.i:                                     ; preds = %if.end
  %pos.i.i.i = getelementptr inbounds %struct.xfs_iext_cursor, ptr %cur, i32 0, i32 1
  %8 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pos.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.i.i = icmp slt i32 %9, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i.return_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.i.return_crit_edge:                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %if_height.i.i.i.i = getelementptr inbounds %struct.xfs_ifork, ptr %ifp, i32 0, i32 3
  %10 = ptrtoint ptr %if_height.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %if_height.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i.i.i.i = icmp eq i32 %11, 1
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %lor.lhs.false.i.i.i.xfs_iext_max_recs.exit.i.i.i_crit_edge

lor.lhs.false.i.i.i.xfs_iext_max_recs.exit.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_max_recs.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %ifp to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ifp, align 8
  %div.i.i.i.i.i = sdiv i64 %13, 16
  %conv.i.i.i.i.i = trunc i64 %div.i.i.i.i.i to i32
  br label %xfs_iext_max_recs.exit.i.i.i

xfs_iext_max_recs.exit.i.i.i:                     ; preds = %if.then.i.i.i.i, %lor.lhs.false.i.i.i.xfs_iext_max_recs.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %conv.i.i.i.i.i, %if.then.i.i.i.i ], [ 15, %lor.lhs.false.i.i.i.xfs_iext_max_recs.exit.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %retval.0.i.i.i.i)
  %cmp2.not.i.i.i = icmp slt i32 %9, %retval.0.i.i.i.i
  br i1 %cmp2.not.i.i.i, label %xfs_iext_valid.exit.i.i, label %xfs_iext_max_recs.exit.i.i.i.return_crit_edge

xfs_iext_max_recs.exit.i.i.i.return_crit_edge:    ; preds = %xfs_iext_max_recs.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

xfs_iext_valid.exit.i.i:                          ; preds = %xfs_iext_max_recs.exit.i.i.i
  %hi.i.i.i.i = getelementptr [15 x %struct.xfs_iext_rec], ptr %7, i32 0, i32 %9, i32 1
  %14 = ptrtoint ptr %hi.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %hi.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %cmp.i12.i.not.i.i = icmp eq i64 %15, 0
  br i1 %cmp.i12.i.not.i.i, label %xfs_iext_valid.exit.i.i.return_crit_edge, label %if.end4

xfs_iext_valid.exit.i.i.return_crit_edge:         ; preds = %xfs_iext_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end4:                                          ; preds = %xfs_iext_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i.i = getelementptr [15 x %struct.xfs_iext_rec], ptr %7, i32 0, i32 %9
  %16 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx.i.i.i, align 8
  %and.i.i.i = and i64 %17, 18014398509481983
  %18 = ptrtoint ptr %gotp to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %and.i.i.i, ptr %gotp, align 8
  %19 = ptrtoint ptr %hi.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %hi.i.i.i.i, align 8
  %and2.i.i.i = and i64 %20, 2097151
  %br_blockcount.i.i.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %gotp, i32 0, i32 2
  %21 = ptrtoint ptr %br_blockcount.i.i.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %and2.i.i.i, ptr %br_blockcount.i.i.i, align 8
  %22 = load i64, ptr %arrayidx.i.i.i, align 8
  %shr.i.i.i = lshr i64 %22, 54
  %br_startblock.i.i.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %gotp, i32 0, i32 1
  %23 = ptrtoint ptr %br_startblock.i.i.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %shr.i.i.i, ptr %br_startblock.i.i.i, align 8
  %24 = load i64, ptr %hi.i.i.i.i, align 8
  %and6.i.i.i = lshr i64 %24, 12
  %shr7.i.i.i = and i64 %and6.i.i.i, 4503599627369472
  %or.i.i.i = or i64 %shr7.i.i.i, %shr.i.i.i
  store i64 %or.i.i.i, ptr %br_startblock.i.i.i, align 8
  %25 = load i64, ptr %hi.i.i.i.i, align 8
  %26 = trunc i64 %25 to i32
  %27 = lshr i32 %26, 21
  %28 = and i32 %27, 1
  %29 = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %gotp, i32 0, i32 3
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %28, ptr %29, align 8
  %add = add nuw nsw i64 %and2.i.i.i, %and.i.i.i
  %31 = ptrtoint ptr %end to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %add, ptr %end, align 8
  br label %return

return:                                           ; preds = %if.end4, %xfs_iext_valid.exit.i.i.return_crit_edge, %xfs_iext_max_recs.exit.i.i.i.return_crit_edge, %if.end.i.i.i.return_crit_edge, %if.end.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.0 = phi i1 [ true, %if.end4 ], [ true, %land.lhs.true.return_crit_edge ], [ false, %xfs_iext_valid.exit.i.i.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ false, %xfs_iext_max_recs.exit.i.i.i.return_crit_edge ], [ false, %if.end.i.i.i.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_iext_update_extent(ptr noundef %ip, i32 noundef %state, ptr noundef %cur, ptr nocapture noundef readonly %new) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xfs_iext_state_to_fork(ptr noundef %ip, i32 noundef %state) #11
  %if_seq.i = getelementptr inbounds %struct.xfs_ifork, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %if_seq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %if_seq.i, align 4
  %add.i = add i32 %1, 1
  store volatile i32 %add.i, ptr %if_seq.i, align 4
  %pos = getelementptr inbounds %struct.xfs_iext_cursor, ptr %cur, i32 0, i32 1
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %5, align 8
  %and.i = and i64 %7, 18014398509481983
  %8 = ptrtoint ptr %new to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %new, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %and.i)
  %cmp3.not = icmp eq i64 %9, %and.i
  br i1 %cmp3.not, label %if.then.if.end7_crit_edge, label %if.then4

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then4:                                         ; preds = %if.then
  %if_u1.i = getelementptr inbounds %struct.xfs_ifork, ptr %call, i32 0, i32 4
  %10 = ptrtoint ptr %if_u1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %if_u1.i, align 4
  %if_height.i = getelementptr inbounds %struct.xfs_ifork, ptr %call, i32 0, i32 3
  %12 = ptrtoint ptr %if_height.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %if_height.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp42.i = icmp sgt i32 %13, 1
  br i1 %cmp42.i, label %if.then4.for.cond1.preheader.i_crit_edge, label %if.then4.for.end15.i_crit_edge

if.then4.for.end15.i_crit_edge:                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end15.i

if.then4.for.cond1.preheader.i_crit_edge:         ; preds = %if.then4
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc14.i.for.cond1.preheader.i_crit_edge, %if.then4.for.cond1.preheader.i_crit_edge
  %height.045.i = phi i32 [ %dec.i, %for.inc14.i.for.cond1.preheader.i_crit_edge ], [ %13, %if.then4.for.cond1.preheader.i_crit_edge ]
  %node.043.i = phi ptr [ %20, %for.inc14.i.for.cond1.preheader.i_crit_edge ], [ %11, %if.then4.for.cond1.preheader.i_crit_edge ]
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc.i.for.body3.i_crit_edge, %for.cond1.preheader.i
  %i.040.i = phi i32 [ 0, %for.cond1.preheader.i ], [ %inc.i, %for.inc.i.for.body3.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.040.i)
  %cmp4.not.i = icmp eq i32 %i.040.i, 0
  br i1 %cmp4.not.i, label %for.body3.i.if.end.i_crit_edge, label %land.lhs.true.i

for.body3.i.if.end.i_crit_edge:                   ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body3.i
  %arrayidx.i.i = getelementptr [21 x i64], ptr %node.043.i, i32 0, i32 %i.040.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %and.i)
  %cmp.i.i = icmp ugt i64 %15, %and.i
  br i1 %cmp.i.i, label %land.lhs.true.i.for.end.i_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i.for.end.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.body3.i.if.end.i_crit_edge
  %arrayidx.i22 = getelementptr [21 x i64], ptr %node.043.i, i32 0, i32 %i.040.i
  %16 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx.i22, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %and.i)
  %cmp6.i = icmp eq i64 %17, %and.i
  br i1 %cmp6.i, label %if.then7.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %9, ptr %arrayidx.i22, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then7.i, %if.end.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.040.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 21
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body3.i_crit_edge

for.inc.i.for.body3.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body3.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %land.lhs.true.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ %i.040.i, %land.lhs.true.i.for.end.i_crit_edge ], [ 21, %for.inc.i.for.end.i_crit_edge ]
  %sub.i = add nsw i32 %i.0.lcssa.i, -1
  %arrayidx11.i = getelementptr %struct.xfs_iext_node, ptr %node.043.i, i32 0, i32 1, i32 %sub.i
  %19 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx11.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %cond.false.i, label %for.end.i.for.inc14.i_crit_edge, !prof !76

for.end.i.for.inc14.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc14.i

cond.false.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 444) #11
  br label %for.inc14.i

for.inc14.i:                                      ; preds = %cond.false.i, %for.end.i.for.inc14.i_crit_edge
  %dec.i = add nsw i32 %height.045.i, -1
  %cmp.i = icmp sgt i32 %height.045.i, 2
  br i1 %cmp.i, label %for.inc14.i.for.cond1.preheader.i_crit_edge, label %for.inc14.i.for.end15.i_crit_edge

for.inc14.i.for.end15.i_crit_edge:                ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end15.i

for.inc14.i.for.cond1.preheader.i_crit_edge:      ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond1.preheader.i

for.end15.i:                                      ; preds = %for.inc14.i.for.end15.i_crit_edge, %if.then4.for.end15.i_crit_edge
  %node.0.lcssa.i = phi ptr [ %11, %if.then4.for.end15.i_crit_edge ], [ %20, %for.inc14.i.for.end15.i_crit_edge ]
  %cmp16.i = icmp eq ptr %node.0.lcssa.i, %5
  br i1 %cmp16.i, label %for.end15.i.if.end7_crit_edge, label %cond.false24.i, !prof !77

for.end15.i.if.end7_crit_edge:                    ; preds = %for.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

cond.false24.i:                                   ; preds = %for.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 447) #11
  br label %if.end7

if.end7:                                          ; preds = %cond.false24.i, %for.end15.i.if.end7_crit_edge, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %21 = tail call ptr @llvm.returnaddress(i32 0)
  %22 = ptrtoint ptr %21 to i32
  tail call fastcc void @trace_xfs_bmap_pre_update(ptr noundef %ip, ptr noundef %cur, i32 noundef %state, i32 noundef %22)
  %23 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cur, align 4
  %25 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pos, align 4
  %arrayidx.i24 = getelementptr [15 x %struct.xfs_iext_rec], ptr %24, i32 0, i32 %26
  tail call fastcc void @xfs_iext_set(ptr noundef %arrayidx.i24, ptr noundef %new)
  tail call fastcc void @trace_xfs_bmap_post_update(ptr noundef %ip, ptr noundef %cur, i32 noundef %state, i32 noundef %22)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_bmap_pre_update(ptr noundef %ip, ptr noundef %cur, i32 noundef %state, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_bmap_pre_update, i32 0, i32 1), ptr blockaddress(@trace_xfs_bmap_pre_update, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !78

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !66) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !77

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !66) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !87
  %call42 = tail call i32 @__traceiter_xfs_bmap_pre_update(ptr noundef null, ptr noundef %ip, ptr noundef %cur, i32 noundef %state, i32 noundef %caller_ip) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !88
  %13 = tail call i32 @llvm.read_register.i32(metadata !66) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !66) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !77

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !66) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !81
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_bmap_pre_update, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_bmap_pre_update, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_bmap_pre_update.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_bmap_pre_update.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 404, ptr noundef nonnull @.str.17) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !82
  %31 = tail call i32 @llvm.read_register.i32(metadata !66) #11
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_bmap_post_update(ptr noundef %ip, ptr noundef %cur, i32 noundef %state, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_bmap_post_update, i32 0, i32 1), ptr blockaddress(@trace_xfs_bmap_post_update, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !78

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !66) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !77

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !66) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !89
  %call42 = tail call i32 @__traceiter_xfs_bmap_post_update(ptr noundef null, ptr noundef %ip, ptr noundef %cur, i32 noundef %state, i32 noundef %caller_ip) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !90
  %13 = tail call i32 @llvm.read_register.i32(metadata !66) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !66) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !77

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !66) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !81
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_bmap_post_update, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_bmap_post_update, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_bmap_post_update.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_bmap_post_update.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 405, ptr noundef nonnull @.str.17) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !82
  %31 = tail call i32 @llvm.read_register.i32(metadata !66) #11
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @xfs_iext_get_extent(ptr nocapture noundef readonly %ifp, ptr nocapture noundef readonly %cur, ptr nocapture noundef writeonly %gotp) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %if.end.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i:                                         ; preds = %entry
  %pos.i = getelementptr inbounds %struct.xfs_iext_cursor, ptr %cur, i32 0, i32 1
  %2 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pos.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp slt i32 %3, 0
  br i1 %cmp.i, label %if.end.i.return_crit_edge, label %lor.lhs.false.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false.i:                                  ; preds = %if.end.i
  %if_height.i.i = getelementptr inbounds %struct.xfs_ifork, ptr %ifp, i32 0, i32 3
  %4 = ptrtoint ptr %if_height.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %if_height.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %lor.lhs.false.i.xfs_iext_max_recs.exit.i_crit_edge

lor.lhs.false.i.xfs_iext_max_recs.exit.i_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iext_max_recs.exit.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %ifp to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ifp, align 8
  %div.i.i.i = sdiv i64 %7, 16
  %conv.i.i.i = trunc i64 %div.i.i.i to i32
  br label %xfs_iext_max_recs.exit.i

xfs_iext_max_recs.exit.i:                         ; preds = %if.then.i.i, %lor.lhs.false.i.xfs_iext_max_recs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %conv.i.i.i, %if.then.i.i ], [ 15, %lor.lhs.false.i.xfs_iext_max_recs.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %retval.0.i.i)
  %cmp2.not.i = icmp slt i32 %3, %retval.0.i.i
  br i1 %cmp2.not.i, label %xfs_iext_valid.exit, label %xfs_iext_max_recs.exit.i.return_crit_edge

xfs_iext_max_recs.exit.i.return_crit_edge:        ; preds = %xfs_iext_max_recs.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

xfs_iext_valid.exit:                              ; preds = %xfs_iext_max_recs.exit.i
  %hi.i.i = getelementptr [15 x %struct.xfs_iext_rec], ptr %1, i32 0, i32 %3, i32 1
  %8 = ptrtoint ptr %hi.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %hi.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp.i12.i.not = icmp eq i64 %9, 0
  br i1 %cmp.i12.i.not, label %xfs_iext_valid.exit.return_crit_edge, label %if.end

xfs_iext_valid.exit.return_crit_edge:             ; preds = %xfs_iext_valid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %xfs_iext_valid.exit
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pos.i, align 4
  %arrayidx.i = getelementptr [15 x %struct.xfs_iext_rec], ptr %1, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx.i, align 8
  %and.i = and i64 %13, 18014398509481983
  %14 = ptrtoint ptr %gotp to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %and.i, ptr %gotp, align 8
  %hi.i = getelementptr [15 x %struct.xfs_iext_rec], ptr %1, i32 0, i32 %11, i32 1
  %15 = ptrtoint ptr %hi.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %hi.i, align 8
  %and2.i = and i64 %16, 2097151
  %br_blockcount.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %gotp, i32 0, i32 2
  %17 = ptrtoint ptr %br_blockcount.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %and2.i, ptr %br_blockcount.i, align 8
  %18 = load i64, ptr %arrayidx.i, align 8
  %shr.i = lshr i64 %18, 54
  %br_startblock.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %gotp, i32 0, i32 1
  %19 = ptrtoint ptr %br_startblock.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %shr.i, ptr %br_startblock.i, align 8
  %20 = load i64, ptr %hi.i, align 8
  %and6.i = lshr i64 %20, 12
  %shr7.i = and i64 %and6.i, 4503599627369472
  %or.i = or i64 %shr7.i, %shr.i
  store i64 %or.i, ptr %br_startblock.i, align 8
  %21 = load i64, ptr %hi.i, align 8
  %22 = trunc i64 %21 to i32
  %23 = lshr i32 %22, 21
  %24 = and i32 %23, 1
  %25 = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %gotp, i32 0, i32 3
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %24, ptr %25, align 8
  br label %return

return:                                           ; preds = %if.end, %xfs_iext_valid.exit.return_crit_edge, %xfs_iext_max_recs.exit.i.return_crit_edge, %if.end.i.return_crit_edge, %entry.return_crit_edge
  %retval.0.i5 = phi i1 [ false, %xfs_iext_valid.exit.return_crit_edge ], [ true, %if.end ], [ false, %entry.return_crit_edge ], [ false, %xfs_iext_max_recs.exit.i.return_crit_edge ], [ false, %if.end.i.return_crit_edge ]
  ret i1 %retval.0.i5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_iext_destroy(ptr nocapture noundef %ifp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %if_u1 = getelementptr inbounds %struct.xfs_ifork, ptr %ifp, i32 0, i32 4
  %0 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %if_u1, align 4
  %if_height = getelementptr inbounds %struct.xfs_ifork, ptr %ifp, i32 0, i32 3
  %2 = ptrtoint ptr %if_height to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %if_height, align 8
  tail call fastcc void @xfs_iext_destroy_node(ptr noundef %1, i32 noundef %3)
  %4 = ptrtoint ptr %ifp to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %ifp, align 8
  %5 = ptrtoint ptr %if_height to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %if_height, align 8
  %6 = ptrtoint ptr %if_u1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %if_u1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_iext_destroy_node(ptr noundef %node, i32 noundef %level) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %level)
  %cmp = icmp sgt i32 %level, 1
  br i1 %cmp, label %for.cond.preheader, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

for.cond.preheader:                               ; preds = %entry
  %sub = add nsw i32 %level, -1
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.cond.preheader
  %i.012 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [21 x i64], ptr %node, i32 0, i32 %i.012
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %1)
  %cmp2 = icmp eq i64 %1, -9223372036854775808
  br i1 %cmp2, label %for.body.if.end5_crit_edge, label %if.end

for.body.if.end5_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.end:                                           ; preds = %for.body
  %arrayidx4 = getelementptr %struct.xfs_iext_node, ptr %node, i32 0, i32 1, i32 %i.012
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx4, align 4
  tail call fastcc void @xfs_iext_destroy_node(ptr noundef %3, i32 noundef %sub)
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, 21
  br i1 %exitcond.not, label %if.end.if.end5_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.end5:                                          ; preds = %if.end.if.end5_crit_edge, %for.body.if.end5_crit_edge, %entry.if.end5_crit_edge
  tail call void @kvfree(ptr noundef %node) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_iext_insert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_iext_remove(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_iext_node_pos(ptr nocapture noundef readonly %node, i64 noundef %offset) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr [21 x i64], ptr %node, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %offset)
  %cmp.i = icmp ugt i64 %1, %offset
  br i1 %cmp.i, label %entry.for.end_crit_edge, label %for.inc

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc:                                          ; preds = %entry
  %arrayidx.i.1 = getelementptr [21 x i64], ptr %node, i32 0, i32 2
  %2 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx.i.1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %offset)
  %cmp.i.1 = icmp ugt i64 %3, %offset
  br i1 %cmp.i.1, label %for.inc.for.end_crit_edge, label %for.inc.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.i.2 = getelementptr [21 x i64], ptr %node, i32 0, i32 3
  %4 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx.i.2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %offset)
  %cmp.i.2 = icmp ugt i64 %5, %offset
  br i1 %cmp.i.2, label %for.inc.1.for.end_crit_edge, label %for.inc.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.i.3 = getelementptr [21 x i64], ptr %node, i32 0, i32 4
  %6 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx.i.3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %offset)
  %cmp.i.3 = icmp ugt i64 %7, %offset
  br i1 %cmp.i.3, label %for.inc.2.for.end_crit_edge, label %for.inc.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.i.4 = getelementptr [21 x i64], ptr %node, i32 0, i32 5
  %8 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx.i.4, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %offset)
  %cmp.i.4 = icmp ugt i64 %9, %offset
  br i1 %cmp.i.4, label %for.inc.3.for.end_crit_edge, label %for.inc.4

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.i.5 = getelementptr [21 x i64], ptr %node, i32 0, i32 6
  %10 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx.i.5, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %offset)
  %cmp.i.5 = icmp ugt i64 %11, %offset
  br i1 %cmp.i.5, label %for.inc.4.for.end_crit_edge, label %for.inc.5

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.i.6 = getelementptr [21 x i64], ptr %node, i32 0, i32 7
  %12 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx.i.6, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %offset)
  %cmp.i.6 = icmp ugt i64 %13, %offset
  br i1 %cmp.i.6, label %for.inc.5.for.end_crit_edge, label %for.inc.6

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.i.7 = getelementptr [21 x i64], ptr %node, i32 0, i32 8
  %14 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx.i.7, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %offset)
  %cmp.i.7 = icmp ugt i64 %15, %offset
  br i1 %cmp.i.7, label %for.inc.6.for.end_crit_edge, label %for.inc.7

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.7:                                        ; preds = %for.inc.6
  %arrayidx.i.8 = getelementptr [21 x i64], ptr %node, i32 0, i32 9
  %16 = ptrtoint ptr %arrayidx.i.8 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx.i.8, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %offset)
  %cmp.i.8 = icmp ugt i64 %17, %offset
  br i1 %cmp.i.8, label %for.inc.7.for.end_crit_edge, label %for.inc.8

for.inc.7.for.end_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.8:                                        ; preds = %for.inc.7
  %arrayidx.i.9 = getelementptr [21 x i64], ptr %node, i32 0, i32 10
  %18 = ptrtoint ptr %arrayidx.i.9 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx.i.9, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %offset)
  %cmp.i.9 = icmp ugt i64 %19, %offset
  br i1 %cmp.i.9, label %for.inc.8.for.end_crit_edge, label %for.inc.9

for.inc.8.for.end_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.9:                                        ; preds = %for.inc.8
  %arrayidx.i.10 = getelementptr [21 x i64], ptr %node, i32 0, i32 11
  %20 = ptrtoint ptr %arrayidx.i.10 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx.i.10, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %offset)
  %cmp.i.10 = icmp ugt i64 %21, %offset
  br i1 %cmp.i.10, label %for.inc.9.for.end_crit_edge, label %for.inc.10

for.inc.9.for.end_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.10:                                       ; preds = %for.inc.9
  %arrayidx.i.11 = getelementptr [21 x i64], ptr %node, i32 0, i32 12
  %22 = ptrtoint ptr %arrayidx.i.11 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx.i.11, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %offset)
  %cmp.i.11 = icmp ugt i64 %23, %offset
  br i1 %cmp.i.11, label %for.inc.10.for.end_crit_edge, label %for.inc.11

for.inc.10.for.end_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.11:                                       ; preds = %for.inc.10
  %arrayidx.i.12 = getelementptr [21 x i64], ptr %node, i32 0, i32 13
  %24 = ptrtoint ptr %arrayidx.i.12 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx.i.12, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %offset)
  %cmp.i.12 = icmp ugt i64 %25, %offset
  br i1 %cmp.i.12, label %for.inc.11.for.end_crit_edge, label %for.inc.12

for.inc.11.for.end_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.12:                                       ; preds = %for.inc.11
  %arrayidx.i.13 = getelementptr [21 x i64], ptr %node, i32 0, i32 14
  %26 = ptrtoint ptr %arrayidx.i.13 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx.i.13, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %offset)
  %cmp.i.13 = icmp ugt i64 %27, %offset
  br i1 %cmp.i.13, label %for.inc.12.for.end_crit_edge, label %for.inc.13

for.inc.12.for.end_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.13:                                       ; preds = %for.inc.12
  %arrayidx.i.14 = getelementptr [21 x i64], ptr %node, i32 0, i32 15
  %28 = ptrtoint ptr %arrayidx.i.14 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx.i.14, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %offset)
  %cmp.i.14 = icmp ugt i64 %29, %offset
  br i1 %cmp.i.14, label %for.inc.13.for.end_crit_edge, label %for.inc.14

for.inc.13.for.end_crit_edge:                     ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.14:                                       ; preds = %for.inc.13
  %arrayidx.i.15 = getelementptr [21 x i64], ptr %node, i32 0, i32 16
  %30 = ptrtoint ptr %arrayidx.i.15 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx.i.15, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %offset)
  %cmp.i.15 = icmp ugt i64 %31, %offset
  br i1 %cmp.i.15, label %for.inc.14.for.end_crit_edge, label %for.inc.15

for.inc.14.for.end_crit_edge:                     ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.15:                                       ; preds = %for.inc.14
  %arrayidx.i.16 = getelementptr [21 x i64], ptr %node, i32 0, i32 17
  %32 = ptrtoint ptr %arrayidx.i.16 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx.i.16, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %offset)
  %cmp.i.16 = icmp ugt i64 %33, %offset
  br i1 %cmp.i.16, label %for.inc.15.for.end_crit_edge, label %for.inc.16

for.inc.15.for.end_crit_edge:                     ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.16:                                       ; preds = %for.inc.15
  %arrayidx.i.17 = getelementptr [21 x i64], ptr %node, i32 0, i32 18
  %34 = ptrtoint ptr %arrayidx.i.17 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx.i.17, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %offset)
  %cmp.i.17 = icmp ugt i64 %35, %offset
  br i1 %cmp.i.17, label %for.inc.16.for.end_crit_edge, label %for.inc.17

for.inc.16.for.end_crit_edge:                     ; preds = %for.inc.16
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.17:                                       ; preds = %for.inc.16
  %arrayidx.i.18 = getelementptr [21 x i64], ptr %node, i32 0, i32 19
  %36 = ptrtoint ptr %arrayidx.i.18 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx.i.18, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %offset)
  %cmp.i.18 = icmp ugt i64 %37, %offset
  br i1 %cmp.i.18, label %for.inc.17.for.end_crit_edge, label %for.inc.18

for.inc.17.for.end_crit_edge:                     ; preds = %for.inc.17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.18:                                       ; preds = %for.inc.17
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.19 = getelementptr [21 x i64], ptr %node, i32 0, i32 20
  %38 = ptrtoint ptr %arrayidx.i.19 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx.i.19, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %39, i64 %offset)
  %cmp.i.19 = icmp ugt i64 %39, %offset
  %spec.select = select i1 %cmp.i.19, i32 19, i32 20
  br label %for.end

for.end:                                          ; preds = %for.inc.18, %for.inc.17.for.end_crit_edge, %for.inc.16.for.end_crit_edge, %for.inc.15.for.end_crit_edge, %for.inc.14.for.end_crit_edge, %for.inc.13.for.end_crit_edge, %for.inc.12.for.end_crit_edge, %for.inc.11.for.end_crit_edge, %for.inc.10.for.end_crit_edge, %for.inc.9.for.end_crit_edge, %for.inc.8.for.end_crit_edge, %for.inc.7.for.end_crit_edge, %for.inc.6.for.end_crit_edge, %for.inc.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ 3, %for.inc.2.for.end_crit_edge ], [ 4, %for.inc.3.for.end_crit_edge ], [ 5, %for.inc.4.for.end_crit_edge ], [ 6, %for.inc.5.for.end_crit_edge ], [ 7, %for.inc.6.for.end_crit_edge ], [ 8, %for.inc.7.for.end_crit_edge ], [ 9, %for.inc.8.for.end_crit_edge ], [ 10, %for.inc.9.for.end_crit_edge ], [ 11, %for.inc.10.for.end_crit_edge ], [ 12, %for.inc.11.for.end_crit_edge ], [ 13, %for.inc.12.for.end_crit_edge ], [ 14, %for.inc.13.for.end_crit_edge ], [ 15, %for.inc.14.for.end_crit_edge ], [ 16, %for.inc.15.for.end_crit_edge ], [ 17, %for.inc.16.for.end_crit_edge ], [ 18, %for.inc.17.for.end_crit_edge ], [ %spec.select, %for.inc.18 ]
  ret i32 %i.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_bmap_pre_update(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_bmap_post_update(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(1) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !34, !35, !36, !38, !39, !41, !43, !45, !47, !48, !50, !52, !54, !56, !58, !60, !62, !63, !65}
!llvm.named.register.sp = !{!66}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/libxfs/xfs_iext_tree.c", i32 231, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/libxfs/xfs_iext_tree.c", i32 236, i32 2}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/xfs/libxfs/xfs_iext_tree.c", i32 237, i32 2}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/xfs/libxfs/xfs_iext_tree.c", i32 259, i32 2}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/xfs/libxfs/xfs_iext_tree.c", i32 644, i32 2}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/xfs/libxfs/xfs_iext_tree.c", i32 645, i32 2}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/xfs/libxfs/xfs_iext_tree.c", i32 874, i32 2}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/xfs/libxfs/xfs_iext_tree.c", i32 875, i32 2}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/libxfs/xfs_iext_tree.c", i32 876, i32 2}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/xfs/libxfs/xfs_iext_tree.c", i32 169, i32 3}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/xfs/libxfs/xfs_iext_tree.c", i32 584, i32 2}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/xfs/libxfs/xfs_iext_tree.c", i32 447, i32 2}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/xfs/libxfs/xfs_iext_tree.c", i32 57, i32 2}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/xfs/libxfs/xfs_iext_tree.c", i32 58, i32 2}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/xfs/libxfs/xfs_iext_tree.c", i32 59, i32 2}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../fs/xfs/xfs_trace.h", i32 402, i32 1}
!33 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!35 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!38 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/xfs/libxfs/xfs_iext_tree.c", i32 511, i32 2}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/xfs/libxfs/xfs_iext_tree.c", i32 512, i32 2}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/xfs/libxfs/xfs_iext_tree.c", i32 412, i32 3}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../fs/xfs/xfs_trace.h", i32 403, i32 1}
!47 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/xfs/libxfs/xfs_iext_tree.c", i32 731, i32 2}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/xfs/libxfs/xfs_iext_tree.c", i32 735, i32 2}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/xfs/libxfs/xfs_iext_tree.c", i32 736, i32 2}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/xfs/libxfs/xfs_iext_tree.c", i32 766, i32 3}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/xfs/libxfs/xfs_iext_tree.c", i32 767, i32 3}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/xfs/libxfs/xfs_iext_tree.c", i32 780, i32 3}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../fs/xfs/xfs_trace.h", i32 404, i32 1}
!62 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../fs/xfs/xfs_trace.h", i32 405, i32 1}
!65 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!66 = !{!"sp"}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{!"branch_weights", i32 1, i32 2000}
!77 = !{!"branch_weights", i32 2000, i32 1}
!78 = !{i64 2148266864, i64 2148266869, i64 2148266882, i64 2148266926, i64 2148266960, i64 2148266981}
!79 = !{i64 2156474811}
!80 = !{i64 2156475054}
!81 = !{i64 2149968957}
!82 = !{i64 2149969993}
!83 = !{!"branch_weights", i32 1073205, i32 2146410443}
!84 = !{!"branch_weights", i32 2146410443, i32 1073205}
!85 = !{i64 2156492475}
!86 = !{i64 2156492718}
!87 = !{i64 2156514356}
!88 = !{i64 2156514607}
!89 = !{i64 2156532431}
!90 = !{i64 2156532684}
