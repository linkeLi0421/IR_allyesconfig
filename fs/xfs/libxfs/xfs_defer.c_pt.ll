; ModuleID = '/llk/IR_all_yes/fs/xfs/libxfs/xfs_defer.c_pt.bc'
source_filename = "../fs/xfs/libxfs/xfs_defer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.xfs_defer_op_type = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.xfs_trans = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xfs_defer_pending = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i32 }
%struct.xfs_log_item = type { %struct.list_head, %struct.list_head, i64, ptr, ptr, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__xfsstats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.xfs_item_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xfs_defer_resources = type { [2 x ptr], [2 x ptr], i16, i16, i16 }
%struct.xfs_defer_capture = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, %struct.xfs_defer_resources }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.90, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.89, i16, i8, i32 }
%union.anon.89 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.llist_node = type { ptr }
%union.anon.90 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.78 = type { ptr }

@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(*tp)->t_flags & XFS_TRANS_PERM_LOG_RES\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fs/xfs/libxfs/xfs_defer.c\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"list_empty(&(*tp)->t_dfops)\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"tp->t_flags & XFS_TRANS_PERM_LOG_RES\00", [59 x i8] zeroinitializer }, align 32
@defer_op_types = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @xfs_bmap_update_defer_type, ptr @xfs_refcount_update_defer_type, ptr @xfs_rmap_update_defer_type, ptr @xfs_extent_free_defer_type, ptr @xfs_agfl_free_defer_type], [44 x i8] zeroinitializer }, align 32
@xfs_defer_pending_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"!(tp->t_flags & XFS_TRANS_DIRTY)\00", [63 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_defer_finish = external dso_local global %struct.tracepoint, align 4
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_defer_finish.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_defer_create_intent = external dso_local global %struct.tracepoint, align 4
@trace_xfs_defer_create_intent.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_defer_trans_roll = external dso_local global %struct.tracepoint, align 4
@trace_xfs_defer_trans_roll.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_defer_trans_roll_error = external dso_local global %struct.tracepoint, align 4
@trace_xfs_defer_trans_roll_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(*tpp)->t_flags & XFS_TRANS_PERM_LOG_RES\00", [55 x i8] zeroinitializer }, align 32
@xfsstats = external dso_local local_unnamed_addr global %struct.xstats, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__tracepoint_xfs_defer_relog_intent = external dso_local global %struct.tracepoint, align 4
@trace_xfs_defer_relog_intent.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_defer_pending_finish = external dso_local global %struct.tracepoint, align 4
@trace_xfs_defer_pending_finish.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_defer_finish_done = external dso_local global %struct.tracepoint, align 4
@trace_xfs_defer_finish_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_defer_trans_abort = external dso_local global %struct.tracepoint, align 4
@trace_xfs_defer_trans_abort.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_defer_pending_abort = external dso_local global %struct.tracepoint, align 4
@trace_xfs_defer_pending_abort.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_defer_finish_error = external dso_local global %struct.tracepoint, align 4
@trace_xfs_defer_finish_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dfp->dfp_count == 0\00", [44 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_defer_cancel_list = external dso_local global %struct.tracepoint, align 4
@trace_xfs_defer_cancel_list.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_defer_cancel = external dso_local global %struct.tracepoint, align 4
@trace_xfs_defer_cancel.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xfs_bmap_update_defer_type = external dso_local constant %struct.xfs_defer_op_type, align 4
@xfs_refcount_update_defer_type = external dso_local constant %struct.xfs_defer_op_type, align 4
@xfs_rmap_update_defer_type = external dso_local constant %struct.xfs_defer_op_type, align 4
@xfs_extent_free_defer_type = external dso_local constant %struct.xfs_defer_op_type, align 4
@xfs_agfl_free_defer_type = external dso_local constant %struct.xfs_defer_op_type, align 4
@.str.11 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"xfs_isilocked(dfc->dfc_held.dr_ip[i], XFS_ILOCK_EXCL)\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xfs_defer_pending\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 4667, i64 4668]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 494, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 563, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 588, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [15 x i8] c"defer_op_types\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 181, i32 40 }
@___asan_gen_.31 = private unnamed_addr constant [24 x i8] c"xfs_defer_pending_cache\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 26, i32 27 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 778, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 2669, i32 1 }
@___asan_gen_.44 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 108, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 263, i32 6 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 393, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 373, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 703, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private constant [29 x i8] c"../fs/xfs/libxfs/xfs_defer.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 822, i32 46 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @defer_op_types, ptr @xfs_defer_pending_cache, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @defer_op_types to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_defer_pending_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_defer_finish_noroll(ptr noundef %tp) local_unnamed_addr #0 align 64 {
entry:
  %state.i = alloca ptr, align 4
  %dop_pending = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dop_pending) #10
  %0 = getelementptr inbounds %struct.list_head, ptr %dop_pending, i32 0, i32 1
  %1 = ptrtoint ptr %dop_pending to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dop_pending, ptr %dop_pending, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dop_pending, ptr %0, align 4
  %3 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tp, align 4
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %t_flags, align 4
  %and = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !74

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 494) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %7 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tp, align 4
  %9 = call ptr @llvm.returnaddress(i32 0)
  %10 = ptrtoint ptr %9 to i32
  call fastcc void @trace_xfs_defer_finish(ptr noundef %8, i32 noundef %10)
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %cond.end
  %11 = ptrtoint ptr %dop_pending to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %dop_pending, align 4
  %cmp.i.not = icmp eq ptr %12, %dop_pending
  br i1 %cmp.i.not, label %lor.rhs, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

lor.rhs:                                          ; preds = %while.cond
  %13 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tp, align 4
  %t_dfops = getelementptr inbounds %struct.xfs_trans, ptr %14, i32 0, i32 28
  %15 = ptrtoint ptr %t_dfops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %t_dfops, align 4
  %cmp.i41.not = icmp eq ptr %16, %t_dfops
  br i1 %cmp.i41.not, label %while.end, label %lor.rhs.while.body_crit_edge

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %while.cond.while.body_crit_edge
  %17 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tp, align 4
  call fastcc void @xfs_defer_create_intents(ptr noundef %18)
  %19 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tp, align 4
  %t_dfops8 = getelementptr inbounds %struct.xfs_trans, ptr %20, i32 0, i32 28
  %21 = ptrtoint ptr %t_dfops8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %t_dfops8, align 4
  %cmp.i.not.i = icmp eq ptr %22, %t_dfops8
  br i1 %cmp.i.not.i, label %while.body.list_splice_init.exit_crit_edge, label %if.then.i

while.body.list_splice_init.exit_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %dop_pending to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dop_pending, align 4
  %prev2.i.i = getelementptr inbounds %struct.xfs_trans, ptr %20, i32 0, i32 28, i32 1
  %25 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %27 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dop_pending, ptr %prev3.i.i, align 4
  store ptr %22, ptr %dop_pending, align 4
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %24, ptr %26, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev6.i.i, align 4
  %30 = ptrtoint ptr %t_dfops8 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %t_dfops8, ptr %t_dfops8, align 4
  store ptr %t_dfops8, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %while.body.list_splice_init.exit_crit_edge
  %call9 = call fastcc i32 @xfs_defer_trans_roll(ptr noundef %tp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end, label %list_splice_init.exit.out_shutdown_crit_edge

list_splice_init.exit.out_shutdown_crit_edge:     ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_shutdown

if.end:                                           ; preds = %list_splice_init.exit
  %31 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tp, align 4
  %t_mountp.i = getelementptr inbounds %struct.xfs_trans, ptr %32, i32 0, i32 10
  %33 = ptrtoint ptr %t_mountp.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %t_mountp.i, align 4
  %m_log.i = getelementptr inbounds %struct.xfs_mount, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %m_log.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %m_log.i, align 4
  %t_flags.i = getelementptr inbounds %struct.xfs_trans, ptr %32, i32 0, i32 7
  %37 = ptrtoint ptr %t_flags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %t_flags.i, align 4
  %and.i = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %cond.false.i, label %if.end.cond.end.i_crit_edge, !prof !74

if.end.cond.end.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 393) #10
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end.cond.end.i_crit_edge
  %39 = ptrtoint ptr %dop_pending to i32
  call void @__asan_load4_noabort(i32 %39)
  %dfp.074.i = load ptr, ptr %dop_pending, align 4
  %cmp.not75.i = icmp eq ptr %dfp.074.i, %dop_pending
  br i1 %cmp.not75.i, label %cond.end.i.for.end.i_crit_edge, label %cond.end.i.for.body.i_crit_edge

cond.end.i.for.body.i_crit_edge:                  ; preds = %cond.end.i
  br label %for.body.i

cond.end.i.for.end.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %cond.end.i.for.body.i_crit_edge
  %dfp.077.i = phi ptr [ %dfp.0.i, %for.inc.i.for.body.i_crit_edge ], [ %dfp.074.i, %cond.end.i.for.body.i_crit_edge ]
  %threshold_lsn.076.i = phi i64 [ %threshold_lsn.2.i, %for.inc.i.for.body.i_crit_edge ], [ -1, %cond.end.i.for.body.i_crit_edge ]
  %dfp_intent.i = getelementptr inbounds %struct.xfs_defer_pending, ptr %dfp.077.i, i32 0, i32 2
  %40 = ptrtoint ptr %dfp_intent.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dfp_intent.i, align 4
  %cmp5.i = icmp eq ptr %41, null
  br i1 %cmp5.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %call.i = call zeroext i1 @xfs_log_item_in_current_chkpt(ptr noundef nonnull %41) #10
  br i1 %call.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %if.end.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %threshold_lsn.076.i)
  %cmp7.i = icmp eq i64 %threshold_lsn.076.i, -1
  br i1 %cmp7.i, label %if.then8.i, label %if.end.i.if.end13.i_crit_edge

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

if.then8.i:                                       ; preds = %if.end.i
  %call9.i = call i64 @xlog_grant_push_threshold(ptr noundef %36, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call9.i)
  %cmp10.i = icmp eq i64 %call9.i, -1
  br i1 %cmp10.i, label %if.then8.i.for.end.i_crit_edge, label %if.then8.i.if.end13.i_crit_edge

if.then8.i.if.end13.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

if.then8.i.for.end.i_crit_edge:                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.end13.i:                                       ; preds = %if.then8.i.if.end13.i_crit_edge, %if.end.i.if.end13.i_crit_edge
  %threshold_lsn.1.i = phi i64 [ %call9.i, %if.then8.i.if.end13.i_crit_edge ], [ %threshold_lsn.076.i, %if.end.i.if.end13.i_crit_edge ]
  %42 = ptrtoint ptr %dfp_intent.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dfp_intent.i, align 4
  %li_lsn.i = getelementptr inbounds %struct.xfs_log_item, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %li_lsn.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %li_lsn.i, align 8
  %46 = lshr i64 %45, 32
  %conv.i.i = trunc i64 %46 to i32
  %47 = lshr i64 %threshold_lsn.1.i, 32
  %conv2.i.i = trunc i64 %47 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %conv2.i.i)
  %cmp.not.i.i = icmp eq i32 %conv.i.i, %conv2.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %conv2.i.i)
  %cmp8.i.i = icmp ult i32 %conv.i.i, %conv2.i.i
  br i1 %cmp8.i.i, label %if.then.i.i.if.end18.i_crit_edge, label %if.then.i.i.for.inc.i_crit_edge

