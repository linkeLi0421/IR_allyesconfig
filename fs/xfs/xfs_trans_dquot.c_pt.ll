; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_trans_dquot.c_pt.bc'
source_filename = "../fs/xfs/xfs_trans_dquot.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.4 }
%union.anon.4 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.14, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.xfs_dquot = type { %struct.list_head, ptr, i8, i16, i32, i32, i32, i64, i64, %struct.xfs_dquot_res, %struct.xfs_dquot_res, %struct.xfs_dquot_res, %struct.xfs_dq_logitem, i64, i64, [3 x i64], %struct.mutex, %struct.completion, %struct.atomic_t, %struct.wait_queue_head }
%struct.xfs_dquot_res = type { i64, i64, i64, i64, i64, i16 }
%struct.xfs_dq_logitem = type { %struct.xfs_log_item, ptr, i64 }
%struct.xfs_log_item = type { %struct.list_head, %struct.list_head, i64, ptr, ptr, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.xfs_dqtrx = type { ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.90, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.89, i16, i8, i32 }
%union.anon.89 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.llist_node = type { ptr }
%union.anon.90 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.75 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.78 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xfs_quotainfo = type { %struct.xarray, %struct.xarray, %struct.xarray, %struct.mutex, ptr, ptr, ptr, %struct.list_lru, i32, %struct.mutex, i64, i32, %struct.xfs_def_quota, %struct.xfs_def_quota, %struct.xfs_def_quota, %struct.shrinker, i64, i64 }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.xfs_def_quota = type { %struct.xfs_quota_limits, %struct.xfs_quota_limits, %struct.xfs_quota_limits }
%struct.xfs_quota_limits = type { i64, i64, i64, i16 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }

@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"XFS_DQ_IS_LOCKED(dqp)\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fs/xfs/xfs_trans_dquot.c\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dqp->q_logitem.qli_dquot == dqp\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tp\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"XFS_IS_QUOTA_ON(tp->t_mountp)\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"qtrx\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"qtrx->qt_ino_res >= qtrx->qt_ino_res_used\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"qtrx->qt_rtblk_res >= qtrx->qt_rtblk_res_used\00", [50 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dqp->q_blk.count >= -totalbdelta\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"dqp->q_rtb.count >= -totalrtbdelta\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"dqp->q_ino.count >= -qtrx->qt_icount_delta\00", [53 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"dqp->q_blk.reserved >= dqp->q_blk.count\00", [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"dqp->q_ino.reserved >= dqp->q_ino.count\00", [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"dqp->q_rtb.reserved >= dqp->q_rtb.count\00", [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"flags & XFS_QMOPT_RESBLK_MASK\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"!xfs_is_quota_inode(&mp->m_sb, ip->i_ino)\00", [54 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"xfs_isilocked(ip, XFS_ILOCK_EXCL)\00", [62 x i8] zeroinitializer }, align 32
@xfs_dqtrx_cache = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_xfs_trans_mod_dquot_before = external dso_local global %struct.tracepoint, align 4
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_trans_mod_dquot_before.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_trans_mod_dquot = external dso_local global %struct.tracepoint, align 4
@trace_xfs_trans_mod_dquot.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_trans_mod_dquot_after = external dso_local global %struct.tracepoint, align 4
@trace_xfs_trans_mod_dquot_after.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"q[0].qt_dquot != NULL\00", [42 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_trans_apply_dquot_deltas_before = external dso_local global %struct.tracepoint, align 4
@trace_xfs_trans_apply_dquot_deltas_before.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_trans_apply_dquot_deltas = external dso_local global %struct.tracepoint, align 4
@trace_xfs_trans_apply_dquot_deltas.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_trans_apply_dquot_deltas_after = external dso_local global %struct.tracepoint, align 4
@trace_xfs_trans_apply_dquot_deltas_after.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"dqp->q_blk.reserved < dqp->q_blk.count\00", [57 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"dqp->q_rtb.reserved < dqp->q_rtb.count\00", [57 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"dqp->q_ino.reserved < dqp->q_ino.count\00", [57 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/xfs/xfs_qm.h\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_dquot.h\00", [45 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 65536, i64 131072, i64 262144, i64 524288, i64 1048576, i64 2097152, i64 4194304, i64 8388608]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 3, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 33, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 34, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 193, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 194, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 207, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 238, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 252, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 262, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 399, i32 5 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 402, i32 5 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 405, i32 5 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 461, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 462, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 463, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 743, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 800, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 801, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1213, i32 1 }
@___asan_gen_.93 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 108, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 280, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 695, i32 6 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 696, i32 6 }
@___asan_gen_.105 = private constant [28 x i8] c"../fs/xfs/xfs_trans_dquot.c\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 697, i32 6 }
@___asan_gen_.108 = private unnamed_addr constant [19 x i8] c"../fs/xfs/xfs_qm.h\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 171, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_dquot.h\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 190, i32 2 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_trans_dqjoin(ptr noundef %tp, ptr noundef %dqp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %q_qlock = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 16
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %q_qlock) #7
  br i1 %call, label %entry.cond.end_crit_edge, label %cond.false, !prof !82

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 33) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %qli_dquot = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %qli_dquot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qli_dquot, align 8
  %cmp = icmp eq ptr %1, %dqp
  br i1 %cmp, label %cond.end.cond.end10_crit_edge, label %cond.false9, !prof !82

cond.end.cond.end10_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end10

cond.false9:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 34) #7
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false9, %cond.end.cond.end10_crit_edge
  %q_logitem = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 12
  tail call void @xfs_trans_add_item(ptr noundef %tp, ptr noundef %q_logitem) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_add_item(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_trans_log_dquot(ptr nocapture noundef %tp, ptr noundef %dqp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %q_qlock = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 16
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %q_qlock) #7
  br i1 %call, label %entry.cond.end_crit_edge, label %cond.false, !prof !82

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 57) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %q_id = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 4
  %0 = ptrtoint ptr %q_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %q_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %cond.end.if.end_crit_edge, label %land.lhs.true

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %2 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t_mountp, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 61
  %4 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true3

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %q_type = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 2
  %6 = ptrtoint ptr %q_type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %q_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %tobool4.not = icmp sgt i8 %7, -1
  br i1 %tobool4.not, label %if.then, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i8 %7, -128
  %8 = ptrtoint ptr %q_type to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %or, ptr %q_type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %cond.end.if.end_crit_edge
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 7
  %9 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %t_flags, align 4
  %or8 = or i32 %10, 1
  store i32 %or8, ptr %t_flags, align 4
  %li_flags = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 12, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %li_flags) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_trans_dup_dqinfo(ptr nocapture noundef readonly %otp, ptr nocapture noundef %ntp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %t_dqinfo = getelementptr inbounds %struct.xfs_trans, ptr %otp, i32 0, i32 11
  %0 = ptrtoint ptr %t_dqinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_dqinfo, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @xfs_trans_alloc_dqinfo(ptr noundef %ntp)
  %t_dqinfo2 = getelementptr inbounds %struct.xfs_trans, ptr %ntp, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc34.for.body_crit_edge, %if.end
  %j.075 = phi i32 [ 0, %if.end ], [ %inc35, %for.inc34.for.body_crit_edge ]
  %2 = ptrtoint ptr %t_dqinfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t_dqinfo, align 8
  %arrayidx = getelementptr [3 x [2 x %struct.xfs_dqtrx]], ptr %3, i32 0, i32 %j.075
  %4 = ptrtoint ptr %t_dqinfo2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %t_dqinfo2, align 8
  %arrayidx4 = getelementptr [3 x [2 x %struct.xfs_dqtrx]], ptr %5, i32 0, i32 %j.075
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %cmp10 = icmp eq ptr %7, null
  br i1 %cmp10, label %for.body.for.inc34_crit_edge, label %if.end12

for.body.for.inc34_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc34

if.end12:                                         ; preds = %for.body
  %qt_blk_res = getelementptr %struct.xfs_dqtrx, ptr %arrayidx, i32 0, i32 1
  %8 = ptrtoint ptr %qt_blk_res to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %qt_blk_res, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool15.not = icmp eq i64 %9, 0
  br i1 %tobool15.not, label %if.end12.if.end19_crit_edge, label %land.lhs.true

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %qt_bcount_delta = getelementptr %struct.xfs_dqtrx, ptr %arrayidx, i32 0, i32 2
  %10 = ptrtoint ptr %qt_bcount_delta to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %qt_bcount_delta, align 8
  %12 = tail call i64 @llvm.smax.i64(i64 %11, i64 0)
  br label %if.end19

if.end19:                                         ; preds = %land.lhs.true, %if.end12.if.end19_crit_edge
  %blk_res_used.0 = phi i64 [ 0, %if.end12.if.end19_crit_edge ], [ %12, %land.lhs.true ]
  %13 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %7, ptr %arrayidx4, align 8
  %qt_icount_delta = getelementptr %struct.xfs_dqtrx, ptr %arrayidx4, i32 0, i32 10
  %14 = ptrtoint ptr %qt_icount_delta to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %qt_icount_delta, align 8
  %qt_bcount_delta22 = getelementptr %struct.xfs_dqtrx, ptr %arrayidx4, i32 0, i32 2
  %15 = ptrtoint ptr %qt_bcount_delta22 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %qt_bcount_delta22, align 8
  %qt_rtbcount_delta = getelementptr %struct.xfs_dqtrx, ptr %arrayidx4, i32 0, i32 6
  %16 = ptrtoint ptr %qt_rtbcount_delta to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %qt_rtbcount_delta, align 8
  %17 = ptrtoint ptr %qt_blk_res to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %qt_blk_res, align 8
  %sub = sub i64 %18, %blk_res_used.0
  %qt_blk_res24 = getelementptr %struct.xfs_dqtrx, ptr %arrayidx4, i32 0, i32 1
  %19 = ptrtoint ptr %qt_blk_res24 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %sub, ptr %qt_blk_res24, align 8
  store i64 %blk_res_used.0, ptr %qt_blk_res, align 8
  %qt_rtblk_res = getelementptr %struct.xfs_dqtrx, ptr %arrayidx, i32 0, i32 4
  %20 = ptrtoint ptr %qt_rtblk_res to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %qt_rtblk_res, align 8
  %qt_rtblk_res_used = getelementptr %struct.xfs_dqtrx, ptr %arrayidx, i32 0, i32 5
  %22 = ptrtoint ptr %qt_rtblk_res_used to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %qt_rtblk_res_used, align 8
  %sub26 = sub i64 %21, %23
  %qt_rtblk_res27 = getelementptr %struct.xfs_dqtrx, ptr %arrayidx4, i32 0, i32 4
  %24 = ptrtoint ptr %qt_rtblk_res27 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %sub26, ptr %qt_rtblk_res27, align 8
  %25 = load i64, ptr %qt_rtblk_res_used, align 8
  store i64 %25, ptr %qt_rtblk_res, align 8
  %qt_ino_res = getelementptr %struct.xfs_dqtrx, ptr %arrayidx, i32 0, i32 8
  %26 = ptrtoint ptr %qt_ino_res to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %qt_ino_res, align 8
  %qt_ino_res_used = getelementptr %struct.xfs_dqtrx, ptr %arrayidx, i32 0, i32 9
  %28 = ptrtoint ptr %qt_ino_res_used to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %qt_ino_res_used, align 8
  %sub30 = sub i64 %27, %29
  %qt_ino_res31 = getelementptr %struct.xfs_dqtrx, ptr %arrayidx4, i32 0, i32 8
  %30 = ptrtoint ptr %qt_ino_res31 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %sub30, ptr %qt_ino_res31, align 8
  %31 = load i64, ptr %qt_ino_res_used, align 8
  store i64 %31, ptr %qt_ino_res, align 8
  %arrayidx9.1 = getelementptr %struct.xfs_dqtrx, ptr %arrayidx, i32 1
  %32 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx9.1, align 8
  %cmp10.1 = icmp eq ptr %33, null
  br i1 %cmp10.1, label %if.end19.for.inc34_crit_edge, label %if.end12.1

if.end19.for.inc34_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc34

if.end12.1:                                       ; preds = %if.end19
  %arrayidx14.1 = getelementptr %struct.xfs_dqtrx, ptr %arrayidx4, i32 1
  %qt_blk_res.1 = getelementptr %struct.xfs_dqtrx, ptr %arrayidx, i32 1, i32 1
  %34 = ptrtoint ptr %qt_blk_res.1 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %qt_blk_res.1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %35)
  %tobool15.not.1 = icmp eq i64 %35, 0
  br i1 %tobool15.not.1, label %if.end12.1.if.end19.1_crit_edge, label %land.lhs.true.1

if.end12.1.if.end19.1_crit_edge:                  ; preds = %if.end12.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.1

land.lhs.true.1:                                  ; preds = %if.end12.1
  call void @__sanitizer_cov_trace_pc() #9
  %qt_bcount_delta.1 = getelementptr %struct.xfs_dqtrx, ptr %arrayidx, i32 1, i32 2
  %36 = ptrtoint ptr %qt_bcount_delta.1 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %qt_bcount_delta.1, align 8
  %38 = tail call i64 @llvm.smax.i64(i64 %37, i64 0)
  br label %if.end19.1

if.end19.1:                                       ; preds = %land.lhs.true.1, %if.end12.1.if.end19.1_crit_edge
  %blk_res_used.0.1 = phi i64 [ 0, %if.end12.1.if.end19.1_crit_edge ], [ %38, %land.lhs.true.1 ]
  %39 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %33, ptr %arrayidx14.1, align 8
  %qt_icount_delta.1 = getelementptr %struct.xfs_dqtrx, ptr %arrayidx4, i32 1, i32 10
  %40 = ptrtoint ptr %qt_icount_delta.1 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 0, ptr %qt_icount_delta.1, align 8
  %qt_bcount_delta22.1 = getelementptr %struct.xfs_dqtrx, ptr %arrayidx4, i32 1, i32 2
  %41 = ptrtoint ptr %qt_bcount_delta22.1 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 0, ptr %qt_bcount_delta22.1, align 8
  %qt_rtbcount_delta.1 = getelementptr %struct.xfs_dqtrx, ptr %arrayidx4, i32 1, i32 6
  %42 = ptrtoint ptr %qt_rtbcount_delta.1 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 0, ptr %qt_rtbcount_delta.1, align 8
  %43 = ptrtoint ptr %qt_blk_res.1 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %qt_blk_res.1, align 8
  %sub.1 = sub i64 %44, %blk_res_used.0.1
  %qt_blk_res24.1 = getelementptr %struct.xfs_dqtrx, ptr %arrayidx4, i32 1, i32 1
  %45 = ptrtoint ptr %qt_blk_res24.1 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %sub.1, ptr %qt_blk_res24.1, align 8
  store i64 %blk_res_used.0.1, ptr %qt_blk_res.1, align 8
  %qt_rtblk_res.1 = getelementptr %struct.xfs_dqtrx, ptr %arrayidx, i32 1, i32 4
  %46 = ptrtoint ptr %qt_rtblk_res.1 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %qt_rtblk_res.1, align 8
  %qt_rtblk_res_used.1 = getelementptr %struct.xfs_dqtrx, ptr %arrayidx, i32 1, i32 5
  %48 = ptrtoint ptr %qt_rtblk_res_used.1 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %qt_rtblk_res_used.1, align 8
  %sub26.1 = sub i64 %47, %49
  %qt_rtblk_res27.1 = getelementptr %struct.xfs_dqtrx, ptr %arrayidx4, i32 1, i32 4
  %50 = ptrtoint ptr %qt_rtblk_res27.1 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %sub26.1, ptr %qt_rtblk_res27.1, align 8
  %51 = load i64, ptr %qt_rtblk_res_used.1, align 8
  store i64 %51, ptr %qt_rtblk_res.1, align 8
  %qt_ino_res.1 = getelementptr %struct.xfs_dqtrx, ptr %arrayidx, i32 1, i32 8
  %52 = ptrtoint ptr %qt_ino_res.1 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %qt_ino_res.1, align 8
  %qt_ino_res_used.1 = getelementptr %struct.xfs_dqtrx, ptr %arrayidx, i32 1, i32 9
  %54 = ptrtoint ptr %qt_ino_res_used.1 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %qt_ino_res_used.1, align 8
  %sub30.1 = sub i64 %53, %55
  %qt_ino_res31.1 = getelementptr %struct.xfs_dqtrx, ptr %arrayidx4, i32 1, i32 8
  %56 = ptrtoint ptr %qt_ino_res31.1 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %sub30.1, ptr %qt_ino_res31.1, align 8
  %57 = load i64, ptr %qt_ino_res_used.1, align 8
  store i64 %57, ptr %qt_ino_res.1, align 8
  br label %for.inc34

for.inc34:                                        ; preds = %if.end19.1, %if.end19.for.inc34_crit_edge, %for.body.for.inc34_crit_edge
  %inc35 = add nuw nsw i32 %j.075, 1
  %exitcond.not = icmp eq i32 %inc35, 3
  br i1 %exitcond.not, label %for.inc34.cleanup_crit_edge, label %for.inc34.for.body_crit_edge

for.inc34.for.body_crit_edge:                     ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc34.cleanup_crit_edge:                      ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc34.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_trans_alloc_dqinfo(ptr nocapture noundef writeonly %tp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_dqtrx_cache to i32))
  %0 = load ptr, ptr @xfs_dqtrx_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 36288) #7
  %t_dqinfo = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 11
  %1 = ptrtoint ptr %t_dqinfo to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %t_dqinfo, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_trans_mod_dquot_byino(ptr noundef %tp, ptr nocapture noundef readonly %ip, i32 noundef %field, i64 noundef %delta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 60
  %2 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %m_qflags, align 4
  %and = and i32 %3, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 4
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_ino, align 8
  %sb_uquotino.i = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %sb_uquotino.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sb_uquotino.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %5)
  %cmp.i = icmp eq i64 %7, %5
  br i1 %cmp.i, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.i

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %lor.lhs.false
  %sb_gquotino.i = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 33
  %8 = ptrtoint ptr %sb_gquotino.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %sb_gquotino.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %5)
  %cmp1.i = icmp eq i64 %9, %5
  br i1 %cmp1.i, label %lor.lhs.false.i.cleanup_crit_edge, label %xfs_is_quota_inode.exit

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