if.then.i.i.for.inc.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i.i.if.end18.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

if.end.i.i:                                       ; preds = %if.end13.i
  %conv11.i.i = trunc i64 %45 to i32
  %conv12.i.i = trunc i64 %threshold_lsn.1.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11.i.i, i32 %conv12.i.i)
  %cmp18.i.i = icmp ult i32 %conv11.i.i, %conv12.i.i
  br i1 %cmp18.i.i, label %if.end.i.i.if.end18.i_crit_edge, label %if.end.i.i.for.inc.i_crit_edge

if.end.i.i.for.inc.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i.i.if.end18.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end.i.i.if.end18.i_crit_edge, %if.then.i.i.if.end18.i_crit_edge
  %48 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tp, align 4
  %t_mountp19.i = getelementptr inbounds %struct.xfs_trans, ptr %49, i32 0, i32 10
  %50 = ptrtoint ptr %t_mountp19.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %t_mountp19.i, align 4
  call fastcc void @trace_xfs_defer_relog_intent(ptr noundef %51, ptr noundef %dfp.077.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %52 = load ptr, ptr @xfsstats, align 4
  %53 = ptrtoint ptr %52 to i32
  %54 = call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %57
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %59, %53
  %60 = inttoptr i32 %add.i to ptr
  %defer_relog.i = getelementptr inbounds %struct.__xfsstats, ptr %60, i32 0, i32 94
  %61 = ptrtoint ptr %defer_relog.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %defer_relog.i, align 8
  %inc.i = add i64 %62, 1
  store i64 %inc.i, ptr %defer_relog.i, align 8
  %63 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tp, align 4
  %t_mountp30.i = getelementptr inbounds %struct.xfs_trans, ptr %64, i32 0, i32 10
  %65 = ptrtoint ptr %t_mountp30.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %t_mountp30.i, align 4
  %m_stats.i = getelementptr inbounds %struct.xfs_mount, ptr %66, i32 0, i32 92
  %67 = ptrtoint ptr %m_stats.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %m_stats.i, align 4
  %69 = ptrtoint ptr %68 to i32
  %70 = load i32, ptr %cpu.i, align 4
  %arrayidx34.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %70
  %71 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx34.i, align 4
  %add35.i = add i32 %72, %69
  %73 = inttoptr i32 %add35.i to ptr
  %defer_relog36.i = getelementptr inbounds %struct.__xfsstats, ptr %73, i32 0, i32 94
  %74 = ptrtoint ptr %defer_relog36.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %defer_relog36.i, align 8
  %inc37.i = add i64 %75, 1
  store i64 %inc37.i, ptr %defer_relog36.i, align 8
  %76 = ptrtoint ptr %dfp_intent.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dfp_intent.i, align 4
  %78 = load ptr, ptr %tp, align 4
  %li_ops.i.i = getelementptr inbounds %struct.xfs_log_item, ptr %77, i32 0, i32 9
  %79 = ptrtoint ptr %li_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %li_ops.i.i, align 4
  %iop_relog.i.i = getelementptr inbounds %struct.xfs_item_ops, ptr %80, i32 0, i32 11
  %81 = ptrtoint ptr %iop_relog.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %iop_relog.i.i, align 4
  %call.i.i = call ptr %82(ptr noundef %77, ptr noundef %78) #10
  %83 = ptrtoint ptr %dfp_intent.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call.i.i, ptr %dfp_intent.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end18.i, %if.end.i.i.for.inc.i_crit_edge, %if.then.i.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %threshold_lsn.2.i = phi i64 [ %threshold_lsn.076.i, %for.body.i.for.inc.i_crit_edge ], [ %threshold_lsn.076.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %threshold_lsn.1.i, %if.end18.i ], [ %threshold_lsn.1.i, %if.end.i.i.for.inc.i_crit_edge ], [ %threshold_lsn.1.i, %if.then.i.i.for.inc.i_crit_edge ]
  %84 = ptrtoint ptr %dfp.077.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %dfp.0.i = load ptr, ptr %dfp.077.i, align 4
  %cmp.not.i = icmp eq ptr %dfp.0.i, %dop_pending
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then8.i.for.end.i_crit_edge, %cond.end.i.for.end.i_crit_edge
  %85 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %tp, align 4
  %t_flags48.i = getelementptr inbounds %struct.xfs_trans, ptr %86, i32 0, i32 7
  %87 = ptrtoint ptr %t_flags48.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %t_flags48.i, align 4
  %and49.i = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  br i1 %tobool50.not.i, label %for.end.i.if.end14_crit_edge, label %xfs_defer_relog.exit

for.end.i.if.end14_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

xfs_defer_relog.exit:                             ; preds = %for.end.i
  %call52.i = call fastcc i32 @xfs_defer_trans_roll(ptr noundef %tp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool12.not = icmp eq i32 %call52.i, 0
  br i1 %tobool12.not, label %xfs_defer_relog.exit.if.end14_crit_edge, label %xfs_defer_relog.exit.out_shutdown_crit_edge

xfs_defer_relog.exit.out_shutdown_crit_edge:      ; preds = %xfs_defer_relog.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_shutdown

xfs_defer_relog.exit.if.end14_crit_edge:          ; preds = %xfs_defer_relog.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.end14:                                         ; preds = %xfs_defer_relog.exit.if.end14_crit_edge, %for.end.i.if.end14_crit_edge
  %89 = ptrtoint ptr %dop_pending to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dop_pending, align 4
  %91 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %tp, align 4
  %dfp_type.i = getelementptr inbounds %struct.xfs_defer_pending, ptr %90, i32 0, i32 5
  %93 = ptrtoint ptr %dfp_type.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %dfp_type.i, align 4
  %arrayidx.i43 = getelementptr [5 x ptr], ptr @defer_op_types, i32 0, i32 %94
  %95 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx.i43, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state.i) #10
  %97 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %state.i, align 4
  %t_mountp.i44 = getelementptr inbounds %struct.xfs_trans, ptr %92, i32 0, i32 10
  %98 = ptrtoint ptr %t_mountp.i44 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %t_mountp.i44, align 4
  call fastcc void @trace_xfs_defer_pending_finish(ptr noundef %99, ptr noundef %90) #10
  %create_done.i = getelementptr inbounds %struct.xfs_defer_op_type, ptr %96, i32 0, i32 2
  %100 = ptrtoint ptr %create_done.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %create_done.i, align 4
  %dfp_intent.i45 = getelementptr inbounds %struct.xfs_defer_pending, ptr %90, i32 0, i32 2
  %102 = ptrtoint ptr %dfp_intent.i45 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dfp_intent.i45, align 4
  %dfp_count.i = getelementptr inbounds %struct.xfs_defer_pending, ptr %90, i32 0, i32 4
  %104 = ptrtoint ptr %dfp_count.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %dfp_count.i, align 4
  %call.i46 = call ptr %101(ptr noundef %92, ptr noundef %103, i32 noundef %105) #10
  %dfp_done.i = getelementptr inbounds %struct.xfs_defer_pending, ptr %90, i32 0, i32 3
  %106 = ptrtoint ptr %dfp_done.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call.i46, ptr %dfp_done.i, align 4
  %dfp_work.i = getelementptr inbounds %struct.xfs_defer_pending, ptr %90, i32 0, i32 1
  %107 = ptrtoint ptr %dfp_work.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dfp_work.i, align 4
  %cmp.i.not64.i = icmp eq ptr %108, %dfp_work.i
  br i1 %cmp.i.not64.i, label %if.end14.for.end.i52_crit_edge, label %for.body.lr.ph.i

if.end14.for.end.i52_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i52

for.body.lr.ph.i:                                 ; preds = %if.end14
  %finish_item.i = getelementptr inbounds %struct.xfs_defer_op_type, ptr %96, i32 0, i32 3
  br label %for.body.i48

for.cond.i:                                       ; preds = %list_del.exit.i
  %cmp.i.not.i47 = icmp eq ptr %n.066.i, %dfp_work.i
  br i1 %cmp.i.not.i47, label %for.cond.i.for.end.i52_crit_edge, label %for.cond.i.for.body.i48_crit_edge

for.cond.i.for.body.i48_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i48

for.cond.i.for.end.i52_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i52

for.body.i48:                                     ; preds = %for.cond.i.for.body.i48_crit_edge, %for.body.lr.ph.i
  %li.065.i = phi ptr [ %108, %for.body.lr.ph.i ], [ %n.066.i, %for.cond.i.for.body.i48_crit_edge ]
  %109 = ptrtoint ptr %li.065.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %n.066.i = load ptr, ptr %li.065.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %li.065.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i48.list_del.exit.i_crit_edge

for.body.i48.list_del.exit.i_crit_edge:           ; preds = %for.body.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i48
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %li.065.i, i32 0, i32 1
  %110 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %prev.i.i.i, align 4
  %112 = ptrtoint ptr %li.065.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %li.065.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %111, ptr %prev1.i.i.i.i, align 4
  %115 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile ptr %113, ptr %111, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i48.list_del.exit.i_crit_edge
  %116 = ptrtoint ptr %li.065.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr inttoptr (i32 256 to ptr), ptr %li.065.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %li.065.i, i32 0, i32 1
  %117 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %118 = ptrtoint ptr %dfp_count.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %dfp_count.i, align 4
  %dec.i = add i32 %119, -1
  store i32 %dec.i, ptr %dfp_count.i, align 4
  %120 = ptrtoint ptr %finish_item.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %finish_item.i, align 4
  %122 = ptrtoint ptr %dfp_done.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dfp_done.i, align 4
  %call6.i = call i32 %121(ptr noundef %92, ptr noundef %123, ptr noundef %li.065.i, ptr noundef nonnull %state.i) #10
  %124 = zext i32 %call6.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call6.i, label %list_del.exit.i.out.i_crit_edge [
    i32 -11, label %if.then.i49
    i32 0, label %for.cond.i
  ]

list_del.exit.i.out.i_crit_edge:                  ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.then.i49:                                      ; preds = %list_del.exit.i
  %125 = ptrtoint ptr %dfp_work.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dfp_work.i, align 4
  %call.i.i49.i = call zeroext i1 @__list_add_valid(ptr noundef %li.065.i, ptr noundef %dfp_work.i, ptr noundef %126) #10
  br i1 %call.i.i49.i, label %if.end.i.i50.i, label %if.then.i49.xfs_defer_create_intent.exit.i_crit_edge

if.then.i49.xfs_defer_create_intent.exit.i_crit_edge: ; preds = %if.then.i49
  call void @__sanitizer_cov_trace_pc() #12
  br label %xfs_defer_create_intent.exit.i

if.end.i.i50.i:                                   ; preds = %if.then.i49
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.le = getelementptr inbounds %struct.list_head, ptr %li.065.i, i32 0, i32 1
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %li.065.i, ptr %prev1.i.i.i, align 4
  %128 = ptrtoint ptr %li.065.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %126, ptr %li.065.i, align 4
  %129 = ptrtoint ptr %prev.i.i.le to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %dfp_work.i, ptr %prev.i.i.le, align 4
  %130 = ptrtoint ptr %dfp_work.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store volatile ptr %li.065.i, ptr %dfp_work.i, align 4
  br label %xfs_defer_create_intent.exit.i

xfs_defer_create_intent.exit.i:                   ; preds = %if.end.i.i50.i, %if.then.i49.xfs_defer_create_intent.exit.i_crit_edge
  %131 = ptrtoint ptr %dfp_count.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %dfp_count.i, align 4
  %inc.i50 = add i32 %132, 1
  store i32 %inc.i50, ptr %dfp_count.i, align 4
  %133 = ptrtoint ptr %dfp_done.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr null, ptr %dfp_done.i, align 4
  %134 = ptrtoint ptr %dfp_intent.i45 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr null, ptr %dfp_intent.i45, align 4
  %135 = ptrtoint ptr %dfp_type.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %dfp_type.i, align 4
  %arrayidx.i.i = getelementptr [5 x ptr], ptr @defer_op_types, i32 0, i32 %136
  %137 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx.i.i, align 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %138, align 4
  %call.i.i51 = call ptr %140(ptr noundef %92, ptr noundef %dfp_work.i, i32 noundef %inc.i50, i1 noundef zeroext false) #10
  %141 = ptrtoint ptr %dfp_intent.i45 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %call.i.i51, ptr %dfp_intent.i45, align 4
  br label %out.i

for.end.i52:                                      ; preds = %for.cond.i.for.end.i52_crit_edge, %if.end14.for.end.i52_crit_edge
  %error.0.lcssa.i = phi i32 [ -1, %if.end14.for.end.i52_crit_edge ], [ 0, %for.cond.i.for.end.i52_crit_edge ]
  %call.i.i51.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %90) #10
  br i1 %call.i.i51.i, label %if.end.i.i54.i, label %for.end.i52.list_del.exit56.i_crit_edge

for.end.i52.list_del.exit56.i_crit_edge:          ; preds = %for.end.i52
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit56.i

if.end.i.i54.i:                                   ; preds = %for.end.i52
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i52.i = getelementptr inbounds %struct.list_head, ptr %90, i32 0, i32 1
  %142 = ptrtoint ptr %prev.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %prev.i.i52.i, align 4
  %144 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %90, align 4
  %prev1.i.i.i53.i = getelementptr inbounds %struct.list_head, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %prev1.i.i.i53.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %143, ptr %prev1.i.i.i53.i, align 4
  %147 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile ptr %145, ptr %143, align 4
  br label %list_del.exit56.i

list_del.exit56.i:                                ; preds = %if.end.i.i54.i, %for.end.i52.list_del.exit56.i_crit_edge
  %148 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr inttoptr (i32 256 to ptr), ptr %90, align 4
  %prev.i55.i = getelementptr inbounds %struct.list_head, ptr %90, i32 0, i32 1
  %149 = ptrtoint ptr %prev.i55.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i55.i, align 4
  %150 = load ptr, ptr @xfs_defer_pending_cache, align 4
  call void @kmem_cache_free(ptr noundef %150, ptr noundef %90) #10
  br label %out.i

out.i:                                            ; preds = %list_del.exit56.i, %xfs_defer_create_intent.exit.i, %list_del.exit.i.out.i_crit_edge
  %error.1.i = phi i32 [ -11, %xfs_defer_create_intent.exit.i ], [ %error.0.lcssa.i, %list_del.exit56.i ], [ %call6.i, %list_del.exit.i.out.i_crit_edge ]
  %finish_cleanup.i = getelementptr inbounds %struct.xfs_defer_op_type, ptr %96, i32 0, i32 4
  %151 = ptrtoint ptr %finish_cleanup.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %finish_cleanup.i, align 4
  %tobool15.not.i = icmp eq ptr %152, null
  br i1 %tobool15.not.i, label %out.i.xfs_defer_finish_one.exit_crit_edge, label %if.then16.i

out.i.xfs_defer_finish_one.exit_crit_edge:        ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xfs_defer_finish_one.exit

if.then16.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  %153 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %state.i, align 4
  call void %152(ptr noundef %92, ptr noundef %154, i32 noundef %error.1.i) #10
  br label %xfs_defer_finish_one.exit

xfs_defer_finish_one.exit:                        ; preds = %if.then16.i, %out.i.xfs_defer_finish_one.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state.i) #10
  %155 = zext i32 %error.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %155, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %error.1.i, label %xfs_defer_finish_one.exit.out_shutdown_crit_edge [
    i32 0, label %xfs_defer_finish_one.exit.while.cond.backedge_crit_edge
    i32 -11, label %xfs_defer_finish_one.exit.while.cond.backedge_crit_edge85
  ]

xfs_defer_finish_one.exit.while.cond.backedge_crit_edge85: ; preds = %xfs_defer_finish_one.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

xfs_defer_finish_one.exit.while.cond.backedge_crit_edge: ; preds = %xfs_defer_finish_one.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

xfs_defer_finish_one.exit.out_shutdown_crit_edge: ; preds = %xfs_defer_finish_one.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_shutdown

while.cond.backedge:                              ; preds = %xfs_defer_finish_one.exit.while.cond.backedge_crit_edge, %xfs_defer_finish_one.exit.while.cond.backedge_crit_edge85
  br label %while.cond

while.end:                                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @trace_xfs_defer_finish_done(ptr noundef %14, i32 noundef %10)
  br label %cleanup

out_shutdown:                                     ; preds = %xfs_defer_finish_one.exit.out_shutdown_crit_edge, %xfs_defer_relog.exit.out_shutdown_crit_edge, %list_splice_init.exit.out_shutdown_crit_edge
  %error.0 = phi i32 [ %call9, %list_splice_init.exit.out_shutdown_crit_edge ], [ %call52.i, %xfs_defer_relog.exit.out_shutdown_crit_edge ], [ %error.1.i, %xfs_defer_finish_one.exit.out_shutdown_crit_edge ]
  %156 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %tp, align 4
  call fastcc void @xfs_defer_trans_abort(ptr noundef %157, ptr noundef nonnull %dop_pending)
  %158 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %tp, align 4
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %159, i32 0, i32 10
  %160 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %t_mountp, align 4
  call void @xfs_do_force_shutdown(ptr noundef %161, i32 noundef 8, ptr noundef nonnull @.str.1, i32 noundef 533) #10
  %162 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %tp, align 4
  call fastcc void @trace_xfs_defer_finish_error(ptr noundef %163, i32 noundef %error.0)
  %164 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %tp, align 4
  %t_mountp20 = getelementptr inbounds %struct.xfs_trans, ptr %165, i32 0, i32 10
  %166 = ptrtoint ptr %t_mountp20 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %t_mountp20, align 4
  call fastcc void @xfs_defer_cancel_list(ptr noundef %167, ptr noundef nonnull %dop_pending)
  %168 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %tp, align 4
  %t_mountp.i54 = getelementptr inbounds %struct.xfs_trans, ptr %169, i32 0, i32 10
  %170 = ptrtoint ptr %t_mountp.i54 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %t_mountp.i54, align 4
  call fastcc void @trace_xfs_defer_cancel(ptr noundef %169, i32 noundef %10) #10
  %t_dfops.i = getelementptr inbounds %struct.xfs_trans, ptr %169, i32 0, i32 28
  call fastcc void @xfs_defer_cancel_list(ptr noundef %171, ptr noundef %t_dfops.i) #10
  br label %cleanup