xfs_is_quota_inode.exit:                          ; preds = %lor.lhs.false.i
  %sb_pquotino.i = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 52
  %10 = ptrtoint ptr %sb_pquotino.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %sb_pquotino.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %5)
  %cmp2.i = icmp eq i64 %11, %5
  br i1 %cmp2.i, label %xfs_is_quota_inode.exit.cleanup_crit_edge, label %if.end

xfs_is_quota_inode.exit.cleanup_crit_edge:        ; preds = %xfs_is_quota_inode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %xfs_is_quota_inode.exit
  %and2 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %i_udquot = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 1
  %12 = ptrtoint ptr %i_udquot to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_udquot, align 4
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %land.lhs.true.if.end7_crit_edge, label %if.then5

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @xfs_trans_mod_dquot(ptr noundef %tp, ptr noundef nonnull %13, i32 noundef %field, i64 noundef %delta)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %14 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %m_qflags, align 4
  %and9 = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end7.if.end15_crit_edge, label %land.lhs.true11

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

land.lhs.true11:                                  ; preds = %if.end7
  %i_gdquot = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 2
  %16 = ptrtoint ptr %i_gdquot to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_gdquot, align 8
  %tobool12.not = icmp eq ptr %17, null
  br i1 %tobool12.not, label %land.lhs.true11.if.end15_crit_edge, label %if.then13

land.lhs.true11.if.end15_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @xfs_trans_mod_dquot(ptr noundef %tp, ptr noundef nonnull %17, i32 noundef %field, i64 noundef %delta)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %land.lhs.true11.if.end15_crit_edge, %if.end7.if.end15_crit_edge
  %18 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %m_qflags, align 4
  %and17 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end15.cleanup_crit_edge, label %land.lhs.true19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true19:                                  ; preds = %if.end15
  %i_pdquot = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 3
  %20 = ptrtoint ptr %i_pdquot to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_pdquot, align 4
  %tobool20.not = icmp eq ptr %21, null
  br i1 %tobool20.not, label %land.lhs.true19.cleanup_crit_edge, label %if.then21

land.lhs.true19.cleanup_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then21:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @xfs_trans_mod_dquot(ptr noundef %tp, ptr noundef nonnull %21, i32 noundef %field, i64 noundef %delta)
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %land.lhs.true19.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %xfs_is_quota_inode.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_trans_mod_dquot(ptr noundef %tp, ptr noundef %dqp, i32 noundef %field, i64 noundef %delta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tp, null
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !83

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 193) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 60
  %2 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %m_qflags, align 4
  %and = and i32 %3, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %cond.false11, label %cond.end.cond.end12_crit_edge, !prof !83

cond.end.cond.end12_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end12

cond.false11:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 194) #7
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %cond.end.cond.end12_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %delta)
  %tobool13.not = icmp eq i64 %delta, 0
  br i1 %tobool13.not, label %cond.end12.cleanup_crit_edge, label %if.end

cond.end12.cleanup_crit_edge:                     ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %cond.end12
  %t_dqinfo = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 11
  %4 = ptrtoint ptr %t_dqinfo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %t_dqinfo, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then14, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @xfs_trans_alloc_dqinfo(ptr noundef %tp)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end.if.end15_crit_edge
  %call = tail call fastcc ptr @xfs_trans_get_dqtrx(ptr noundef %tp, ptr noundef %dqp)
  %tobool16.not = icmp eq ptr %call, null
  br i1 %tobool16.not, label %cond.false24, label %if.end15.cond.end25_crit_edge, !prof !83

if.end15.cond.end25_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end25

cond.false24:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 207) #7
  br label %cond.end25

cond.end25:                                       ; preds = %cond.false24, %if.end15.cond.end25_crit_edge
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 8
  %cmp26 = icmp eq ptr %7, null
  br i1 %cmp26, label %if.then27, label %cond.end25.if.end29_crit_edge

cond.end25.if.end29_crit_edge:                    ; preds = %cond.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then27:                                        ; preds = %cond.end25
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dqp, ptr %call, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %cond.end25.if.end29_crit_edge
  tail call fastcc void @trace_xfs_trans_mod_dquot_before(ptr noundef %call)
  tail call fastcc void @trace_xfs_trans_mod_dquot(ptr noundef %tp, ptr noundef %dqp, i32 noundef %field, i64 noundef %delta)
  %9 = zext i32 %field to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %field, label %sw.default [
    i32 65536, label %sw.bb
    i32 8388608, label %sw.bb30
    i32 262144, label %sw.bb32
    i32 2097152, label %sw.bb34
    i32 524288, label %sw.bb36
    i32 131072, label %sw.bb56
    i32 1048576, label %sw.bb58
    i32 4194304, label %sw.bb79
  ]

sw.bb:                                            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %qt_blk_res = getelementptr inbounds %struct.xfs_dqtrx, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %qt_blk_res to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %qt_blk_res, align 8
  %add = add i64 %11, %delta
  store i64 %add, ptr %qt_blk_res, align 8
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %qt_ino_res = getelementptr inbounds %struct.xfs_dqtrx, ptr %call, i32 0, i32 8
  %12 = ptrtoint ptr %qt_ino_res to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %qt_ino_res, align 8
  %add31 = add i64 %13, %delta
  store i64 %add31, ptr %qt_ino_res, align 8
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %qt_bcount_delta = getelementptr inbounds %struct.xfs_dqtrx, ptr %call, i32 0, i32 2
  %14 = ptrtoint ptr %qt_bcount_delta to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %qt_bcount_delta, align 8
  %add33 = add i64 %15, %delta
  store i64 %add33, ptr %qt_bcount_delta, align 8
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %qt_delbcnt_delta = getelementptr inbounds %struct.xfs_dqtrx, ptr %call, i32 0, i32 3
  %16 = ptrtoint ptr %qt_delbcnt_delta to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %qt_delbcnt_delta, align 8
  %add35 = add i64 %17, %delta
  store i64 %add35, ptr %qt_delbcnt_delta, align 8
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end29
  %qt_ino_res37 = getelementptr inbounds %struct.xfs_dqtrx, ptr %call, i32 0, i32 8
  %18 = ptrtoint ptr %qt_ino_res37 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %qt_ino_res37, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool38.not = icmp ne i64 %19, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %delta)
  %cmp39 = icmp sgt i64 %delta, 0
  %or.cond = and i1 %cmp39, %tobool38.not
  br i1 %or.cond, label %if.then40, label %sw.bb36.if.end54_crit_edge

sw.bb36.if.end54_crit_edge:                       ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then40:                                        ; preds = %sw.bb36
  %qt_ino_res_used = getelementptr inbounds %struct.xfs_dqtrx, ptr %call, i32 0, i32 9
  %20 = ptrtoint ptr %qt_ino_res_used to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %qt_ino_res_used, align 8
  %add41 = add i64 %21, %delta
  store i64 %add41, ptr %qt_ino_res_used, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %add41)
  %cmp44.not = icmp ult i64 %19, %add41
  br i1 %cmp44.not, label %cond.false52, label %if.then40.if.end54_crit_edge, !prof !83

if.then40.if.end54_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

cond.false52:                                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 238) #7
  br label %if.end54

if.end54:                                         ; preds = %cond.false52, %if.then40.if.end54_crit_edge, %sw.bb36.if.end54_crit_edge
  %qt_icount_delta = getelementptr inbounds %struct.xfs_dqtrx, ptr %call, i32 0, i32 10
  %22 = ptrtoint ptr %qt_icount_delta to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %qt_icount_delta, align 8
  %add55 = add i64 %23, %delta
  store i64 %add55, ptr %qt_icount_delta, align 8
  br label %sw.epilog

sw.bb56:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %qt_rtblk_res = getelementptr inbounds %struct.xfs_dqtrx, ptr %call, i32 0, i32 4
  %24 = ptrtoint ptr %qt_rtblk_res to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %qt_rtblk_res, align 8
  %add57 = add i64 %25, %delta
  store i64 %add57, ptr %qt_rtblk_res, align 8
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end29
  %qt_rtblk_res59 = getelementptr inbounds %struct.xfs_dqtrx, ptr %call, i32 0, i32 4
  %26 = ptrtoint ptr %qt_rtblk_res59 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %qt_rtblk_res59, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %tobool60.not = icmp ne i64 %27, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %delta)
  %cmp62 = icmp sgt i64 %delta, 0
  %or.cond122 = and i1 %cmp62, %tobool60.not
  br i1 %or.cond122, label %if.then63, label %sw.bb58.if.end77_crit_edge

sw.bb58.if.end77_crit_edge:                       ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.then63:                                        ; preds = %sw.bb58
  %qt_rtblk_res_used = getelementptr inbounds %struct.xfs_dqtrx, ptr %call, i32 0, i32 5
  %28 = ptrtoint ptr %qt_rtblk_res_used to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %qt_rtblk_res_used, align 8
  %add64 = add i64 %29, %delta
  store i64 %add64, ptr %qt_rtblk_res_used, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %add64)
  %cmp67.not = icmp ult i64 %27, %add64
  br i1 %cmp67.not, label %cond.false75, label %if.then63.if.end77_crit_edge, !prof !83

if.then63.if.end77_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

cond.false75:                                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 252) #7
  br label %if.end77

if.end77:                                         ; preds = %cond.false75, %if.then63.if.end77_crit_edge, %sw.bb58.if.end77_crit_edge
  %qt_rtbcount_delta = getelementptr inbounds %struct.xfs_dqtrx, ptr %call, i32 0, i32 6
  %30 = ptrtoint ptr %qt_rtbcount_delta to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %qt_rtbcount_delta, align 8
  %add78 = add i64 %31, %delta
  store i64 %add78, ptr %qt_rtbcount_delta, align 8
  br label %sw.epilog

sw.bb79:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %qt_delrtb_delta = getelementptr inbounds %struct.xfs_dqtrx, ptr %call, i32 0, i32 7
  %32 = ptrtoint ptr %qt_delrtb_delta to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %qt_delrtb_delta, align 8
  %add80 = add i64 %33, %delta
  store i64 %add80, ptr %qt_delrtb_delta, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 262) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb79, %if.end77, %sw.bb56, %if.end54, %sw.bb34, %sw.bb32, %sw.bb30, %sw.bb
  tail call fastcc void @trace_xfs_trans_mod_dquot_after(ptr noundef %call)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %cond.end12.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xfs_trans_get_dqtrx(ptr nocapture noundef readonly %tp, ptr noundef readonly %dqp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %q_type.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 2
  %0 = ptrtoint ptr %q_type.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %q_type.i, align 4
  %2 = and i8 %1, 7
  %and.i = zext i8 %2 to i32
  %3 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %and.i, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %sw.bb1
    i32 2, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %t_dqinfo = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 11
  %4 = ptrtoint ptr %t_dqinfo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %t_dqinfo, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %t_dqinfo2 = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 11
  %6 = ptrtoint ptr %t_dqinfo2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %t_dqinfo2, align 8
  %arrayidx4 = getelementptr [3 x [2 x %struct.xfs_dqtrx]], ptr %7, i32 0, i32 1
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %t_dqinfo7 = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 11
  %8 = ptrtoint ptr %t_dqinfo7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %t_dqinfo7, align 8
  %arrayidx9 = getelementptr [3 x [2 x %struct.xfs_dqtrx]], ptr %9, i32 0, i32 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb1, %sw.bb
  %qa.0 = phi ptr [ %arrayidx9, %sw.bb6 ], [ %arrayidx4, %sw.bb1 ], [ %5, %sw.bb ]
  %10 = ptrtoint ptr %qa.0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qa.0, align 8
  %cmp12 = icmp eq ptr %11, null
  %cmp15 = icmp eq ptr %11, %dqp
  %or.cond = or i1 %cmp12, %cmp15
  br i1 %or.cond, label %sw.epilog.cleanup_crit_edge, label %for.cond

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx11.1 = getelementptr %struct.xfs_dqtrx, ptr %qa.0, i32 1
  %12 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx11.1, align 8
  %cmp12.1 = icmp eq ptr %13, null
  %cmp15.1 = icmp eq ptr %13, %dqp
  %or.cond.1 = or i1 %cmp12.1, %cmp15.1
  %spec.select = select i1 %or.cond.1, ptr %arrayidx11.1, ptr null
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %qa.0, %sw.epilog.cleanup_crit_edge ], [ %spec.select, %for.cond ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_trans_mod_dquot_before(ptr noundef %qtrx) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_mod_dquot_before, i32 0, i32 1), ptr blockaddress(@trace_xfs_trans_mod_dquot_before, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !84

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !82

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !72) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !85
  %call42 = tail call i32 @__traceiter_xfs_trans_mod_dquot_before(ptr noundef null, ptr noundef %qtrx) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !86
  %13 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !82

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !72) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !87
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_mod_dquot_before, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_mod_dquot_before, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_trans_mod_dquot_before.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_xfs_trans_mod_dquot_before.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 1213, ptr noundef nonnull @.str.20) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !88
  %31 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
define internal fastcc void @trace_xfs_trans_mod_dquot(ptr noundef %tp, ptr noundef %dqp, i32 noundef %field, i64 noundef %delta) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_mod_dquot, i32 0, i32 1), ptr blockaddress(@trace_xfs_trans_mod_dquot, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !84

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !82

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !72) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !89
  %call42 = tail call i32 @__traceiter_xfs_trans_mod_dquot(ptr noundef null, ptr noundef %tp, ptr noundef %dqp, i32 noundef %field, i64 noundef %delta) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !90
  %13 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !82

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !72) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !87
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_mod_dquot, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_mod_dquot, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_trans_mod_dquot.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_xfs_trans_mod_dquot.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 1142, ptr noundef nonnull @.str.20) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !88
  %31 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
define internal fastcc void @trace_xfs_trans_mod_dquot_after(ptr noundef %qtrx) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_mod_dquot_after, i32 0, i32 1), ptr blockaddress(@trace_xfs_trans_mod_dquot_after, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !84

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !82

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !72) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !91
  %call42 = tail call i32 @__traceiter_xfs_trans_mod_dquot_after(ptr noundef null, ptr noundef %qtrx) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !92
  %13 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !82

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !72) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !87
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_mod_dquot_after, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_mod_dquot_after, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_trans_mod_dquot_after.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_xfs_trans_mod_dquot_after.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 1214, ptr noundef nonnull @.str.20) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !88
  %31 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
define dso_local void @xfs_trans_apply_dquot_deltas(ptr noundef %tp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %t_dqinfo = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 11
  %0 = ptrtoint ptr %t_dqinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_dqinfo, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup183_crit_edge, label %for.cond.preheader

entry.cleanup183_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup183

for.cond.preheader:                               ; preds = %entry
  %t_mountp.i = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %t_flags.i = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc180.for.body_crit_edge, %for.cond.preheader
  %j.0293 = phi i32 [ 0, %for.cond.preheader ], [ %inc181, %for.inc180.for.body_crit_edge ]
  %2 = ptrtoint ptr %t_dqinfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t_dqinfo, align 8
  %arrayidx = getelementptr [3 x [2 x %struct.xfs_dqtrx]], ptr %3, i32 0, i32 %j.0293
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 8
  %cmp7 = icmp eq ptr %5, null
  br i1 %cmp7, label %for.body.for.inc180_crit_edge, label %if.end9

for.body.for.inc180_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc180

if.end9:                                          ; preds = %for.body
  tail call fastcc void @xfs_trans_dqlockedjoin(ptr noundef %tp, ptr noundef %arrayidx)
  br label %for.body12

for.body12:                                       ; preds = %for.inc.for.body12_crit_edge, %if.end9
  %cmp11 = phi i1 [ true, %if.end9 ], [ false, %for.inc.for.body12_crit_edge ]
  %i.0292 = phi i32 [ 0, %if.end9 ], [ 1, %for.inc.for.body12_crit_edge ]
  %arrayidx13 = getelementptr %struct.xfs_dqtrx, ptr %arrayidx, i32 %i.0292
  %6 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx13, align 8
  %cmp15 = icmp eq ptr %7, null
  br i1 %cmp15, label %for.body12.for.inc180_crit_edge, label %if.end17

for.body12.for.inc180_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc180

if.end17:                                         ; preds = %for.body12
  %q_qlock = getelementptr inbounds %struct.xfs_dquot, ptr %7, i32 0, i32 16
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %q_qlock) #7
  br i1 %call, label %if.end17.cond.end26_crit_edge, label %cond.false25, !prof !82

if.end17.cond.end26_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end26

cond.false25:                                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 367) #7
  br label %cond.end26

cond.end26:                                       ; preds = %cond.false25, %if.end17.cond.end26_crit_edge
  %qt_bcount_delta = getelementptr %struct.xfs_dqtrx, ptr %arrayidx, i32 %i.0292, i32 2
  %8 = ptrtoint ptr %qt_bcount_delta to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %qt_bcount_delta, align 8
  %qt_delbcnt_delta = getelementptr %struct.xfs_dqtrx, ptr %arrayidx, i32 %i.0292, i32 3
  %10 = ptrtoint ptr %qt_delbcnt_delta to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %qt_delbcnt_delta, align 8
  %add = add i64 %11, %9
  %qt_rtbcount_delta = getelementptr %struct.xfs_dqtrx, ptr %arrayidx, i32 %i.0292, i32 6
  %12 = ptrtoint ptr %qt_rtbcount_delta to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %qt_rtbcount_delta, align 8
  %qt_delrtb_delta = getelementptr %struct.xfs_dqtrx, ptr %arrayidx, i32 %i.0292, i32 7
  %14 = ptrtoint ptr %qt_delrtb_delta to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %qt_delrtb_delta, align 8
  %add27 = add i64 %15, %13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add)
  %cmp28.not = icmp eq i64 %add, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add27)
  %cmp29.not = icmp eq i64 %add27, 0
  %or.cond = select i1 %cmp28.not, i1 %cmp29.not, i1 false
  br i1 %or.cond, label %lor.lhs.false30, label %cond.end26.if.end33_crit_edge

cond.end26.if.end33_crit_edge:                    ; preds = %cond.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

lor.lhs.false30:                                  ; preds = %cond.end26
  %qt_icount_delta = getelementptr %struct.xfs_dqtrx, ptr %arrayidx, i32 %i.0292, i32 10
  %16 = ptrtoint ptr %qt_icount_delta to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %qt_icount_delta, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %cmp31.not = icmp eq i64 %17, 0
  br i1 %cmp31.not, label %lor.lhs.false30.if.end61_crit_edge, label %lor.lhs.false30.if.end33_crit_edge

lor.lhs.false30.if.end33_crit_edge:               ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

lor.lhs.false30.if.end61_crit_edge:               ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.end33:                                         ; preds = %lor.lhs.false30.if.end33_crit_edge, %cond.end26.if.end33_crit_edge
  tail call fastcc void @trace_xfs_trans_apply_dquot_deltas_before(ptr noundef nonnull %7)
  tail call fastcc void @trace_xfs_trans_apply_dquot_deltas(ptr noundef %arrayidx13)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add)
  %cmp34 = icmp slt i64 %add, 0
  br i1 %cmp34, label %if.then35, label %if.end33.if.end46_crit_edge

if.end33.if.end46_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then35:                                        ; preds = %if.end33
  %count = getelementptr inbounds %struct.xfs_dquot, ptr %7, i32 0, i32 9, i32 1
  %18 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %count, align 8
  %sub = sub i64 0, %add
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %sub)
  %cmp36.not = icmp ult i64 %19, %sub
  br i1 %cmp36.not, label %cond.false44, label %if.then35.if.end46_crit_edge, !prof !83

if.then35.if.end46_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

cond.false44:                                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 399) #7
  br label %if.end46

if.end46:                                         ; preds = %cond.false44, %if.then35.if.end46_crit_edge, %if.end33.if.end46_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add27)
  %cmp47 = icmp slt i64 %add27, 0
  br i1 %cmp47, label %if.then48, label %if.end46.if.end61_crit_edge

if.end46.if.end61_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then48:                                        ; preds = %if.end46
  %count49 = getelementptr inbounds %struct.xfs_dquot, ptr %7, i32 0, i32 11, i32 1
  %20 = ptrtoint ptr %count49 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %count49, align 8
  %sub50 = sub i64 0, %add27
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %sub50)
  %cmp51.not = icmp ult i64 %21, %sub50
  br i1 %cmp51.not, label %cond.false59, label %if.then48.if.end61_crit_edge, !prof !83

if.then48.if.end61_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

cond.false59:                                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 402) #7
  br label %if.end61

if.end61:                                         ; preds = %cond.false59, %if.then48.if.end61_crit_edge, %if.end46.if.end61_crit_edge, %lor.lhs.false30.if.end61_crit_edge
  %qt_icount_delta62 = getelementptr %struct.xfs_dqtrx, ptr %arrayidx, i32 %i.0292, i32 10
  %22 = ptrtoint ptr %qt_icount_delta62 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %qt_icount_delta62, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %cmp63 = icmp slt i64 %23, 0
  br i1 %cmp63, label %if.then64, label %if.end61.if.end78_crit_edge

if.end61.if.end78_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.then64:                                        ; preds = %if.end61
  %count65 = getelementptr inbounds %struct.xfs_dquot, ptr %7, i32 0, i32 10, i32 1
  %24 = ptrtoint ptr %count65 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %count65, align 8
  %sub67 = sub i64 0, %23
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %sub67)
  %cmp68.not = icmp ult i64 %25, %sub67
  br i1 %cmp68.not, label %cond.false76, label %if.then64.if.end78_crit_edge, !prof !83

if.then64.if.end78_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

cond.false76:                                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 405) #7
  br label %if.end78

if.end78:                                         ; preds = %cond.false76, %if.then64.if.end78_crit_edge, %if.end61.if.end78_crit_edge
  br i1 %cmp28.not, label %if.end78.if.end84_crit_edge, label %if.then80

if.end78.if.end84_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.then80:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  %count82 = getelementptr inbounds %struct.xfs_dquot, ptr %7, i32 0, i32 9, i32 1
  %26 = ptrtoint ptr %count82 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %count82, align 8
  %add83 = add i64 %27, %add
  store i64 %add83, ptr %count82, align 8
  br label %if.end84

if.end84:                                         ; preds = %if.then80, %if.end78.if.end84_crit_edge
  %28 = ptrtoint ptr %qt_icount_delta62 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %qt_icount_delta62, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %tobool86.not = icmp eq i64 %29, 0
  br i1 %tobool86.not, label %if.end84.if.end92_crit_edge, label %if.then87

if.end84.if.end92_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  %count90 = getelementptr inbounds %struct.xfs_dquot, ptr %7, i32 0, i32 10, i32 1
  %30 = ptrtoint ptr %count90 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %count90, align 8
  %add91 = add i64 %31, %29
  store i64 %add91, ptr %count90, align 8
  br label %if.end92

if.end92:                                         ; preds = %if.then87, %if.end84.if.end92_crit_edge
  br i1 %cmp29.not, label %if.end98, label %if.end98.thread

if.end98.thread:                                  ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  %count96 = getelementptr inbounds %struct.xfs_dquot, ptr %7, i32 0, i32 11, i32 1
  %32 = ptrtoint ptr %count96 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %count96, align 8
  %add97 = add i64 %33, %add27
  store i64 %add97, ptr %count96, align 8
  br label %if.then105

if.end98:                                         ; preds = %if.end92
  br i1 %cmp28.not, label %lor.lhs.false102, label %if.end98.if.then105_crit_edge

if.end98.if.then105_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then105

lor.lhs.false102:                                 ; preds = %if.end98
  %34 = ptrtoint ptr %qt_icount_delta62 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %qt_icount_delta62, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %35)
  %cmp104.not = icmp eq i64 %35, 0
  br i1 %cmp104.not, label %lor.lhs.false102.if.end106_crit_edge, label %lor.lhs.false102.if.then105_crit_edge

lor.lhs.false102.if.then105_crit_edge:            ; preds = %lor.lhs.false102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then105

lor.lhs.false102.if.end106_crit_edge:             ; preds = %lor.lhs.false102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

if.then105:                                       ; preds = %lor.lhs.false102.if.then105_crit_edge, %if.end98.if.then105_crit_edge, %if.end98.thread
  tail call fastcc void @trace_xfs_trans_apply_dquot_deltas_after(ptr noundef nonnull %7)
  br label %if.end106

if.end106:                                        ; preds = %if.then105, %lor.lhs.false102.if.end106_crit_edge
  %q_id = getelementptr inbounds %struct.xfs_dquot, ptr %7, i32 0, i32 4
  %36 = ptrtoint ptr %q_id to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %q_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool107.not = icmp eq i32 %37, 0
  br i1 %tobool107.not, label %if.end106.if.end109_crit_edge, label %if.then108

if.end106.if.end109_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

if.then108:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @xfs_qm_adjust_dqlimits(ptr noundef nonnull %7) #7
  tail call void @xfs_qm_adjust_dqtimers(ptr noundef nonnull %7) #7
  br label %if.end109