cleanup:                                          ; preds = %out_shutdown, %while.end
  %retval.0 = phi i32 [ %error.0, %out_shutdown ], [ 0, %while.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dop_pending) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_defer_finish(ptr noundef %tp, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_defer_finish, i32 0, i32 1), ptr blockaddress(@trace_xfs_defer_finish, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !75

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !76

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !77
  %call42 = tail call i32 @__traceiter_xfs_defer_finish(ptr noundef null, ptr noundef %tp, i32 noundef %caller_ip) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !78
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !76

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_defer_finish, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_defer_finish, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_defer_finish.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_defer_finish.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2669, ptr noundef nonnull @.str.6) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !80
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_defer_create_intents(ptr noundef %tp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %t_dfops = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 28
  %0 = ptrtoint ptr %t_dfops to i32
  call void @__asan_load4_noabort(i32 %0)
  %dfp.013 = load ptr, ptr %t_dfops, align 4
  %cmp.not14 = icmp eq ptr %dfp.013, %t_dfops
  br i1 %cmp.not14, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %xfs_defer_create_intent.exit.for.body_crit_edge, %for.body.lr.ph
  %dfp.015 = phi ptr [ %dfp.013, %for.body.lr.ph ], [ %dfp.0, %xfs_defer_create_intent.exit.for.body_crit_edge ]
  %1 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %t_mountp, align 4
  tail call fastcc void @trace_xfs_defer_create_intent(ptr noundef %2, ptr noundef %dfp.015)
  %dfp_intent.i = getelementptr inbounds %struct.xfs_defer_pending, ptr %dfp.015, i32 0, i32 2
  %3 = ptrtoint ptr %dfp_intent.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dfp_intent.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.then.i, label %for.body.xfs_defer_create_intent.exit_crit_edge

for.body.xfs_defer_create_intent.exit_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %xfs_defer_create_intent.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %dfp_type.i = getelementptr inbounds %struct.xfs_defer_pending, ptr %dfp.015, i32 0, i32 5
  %5 = ptrtoint ptr %dfp_type.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dfp_type.i, align 4
  %arrayidx.i = getelementptr [5 x ptr], ptr @defer_op_types, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %dfp_work.i = getelementptr inbounds %struct.xfs_defer_pending, ptr %dfp.015, i32 0, i32 1
  %dfp_count.i = getelementptr inbounds %struct.xfs_defer_pending, ptr %dfp.015, i32 0, i32 4
  %11 = ptrtoint ptr %dfp_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dfp_count.i, align 4
  %call.i = tail call ptr %10(ptr noundef %tp, ptr noundef %dfp_work.i, i32 noundef %12, i1 noundef zeroext true) #10
  %13 = ptrtoint ptr %dfp_intent.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %dfp_intent.i, align 4
  br label %xfs_defer_create_intent.exit

xfs_defer_create_intent.exit:                     ; preds = %if.then.i, %for.body.xfs_defer_create_intent.exit_crit_edge
  %14 = ptrtoint ptr %dfp.015 to i32
  call void @__asan_load4_noabort(i32 %14)
  %dfp.0 = load ptr, ptr %dfp.015, align 4
  %cmp.not = icmp eq ptr %dfp.0, %t_dfops
  br i1 %cmp.not, label %xfs_defer_create_intent.exit.for.end_crit_edge, label %xfs_defer_create_intent.exit.for.body_crit_edge

xfs_defer_create_intent.exit.for.body_crit_edge:  ; preds = %xfs_defer_create_intent.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

xfs_defer_create_intent.exit.for.end_crit_edge:   ; preds = %xfs_defer_create_intent.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %xfs_defer_create_intent.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_defer_trans_roll(ptr noundef %tpp) unnamed_addr #5 align 64 {
entry:
  %dres = alloca %struct.xfs_defer_resources, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dres) #10
  %0 = call ptr @memset(ptr %dres, i32 0, i32 24)
  %1 = ptrtoint ptr %tpp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tpp, align 4
  %call = call fastcc i32 @xfs_defer_save_resources(ptr noundef nonnull %dres, ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %tpp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tpp, align 4
  %5 = tail call ptr @llvm.returnaddress(i32 0)
  %6 = ptrtoint ptr %5 to i32
  tail call fastcc void @trace_xfs_defer_trans_roll(ptr noundef %4, i32 noundef %6)
  %call1 = tail call i32 @xfs_trans_roll(ptr noundef %tpp) #10
  %7 = ptrtoint ptr %tpp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tpp, align 4
  call fastcc void @xfs_defer_restore_resources(ptr noundef %8, ptr noundef nonnull %dres)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %tpp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tpp, align 4
  tail call fastcc void @trace_xfs_defer_trans_roll_error(ptr noundef %10, i32 noundef %call1)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dres) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_defer_finish_done(ptr noundef %tp, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_defer_finish_done, i32 0, i32 1), ptr blockaddress(@trace_xfs_defer_finish_done, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !75

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !76

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !81
  %call42 = tail call i32 @__traceiter_xfs_defer_finish_done(ptr noundef null, ptr noundef %tp, i32 noundef %caller_ip) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !82
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !76

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_defer_finish_done, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_defer_finish_done, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_defer_finish_done.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_defer_finish_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2670, ptr noundef nonnull @.str.6) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !80
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_defer_trans_abort(ptr noundef %tp, ptr noundef readonly %dop_pending) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call fastcc void @trace_xfs_defer_trans_abort(ptr noundef %tp, i32 noundef %1)
  %2 = ptrtoint ptr %dop_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %dfp.018 = load ptr, ptr %dop_pending, align 4
  %cmp.not19 = icmp eq ptr %dfp.018, %dop_pending
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %dfp.020 = phi ptr [ %dfp.018, %for.body.lr.ph ], [ %dfp.0, %for.inc.for.body_crit_edge ]
  %dfp_type = getelementptr inbounds %struct.xfs_defer_pending, ptr %dfp.020, i32 0, i32 5
  %3 = ptrtoint ptr %dfp_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dfp_type, align 4
  %arrayidx = getelementptr [5 x ptr], ptr @defer_op_types, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %t_mountp, align 4
  tail call fastcc void @trace_xfs_defer_pending_abort(ptr noundef %8, ptr noundef %dfp.020)
  %dfp_intent = getelementptr inbounds %struct.xfs_defer_pending, ptr %dfp.020, i32 0, i32 2
  %9 = ptrtoint ptr %dfp_intent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dfp_intent, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %dfp_done = getelementptr inbounds %struct.xfs_defer_pending, ptr %dfp.020, i32 0, i32 3
  %11 = ptrtoint ptr %dfp_done to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dfp_done, align 4
  %tobool1.not = icmp eq ptr %12, null
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %abort_intent = getelementptr inbounds %struct.xfs_defer_op_type, ptr %6, i32 0, i32 1
  %13 = ptrtoint ptr %abort_intent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %abort_intent, align 4
  tail call void %14(ptr noundef nonnull %10) #10
  %15 = ptrtoint ptr %dfp_intent to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %dfp_intent, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %16 = ptrtoint ptr %dfp.020 to i32
  call void @__asan_load4_noabort(i32 %16)
  %dfp.0 = load ptr, ptr %dfp.020, align 4
  %cmp.not = icmp eq ptr %dfp.0, %dop_pending
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_do_force_shutdown(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_defer_finish_error(ptr noundef %tp, i32 noundef %error) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_defer_finish_error, i32 0, i32 1), ptr blockaddress(@trace_xfs_defer_finish_error, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !75

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !76

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  %call42 = tail call i32 @__traceiter_xfs_defer_finish_error(ptr noundef null, ptr noundef %tp, i32 noundef %error) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !76

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_defer_finish_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_defer_finish_error, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_defer_finish_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_defer_finish_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2673, ptr noundef nonnull @.str.6) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !80
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
define internal fastcc void @xfs_defer_cancel_list(ptr noundef %mp, ptr noundef readonly %dop_list) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dop_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dop_list, align 4
  %cmp.not53 = icmp eq ptr %1, %dop_list
  br i1 %cmp.not53, label %entry.for.end25_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end25

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %entry.for.body_crit_edge
  %dfp.054 = phi ptr [ %pli.056, %cond.end.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %dfp.054 to i32
  call void @__asan_load4_noabort(i32 %2)
  %pli.056 = load ptr, ptr %dfp.054, align 4
  %dfp_type = getelementptr inbounds %struct.xfs_defer_pending, ptr %dfp.054, i32 0, i32 5
  %3 = ptrtoint ptr %dfp_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dfp_type, align 4
  %arrayidx = getelementptr [5 x ptr], ptr @defer_op_types, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  tail call fastcc void @trace_xfs_defer_cancel_list(ptr noundef %mp, ptr noundef %dfp.054)
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dfp.054) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %dfp.054, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %dfp.054 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dfp.054, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %13 = ptrtoint ptr %dfp.054 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %dfp.054, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %dfp.054, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %dfp_work = getelementptr inbounds %struct.xfs_defer_pending, ptr %dfp.054, i32 0, i32 1
  %15 = ptrtoint ptr %dfp_work to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dfp_work, align 4
  %cmp.i.not48 = icmp eq ptr %16, %dfp_work
  br i1 %cmp.i.not48, label %list_del.exit.for.end_crit_edge, label %for.body12.lr.ph

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body12.lr.ph:                                 ; preds = %list_del.exit
  %dfp_count = getelementptr inbounds %struct.xfs_defer_pending, ptr %dfp.054, i32 0, i32 4
  %cancel_item = getelementptr inbounds %struct.xfs_defer_op_type, ptr %6, i32 0, i32 5
  br label %for.body12

for.body12:                                       ; preds = %list_del.exit46.for.body12_crit_edge, %for.body12.lr.ph
  %pwi.049 = phi ptr [ %16, %for.body12.lr.ph ], [ %n.051, %list_del.exit46.for.body12_crit_edge ]
  %17 = ptrtoint ptr %pwi.049 to i32
  call void @__asan_load4_noabort(i32 %17)
  %n.051 = load ptr, ptr %pwi.049, align 4
  %call.i.i41 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pwi.049) #10
  br i1 %call.i.i41, label %if.end.i.i44, label %for.body12.list_del.exit46_crit_edge

for.body12.list_del.exit46_crit_edge:             ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit46

if.end.i.i44:                                     ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i42 = getelementptr inbounds %struct.list_head, ptr %pwi.049, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i42 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i42, align 4
  %20 = ptrtoint ptr %pwi.049 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pwi.049, align 4
  %prev1.i.i.i43 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i43 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i43, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit46

list_del.exit46:                                  ; preds = %if.end.i.i44, %for.body12.list_del.exit46_crit_edge
  %24 = ptrtoint ptr %pwi.049 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %pwi.049, align 4
  %prev.i45 = getelementptr inbounds %struct.list_head, ptr %pwi.049, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i45 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i45, align 4
  %26 = ptrtoint ptr %dfp_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dfp_count, align 4
  %dec = add i32 %27, -1
  store i32 %dec, ptr %dfp_count, align 4
  %28 = ptrtoint ptr %cancel_item to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cancel_item, align 4
  tail call void %29(ptr noundef %pwi.049) #10
  %cmp.i.not = icmp eq ptr %n.051, %dfp_work
  br i1 %cmp.i.not, label %list_del.exit46.for.end_crit_edge, label %list_del.exit46.for.body12_crit_edge

list_del.exit46.for.body12_crit_edge:             ; preds = %list_del.exit46
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body12

list_del.exit46.for.end_crit_edge:                ; preds = %list_del.exit46
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_del.exit46.for.end_crit_edge, %list_del.exit.for.end_crit_edge
  %dfp_count14 = getelementptr inbounds %struct.xfs_defer_pending, ptr %dfp.054, i32 0, i32 4
  %30 = ptrtoint ptr %dfp_count14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dfp_count14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp15 = icmp eq i32 %31, 0
  br i1 %cmp15, label %for.end.cond.end_crit_edge, label %cond.false, !prof !76

for.end.cond.end_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 373) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.end.cond.end_crit_edge
  %32 = load ptr, ptr @xfs_defer_pending_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %32, ptr noundef %dfp.054) #10
  %cmp.not = icmp eq ptr %pli.056, %dop_list
  br i1 %cmp.not, label %cond.end.for.end25_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cond.end.for.end25_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end25