if.end109:                                        ; preds = %if.then108, %if.end106.if.end109_crit_edge
  %q_flags = getelementptr inbounds %struct.xfs_dquot, ptr %7, i32 0, i32 3
  %38 = ptrtoint ptr %q_flags to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %q_flags, align 2
  %40 = or i16 %39, 1
  store i16 %40, ptr %q_flags, align 2
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %q_qlock) #7
  br i1 %call.i, label %if.end109.cond.end.i_crit_edge, label %cond.false.i, !prof !82

if.end109.cond.end.i_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 57) #7
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end109.cond.end.i_crit_edge
  %41 = ptrtoint ptr %q_id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %q_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.not.i = icmp eq i32 %42, 0
  br i1 %cmp.not.i, label %cond.end.i.xfs_trans_log_dquot.exit_crit_edge, label %land.lhs.true.i

cond.end.i.xfs_trans_log_dquot.exit_crit_edge:    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfs_trans_log_dquot.exit

land.lhs.true.i:                                  ; preds = %cond.end.i
  %43 = ptrtoint ptr %t_mountp.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %t_mountp.i, align 4
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %44, i32 0, i32 61
  %45 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %46, 16777216
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i.xfs_trans_log_dquot.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.xfs_trans_log_dquot.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfs_trans_log_dquot.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %q_type.i = getelementptr inbounds %struct.xfs_dquot, ptr %7, i32 0, i32 2
  %47 = ptrtoint ptr %q_type.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %q_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %48)
  %tobool4.not.i = icmp sgt i8 %48, -1
  br i1 %tobool4.not.i, label %if.then.i, label %land.lhs.true3.i.xfs_trans_log_dquot.exit_crit_edge

land.lhs.true3.i.xfs_trans_log_dquot.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfs_trans_log_dquot.exit

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i8 %48, -128
  %49 = ptrtoint ptr %q_type.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %or.i, ptr %q_type.i, align 4
  br label %xfs_trans_log_dquot.exit

xfs_trans_log_dquot.exit:                         ; preds = %if.then.i, %land.lhs.true3.i.xfs_trans_log_dquot.exit_crit_edge, %land.lhs.true.i.xfs_trans_log_dquot.exit_crit_edge, %cond.end.i.xfs_trans_log_dquot.exit_crit_edge
  %50 = ptrtoint ptr %t_flags.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %t_flags.i, align 4
  %or8.i = or i32 %51, 1
  store i32 %or8.i, ptr %t_flags.i, align 4
  %li_flags.i = getelementptr inbounds %struct.xfs_dquot, ptr %7, i32 0, i32 12, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %li_flags.i) #7
  %52 = ptrtoint ptr %qt_bcount_delta to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %qt_bcount_delta, align 8
  %q_blk117 = getelementptr inbounds %struct.xfs_dquot, ptr %7, i32 0, i32 9
  %qt_blk_res = getelementptr %struct.xfs_dqtrx, ptr %arrayidx, i32 %i.0292, i32 1
  %54 = ptrtoint ptr %qt_blk_res to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %qt_blk_res, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %55)
  %cmp.not.i261 = icmp eq i64 %55, 0
  br i1 %cmp.not.i261, label %if.else.i, label %if.then.i262

if.then.i262:                                     ; preds = %xfs_trans_log_dquot.exit
  call void @__sanitizer_cov_trace_pc() #9
  %56 = tail call i64 @llvm.smax.i64(i64 %53, i64 0)
  %sub.i = sub i64 %55, %56
  %57 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #7
  %58 = ptrtoint ptr %q_blk117 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %q_blk117, align 8
  %sub4.i = sub i64 %59, %57
  br label %if.end8.sink.split.i

if.else.i:                                        ; preds = %xfs_trans_log_dquot.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %53)
  %cmp5.not.i = icmp eq i64 %53, 0
  br i1 %cmp5.not.i, label %if.else.i.xfs_apply_quota_reservation_deltas.exit_crit_edge, label %if.then6.i

if.else.i.xfs_apply_quota_reservation_deltas.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfs_apply_quota_reservation_deltas.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %q_blk117 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %q_blk117, align 8
  %add.i = add i64 %61, %53
  br label %if.end8.sink.split.i

if.end8.sink.split.i:                             ; preds = %if.then6.i, %if.then.i262
  %add.sink.i = phi i64 [ %add.i, %if.then6.i ], [ %sub4.i, %if.then.i262 ]
  %62 = ptrtoint ptr %q_blk117 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %add.sink.i, ptr %q_blk117, align 8
  br label %xfs_apply_quota_reservation_deltas.exit

xfs_apply_quota_reservation_deltas.exit:          ; preds = %if.end8.sink.split.i, %if.else.i.xfs_apply_quota_reservation_deltas.exit_crit_edge
  %q_rtb119 = getelementptr inbounds %struct.xfs_dquot, ptr %7, i32 0, i32 11
  %qt_rtblk_res = getelementptr %struct.xfs_dqtrx, ptr %arrayidx, i32 %i.0292, i32 4
  %63 = ptrtoint ptr %qt_rtblk_res to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %qt_rtblk_res, align 8
  %65 = ptrtoint ptr %qt_rtbcount_delta to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %qt_rtbcount_delta, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %64)
  %cmp.not.i263 = icmp eq i64 %64, 0
  br i1 %cmp.not.i263, label %if.else.i268, label %if.then.i266

if.then.i266:                                     ; preds = %xfs_apply_quota_reservation_deltas.exit
  call void @__sanitizer_cov_trace_pc() #9
  %qt_rtblk_res_used = getelementptr %struct.xfs_dqtrx, ptr %arrayidx, i32 %i.0292, i32 5
  %67 = ptrtoint ptr %qt_rtblk_res_used to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %qt_rtblk_res_used, align 8
  %sub.i264 = sub i64 %64, %68
  %69 = tail call i64 @llvm.abs.i64(i64 %sub.i264, i1 false) #7
  %70 = ptrtoint ptr %q_rtb119 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %q_rtb119, align 8
  %sub4.i265 = sub i64 %71, %69
  br label %if.end8.sink.split.i272

if.else.i268:                                     ; preds = %xfs_apply_quota_reservation_deltas.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %66)
  %cmp5.not.i267 = icmp eq i64 %66, 0
  br i1 %cmp5.not.i267, label %if.else.i268.xfs_apply_quota_reservation_deltas.exit273_crit_edge, label %if.then6.i270

if.else.i268.xfs_apply_quota_reservation_deltas.exit273_crit_edge: ; preds = %if.else.i268
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfs_apply_quota_reservation_deltas.exit273

if.then6.i270:                                    ; preds = %if.else.i268
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %q_rtb119 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %q_rtb119, align 8
  %add.i269 = add i64 %73, %66
  br label %if.end8.sink.split.i272

if.end8.sink.split.i272:                          ; preds = %if.then6.i270, %if.then.i266
  %add.sink.i271 = phi i64 [ %add.i269, %if.then6.i270 ], [ %sub4.i265, %if.then.i266 ]
  %74 = ptrtoint ptr %q_rtb119 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %add.sink.i271, ptr %q_rtb119, align 8
  br label %xfs_apply_quota_reservation_deltas.exit273

xfs_apply_quota_reservation_deltas.exit273:       ; preds = %if.end8.sink.split.i272, %if.else.i268.xfs_apply_quota_reservation_deltas.exit273_crit_edge
  %qt_ino_res = getelementptr %struct.xfs_dqtrx, ptr %arrayidx, i32 %i.0292, i32 8
  %75 = ptrtoint ptr %qt_ino_res to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %qt_ino_res, align 8
  %qt_ino_res_used = getelementptr %struct.xfs_dqtrx, ptr %arrayidx, i32 %i.0292, i32 9
  %77 = ptrtoint ptr %qt_ino_res_used to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %qt_ino_res_used, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %76, i64 %78)
  %cmp121.not = icmp ult i64 %76, %78
  br i1 %cmp121.not, label %cond.false130, label %xfs_apply_quota_reservation_deltas.exit273.cond.end131_crit_edge, !prof !83

xfs_apply_quota_reservation_deltas.exit273.cond.end131_crit_edge: ; preds = %xfs_apply_quota_reservation_deltas.exit273
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end131

cond.false130:                                    ; preds = %xfs_apply_quota_reservation_deltas.exit273
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 455) #7
  %79 = ptrtoint ptr %qt_ino_res to i32
  call void @__asan_load8_noabort(i32 %79)
  %.pr = load i64, ptr %qt_ino_res, align 8
  br label %cond.end131

cond.end131:                                      ; preds = %cond.false130, %xfs_apply_quota_reservation_deltas.exit273.cond.end131_crit_edge
  %80 = phi i64 [ %76, %xfs_apply_quota_reservation_deltas.exit273.cond.end131_crit_edge ], [ %.pr, %cond.false130 ]
  %q_ino132 = getelementptr inbounds %struct.xfs_dquot, ptr %7, i32 0, i32 10
  %81 = ptrtoint ptr %qt_icount_delta62 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %qt_icount_delta62, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %80)
  %cmp.not.i274 = icmp eq i64 %80, 0
  br i1 %cmp.not.i274, label %if.else.i279, label %if.then.i277

if.then.i277:                                     ; preds = %cond.end131
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %qt_ino_res_used to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %qt_ino_res_used, align 8
  %sub.i275 = sub i64 %80, %84
  %85 = tail call i64 @llvm.abs.i64(i64 %sub.i275, i1 false) #7
  %86 = ptrtoint ptr %q_ino132 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %q_ino132, align 8
  %sub4.i276 = sub i64 %87, %85
  br label %if.end8.sink.split.i283

if.else.i279:                                     ; preds = %cond.end131
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %82)
  %cmp5.not.i278 = icmp eq i64 %82, 0
  br i1 %cmp5.not.i278, label %if.else.i279.xfs_apply_quota_reservation_deltas.exit284_crit_edge, label %if.then6.i281

if.else.i279.xfs_apply_quota_reservation_deltas.exit284_crit_edge: ; preds = %if.else.i279
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfs_apply_quota_reservation_deltas.exit284

if.then6.i281:                                    ; preds = %if.else.i279
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %q_ino132 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %q_ino132, align 8
  %add.i280 = add i64 %89, %82
  br label %if.end8.sink.split.i283

if.end8.sink.split.i283:                          ; preds = %if.then6.i281, %if.then.i277
  %add.sink.i282 = phi i64 [ %add.i280, %if.then6.i281 ], [ %sub4.i276, %if.then.i277 ]
  %90 = ptrtoint ptr %q_ino132 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %add.sink.i282, ptr %q_ino132, align 8
  br label %xfs_apply_quota_reservation_deltas.exit284

xfs_apply_quota_reservation_deltas.exit284:       ; preds = %if.end8.sink.split.i283, %if.else.i279.xfs_apply_quota_reservation_deltas.exit284_crit_edge
  %91 = ptrtoint ptr %q_blk117 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %q_blk117, align 8
  %count138 = getelementptr inbounds %struct.xfs_dquot, ptr %7, i32 0, i32 9, i32 1
  %93 = ptrtoint ptr %count138 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %count138, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %92, i64 %94)
  %cmp139.not = icmp ult i64 %92, %94
  br i1 %cmp139.not, label %cond.false148, label %xfs_apply_quota_reservation_deltas.exit284.cond.end149_crit_edge, !prof !83

xfs_apply_quota_reservation_deltas.exit284.cond.end149_crit_edge: ; preds = %xfs_apply_quota_reservation_deltas.exit284
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end149

cond.false148:                                    ; preds = %xfs_apply_quota_reservation_deltas.exit284
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 461) #7
  br label %cond.end149

cond.end149:                                      ; preds = %cond.false148, %xfs_apply_quota_reservation_deltas.exit284.cond.end149_crit_edge
  %95 = ptrtoint ptr %q_ino132 to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %q_ino132, align 8
  %count153 = getelementptr inbounds %struct.xfs_dquot, ptr %7, i32 0, i32 10, i32 1
  %97 = ptrtoint ptr %count153 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %count153, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %96, i64 %98)
  %cmp154.not = icmp ult i64 %96, %98
  br i1 %cmp154.not, label %cond.false163, label %cond.end149.cond.end164_crit_edge, !prof !83

cond.end149.cond.end164_crit_edge:                ; preds = %cond.end149
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end164

cond.false163:                                    ; preds = %cond.end149
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 462) #7
  br label %cond.end164

cond.end164:                                      ; preds = %cond.false163, %cond.end149.cond.end164_crit_edge
  %99 = ptrtoint ptr %q_rtb119 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %q_rtb119, align 8
  %count168 = getelementptr inbounds %struct.xfs_dquot, ptr %7, i32 0, i32 11, i32 1
  %101 = ptrtoint ptr %count168 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %count168, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %100, i64 %102)
  %cmp169.not = icmp ult i64 %100, %102
  br i1 %cmp169.not, label %cond.false178, label %cond.end164.for.inc_crit_edge, !prof !83

cond.end164.for.inc_crit_edge:                    ; preds = %cond.end164
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

cond.false178:                                    ; preds = %cond.end164
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 463) #7
  br label %for.inc

for.inc:                                          ; preds = %cond.false178, %cond.end164.for.inc_crit_edge
  br i1 %cmp11, label %for.inc.for.body12_crit_edge, label %for.inc.for.inc180_crit_edge

for.inc.for.inc180_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc180

for.inc.for.body12_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body12

for.inc180:                                       ; preds = %for.inc.for.inc180_crit_edge, %for.body12.for.inc180_crit_edge, %for.body.for.inc180_crit_edge
  %inc181 = add nuw nsw i32 %j.0293, 1
  %exitcond.not = icmp eq i32 %inc181, 3
  br i1 %exitcond.not, label %for.inc180.cleanup183_crit_edge, label %for.inc180.for.body_crit_edge

for.inc180.for.body_crit_edge:                    ; preds = %for.inc180
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc180.cleanup183_crit_edge:                  ; preds = %for.inc180
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup183

cleanup183:                                       ; preds = %for.inc180.cleanup183_crit_edge, %entry.cleanup183_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_trans_dqlockedjoin(ptr noundef %tp, ptr nocapture noundef readonly %q) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q, align 8
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !83

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 280) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %arrayidx2 = getelementptr %struct.xfs_dqtrx, ptr %q, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 8
  %cmp4 = icmp eq ptr %3, null
  %4 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %q, align 8
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %q_qlock.i = getelementptr inbounds %struct.xfs_dquot, ptr %5, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %q_qlock.i, i32 noundef 0) #7
  %6 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %q, align 8
  %q_qlock.i26 = getelementptr inbounds %struct.xfs_dquot, ptr %7, i32 0, i32 16
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %q_qlock.i26) #7
  br i1 %call.i, label %if.then.cond.end.i_crit_edge, label %cond.false.i, !prof !82

if.then.cond.end.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 33) #7
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.then.cond.end.i_crit_edge
  %qli_dquot.i = getelementptr inbounds %struct.xfs_dquot, ptr %7, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %qli_dquot.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qli_dquot.i, align 8
  %cmp.i = icmp eq ptr %9, %7
  br i1 %cmp.i, label %cond.end.i.if.end_crit_edge, label %cond.end.i.if.end.sink.split_crit_edge, !prof !82

cond.end.i.if.end.sink.split_crit_edge:           ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split

cond.end.i.if.end_crit_edge:                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %cond.end
  tail call void @xfs_dqlock2(ptr noundef %5, ptr noundef nonnull %3) #7
  %10 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %q, align 8
  %q_qlock.i27 = getelementptr inbounds %struct.xfs_dquot, ptr %11, i32 0, i32 16
  %call.i28 = tail call zeroext i1 @mutex_is_locked(ptr noundef %q_qlock.i27) #7
  br i1 %call.i28, label %if.else.cond.end.i32_crit_edge, label %cond.false.i29, !prof !82

if.else.cond.end.i32_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i32

cond.false.i29:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 33) #7
  br label %cond.end.i32

cond.end.i32:                                     ; preds = %cond.false.i29, %if.else.cond.end.i32_crit_edge
  %qli_dquot.i30 = getelementptr inbounds %struct.xfs_dquot, ptr %11, i32 0, i32 12, i32 1
  %12 = ptrtoint ptr %qli_dquot.i30 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %qli_dquot.i30, align 8
  %cmp.i31 = icmp eq ptr %13, %11
  br i1 %cmp.i31, label %cond.end.i32.xfs_trans_dqjoin.exit35_crit_edge, label %cond.false9.i33, !prof !82

cond.end.i32.xfs_trans_dqjoin.exit35_crit_edge:   ; preds = %cond.end.i32
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfs_trans_dqjoin.exit35

cond.false9.i33:                                  ; preds = %cond.end.i32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 34) #7
  br label %xfs_trans_dqjoin.exit35

xfs_trans_dqjoin.exit35:                          ; preds = %cond.false9.i33, %cond.end.i32.xfs_trans_dqjoin.exit35_crit_edge
  %q_logitem.i34 = getelementptr inbounds %struct.xfs_dquot, ptr %11, i32 0, i32 12
  tail call void @xfs_trans_add_item(ptr noundef %tp, ptr noundef %q_logitem.i34) #7
  %14 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx2, align 8
  %q_qlock.i36 = getelementptr inbounds %struct.xfs_dquot, ptr %15, i32 0, i32 16
  %call.i37 = tail call zeroext i1 @mutex_is_locked(ptr noundef %q_qlock.i36) #7
  br i1 %call.i37, label %xfs_trans_dqjoin.exit35.cond.end.i41_crit_edge, label %cond.false.i38, !prof !82

xfs_trans_dqjoin.exit35.cond.end.i41_crit_edge:   ; preds = %xfs_trans_dqjoin.exit35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i41

cond.false.i38:                                   ; preds = %xfs_trans_dqjoin.exit35
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 33) #7
  br label %cond.end.i41

cond.end.i41:                                     ; preds = %cond.false.i38, %xfs_trans_dqjoin.exit35.cond.end.i41_crit_edge
  %qli_dquot.i39 = getelementptr inbounds %struct.xfs_dquot, ptr %15, i32 0, i32 12, i32 1
  %16 = ptrtoint ptr %qli_dquot.i39 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %qli_dquot.i39, align 8
  %cmp.i40 = icmp eq ptr %17, %15
  br i1 %cmp.i40, label %cond.end.i41.if.end_crit_edge, label %cond.end.i41.if.end.sink.split_crit_edge, !prof !82

cond.end.i41.if.end.sink.split_crit_edge:         ; preds = %cond.end.i41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split

cond.end.i41.if.end_crit_edge:                    ; preds = %cond.end.i41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.sink.split:                                ; preds = %cond.end.i41.if.end.sink.split_crit_edge, %cond.end.i.if.end.sink.split_crit_edge
  %.sink.ph = phi ptr [ %7, %cond.end.i.if.end.sink.split_crit_edge ], [ %15, %cond.end.i41.if.end.sink.split_crit_edge ]
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 34) #7
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %cond.end.i41.if.end_crit_edge, %cond.end.i.if.end_crit_edge
  %.sink = phi ptr [ %7, %cond.end.i.if.end_crit_edge ], [ %15, %cond.end.i41.if.end_crit_edge ], [ %.sink.ph, %if.end.sink.split ]
  %q_logitem.i43 = getelementptr inbounds %struct.xfs_dquot, ptr %.sink, i32 0, i32 12
  tail call void @xfs_trans_add_item(ptr noundef %tp, ptr noundef %q_logitem.i43) #7
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_trans_apply_dquot_deltas_before(ptr noundef %dqp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_apply_dquot_deltas_before, i32 0, i32 1), ptr blockaddress(@trace_xfs_trans_apply_dquot_deltas_before, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !84

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !82

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !72) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !93
  %call42 = tail call i32 @__traceiter_xfs_trans_apply_dquot_deltas_before(ptr noundef null, ptr noundef %dqp) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !94
  %13 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !82

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !72) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !87
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_apply_dquot_deltas_before, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_apply_dquot_deltas_before, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_trans_apply_dquot_deltas_before.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_xfs_trans_apply_dquot_deltas_before.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 1096, ptr noundef nonnull @.str.20) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !88
  %31 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
define internal fastcc void @trace_xfs_trans_apply_dquot_deltas(ptr noundef %qtrx) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_apply_dquot_deltas, i32 0, i32 1), ptr blockaddress(@trace_xfs_trans_apply_dquot_deltas, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !84

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !82

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !72) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !95
  %call42 = tail call i32 @__traceiter_xfs_trans_apply_dquot_deltas(ptr noundef null, ptr noundef %qtrx) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !96
  %13 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !82

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !72) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !87
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_apply_dquot_deltas, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_apply_dquot_deltas, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_trans_apply_dquot_deltas.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_xfs_trans_apply_dquot_deltas.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 1212, ptr noundef nonnull @.str.20) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !88
  %31 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
define internal fastcc void @trace_xfs_trans_apply_dquot_deltas_after(ptr noundef %dqp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_apply_dquot_deltas_after, i32 0, i32 1), ptr blockaddress(@trace_xfs_trans_apply_dquot_deltas_after, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !84

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !82

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !72) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !97
  %call42 = tail call i32 @__traceiter_xfs_trans_apply_dquot_deltas_after(ptr noundef null, ptr noundef %dqp) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !98
  %13 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !82

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !72) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !87
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_apply_dquot_deltas_after, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_apply_dquot_deltas_after, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_trans_apply_dquot_deltas_after.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_xfs_trans_apply_dquot_deltas_after.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 1097, ptr noundef nonnull @.str.20) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !88
  %31 = tail call i32 @llvm.read_register.i32(metadata !72) #7
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
declare dso_local void @xfs_qm_adjust_dqlimits(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_qm_adjust_dqtimers(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_trans_unreserve_and_mod_dquots(ptr nocapture noundef readonly %tp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %t_dqinfo = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 11
  %0 = ptrtoint ptr %t_dqinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_dqinfo, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.inc34.for.body_crit_edge, %entry.for.body_crit_edge
  %j.078 = phi i32 [ %inc35, %for.inc34.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %t_dqinfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t_dqinfo, align 8
  %arrayidx = getelementptr [3 x [2 x %struct.xfs_dqtrx]], ptr %3, i32 0, i32 %j.078
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 8
  %cmp6 = icmp eq ptr %5, null
  br i1 %cmp6, label %for.body.for.inc34_crit_edge, label %if.end8

for.body.for.inc34_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc34

if.end8:                                          ; preds = %for.body
  %qt_blk_res = getelementptr %struct.xfs_dqtrx, ptr %arrayidx, i32 0, i32 1
  %6 = ptrtoint ptr %qt_blk_res to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %qt_blk_res, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool9.not = icmp eq i64 %7, 0
  br i1 %tobool9.not, label %if.end12, label %if.end12.thread

if.end12:                                         ; preds = %if.end8
  %qt_ino_res = getelementptr %struct.xfs_dqtrx, ptr %arrayidx, i32 0, i32 8
  %8 = ptrtoint ptr %qt_ino_res to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %qt_ino_res, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool13.not = icmp eq i64 %9, 0
  br i1 %tobool13.not, label %if.end21.thread, label %if.then16

if.end12.thread:                                  ; preds = %if.end8
  %q_qlock.i = getelementptr inbounds %struct.xfs_dquot, ptr %5, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %q_qlock.i, i32 noundef 0) #7
  %10 = ptrtoint ptr %qt_blk_res to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %qt_blk_res, align 8
  %q_blk = getelementptr inbounds %struct.xfs_dquot, ptr %5, i32 0, i32 9
  %12 = ptrtoint ptr %q_blk to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %q_blk, align 8
  %sub = sub i64 %13, %11
  store i64 %sub, ptr %q_blk, align 8
  %qt_ino_res69 = getelementptr %struct.xfs_dqtrx, ptr %arrayidx, i32 0, i32 8
  %14 = ptrtoint ptr %qt_ino_res69 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %qt_ino_res69, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool13.not70 = icmp eq i64 %15, 0
  br i1 %tobool13.not70, label %if.end12.thread.if.end21_crit_edge, label %if.end12.thread.if.end17_crit_edge

if.end12.thread.if.end17_crit_edge:               ; preds = %if.end12.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.end12.thread.if.end21_crit_edge:               ; preds = %if.end12.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %q_qlock.i66 = getelementptr inbounds %struct.xfs_dquot, ptr %5, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %q_qlock.i66, i32 noundef 0) #7
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end12.thread.if.end17_crit_edge
  %qt_ino_res7173 = phi ptr [ %qt_ino_res, %if.then16 ], [ %qt_ino_res69, %if.end12.thread.if.end17_crit_edge ]
  %16 = ptrtoint ptr %qt_ino_res7173 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %qt_ino_res7173, align 8
  %q_ino = getelementptr inbounds %struct.xfs_dquot, ptr %5, i32 0, i32 10
  %18 = ptrtoint ptr %q_ino to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %q_ino, align 8
  %sub20 = sub i64 %19, %17
  store i64 %sub20, ptr %q_ino, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.end17, %if.end12.thread.if.end21_crit_edge
  %qt_rtblk_res = getelementptr %struct.xfs_dqtrx, ptr %arrayidx, i32 0, i32 4
  %20 = ptrtoint ptr %qt_rtblk_res to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %qt_rtblk_res, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %tobool22.not = icmp eq i64 %21, 0
  br i1 %tobool22.not, label %if.end21.if.then32_crit_edge, label %if.end21.if.end30.thread_crit_edge

if.end21.if.end30.thread_crit_edge:               ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.thread

if.end21.if.then32_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then32

if.end21.thread:                                  ; preds = %if.end12
  %qt_rtblk_res80 = getelementptr %struct.xfs_dqtrx, ptr %arrayidx, i32 0, i32 4
  %22 = ptrtoint ptr %qt_rtblk_res80 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %qt_rtblk_res80, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %tobool22.not81 = icmp eq i64 %23, 0
  br i1 %tobool22.not81, label %if.end21.thread.for.inc_crit_edge, label %if.then25

if.end21.thread.for.inc_crit_edge:                ; preds = %if.end21.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then25:                                        ; preds = %if.end21.thread
  call void @__sanitizer_cov_trace_pc() #9
  %q_qlock.i67 = getelementptr inbounds %struct.xfs_dquot, ptr %5, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %q_qlock.i67, i32 noundef 0) #7
  br label %if.end30.thread

if.end30.thread:                                  ; preds = %if.then25, %if.end21.if.end30.thread_crit_edge
  %qt_rtblk_res8488 = phi ptr [ %qt_rtblk_res80, %if.then25 ], [ %qt_rtblk_res, %if.end21.if.end30.thread_crit_edge ]
  %24 = ptrtoint ptr %qt_rtblk_res8488 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %qt_rtblk_res8488, align 8
  %q_rtb = getelementptr inbounds %struct.xfs_dquot, ptr %5, i32 0, i32 11
  %26 = ptrtoint ptr %q_rtb to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %q_rtb, align 8
  %sub29 = sub i64 %27, %25
  store i64 %sub29, ptr %q_rtb, align 8
  br label %if.then32

if.then32:                                        ; preds = %if.end30.thread, %if.end21.if.then32_crit_edge
  %q_qlock.i68 = getelementptr inbounds %struct.xfs_dquot, ptr %5, i32 0, i32 16
  tail call void @mutex_unlock(ptr noundef %q_qlock.i68) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then32, %if.end21.thread.for.inc_crit_edge
  %arrayidx5.1 = getelementptr %struct.xfs_dqtrx, ptr %arrayidx, i32 1
  %28 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx5.1, align 8
  %cmp6.1 = icmp eq ptr %29, null
  br i1 %cmp6.1, label %for.inc.for.inc34_crit_edge, label %if.end8.1

for.inc.for.inc34_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc34

if.end8.1:                                        ; preds = %for.inc
  %qt_blk_res.1 = getelementptr %struct.xfs_dqtrx, ptr %arrayidx, i32 1, i32 1
  %30 = ptrtoint ptr %qt_blk_res.1 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %qt_blk_res.1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %31)
  %tobool9.not.1 = icmp eq i64 %31, 0
  br i1 %tobool9.not.1, label %if.end12.1, label %if.end12.thread.1