for.end25:                                        ; preds = %cond.end.for.end25_crit_edge, %entry.for.end25_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_defer_cancel(ptr noundef %tp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  %2 = tail call ptr @llvm.returnaddress(i32 0)
  %3 = ptrtoint ptr %2 to i32
  tail call fastcc void @trace_xfs_defer_cancel(ptr noundef %tp, i32 noundef %3)
  %t_dfops = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 28
  tail call fastcc void @xfs_defer_cancel_list(ptr noundef %1, ptr noundef %t_dfops)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_defer_finish(ptr noundef %tp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xfs_defer_finish_noroll(ptr noundef %tp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tp, align 4
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %t_flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %if.then2

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %call3 = tail call fastcc i32 @xfs_defer_trans_roll(ptr noundef %tp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.if.end7_crit_edge, label %if.then5

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tp, align 4
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %t_mountp, align 4
  tail call void @xfs_do_force_shutdown(ptr noundef %7, i32 noundef 8, ptr noundef nonnull @.str.1, i32 noundef 557) #10
  br label %cleanup

if.end7:                                          ; preds = %if.then2.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %8 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tp, align 4
  %t_dfops = getelementptr inbounds %struct.xfs_trans, ptr %9, i32 0, i32 28
  %10 = ptrtoint ptr %t_dfops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %t_dfops, align 4
  %cmp.i.not = icmp eq ptr %11, %t_dfops
  br i1 %cmp.i.not, label %if.end7.cond.end_crit_edge, label %cond.false, !prof !76

if.end7.cond.end_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 563) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end7.cond.end_crit_edge
  %12 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tp, align 4
  %t_flags12 = getelementptr inbounds %struct.xfs_trans, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %t_flags12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %t_flags12, align 4
  %and13 = and i32 %15, -257
  store i32 %and13, ptr %t_flags12, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then5 ], [ 0, %cond.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_defer_cancel(ptr noundef %tp, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_defer_cancel, i32 0, i32 1), ptr blockaddress(@trace_xfs_defer_cancel, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !75

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !76

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !85
  %call42 = tail call i32 @__traceiter_xfs_defer_cancel(ptr noundef null, ptr noundef %tp, i32 noundef %caller_ip) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !86
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !76

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_defer_cancel, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_defer_cancel, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_defer_cancel.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_defer_cancel.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2666, ptr noundef nonnull @.str.6) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !80
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
define dso_local void @xfs_defer_add(ptr noundef %tp, i32 noundef %type, ptr noundef %li) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 7
  %0 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %t_flags, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %entry.do.end_crit_edge, !prof !74

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 588) #10
  br label %do.end

do.end:                                           ; preds = %cond.false, %entry.do.end_crit_edge
  %t_dfops = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 28
  %2 = ptrtoint ptr %t_dfops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %t_dfops, align 4
  %cmp.i.not = icmp eq ptr %3, %t_dfops
  br i1 %cmp.i.not, label %do.end.if.then12_crit_edge, label %if.then

do.end.if.then12_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

if.then:                                          ; preds = %do.end
  %prev = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 28, i32 1
  %4 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev, align 4
  %dfp_type = getelementptr inbounds %struct.xfs_defer_pending, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %dfp_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dfp_type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %type)
  %cmp.not = icmp eq i32 %7, %type
  br i1 %cmp.not, label %lor.lhs.false, label %if.then.if.then12_crit_edge

if.then.if.then12_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

lor.lhs.false:                                    ; preds = %if.then
  %arrayidx = getelementptr [5 x ptr], ptr @defer_op_types, i32 0, i32 %type
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %max_items = getelementptr inbounds %struct.xfs_defer_op_type, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %max_items to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_items, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not = icmp eq i32 %11, 0
  br i1 %tobool6.not, label %if.end10, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %dfp_count = getelementptr inbounds %struct.xfs_defer_pending, ptr %5, i32 0, i32 4
  %12 = ptrtoint ptr %dfp_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dfp_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp8.not = icmp uge i32 %13, %11
  %tobool11.not = icmp eq ptr %5, null
  %or.cond = select i1 %cmp8.not, i1 true, i1 %tobool11.not
  br i1 %or.cond, label %land.lhs.true.if.then12_crit_edge, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

land.lhs.true.if.then12_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

if.end10:                                         ; preds = %lor.lhs.false
  %tobool11.not.old = icmp eq ptr %5, null
  br i1 %tobool11.not.old, label %if.end10.if.then12_crit_edge, label %if.end10.if.end17_crit_edge

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end10.if.then12_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

if.then12:                                        ; preds = %if.end10.if.then12_crit_edge, %land.lhs.true.if.then12_crit_edge, %if.then.if.then12_crit_edge, %do.end.if.then12_crit_edge
  %14 = load ptr, ptr @xfs_defer_pending_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %14, i32 noundef 36160) #10
  %dfp_type14 = getelementptr inbounds %struct.xfs_defer_pending, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %dfp_type14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %type, ptr %dfp_type14, align 4
  %dfp_intent = getelementptr inbounds %struct.xfs_defer_pending, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %dfp_intent to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %dfp_intent, align 8
  %dfp_done = getelementptr inbounds %struct.xfs_defer_pending, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %dfp_done to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %dfp_done, align 4
  %dfp_count15 = getelementptr inbounds %struct.xfs_defer_pending, ptr %call.i, i32 0, i32 4
  %18 = ptrtoint ptr %dfp_count15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %dfp_count15, align 8
  %dfp_work = getelementptr inbounds %struct.xfs_defer_pending, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %dfp_work to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %dfp_work, ptr %dfp_work, align 8
  %prev.i = getelementptr inbounds %struct.xfs_defer_pending, ptr %call.i, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dfp_work, ptr %prev.i, align 4
  %prev.i36 = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 28, i32 1
  %21 = ptrtoint ptr %prev.i36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i36, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %call.i, ptr noundef %22, ptr noundef %t_dfops) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then12.if.end17_crit_edge

if.then12.if.end17_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end.i.i:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %prev.i36 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %prev.i36, align 4
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %t_dfops, ptr %call.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %call.i, ptr %22, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end.i.i, %if.then12.if.end17_crit_edge, %if.end10.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge
  %dfp.1 = phi ptr [ %5, %if.end10.if.end17_crit_edge ], [ %call.i, %if.then12.if.end17_crit_edge ], [ %call.i, %if.end.i.i ], [ %5, %land.lhs.true.if.end17_crit_edge ]
  %dfp_work18 = getelementptr inbounds %struct.xfs_defer_pending, ptr %dfp.1, i32 0, i32 1
  %prev.i37 = getelementptr inbounds %struct.xfs_defer_pending, ptr %dfp.1, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %prev.i37 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i37, align 4
  %call.i.i38 = tail call zeroext i1 @__list_add_valid(ptr noundef %li, ptr noundef %28, ptr noundef %dfp_work18) #10
  br i1 %call.i.i38, label %if.end.i.i40, label %if.end17.list_add_tail.exit41_crit_edge

if.end17.list_add_tail.exit41_crit_edge:          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit41

if.end.i.i40:                                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %prev.i37 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %li, ptr %prev.i37, align 4
  %30 = ptrtoint ptr %li to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %dfp_work18, ptr %li, align 4
  %prev3.i.i39 = getelementptr inbounds %struct.list_head, ptr %li, i32 0, i32 1
  %31 = ptrtoint ptr %prev3.i.i39 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i39, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %li, ptr %28, align 4
  br label %list_add_tail.exit41

list_add_tail.exit41:                             ; preds = %if.end.i.i40, %if.end17.list_add_tail.exit41_crit_edge
  %dfp_count19 = getelementptr inbounds %struct.xfs_defer_pending, ptr %dfp.1, i32 0, i32 4
  %33 = ptrtoint ptr %dfp_count19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dfp_count19, align 4
  %inc = add i32 %34, 1
  store i32 %inc, ptr %dfp_count19, align 4
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_defer_move(ptr noundef %dtp, ptr noundef %stp) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %t_dfops = getelementptr inbounds %struct.xfs_trans, ptr %stp, i32 0, i32 28
  %0 = ptrtoint ptr %t_dfops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %t_dfops, align 4
  %cmp.i.not.i = icmp eq ptr %1, %t_dfops
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %t_dfops1 = getelementptr inbounds %struct.xfs_trans, ptr %dtp, i32 0, i32 28
  %2 = ptrtoint ptr %t_dfops1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t_dfops1, align 4
  %prev2.i.i = getelementptr inbounds %struct.xfs_trans, ptr %stp, i32 0, i32 28, i32 1
  %4 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %t_dfops1, ptr %prev3.i.i, align 4
  store ptr %1, ptr %t_dfops1, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %3, ptr %5, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev6.i.i, align 4
  %9 = ptrtoint ptr %t_dfops to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %t_dfops, ptr %t_dfops, align 4
  store ptr %t_dfops, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %stp, i32 0, i32 7
  %10 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %t_flags, align 4
  %and = and i32 %11, 256
  %t_flags2 = getelementptr inbounds %struct.xfs_trans, ptr %dtp, i32 0, i32 7
  %12 = ptrtoint ptr %t_flags2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %t_flags2, align 4
  %or = or i32 %13, %and
  store i32 %or, ptr %t_flags2, align 4
  %14 = load i32, ptr %t_flags, align 4
  %and4 = and i32 %14, -257
  store i32 %and4, ptr %t_flags, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_defer_ops_capture_free(ptr noundef %mp, ptr noundef %dfc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dfc_dfops = getelementptr inbounds %struct.xfs_defer_capture, ptr %dfc, i32 0, i32 1
  tail call fastcc void @xfs_defer_cancel_list(ptr noundef %mp, ptr noundef %dfc_dfops)
  %dr_bufs = getelementptr inbounds %struct.xfs_defer_capture, ptr %dfc, i32 0, i32 6, i32 2
  %0 = ptrtoint ptr %dr_bufs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %dr_bufs, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp27.not = icmp eq i16 %1, 0
  br i1 %cmp27.not, label %entry.for.cond4.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond4.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond4.preheader

for.body.lr.ph:                                   ; preds = %entry
  %dfc_held = getelementptr inbounds %struct.xfs_defer_capture, ptr %dfc, i32 0, i32 6
  br label %for.body

for.cond4.preheader:                              ; preds = %for.body.for.cond4.preheader_crit_edge, %entry.for.cond4.preheader_crit_edge
  %dr_inos = getelementptr inbounds %struct.xfs_defer_capture, ptr %dfc, i32 0, i32 6, i32 4
  %2 = ptrtoint ptr %dr_inos to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dr_inos, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp829.not = icmp eq i16 %3, 0
  br i1 %cmp829.not, label %for.cond4.preheader.for.end16_crit_edge, label %for.cond4.preheader.for.body10_crit_edge

for.cond4.preheader.for.body10_crit_edge:         ; preds = %for.cond4.preheader
  br label %for.body10

for.cond4.preheader.for.end16_crit_edge:          ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end16

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x ptr], ptr %dfc_held, i32 0, i32 %indvars.iv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @xfs_buf_unlock(ptr noundef %5) #10
  tail call void @xfs_buf_rele(ptr noundef %5) #10
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %6 = ptrtoint ptr %dr_bufs to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %dr_bufs, align 4
  %8 = zext i16 %7 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond4.preheader_crit_edge

for.body.for.cond4.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond4.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.cond4.preheader.for.body10_crit_edge
  %indvars.iv31 = phi i32 [ %indvars.iv.next32, %for.body10.for.body10_crit_edge ], [ 0, %for.cond4.preheader.for.body10_crit_edge ]
  %arrayidx13 = getelementptr %struct.xfs_defer_capture, ptr %dfc, i32 0, i32 6, i32 1, i32 %indvars.iv31
  %9 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx13, align 4
  tail call void @xfs_irele(ptr noundef %10) #10
  %indvars.iv.next32 = add nuw nsw i32 %indvars.iv31, 1
  %11 = ptrtoint ptr %dr_inos to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %dr_inos, align 4
  %13 = zext i16 %12 to i32
  %cmp8 = icmp ult i32 %indvars.iv.next32, %13
  br i1 %cmp8, label %for.body10.for.body10_crit_edge, label %for.body10.for.end16_crit_edge

for.body10.for.end16_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end16

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body10