if.end12.thread.1:                                ; preds = %if.end8.1
  %q_qlock.i.1 = getelementptr inbounds %struct.xfs_dquot, ptr %29, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %q_qlock.i.1, i32 noundef 0) #7
  %32 = ptrtoint ptr %qt_blk_res.1 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %qt_blk_res.1, align 8
  %q_blk.1 = getelementptr inbounds %struct.xfs_dquot, ptr %29, i32 0, i32 9
  %34 = ptrtoint ptr %q_blk.1 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %q_blk.1, align 8
  %sub.1 = sub i64 %35, %33
  store i64 %sub.1, ptr %q_blk.1, align 8
  %qt_ino_res69.1 = getelementptr %struct.xfs_dqtrx, ptr %arrayidx, i32 1, i32 8
  %36 = ptrtoint ptr %qt_ino_res69.1 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %qt_ino_res69.1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %37)
  %tobool13.not70.1 = icmp eq i64 %37, 0
  br i1 %tobool13.not70.1, label %if.end12.thread.1.if.end21.1_crit_edge, label %if.end12.thread.1.if.end17.1_crit_edge

if.end12.thread.1.if.end17.1_crit_edge:           ; preds = %if.end12.thread.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.1

if.end12.thread.1.if.end21.1_crit_edge:           ; preds = %if.end12.thread.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.1

if.end12.1:                                       ; preds = %if.end8.1
  %qt_ino_res.1 = getelementptr %struct.xfs_dqtrx, ptr %arrayidx, i32 1, i32 8
  %38 = ptrtoint ptr %qt_ino_res.1 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %qt_ino_res.1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %39)
  %tobool13.not.1 = icmp eq i64 %39, 0
  br i1 %tobool13.not.1, label %if.end21.1.thread, label %if.then16.1

if.then16.1:                                      ; preds = %if.end12.1
  call void @__sanitizer_cov_trace_pc() #9
  %q_qlock.i66.1 = getelementptr inbounds %struct.xfs_dquot, ptr %29, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %q_qlock.i66.1, i32 noundef 0) #7
  br label %if.end17.1

if.end17.1:                                       ; preds = %if.then16.1, %if.end12.thread.1.if.end17.1_crit_edge
  %qt_ino_res7173.1 = phi ptr [ %qt_ino_res.1, %if.then16.1 ], [ %qt_ino_res69.1, %if.end12.thread.1.if.end17.1_crit_edge ]
  %40 = ptrtoint ptr %qt_ino_res7173.1 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %qt_ino_res7173.1, align 8
  %q_ino.1 = getelementptr inbounds %struct.xfs_dquot, ptr %29, i32 0, i32 10
  %42 = ptrtoint ptr %q_ino.1 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %q_ino.1, align 8
  %sub20.1 = sub i64 %43, %41
  store i64 %sub20.1, ptr %q_ino.1, align 8
  br label %if.end21.1

if.end21.1:                                       ; preds = %if.end17.1, %if.end12.thread.1.if.end21.1_crit_edge
  %qt_rtblk_res.1 = getelementptr %struct.xfs_dqtrx, ptr %arrayidx, i32 1, i32 4
  %44 = ptrtoint ptr %qt_rtblk_res.1 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %qt_rtblk_res.1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %45)
  %tobool22.not.1 = icmp eq i64 %45, 0
  br i1 %tobool22.not.1, label %if.end21.1.if.then32.1_crit_edge, label %if.end21.1.if.end30.thread.1_crit_edge

if.end21.1.if.end30.thread.1_crit_edge:           ; preds = %if.end21.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.thread.1

if.end21.1.if.then32.1_crit_edge:                 ; preds = %if.end21.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then32.1

if.end21.1.thread:                                ; preds = %if.end12.1
  %qt_rtblk_res.192 = getelementptr %struct.xfs_dqtrx, ptr %arrayidx, i32 1, i32 4
  %46 = ptrtoint ptr %qt_rtblk_res.192 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %qt_rtblk_res.192, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %47)
  %tobool22.not.193 = icmp eq i64 %47, 0
  br i1 %tobool22.not.193, label %if.end21.1.thread.for.inc34_crit_edge, label %if.then25.1

if.end21.1.thread.for.inc34_crit_edge:            ; preds = %if.end21.1.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc34

if.then25.1:                                      ; preds = %if.end21.1.thread
  call void @__sanitizer_cov_trace_pc() #9
  %q_qlock.i67.1 = getelementptr inbounds %struct.xfs_dquot, ptr %29, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %q_qlock.i67.1, i32 noundef 0) #7
  br label %if.end30.thread.1

if.end30.thread.1:                                ; preds = %if.then25.1, %if.end21.1.if.end30.thread.1_crit_edge
  %qt_rtblk_res.196100 = phi ptr [ %qt_rtblk_res.192, %if.then25.1 ], [ %qt_rtblk_res.1, %if.end21.1.if.end30.thread.1_crit_edge ]
  %48 = ptrtoint ptr %qt_rtblk_res.196100 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %qt_rtblk_res.196100, align 8
  %q_rtb.1 = getelementptr inbounds %struct.xfs_dquot, ptr %29, i32 0, i32 11
  %50 = ptrtoint ptr %q_rtb.1 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %q_rtb.1, align 8
  %sub29.1 = sub i64 %51, %49
  store i64 %sub29.1, ptr %q_rtb.1, align 8
  br label %if.then32.1

if.then32.1:                                      ; preds = %if.end30.thread.1, %if.end21.1.if.then32.1_crit_edge
  %q_qlock.i68.1 = getelementptr inbounds %struct.xfs_dquot, ptr %29, i32 0, i32 16
  tail call void @mutex_unlock(ptr noundef %q_qlock.i68.1) #7
  br label %for.inc34

for.inc34:                                        ; preds = %if.then32.1, %if.end21.1.thread.for.inc34_crit_edge, %for.inc.for.inc34_crit_edge, %for.body.for.inc34_crit_edge
  %inc35 = add nuw nsw i32 %j.078, 1
  %exitcond.not = icmp eq i32 %inc35, 3
  br i1 %exitcond.not, label %for.inc34.cleanup_crit_edge, label %for.inc34.for.body_crit_edge

for.inc34.for.body_crit_edge:                     ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc34.cleanup_crit_edge:                      ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc34.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_trans_reserve_quota_bydquots(ptr noundef %tp, ptr noundef %mp, ptr noundef %udqp, ptr noundef %gdqp, ptr noundef %pdqp, i64 noundef %nblks, i32 noundef %ninos, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 60
  %0 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %m_qflags, align 4
  %and = and i32 %1, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and1 = and i32 %flags, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %cond.false, label %if.end.cond.end_crit_edge, !prof !83

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 743) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %tobool5.not = icmp eq ptr %udqp, null
  br i1 %tobool5.not, label %cond.end.if.end10_crit_edge, label %if.then6

cond.end.if.end10_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then6:                                         ; preds = %cond.end
  %call = tail call fastcc i32 @xfs_trans_dqresv(ptr noundef %tp, ptr noundef %mp, ptr noundef nonnull %udqp, i64 noundef %nblks, i32 noundef %ninos, i32 noundef %flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.then6.if.end10_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.end10:                                         ; preds = %if.then6.if.end10_crit_edge, %cond.end.if.end10_crit_edge
  %tobool11.not = icmp eq ptr %gdqp, null
  br i1 %tobool11.not, label %if.end10.if.end17_crit_edge, label %if.then12

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then12:                                        ; preds = %if.end10
  %call13 = tail call fastcc i32 @xfs_trans_dqresv(ptr noundef %tp, ptr noundef %mp, ptr noundef nonnull %gdqp, i64 noundef %nblks, i32 noundef %ninos, i32 noundef %flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.if.end17_crit_edge, label %if.then12.unwind_usr_crit_edge

if.then12.unwind_usr_crit_edge:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %unwind_usr

if.then12.if.end17_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.end17:                                         ; preds = %if.then12.if.end17_crit_edge, %if.end10.if.end17_crit_edge
  %tobool18.not = icmp eq ptr %pdqp, null
  br i1 %tobool18.not, label %if.end17.cleanup_crit_edge, label %if.then19

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then19:                                        ; preds = %if.end17
  %call20 = tail call fastcc i32 @xfs_trans_dqresv(ptr noundef %tp, ptr noundef %mp, ptr noundef nonnull %pdqp, i64 noundef %nblks, i32 noundef %ninos, i32 noundef %flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then19.cleanup_crit_edge, label %unwind_grp

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

unwind_grp:                                       ; preds = %if.then19
  %or = or i32 %flags, 16
  br i1 %tobool11.not, label %unwind_grp.unwind_usr_crit_edge, label %if.then26

unwind_grp.unwind_usr_crit_edge:                  ; preds = %unwind_grp
  call void @__sanitizer_cov_trace_pc() #9
  br label %unwind_usr

if.then26:                                        ; preds = %unwind_grp
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub i64 0, %nblks
  %sub27 = sub i32 0, %ninos
  %call28 = tail call fastcc i32 @xfs_trans_dqresv(ptr noundef %tp, ptr noundef %mp, ptr noundef nonnull %gdqp, i64 noundef %sub, i32 noundef %sub27, i32 noundef %or)
  br label %unwind_usr

unwind_usr:                                       ; preds = %if.then26, %unwind_grp.unwind_usr_crit_edge, %if.then12.unwind_usr_crit_edge
  %flags.addr.0 = phi i32 [ %flags, %if.then12.unwind_usr_crit_edge ], [ %or, %if.then26 ], [ %or, %unwind_grp.unwind_usr_crit_edge ]
  %error.0 = phi i32 [ %call13, %if.then12.unwind_usr_crit_edge ], [ %call20, %if.then26 ], [ %call20, %unwind_grp.unwind_usr_crit_edge ]
  br i1 %tobool5.not, label %unwind_usr.cleanup_crit_edge, label %if.then32

unwind_usr.cleanup_crit_edge:                     ; preds = %unwind_usr
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then32:                                        ; preds = %unwind_usr
  call void @__sanitizer_cov_trace_pc() #9
  %or30 = or i32 %flags.addr.0, 16
  %sub33 = sub i64 0, %nblks
  %sub34 = sub i32 0, %ninos
  %call35 = tail call fastcc i32 @xfs_trans_dqresv(ptr noundef %tp, ptr noundef %mp, ptr noundef nonnull %udqp, i64 noundef %sub33, i32 noundef %sub34, i32 noundef %or30)
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %unwind_usr.cleanup_crit_edge, %if.then19.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.then6.cleanup_crit_edge ], [ 0, %if.then19.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ], [ %error.0, %if.then32 ], [ %error.0, %unwind_usr.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_trans_dqresv(ptr noundef %tp, ptr noundef %mp, ptr noundef %dqp, i64 noundef %nblks, i32 noundef %ninos, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %m_quotainfo = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 12
  %0 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_quotainfo, align 4
  %q_qlock.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %q_qlock.i, i32 noundef 0) #7
  %q_type.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 2
  %2 = ptrtoint ptr %q_type.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %q_type.i, align 4
  %trunc = trunc i8 %3 to i3
  %4 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.29)
  switch i3 %trunc, label %sw.default.i [
    i3 1, label %sw.bb.i
    i3 -4, label %sw.bb1.i
    i3 2, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %qi_usr_default.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %1, i32 0, i32 12
  br label %xfs_get_defquota.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %qi_grp_default.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %1, i32 0, i32 13
  br label %xfs_get_defquota.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %qi_prj_default.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %1, i32 0, i32 14
  br label %xfs_get_defquota.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.26, i32 noundef 171) #7
  br label %xfs_get_defquota.exit

xfs_get_defquota.exit:                            ; preds = %sw.default.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ null, %sw.default.i ], [ %qi_prj_default.i, %sw.bb2.i ], [ %qi_grp_default.i, %sw.bb1.i ], [ %qi_usr_default.i, %sw.bb.i ]
  %and = and i32 %flags, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %q_blk = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 9
  %q_rtb = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 11
  %rtb = getelementptr inbounds %struct.xfs_def_quota, ptr %retval.0.i, i32 0, i32 2
  %qlim.0 = select i1 %tobool.not, ptr %rtb, ptr %retval.0.i
  %blkres.0 = select i1 %tobool.not, ptr %q_rtb, ptr %q_blk
  %and2 = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %cmp = icmp eq i32 %and2, 0
  br i1 %cmp, label %land.lhs.true, label %xfs_get_defquota.exit.if.end27_crit_edge

xfs_get_defquota.exit.if.end27_crit_edge:         ; preds = %xfs_get_defquota.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

land.lhs.true:                                    ; preds = %xfs_get_defquota.exit
  %q_id = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 4
  %5 = ptrtoint ptr %q_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %q_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end27_crit_edge, label %land.lhs.true5

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

land.lhs.true5:                                   ; preds = %land.lhs.true
  %7 = ptrtoint ptr %q_type.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %q_type.i, align 4
  %9 = and i8 %8, 7
  %and.i.i = zext i8 %9 to i32
  %10 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %and.i.i, label %xfs_dquot_is_enforced.exit.thread [
    i32 1, label %xfs_dquot_is_enforced.exit
    i32 4, label %sw.bb1.i144
    i32 2, label %sw.bb6.i
  ]

sw.bb1.i144:                                      ; preds = %land.lhs.true5
  %q_mount2.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 1
  %11 = ptrtoint ptr %q_mount2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %q_mount2.i, align 8
  %m_qflags3.i = getelementptr inbounds %struct.xfs_mount, ptr %12, i32 0, i32 60
  %13 = ptrtoint ptr %m_qflags3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %m_qflags3.i, align 4
  %and4.i = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.i.not = icmp eq i32 %and4.i, 0
  br i1 %tobool5.i.not, label %sw.bb1.i144.if.end27_crit_edge, label %sw.bb1.i144.if.then8_crit_edge

sw.bb1.i144.if.then8_crit_edge:                   ; preds = %sw.bb1.i144
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

sw.bb1.i144.if.end27_crit_edge:                   ; preds = %sw.bb1.i144
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

sw.bb6.i:                                         ; preds = %land.lhs.true5
  %q_mount7.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 1
  %15 = ptrtoint ptr %q_mount7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %q_mount7.i, align 8
  %m_qflags8.i = getelementptr inbounds %struct.xfs_mount, ptr %16, i32 0, i32 60
  %17 = ptrtoint ptr %m_qflags8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %m_qflags8.i, align 4
  %and9.i = and i32 %18, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.i.not = icmp eq i32 %and9.i, 0
  br i1 %tobool10.i.not, label %sw.bb6.i.if.end27_crit_edge, label %sw.bb6.i.if.then8_crit_edge

sw.bb6.i.if.then8_crit_edge:                      ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

sw.bb6.i.if.end27_crit_edge:                      ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

xfs_dquot_is_enforced.exit.thread:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.27, i32 noundef 190) #7
  br label %if.end27

xfs_dquot_is_enforced.exit:                       ; preds = %land.lhs.true5
  %q_mount.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 1
  %19 = ptrtoint ptr %q_mount.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %q_mount.i, align 8
  %m_qflags.i = getelementptr inbounds %struct.xfs_mount, ptr %20, i32 0, i32 60
  %21 = ptrtoint ptr %m_qflags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %m_qflags.i, align 4
  %and.i142 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i142)
  %tobool.i.not = icmp eq i32 %and.i142, 0
  br i1 %tobool.i.not, label %xfs_dquot_is_enforced.exit.if.end27_crit_edge, label %xfs_dquot_is_enforced.exit.if.then8_crit_edge

xfs_dquot_is_enforced.exit.if.then8_crit_edge:    ; preds = %xfs_dquot_is_enforced.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

xfs_dquot_is_enforced.exit.if.end27_crit_edge:    ; preds = %xfs_dquot_is_enforced.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then8:                                         ; preds = %xfs_dquot_is_enforced.exit.if.then8_crit_edge, %sw.bb6.i.if.then8_crit_edge, %sw.bb1.i144.if.then8_crit_edge
  %softlimit2.i = getelementptr inbounds %struct.xfs_dquot_res, ptr %blkres.0, i32 0, i32 3
  %23 = ptrtoint ptr %softlimit2.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %softlimit2.i, align 8
  %25 = ptrtoint ptr %blkres.0 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %blkres.0, align 8
  %add.i = add i64 %26, %nblks
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %nblks)
  %cmp.i = icmp slt i64 %nblks, 1
  br i1 %cmp.i, label %if.then8.if.end16_crit_edge, label %if.end.i

if.then8.if.end16_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.end.i:                                         ; preds = %if.then8
  %hardlimit1.i = getelementptr inbounds %struct.xfs_dquot_res, ptr %blkres.0, i32 0, i32 2
  %27 = ptrtoint ptr %hardlimit1.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %hardlimit1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %28)
  %tobool.not.i = icmp eq i64 %28, 0
  br i1 %tobool.not.i, label %if.then9.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %qlim.0 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %qlim.0, align 8
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %if.end.i.if.end10.i_crit_edge
  %hardlimit.0.i = phi i64 [ %28, %if.end.i.if.end10.i_crit_edge ], [ %30, %if.then9.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %tobool11.not.i = icmp eq i64 %24, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end10.i.if.end13.i_crit_edge

if.end10.i.if.end13.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %soft.i = getelementptr inbounds %struct.xfs_quota_limits, ptr %qlim.0, i32 0, i32 1
  %31 = ptrtoint ptr %soft.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %soft.i, align 8
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %if.end10.i.if.end13.i_crit_edge
  %softlimit.0.i = phi i64 [ %24, %if.end10.i.if.end13.i_crit_edge ], [ %32, %if.then12.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %hardlimit.0.i)
  %tobool14.not.i = icmp ne i64 %hardlimit.0.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %hardlimit.0.i)
  %cmp15.i = icmp ugt i64 %add.i, %hardlimit.0.i
  %or.cond.i = select i1 %tobool14.not.i, i1 %cmp15.i, i1 false
  br i1 %or.cond.i, label %if.end13.i.error_return_crit_edge, label %if.end17.i

if.end13.i.error_return_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_return

if.end17.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %softlimit.0.i)
  %tobool18.not.i = icmp ne i64 %softlimit.0.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %softlimit.0.i)
  %cmp20.i = icmp ugt i64 %add.i, %softlimit.0.i
  %or.cond60.i = select i1 %tobool18.not.i, i1 %cmp20.i, i1 false
  br i1 %or.cond60.i, label %if.then21.i, label %if.end17.i.if.end16_crit_edge

if.end17.i.if.end16_crit_edge:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then21.i:                                      ; preds = %if.end17.i
  %call.i = tail call i64 @ktime_get_real_seconds() #7
  %timer.i = getelementptr inbounds %struct.xfs_dquot_res, ptr %blkres.0, i32 0, i32 4
  %33 = ptrtoint ptr %timer.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %timer.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %34)
  %cmp22.not.i = icmp ne i64 %34, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %34)
  %cmp25.i = icmp sgt i64 %call.i, %34
  %or.cond61.i = select i1 %cmp22.not.i, i1 %cmp25.i, i1 false
  br i1 %or.cond61.i, label %if.then21.i.error_return_crit_edge, label %lor.lhs.false.i

if.then21.i.error_return_crit_edge:               ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_return

lor.lhs.false.i:                                  ; preds = %if.then21.i
  %warnings.i = getelementptr inbounds %struct.xfs_dquot_res, ptr %blkres.0, i32 0, i32 5
  %35 = ptrtoint ptr %warnings.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %warnings.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %cmp26.not.i = icmp eq i16 %36, 0
  br i1 %cmp26.not.i, label %lor.lhs.false.i.if.then12_crit_edge, label %land.lhs.true28.i

lor.lhs.false.i.if.then12_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

land.lhs.true28.i:                                ; preds = %lor.lhs.false.i
  %warn.i = getelementptr inbounds %struct.xfs_quota_limits, ptr %qlim.0, i32 0, i32 3
  %37 = ptrtoint ptr %warn.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %warn.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %36, i16 %38)
  %cmp32.not.i = icmp ult i16 %36, %38
  br i1 %cmp32.not.i, label %land.lhs.true28.i.if.then12_crit_edge, label %land.lhs.true28.i.error_return_crit_edge

land.lhs.true28.i.error_return_crit_edge:         ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_return

land.lhs.true28.i.if.then12_crit_edge:            ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

if.then12:                                        ; preds = %land.lhs.true28.i.if.then12_crit_edge, %lor.lhs.false.i.if.then12_crit_edge
  %inc.i = add nuw i16 %36, 1
  %39 = ptrtoint ptr %warnings.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %inc.i, ptr %warnings.i, align 8
  tail call fastcc void @xfs_quota_warn(ptr noundef %mp, ptr noundef %dqp, i32 noundef 6)
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end17.i.if.end16_crit_edge, %if.then8.if.end16_crit_edge
  %q_ino = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 10
  %ino = getelementptr inbounds %struct.xfs_def_quota, ptr %retval.0.i, i32 0, i32 1
  %conv17 = sext i32 %ninos to i64
  %softlimit2.i147 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 10, i32 3
  %40 = ptrtoint ptr %softlimit2.i147 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %softlimit2.i147, align 8
  %42 = ptrtoint ptr %q_ino to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %q_ino, align 8
  %add.i148 = add i64 %43, %conv17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ninos)
  %cmp.i149 = icmp slt i32 %ninos, 1
  br i1 %cmp.i149, label %if.end16.if.end27_crit_edge, label %if.end.i151

if.end16.if.end27_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.end.i151:                                      ; preds = %if.end16
  %hardlimit1.i146 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 10, i32 2
  %44 = ptrtoint ptr %hardlimit1.i146 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %hardlimit1.i146, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %45)
  %tobool.not.i150 = icmp eq i64 %45, 0
  br i1 %tobool.not.i150, label %if.then9.i152, label %if.end.i151.if.end10.i155_crit_edge

if.end.i151.if.end10.i155_crit_edge:              ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i155

if.then9.i152:                                    ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %ino to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %ino, align 8
  br label %if.end10.i155

if.end10.i155:                                    ; preds = %if.then9.i152, %if.end.i151.if.end10.i155_crit_edge
  %hardlimit.0.i153 = phi i64 [ %45, %if.end.i151.if.end10.i155_crit_edge ], [ %47, %if.then9.i152 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %41)
  %tobool11.not.i154 = icmp eq i64 %41, 0
  br i1 %tobool11.not.i154, label %if.then12.i157, label %if.end10.i155.if.end13.i162_crit_edge

if.end10.i155.if.end13.i162_crit_edge:            ; preds = %if.end10.i155
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i162

if.then12.i157:                                   ; preds = %if.end10.i155
  call void @__sanitizer_cov_trace_pc() #9
  %soft.i156 = getelementptr inbounds %struct.xfs_def_quota, ptr %retval.0.i, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %soft.i156 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %soft.i156, align 8
  br label %if.end13.i162

if.end13.i162:                                    ; preds = %if.then12.i157, %if.end10.i155.if.end13.i162_crit_edge
  %softlimit.0.i158 = phi i64 [ %41, %if.end10.i155.if.end13.i162_crit_edge ], [ %49, %if.then12.i157 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %hardlimit.0.i153)
  %tobool14.not.i159 = icmp ne i64 %hardlimit.0.i153, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i148, i64 %hardlimit.0.i153)
  %cmp15.i160 = icmp ugt i64 %add.i148, %hardlimit.0.i153
  %or.cond.i161 = select i1 %tobool14.not.i159, i1 %cmp15.i160, i1 false
  br i1 %or.cond.i161, label %if.end13.i162.error_return_crit_edge, label %if.end17.i167

if.end13.i162.error_return_crit_edge:             ; preds = %if.end13.i162
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_return

if.end17.i167:                                    ; preds = %if.end13.i162
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %softlimit.0.i158)
  %tobool18.not.i164 = icmp ne i64 %softlimit.0.i158, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i148, i64 %softlimit.0.i158)
  %cmp20.i165 = icmp ugt i64 %add.i148, %softlimit.0.i158
  %or.cond60.i166 = select i1 %tobool18.not.i164, i1 %cmp20.i165, i1 false
  br i1 %or.cond60.i166, label %if.then21.i173, label %if.end17.i167.if.end27_crit_edge

if.end17.i167.if.end27_crit_edge:                 ; preds = %if.end17.i167
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then21.i173:                                   ; preds = %if.end17.i167
  %call.i168 = tail call i64 @ktime_get_real_seconds() #7
  %timer.i169 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 10, i32 4
  %50 = ptrtoint ptr %timer.i169 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %timer.i169, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %51)
  %cmp22.not.i170 = icmp ne i64 %51, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i168, i64 %51)
  %cmp25.i171 = icmp sgt i64 %call.i168, %51
  %or.cond61.i172 = select i1 %cmp22.not.i170, i1 %cmp25.i171, i1 false
  br i1 %or.cond61.i172, label %if.then21.i173.error_return_crit_edge, label %lor.lhs.false.i176

if.then21.i173.error_return_crit_edge:            ; preds = %if.then21.i173
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_return

lor.lhs.false.i176:                               ; preds = %if.then21.i173
  %warnings.i174 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 10, i32 5
  %52 = ptrtoint ptr %warnings.i174 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %warnings.i174, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %cmp26.not.i175 = icmp eq i16 %53, 0
  br i1 %cmp26.not.i175, label %lor.lhs.false.i176.if.then21_crit_edge, label %land.lhs.true28.i179

lor.lhs.false.i176.if.then21_crit_edge:           ; preds = %lor.lhs.false.i176
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

land.lhs.true28.i179:                             ; preds = %lor.lhs.false.i176
  %warn.i177 = getelementptr inbounds %struct.xfs_def_quota, ptr %retval.0.i, i32 0, i32 1, i32 3
  %54 = ptrtoint ptr %warn.i177 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %warn.i177, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %53, i16 %55)
  %cmp32.not.i178 = icmp ult i16 %53, %55
  br i1 %cmp32.not.i178, label %land.lhs.true28.i179.if.then21_crit_edge, label %land.lhs.true28.i179.error_return_crit_edge

land.lhs.true28.i179.error_return_crit_edge:      ; preds = %land.lhs.true28.i179
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_return

land.lhs.true28.i179.if.then21_crit_edge:         ; preds = %land.lhs.true28.i179
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

if.then21:                                        ; preds = %land.lhs.true28.i179.if.then21_crit_edge, %lor.lhs.false.i176.if.then21_crit_edge
  %inc.i181 = add nuw i16 %53, 1
  %56 = ptrtoint ptr %warnings.i174 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %inc.i181, ptr %warnings.i174, align 8
  tail call fastcc void @xfs_quota_warn(ptr noundef %mp, ptr noundef %dqp, i32 noundef 3)
  br label %if.end27

if.end27:                                         ; preds = %if.then21, %if.end17.i167.if.end27_crit_edge, %if.end16.if.end27_crit_edge, %xfs_dquot_is_enforced.exit.if.end27_crit_edge, %xfs_dquot_is_enforced.exit.thread, %sw.bb6.i.if.end27_crit_edge, %sw.bb1.i144.if.end27_crit_edge, %land.lhs.true.if.end27_crit_edge, %xfs_get_defquota.exit.if.end27_crit_edge
  %57 = ptrtoint ptr %blkres.0 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %blkres.0, align 8
  %add28 = add i64 %58, %nblks
  store i64 %add28, ptr %blkres.0, align 8
  %conv29 = sext i32 %ninos to i64
  %q_ino30 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 10
  %59 = ptrtoint ptr %q_ino30 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %q_ino30, align 8
  %add32 = add i64 %60, %conv29
  store i64 %add32, ptr %q_ino30, align 8
  %tobool33.not = icmp eq ptr %tp, null
  br i1 %tobool33.not, label %if.end27.if.end41_crit_edge, label %if.then34

if.end27.if.end41_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then34:                                        ; preds = %if.end27
  %and35 = and i32 %flags, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %cond.false, label %if.then34.cond.end_crit_edge, !prof !83

if.then34.cond.end_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 689) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then34.cond.end_crit_edge
  tail call void @xfs_trans_mod_dquot(ptr noundef nonnull %tp, ptr noundef %dqp, i32 noundef %and35, i64 noundef %nblks)
  tail call void @xfs_trans_mod_dquot(ptr noundef nonnull %tp, ptr noundef %dqp, i32 noundef 8388608, i64 noundef %conv29)
  br label %if.end41

if.end41:                                         ; preds = %cond.end, %if.end27.if.end41_crit_edge
  %61 = ptrtoint ptr %q_blk to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %q_blk, align 8
  %count = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 9, i32 1
  %63 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %count, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %62, i64 %64)
  %cmp45 = icmp ult i64 %62, %64
  br i1 %cmp45, label %__here, label %lor.lhs.false, !prof !83

__here:                                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !99
  tail call void @xfs_corruption_error(ptr noundef nonnull @.str.23, i32 noundef 1, ptr noundef %mp, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 695, ptr noundef blockaddress(@xfs_trans_dqresv, %__here)) #7
  br label %error_corrupt