for.end16:                                        ; preds = %for.body10.for.end16_crit_edge, %for.cond4.preheader.for.end16_crit_edge
  tail call void @kvfree(ptr noundef %dfc) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_irele(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_defer_ops_capture_and_commit(ptr noundef %tp, ptr noundef %capture_list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  %t_dfops.i = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 28
  %2 = ptrtoint ptr %t_dfops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %t_dfops.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %t_dfops.i
  br i1 %cmp.i.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call ptr @kmem_alloc(i32 noundef 56, i32 noundef 20) #10
  %4 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %call.i.i, ptr %call.i.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i.i, ptr %prev.i.i, align 4
  %dfc_dfops.i = getelementptr inbounds %struct.xfs_defer_capture, ptr %call.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %dfc_dfops.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %dfc_dfops.i, ptr %dfc_dfops.i, align 4
  %prev.i68.i = getelementptr inbounds %struct.xfs_defer_capture, ptr %call.i.i, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i68.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dfc_dfops.i, ptr %prev.i68.i, align 4
  tail call fastcc void @xfs_defer_create_intents(ptr noundef %tp) #10
  %8 = ptrtoint ptr %t_dfops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %t_dfops.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %9, %t_dfops.i
  br i1 %cmp.i.not.i.i, label %if.end.i.list_splice_init.exit.i_crit_edge, label %if.then.i.i

if.end.i.list_splice_init.exit.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_init.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %dfc_dfops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dfc_dfops.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 28, i32 1
  %12 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dfc_dfops.i, ptr %prev3.i.i.i, align 4
  store ptr %9, ptr %dfc_dfops.i, align 4
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %11, ptr %13, align 4
  %prev6.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %16 = ptrtoint ptr %prev6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev6.i.i.i, align 4
  %17 = ptrtoint ptr %t_dfops.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %t_dfops.i, ptr %t_dfops.i, align 4
  store ptr %t_dfops.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_init.exit.i

list_splice_init.exit.i:                          ; preds = %if.then.i.i, %if.end.i.list_splice_init.exit.i_crit_edge
  %t_flags.i = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 7
  %18 = ptrtoint ptr %t_flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %t_flags.i, align 4
  %and.i = and i32 %19, 256
  %dfc_tpflags.i = getelementptr inbounds %struct.xfs_defer_capture, ptr %call.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %dfc_tpflags.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and.i, ptr %dfc_tpflags.i, align 4
  %21 = load i32, ptr %t_flags.i, align 4
  %and5.i = and i32 %21, -257
  store i32 %and5.i, ptr %t_flags.i, align 4
  %t_blk_res.i = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 3
  %22 = ptrtoint ptr %t_blk_res.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %t_blk_res.i, align 4
  %t_blk_res_used.i = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 4
  %24 = ptrtoint ptr %t_blk_res_used.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %t_blk_res_used.i, align 8
  %sub.i = sub i32 %23, %25
  %dfc_blkres.i = getelementptr inbounds %struct.xfs_defer_capture, ptr %call.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %dfc_blkres.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub.i, ptr %dfc_blkres.i, align 4
  %t_rtx_res.i = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 5
  %27 = ptrtoint ptr %t_rtx_res.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %t_rtx_res.i, align 4
  %t_rtx_res_used.i = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 6
  %29 = ptrtoint ptr %t_rtx_res_used.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %t_rtx_res_used.i, align 8
  %sub6.i = sub i32 %28, %30
  %dfc_rtxres.i = getelementptr inbounds %struct.xfs_defer_capture, ptr %call.i.i, i32 0, i32 4
  %31 = ptrtoint ptr %dfc_rtxres.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub6.i, ptr %dfc_rtxres.i, align 4
  %t_log_res.i = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 1
  %32 = ptrtoint ptr %t_log_res.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %t_log_res.i, align 4
  %dfc_logres.i = getelementptr inbounds %struct.xfs_defer_capture, ptr %call.i.i, i32 0, i32 5
  %34 = ptrtoint ptr %dfc_logres.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %dfc_logres.i, align 4
  %dfc_held.i = getelementptr inbounds %struct.xfs_defer_capture, ptr %call.i.i, i32 0, i32 6
  %call7.i = tail call fastcc i32 @xfs_defer_save_resources(ptr noundef %dfc_held.i, ptr noundef %tp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %list_splice_init.exit.i.if.end10.i_crit_edge, label %if.then9.i

list_splice_init.exit.i.if.end10.i_crit_edge:     ; preds = %list_splice_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then9.i:                                       ; preds = %list_splice_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %t_mountp, align 4
  tail call void @xfs_do_force_shutdown(ptr noundef %36, i32 noundef 8, ptr noundef nonnull @.str.1, i32 noundef 694) #10
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %list_splice_init.exit.i.if.end10.i_crit_edge
  %dr_inos.i = getelementptr inbounds %struct.xfs_defer_capture, ptr %call.i.i, i32 0, i32 6, i32 4
  %37 = ptrtoint ptr %dr_inos.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %dr_inos.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %cmp69.not.i = icmp eq i16 %38, 0
  br i1 %cmp69.not.i, label %if.end10.i.for.cond23.preheader.i_crit_edge, label %if.end10.i.for.body.i_crit_edge

if.end10.i.for.body.i_crit_edge:                  ; preds = %if.end10.i
  br label %for.body.i

if.end10.i.for.cond23.preheader.i_crit_edge:      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond23.preheader.i

for.cond23.preheader.i:                           ; preds = %cond.end.i.for.cond23.preheader.i_crit_edge, %if.end10.i.for.cond23.preheader.i_crit_edge
  %dr_bufs.i = getelementptr inbounds %struct.xfs_defer_capture, ptr %call.i.i, i32 0, i32 6, i32 2
  %39 = ptrtoint ptr %dr_bufs.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %dr_bufs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %cmp2771.not.i = icmp eq i16 %40, 0
  br i1 %cmp2771.not.i, label %for.cond23.preheader.i.xfs_defer_ops_capture.exit_crit_edge, label %for.cond23.preheader.i.for.body29.i_crit_edge

for.cond23.preheader.i.for.body29.i_crit_edge:    ; preds = %for.cond23.preheader.i
  br label %for.body29.i

for.cond23.preheader.i.xfs_defer_ops_capture.exit_crit_edge: ; preds = %for.cond23.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xfs_defer_ops_capture.exit

for.body.i:                                       ; preds = %cond.end.i.for.body.i_crit_edge, %if.end10.i.for.body.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %cond.end.i.for.body.i_crit_edge ], [ 0, %if.end10.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.xfs_defer_capture, ptr %call.i.i, i32 0, i32 6, i32 1, i32 %indvars.iv.i
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i, align 4
  %call15.i = tail call zeroext i1 @xfs_isilocked(ptr noundef %42, i32 noundef 4) #10
  br i1 %call15.i, label %for.body.i.cond.end.i_crit_edge, label %cond.false.i, !prof !76

for.body.i.cond.end.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.false.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 703) #10
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %for.body.i.cond.end.i_crit_edge
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i, align 4
  %i_vnode.i.i = getelementptr inbounds %struct.xfs_inode, ptr %44, i32 0, i32 27
  tail call void @ihold(ptr noundef %i_vnode.i.i) #10
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %45 = ptrtoint ptr %dr_inos.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %dr_inos.i, align 4
  %47 = zext i16 %46 to i32
  %cmp.i = icmp ult i32 %indvars.iv.next.i, %47
  br i1 %cmp.i, label %cond.end.i.for.body.i_crit_edge, label %cond.end.i.for.cond23.preheader.i_crit_edge

cond.end.i.for.cond23.preheader.i_crit_edge:      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond23.preheader.i

cond.end.i.for.body.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body29.i:                                     ; preds = %for.body29.i.for.body29.i_crit_edge, %for.cond23.preheader.i.for.body29.i_crit_edge
  %indvars.iv73.i = phi i32 [ %indvars.iv.next74.i, %for.body29.i.for.body29.i_crit_edge ], [ 0, %for.cond23.preheader.i.for.body29.i_crit_edge ]
  %arrayidx32.i = getelementptr [2 x ptr], ptr %dfc_held.i, i32 0, i32 %indvars.iv73.i
  %48 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx32.i, align 4
  tail call void @xfs_buf_hold(ptr noundef %49) #10
  %indvars.iv.next74.i = add nuw nsw i32 %indvars.iv73.i, 1
  %50 = ptrtoint ptr %dr_bufs.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %dr_bufs.i, align 4
  %52 = zext i16 %51 to i32
  %cmp27.i = icmp ult i32 %indvars.iv.next74.i, %52
  br i1 %cmp27.i, label %for.body29.i.for.body29.i_crit_edge, label %for.body29.i.xfs_defer_ops_capture.exit_crit_edge

for.body29.i.xfs_defer_ops_capture.exit_crit_edge: ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xfs_defer_ops_capture.exit

for.body29.i.for.body29.i_crit_edge:              ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body29.i

xfs_defer_ops_capture.exit:                       ; preds = %for.body29.i.xfs_defer_ops_capture.exit_crit_edge, %for.cond23.preheader.i.xfs_defer_ops_capture.exit_crit_edge
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %xfs_defer_ops_capture.exit.if.then_crit_edge, label %if.end

xfs_defer_ops_capture.exit.if.then_crit_edge:     ; preds = %xfs_defer_ops_capture.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %xfs_defer_ops_capture.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %call1 = tail call i32 @xfs_trans_commit(ptr noundef %tp) #10
  br label %cleanup

if.end:                                           ; preds = %xfs_defer_ops_capture.exit
  %call2 = tail call i32 @xfs_trans_commit(ptr noundef %tp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @xfs_defer_ops_capture_free(ptr noundef %1, ptr noundef nonnull %call.i.i)
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %prev.i = getelementptr inbounds %struct.list_head, ptr %capture_list, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i, align 4
  %call.i.i14 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i, ptr noundef %54, ptr noundef %capture_list) #10
  br i1 %call.i.i14, label %if.end.i.i, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i.i, ptr %prev.i, align 4
  %56 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %capture_list, ptr %call.i.i, align 4
  %57 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev.i.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %call.i.i, ptr %54, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end5.cleanup_crit_edge, %if.then4, %if.then
  %retval.0 = phi i32 [ %call2, %if.then4 ], [ %call1, %if.then ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_defer_ops_continue(ptr noundef %dfc, ptr noundef %tp, ptr nocapture noundef writeonly %dres) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 7
  %0 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %t_flags, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !74

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 777) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %2 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %t_flags, align 4
  %and4 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %cond.end.cond.end16_crit_edge, label %cond.false15, !prof !76

cond.end.cond.end16_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end16

cond.false15:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 778) #10
  br label %cond.end16

cond.end16:                                       ; preds = %cond.false15, %cond.end.cond.end16_crit_edge
  %dr_inos = getelementptr inbounds %struct.xfs_defer_capture, ptr %dfc, i32 0, i32 6, i32 4
  %4 = ptrtoint ptr %dr_inos to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dr_inos, align 4
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.14)
  switch i16 %5, label %cond.end16.if.end31_crit_edge [
    i16 2, label %if.then
    i16 1, label %if.then27
  ]

cond.end16.if.end31_crit_edge:                    ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then:                                          ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #12
  %dr_ip = getelementptr inbounds %struct.xfs_defer_capture, ptr %dfc, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %dr_ip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dr_ip, align 4
  %arrayidx21 = getelementptr %struct.xfs_defer_capture, ptr %dfc, i32 0, i32 6, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx21, align 4
  tail call void @xfs_lock_two_inodes(ptr noundef %8, i32 noundef 4, ptr noundef %10, i32 noundef 4) #10
  br label %if.end31

if.then27:                                        ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #12
  %dr_ip29 = getelementptr inbounds %struct.xfs_defer_capture, ptr %dfc, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %dr_ip29 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dr_ip29, align 4
  tail call void @xfs_ilock(ptr noundef %12, i32 noundef 4) #10
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.then, %cond.end16.if.end31_crit_edge
  %dfc_held = getelementptr inbounds %struct.xfs_defer_capture, ptr %dfc, i32 0, i32 6
  tail call fastcc void @xfs_defer_restore_resources(ptr noundef %tp, ptr noundef %dfc_held)
  %13 = call ptr @memcpy(ptr %dres, ptr %dfc_held, i32 24)
  %dfc_dfops = getelementptr inbounds %struct.xfs_defer_capture, ptr %dfc, i32 0, i32 1
  %14 = ptrtoint ptr %dfc_dfops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %dfc_dfops, align 4
  %cmp.i.not.i = icmp eq ptr %15, %dfc_dfops
  br i1 %cmp.i.not.i, label %if.end31.list_splice_init.exit_crit_edge, label %if.then.i

if.end31.list_splice_init.exit_crit_edge:         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %t_dfops = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 28
  %16 = ptrtoint ptr %t_dfops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %t_dfops, align 4
  %prev2.i.i = getelementptr inbounds %struct.xfs_defer_capture, ptr %dfc, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %t_dfops, ptr %prev3.i.i, align 4
  store ptr %15, ptr %t_dfops, align 4
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %17, ptr %19, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev6.i.i, align 4
  %23 = ptrtoint ptr %dfc_dfops to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %dfc_dfops, ptr %dfc_dfops, align 4
  store ptr %dfc_dfops, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %if.end31.list_splice_init.exit_crit_edge
  %dfc_tpflags = getelementptr inbounds %struct.xfs_defer_capture, ptr %dfc, i32 0, i32 2
  %24 = ptrtoint ptr %dfc_tpflags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dfc_tpflags, align 4
  %26 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %t_flags, align 4
  %or = or i32 %27, %25
  store i32 %or, ptr %t_flags, align 4
  tail call void @kvfree(ptr noundef %dfc) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_lock_two_inodes(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ilock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_defer_restore_resources(ptr noundef %tp, ptr nocapture noundef readonly %dres) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dr_inos = getelementptr inbounds %struct.xfs_defer_resources, ptr %dres, i32 0, i32 4
  %0 = ptrtoint ptr %dr_inos to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %dr_inos, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp39.not = icmp eq i16 %1, 0
  br i1 %cmp39.not, label %entry.for.cond3.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond3.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.body.for.cond3.preheader_crit_edge, %entry.for.cond3.preheader_crit_edge
  %dr_bufs = getelementptr inbounds %struct.xfs_defer_resources, ptr %dres, i32 0, i32 2
  %2 = ptrtoint ptr %dr_bufs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dr_bufs, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp641.not = icmp eq i16 %3, 0
  br i1 %cmp641.not, label %for.cond3.preheader.for.end21_crit_edge, label %for.body8.lr.ph

for.cond3.preheader.for.end21_crit_edge:          ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end21

for.body8.lr.ph:                                  ; preds = %for.cond3.preheader
  %dr_ordered = getelementptr inbounds %struct.xfs_defer_resources, ptr %dres, i32 0, i32 3
  br label %for.body8

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.xfs_defer_resources, ptr %dres, i32 0, i32 1, i32 %indvars.iv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @xfs_trans_ijoin(ptr noundef %tp, ptr noundef %5, i32 noundef 0) #10
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %6 = ptrtoint ptr %dr_inos to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %dr_inos, align 4
  %8 = zext i16 %7 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond3.preheader_crit_edge

for.body.for.cond3.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond3.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body8:                                        ; preds = %if.end.for.body8_crit_edge, %for.body8.lr.ph
  %indvars.iv43 = phi i32 [ 0, %for.body8.lr.ph ], [ %indvars.iv.next44, %if.end.for.body8_crit_edge ]
  %arrayidx10 = getelementptr [2 x ptr], ptr %dres, i32 0, i32 %indvars.iv43
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx10, align 4
  tail call void @xfs_trans_bjoin(ptr noundef %tp, ptr noundef %10) #10
  %11 = ptrtoint ptr %dr_ordered to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %dr_ordered, align 2
  %conv11 = zext i16 %12 to i32
  %shl = shl nuw i32 1, %indvars.iv43
  %and = and i32 %shl, %conv11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body8.if.end_crit_edge, label %if.then

for.body8.if.end_crit_edge:                       ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx10, align 4
  %call = tail call zeroext i1 @xfs_trans_ordered_buf(ptr noundef %tp, ptr noundef %14) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body8.if.end_crit_edge
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx10, align 4
  tail call void @xfs_trans_bhold(ptr noundef %tp, ptr noundef %16) #10
  %indvars.iv.next44 = add nuw nsw i32 %indvars.iv43, 1
  %17 = ptrtoint ptr %dr_bufs to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %dr_bufs, align 4
  %19 = zext i16 %18 to i32
  %cmp6 = icmp ult i32 %indvars.iv.next44, %19
  br i1 %cmp6, label %if.end.for.body8_crit_edge, label %if.end.for.end21_crit_edge

if.end.for.end21_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end21

if.end.for.body8_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body8

for.end21:                                        ; preds = %if.end.for.end21_crit_edge, %for.cond3.preheader.for.end21_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_defer_resources_rele(ptr nocapture noundef %dres) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dr_inos = getelementptr inbounds %struct.xfs_defer_resources, ptr %dres, i32 0, i32 4
  %0 = ptrtoint ptr %dr_inos to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %dr_inos, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp42.not = icmp eq i16 %1, 0
  br i1 %cmp42.not, label %entry.for.cond9.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond9.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %for.body.for.cond9.preheader_crit_edge, %entry.for.cond9.preheader_crit_edge
  %dr_bufs = getelementptr inbounds %struct.xfs_defer_resources, ptr %dres, i32 0, i32 2
  %2 = ptrtoint ptr %dr_bufs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dr_bufs, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp1244.not = icmp eq i16 %3, 0
  br i1 %cmp1244.not, label %for.cond9.preheader.for.end22_crit_edge, label %for.cond9.preheader.for.body14_crit_edge

for.cond9.preheader.for.body14_crit_edge:         ; preds = %for.cond9.preheader
  br label %for.body14

for.cond9.preheader.for.end22_crit_edge:          ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end22

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.xfs_defer_resources, ptr %dres, i32 0, i32 1, i32 %indvars.iv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @xfs_iunlock(ptr noundef %5, i32 noundef 4) #10
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @xfs_irele(ptr noundef %7) #10
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %9 = ptrtoint ptr %dr_inos to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %dr_inos, align 4
  %11 = zext i16 %10 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond9.preheader_crit_edge

for.body.for.cond9.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond9.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %for.cond9.preheader.for.body14_crit_edge
  %indvars.iv46 = phi i32 [ %indvars.iv.next47, %for.body14.for.body14_crit_edge ], [ 0, %for.cond9.preheader.for.body14_crit_edge ]
  %arrayidx16 = getelementptr [2 x ptr], ptr %dres, i32 0, i32 %indvars.iv46
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx16, align 4
  tail call void @xfs_buf_unlock(ptr noundef %13) #10
  tail call void @xfs_buf_rele(ptr noundef %13) #10
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx16, align 4
  %indvars.iv.next47 = add nuw nsw i32 %indvars.iv46, 1
  %15 = ptrtoint ptr %dr_bufs to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %dr_bufs, align 4
  %17 = zext i16 %16 to i32
  %cmp12 = icmp ult i32 %indvars.iv.next47, %17
  br i1 %cmp12, label %for.body14.for.body14_crit_edge, label %for.body14.for.end22_crit_edge

for.body14.for.end22_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end22

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14

for.end22:                                        ; preds = %for.body14.for.end22_crit_edge, %for.cond9.preheader.for.end22_crit_edge
  %18 = ptrtoint ptr %dr_inos to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %dr_inos, align 4
  %19 = ptrtoint ptr %dr_bufs to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %dr_bufs, align 4
  %dr_ordered = getelementptr inbounds %struct.xfs_defer_resources, ptr %dres, i32 0, i32 3
  %20 = ptrtoint ptr %dr_ordered to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %dr_ordered, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iunlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_defer_init_item_caches() local_unnamed_addr #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.12, i32 noundef 32, i32 noundef 0, i32 noundef 0, ptr noundef null) #10
  store ptr %call.i, ptr @xfs_defer_pending_cache, align 4
  %cmp.not.i.not = icmp eq ptr %call.i, null
  br i1 %cmp.not.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @xfs_rmap_intent_init_cache() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @xfs_refcount_intent_init_cache() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.err_crit_edge

if.end4.err_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @xfs_bmap_intent_init_cache() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.err_crit_edge

if.end8.err_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @xfs_extfree_intent_init_cache() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.end12.err_crit_edge

if.end12.err_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err:                                              ; preds = %if.end12.err_crit_edge, %if.end8.err_crit_edge, %if.end4.err_crit_edge, %if.end.err_crit_edge
  %error.0 = phi i32 [ %call1, %if.end.err_crit_edge ], [ %call5, %if.end4.err_crit_edge ], [ %call9, %if.end8.err_crit_edge ], [ %call13, %if.end12.err_crit_edge ]
  tail call void @xfs_defer_destroy_item_caches()
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %err ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @xfs_rmap_intent_init_cache() local_unnamed_addr #8 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @xfs_refcount_intent_init_cache() local_unnamed_addr #8 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @xfs_bmap_intent_init_cache() local_unnamed_addr #8 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @xfs_extfree_intent_init_cache() local_unnamed_addr #8 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_defer_destroy_item_caches() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xfs_extfree_intent_destroy_cache() #10
  tail call void @xfs_bmap_intent_destroy_cache() #10
  tail call void @xfs_refcount_intent_destroy_cache() #10
  tail call void @xfs_rmap_intent_destroy_cache() #10
  %0 = load ptr, ptr @xfs_defer_pending_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #10
  store ptr null, ptr @xfs_defer_pending_cache, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_extfree_intent_destroy_cache() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_bmap_intent_destroy_cache() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_refcount_intent_destroy_cache() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_rmap_intent_destroy_cache() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_defer_finish(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_defer_create_intent(ptr noundef %mp, ptr noundef %dfp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_defer_create_intent, i32 0, i32 1), ptr blockaddress(@trace_xfs_defer_create_intent, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !75

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !76

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !87
  %call42 = tail call i32 @__traceiter_xfs_defer_create_intent(ptr noundef null, ptr noundef %mp, ptr noundef %dfp) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !88
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !76

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_defer_create_intent, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_defer_create_intent, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_defer_create_intent.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_defer_create_intent.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2675, ptr noundef nonnull @.str.6) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !80
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_defer_create_intent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_defer_save_resources(ptr nocapture noundef %dres, ptr noundef %tp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %t_items = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 26
  %0 = ptrtoint ptr %t_items to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn65 = load ptr, ptr %t_items, align 8
  %cmp.not66 = icmp eq ptr %.pn65, %t_items
  br i1 %cmp.not66, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %dr_inos = getelementptr inbounds %struct.xfs_defer_resources, ptr %dres, i32 0, i32 4
  %dr_bufs = getelementptr inbounds %struct.xfs_defer_resources, ptr %dres, i32 0, i32 2
  %dr_ordered = getelementptr inbounds %struct.xfs_defer_resources, ptr %dres, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn67 = phi ptr [ %.pn65, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %li_type = getelementptr i8, ptr %.pn67, i32 24
  %1 = ptrtoint ptr %li_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %li_type, align 8
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %2, label %for.body.for.inc_crit_edge [
    i32 4668, label %sw.bb
    i32 4667, label %sw.bb20
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  %bli_flags = getelementptr i8, ptr %.pn67, i32 76
  %4 = ptrtoint ptr %bli_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bli_flags, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.for.inc_crit_edge, label %if.then

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %sw.bb
  %6 = ptrtoint ptr %dr_bufs to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %dr_bufs, align 4
  %conv = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %cmp5 = icmp ugt i16 %7, 1
  br i1 %cmp5, label %if.then.cleanup.sink.split_crit_edge, label %if.end

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.then
  %and9 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %shl = shl nuw i32 1, %conv
  %8 = ptrtoint ptr %dr_ordered to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %dr_ordered, align 2
  %10 = trunc i32 %shl to i16
  %conv15 = or i16 %9, %10
  store i16 %conv15, ptr %dr_ordered, align 2
  br label %if.end16

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %bli_buf = getelementptr i8, ptr %.pn67, i32 72
  %11 = ptrtoint ptr %bli_buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bli_buf, align 8
  tail call void @xfs_trans_dirty_buf(ptr noundef %tp, ptr noundef %12) #10
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then11
  %bli_buf17 = getelementptr i8, ptr %.pn67, i32 72
  %13 = ptrtoint ptr %bli_buf17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bli_buf17, align 8
  %15 = ptrtoint ptr %dr_bufs to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %dr_bufs, align 4
  %inc = add i16 %16, 1
  store i16 %inc, ptr %dr_bufs, align 4
  %idxprom = zext i16 %16 to i32
  %arrayidx = getelementptr [2 x ptr], ptr %dres, i32 0, i32 %idxprom
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %arrayidx, align 4
  br label %for.inc

sw.bb20:                                          ; preds = %for.body
  %ili_lock_flags = getelementptr i8, ptr %.pn67, i32 76
  %18 = ptrtoint ptr %ili_lock_flags to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %ili_lock_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp25 = icmp eq i16 %19, 0
  br i1 %cmp25, label %if.then27, label %sw.bb20.for.inc_crit_edge

sw.bb20.for.inc_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then27:                                        ; preds = %sw.bb20
  %20 = ptrtoint ptr %dr_inos to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %dr_inos, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %21)
  %cmp29 = icmp ugt i16 %21, 1
  br i1 %cmp29, label %if.then27.cleanup.sink.split_crit_edge, label %if.end32

if.then27.cleanup.sink.split_crit_edge:           ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end32:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  %ili_inode = getelementptr i8, ptr %.pn67, i32 72
  %22 = ptrtoint ptr %ili_inode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ili_inode, align 8
  tail call void @xfs_trans_log_inode(ptr noundef %tp, ptr noundef %23, i32 noundef 1) #10
  %24 = ptrtoint ptr %ili_inode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ili_inode, align 8
  %26 = ptrtoint ptr %dr_inos to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %dr_inos, align 4
  %inc35 = add i16 %27, 1
  store i16 %inc35, ptr %dr_inos, align 4
  %idxprom36 = zext i16 %27 to i32
  %arrayidx37 = getelementptr %struct.xfs_defer_resources, ptr %dres, i32 0, i32 1, i32 %idxprom36
  %28 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %arrayidx37, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end32, %sw.bb20.for.inc_crit_edge, %if.end16, %sw.bb.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %29 = ptrtoint ptr %.pn67 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn = load ptr, ptr %.pn67, align 8
  %cmp.not = icmp eq ptr %.pn, %t_items
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then27.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 263, %if.then.cleanup.sink.split_crit_edge ], [ 279, %if.then27.cleanup.sink.split_crit_edge ]
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef %.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -117, %cleanup.sink.split ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_defer_trans_roll(ptr noundef %tp, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_defer_trans_roll, i32 0, i32 1), ptr blockaddress(@trace_xfs_defer_trans_roll, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !75

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !76

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !89
  %call42 = tail call i32 @__traceiter_xfs_defer_trans_roll(ptr noundef null, ptr noundef %tp, i32 noundef %caller_ip) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !90
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !76

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_defer_trans_roll, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_defer_trans_roll, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_defer_trans_roll.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_defer_trans_roll.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2667, ptr noundef nonnull @.str.6) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !80
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_roll(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_defer_trans_roll_error(ptr noundef %tp, i32 noundef %error) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_defer_trans_roll_error, i32 0, i32 1), ptr blockaddress(@trace_xfs_defer_trans_roll_error, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !75

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !76

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !91
  %call42 = tail call i32 @__traceiter_xfs_defer_trans_roll_error(ptr noundef null, ptr noundef %tp, i32 noundef %error) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !92
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !76

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_defer_trans_roll_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_defer_trans_roll_error, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_defer_trans_roll_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_defer_trans_roll_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2672, ptr noundef nonnull @.str.6) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !80
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_dirty_buf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_log_inode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_defer_trans_roll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_defer_trans_roll_error(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_log_item_in_current_chkpt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @xlog_grant_push_threshold(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_defer_relog_intent(ptr noundef %mp, ptr noundef %dfp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_defer_relog_intent, i32 0, i32 1), ptr blockaddress(@trace_xfs_defer_relog_intent, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !75

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !76

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !93
  %call42 = tail call i32 @__traceiter_xfs_defer_relog_intent(ptr noundef null, ptr noundef %mp, ptr noundef %dfp) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !94
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !76

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_defer_relog_intent, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_defer_relog_intent, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_defer_relog_intent.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_defer_relog_intent.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2679, ptr noundef nonnull @.str.6) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !80
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_defer_relog_intent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_defer_pending_finish(ptr noundef %mp, ptr noundef %dfp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_defer_pending_finish, i32 0, i32 1), ptr blockaddress(@trace_xfs_defer_pending_finish, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !75

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !76

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !95
  %call42 = tail call i32 @__traceiter_xfs_defer_pending_finish(ptr noundef null, ptr noundef %mp, ptr noundef %dfp) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !96
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !76

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_defer_pending_finish, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_defer_pending_finish, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_defer_pending_finish.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_defer_pending_finish.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2677, ptr noundef nonnull @.str.6) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !80
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_defer_pending_finish(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_defer_finish_done(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_defer_trans_abort(ptr noundef %tp, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_defer_trans_abort, i32 0, i32 1), ptr blockaddress(@trace_xfs_defer_trans_abort, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !75

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !76

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !97
  %call42 = tail call i32 @__traceiter_xfs_defer_trans_abort(ptr noundef null, ptr noundef %tp, i32 noundef %caller_ip) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !98
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !76

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_defer_trans_abort, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_defer_trans_abort, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_defer_trans_abort.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_defer_trans_abort.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2668, ptr noundef nonnull @.str.6) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !80
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
define internal fastcc void @trace_xfs_defer_pending_abort(ptr noundef %mp, ptr noundef %dfp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_defer_pending_abort, i32 0, i32 1), ptr blockaddress(@trace_xfs_defer_pending_abort, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !75

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !76

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !99
  %call42 = tail call i32 @__traceiter_xfs_defer_pending_abort(ptr noundef null, ptr noundef %mp, ptr noundef %dfp) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !100
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !76

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_defer_pending_abort, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_defer_pending_abort, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_defer_pending_abort.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_defer_pending_abort.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2678, ptr noundef nonnull @.str.6) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !80
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_defer_trans_abort(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_defer_pending_abort(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_defer_finish_error(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_defer_cancel_list(ptr noundef %mp, ptr noundef %dfp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_defer_cancel_list, i32 0, i32 1), ptr blockaddress(@trace_xfs_defer_cancel_list, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !75

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !76

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !101
  %call42 = tail call i32 @__traceiter_xfs_defer_cancel_list(ptr noundef null, ptr noundef %mp, ptr noundef %dfp) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !102
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !76

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_defer_cancel_list, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_defer_cancel_list, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_defer_cancel_list.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_defer_cancel_list.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2676, ptr noundef nonnull @.str.6) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !80
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #10
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_defer_cancel_list(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_defer_cancel(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_rele(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_isilocked(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_hold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_ijoin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_bjoin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_trans_ordered_buf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_bhold(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !15, !16, !18, !19, !21, !22, !24, !26, !27, !29, !30, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !54, !55, !57, !58, !60, !62}
!llvm.named.register.sp = !{!64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/libxfs/xfs_defer.c", i32 494, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/libxfs/xfs_defer.c", i32 563, i32 2}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/xfs/libxfs/xfs_defer.c", i32 588, i32 2}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/xfs/libxfs/xfs_defer.c", i32 778, i32 2}
!9 = !{ptr @xfs_defer_pending_cache, !10, !"xfs_defer_pending_cache", i1 false, i1 false}
!10 = !{!"../fs/xfs/libxfs/xfs_defer.c", i32 26, i32 27}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../fs/xfs/xfs_trace.h", i32 2669, i32 1}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!15 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../fs/xfs/xfs_trace.h", i32 2675, i32 1}
!21 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/xfs/libxfs/xfs_defer.c", i32 263, i32 6}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../fs/xfs/xfs_trace.h", i32 2667, i32 1}
!26 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../fs/xfs/xfs_trace.h", i32 2672, i32 1}
!29 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/xfs/libxfs/xfs_defer.c", i32 393, i32 2}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../fs/xfs/xfs_trace.h", i32 2679, i32 1}
!34 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../fs/xfs/xfs_trace.h", i32 2677, i32 1}
!37 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../fs/xfs/xfs_trace.h", i32 2670, i32 1}
!40 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../fs/xfs/xfs_trace.h", i32 2668, i32 1}
!43 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../fs/xfs/xfs_trace.h", i32 2678, i32 1}
!46 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../fs/xfs/xfs_trace.h", i32 2673, i32 1}
!49 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!50 = !{ptr @.str.10, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/xfs/libxfs/xfs_defer.c", i32 373, i32 3}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../fs/xfs/xfs_trace.h", i32 2676, i32 1}
!54 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../fs/xfs/xfs_trace.h", i32 2666, i32 1}
!57 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!58 = !{ptr @defer_op_types, !59, !"defer_op_types", i1 false, i1 false}
!59 = !{!"../fs/xfs/libxfs/xfs_defer.c", i32 181, i32 40}
!60 = !{ptr @.str.11, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/xfs/libxfs/xfs_defer.c", i32 703, i32 3}
!62 = !{ptr @.str.12, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/xfs/libxfs/xfs_defer.c", i32 822, i32 46}
!64 = !{!"sp"}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"branch_weights", i32 1, i32 2000}
!75 = !{i64 2148270127, i64 2148270132, i64 2148270145, i64 2148270189, i64 2148270223, i64 2148270244}
!76 = !{!"branch_weights", i32 2000, i32 1}
!77 = !{i64 2162726568}
!78 = !{i64 2162726789}
!79 = !{i64 2149972220}
!80 = !{i64 2149973256}
!81 = !{i64 2162743555}
!82 = !{i64 2162743786}
!83 = !{i64 2162778025}
!84 = !{i64 2162778250}
!85 = !{i64 2162671294}
!86 = !{i64 2162671515}
!87 = !{i64 2162799453}
!88 = !{i64 2162799676}
!89 = !{i64 2162688242}
!90 = !{i64 2162688471}
!91 = !{i64 2162760763}
!92 = !{i64 2162760996}
!93 = !{i64 2162873162}
!94 = !{i64 2162873383}
!95 = !{i64 2162834196}
!96 = !{i64 2162834421}
!97 = !{i64 2162705445}
!98 = !{i64 2162705676}
!99 = !{i64 2162855756}
!100 = !{i64 2162855979}
!101 = !{i64 2162816820}
!102 = !{i64 2162817039}