lor.lhs.false:                                    ; preds = %if.end41
  %65 = ptrtoint ptr %q_rtb to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %q_rtb, align 8
  %count58 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 11, i32 1
  %67 = ptrtoint ptr %count58 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %count58, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %66, i64 %68)
  %cmp59 = icmp ult i64 %66, %68
  br i1 %cmp59, label %__here68, label %lor.lhs.false71, !prof !83

__here68:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !100
  tail call void @xfs_corruption_error(ptr noundef nonnull @.str.24, i32 noundef 1, ptr noundef %mp, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef blockaddress(@xfs_trans_dqresv, %__here68)) #7
  br label %error_corrupt

lor.lhs.false71:                                  ; preds = %lor.lhs.false
  %69 = ptrtoint ptr %q_ino30 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %q_ino30, align 8
  %count75 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 10, i32 1
  %71 = ptrtoint ptr %count75 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %count75, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %70, i64 %72)
  %cmp76 = icmp ult i64 %70, %72
  br i1 %cmp76, label %__here85, label %if.end89, !prof !83

__here85:                                         ; preds = %lor.lhs.false71
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !101
  tail call void @xfs_corruption_error(ptr noundef nonnull @.str.25, i32 noundef 1, ptr noundef %mp, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 697, ptr noundef blockaddress(@xfs_trans_dqresv, %__here85)) #7
  br label %error_corrupt

if.end89:                                         ; preds = %lor.lhs.false71
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %q_qlock.i) #7
  br label %cleanup95

error_return:                                     ; preds = %land.lhs.true28.i179.error_return_crit_edge, %if.then21.i173.error_return_crit_edge, %if.end13.i162.error_return_crit_edge, %land.lhs.true28.i.error_return_crit_edge, %if.then21.i.error_return_crit_edge, %if.end13.i.error_return_crit_edge
  %retval.1.i.ph.ph.sink = phi i32 [ 4, %if.end13.i.error_return_crit_edge ], [ 5, %land.lhs.true28.i.error_return_crit_edge ], [ 5, %if.then21.i.error_return_crit_edge ], [ 1, %if.end13.i162.error_return_crit_edge ], [ 2, %land.lhs.true28.i179.error_return_crit_edge ], [ 2, %if.then21.i173.error_return_crit_edge ]
  tail call fastcc void @xfs_quota_warn(ptr noundef %mp, ptr noundef %dqp, i32 noundef %retval.1.i.ph.ph.sink)
  tail call void @mutex_unlock(ptr noundef %q_qlock.i) #7
  %73 = ptrtoint ptr %q_type.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %q_type.i, align 4
  %75 = and i8 %74, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %75)
  %cmp91 = icmp eq i8 %75, 2
  %. = select i1 %cmp91, i32 -28, i32 -122
  br label %cleanup95

error_corrupt:                                    ; preds = %__here85, %__here68, %__here
  tail call void @mutex_unlock(ptr noundef %q_qlock.i) #7
  tail call void @xfs_do_force_shutdown(ptr noundef %mp, i32 noundef 8, ptr noundef nonnull @.str.1, i32 noundef 710) #7
  br label %cleanup95

cleanup95:                                        ; preds = %error_corrupt, %error_return, %if.end89
  %retval.0 = phi i32 [ -117, %error_corrupt ], [ 0, %if.end89 ], [ %., %error_return ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_trans_reserve_quota_nblks(ptr noundef %tp, ptr noundef %ip, i64 noundef %dblocks, i64 noundef %rblocks, i1 noundef zeroext %force) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 60
  %2 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %m_qflags, align 4
  %and = and i32 %3, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 4
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_ino, align 8
  %sb_uquotino.i = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %sb_uquotino.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sb_uquotino.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %5)
  %cmp.i = icmp eq i64 %7, %5
  br i1 %cmp.i, label %if.end.cond.false_crit_edge, label %lor.lhs.false.i, !prof !102

if.end.cond.false_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false

lor.lhs.false.i:                                  ; preds = %if.end
  %sb_gquotino.i = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 33
  %8 = ptrtoint ptr %sb_gquotino.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %sb_gquotino.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %5)
  %cmp1.i = icmp eq i64 %9, %5
  br i1 %cmp1.i, label %lor.lhs.false.i.cond.false_crit_edge, label %xfs_is_quota_inode.exit, !prof !102

lor.lhs.false.i.cond.false_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false

xfs_is_quota_inode.exit:                          ; preds = %lor.lhs.false.i
  %sb_pquotino.i = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 52
  %10 = ptrtoint ptr %sb_pquotino.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %sb_pquotino.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %5)
  %cmp2.i = icmp eq i64 %11, %5
  br i1 %cmp2.i, label %xfs_is_quota_inode.exit.cond.false_crit_edge, label %xfs_is_quota_inode.exit.cond.end_crit_edge, !prof !83

xfs_is_quota_inode.exit.cond.end_crit_edge:       ; preds = %xfs_is_quota_inode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

xfs_is_quota_inode.exit.cond.false_crit_edge:     ; preds = %xfs_is_quota_inode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false

cond.false:                                       ; preds = %xfs_is_quota_inode.exit.cond.false_crit_edge, %lor.lhs.false.i.cond.false_crit_edge, %if.end.cond.false_crit_edge
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 800) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %xfs_is_quota_inode.exit.cond.end_crit_edge
  %call4 = tail call zeroext i1 @xfs_isilocked(ptr noundef %ip, i32 noundef 4) #7
  br i1 %call4, label %cond.end.cond.end13_crit_edge, label %cond.false12, !prof !82

cond.end.cond.end13_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end13

cond.false12:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 801) #7
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false12, %cond.end.cond.end13_crit_edge
  %spec.select = select i1 %force, i32 16, i32 0
  %i_udquot = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 1
  %12 = ptrtoint ptr %i_udquot to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_udquot, align 4
  %i_gdquot = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 2
  %14 = ptrtoint ptr %i_gdquot to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_gdquot, align 8
  %i_pdquot = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 3
  %16 = ptrtoint ptr %i_pdquot to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_pdquot, align 4
  %or17 = or i32 %spec.select, 65536
  %call18 = tail call i32 @xfs_trans_reserve_quota_bydquots(ptr noundef %tp, ptr noundef %1, ptr noundef %13, ptr noundef %15, ptr noundef %17, i64 noundef %dblocks, i32 noundef 0, i32 noundef %or17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %cond.end13.cleanup_crit_edge

cond.end13.cleanup_crit_edge:                     ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %cond.end13
  %18 = ptrtoint ptr %i_udquot to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_udquot, align 4
  %20 = ptrtoint ptr %i_gdquot to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_gdquot, align 8
  %22 = ptrtoint ptr %i_pdquot to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_pdquot, align 4
  %or25 = or i32 %spec.select, 131072
  %call26 = tail call i32 @xfs_trans_reserve_quota_bydquots(ptr noundef %tp, ptr noundef %1, ptr noundef %19, ptr noundef %21, ptr noundef %23, i64 noundef %rblocks, i32 noundef 0, i32 noundef %or25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end21.cleanup_crit_edge, label %if.then28

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then28:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %i_udquot to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_udquot, align 4
  %26 = ptrtoint ptr %i_gdquot to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_gdquot, align 8
  %28 = ptrtoint ptr %i_pdquot to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_pdquot, align 4
  %sub = sub i64 0, %dblocks
  %call32 = tail call i32 @xfs_trans_reserve_quota_bydquots(ptr noundef %tp, ptr noundef %1, ptr noundef %25, ptr noundef %27, ptr noundef %29, i64 noundef %sub, i32 noundef 0, i32 noundef 65536)
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end21.cleanup_crit_edge, %cond.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call26, %if.then28 ], [ 0, %entry.cleanup_crit_edge ], [ %call18, %cond.end13.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_isilocked(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_trans_reserve_quota_icreate(ptr noundef %tp, ptr noundef %udqp, ptr noundef %gdqp, ptr noundef %pdqp, i64 noundef %dblocks) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 60
  %2 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %m_qflags, align 4
  %and = and i32 %3, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @xfs_trans_reserve_quota_bydquots(ptr noundef %tp, ptr noundef %1, ptr noundef %udqp, ptr noundef %gdqp, ptr noundef %pdqp, i64 noundef %dblocks, i32 noundef 1, i32 noundef 65536)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_trans_free_dqinfo(ptr nocapture noundef %tp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %t_dqinfo = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 11
  %0 = ptrtoint ptr %t_dqinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_dqinfo, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_dqtrx_cache to i32))
  %2 = load ptr, ptr @xfs_dqtrx_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef nonnull %1) #7
  %3 = ptrtoint ptr %t_dqinfo to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %t_dqinfo, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_trans_mod_dquot_before(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_trans_mod_dquot(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_trans_mod_dquot_after(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_dqlock2(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_trans_apply_dquot_deltas_before(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_trans_apply_dquot_deltas(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_trans_apply_dquot_deltas_after(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_quota_warn(ptr nocapture noundef readonly %mp, ptr nocapture noundef readonly %dqp, i32 noundef %type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %q_type.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 2
  %0 = ptrtoint ptr %q_type.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %q_type.i, align 4
  %2 = and i8 %1, 7
  %and.i = zext i8 %2 to i32
  %3 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %and.i, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb6.i
    i32 1, label %sw.bb.i
    i32 4, label %sw.bb2.i
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %q_id5 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 4
  %4 = ptrtoint ptr %q_id5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %q_id5, align 8
  %call.i = tail call i32 @make_kuid(ptr noundef nonnull @init_user_ns, i32 noundef %5) #7, !noalias !103
  br label %make_kqid.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %q_id10 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 4
  %6 = ptrtoint ptr %q_id10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %q_id10, align 8
  %call4.i = tail call i32 @make_kgid(ptr noundef nonnull @init_user_ns, i32 noundef %7) #7, !noalias !103
  br label %make_kqid.exit

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %q_id = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 4
  %8 = ptrtoint ptr %q_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %q_id, align 8
  %call8.i = tail call i32 @make_kprojid(ptr noundef nonnull @init_user_ns, i32 noundef %9) #7, !noalias !103
  br label %make_kqid.exit

make_kqid.exit:                                   ; preds = %sw.bb6.i, %sw.bb2.i, %sw.bb.i
  %qtype.06 = phi i32 [ 2, %sw.bb6.i ], [ 1, %sw.bb2.i ], [ 0, %sw.bb.i ]
  %call8.sink.i = phi i32 [ %call8.i, %sw.bb6.i ], [ %call4.i, %sw.bb2.i ], [ %call.i, %sw.bb.i ]
  %m_super = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 1
  %10 = ptrtoint ptr %m_super to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %m_super, align 8
  %s_dev = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_dev, align 8
  %conv = trunc i32 %type to i8
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %call8.sink.i, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 %qtype.06, 1
  tail call void @quota_send_warning([2 x i32] %.fca.1.insert, i32 noundef %13, i8 noundef zeroext %conv) #7
  br label %cleanup

cleanup:                                          ; preds = %make_kqid.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_corruption_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_do_force_shutdown(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @quota_send_warning([2 x i32], i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kprojid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !40, !41, !42, !44, !45, !47, !48, !50, !51, !53, !55, !56, !58, !59, !61, !62, !64, !66, !68, !70}
!llvm.named.register.sp = !{!72}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_trans_dquot.c", i32 33, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/xfs_trans_dquot.c", i32 34, i32 2}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/xfs/xfs_trans_dquot.c", i32 193, i32 2}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/xfs/xfs_trans_dquot.c", i32 194, i32 2}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/xfs/xfs_trans_dquot.c", i32 207, i32 2}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/xfs/xfs_trans_dquot.c", i32 238, i32 4}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/xfs/xfs_trans_dquot.c", i32 252, i32 4}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/xfs/xfs_trans_dquot.c", i32 262, i32 3}
!17 = distinct !{null, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/xfs_trans_dquot.c", i32 345, i32 2}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/xfs/xfs_trans_dquot.c", i32 399, i32 5}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/xfs/xfs_trans_dquot.c", i32 402, i32 5}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/xfs/xfs_trans_dquot.c", i32 405, i32 5}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/xfs/xfs_trans_dquot.c", i32 461, i32 4}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/xfs/xfs_trans_dquot.c", i32 462, i32 4}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/xfs/xfs_trans_dquot.c", i32 463, i32 4}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/xfs/xfs_trans_dquot.c", i32 743, i32 2}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/xfs/xfs_trans_dquot.c", i32 800, i32 2}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/xfs/xfs_trans_dquot.c", i32 801, i32 2}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../fs/xfs/xfs_trace.h", i32 1213, i32 1}
!39 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!41 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../fs/xfs/xfs_trace.h", i32 1115, i32 1}
!47 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../fs/xfs/xfs_trace.h", i32 1214, i32 1}
!50 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/xfs/xfs_trans_dquot.c", i32 280, i32 2}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../fs/xfs/xfs_trace.h", i32 1096, i32 1}
!55 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../fs/xfs/xfs_trace.h", i32 1212, i32 1}
!58 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../fs/xfs/xfs_trace.h", i32 1097, i32 1}
!61 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/xfs/xfs_trans_dquot.c", i32 695, i32 6}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/xfs/xfs_trans_dquot.c", i32 696, i32 6}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/xfs/xfs_trans_dquot.c", i32 697, i32 6}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/xfs/xfs_qm.h", i32 171, i32 3}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/xfs/xfs_dquot.h", i32 190, i32 2}
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
!82 = !{!"branch_weights", i32 2000, i32 1}
!83 = !{!"branch_weights", i32 1, i32 2000}
!84 = !{i64 2148264112, i64 2148264117, i64 2148264130, i64 2148264174, i64 2148264208, i64 2148264229}
!85 = !{i64 2159039376}
!86 = !{i64 2159039599}
!87 = !{i64 2149966205}
!88 = !{i64 2149967241}
!89 = !{i64 2159000939}
!90 = !{i64 2159001182}
!91 = !{i64 2159056494}
!92 = !{i64 2159056715}
!93 = !{i64 2158964847}
!94 = !{i64 2158965086}
!95 = !{i64 2159022111}
!96 = !{i64 2159022338}
!97 = !{i64 2158982767}
!98 = !{i64 2158983004}
!99 = !{i64 2166312626}
!100 = !{i64 2166313076}
!101 = !{i64 2166313526}
!102 = !{!"branch_weights", i32 1073205, i32 2146410443}
!103 = !{!104}
!104 = distinct !{!104, !105, !"make_kqid: %agg.result"}
!105 = distinct !{!105, !"make_kqid"}
