; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_dquot.c_pt.bc'
source_filename = "../fs/xfs/xfs_dquot.c"
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
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.xfs_buf_ops = type { ptr, %union.anon.87, ptr, ptr, ptr }
%union.anon.87 = type { [2 x i32] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.xfs_dquot = type { %struct.list_head, ptr, i8, i16, i32, i32, i32, i64, i64, %struct.xfs_dquot_res, %struct.xfs_dquot_res, %struct.xfs_dquot_res, %struct.xfs_dq_logitem, i64, i64, [3 x i64], %struct.mutex, %struct.completion, %struct.atomic_t, %struct.wait_queue_head }
%struct.xfs_dquot_res = type { i64, i64, i64, i64, i64, i16 }
%struct.xfs_dq_logitem = type { %struct.xfs_log_item, ptr, i64 }
%struct.xfs_log_item = type { %struct.list_head, %struct.list_head, i64, ptr, ptr, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.xfs_quotainfo = type { %struct.xarray, %struct.xarray, %struct.xarray, %struct.mutex, ptr, ptr, ptr, %struct.list_lru, i32, %struct.mutex, i64, i32, %struct.xfs_def_quota, %struct.xfs_def_quota, %struct.xfs_def_quota, %struct.shrinker, i64, i64 }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.xfs_def_quota = type { %struct.xfs_quota_limits, %struct.xfs_quota_limits, %struct.xfs_quota_limits }
%struct.xfs_quota_limits = type { i64, i64, i64, i16 }
%struct.xfs_disk_dquot = type { i16, i8, i8, i32, i64, i64, i64, i64, i64, i64, i32, i32, i16, i16, i32, i64, i64, i64, i32, i16, i16 }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.xfs_buf_map = type { i64, i32 }
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
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.hlist_head = type { ptr }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }
%struct.xfs_iext_cursor = type { ptr, i32 }
%struct.xfs_ail = type { ptr, ptr, %struct.list_head, i64, i64, %struct.list_head, %struct.spinlock, i64, i32, %struct.list_head, %struct.wait_queue_head }
%struct.xfs_dqblk = type { %struct.xfs_disk_dquot, [4 x i8], i32, i64, %struct.uuid_t }

@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"list_empty(&dqp->q_lru)\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_dquot.c\00", [45 x i8] zeroinitializer }, align 32
@xfsstats = external dso_local local_unnamed_addr global %struct.xstats, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@xfs_dquot_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dq->q_id\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"xfs_isilocked(ip, XFS_ILOCK_EXCL)\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"xfs_inode_dquot(ip, type) == NULL\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dqp->q_nrefs > 0\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"XFS_DQ_IS_LOCKED(dqp)\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"!completion_done(&dqp->q_flush)\00", [32 x i8] zeroinitializer }, align 32
@xfs_dquot_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"corrupt dquot ID 0x%x in memory at %pS\00", [57 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"d1 != d2\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xfs_dquot\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xfs_dqtrx\00", [22 x i8] zeroinitializer }, align 32
@xfs_dqtrx_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/xfs/xfs_qm.h\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"res->hardlimit == 0 || res->softlimit <= res->hardlimit\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_dqget_freeing = external dso_local global %struct.tracepoint, align 4
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_dqget_freeing.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_dqget_hit = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dqget_hit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xfs_buf_islocked(bp)\00", [43 x i8] zeroinitializer }, align 32
@xfs_dquot_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&dqp->q_qlock\00", [18 x i8] zeroinitializer }, align 32
@xfs_dquot_alloc.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dqp->q_pinwait\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&xfs_dquot_group_class\00", [41 x i8] zeroinitializer }, align 32
@xfs_dquot_group_class = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&xfs_dquot_project_class\00", [39 x i8] zeroinitializer }, align 32
@xfs_dquot_project_class = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_dqread = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dqread.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nmaps == 1\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"map.br_blockcount >= 1\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"map.br_startblock != DELAYSTARTBLOCK\00", [59 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bp == NULL\00", [21 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_dqtobp_read = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dqtobp_read.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.29 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"map.br_blockcount == XFS_DQUOT_CLUSTER_SIZE_FSB\00", [48 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"(map.br_startblock != DELAYSTARTBLOCK) && (map.br_startblock != HOLESTARTBLOCK)\00", [48 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_dqalloc = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dqalloc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tp\00", [29 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Metadata corruption detected at %pS, quota %u\00", [50 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unmount and run xfs_repair\00", [37 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_dqread_fail = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dqread_fail.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_dqget_dup = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dqget_dup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_dqget_miss = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dqget_miss.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_dqput = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dqput.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_dqput_free = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dqput_free.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_dqrele = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dqrele.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"test_bit(XFS_LI_IN_AIL, &lip->li_flags)\00", [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fs/xfs/xfs_trans_priv.h\00", [40 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__tracepoint_xfs_dqflush = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dqflush.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_dqflush_force = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dqflush_force.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_dqflush_done = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dqflush_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 3, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 3, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967279]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 3, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 3, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 3, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 3, i64 2, i64 4]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 54, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [16 x i8] c"xfs_dquot_cache\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 42, i32 27 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 77, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 930, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 957, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 958, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1063, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1064, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1229, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1250, i32 17 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1325, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1343, i32 38 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1349, i32 38 }
@___asan_gen_.99 = private unnamed_addr constant [16 x i8] c"xfs_dqtrx_cache\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 41, i32 21 }
@___asan_gen_.103 = private unnamed_addr constant [19 x i8] c"../fs/xfs/xfs_qm.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 171, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 131, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 1088, i32 1 }
@___asan_gen_.115 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 108, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 679, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 481, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 482, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 507, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [22 x i8] c"xfs_dquot_group_class\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 44, i32 30 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 510, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [24 x i8] c"xfs_dquot_project_class\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 45, i32 30 }
@___asan_gen_.144 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 87, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 437, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 438, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 439, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 455, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 335, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 337, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 193, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 573, i32 6 }
@___asan_gen_.175 = private constant [22 x i8] c"../fs/xfs/xfs_dquot.c\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 575, i32 26 }
@___asan_gen_.180 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [27 x i8] c"../fs/xfs/xfs_trans_priv.h\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 148, i32 2 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @.str, ptr @.str.1, ptr @xfs_dquot_cache, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @xfs_dqtrx_cache, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @xfs_dquot_alloc.__key, ptr @.str.19, ptr @xfs_dquot_alloc.__key.20, ptr @.str.21, ptr @.str.22, ptr @xfs_dquot_group_class, ptr @.str.23, ptr @xfs_dquot_project_class, ptr @init_completion.__key, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_dquot_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_dqtrx_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_dquot_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_dquot_alloc.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_dquot_group_class to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_dquot_project_class to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_qm_dqdestroy(ptr noundef %dqp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dqp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %dqp, align 4
  %cmp.i.not = icmp eq ptr %1, %dqp
  br i1 %cmp.i.not, label %entry.cond.end_crit_edge, label %cond.false, !prof !132

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 54) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %li_lv_shadow = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 12, i32 0, i32 12
  %2 = ptrtoint ptr %li_lv_shadow to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %li_lv_shadow, align 4
  tail call void @kvfree(ptr noundef %3) #11
  %q_qlock = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 16
  tail call void @mutex_destroy(ptr noundef %q_qlock) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %4 = load ptr, ptr @xfsstats, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %add = add i32 %11, %5
  %12 = inttoptr i32 %add to ptr
  %xs_qm_dquot = getelementptr inbounds %struct.__xfsstats, ptr %12, i32 0, i32 89
  %13 = ptrtoint ptr %xs_qm_dquot to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %xs_qm_dquot, align 4
  %dec = add i32 %14, -1
  store i32 %dec, ptr %xs_qm_dquot, align 4
  %q_mount = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 1
  %15 = ptrtoint ptr %q_mount to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %q_mount, align 8
  %m_stats = getelementptr inbounds %struct.xfs_mount, ptr %16, i32 0, i32 92
  %17 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %m_stats, align 4
  %19 = ptrtoint ptr %18 to i32
  %20 = load i32, ptr %cpu, align 4
  %arrayidx14 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx14, align 4
  %add15 = add i32 %22, %19
  %23 = inttoptr i32 %add15 to ptr
  %xs_qm_dquot16 = getelementptr inbounds %struct.__xfsstats, ptr %23, i32 0, i32 89
  %24 = ptrtoint ptr %xs_qm_dquot16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %xs_qm_dquot16, align 4
  %dec17 = add i32 %25, -1
  store i32 %dec17, ptr %xs_qm_dquot16, align 4
  %26 = load ptr, ptr @xfs_dquot_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %26, ptr noundef %dqp) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_qm_adjust_dqlimits(ptr nocapture noundef %dq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %q_mount = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 1
  %0 = ptrtoint ptr %q_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q_mount, align 8
  %m_quotainfo = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_quotainfo, align 4
  %q_id = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 4
  %4 = ptrtoint ptr %q_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %q_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !133

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 77) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %q_type.i = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 2
  %6 = ptrtoint ptr %q_type.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %q_type.i, align 4
  %trunc = trunc i8 %7 to i3
  %8 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i3 %trunc, label %sw.default.i [
    i3 1, label %sw.bb.i
    i3 -4, label %sw.bb1.i
    i3 2, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %qi_usr_default.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %3, i32 0, i32 12
  br label %xfs_get_defquota.exit

sw.bb1.i:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %qi_grp_default.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %3, i32 0, i32 13
  br label %xfs_get_defquota.exit

sw.bb2.i:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %qi_prj_default.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %3, i32 0, i32 14
  br label %xfs_get_defquota.exit

sw.default.i:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.13, i32 noundef 171) #11
  br label %xfs_get_defquota.exit

xfs_get_defquota.exit:                            ; preds = %sw.default.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ null, %sw.default.i ], [ %qi_prj_default.i, %sw.bb2.i ], [ %qi_grp_default.i, %sw.bb1.i ], [ %qi_usr_default.i, %sw.bb.i ]
  %softlimit = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 9, i32 3
  %9 = ptrtoint ptr %softlimit to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %softlimit, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool4.not = icmp eq i64 %10, 0
  br i1 %tobool4.not, label %if.then, label %xfs_get_defquota.exit.if.end_crit_edge

xfs_get_defquota.exit.if.end_crit_edge:           ; preds = %xfs_get_defquota.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %xfs_get_defquota.exit
  call void @__sanitizer_cov_trace_pc() #13
  %soft = getelementptr inbounds %struct.xfs_quota_limits, ptr %retval.0.i, i32 0, i32 1
  %11 = ptrtoint ptr %soft to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %soft, align 8
  %13 = ptrtoint ptr %softlimit to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %softlimit, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %xfs_get_defquota.exit.if.end_crit_edge
  %prealloc.0 = phi i32 [ 0, %xfs_get_defquota.exit.if.end_crit_edge ], [ 1, %if.then ]
  %hardlimit = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 9, i32 2
  %14 = ptrtoint ptr %hardlimit to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %hardlimit, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool8.not = icmp eq i64 %15, 0
  br i1 %tobool8.not, label %if.then9, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %retval.0.i, align 8
  %18 = ptrtoint ptr %hardlimit to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %hardlimit, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end.if.end13_crit_edge
  %prealloc.1 = phi i32 [ %prealloc.0, %if.end.if.end13_crit_edge ], [ 1, %if.then9 ]
  %softlimit14 = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 10, i32 3
  %19 = ptrtoint ptr %softlimit14 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %softlimit14, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %tobool15.not = icmp eq i64 %20, 0
  br i1 %tobool15.not, label %if.then16, label %if.end13.if.end20_crit_edge

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %soft17 = getelementptr inbounds %struct.xfs_def_quota, ptr %retval.0.i, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %soft17 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %soft17, align 8
  %23 = ptrtoint ptr %softlimit14 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %softlimit14, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end13.if.end20_crit_edge
  %hardlimit22 = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 10, i32 2
  %24 = ptrtoint ptr %hardlimit22 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %hardlimit22, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %25)
  %tobool23.not = icmp eq i64 %25, 0
  br i1 %tobool23.not, label %if.then24, label %if.end20.if.end29_crit_edge

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %ino25 = getelementptr inbounds %struct.xfs_def_quota, ptr %retval.0.i, i32 0, i32 1
  %26 = ptrtoint ptr %ino25 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %ino25, align 8
  %28 = ptrtoint ptr %hardlimit22 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %hardlimit22, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %if.end20.if.end29_crit_edge
  %softlimit30 = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 11, i32 3
  %29 = ptrtoint ptr %softlimit30 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %softlimit30, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %30)
  %tobool31.not = icmp eq i64 %30, 0
  br i1 %tobool31.not, label %if.then32, label %if.end29.if.end36_crit_edge

if.end29.if.end36_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %soft33 = getelementptr inbounds %struct.xfs_def_quota, ptr %retval.0.i, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %soft33 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %soft33, align 8
  %33 = ptrtoint ptr %softlimit30 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %softlimit30, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.end29.if.end36_crit_edge
  %hardlimit38 = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 11, i32 2
  %34 = ptrtoint ptr %hardlimit38 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %hardlimit38, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %35)
  %tobool39.not = icmp eq i64 %35, 0
  br i1 %tobool39.not, label %if.then40, label %if.end36.if.end45_crit_edge

if.end36.if.end45_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  %rtb41 = getelementptr inbounds %struct.xfs_def_quota, ptr %retval.0.i, i32 0, i32 2
  %36 = ptrtoint ptr %rtb41 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %rtb41, align 8
  %38 = ptrtoint ptr %hardlimit38 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %hardlimit38, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then40, %if.end36.if.end45_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prealloc.1)
  %tobool46.not = icmp eq i32 %prealloc.1, 0
  br i1 %tobool46.not, label %if.end45.if.end48_crit_edge, label %if.then47

if.end45.if.end48_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then47:                                        ; preds = %if.end45
  %39 = ptrtoint ptr %hardlimit to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %hardlimit, align 8
  %q_prealloc_hi_wmark.i = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 14
  %41 = ptrtoint ptr %q_prealloc_hi_wmark.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %q_prealloc_hi_wmark.i, align 8
  %42 = ptrtoint ptr %softlimit to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %softlimit, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %43)
  %tobool.not.i = icmp eq i64 %43, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then47.xfs_dquot_set_prealloc_limits.exit_crit_edge

if.then47.xfs_dquot_set_prealloc_limits.exit_crit_edge: ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_dquot_set_prealloc_limits.exit

if.then.i:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  %44 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %40, i32 0) #14, !srcloc !134
  %asmresult.i.i = extractvalue { i64, i32 } %44, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %44, 1
  %45 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %40, i64 %asmresult.i.i, i32 %asmresult4.i.i) #14, !srcloc !135
  %asmresult10.i.i = extractvalue { i64, i32 } %45, 0
  %div168608.i = lshr i64 %asmresult10.i.i, 6
  %mul198.i = mul i64 %div168608.i, 95
  br label %xfs_dquot_set_prealloc_limits.exit

xfs_dquot_set_prealloc_limits.exit:               ; preds = %if.then.i, %if.then47.xfs_dquot_set_prealloc_limits.exit_crit_edge
  %storemerge.i = phi i64 [ %mul198.i, %if.then.i ], [ %43, %if.then47.xfs_dquot_set_prealloc_limits.exit_crit_edge ]
  %q_prealloc_lo_wmark.i = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 13
  %46 = ptrtoint ptr %q_prealloc_lo_wmark.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %storemerge.i, ptr %q_prealloc_lo_wmark.i, align 8
  %47 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %40, i32 0) #14, !srcloc !134
  %asmresult.i610.i = extractvalue { i64, i32 } %47, 0
  %asmresult4.i611.i = extractvalue { i64, i32 } %47, 1
  %48 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %40, i64 %asmresult.i610.i, i32 %asmresult4.i611.i) #14, !srcloc !135
  %asmresult10.i612.i = extractvalue { i64, i32 } %48, 0
  %div396609.i = lshr i64 %asmresult10.i612.i, 6
  %q_low_space.i = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 15
  %49 = ptrtoint ptr %q_low_space.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %div396609.i, ptr %q_low_space.i, align 8
  %mul422.i = mul nuw nsw i64 %div396609.i, 3
  %arrayidx424.i = getelementptr %struct.xfs_dquot, ptr %dq, i32 0, i32 15, i32 1
  %50 = ptrtoint ptr %arrayidx424.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %mul422.i, ptr %arrayidx424.i, align 8
  %mul425.i = mul nuw nsw i64 %div396609.i, 5
  %arrayidx427.i = getelementptr %struct.xfs_dquot, ptr %dq, i32 0, i32 15, i32 2
  %51 = ptrtoint ptr %arrayidx427.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %mul425.i, ptr %arrayidx427.i, align 8
  br label %if.end48

if.end48:                                         ; preds = %xfs_dquot_set_prealloc_limits.exit, %if.end45.if.end48_crit_edge
  ret void
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_dquot_set_prealloc_limits(ptr nocapture noundef %dqp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hardlimit = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 9, i32 2
  %0 = ptrtoint ptr %hardlimit to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %hardlimit, align 8
  %q_prealloc_hi_wmark = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 14
  %2 = ptrtoint ptr %q_prealloc_hi_wmark to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %q_prealloc_hi_wmark, align 8
  %softlimit = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 9, i32 3
  %3 = ptrtoint ptr %softlimit to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %softlimit, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end199_crit_edge

entry.if.end199_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end199

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %1, i32 0) #14, !srcloc !134
  %asmresult.i = extractvalue { i64, i32 } %5, 0
  %asmresult4.i = extractvalue { i64, i32 } %5, 1
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %1, i64 %asmresult.i, i32 %asmresult4.i) #14, !srcloc !135
  %asmresult10.i = extractvalue { i64, i32 } %6, 0
  %div168608 = lshr i64 %asmresult10.i, 6
  %mul198 = mul i64 %div168608, 95
  br label %if.end199

if.end199:                                        ; preds = %if.then, %entry.if.end199_crit_edge
  %storemerge = phi i64 [ %mul198, %if.then ], [ %4, %entry.if.end199_crit_edge ]
  %q_prealloc_lo_wmark = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 13
  %7 = ptrtoint ptr %q_prealloc_lo_wmark to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %storemerge, ptr %q_prealloc_lo_wmark, align 8
  %8 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %1, i32 0) #14, !srcloc !134
  %asmresult.i610 = extractvalue { i64, i32 } %8, 0
  %asmresult4.i611 = extractvalue { i64, i32 } %8, 1
  %9 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %1, i64 %asmresult.i610, i32 %asmresult4.i611) #14, !srcloc !135
  %asmresult10.i612 = extractvalue { i64, i32 } %9, 0
  %div396609 = lshr i64 %asmresult10.i612, 6
  %q_low_space = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 15
  %10 = ptrtoint ptr %q_low_space to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %div396609, ptr %q_low_space, align 8
  %mul422 = mul nuw nsw i64 %div396609, 3
  %arrayidx424 = getelementptr %struct.xfs_dquot, ptr %dqp, i32 0, i32 15, i32 1
  %11 = ptrtoint ptr %arrayidx424 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %mul422, ptr %arrayidx424, align 8
  %mul425 = mul nuw nsw i64 %div396609, 5
  %arrayidx427 = getelementptr %struct.xfs_dquot, ptr %dqp, i32 0, i32 15, i32 2
  %12 = ptrtoint ptr %arrayidx427 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %mul425, ptr %arrayidx427, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @xfs_dquot_set_timeout(ptr nocapture noundef readonly %mp, i64 noundef %timeout) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %m_quotainfo = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 12
  %0 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_quotainfo, align 4
  %qi_expiry_min = getelementptr inbounds %struct.xfs_quotainfo, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %qi_expiry_min to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %qi_expiry_min, align 8
  %4 = tail call i64 @llvm.smax.i64(i64 %3, i64 %timeout)
  %qi_expiry_max = getelementptr inbounds %struct.xfs_quotainfo, ptr %1, i32 0, i32 17
  %5 = ptrtoint ptr %qi_expiry_max to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %qi_expiry_max, align 8
  %7 = tail call i64 @llvm.smin.i64(i64 %4, i64 %6)
  ret i64 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @xfs_dquot_set_grace_period(i64 noundef %grace) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i64 @llvm.smax.i64(i64 %grace, i64 0)
  %1 = tail call i64 @llvm.umin.i64(i64 %0, i64 4294967295)
  ret i64 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_qm_adjust_dqtimers(ptr nocapture noundef %dq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %q_mount = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 1
  %0 = ptrtoint ptr %q_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q_mount, align 8
  %m_quotainfo = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_quotainfo, align 4
  %q_id = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 4
  %4 = ptrtoint ptr %q_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %q_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !133

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 167) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %q_type.i = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 2
  %6 = ptrtoint ptr %q_type.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %q_type.i, align 4
  %trunc = trunc i8 %7 to i3
  %8 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.36)
  switch i3 %trunc, label %sw.default.i [
    i3 1, label %sw.bb.i
    i3 -4, label %sw.bb1.i
    i3 2, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %qi_usr_default.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %3, i32 0, i32 12
  br label %xfs_get_defquota.exit

sw.bb1.i:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %qi_grp_default.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %3, i32 0, i32 13
  br label %xfs_get_defquota.exit

sw.bb2.i:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %qi_prj_default.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %3, i32 0, i32 14
  br label %xfs_get_defquota.exit

sw.default.i:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.13, i32 noundef 171) #11
  br label %xfs_get_defquota.exit

xfs_get_defquota.exit:                            ; preds = %sw.default.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ null, %sw.default.i ], [ %qi_prj_default.i, %sw.bb2.i ], [ %qi_grp_default.i, %sw.bb1.i ], [ %qi_usr_default.i, %sw.bb.i ]
  %9 = ptrtoint ptr %q_mount to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %q_mount, align 8
  %hardlimit.i = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 9, i32 2
  %11 = ptrtoint ptr %hardlimit.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %hardlimit.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %cmp.i = icmp eq i64 %12, 0
  br i1 %cmp.i, label %xfs_get_defquota.exit.cond.end.i_crit_edge, label %lor.rhs.i

xfs_get_defquota.exit.cond.end.i_crit_edge:       ; preds = %xfs_get_defquota.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

lor.rhs.i:                                        ; preds = %xfs_get_defquota.exit
  %softlimit.i = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 9, i32 3
  %13 = ptrtoint ptr %softlimit.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %softlimit.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %12)
  %cmp2.not.i = icmp ugt i64 %14, %12
  br i1 %cmp2.not.i, label %cond.false.i, label %lor.rhs.i.cond.end.i_crit_edge, !prof !133

lor.rhs.i.cond.end.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.false.i:                                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 131) #11
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %lor.rhs.i.cond.end.i_crit_edge, %xfs_get_defquota.exit.cond.end.i_crit_edge
  %softlimit4.i = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 9, i32 3
  %15 = ptrtoint ptr %softlimit4.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %softlimit4.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool5.not.i = icmp eq i64 %16, 0
  br i1 %tobool5.not.i, label %cond.end.i.lor.lhs.false.i_crit_edge, label %land.lhs.true.i

cond.end.i.lor.lhs.false.i_crit_edge:             ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %cond.end.i
  %count.i = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 9, i32 1
  %17 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %16)
  %cmp7.i = icmp ugt i64 %18, %16
  br i1 %cmp7.i, label %land.lhs.true.i.if.then.i_crit_edge, label %land.lhs.true.i.lor.lhs.false.i_crit_edge

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i.lor.lhs.false.i_crit_edge, %cond.end.i.lor.lhs.false.i_crit_edge
  %19 = ptrtoint ptr %hardlimit.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %hardlimit.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %tobool9.not.i = icmp eq i64 %20, 0
  br i1 %tobool9.not.i, label %lor.lhs.false.i.if.else.i_crit_edge, label %land.lhs.true10.i

lor.lhs.false.i.if.else.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true10.i:                                ; preds = %lor.lhs.false.i
  %count11.i = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 9, i32 1
  %21 = ptrtoint ptr %count11.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %count11.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %20)
  %cmp13.i = icmp ugt i64 %22, %20
  br i1 %cmp13.i, label %land.lhs.true10.i.if.then.i_crit_edge, label %land.lhs.true10.i.if.else.i_crit_edge

land.lhs.true10.i.if.else.i_crit_edge:            ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true10.i.if.then.i_crit_edge:            ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true10.i.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge
  %timer.i = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 9, i32 4
  %23 = ptrtoint ptr %timer.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %timer.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %cmp14.i = icmp eq i64 %24, 0
  br i1 %cmp14.i, label %if.then15.i, label %if.then.i.xfs_qm_adjust_res_timer.exit_crit_edge

if.then.i.xfs_qm_adjust_res_timer.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_qm_adjust_res_timer.exit

if.then15.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i64 @ktime_get_real_seconds() #11
  %time.i = getelementptr inbounds %struct.xfs_quota_limits, ptr %retval.0.i, i32 0, i32 2
  %25 = ptrtoint ptr %time.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %time.i, align 8
  %add.i = add i64 %26, %call.i
  %m_quotainfo.i.i = getelementptr inbounds %struct.xfs_mount, ptr %10, i32 0, i32 12
  %27 = ptrtoint ptr %m_quotainfo.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %m_quotainfo.i.i, align 4
  %qi_expiry_min.i.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %28, i32 0, i32 16
  %29 = ptrtoint ptr %qi_expiry_min.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %qi_expiry_min.i.i, align 8
  %31 = tail call i64 @llvm.smax.i64(i64 %30, i64 %add.i) #11
  %qi_expiry_max.i.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %28, i32 0, i32 17
  %32 = ptrtoint ptr %qi_expiry_max.i.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %qi_expiry_max.i.i, align 8
  %34 = tail call i64 @llvm.smin.i64(i64 %31, i64 %33) #11
  %35 = ptrtoint ptr %timer.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %timer.i, align 8
  br label %xfs_qm_adjust_res_timer.exit

if.else.i:                                        ; preds = %land.lhs.true10.i.if.else.i_crit_edge, %lor.lhs.false.i.if.else.i_crit_edge
  %timer18.i = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 9, i32 4
  %36 = ptrtoint ptr %timer18.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %timer18.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %37)
  %cmp19.i = icmp eq i64 %37, 0
  br i1 %cmp19.i, label %if.then20.i, label %if.else21.i

if.then20.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %warnings.i = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 9, i32 5
  %38 = ptrtoint ptr %warnings.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %warnings.i, align 8
  br label %xfs_qm_adjust_res_timer.exit

if.else21.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %timer18.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 0, ptr %timer18.i, align 8
  br label %xfs_qm_adjust_res_timer.exit

xfs_qm_adjust_res_timer.exit:                     ; preds = %if.else21.i, %if.then20.i, %if.then15.i, %if.then.i.xfs_qm_adjust_res_timer.exit_crit_edge
  %40 = ptrtoint ptr %q_mount to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %q_mount, align 8
  %hardlimit.i17 = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 10, i32 2
  %42 = ptrtoint ptr %hardlimit.i17 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %hardlimit.i17, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %43)
  %cmp.i18 = icmp eq i64 %43, 0
  br i1 %cmp.i18, label %xfs_qm_adjust_res_timer.exit.cond.end.i25_crit_edge, label %lor.rhs.i21

xfs_qm_adjust_res_timer.exit.cond.end.i25_crit_edge: ; preds = %xfs_qm_adjust_res_timer.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i25

lor.rhs.i21:                                      ; preds = %xfs_qm_adjust_res_timer.exit
  %softlimit.i19 = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 10, i32 3
  %44 = ptrtoint ptr %softlimit.i19 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %softlimit.i19, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %45, i64 %43)
  %cmp2.not.i20 = icmp ugt i64 %45, %43
  br i1 %cmp2.not.i20, label %cond.false.i22, label %lor.rhs.i21.cond.end.i25_crit_edge, !prof !133

lor.rhs.i21.cond.end.i25_crit_edge:               ; preds = %lor.rhs.i21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i25

cond.false.i22:                                   ; preds = %lor.rhs.i21
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 131) #11
  br label %cond.end.i25

cond.end.i25:                                     ; preds = %cond.false.i22, %lor.rhs.i21.cond.end.i25_crit_edge, %xfs_qm_adjust_res_timer.exit.cond.end.i25_crit_edge
  %softlimit4.i23 = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 10, i32 3
  %46 = ptrtoint ptr %softlimit4.i23 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %softlimit4.i23, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %47)
  %tobool5.not.i24 = icmp eq i64 %47, 0
  br i1 %tobool5.not.i24, label %cond.end.i25.lor.lhs.false.i30_crit_edge, label %land.lhs.true.i28

cond.end.i25.lor.lhs.false.i30_crit_edge:         ; preds = %cond.end.i25
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i30

land.lhs.true.i28:                                ; preds = %cond.end.i25
  %count.i26 = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 10, i32 1
  %48 = ptrtoint ptr %count.i26 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %count.i26, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %49, i64 %47)
  %cmp7.i27 = icmp ugt i64 %49, %47
  br i1 %cmp7.i27, label %land.lhs.true.i28.if.then.i36_crit_edge, label %land.lhs.true.i28.lor.lhs.false.i30_crit_edge

land.lhs.true.i28.lor.lhs.false.i30_crit_edge:    ; preds = %land.lhs.true.i28
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i30

land.lhs.true.i28.if.then.i36_crit_edge:          ; preds = %land.lhs.true.i28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i36

lor.lhs.false.i30:                                ; preds = %land.lhs.true.i28.lor.lhs.false.i30_crit_edge, %cond.end.i25.lor.lhs.false.i30_crit_edge
  %50 = ptrtoint ptr %hardlimit.i17 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %hardlimit.i17, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %51)
  %tobool9.not.i29 = icmp eq i64 %51, 0
  br i1 %tobool9.not.i29, label %lor.lhs.false.i30.if.else.i46_crit_edge, label %land.lhs.true10.i33

lor.lhs.false.i30.if.else.i46_crit_edge:          ; preds = %lor.lhs.false.i30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i46

land.lhs.true10.i33:                              ; preds = %lor.lhs.false.i30
  %count11.i31 = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 10, i32 1
  %52 = ptrtoint ptr %count11.i31 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %count11.i31, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %53, i64 %51)
  %cmp13.i32 = icmp ugt i64 %53, %51
  br i1 %cmp13.i32, label %land.lhs.true10.i33.if.then.i36_crit_edge, label %land.lhs.true10.i33.if.else.i46_crit_edge

land.lhs.true10.i33.if.else.i46_crit_edge:        ; preds = %land.lhs.true10.i33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i46

land.lhs.true10.i33.if.then.i36_crit_edge:        ; preds = %land.lhs.true10.i33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i36

if.then.i36:                                      ; preds = %land.lhs.true10.i33.if.then.i36_crit_edge, %land.lhs.true.i28.if.then.i36_crit_edge
  %timer.i34 = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 10, i32 4
  %54 = ptrtoint ptr %timer.i34 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %timer.i34, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %55)
  %cmp14.i35 = icmp eq i64 %55, 0
  br i1 %cmp14.i35, label %if.then15.i43, label %if.then.i36.xfs_qm_adjust_res_timer.exit50_crit_edge

if.then.i36.xfs_qm_adjust_res_timer.exit50_crit_edge: ; preds = %if.then.i36
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_qm_adjust_res_timer.exit50

if.then15.i43:                                    ; preds = %if.then.i36
  call void @__sanitizer_cov_trace_pc() #13
  %call.i37 = tail call i64 @ktime_get_real_seconds() #11
  %time.i38 = getelementptr inbounds %struct.xfs_def_quota, ptr %retval.0.i, i32 0, i32 1, i32 2
  %56 = ptrtoint ptr %time.i38 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %time.i38, align 8
  %add.i39 = add i64 %57, %call.i37
  %m_quotainfo.i.i40 = getelementptr inbounds %struct.xfs_mount, ptr %41, i32 0, i32 12
  %58 = ptrtoint ptr %m_quotainfo.i.i40 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %m_quotainfo.i.i40, align 4
  %qi_expiry_min.i.i41 = getelementptr inbounds %struct.xfs_quotainfo, ptr %59, i32 0, i32 16
  %60 = ptrtoint ptr %qi_expiry_min.i.i41 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %qi_expiry_min.i.i41, align 8
  %62 = tail call i64 @llvm.smax.i64(i64 %61, i64 %add.i39) #11
  %qi_expiry_max.i.i42 = getelementptr inbounds %struct.xfs_quotainfo, ptr %59, i32 0, i32 17
  %63 = ptrtoint ptr %qi_expiry_max.i.i42 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %qi_expiry_max.i.i42, align 8
  %65 = tail call i64 @llvm.smin.i64(i64 %62, i64 %64) #11
  %66 = ptrtoint ptr %timer.i34 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %65, ptr %timer.i34, align 8
  br label %xfs_qm_adjust_res_timer.exit50

if.else.i46:                                      ; preds = %land.lhs.true10.i33.if.else.i46_crit_edge, %lor.lhs.false.i30.if.else.i46_crit_edge
  %timer18.i44 = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 10, i32 4
  %67 = ptrtoint ptr %timer18.i44 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %timer18.i44, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %68)
  %cmp19.i45 = icmp eq i64 %68, 0
  br i1 %cmp19.i45, label %if.then20.i48, label %if.else21.i49

if.then20.i48:                                    ; preds = %if.else.i46
  call void @__sanitizer_cov_trace_pc() #13
  %warnings.i47 = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 10, i32 5
  %69 = ptrtoint ptr %warnings.i47 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 0, ptr %warnings.i47, align 8
  br label %xfs_qm_adjust_res_timer.exit50

if.else21.i49:                                    ; preds = %if.else.i46
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %timer18.i44 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 0, ptr %timer18.i44, align 8
  br label %xfs_qm_adjust_res_timer.exit50

xfs_qm_adjust_res_timer.exit50:                   ; preds = %if.else21.i49, %if.then20.i48, %if.then15.i43, %if.then.i36.xfs_qm_adjust_res_timer.exit50_crit_edge
  %71 = ptrtoint ptr %q_mount to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %q_mount, align 8
  %hardlimit.i51 = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 11, i32 2
  %73 = ptrtoint ptr %hardlimit.i51 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %hardlimit.i51, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %74)
  %cmp.i52 = icmp eq i64 %74, 0
  br i1 %cmp.i52, label %xfs_qm_adjust_res_timer.exit50.cond.end.i59_crit_edge, label %lor.rhs.i55

xfs_qm_adjust_res_timer.exit50.cond.end.i59_crit_edge: ; preds = %xfs_qm_adjust_res_timer.exit50
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i59

lor.rhs.i55:                                      ; preds = %xfs_qm_adjust_res_timer.exit50
  %softlimit.i53 = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 11, i32 3
  %75 = ptrtoint ptr %softlimit.i53 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %softlimit.i53, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %76, i64 %74)
  %cmp2.not.i54 = icmp ugt i64 %76, %74
  br i1 %cmp2.not.i54, label %cond.false.i56, label %lor.rhs.i55.cond.end.i59_crit_edge, !prof !133

lor.rhs.i55.cond.end.i59_crit_edge:               ; preds = %lor.rhs.i55
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i59

cond.false.i56:                                   ; preds = %lor.rhs.i55
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 131) #11
  br label %cond.end.i59

cond.end.i59:                                     ; preds = %cond.false.i56, %lor.rhs.i55.cond.end.i59_crit_edge, %xfs_qm_adjust_res_timer.exit50.cond.end.i59_crit_edge
  %softlimit4.i57 = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 11, i32 3
  %77 = ptrtoint ptr %softlimit4.i57 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %softlimit4.i57, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %78)
  %tobool5.not.i58 = icmp eq i64 %78, 0
  br i1 %tobool5.not.i58, label %cond.end.i59.lor.lhs.false.i64_crit_edge, label %land.lhs.true.i62

cond.end.i59.lor.lhs.false.i64_crit_edge:         ; preds = %cond.end.i59
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i64

land.lhs.true.i62:                                ; preds = %cond.end.i59
  %count.i60 = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 11, i32 1
  %79 = ptrtoint ptr %count.i60 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %count.i60, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %80, i64 %78)
  %cmp7.i61 = icmp ugt i64 %80, %78
  br i1 %cmp7.i61, label %land.lhs.true.i62.if.then.i70_crit_edge, label %land.lhs.true.i62.lor.lhs.false.i64_crit_edge

land.lhs.true.i62.lor.lhs.false.i64_crit_edge:    ; preds = %land.lhs.true.i62
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i64

land.lhs.true.i62.if.then.i70_crit_edge:          ; preds = %land.lhs.true.i62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i70

lor.lhs.false.i64:                                ; preds = %land.lhs.true.i62.lor.lhs.false.i64_crit_edge, %cond.end.i59.lor.lhs.false.i64_crit_edge
  %81 = ptrtoint ptr %hardlimit.i51 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %hardlimit.i51, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %82)
  %tobool9.not.i63 = icmp eq i64 %82, 0
  br i1 %tobool9.not.i63, label %lor.lhs.false.i64.if.else.i80_crit_edge, label %land.lhs.true10.i67

lor.lhs.false.i64.if.else.i80_crit_edge:          ; preds = %lor.lhs.false.i64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i80

land.lhs.true10.i67:                              ; preds = %lor.lhs.false.i64
  %count11.i65 = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 11, i32 1
  %83 = ptrtoint ptr %count11.i65 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %count11.i65, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %84, i64 %82)
  %cmp13.i66 = icmp ugt i64 %84, %82
  br i1 %cmp13.i66, label %land.lhs.true10.i67.if.then.i70_crit_edge, label %land.lhs.true10.i67.if.else.i80_crit_edge

land.lhs.true10.i67.if.else.i80_crit_edge:        ; preds = %land.lhs.true10.i67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i80

land.lhs.true10.i67.if.then.i70_crit_edge:        ; preds = %land.lhs.true10.i67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i70

if.then.i70:                                      ; preds = %land.lhs.true10.i67.if.then.i70_crit_edge, %land.lhs.true.i62.if.then.i70_crit_edge
  %timer.i68 = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 11, i32 4
  %85 = ptrtoint ptr %timer.i68 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %timer.i68, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %86)
  %cmp14.i69 = icmp eq i64 %86, 0
  br i1 %cmp14.i69, label %if.then15.i77, label %if.then.i70.xfs_qm_adjust_res_timer.exit84_crit_edge

if.then.i70.xfs_qm_adjust_res_timer.exit84_crit_edge: ; preds = %if.then.i70
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_qm_adjust_res_timer.exit84

if.then15.i77:                                    ; preds = %if.then.i70
  call void @__sanitizer_cov_trace_pc() #13
  %call.i71 = tail call i64 @ktime_get_real_seconds() #11
  %time.i72 = getelementptr inbounds %struct.xfs_def_quota, ptr %retval.0.i, i32 0, i32 2, i32 2
  %87 = ptrtoint ptr %time.i72 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %time.i72, align 8
  %add.i73 = add i64 %88, %call.i71
  %m_quotainfo.i.i74 = getelementptr inbounds %struct.xfs_mount, ptr %72, i32 0, i32 12
  %89 = ptrtoint ptr %m_quotainfo.i.i74 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %m_quotainfo.i.i74, align 4
  %qi_expiry_min.i.i75 = getelementptr inbounds %struct.xfs_quotainfo, ptr %90, i32 0, i32 16
  %91 = ptrtoint ptr %qi_expiry_min.i.i75 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %qi_expiry_min.i.i75, align 8
  %93 = tail call i64 @llvm.smax.i64(i64 %92, i64 %add.i73) #11
  %qi_expiry_max.i.i76 = getelementptr inbounds %struct.xfs_quotainfo, ptr %90, i32 0, i32 17
  %94 = ptrtoint ptr %qi_expiry_max.i.i76 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %qi_expiry_max.i.i76, align 8
  %96 = tail call i64 @llvm.smin.i64(i64 %93, i64 %95) #11
  %97 = ptrtoint ptr %timer.i68 to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %96, ptr %timer.i68, align 8
  br label %xfs_qm_adjust_res_timer.exit84

if.else.i80:                                      ; preds = %land.lhs.true10.i67.if.else.i80_crit_edge, %lor.lhs.false.i64.if.else.i80_crit_edge
  %timer18.i78 = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 11, i32 4
  %98 = ptrtoint ptr %timer18.i78 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %timer18.i78, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %99)
  %cmp19.i79 = icmp eq i64 %99, 0
  br i1 %cmp19.i79, label %if.then20.i82, label %if.else21.i83

if.then20.i82:                                    ; preds = %if.else.i80
  call void @__sanitizer_cov_trace_pc() #13
  %warnings.i81 = getelementptr inbounds %struct.xfs_dquot, ptr %dq, i32 0, i32 11, i32 5
  %100 = ptrtoint ptr %warnings.i81 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 0, ptr %warnings.i81, align 8
  br label %xfs_qm_adjust_res_timer.exit84

if.else21.i83:                                    ; preds = %if.else.i80
  call void @__sanitizer_cov_trace_pc() #13
  %101 = ptrtoint ptr %timer18.i78 to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 0, ptr %timer18.i78, align 8
  br label %xfs_qm_adjust_res_timer.exit84

xfs_qm_adjust_res_timer.exit84:                   ; preds = %if.else21.i83, %if.then20.i82, %if.then15.i77, %if.then.i70.xfs_qm_adjust_res_timer.exit84_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_dquot_to_disk(ptr noundef writeonly %ddqp, ptr noundef %dqp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ddqp to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 17489, ptr %ddqp, align 8
  %d_version = getelementptr inbounds %struct.xfs_disk_dquot, ptr %ddqp, i32 0, i32 1
  %1 = ptrtoint ptr %d_version to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %d_version, align 2
  %q_type = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 2
  %2 = ptrtoint ptr %q_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %q_type, align 4
  %d_type = getelementptr inbounds %struct.xfs_disk_dquot, ptr %ddqp, i32 0, i32 2
  %4 = ptrtoint ptr %d_type to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %d_type, align 1
  %q_id = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 4
  %5 = ptrtoint ptr %q_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %q_id, align 8
  %d_id = getelementptr inbounds %struct.xfs_disk_dquot, ptr %ddqp, i32 0, i32 3
  %7 = ptrtoint ptr %d_id to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %d_id, align 4
  %d_pad0 = getelementptr inbounds %struct.xfs_disk_dquot, ptr %ddqp, i32 0, i32 14
  %8 = ptrtoint ptr %d_pad0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %d_pad0, align 4
  %d_pad = getelementptr inbounds %struct.xfs_disk_dquot, ptr %ddqp, i32 0, i32 20
  %9 = ptrtoint ptr %d_pad to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %d_pad, align 2
  %hardlimit = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 9, i32 2
  %10 = ptrtoint ptr %hardlimit to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %hardlimit, align 8
  %d_blk_hardlimit = getelementptr inbounds %struct.xfs_disk_dquot, ptr %ddqp, i32 0, i32 4
  %12 = ptrtoint ptr %d_blk_hardlimit to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %d_blk_hardlimit, align 8
  %softlimit = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 9, i32 3
  %13 = ptrtoint ptr %softlimit to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %softlimit, align 8
  %d_blk_softlimit = getelementptr inbounds %struct.xfs_disk_dquot, ptr %ddqp, i32 0, i32 5
  %15 = ptrtoint ptr %d_blk_softlimit to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %d_blk_softlimit, align 8
  %hardlimit2 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 10, i32 2
  %16 = ptrtoint ptr %hardlimit2 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %hardlimit2, align 8
  %d_ino_hardlimit = getelementptr inbounds %struct.xfs_disk_dquot, ptr %ddqp, i32 0, i32 6
  %18 = ptrtoint ptr %d_ino_hardlimit to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %d_ino_hardlimit, align 8
  %softlimit4 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 10, i32 3
  %19 = ptrtoint ptr %softlimit4 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %softlimit4, align 8
  %d_ino_softlimit = getelementptr inbounds %struct.xfs_disk_dquot, ptr %ddqp, i32 0, i32 7
  %21 = ptrtoint ptr %d_ino_softlimit to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %d_ino_softlimit, align 8
  %hardlimit5 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 11, i32 2
  %22 = ptrtoint ptr %hardlimit5 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %hardlimit5, align 8
  %d_rtb_hardlimit = getelementptr inbounds %struct.xfs_disk_dquot, ptr %ddqp, i32 0, i32 15
  %24 = ptrtoint ptr %d_rtb_hardlimit to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %d_rtb_hardlimit, align 8
  %softlimit7 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 11, i32 3
  %25 = ptrtoint ptr %softlimit7 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %softlimit7, align 8
  %d_rtb_softlimit = getelementptr inbounds %struct.xfs_disk_dquot, ptr %ddqp, i32 0, i32 16
  %27 = ptrtoint ptr %d_rtb_softlimit to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %d_rtb_softlimit, align 8
  %count = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 9, i32 1
  %28 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %count, align 8
  %d_bcount = getelementptr inbounds %struct.xfs_disk_dquot, ptr %ddqp, i32 0, i32 8
  %30 = ptrtoint ptr %d_bcount to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %d_bcount, align 8
  %count10 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 10, i32 1
  %31 = ptrtoint ptr %count10 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %count10, align 8
  %d_icount = getelementptr inbounds %struct.xfs_disk_dquot, ptr %ddqp, i32 0, i32 9
  %33 = ptrtoint ptr %d_icount to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %d_icount, align 8
  %count12 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 11, i32 1
  %34 = ptrtoint ptr %count12 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %count12, align 8
  %d_rtbcount = getelementptr inbounds %struct.xfs_disk_dquot, ptr %ddqp, i32 0, i32 17
  %36 = ptrtoint ptr %d_rtbcount to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %d_rtbcount, align 8
  %warnings = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 9, i32 5
  %37 = ptrtoint ptr %warnings to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %warnings, align 8
  %d_bwarns = getelementptr inbounds %struct.xfs_disk_dquot, ptr %ddqp, i32 0, i32 13
  %39 = ptrtoint ptr %d_bwarns to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %d_bwarns, align 2
  %warnings15 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 10, i32 5
  %40 = ptrtoint ptr %warnings15 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %warnings15, align 8
  %d_iwarns = getelementptr inbounds %struct.xfs_disk_dquot, ptr %ddqp, i32 0, i32 12
  %42 = ptrtoint ptr %d_iwarns to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %d_iwarns, align 8
  %warnings17 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 11, i32 5
  %43 = ptrtoint ptr %warnings17 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %warnings17, align 8
  %d_rtbwarns = getelementptr inbounds %struct.xfs_disk_dquot, ptr %ddqp, i32 0, i32 19
  %45 = ptrtoint ptr %d_rtbwarns to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %d_rtbwarns, align 4
  %timer = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 9, i32 4
  %46 = ptrtoint ptr %timer to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %timer, align 8
  %call = tail call i32 @xfs_dquot_to_disk_ts(ptr noundef %dqp, i64 noundef %47) #11
  %d_btimer = getelementptr inbounds %struct.xfs_disk_dquot, ptr %ddqp, i32 0, i32 11
  %48 = ptrtoint ptr %d_btimer to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call, ptr %d_btimer, align 4
  %timer20 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 10, i32 4
  %49 = ptrtoint ptr %timer20 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %timer20, align 8
  %call21 = tail call i32 @xfs_dquot_to_disk_ts(ptr noundef %dqp, i64 noundef %50) #11
  %d_itimer = getelementptr inbounds %struct.xfs_disk_dquot, ptr %ddqp, i32 0, i32 10
  %51 = ptrtoint ptr %d_itimer to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call21, ptr %d_itimer, align 8
  %timer23 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 11, i32 4
  %52 = ptrtoint ptr %timer23 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %timer23, align 8
  %call24 = tail call i32 @xfs_dquot_to_disk_ts(ptr noundef %dqp, i64 noundef %53) #11
  %d_rtbtimer = getelementptr inbounds %struct.xfs_disk_dquot, ptr %ddqp, i32 0, i32 18
  %54 = ptrtoint ptr %d_rtbtimer to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %call24, ptr %d_rtbtimer, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dquot_to_disk_ts(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_qm_dqget(ptr noundef %mp, i32 noundef %id, i8 noundef zeroext %type, i1 noundef zeroext %can_alloc, ptr nocapture noundef writeonly %O_dqpp) local_unnamed_addr #0 align 64 {
entry:
  %dqp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %m_quotainfo = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 12
  %0 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_quotainfo, align 4
  %2 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %type, label %xfs_dquot_tree.exit [
    i8 1, label %xfs_dquot_tree.exit.thread
    i8 4, label %xfs_dquot_tree.exit.thread58
    i8 2, label %xfs_dquot_tree.exit.thread61
  ]

xfs_dquot_tree.exit.thread:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dqp) #11
  br label %return.sink.split.i

xfs_dquot_tree.exit.thread58:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %qi_gquota_tree.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dqp) #11
  br label %return.sink.split.i

xfs_dquot_tree.exit.thread61:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %qi_pquota_tree.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %1, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dqp) #11
  br label %return.sink.split.i

xfs_dquot_tree.exit:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.13, i32 noundef 87) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dqp) #11
  br label %cleanup

return.sink.split.i:                              ; preds = %xfs_dquot_tree.exit.thread61, %xfs_dquot_tree.exit.thread58, %xfs_dquot_tree.exit.thread
  %retval.0.i56 = phi ptr [ %qi_pquota_tree.i, %xfs_dquot_tree.exit.thread61 ], [ %qi_gquota_tree.i, %xfs_dquot_tree.exit.thread58 ], [ %1, %xfs_dquot_tree.exit.thread ]
  %.sink55.i = phi i32 [ 8, %xfs_dquot_tree.exit.thread61 ], [ 64, %xfs_dquot_tree.exit.thread58 ], [ 1, %xfs_dquot_tree.exit.thread ]
  %m_qflags8.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 60
  %3 = ptrtoint ptr %m_qflags8.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %m_qflags8.i, align 4
  %and9.i = and i32 %4, %.sink55.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %return.sink.split.i.cleanup_crit_edge, label %restart.preheader

return.sink.split.i.cleanup_crit_edge:            ; preds = %return.sink.split.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

restart.preheader:                                ; preds = %return.sink.split.i
  %call270 = tail call fastcc ptr @xfs_qm_dqget_cache_lookup(ptr noundef %mp, ptr noundef %1, ptr noundef %retval.0.i56, i32 noundef %id)
  %5 = ptrtoint ptr %dqp to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call270, ptr %dqp, align 4
  %tobool3.not71 = icmp eq ptr %call270, null
  br i1 %tobool3.not71, label %if.end5.lr.ph, label %restart.preheader.if.then4_crit_edge

restart.preheader.if.then4_crit_edge:             ; preds = %restart.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

if.end5.lr.ph:                                    ; preds = %restart.preheader
  %m_stats = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 92
  br label %if.end5

if.then4:                                         ; preds = %if.then13.if.then4_crit_edge, %restart.preheader.if.then4_crit_edge
  %call2.lcssa = phi ptr [ %call270, %restart.preheader.if.then4_crit_edge ], [ %call2, %if.then13.if.then4_crit_edge ]
  %6 = ptrtoint ptr %O_dqpp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2.lcssa, ptr %O_dqpp, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.then13.if.end5_crit_edge, %if.end5.lr.ph
  %call7 = call fastcc i32 @xfs_qm_dqread(ptr noundef %mp, i32 noundef %id, i8 noundef zeroext %type, i1 noundef zeroext %can_alloc, ptr noundef nonnull %dqp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %7 = ptrtoint ptr %dqp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dqp, align 4
  %call11 = tail call fastcc i32 @xfs_qm_dqget_cache_insert(ptr noundef %1, ptr noundef %retval.0.i56, i32 noundef %id, ptr noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end32, label %if.then13

if.then13:                                        ; preds = %if.end10
  tail call void @xfs_qm_dqdestroy(ptr noundef %8)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %9 = load ptr, ptr @xfsstats, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %add = add i32 %16, %10
  %17 = inttoptr i32 %add to ptr
  %xs_qm_dquot_dups = getelementptr inbounds %struct.__xfsstats, ptr %17, i32 0, i32 85
  %18 = ptrtoint ptr %xs_qm_dquot_dups to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %xs_qm_dquot_dups, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %xs_qm_dquot_dups, align 4
  %20 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %m_stats, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = load i32, ptr %cpu, align 4
  %arrayidx26 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx26, align 4
  %add27 = add i32 %25, %22
  %26 = inttoptr i32 %add27 to ptr
  %xs_qm_dquot_dups28 = getelementptr inbounds %struct.__xfsstats, ptr %26, i32 0, i32 85
  %27 = ptrtoint ptr %xs_qm_dquot_dups28 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %xs_qm_dquot_dups28, align 4
  %inc29 = add i32 %28, 1
  store i32 %inc29, ptr %xs_qm_dquot_dups28, align 4
  %call2 = tail call fastcc ptr @xfs_qm_dqget_cache_lookup(ptr noundef %mp, ptr noundef %1, ptr noundef %retval.0.i56, i32 noundef %id)
  %29 = ptrtoint ptr %dqp to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call2, ptr %dqp, align 4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then13.if.end5_crit_edge, label %if.then13.if.then4_crit_edge

if.then13.if.then4_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

if.then13.if.end5_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.end32:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @trace_xfs_dqget_miss(ptr noundef %8)
  %30 = ptrtoint ptr %O_dqpp to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %8, ptr %O_dqpp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end5.cleanup_crit_edge, %if.then4, %return.sink.split.i.cleanup_crit_edge, %xfs_dquot_tree.exit
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 0, %if.end32 ], [ -22, %xfs_dquot_tree.exit ], [ -3, %return.sink.split.i.cleanup_crit_edge ], [ %call7, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dqp) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xfs_qm_dqget_cache_lookup(ptr nocapture noundef readonly %mp, ptr noundef %qi, ptr noundef %tree, i32 noundef %id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %qi_tree_lock = getelementptr inbounds %struct.xfs_quotainfo, ptr %qi, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %qi_tree_lock, i32 noundef 0) #11
  %call72 = tail call ptr @radix_tree_lookup(ptr noundef %tree, i32 noundef %id) #11
  %tobool.not73 = icmp eq ptr %call72, null
  br i1 %tobool.not73, label %entry.if.then_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %if.then21.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @mutex_unlock(ptr noundef %qi_tree_lock) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %0 = load ptr, ptr @xfsstats, align 4
  %1 = ptrtoint ptr %0 to i32
  %2 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  %xs_qm_dqcachemisses = getelementptr inbounds %struct.__xfsstats, ptr %8, i32 0, i32 86
  %9 = ptrtoint ptr %xs_qm_dqcachemisses to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %xs_qm_dqcachemisses, align 8
  %inc = add i32 %10, 1
  store i32 %inc, ptr %xs_qm_dqcachemisses, align 8
  %m_stats = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 92
  %11 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %m_stats, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = load i32, ptr %cpu, align 4
  %arrayidx14 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx14, align 4
  %add15 = add i32 %16, %13
  %17 = inttoptr i32 %add15 to ptr
  %xs_qm_dqcachemisses16 = getelementptr inbounds %struct.__xfsstats, ptr %17, i32 0, i32 86
  %18 = ptrtoint ptr %xs_qm_dqcachemisses16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %xs_qm_dqcachemisses16, align 8
  %inc17 = add i32 %19, 1
  store i32 %inc17, ptr %xs_qm_dqcachemisses16, align 8
  br label %cleanup

if.end:                                           ; preds = %if.then21.if.end_crit_edge, %entry.if.end_crit_edge
  %call74 = phi ptr [ %call, %if.then21.if.end_crit_edge ], [ %call72, %entry.if.end_crit_edge ]
  %q_qlock.i = getelementptr inbounds %struct.xfs_dquot, ptr %call74, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %q_qlock.i, i32 noundef 0) #11
  %q_flags = getelementptr inbounds %struct.xfs_dquot, ptr %call74, i32 0, i32 3
  %20 = ptrtoint ptr %q_flags to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %q_flags, align 2
  %22 = and i16 %21, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool20.not = icmp eq i16 %22, 0
  br i1 %tobool20.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.end
  tail call void @mutex_unlock(ptr noundef %q_qlock.i) #11
  tail call void @mutex_unlock(ptr noundef %qi_tree_lock) #11
  tail call fastcc void @trace_xfs_dqget_freeing(ptr noundef nonnull %call74)
  %call.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #11
  tail call void @mutex_lock_nested(ptr noundef %qi_tree_lock, i32 noundef 0) #11
  %call = tail call ptr @radix_tree_lookup(ptr noundef %tree, i32 noundef %id) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then21.if.then_crit_edge, label %if.then21.if.end_crit_edge

if.then21.if.end_crit_edge:                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then21.if.then_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %q_nrefs = getelementptr inbounds %struct.xfs_dquot, ptr %call74, i32 0, i32 5
  %23 = ptrtoint ptr %q_nrefs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %q_nrefs, align 4
  %inc24 = add i32 %24, 1
  store i32 %inc24, ptr %q_nrefs, align 4
  tail call void @mutex_unlock(ptr noundef %qi_tree_lock) #11
  tail call fastcc void @trace_xfs_dqget_hit(ptr noundef nonnull %call74)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %25 = load ptr, ptr @xfsstats, align 4
  %26 = ptrtoint ptr %25 to i32
  %27 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i68 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i68 to ptr
  %cpu35 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %cpu35 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpu35, align 4
  %arrayidx36 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx36, align 4
  %add37 = add i32 %32, %26
  %33 = inttoptr i32 %add37 to ptr
  %xs_qm_dqcachehits = getelementptr inbounds %struct.__xfsstats, ptr %33, i32 0, i32 87
  %34 = ptrtoint ptr %xs_qm_dqcachehits to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %xs_qm_dqcachehits, align 4
  %inc38 = add i32 %35, 1
  store i32 %inc38, ptr %xs_qm_dqcachehits, align 4
  %m_stats45 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 92
  %36 = ptrtoint ptr %m_stats45 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %m_stats45, align 4
  %38 = ptrtoint ptr %37 to i32
  %39 = load i32, ptr %cpu35, align 4
  %arrayidx50 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx50, align 4
  %add51 = add i32 %41, %38
  %42 = inttoptr i32 %add51 to ptr
  %xs_qm_dqcachehits52 = getelementptr inbounds %struct.__xfsstats, ptr %42, i32 0, i32 87
  %43 = ptrtoint ptr %xs_qm_dqcachehits52 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %xs_qm_dqcachehits52, align 4
  %inc53 = add i32 %44, 1
  store i32 %inc53, ptr %xs_qm_dqcachehits52, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then
  %call70 = phi ptr [ %call74, %if.end23 ], [ null, %if.then ]
  ret ptr %call70
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_qm_dqread(ptr noundef %mp, i32 noundef %id, i8 noundef zeroext %type, i1 noundef zeroext %can_alloc, ptr nocapture noundef writeonly %dqpp) unnamed_addr #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #11
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !136
  %call = tail call fastcc ptr @xfs_dquot_alloc(ptr noundef %mp, i32 noundef %id, i8 noundef zeroext %type)
  tail call fastcc void @trace_xfs_dqread(ptr noundef %call)
  %call1 = call fastcc i32 @xfs_dquot_disk_read(ptr noundef %mp, ptr noundef %call, ptr noundef nonnull %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call1)
  %cmp = icmp eq i32 %call1, -2
  %1 = and i1 %cmp, %can_alloc
  br i1 %1, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = call fastcc i32 @xfs_dquot_disk_alloc(ptr noundef %call, ptr noundef nonnull %bp)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %error.0 = phi i32 [ %call2, %if.then ], [ %call1, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool3.not = icmp eq i32 %error.0, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end5:                                          ; preds = %if.end
  %2 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bp, align 4
  %count = getelementptr inbounds %struct.xfs_buf, ptr %3, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6 = icmp eq i32 %5, 0
  br i1 %cmp6, label %if.end5.cond.end_crit_edge, label %cond.false, !prof !132

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 679) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end5.cond.end_crit_edge
  %call9 = tail call fastcc i32 @xfs_dquot_from_disk(ptr noundef %call, ptr noundef %3)
  tail call void @xfs_buf_unlock(ptr noundef %3) #11
  tail call void @xfs_buf_rele(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cond.end.cleanup_crit_edge, label %cond.end.err_crit_edge

cond.end.err_crit_edge:                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err:                                              ; preds = %cond.end.err_crit_edge, %if.end.err_crit_edge
  %error.1 = phi i32 [ %error.0, %if.end.err_crit_edge ], [ %call9, %cond.end.err_crit_edge ]
  tail call fastcc void @trace_xfs_dqread_fail(ptr noundef %call)
  tail call void @xfs_qm_dqdestroy(ptr noundef %call)
  br label %cleanup

cleanup:                                          ; preds = %err, %cond.end.cleanup_crit_edge
  %storemerge = phi ptr [ null, %err ], [ %call, %cond.end.cleanup_crit_edge ]
  %retval.0 = phi i32 [ %error.1, %err ], [ 0, %cond.end.cleanup_crit_edge ]
  %6 = ptrtoint ptr %dqpp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %storemerge, ptr %dqpp, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_qm_dqget_cache_insert(ptr noundef %qi, ptr noundef %tree, i32 noundef %id, ptr noundef %dqp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %qi_tree_lock = getelementptr inbounds %struct.xfs_quotainfo, ptr %qi, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %qi_tree_lock, i32 noundef 0) #11
  %call = tail call i32 @radix_tree_insert(ptr noundef %tree, i32 noundef %id, ptr noundef %dqp) #11
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %call, label %do.end [
    i32 0, label %if.end28
    i32 -17, label %entry.if.end_crit_edge
  ], !prof !137

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 805, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %qi_tree_lock) #11
  tail call fastcc void @trace_xfs_dqget_dup(ptr noundef %dqp)
  br label %cleanup

if.end28:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %q_qlock.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %q_qlock.i, i32 noundef 0) #11
  %q_nrefs = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 5
  %1 = ptrtoint ptr %q_nrefs to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %q_nrefs, align 4
  %qi_dquots = getelementptr inbounds %struct.xfs_quotainfo, ptr %qi, i32 0, i32 8
  %2 = ptrtoint ptr %qi_dquots to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qi_dquots, align 8
  %inc = add i32 %3, 1
  store i32 %inc, ptr %qi_dquots, align 8
  tail call void @mutex_unlock(ptr noundef %qi_tree_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dqget_miss(ptr noundef %dqp) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqget_miss, i32 0, i32 1), ptr blockaddress(@trace_xfs_dqget_miss, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !138

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !132

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !139
  %call42 = tail call i32 @__traceiter_xfs_dqget_miss(ptr noundef null, ptr noundef %dqp) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !140
  %13 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !132

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqget_miss, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqget_miss, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_dqget_miss.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_dqget_miss.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 1087, ptr noundef nonnull @.str.16) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !142
  %31 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
define dso_local i32 @xfs_qm_dqget_uncached(ptr noundef %mp, i32 noundef %id, i8 noundef zeroext %type, ptr nocapture noundef writeonly %dqpp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %type, label %entry.cleanup_crit_edge [
    i8 1, label %entry.return.sink.split.i_crit_edge
    i8 4, label %sw.bb1.i
    i8 2, label %sw.bb7.i
  ]

entry.return.sink.split.i_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return.sink.split.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return.sink.split.i

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %sw.bb7.i, %sw.bb1.i, %entry.return.sink.split.i_crit_edge
  %.sink55.i = phi i32 [ 8, %sw.bb7.i ], [ 64, %sw.bb1.i ], [ 1, %entry.return.sink.split.i_crit_edge ]
  %m_qflags8.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 60
  %1 = ptrtoint ptr %m_qflags8.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %m_qflags8.i, align 4
  %and9.i = and i32 %2, %.sink55.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %return.sink.split.i.cleanup_crit_edge, label %if.end

return.sink.split.i.cleanup_crit_edge:            ; preds = %return.sink.split.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %return.sink.split.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call fastcc i32 @xfs_qm_dqread(ptr noundef %mp, i32 noundef %id, i8 noundef zeroext %type, i1 noundef zeroext false, ptr noundef %dqpp)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %return.sink.split.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.cleanup_crit_edge ], [ -3, %return.sink.split.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_qm_id_for_quotatype(ptr nocapture noundef readonly %ip, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %type, label %sw.epilog [
    i8 1, label %sw.bb
    i8 4, label %sw.bb2
    i8 2, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %i_sb.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 8
  %1 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 53
  %3 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_uid.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 2
  %5 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %6 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call1.i = tail call i32 @from_kuid(ptr noundef %4, [1 x i32] %6) #11
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %i_sb.i.i9 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 8
  %7 = ptrtoint ptr %i_sb.i.i9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb.i.i9, align 4
  %s_user_ns.i.i10 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 53
  %9 = ptrtoint ptr %s_user_ns.i.i10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_user_ns.i.i10, align 8
  %i_gid.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 3
  %11 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack.i11 = load i32, ptr %i_gid.i, align 8
  %12 = insertvalue [1 x i32] undef, i32 %.unpack.i11, 0
  %call1.i12 = tail call i32 @from_kgid(ptr noundef %10, [1 x i32] %12) #11
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %i_projid = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 20
  %13 = ptrtoint ptr %i_projid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_projid, align 8
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 930) #11
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb5, %sw.bb2, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %14, %sw.bb5 ], [ %call1.i12, %sw.bb2 ], [ %call1.i, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_qm_dqget_inode(ptr noundef %ip, i8 noundef zeroext %type, i1 noundef zeroext %can_alloc, ptr nocapture noundef writeonly %O_dqpp) local_unnamed_addr #0 align 64 {
entry:
  %dqp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  %m_quotainfo = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_quotainfo, align 4
  %4 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.41)
  switch i8 %type, label %xfs_dquot_tree.exit [
    i8 1, label %xfs_dquot_tree.exit.thread
    i8 4, label %xfs_dquot_tree.exit.thread123
    i8 2, label %xfs_dquot_tree.exit.thread126
  ]

xfs_dquot_tree.exit.thread:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dqp) #11
  br label %return.sink.split.i

xfs_dquot_tree.exit.thread123:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %qi_gquota_tree.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %3, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dqp) #11
  br label %return.sink.split.i

xfs_dquot_tree.exit.thread126:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %qi_pquota_tree.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %3, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dqp) #11
  %5 = ptrtoint ptr %dqp to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %dqp, align 4, !annotation !136
  br label %return.sink.split.i

xfs_dquot_tree.exit:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.13, i32 noundef 87) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dqp) #11
  br label %cleanup65

return.sink.split.i:                              ; preds = %xfs_dquot_tree.exit.thread126, %xfs_dquot_tree.exit.thread123, %xfs_dquot_tree.exit.thread
  %retval.0.i121 = phi ptr [ %qi_pquota_tree.i, %xfs_dquot_tree.exit.thread126 ], [ %qi_gquota_tree.i, %xfs_dquot_tree.exit.thread123 ], [ %3, %xfs_dquot_tree.exit.thread ]
  %.sink55.i = phi i32 [ 8, %xfs_dquot_tree.exit.thread126 ], [ 64, %xfs_dquot_tree.exit.thread123 ], [ 1, %xfs_dquot_tree.exit.thread ]
  %m_qflags8.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 60
  %6 = ptrtoint ptr %m_qflags8.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %m_qflags8.i, align 4
  %and9.i = and i32 %7, %.sink55.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %return.sink.split.i.cleanup65_crit_edge, label %if.end

return.sink.split.i.cleanup65_crit_edge:          ; preds = %return.sink.split.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup65

if.end:                                           ; preds = %return.sink.split.i
  %call2 = tail call zeroext i1 @xfs_isilocked(ptr noundef %ip, i32 noundef 4) #11
  br i1 %call2, label %if.end.cond.end_crit_edge, label %cond.false, !prof !132

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 957) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %8 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %type, label %cond.end.sw.epilog.i_crit_edge [
    i8 1, label %sw.bb.i
    i8 4, label %sw.bb1.i103
    i8 2, label %sw.bb2.i104
  ]

cond.end.sw.epilog.i_crit_edge:                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %i_udquot.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 1
  br label %xfs_inode_dquot.exit

sw.bb1.i103:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %i_gdquot.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 2
  br label %xfs_inode_dquot.exit

sw.bb2.i104:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %i_pdquot.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 3
  br label %xfs_inode_dquot.exit

xfs_inode_dquot.exit:                             ; preds = %sw.bb2.i104, %sw.bb1.i103, %sw.bb.i
  %retval.0.i105.in = phi ptr [ %i_pdquot.i, %sw.bb2.i104 ], [ %i_gdquot.i, %sw.bb1.i103 ], [ %i_udquot.i, %sw.bb.i ]
  %9 = ptrtoint ptr %retval.0.i105.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %retval.0.i105 = load ptr, ptr %retval.0.i105.in, align 4
  %cmp = icmp eq ptr %retval.0.i105, null
  br i1 %cmp, label %xfs_inode_dquot.exit.cond.end14_crit_edge, label %cond.false13, !prof !132

xfs_inode_dquot.exit.cond.end14_crit_edge:        ; preds = %xfs_inode_dquot.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end14

cond.false13:                                     ; preds = %xfs_inode_dquot.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 958) #11
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false13, %xfs_inode_dquot.exit.cond.end14_crit_edge
  %10 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %type, label %cond.end14.sw.epilog.i_crit_edge [
    i8 1, label %sw.bb.i106
    i8 4, label %sw.bb2.i107
    i8 2, label %sw.bb5.i
  ]

cond.end14.sw.epilog.i_crit_edge:                 ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb.i106:                                       ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #13
  %i_sb.i.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 8
  %11 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_user_ns.i.i.i = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 53
  %13 = ptrtoint ptr %s_user_ns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_user_ns.i.i.i, align 8
  %i_uid.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 2
  %15 = ptrtoint ptr %i_uid.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack.i.i = load i32, ptr %i_uid.i.i, align 4
  %16 = insertvalue [1 x i32] undef, i32 %.unpack.i.i, 0
  %call1.i.i = tail call i32 @from_kuid(ptr noundef %14, [1 x i32] %16) #11
  br label %xfs_qm_id_for_quotatype.exit

sw.bb2.i107:                                      ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #13
  %i_sb.i.i9.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 8
  %17 = ptrtoint ptr %i_sb.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb.i.i9.i, align 4
  %s_user_ns.i.i10.i = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 53
  %19 = ptrtoint ptr %s_user_ns.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_user_ns.i.i10.i, align 8
  %i_gid.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 3
  %21 = ptrtoint ptr %i_gid.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack.i11.i = load i32, ptr %i_gid.i.i, align 8
  %22 = insertvalue [1 x i32] undef, i32 %.unpack.i11.i, 0
  %call1.i12.i = tail call i32 @from_kgid(ptr noundef %20, [1 x i32] %22) #11
  br label %xfs_qm_id_for_quotatype.exit

sw.bb5.i:                                         ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #13
  %i_projid.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 20
  %23 = ptrtoint ptr %i_projid.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_projid.i, align 8
  br label %xfs_qm_id_for_quotatype.exit

sw.epilog.i:                                      ; preds = %cond.end14.sw.epilog.i_crit_edge, %cond.end.sw.epilog.i_crit_edge
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 930) #11
  br label %xfs_qm_id_for_quotatype.exit

xfs_qm_id_for_quotatype.exit:                     ; preds = %sw.epilog.i, %sw.bb5.i, %sw.bb2.i107, %sw.bb.i106
  %retval.0.i108 = phi i32 [ 0, %sw.epilog.i ], [ %24, %sw.bb5.i ], [ %call1.i12.i, %sw.bb2.i107 ], [ %call1.i.i, %sw.bb.i106 ]
  %call16146 = tail call fastcc ptr @xfs_qm_dqget_cache_lookup(ptr noundef %1, ptr noundef %3, ptr noundef %retval.0.i121, i32 noundef %retval.0.i108)
  %25 = ptrtoint ptr %dqp to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call16146, ptr %dqp, align 4
  %tobool17.not147 = icmp eq ptr %call16146, null
  br i1 %tobool17.not147, label %if.end19.lr.ph, label %xfs_qm_id_for_quotatype.exit.if.then18_crit_edge

xfs_qm_id_for_quotatype.exit.if.then18_crit_edge: ; preds = %xfs_qm_id_for_quotatype.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

if.end19.lr.ph:                                   ; preds = %xfs_qm_id_for_quotatype.exit
  %i_pdquot.i116 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 3
  %i_gdquot.i114 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 2
  %i_udquot.i112 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 1
  %m_stats = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 92
  br label %if.end19

if.then18:                                        ; preds = %if.then35.if.then18_crit_edge, %xfs_qm_id_for_quotatype.exit.if.then18_crit_edge
  %call16.lcssa = phi ptr [ %call16146, %xfs_qm_id_for_quotatype.exit.if.then18_crit_edge ], [ %call16, %if.then35.if.then18_crit_edge ]
  %26 = ptrtoint ptr %O_dqpp to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call16.lcssa, ptr %O_dqpp, align 4
  br label %cleanup65

if.end19:                                         ; preds = %if.then35.if.end19_crit_edge, %if.end19.lr.ph
  tail call void @xfs_iunlock(ptr noundef %ip, i32 noundef 4) #11
  %call21 = call fastcc i32 @xfs_qm_dqread(ptr noundef %1, i32 noundef %retval.0.i108, i8 noundef zeroext %type, i1 noundef zeroext %can_alloc, ptr noundef nonnull %dqp)
  tail call void @xfs_ilock(ptr noundef %ip, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end19.cleanup65_crit_edge

if.end19.cleanup65_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup65

if.end24:                                         ; preds = %if.end19
  %27 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %type, label %if.end24.if.else_crit_edge [
    i8 1, label %if.end24.xfs_this_quota_on.exit_crit_edge
    i8 4, label %sw.bb1.i109
    i8 2, label %sw.bb4.i
  ]

if.end24.xfs_this_quota_on.exit_crit_edge:        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_this_quota_on.exit

if.end24.if.else_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

sw.bb1.i109:                                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_this_quota_on.exit

sw.bb4.i:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_this_quota_on.exit

xfs_this_quota_on.exit:                           ; preds = %sw.bb4.i, %sw.bb1.i109, %if.end24.xfs_this_quota_on.exit_crit_edge
  %.sink9.i = phi i32 [ 8, %sw.bb4.i ], [ 64, %sw.bb1.i109 ], [ 1, %if.end24.xfs_this_quota_on.exit_crit_edge ]
  %28 = ptrtoint ptr %m_qflags8.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %m_qflags8.i, align 4
  %and6.i = and i32 %29, %.sink9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool26.not = icmp eq i32 %and6.i, 0
  br i1 %tobool26.not, label %xfs_this_quota_on.exit.if.else_crit_edge, label %if.then27

xfs_this_quota_on.exit.if.else_crit_edge:         ; preds = %xfs_this_quota_on.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then27:                                        ; preds = %xfs_this_quota_on.exit
  %30 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.45)
  switch i8 %type, label %if.then27.if.end32_crit_edge [
    i8 1, label %if.then27.xfs_inode_dquot.exit119_crit_edge
    i8 4, label %sw.bb1.i115
    i8 2, label %sw.bb2.i117
  ]

if.then27.xfs_inode_dquot.exit119_crit_edge:      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_inode_dquot.exit119

if.then27.if.end32_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

sw.bb1.i115:                                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_inode_dquot.exit119

sw.bb2.i117:                                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_inode_dquot.exit119

xfs_inode_dquot.exit119:                          ; preds = %sw.bb2.i117, %sw.bb1.i115, %if.then27.xfs_inode_dquot.exit119_crit_edge
  %retval.0.i118.in = phi ptr [ %i_pdquot.i116, %sw.bb2.i117 ], [ %i_gdquot.i114, %sw.bb1.i115 ], [ %i_udquot.i112, %if.then27.xfs_inode_dquot.exit119_crit_edge ]
  %31 = ptrtoint ptr %retval.0.i118.in to i32
  call void @__asan_load4_noabort(i32 %31)
  %retval.0.i118 = load ptr, ptr %retval.0.i118.in, align 4
  %tobool29.not = icmp eq ptr %retval.0.i118, null
  br i1 %tobool29.not, label %xfs_inode_dquot.exit119.if.end32_crit_edge, label %cleanup

xfs_inode_dquot.exit119.if.end32_crit_edge:       ; preds = %xfs_inode_dquot.exit119
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

cleanup:                                          ; preds = %xfs_inode_dquot.exit119
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %dqp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dqp, align 4
  tail call void @xfs_qm_dqdestroy(ptr noundef %33)
  %34 = ptrtoint ptr %dqp to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %retval.0.i118, ptr %dqp, align 4
  %q_qlock.i = getelementptr inbounds %struct.xfs_dquot, ptr %retval.0.i118, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %q_qlock.i, i32 noundef 0) #11
  br label %dqret

if.else:                                          ; preds = %xfs_this_quota_on.exit.if.else_crit_edge, %if.end24.if.else_crit_edge
  %35 = ptrtoint ptr %dqp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dqp, align 4
  tail call void @xfs_qm_dqdestroy(ptr noundef %36)
  br label %cleanup65

if.end32:                                         ; preds = %xfs_inode_dquot.exit119.if.end32_crit_edge, %if.then27.if.end32_crit_edge
  %37 = ptrtoint ptr %dqp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dqp, align 4
  %call33 = tail call fastcc i32 @xfs_qm_dqget_cache_insert(ptr noundef %3, ptr noundef %retval.0.i121, i32 noundef %retval.0.i108, ptr noundef %38)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end32.dqret_crit_edge, label %if.then35

if.end32.dqret_crit_edge:                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %dqret

if.then35:                                        ; preds = %if.end32
  tail call void @xfs_qm_dqdestroy(ptr noundef %38)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %39 = load ptr, ptr @xfsstats, align 4
  %40 = ptrtoint ptr %39 to i32
  %41 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx, align 4
  %add = add i32 %46, %40
  %47 = inttoptr i32 %add to ptr
  %xs_qm_dquot_dups = getelementptr inbounds %struct.__xfsstats, ptr %47, i32 0, i32 85
  %48 = ptrtoint ptr %xs_qm_dquot_dups to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %xs_qm_dquot_dups, align 4
  %inc = add i32 %49, 1
  store i32 %inc, ptr %xs_qm_dquot_dups, align 4
  %50 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %m_stats, align 4
  %52 = ptrtoint ptr %51 to i32
  %53 = load i32, ptr %cpu, align 4
  %arrayidx48 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %53
  %54 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx48, align 4
  %add49 = add i32 %55, %52
  %56 = inttoptr i32 %add49 to ptr
  %xs_qm_dquot_dups50 = getelementptr inbounds %struct.__xfsstats, ptr %56, i32 0, i32 85
  %57 = ptrtoint ptr %xs_qm_dquot_dups50 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %xs_qm_dquot_dups50, align 4
  %inc51 = add i32 %58, 1
  store i32 %inc51, ptr %xs_qm_dquot_dups50, align 4
  %call16 = tail call fastcc ptr @xfs_qm_dqget_cache_lookup(ptr noundef %1, ptr noundef %3, ptr noundef %retval.0.i121, i32 noundef %retval.0.i108)
  %59 = ptrtoint ptr %dqp to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call16, ptr %dqp, align 4
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.then35.if.end19_crit_edge, label %if.then35.if.then18_crit_edge

if.then35.if.then18_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

if.then35.if.end19_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

dqret:                                            ; preds = %if.end32.dqret_crit_edge, %cleanup
  %call55 = tail call zeroext i1 @xfs_isilocked(ptr noundef %ip, i32 noundef 4) #11
  br i1 %call55, label %dqret.cond.end64_crit_edge, label %cond.false63, !prof !132

dqret.cond.end64_crit_edge:                       ; preds = %dqret
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end64

cond.false63:                                     ; preds = %dqret
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1014) #11
  br label %cond.end64

cond.end64:                                       ; preds = %cond.false63, %dqret.cond.end64_crit_edge
  %60 = ptrtoint ptr %dqp to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dqp, align 4
  tail call fastcc void @trace_xfs_dqget_miss(ptr noundef %61)
  %62 = ptrtoint ptr %O_dqpp to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %O_dqpp, align 4
  br label %cleanup65

cleanup65:                                        ; preds = %cond.end64, %if.else, %if.end19.cleanup65_crit_edge, %if.then18, %return.sink.split.i.cleanup65_crit_edge, %xfs_dquot_tree.exit
  %retval.0 = phi i32 [ 0, %if.then18 ], [ 0, %cond.end64 ], [ -3, %if.else ], [ -22, %xfs_dquot_tree.exit ], [ -3, %return.sink.split.i.cleanup65_crit_edge ], [ %call21, %if.end19.cleanup65_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dqp) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_isilocked(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iunlock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ilock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_qm_dqget_next(ptr noundef %mp, i32 noundef %id, i8 noundef zeroext %type, ptr nocapture noundef writeonly %dqpp) local_unnamed_addr #0 align 64 {
entry:
  %got.i = alloca %struct.xfs_bmbt_irec, align 8
  %cur.i = alloca %struct.xfs_iext_cursor, align 4
  %dqp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dqp) #11
  %0 = ptrtoint ptr %dqp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %dqp, align 4, !annotation !136
  %1 = ptrtoint ptr %dqpp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %dqpp, align 4
  %m_quotainfo4.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 12
  %2 = getelementptr inbounds %struct.xfs_iext_cursor, ptr %cur.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %xfs_dq_get_next_id.exit.for.body_crit_edge, %entry
  %id.addr.043 = phi i32 [ %id, %entry ], [ %id.addr.2, %xfs_dq_get_next_id.exit.for.body_crit_edge ]
  %call = call i32 @xfs_qm_dqget(ptr noundef %mp, i32 noundef %id.addr.043, i8 noundef zeroext %type, i1 noundef zeroext false, ptr noundef nonnull %dqp)
  %3 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %call, label %for.body.cleanup_crit_edge [
    i32 -2, label %for.body.for.inc_crit_edge
    i32 0, label %if.end3
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %for.body
  %4 = ptrtoint ptr %dqp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dqp, align 4
  %hardlimit = getelementptr inbounds %struct.xfs_dquot, ptr %5, i32 0, i32 9, i32 2
  %6 = ptrtoint ptr %hardlimit to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %hardlimit, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool4.not = icmp eq i64 %7, 0
  br i1 %tobool4.not, label %land.lhs.true, label %if.end3.if.then32_crit_edge

if.end3.if.then32_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

land.lhs.true:                                    ; preds = %if.end3
  %softlimit = getelementptr inbounds %struct.xfs_dquot, ptr %5, i32 0, i32 9, i32 3
  %8 = ptrtoint ptr %softlimit to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %softlimit, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool6.not = icmp eq i64 %9, 0
  br i1 %tobool6.not, label %land.lhs.true7, label %land.lhs.true.if.then32_crit_edge

land.lhs.true.if.then32_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

land.lhs.true7:                                   ; preds = %land.lhs.true
  %hardlimit8 = getelementptr inbounds %struct.xfs_dquot, ptr %5, i32 0, i32 11, i32 2
  %10 = ptrtoint ptr %hardlimit8 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %hardlimit8, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool9.not = icmp eq i64 %11, 0
  br i1 %tobool9.not, label %land.lhs.true10, label %land.lhs.true7.if.then32_crit_edge

land.lhs.true7.if.then32_crit_edge:               ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

land.lhs.true10:                                  ; preds = %land.lhs.true7
  %softlimit12 = getelementptr inbounds %struct.xfs_dquot, ptr %5, i32 0, i32 11, i32 3
  %12 = ptrtoint ptr %softlimit12 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %softlimit12, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool13.not = icmp eq i64 %13, 0
  br i1 %tobool13.not, label %land.lhs.true14, label %land.lhs.true10.if.then32_crit_edge

land.lhs.true10.if.then32_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

land.lhs.true14:                                  ; preds = %land.lhs.true10
  %hardlimit15 = getelementptr inbounds %struct.xfs_dquot, ptr %5, i32 0, i32 10, i32 2
  %14 = ptrtoint ptr %hardlimit15 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %hardlimit15, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool16.not = icmp eq i64 %15, 0
  br i1 %tobool16.not, label %land.lhs.true17, label %land.lhs.true14.if.then32_crit_edge

land.lhs.true14.if.then32_crit_edge:              ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

land.lhs.true17:                                  ; preds = %land.lhs.true14
  %softlimit19 = getelementptr inbounds %struct.xfs_dquot, ptr %5, i32 0, i32 10, i32 3
  %16 = ptrtoint ptr %softlimit19 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %softlimit19, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool20.not = icmp eq i64 %17, 0
  br i1 %tobool20.not, label %land.lhs.true21, label %land.lhs.true17.if.then32_crit_edge

land.lhs.true17.if.then32_crit_edge:              ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

land.lhs.true21:                                  ; preds = %land.lhs.true17
  %count = getelementptr inbounds %struct.xfs_dquot, ptr %5, i32 0, i32 9, i32 1
  %18 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool23.not = icmp eq i64 %19, 0
  br i1 %tobool23.not, label %land.lhs.true24, label %land.lhs.true21.if.then32_crit_edge

land.lhs.true21.if.then32_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

land.lhs.true24:                                  ; preds = %land.lhs.true21
  %count26 = getelementptr inbounds %struct.xfs_dquot, ptr %5, i32 0, i32 11, i32 1
  %20 = ptrtoint ptr %count26 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %count26, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %tobool27.not = icmp eq i64 %21, 0
  br i1 %tobool27.not, label %land.lhs.true28, label %land.lhs.true24.if.then32_crit_edge

land.lhs.true24.if.then32_crit_edge:              ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

land.lhs.true28:                                  ; preds = %land.lhs.true24
  %count30 = getelementptr inbounds %struct.xfs_dquot, ptr %5, i32 0, i32 10, i32 1
  %22 = ptrtoint ptr %count30 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %count30, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %tobool31.not = icmp eq i64 %23, 0
  br i1 %tobool31.not, label %if.end33, label %land.lhs.true28.if.then32_crit_edge

land.lhs.true28.if.then32_crit_edge:              ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

if.then32:                                        ; preds = %land.lhs.true28.if.then32_crit_edge, %land.lhs.true24.if.then32_crit_edge, %land.lhs.true21.if.then32_crit_edge, %land.lhs.true17.if.then32_crit_edge, %land.lhs.true14.if.then32_crit_edge, %land.lhs.true10.if.then32_crit_edge, %land.lhs.true7.if.then32_crit_edge, %land.lhs.true.if.then32_crit_edge, %if.end3.if.then32_crit_edge
  %24 = ptrtoint ptr %dqpp to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %5, ptr %dqpp, align 4
  br label %cleanup

if.end33:                                         ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #13
  call void @xfs_qm_dqput(ptr noundef %5)
  br label %for.inc

for.inc:                                          ; preds = %if.end33, %for.body.for.inc_crit_edge
  %25 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.47)
  switch i8 %type, label %sw.default.i.i [
    i8 1, label %sw.bb.i.i
    i8 4, label %sw.bb1.i.i
    i8 2, label %sw.bb3.i.i
  ]

sw.bb.i.i:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %m_quotainfo4.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %m_quotainfo4.i.i, align 4
  %qi_uquotaip.i.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %qi_uquotaip.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %qi_uquotaip.i.i, align 8
  br label %xfs_quota_inode.exit.i

sw.bb1.i.i:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %m_quotainfo4.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %m_quotainfo4.i.i, align 4
  %qi_gquotaip.i.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %qi_gquotaip.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %qi_gquotaip.i.i, align 4
  br label %xfs_quota_inode.exit.i

sw.bb3.i.i:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %m_quotainfo4.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %m_quotainfo4.i.i, align 4
  %qi_pquotaip.i.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %qi_pquotaip.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %qi_pquotaip.i.i, align 8
  br label %xfs_quota_inode.exit.i

sw.default.i.i:                                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.13, i32 noundef 103) #11
  br label %xfs_quota_inode.exit.i

xfs_quota_inode.exit.i:                           ; preds = %sw.default.i.i, %sw.bb3.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.i.i = phi ptr [ null, %sw.default.i.i ], [ %37, %sw.bb3.i.i ], [ %33, %sw.bb1.i.i ], [ %29, %sw.bb.i.i ]
  %add.i = add i32 %id.addr.043, 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %got.i) #11
  %38 = call ptr @memset(ptr %got.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cur.i) #11
  %39 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 -1 to ptr), ptr %cur.i, align 4, !annotation !136
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %2, align 4, !annotation !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %id.addr.043)
  %cmp.i = icmp eq i32 %id.addr.043, -1
  br i1 %cmp.i, label %xfs_quota_inode.exit.i.xfs_dq_get_next_id.exit.thread_crit_edge, label %if.end.i

xfs_quota_inode.exit.i.xfs_dq_get_next_id.exit.thread_crit_edge: ; preds = %xfs_quota_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_dq_get_next_id.exit.thread

if.end.i:                                         ; preds = %xfs_quota_inode.exit.i
  %41 = ptrtoint ptr %m_quotainfo4.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %m_quotainfo4.i.i, align 4
  %qi_dqperchunk.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %42, i32 0, i32 11
  %43 = ptrtoint ptr %qi_dqperchunk.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %qi_dqperchunk.i, align 8
  %.frozen = freeze i32 %44
  %45 = udiv i32 %add.i, %.frozen
  %46 = mul i32 %45, %.frozen
  %rem.i.decomposed = sub i32 %add.i, %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %tobool.not.i = icmp eq i32 %rem.i.decomposed, 0
  br i1 %tobool.not.i, label %if.end2.i, label %if.end.i.xfs_dq_get_next_id.exit_crit_edge

if.end.i.xfs_dq_get_next_id.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_dq_get_next_id.exit

if.end2.i:                                        ; preds = %if.end.i
  %div.i = zext i32 %45 to i64
  %call6.i = call i32 @xfs_ilock_data_map_shared(ptr noundef %retval.0.i.i) #11
  %call7.i = call i32 @xfs_iread_extents(ptr noundef null, ptr noundef %retval.0.i.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end2.i.xfs_dq_get_next_id.exit.thread_crit_edge

if.end2.i.xfs_dq_get_next_id.exit.thread_crit_edge: ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_dq_get_next_id.exit.thread

if.end10.i:                                       ; preds = %if.end2.i
  %i_df.i = getelementptr inbounds %struct.xfs_inode, ptr %retval.0.i.i, i32 0, i32 8
  %call11.i = call zeroext i1 @xfs_iext_lookup_extent(ptr noundef %retval.0.i.i, ptr noundef %i_df.i, i64 noundef %div.i, ptr noundef nonnull %cur.i, ptr noundef nonnull %got.i) #11
  br i1 %call11.i, label %if.then12.i, label %if.end10.i.if.end23.i_crit_edge

if.end10.i.if.end23.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i

if.then12.i:                                      ; preds = %if.end10.i
  %47 = ptrtoint ptr %got.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %got.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %48, i64 %div.i)
  %cmp13.i = icmp ult i64 %48, %div.i
  br i1 %cmp13.i, label %if.then15.i, label %if.then12.i.if.end17.i_crit_edge

if.then12.i.if.end17.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.then15.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %got.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %div.i, ptr %got.i, align 8
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then15.i, %if.then12.i.if.end17.i_crit_edge
  %50 = ptrtoint ptr %got.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %got.i, align 8
  %52 = ptrtoint ptr %m_quotainfo4.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %m_quotainfo4.i.i, align 4
  %qi_dqperchunk20.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %53, i32 0, i32 11
  %54 = ptrtoint ptr %qi_dqperchunk20.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %qi_dqperchunk20.i, align 8
  %56 = trunc i64 %51 to i32
  %conv22.i = mul i32 %55, %56
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end17.i, %if.end10.i.if.end23.i_crit_edge
  %id.addr.1 = phi i32 [ %conv22.i, %if.end17.i ], [ %id.addr.043, %if.end10.i.if.end23.i_crit_edge ]
  %error.0.i = phi i32 [ 0, %if.end17.i ], [ -2, %if.end10.i.if.end23.i_crit_edge ]
  call void @xfs_iunlock(ptr noundef %retval.0.i.i, i32 noundef %call6.i) #11
  br label %xfs_dq_get_next_id.exit

xfs_dq_get_next_id.exit.thread:                   ; preds = %if.end2.i.xfs_dq_get_next_id.exit.thread_crit_edge, %xfs_quota_inode.exit.i.xfs_dq_get_next_id.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call7.i, %if.end2.i.xfs_dq_get_next_id.exit.thread_crit_edge ], [ -2, %xfs_quota_inode.exit.i.xfs_dq_get_next_id.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cur.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %got.i) #11
  br label %cleanup

xfs_dq_get_next_id.exit:                          ; preds = %if.end23.i, %if.end.i.xfs_dq_get_next_id.exit_crit_edge
  %id.addr.2 = phi i32 [ %id.addr.1, %if.end23.i ], [ %add.i, %if.end.i.xfs_dq_get_next_id.exit_crit_edge ]
  %retval.0.i = phi i32 [ %error.0.i, %if.end23.i ], [ 0, %if.end.i.xfs_dq_get_next_id.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cur.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %got.i) #11
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %xfs_dq_get_next_id.exit.for.body_crit_edge, label %xfs_dq_get_next_id.exit.cleanup_crit_edge

xfs_dq_get_next_id.exit.cleanup_crit_edge:        ; preds = %xfs_dq_get_next_id.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

xfs_dq_get_next_id.exit.for.body_crit_edge:       ; preds = %xfs_dq_get_next_id.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %xfs_dq_get_next_id.exit.cleanup_crit_edge, %xfs_dq_get_next_id.exit.thread, %if.then32, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then32 ], [ %retval.0.i.ph, %xfs_dq_get_next_id.exit.thread ], [ %call, %for.body.cleanup_crit_edge ], [ %retval.0.i, %xfs_dq_get_next_id.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dqp) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_qm_dqput(ptr noundef %dqp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %q_nrefs = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 5
  %0 = ptrtoint ptr %q_nrefs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %q_nrefs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !133

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 1063) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %q_qlock = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 16
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %q_qlock) #11
  br i1 %call, label %cond.end.cond.end10_crit_edge, label %cond.false9, !prof !132

cond.end.cond.end10_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end10

cond.false9:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 1064) #11
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false9, %cond.end.cond.end10_crit_edge
  tail call fastcc void @trace_xfs_dqput(ptr noundef %dqp)
  %2 = ptrtoint ptr %q_nrefs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %q_nrefs, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %q_nrefs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp12 = icmp eq i32 %dec, 0
  br i1 %cmp12, label %if.then, label %cond.end10.if.end34_crit_edge

cond.end10.if.end34_crit_edge:                    ; preds = %cond.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then:                                          ; preds = %cond.end10
  %q_mount = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 1
  %4 = ptrtoint ptr %q_mount to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %q_mount, align 8
  %m_quotainfo = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m_quotainfo, align 4
  tail call fastcc void @trace_xfs_dqput_free(ptr noundef %dqp)
  %qi_lru = getelementptr inbounds %struct.xfs_quotainfo, ptr %7, i32 0, i32 7
  %call13 = tail call zeroext i1 @list_lru_add(ptr noundef %qi_lru, ptr noundef %dqp) #11
  br i1 %call13, label %do.body15, label %if.then.if.end34_crit_edge

if.then.if.end34_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

do.body15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %8 = load ptr, ptr @xfsstats, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %add = add i32 %15, %9
  %16 = inttoptr i32 %add to ptr
  %xs_qm_dquot_unused = getelementptr inbounds %struct.__xfsstats, ptr %16, i32 0, i32 90
  %17 = ptrtoint ptr %xs_qm_dquot_unused to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %xs_qm_dquot_unused, align 8
  %inc = add i32 %18, 1
  store i32 %inc, ptr %xs_qm_dquot_unused, align 8
  %19 = ptrtoint ptr %q_mount to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %q_mount, align 8
  %m_stats = getelementptr inbounds %struct.xfs_mount, ptr %20, i32 0, i32 92
  %21 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %m_stats, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = load i32, ptr %cpu, align 4
  %arrayidx28 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx28, align 4
  %add29 = add i32 %26, %23
  %27 = inttoptr i32 %add29 to ptr
  %xs_qm_dquot_unused30 = getelementptr inbounds %struct.__xfsstats, ptr %27, i32 0, i32 90
  %28 = ptrtoint ptr %xs_qm_dquot_unused30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %xs_qm_dquot_unused30, align 8
  %inc31 = add i32 %29, 1
  store i32 %inc31, ptr %xs_qm_dquot_unused30, align 8
  br label %if.end34

if.end34:                                         ; preds = %do.body15, %if.then.if.end34_crit_edge, %cond.end10.if.end34_crit_edge
  tail call void @mutex_unlock(ptr noundef %q_qlock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dqput(ptr noundef %dqp) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqput, i32 0, i32 1), ptr blockaddress(@trace_xfs_dqput, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !138

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !132

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !143
  %call42 = tail call i32 @__traceiter_xfs_dqput(ptr noundef null, ptr noundef %dqp) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !144
  %13 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !132

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqput, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqput, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_dqput.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_dqput.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 1090, ptr noundef nonnull @.str.16) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !142
  %31 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
define internal fastcc void @trace_xfs_dqput_free(ptr noundef %dqp) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqput_free, i32 0, i32 1), ptr blockaddress(@trace_xfs_dqput_free, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !138

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !132

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !145
  %call42 = tail call i32 @__traceiter_xfs_dqput_free(ptr noundef null, ptr noundef %dqp) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !146
  %13 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !132

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqput_free, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqput_free, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_dqput_free.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_dqput_free.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 1091, ptr noundef nonnull @.str.16) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !142
  %31 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
declare dso_local zeroext i1 @list_lru_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_qm_dqrele(ptr noundef %dqp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dqp, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @trace_xfs_dqrele(ptr noundef nonnull %dqp)
  %q_qlock.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %q_qlock.i, i32 noundef 0) #11
  tail call void @xfs_qm_dqput(ptr noundef nonnull %dqp)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dqrele(ptr noundef %dqp) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqrele, i32 0, i32 1), ptr blockaddress(@trace_xfs_dqrele, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !138

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !132

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !147
  %call42 = tail call i32 @__traceiter_xfs_dqrele(ptr noundef null, ptr noundef %dqp) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !148
  %13 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !132

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqrele, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqrele, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_dqrele.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_dqrele.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 1092, ptr noundef nonnull @.str.16) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !142
  %31 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
define dso_local void @xfs_buf_dquot_iodone(ptr noundef readonly %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %b_li_list = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 20
  %0 = ptrtoint ptr %b_li_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_li_list, align 8
  %cmp.not20 = icmp eq ptr %1, %b_li_list
  br i1 %cmp.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %xfs_qm_dqflush_done.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in21 = phi ptr [ %.pn, %xfs_qm_dqflush_done.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %lip.0 = getelementptr i8, ptr %.pn.in21, i32 -44
  %2 = ptrtoint ptr %.pn.in21 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in21, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in21) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in21, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in21 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in21, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in21 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %.pn.in21, ptr %.pn.in21, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in21, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %.pn.in21, ptr %prev.i3.i, align 4
  %qli_dquot.i = getelementptr i8, ptr %.pn.in21, i32 36
  %11 = ptrtoint ptr %qli_dquot.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %qli_dquot.i, align 8
  %li_ailp.i = getelementptr i8, ptr %.pn.in21, i32 -16
  %13 = ptrtoint ptr %li_ailp.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %li_ailp.i, align 4
  %li_flags.i = getelementptr i8, ptr %.pn.in21, i32 -8
  %15 = ptrtoint ptr %li_flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %li_flags.i, align 4
  %and1.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %list_del_init.exit.xfs_qm_dqflush_done.exit_crit_edge, label %land.lhs.true.i

list_del_init.exit.xfs_qm_dqflush_done.exit_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_qm_dqflush_done.exit

land.lhs.true.i:                                  ; preds = %list_del_init.exit
  %li_lsn.i = getelementptr i8, ptr %.pn.in21, i32 -28
  %17 = ptrtoint ptr %li_lsn.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %li_lsn.i, align 8
  %qli_flush_lsn.i = getelementptr i8, ptr %.pn.in21, i32 44
  %19 = ptrtoint ptr %qli_flush_lsn.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %qli_flush_lsn.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %20)
  %cmp.i = icmp eq i64 %18, %20
  br i1 %cmp.i, label %land.lhs.true.i.if.then.i_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %21 = ptrtoint ptr %li_flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %li_flags.i, align 4
  %23 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool3.not.i = icmp eq i32 %23, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.xfs_qm_dqflush_done.exit_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

lor.lhs.false.i.xfs_qm_dqflush_done.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_qm_dqflush_done.exit

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge
  %ail_lock.i = getelementptr inbounds %struct.xfs_ail, ptr %14, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %ail_lock.i) #11
  %li_buf.i.i = getelementptr i8, ptr %.pn.in21, i32 -4
  %24 = ptrtoint ptr %li_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %li_buf.i.i, align 8
  %26 = ptrtoint ptr %li_flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %li_flags.i, align 4
  %and1.i.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %if.then.i.do.body.i.i_crit_edge, !prof !133

if.then.i.do.body.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

cond.false.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 148) #11
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %cond.false.i.i, %if.then.i.do.body.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %28 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool3.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool3.not.i.i, label %do.body.i.i.if.end.i.i19_crit_edge, label %land.rhs.i.i

do.body.i.i.if.end.i.i19_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i19

land.rhs.i.i:                                     ; preds = %do.body.i.i
  %29 = ptrtoint ptr %li_ailp.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %li_ailp.i, align 4
  %dep_map.i.i = getelementptr inbounds %struct.xfs_ail, ptr %30, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i19_crit_edge, !prof !133

land.rhs.i.i.if.end.i.i19_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i19

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 149, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i.i19

if.end.i.i19:                                     ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i19_crit_edge, %do.body.i.i.if.end.i.i19_crit_edge
  %call34.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %li_flags.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i.i)
  %tobool35.not.i.i = icmp eq i32 %call34.i.i, 0
  br i1 %tobool35.not.i.i, label %if.end.i.i19.xfs_clear_li_failed.exit.i_crit_edge, label %if.then36.i.i

if.end.i.i19.xfs_clear_li_failed.exit.i_crit_edge: ; preds = %if.end.i.i19
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_clear_li_failed.exit.i

if.then36.i.i:                                    ; preds = %if.end.i.i19
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %li_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %li_buf.i.i, align 8
  tail call void @xfs_buf_rele(ptr noundef %25) #11
  br label %xfs_clear_li_failed.exit.i

xfs_clear_li_failed.exit.i:                       ; preds = %if.then36.i.i, %if.end.i.i19.xfs_clear_li_failed.exit.i_crit_edge
  %32 = ptrtoint ptr %li_lsn.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %li_lsn.i, align 8
  %34 = ptrtoint ptr %qli_flush_lsn.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %qli_flush_lsn.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %35)
  %cmp6.i = icmp eq i64 %33, %35
  br i1 %cmp6.i, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %xfs_clear_li_failed.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call8.i = tail call i64 @xfs_ail_delete_one(ptr noundef %14, ptr noundef %lip.0) #11
  tail call void @xfs_ail_update_finish(ptr noundef %14, i64 noundef %call8.i) #11
  br label %xfs_qm_dqflush_done.exit

if.else.i:                                        ; preds = %xfs_clear_li_failed.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %ail_lock.i) #11
  br label %xfs_qm_dqflush_done.exit

xfs_qm_dqflush_done.exit:                         ; preds = %if.else.i, %if.then7.i, %lor.lhs.false.i.xfs_qm_dqflush_done.exit_crit_edge, %list_del_init.exit.xfs_qm_dqflush_done.exit_crit_edge
  %q_flush.i.i = getelementptr inbounds %struct.xfs_dquot, ptr %12, i32 0, i32 17
  tail call void @complete(ptr noundef %q_flush.i.i) #11
  %cmp.not = icmp eq ptr %.pn, %b_li_list
  br i1 %cmp.not, label %xfs_qm_dqflush_done.exit.for.end_crit_edge, label %xfs_qm_dqflush_done.exit.for.body_crit_edge

xfs_qm_dqflush_done.exit.for.body_crit_edge:      ; preds = %xfs_qm_dqflush_done.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

xfs_qm_dqflush_done.exit.for.end_crit_edge:       ; preds = %xfs_qm_dqflush_done.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %xfs_qm_dqflush_done.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_buf_dquot_io_fail(ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %0 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_mount, align 4
  %m_ail = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %m_ail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_ail, align 4
  %ail_lock = getelementptr inbounds %struct.xfs_ail, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %ail_lock) #11
  %b_li_list = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 20
  %4 = ptrtoint ptr %b_li_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn16 = load ptr, ptr %b_li_list, align 4
  %cmp.not17 = icmp eq ptr %.pn16, %b_li_list
  br i1 %cmp.not17, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %xfs_set_li_failed.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn18 = phi ptr [ %.pn, %xfs_set_li_failed.exit.for.body_crit_edge ], [ %.pn16, %entry.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %5 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %for.body.if.end.i_crit_edge, label %land.rhs.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.rhs.i:                                       ; preds = %for.body
  %li_ailp.i = getelementptr i8, ptr %.pn18, i32 -16
  %6 = ptrtoint ptr %li_ailp.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %li_ailp.i, align 4
  %dep_map.i = getelementptr inbounds %struct.xfs_ail, ptr %7, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !133

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 162, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %for.body.if.end.i_crit_edge
  %li_flags.i = getelementptr i8, ptr %.pn18, i32 -8
  %call24.i = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %li_flags.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.then26.i, label %if.end.i.xfs_set_li_failed.exit_crit_edge

if.end.i.xfs_set_li_failed.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_set_li_failed.exit

if.then26.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @xfs_buf_hold(ptr noundef %bp) #11
  %li_buf.i = getelementptr i8, ptr %.pn18, i32 -4
  %8 = ptrtoint ptr %li_buf.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %bp, ptr %li_buf.i, align 8
  br label %xfs_set_li_failed.exit

xfs_set_li_failed.exit:                           ; preds = %if.then26.i, %if.end.i.xfs_set_li_failed.exit_crit_edge
  %9 = ptrtoint ptr %.pn18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn18, align 4
  %cmp.not = icmp eq ptr %.pn, %b_li_list
  br i1 %cmp.not, label %xfs_set_li_failed.exit.for.end_crit_edge, label %xfs_set_li_failed.exit.for.body_crit_edge

xfs_set_li_failed.exit.for.body_crit_edge:        ; preds = %xfs_set_li_failed.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

xfs_set_li_failed.exit.for.end_crit_edge:         ; preds = %xfs_set_li_failed.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %xfs_set_li_failed.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %10 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_mount, align 4
  %m_ail8 = getelementptr inbounds %struct.xfs_mount, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %m_ail8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %m_ail8, align 4
  %ail_lock9 = getelementptr inbounds %struct.xfs_ail, ptr %13, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %ail_lock9) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_qm_dqflush(ptr noundef %dqp, ptr nocapture noundef writeonly %bpp) local_unnamed_addr #0 align 64 {
entry:
  %map.i = alloca %struct.xfs_buf_map, align 8
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %q_mount = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 1
  %0 = ptrtoint ptr %q_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q_mount, align 8
  %q_logitem = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #11
  %2 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !136
  %q_qlock = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 16
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %q_qlock) #11
  br i1 %call, label %entry.cond.end_crit_edge, label %cond.false, !prof !132

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 1228) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %q_flush = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 17
  %call2 = tail call zeroext i1 @completion_done(ptr noundef %q_flush) #11
  br i1 %call2, label %cond.false12, label %cond.end.cond.end13_crit_edge, !prof !133

cond.end.cond.end13_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end13

cond.false12:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 1229) #11
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false12, %cond.end.cond.end13_crit_edge
  tail call fastcc void @trace_xfs_dqflush(ptr noundef %dqp)
  %3 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %bpp, align 4
  tail call void @xfs_qm_dqunpin_wait(ptr noundef %dqp) #11
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m_ddev_targp, align 8
  %q_blkno = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 7
  %6 = ptrtoint ptr %q_blkno to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %q_blkno, align 8
  %m_quotainfo = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m_quotainfo, align 4
  %qi_dqchunklen = getelementptr inbounds %struct.xfs_quotainfo, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %qi_dqchunklen to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %qi_dqchunklen, align 8
  %conv = trunc i64 %11 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map.i) #11
  %12 = getelementptr inbounds i8, ptr %map.i, i32 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -1, ptr %12, align 8
  %14 = ptrtoint ptr %map.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %7, ptr %map.i, align 8
  store i32 %conv, ptr %12, align 8
  %call.i = call i32 @xfs_trans_read_buf_map(ptr noundef %1, ptr noundef null, ptr noundef %5, ptr noundef nonnull %map.i, i32 noundef 1, i32 noundef 1073741824, ptr noundef nonnull %bp, ptr noundef nonnull @xfs_dquot_buf_ops) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map.i) #11
  %15 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %call.i, label %cond.end13.out_abort_crit_edge [
    i32 -11, label %cond.end13.out_unlock_crit_edge
    i32 0, label %if.end18
  ]

cond.end13.out_unlock_crit_edge:                  ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

cond.end13.out_abort_crit_edge:                   ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_abort

if.end18:                                         ; preds = %cond.end13
  %call19 = call fastcc ptr @xfs_qm_dqflush_check(ptr noundef %dqp)
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %q_id = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 4
  %16 = ptrtoint ptr %q_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %q_id, align 8
  call void (ptr, ptr, ...) @xfs_alert(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %17, ptr noundef nonnull %call19) #11
  %18 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bp, align 4
  call void @xfs_buf_unlock(ptr noundef %19) #11
  call void @xfs_buf_rele(ptr noundef %19) #11
  br label %out_abort

if.end22:                                         ; preds = %if.end18
  %20 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %21, i32 0, i32 16
  %22 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_addr, align 4
  %q_bufoffset = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 6
  %24 = ptrtoint ptr %q_bufoffset to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %q_bufoffset, align 8
  %add.ptr = getelementptr i8, ptr %23, i32 %25
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 17489, ptr %add.ptr, align 8
  %d_version.i = getelementptr inbounds %struct.xfs_disk_dquot, ptr %add.ptr, i32 0, i32 1
  %27 = ptrtoint ptr %d_version.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %d_version.i, align 2
  %q_type.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 2
  %28 = ptrtoint ptr %q_type.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %q_type.i, align 4
  %d_type.i = getelementptr inbounds %struct.xfs_disk_dquot, ptr %add.ptr, i32 0, i32 2
  %30 = ptrtoint ptr %d_type.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %d_type.i, align 1
  %q_id.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 4
  %31 = ptrtoint ptr %q_id.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %q_id.i, align 8
  %d_id.i = getelementptr inbounds %struct.xfs_disk_dquot, ptr %add.ptr, i32 0, i32 3
  %33 = ptrtoint ptr %d_id.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %d_id.i, align 4
  %d_pad0.i = getelementptr inbounds %struct.xfs_disk_dquot, ptr %add.ptr, i32 0, i32 14
  %34 = ptrtoint ptr %d_pad0.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %d_pad0.i, align 4
  %d_pad.i = getelementptr inbounds %struct.xfs_disk_dquot, ptr %add.ptr, i32 0, i32 20
  %35 = ptrtoint ptr %d_pad.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %d_pad.i, align 2
  %hardlimit.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 9, i32 2
  %36 = ptrtoint ptr %hardlimit.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %hardlimit.i, align 8
  %d_blk_hardlimit.i = getelementptr inbounds %struct.xfs_disk_dquot, ptr %add.ptr, i32 0, i32 4
  %38 = ptrtoint ptr %d_blk_hardlimit.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %d_blk_hardlimit.i, align 8
  %softlimit.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 9, i32 3
  %39 = ptrtoint ptr %softlimit.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %softlimit.i, align 8
  %d_blk_softlimit.i = getelementptr inbounds %struct.xfs_disk_dquot, ptr %add.ptr, i32 0, i32 5
  %41 = ptrtoint ptr %d_blk_softlimit.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %d_blk_softlimit.i, align 8
  %hardlimit2.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 10, i32 2
  %42 = ptrtoint ptr %hardlimit2.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %hardlimit2.i, align 8
  %d_ino_hardlimit.i = getelementptr inbounds %struct.xfs_disk_dquot, ptr %add.ptr, i32 0, i32 6
  %44 = ptrtoint ptr %d_ino_hardlimit.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %d_ino_hardlimit.i, align 8
  %softlimit4.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 10, i32 3
  %45 = ptrtoint ptr %softlimit4.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %softlimit4.i, align 8
  %d_ino_softlimit.i = getelementptr inbounds %struct.xfs_disk_dquot, ptr %add.ptr, i32 0, i32 7
  %47 = ptrtoint ptr %d_ino_softlimit.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %d_ino_softlimit.i, align 8
  %hardlimit5.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 11, i32 2
  %48 = ptrtoint ptr %hardlimit5.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %hardlimit5.i, align 8
  %d_rtb_hardlimit.i = getelementptr inbounds %struct.xfs_disk_dquot, ptr %add.ptr, i32 0, i32 15
  %50 = ptrtoint ptr %d_rtb_hardlimit.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %d_rtb_hardlimit.i, align 8
  %softlimit7.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 11, i32 3
  %51 = ptrtoint ptr %softlimit7.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %softlimit7.i, align 8
  %d_rtb_softlimit.i = getelementptr inbounds %struct.xfs_disk_dquot, ptr %add.ptr, i32 0, i32 16
  %53 = ptrtoint ptr %d_rtb_softlimit.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %d_rtb_softlimit.i, align 8
  %count.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 9, i32 1
  %54 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %count.i, align 8
  %d_bcount.i = getelementptr inbounds %struct.xfs_disk_dquot, ptr %add.ptr, i32 0, i32 8
  %56 = ptrtoint ptr %d_bcount.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %d_bcount.i, align 8
  %count10.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 10, i32 1
  %57 = ptrtoint ptr %count10.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %count10.i, align 8
  %d_icount.i = getelementptr inbounds %struct.xfs_disk_dquot, ptr %add.ptr, i32 0, i32 9
  %59 = ptrtoint ptr %d_icount.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %58, ptr %d_icount.i, align 8
  %count12.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 11, i32 1
  %60 = ptrtoint ptr %count12.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %count12.i, align 8
  %d_rtbcount.i = getelementptr inbounds %struct.xfs_disk_dquot, ptr %add.ptr, i32 0, i32 17
  %62 = ptrtoint ptr %d_rtbcount.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %d_rtbcount.i, align 8
  %warnings.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 9, i32 5
  %63 = ptrtoint ptr %warnings.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %warnings.i, align 8
  %d_bwarns.i = getelementptr inbounds %struct.xfs_disk_dquot, ptr %add.ptr, i32 0, i32 13
  %65 = ptrtoint ptr %d_bwarns.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %d_bwarns.i, align 2
  %warnings15.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 10, i32 5
  %66 = ptrtoint ptr %warnings15.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %warnings15.i, align 8
  %d_iwarns.i = getelementptr inbounds %struct.xfs_disk_dquot, ptr %add.ptr, i32 0, i32 12
  %68 = ptrtoint ptr %d_iwarns.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %d_iwarns.i, align 8
  %warnings17.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 11, i32 5
  %69 = ptrtoint ptr %warnings17.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %warnings17.i, align 8
  %d_rtbwarns.i = getelementptr inbounds %struct.xfs_disk_dquot, ptr %add.ptr, i32 0, i32 19
  %71 = ptrtoint ptr %d_rtbwarns.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %d_rtbwarns.i, align 4
  %timer.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 9, i32 4
  %72 = ptrtoint ptr %timer.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %timer.i, align 8
  %call.i82 = call i32 @xfs_dquot_to_disk_ts(ptr noundef %dqp, i64 noundef %73) #11
  %d_btimer.i = getelementptr inbounds %struct.xfs_disk_dquot, ptr %add.ptr, i32 0, i32 11
  %74 = ptrtoint ptr %d_btimer.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %call.i82, ptr %d_btimer.i, align 4
  %timer20.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 10, i32 4
  %75 = ptrtoint ptr %timer20.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %timer20.i, align 8
  %call21.i = call i32 @xfs_dquot_to_disk_ts(ptr noundef %dqp, i64 noundef %76) #11
  %d_itimer.i = getelementptr inbounds %struct.xfs_disk_dquot, ptr %add.ptr, i32 0, i32 10
  %77 = ptrtoint ptr %d_itimer.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %call21.i, ptr %d_itimer.i, align 8
  %timer23.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 11, i32 4
  %78 = ptrtoint ptr %timer23.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %timer23.i, align 8
  %call24.i = call i32 @xfs_dquot_to_disk_ts(ptr noundef %dqp, i64 noundef %79) #11
  %d_rtbtimer.i = getelementptr inbounds %struct.xfs_disk_dquot, ptr %add.ptr, i32 0, i32 18
  %80 = ptrtoint ptr %d_rtbtimer.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %call24.i, ptr %d_rtbtimer.i, align 8
  %q_flags = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 3
  %81 = ptrtoint ptr %q_flags to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %q_flags, align 2
  %83 = and i16 %82, -2
  store i16 %83, ptr %q_flags, align 2
  %m_ail = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 2
  %84 = ptrtoint ptr %m_ail to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %m_ail, align 4
  %qli_flush_lsn = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 12, i32 2
  %li_lsn = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 12, i32 0, i32 2
  %ail_lock.i = getelementptr inbounds %struct.xfs_ail, ptr %85, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %ail_lock.i) #11
  %86 = ptrtoint ptr %li_lsn to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %li_lsn, align 8
  %88 = ptrtoint ptr %qli_flush_lsn to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %87, ptr %qli_flush_lsn, align 8
  call void @_raw_spin_unlock(ptr noundef %ail_lock.i) #11
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %89 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %90, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end22.if.end33_crit_edge, label %if.then29

if.end22.if.end33_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then29:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %91 = ptrtoint ptr %li_lsn to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %li_lsn, align 8
  %dd_lsn = getelementptr inbounds %struct.xfs_dqblk, ptr %add.ptr, i32 0, i32 3
  %93 = ptrtoint ptr %dd_lsn to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %92, ptr %dd_lsn, align 8
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr, i32 108
  %94 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %add.ptr.i.i, align 4
  %call.i.i = call i32 @crc32c(i32 noundef -1, ptr noundef %add.ptr, i32 noundef 136) #11
  %95 = xor i32 %call.i.i, -1
  %96 = call i32 @llvm.bswap.i32(i32 %95) #11
  %97 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %add.ptr.i.i, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.end22.if.end33_crit_edge
  %98 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %bp, align 4
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %99, i32 0, i32 5
  %100 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %b_flags, align 4
  %or = or i32 %101, 131072
  store i32 %or, ptr %b_flags, align 4
  %li_bio_list = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 12, i32 0, i32 8
  %b_li_list = getelementptr inbounds %struct.xfs_buf, ptr %99, i32 0, i32 20
  %prev.i = getelementptr inbounds %struct.xfs_buf, ptr %99, i32 0, i32 20, i32 1
  %102 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %prev.i, align 4
  %call.i.i83 = call zeroext i1 @__list_add_valid(ptr noundef %li_bio_list, ptr noundef %103, ptr noundef %b_li_list) #11
  br i1 %call.i.i83, label %if.end.i.i, label %if.end33.list_add_tail.exit_crit_edge

if.end33.list_add_tail.exit_crit_edge:            ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %104 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %li_bio_list, ptr %prev.i, align 4
  %105 = ptrtoint ptr %li_bio_list to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %b_li_list, ptr %li_bio_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 12, i32 0, i32 8, i32 1
  %106 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %103, ptr %prev3.i.i, align 4
  %107 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile ptr %li_bio_list, ptr %103, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end33.list_add_tail.exit_crit_edge
  %108 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %bp, align 4
  %b_pin_count.i = getelementptr inbounds %struct.xfs_buf, ptr %109, i32 0, i32 27
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %b_pin_count.i, i32 noundef 4) #11
  %110 = ptrtoint ptr %b_pin_count.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %b_pin_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool37.not = icmp eq i32 %111, 0
  br i1 %tobool37.not, label %list_add_tail.exit.if.end40_crit_edge, label %if.then38

list_add_tail.exit.if.end40_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then38:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @trace_xfs_dqflush_force(ptr noundef %dqp)
  %call39 = call i32 @xfs_log_force(ptr noundef %1, i32 noundef 0) #11
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %list_add_tail.exit.if.end40_crit_edge
  call fastcc void @trace_xfs_dqflush_done(ptr noundef %dqp)
  %112 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %bp, align 4
  %114 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %113, ptr %bpp, align 4
  br label %cleanup

out_abort:                                        ; preds = %if.then21, %cond.end13.out_abort_crit_edge
  %error.0 = phi i32 [ -117, %if.then21 ], [ %call.i, %cond.end13.out_abort_crit_edge ]
  %q_flags41 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 3
  %115 = ptrtoint ptr %q_flags41 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %q_flags41, align 2
  %117 = and i16 %116, -2
  store i16 %117, ptr %q_flags41, align 2
  call void @xfs_trans_ail_delete(ptr noundef %q_logitem, i32 noundef 0) #11
  call void @xfs_do_force_shutdown(ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.1, i32 noundef 1307) #11
  br label %out_unlock

out_unlock:                                       ; preds = %out_abort, %cond.end13.out_unlock_crit_edge
  %error.1 = phi i32 [ %call.i, %cond.end13.out_unlock_crit_edge ], [ %error.0, %out_abort ]
  call void @complete(ptr noundef %q_flush) #11
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end40
  %retval.0 = phi i32 [ %error.1, %out_unlock ], [ 0, %if.end40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @completion_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dqflush(ptr noundef %dqp) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqflush, i32 0, i32 1), ptr blockaddress(@trace_xfs_dqflush, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !138

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !132

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !149
  %call42 = tail call i32 @__traceiter_xfs_dqflush(ptr noundef null, ptr noundef %dqp) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !150
  %13 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !132

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqflush, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqflush, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_dqflush.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_dqflush.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 1093, ptr noundef nonnull @.str.16) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !142
  %31 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
declare dso_local void @xfs_qm_dqunpin_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xfs_qm_dqflush_check(ptr nocapture noundef readonly %dqp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %q_type.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 2
  %0 = ptrtoint ptr %q_type.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %q_type.i, align 4
  %2 = and i8 %1, 7
  %and.i = zext i8 %2 to i32
  %3 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %and.i, label %__here [
    i32 1, label %entry.if.end_crit_edge
    i32 4, label %entry.if.end_crit_edge98
    i32 2, label %entry.if.end_crit_edge99
  ]

entry.if.end_crit_edge99:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.if.end_crit_edge98:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !151
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge98, %entry.if.end_crit_edge99
  %q_id = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 4
  %4 = ptrtoint ptr %q_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %q_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp10 = icmp eq i32 %5, 0
  br i1 %cmp10, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %softlimit = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 9, i32 3
  %6 = ptrtoint ptr %softlimit to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %softlimit, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not = icmp eq i64 %7, 0
  br i1 %tobool.not, label %if.end13.if.end26_crit_edge, label %land.lhs.true14

if.end13.if.end26_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

land.lhs.true14:                                  ; preds = %if.end13
  %count = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %count, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %7)
  %cmp18 = icmp ugt i64 %9, %7
  br i1 %cmp18, label %land.lhs.true20, label %land.lhs.true14.if.end26_crit_edge

land.lhs.true14.if.end26_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

land.lhs.true20:                                  ; preds = %land.lhs.true14
  %timer = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 9, i32 4
  %10 = ptrtoint ptr %timer to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %timer, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool22.not = icmp eq i64 %11, 0
  br i1 %tobool22.not, label %__here24, label %land.lhs.true20.if.end26_crit_edge

land.lhs.true20.if.end26_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

__here24:                                         ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !152
  br label %cleanup

if.end26:                                         ; preds = %land.lhs.true20.if.end26_crit_edge, %land.lhs.true14.if.end26_crit_edge, %if.end13.if.end26_crit_edge
  %softlimit27 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 10, i32 3
  %12 = ptrtoint ptr %softlimit27 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %softlimit27, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool28.not = icmp eq i64 %13, 0
  br i1 %tobool28.not, label %if.end26.if.end43_crit_edge, label %land.lhs.true29

if.end26.if.end43_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

land.lhs.true29:                                  ; preds = %if.end26
  %count31 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %count31 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %count31, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %13)
  %cmp34 = icmp ugt i64 %15, %13
  br i1 %cmp34, label %land.lhs.true36, label %land.lhs.true29.if.end43_crit_edge

land.lhs.true29.if.end43_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

land.lhs.true36:                                  ; preds = %land.lhs.true29
  %timer38 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 10, i32 4
  %16 = ptrtoint ptr %timer38 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %timer38, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool39.not = icmp eq i64 %17, 0
  br i1 %tobool39.not, label %__here41, label %land.lhs.true36.if.end43_crit_edge

land.lhs.true36.if.end43_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

__here41:                                         ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !153
  br label %cleanup

if.end43:                                         ; preds = %land.lhs.true36.if.end43_crit_edge, %land.lhs.true29.if.end43_crit_edge, %if.end26.if.end43_crit_edge
  %softlimit44 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 11, i32 3
  %18 = ptrtoint ptr %softlimit44 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %softlimit44, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool45.not = icmp eq i64 %19, 0
  br i1 %tobool45.not, label %if.end43.if.end60_crit_edge, label %land.lhs.true46

if.end43.if.end60_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

land.lhs.true46:                                  ; preds = %if.end43
  %count48 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 11, i32 1
  %20 = ptrtoint ptr %count48 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %count48, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %19)
  %cmp51 = icmp ugt i64 %21, %19
  br i1 %cmp51, label %land.lhs.true53, label %land.lhs.true46.if.end60_crit_edge

land.lhs.true46.if.end60_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

land.lhs.true53:                                  ; preds = %land.lhs.true46
  %timer55 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 11, i32 4
  %22 = ptrtoint ptr %timer55 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %timer55, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %tobool56.not = icmp eq i64 %23, 0
  br i1 %tobool56.not, label %__here58, label %land.lhs.true53.if.end60_crit_edge

land.lhs.true53.if.end60_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

__here58:                                         ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !154
  br label %cleanup

if.end60:                                         ; preds = %land.lhs.true53.if.end60_crit_edge, %land.lhs.true46.if.end60_crit_edge, %if.end43.if.end60_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %tobool62.not = icmp sgt i8 %1, -1
  br i1 %tobool62.not, label %if.end60.cleanup_crit_edge, label %if.then63

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then63:                                        ; preds = %if.end60
  %q_mount = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 1
  %24 = ptrtoint ptr %q_mount to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %q_mount, align 8
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %25, i32 0, i32 61
  %26 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %m_features.i, align 8
  %and.i97 = and i64 %27, 16777216
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i97)
  %tobool.i.not = icmp eq i64 %and.i97, 0
  br i1 %tobool.i.not, label %__here66, label %if.then63.cleanup_crit_edge

if.then63.cleanup_crit_edge:                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

__here66:                                         ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !155
  br label %cleanup

cleanup:                                          ; preds = %__here66, %if.then63.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %__here58, %__here41, %__here24, %if.end.cleanup_crit_edge, %__here
  %retval.0 = phi ptr [ blockaddress(@xfs_qm_dqflush_check, %__here), %__here ], [ blockaddress(@xfs_qm_dqflush_check, %__here66), %__here66 ], [ blockaddress(@xfs_qm_dqflush_check, %__here58), %__here58 ], [ blockaddress(@xfs_qm_dqflush_check, %__here41), %__here41 ], [ blockaddress(@xfs_qm_dqflush_check, %__here24), %__here24 ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end60.cleanup_crit_edge ], [ null, %if.then63.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dqflush_force(ptr noundef %dqp) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqflush_force, i32 0, i32 1), ptr blockaddress(@trace_xfs_dqflush_force, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !138

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !132

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !156
  %call42 = tail call i32 @__traceiter_xfs_dqflush_force(ptr noundef null, ptr noundef %dqp) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !157
  %13 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !132

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqflush_force, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqflush_force, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_dqflush_force.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_dqflush_force.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 1094, ptr noundef nonnull @.str.16) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !142
  %31 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
declare dso_local i32 @xfs_log_force(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dqflush_done(ptr noundef %dqp) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqflush_done, i32 0, i32 1), ptr blockaddress(@trace_xfs_dqflush_done, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !138

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !132

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !158
  %call42 = tail call i32 @__traceiter_xfs_dqflush_done(ptr noundef null, ptr noundef %dqp) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !159
  %13 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !132

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqflush_done, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqflush_done, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_dqflush_done.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_dqflush_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 1095, ptr noundef nonnull @.str.16) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !142
  %31 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
declare dso_local void @xfs_trans_ail_delete(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_do_force_shutdown(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_dqlock2(ptr noundef %d1, ptr noundef %d2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %d1, null
  %tobool1.not = icmp eq ptr %d2, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %if.else10, label %if.then

if.then:                                          ; preds = %entry
  %cmp.not = icmp eq ptr %d1, %d2
  br i1 %cmp.not, label %cond.false, label %if.then.cond.end_crit_edge, !prof !133

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 1325) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then.cond.end_crit_edge
  %q_id = getelementptr inbounds %struct.xfs_dquot, ptr %d1, i32 0, i32 4
  %0 = ptrtoint ptr %q_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %q_id, align 8
  %q_id4 = getelementptr inbounds %struct.xfs_dquot, ptr %d2, i32 0, i32 4
  %2 = ptrtoint ptr %q_id4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %q_id4, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp5 = icmp ugt i32 %1, %3
  %d2.d1 = select i1 %cmp5, ptr %d2, ptr %d1
  %d1.d2 = select i1 %cmp5, ptr %d1, ptr %d2
  %q_qlock8 = getelementptr inbounds %struct.xfs_dquot, ptr %d2.d1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %q_qlock8, i32 noundef 0) #11
  br label %if.end20.sink.split

if.else10:                                        ; preds = %entry
  %4 = and i1 %tobool.not, %tobool1.not
  %d1.mux = select i1 %tobool.not, ptr %d2, ptr %d1
  br i1 %4, label %if.else10.if.end20_crit_edge, label %if.else10.if.end20.sink.split_crit_edge

if.else10.if.end20.sink.split_crit_edge:          ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.sink.split

if.else10.if.end20_crit_edge:                     ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.end20.sink.split:                              ; preds = %if.else10.if.end20.sink.split_crit_edge, %cond.end
  %d1.sink = phi ptr [ %d1.mux, %if.else10.if.end20.sink.split_crit_edge ], [ %d1.d2, %cond.end ]
  %.sink = phi i32 [ 0, %if.else10.if.end20.sink.split_crit_edge ], [ 1, %cond.end ]
  %q_qlock13 = getelementptr inbounds %struct.xfs_dquot, ptr %d1.sink, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %q_qlock13, i32 noundef %.sink) #11
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %if.else10.if.end20_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_qm_init() local_unnamed_addr #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.11, i32 noundef 536, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  store ptr %call, ptr @xfs_dquot_cache, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.12, i32 noundef 528, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  store ptr %call1, ptr @xfs_dqtrx_cache, align 4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %out_free_dquot_cache, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

out_free_dquot_cache:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load ptr, ptr @xfs_dquot_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #11
  br label %return

return:                                           ; preds = %out_free_dquot_cache, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.return_crit_edge ], [ -12, %entry.return_crit_edge ], [ -12, %out_free_dquot_cache ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_qm_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @xfs_dqtrx_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #11
  %1 = load ptr, ptr @xfs_dquot_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_qm_dqiterate(ptr noundef %mp, i8 noundef zeroext %type, ptr nocapture noundef readonly %iter_fn, ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %dq = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dq) #11
  %0 = ptrtoint ptr %dq to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %dq, align 4, !annotation !136
  br label %do.body

do.body:                                          ; preds = %if.end2.do.body_crit_edge, %entry
  %id.0 = phi i32 [ 0, %entry ], [ %5, %if.end2.do.body_crit_edge ]
  %call = call i32 @xfs_qm_dqget_next(ptr noundef %mp, i32 noundef %id.0, i8 noundef zeroext %type, ptr noundef nonnull %dq)
  %1 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %call, label %do.body.cleanup_crit_edge [
    i32 -2, label %do.body.cleanup.loopexit_crit_edge
    i32 0, label %if.end2
  ]

do.body.cleanup.loopexit_crit_edge:               ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.loopexit

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %do.body
  %2 = ptrtoint ptr %dq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dq, align 4
  %call3 = tail call i32 %iter_fn(ptr noundef %3, i8 noundef zeroext %type, ptr noundef %priv) #11
  %q_id = getelementptr inbounds %struct.xfs_dquot, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %q_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %q_id, align 8
  tail call void @xfs_qm_dqput(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp ne i32 %call3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp5.not = icmp eq i32 %5, 0
  %or.cond = select i1 %cmp4, i1 true, i1 %cmp5.not
  br i1 %or.cond, label %if.end2.cleanup.loopexit_crit_edge, label %if.end2.do.body_crit_edge

if.end2.do.body_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end2.cleanup.loopexit_crit_edge:               ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.loopexit

cleanup.loopexit:                                 ; preds = %if.end2.cleanup.loopexit_crit_edge, %do.body.cleanup.loopexit_crit_edge
  %retval.0.ph = phi i32 [ %call3, %if.end2.cleanup.loopexit_crit_edge ], [ 0, %do.body.cleanup.loopexit_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.ph, %cleanup.loopexit ], [ %call, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dq) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dqget_freeing(ptr noundef %dqp) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqget_freeing, i32 0, i32 1), ptr blockaddress(@trace_xfs_dqget_freeing, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !138

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !132

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !160
  %call42 = tail call i32 @__traceiter_xfs_dqget_freeing(ptr noundef null, ptr noundef %dqp) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !161
  %13 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !132

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqget_freeing, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqget_freeing, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_dqget_freeing.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_dqget_freeing.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 1088, ptr noundef nonnull @.str.16) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !142
  %31 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
define internal fastcc void @trace_xfs_dqget_hit(ptr noundef %dqp) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqget_hit, i32 0, i32 1), ptr blockaddress(@trace_xfs_dqget_hit, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !138

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !132

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !162
  %call42 = tail call i32 @__traceiter_xfs_dqget_hit(ptr noundef null, ptr noundef %dqp) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !163
  %13 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !132

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqget_hit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqget_hit, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_dqget_hit.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_dqget_hit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 1086, ptr noundef nonnull @.str.16) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !142
  %31 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
declare dso_local i32 @__traceiter_xfs_dqget_freeing(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dqget_hit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xfs_dquot_alloc(ptr noundef %mp, i32 noundef %id, i8 noundef zeroext %type) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @xfs_dquot_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 36288) #11
  %q_type = getelementptr inbounds %struct.xfs_dquot, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %q_type to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %type, ptr %q_type, align 4
  %q_id = getelementptr inbounds %struct.xfs_dquot, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %q_id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %id, ptr %q_id, align 8
  %q_mount = getelementptr inbounds %struct.xfs_dquot, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %q_mount to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mp, ptr %q_mount, align 8
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %call.i, ptr %call.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %prev.i, align 4
  %q_qlock = getelementptr inbounds %struct.xfs_dquot, ptr %call.i, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %q_qlock, ptr noundef nonnull @.str.19, ptr noundef nonnull @xfs_dquot_alloc.__key) #11
  %q_pinwait = getelementptr inbounds %struct.xfs_dquot, ptr %call.i, i32 0, i32 19
  tail call void @__init_waitqueue_head(ptr noundef %q_pinwait, ptr noundef nonnull @.str.21, ptr noundef nonnull @xfs_dquot_alloc.__key.20) #11
  %m_quotainfo = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 12
  %6 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m_quotainfo, align 4
  %qi_dqperchunk = getelementptr inbounds %struct.xfs_quotainfo, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %qi_dqperchunk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qi_dqperchunk, align 8
  %10 = udiv i32 %id, %9
  %div = zext i32 %10 to i64
  %q_fileoffset = getelementptr inbounds %struct.xfs_dquot, ptr %call.i, i32 0, i32 8
  %11 = ptrtoint ptr %q_fileoffset to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %div, ptr %q_fileoffset, align 8
  %12 = load i32, ptr %qi_dqperchunk, align 8
  %rem = urem i32 %id, %12
  %mul = mul i32 %rem, 136
  %q_bufoffset = getelementptr inbounds %struct.xfs_dquot, ptr %call.i, i32 0, i32 6
  %13 = ptrtoint ptr %q_bufoffset to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul, ptr %q_bufoffset, align 8
  %q_flush = getelementptr inbounds %struct.xfs_dquot, ptr %call.i, i32 0, i32 17
  %14 = ptrtoint ptr %q_flush to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %q_flush, align 4
  %wait.i = getelementptr inbounds %struct.xfs_dquot, ptr %call.i, i32 0, i32 17, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @init_completion.__key) #11
  tail call void @complete(ptr noundef %q_flush) #11
  %15 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %type, label %sw.default [
    i8 1, label %entry.sw.epilog_crit_edge
    i8 4, label %sw.bb
    i8 2, label %sw.bb14
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dep_map = getelementptr inbounds %struct.xfs_dquot, ptr %call.i, i32 0, i32 16, i32 5
  %wait_type_inner = getelementptr inbounds %struct.xfs_dquot, ptr %call.i, i32 0, i32 16, i32 5, i32 4
  %16 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.22, ptr noundef nonnull @xfs_dquot_group_class, i32 noundef 0, i8 noundef zeroext %17, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dep_map16 = getelementptr inbounds %struct.xfs_dquot, ptr %call.i, i32 0, i32 16, i32 5
  %wait_type_inner19 = getelementptr inbounds %struct.xfs_dquot, ptr %call.i, i32 0, i32 16, i32 5, i32 4
  %18 = ptrtoint ptr %wait_type_inner19 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %wait_type_inner19, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map16, ptr noundef nonnull @.str.23, ptr noundef nonnull @xfs_dquot_project_class, i32 noundef 0, i8 noundef zeroext %19, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 513) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb14, %sw.bb, %entry.sw.epilog_crit_edge
  tail call void @xfs_qm_dquot_logitem_init(ptr noundef %call.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %20 = load ptr, ptr @xfsstats, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  %add = add i32 %27, %21
  %28 = inttoptr i32 %add to ptr
  %xs_qm_dquot = getelementptr inbounds %struct.__xfsstats, ptr %28, i32 0, i32 89
  %29 = ptrtoint ptr %xs_qm_dquot to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %xs_qm_dquot, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %xs_qm_dquot, align 4
  %m_stats = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 92
  %31 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %m_stats, align 4
  %33 = ptrtoint ptr %32 to i32
  %34 = load i32, ptr %cpu, align 4
  %arrayidx38 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx38, align 4
  %add39 = add i32 %36, %33
  %37 = inttoptr i32 %add39 to ptr
  %xs_qm_dquot40 = getelementptr inbounds %struct.__xfsstats, ptr %37, i32 0, i32 89
  %38 = ptrtoint ptr %xs_qm_dquot40 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %xs_qm_dquot40, align 4
  %inc41 = add i32 %39, 1
  store i32 %inc41, ptr %xs_qm_dquot40, align 4
  ret ptr %call.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dqread(ptr noundef %dqp) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqread, i32 0, i32 1), ptr blockaddress(@trace_xfs_dqread, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !138

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !132

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !164
  %call42 = tail call i32 @__traceiter_xfs_dqread(ptr noundef null, ptr noundef %dqp) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !165
  %13 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !132

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqread, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqread, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_dqread.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_dqread.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 1084, ptr noundef nonnull @.str.16) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !142
  %31 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
define internal fastcc i32 @xfs_dquot_disk_read(ptr noundef %mp, ptr noundef %dqp, ptr nocapture noundef writeonly %bpp) unnamed_addr #9 align 64 {
entry:
  %map.i = alloca %struct.xfs_buf_map, align 8
  %map = alloca %struct.xfs_bmbt_irec, align 8
  %bp = alloca ptr, align 4
  %nmaps = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %map) #11
  %0 = call ptr @memset(ptr %map, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #11
  %1 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !136
  %q_type.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 2
  %2 = ptrtoint ptr %q_type.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %q_type.i, align 4
  %trunc = trunc i8 %3 to i3
  %4 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.52)
  switch i3 %trunc, label %xfs_quota_inode.exit [
    i3 1, label %xfs_quota_inode.exit.thread
    i3 -4, label %xfs_quota_inode.exit.thread116
    i3 2, label %xfs_quota_inode.exit.thread121
  ]

xfs_quota_inode.exit.thread:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %m_quotainfo.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 12
  %5 = ptrtoint ptr %m_quotainfo.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m_quotainfo.i, align 4
  %qi_uquotaip.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %qi_uquotaip.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %qi_uquotaip.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nmaps) #11
  %9 = ptrtoint ptr %nmaps to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %nmaps, align 4
  br label %xfs_this_quota_on.exit

xfs_quota_inode.exit.thread116:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %m_quotainfo2.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 12
  %10 = ptrtoint ptr %m_quotainfo2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %m_quotainfo2.i, align 4
  %qi_gquotaip.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %qi_gquotaip.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %qi_gquotaip.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nmaps) #11
  %14 = ptrtoint ptr %nmaps to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %nmaps, align 4
  br label %xfs_this_quota_on.exit

xfs_quota_inode.exit.thread121:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %m_quotainfo4.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 12
  %15 = ptrtoint ptr %m_quotainfo4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %m_quotainfo4.i, align 4
  %qi_pquotaip.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %qi_pquotaip.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %qi_pquotaip.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nmaps) #11
  %19 = ptrtoint ptr %nmaps to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %nmaps, align 4
  br label %xfs_this_quota_on.exit

xfs_quota_inode.exit:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.13, i32 noundef 103) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nmaps) #11
  %call2 = tail call i32 @xfs_ilock_data_map_shared(ptr noundef null) #11
  br label %if.then

xfs_this_quota_on.exit:                           ; preds = %xfs_quota_inode.exit.thread121, %xfs_quota_inode.exit.thread116, %xfs_quota_inode.exit.thread
  %.sink = phi ptr [ %13, %xfs_quota_inode.exit.thread116 ], [ %18, %xfs_quota_inode.exit.thread121 ], [ %8, %xfs_quota_inode.exit.thread ]
  %.sink9.i = phi i32 [ 64, %xfs_quota_inode.exit.thread116 ], [ 8, %xfs_quota_inode.exit.thread121 ], [ 1, %xfs_quota_inode.exit.thread ]
  %call2118 = tail call i32 @xfs_ilock_data_map_shared(ptr noundef %.sink) #11
  %m_qflags5.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 60
  %20 = ptrtoint ptr %m_qflags5.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %m_qflags5.i, align 4
  %and6.i = and i32 %21, %.sink9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool.not = icmp eq i32 %and6.i, 0
  br i1 %tobool.not, label %xfs_this_quota_on.exit.if.then_crit_edge, label %if.end

xfs_this_quota_on.exit.if.then_crit_edge:         ; preds = %xfs_this_quota_on.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %xfs_this_quota_on.exit.if.then_crit_edge, %xfs_quota_inode.exit
  %retval.0.i113131 = phi ptr [ %.sink, %xfs_this_quota_on.exit.if.then_crit_edge ], [ null, %xfs_quota_inode.exit ]
  %call2115130 = phi i32 [ %call2118, %xfs_this_quota_on.exit.if.then_crit_edge ], [ %call2, %xfs_quota_inode.exit ]
  tail call void @xfs_iunlock(ptr noundef %retval.0.i113131, i32 noundef %call2115130) #11
  br label %cleanup

if.end:                                           ; preds = %xfs_this_quota_on.exit
  %q_fileoffset = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 8
  %22 = ptrtoint ptr %q_fileoffset to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %q_fileoffset, align 8
  %call4 = call i32 @xfs_bmapi_read(ptr noundef %.sink, i64 noundef %23, i64 noundef 1, ptr noundef nonnull %map, ptr noundef nonnull %nmaps, i32 noundef 0) #11
  call void @xfs_iunlock(ptr noundef %.sink, i32 noundef %call2118) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %24 = ptrtoint ptr %nmaps to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nmaps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp = icmp eq i32 %25, 1
  br i1 %cmp, label %if.end7.cond.end_crit_edge, label %cond.false, !prof !132

if.end7.cond.end_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1, i32 noundef 437) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end7.cond.end_crit_edge
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %map, i32 0, i32 2
  %26 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %br_blockcount, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %cmp11.not = icmp eq i64 %27, 0
  br i1 %cmp11.not, label %cond.false20, label %cond.end.cond.end21_crit_edge, !prof !133

cond.end.cond.end21_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end21

cond.false20:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 438) #11
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false20, %cond.end.cond.end21_crit_edge
  %br_startblock = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %map, i32 0, i32 1
  %28 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %br_startblock, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %29)
  %cmp22.not = icmp eq i64 %29, -1
  br i1 %cmp22.not, label %cond.false31, label %cond.end21.cond.end32_crit_edge, !prof !133

cond.end21.cond.end32_crit_edge:                  ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end32

cond.false31:                                     ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1, i32 noundef 439) #11
  %30 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %30)
  %.pr = load i64, ptr %br_startblock, align 8
  br label %cond.end32

cond.end32:                                       ; preds = %cond.false31, %cond.end21.cond.end32_crit_edge
  %31 = phi i64 [ %29, %cond.end21.cond.end32_crit_edge ], [ %.pr, %cond.false31 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %31)
  %cmp34 = icmp eq i64 %31, -2
  br i1 %cmp34, label %cond.end32.cleanup_crit_edge, label %if.end37

cond.end32.cleanup_crit_edge:                     ; preds = %cond.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end37:                                         ; preds = %cond.end32
  call fastcc void @trace_xfs_dqtobp_read(ptr noundef %dqp)
  %32 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %br_startblock, align 8
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 24
  %34 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %sb_agblklog, align 4
  %conv39 = zext i8 %35 to i32
  %sh_prom = zext i8 %35 to i64
  %shr = lshr i64 %33, %sh_prom
  %conv41 = and i64 %shr, 4294967295
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %36 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sb_agblocks, align 4
  %conv43 = zext i32 %37 to i64
  %mul = mul nuw i64 %conv41, %conv43
  %notmask.i = shl nsw i32 -1, %conv39
  %sub.i = xor i32 %notmask.i, -1
  %38 = trunc i64 %33 to i32
  %conv50 = and i32 %sub.i, %38
  %conv51 = zext i32 %conv50 to i64
  %add = add nuw i64 %mul, %conv51
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 28
  %39 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom53 = zext i8 %40 to i64
  %shl = shl i64 %add, %sh_prom53
  %q_blkno = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 7
  %41 = ptrtoint ptr %q_blkno to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %shl, ptr %q_blkno, align 8
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 13
  %42 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %m_ddev_targp, align 8
  %m_quotainfo = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 12
  %44 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %m_quotainfo, align 4
  %qi_dqchunklen = getelementptr inbounds %struct.xfs_quotainfo, ptr %45, i32 0, i32 10
  %46 = ptrtoint ptr %qi_dqchunklen to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %qi_dqchunklen, align 8
  %conv55 = trunc i64 %47 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map.i) #11
  %48 = getelementptr inbounds i8, ptr %map.i, i32 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 -1, ptr %48, align 8
  %50 = ptrtoint ptr %map.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %shl, ptr %map.i, align 8
  store i32 %conv55, ptr %48, align 8
  %call.i = call i32 @xfs_trans_read_buf_map(ptr noundef %mp, ptr noundef null, ptr noundef %43, ptr noundef nonnull %map.i, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %bp, ptr noundef nonnull @xfs_dquot_buf_ops) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool57.not = icmp eq i32 %call.i, 0
  %51 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bp, align 4
  br i1 %tobool57.not, label %if.end70, label %if.then58

if.then58:                                        ; preds = %if.end37
  %cmp59 = icmp eq ptr %52, null
  br i1 %cmp59, label %if.then58.cleanup_crit_edge, label %cond.false68, !prof !132

if.then58.cleanup_crit_edge:                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cond.false68:                                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1, i32 noundef 455) #11
  br label %cleanup

if.end70:                                         ; preds = %if.end37
  %count = getelementptr inbounds %struct.xfs_buf, ptr %52, i32 0, i32 6, i32 1
  %53 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp71 = icmp eq i32 %54, 0
  br i1 %cmp71, label %if.end70.cond.end81_crit_edge, label %cond.false80, !prof !132

if.end70.cond.end81_crit_edge:                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end81

cond.false80:                                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 459) #11
  br label %cond.end81

cond.end81:                                       ; preds = %cond.false80, %if.end70.cond.end81_crit_edge
  %55 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bp, align 4
  call void @xfs_buf_set_ref(ptr noundef %56, i32 noundef 1) #11
  %57 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bp, align 4
  %59 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %bpp, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end81, %cond.false68, %if.then58.cleanup_crit_edge, %cond.end32.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %cond.end81 ], [ -3, %if.then ], [ %call4, %if.end.cleanup_crit_edge ], [ -2, %cond.end32.cleanup_crit_edge ], [ %call.i, %if.then58.cleanup_crit_edge ], [ %call.i, %cond.false68 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nmaps) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %map) #11
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_dquot_disk_alloc(ptr noundef %dqp, ptr nocapture noundef writeonly %bpp) unnamed_addr #9 align 64 {
entry:
  %map.i = alloca %struct.xfs_buf_map, align 8
  %map = alloca %struct.xfs_bmbt_irec, align 8
  %tp = alloca ptr, align 4
  %bp = alloca ptr, align 4
  %nmaps = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %map) #11
  %0 = call ptr @memset(ptr %map, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #11
  %1 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !136
  %q_mount = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 1
  %2 = ptrtoint ptr %q_mount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %q_mount, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #11
  %4 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !136
  %q_type.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 2
  %5 = ptrtoint ptr %q_type.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %q_type.i, align 4
  %7 = and i8 %6, 7
  %trunc = trunc i8 %6 to i3
  %8 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.53)
  switch i3 %trunc, label %sw.default.i [
    i3 1, label %sw.bb.i
    i3 -4, label %sw.bb1.i
    i3 2, label %sw.bb3.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %m_quotainfo.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 12
  %9 = ptrtoint ptr %m_quotainfo.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m_quotainfo.i, align 4
  %qi_uquotaip.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %qi_uquotaip.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %qi_uquotaip.i, align 8
  br label %xfs_quota_inode.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %m_quotainfo2.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 12
  %13 = ptrtoint ptr %m_quotainfo2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %m_quotainfo2.i, align 4
  %qi_gquotaip.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %qi_gquotaip.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %qi_gquotaip.i, align 4
  br label %xfs_quota_inode.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %m_quotainfo4.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 12
  %17 = ptrtoint ptr %m_quotainfo4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %m_quotainfo4.i, align 4
  %qi_pquotaip.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %qi_pquotaip.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %qi_pquotaip.i, align 8
  br label %xfs_quota_inode.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.13, i32 noundef 103) #11
  br label %xfs_quota_inode.exit

xfs_quota_inode.exit:                             ; preds = %sw.default.i, %sw.bb3.i, %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ null, %sw.default.i ], [ %20, %sw.bb3.i ], [ %16, %sw.bb1.i ], [ %12, %sw.bb.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nmaps) #11
  %21 = ptrtoint ptr %nmaps to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %nmaps, align 4
  tail call fastcc void @trace_xfs_dqalloc(ptr noundef %dqp)
  %tr_qm_dqalloc = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 65, i32 23
  %m_bm_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 43
  %22 = ptrtoint ptr %m_bm_maxlevels to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %m_bm_maxlevels, align 8
  %call4 = call i32 @xfs_trans_alloc(ptr noundef %3, ptr noundef %tr_qm_dqalloc, i32 noundef %23, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %tp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %xfs_quota_inode.exit.cleanup_crit_edge

xfs_quota_inode.exit.cleanup_crit_edge:           ; preds = %xfs_quota_inode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %xfs_quota_inode.exit
  call void @xfs_ilock(ptr noundef %retval.0.i, i32 noundef 4) #11
  %24 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ijoin(ptr noundef %25, ptr noundef %retval.0.i, i32 noundef 0) #11
  %26 = ptrtoint ptr %q_mount to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %q_mount, align 8
  %28 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.54)
  switch i3 %trunc, label %if.end.err_cancel_crit_edge [
    i3 1, label %if.end.xfs_this_quota_on.exit_crit_edge
    i3 -4, label %sw.bb1.i111
    i3 2, label %sw.bb4.i
  ]

if.end.xfs_this_quota_on.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_this_quota_on.exit

if.end.err_cancel_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_cancel

sw.bb1.i111:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_this_quota_on.exit

sw.bb4.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_this_quota_on.exit

xfs_this_quota_on.exit:                           ; preds = %sw.bb4.i, %sw.bb1.i111, %if.end.xfs_this_quota_on.exit_crit_edge
  %.sink9.i = phi i32 [ 8, %sw.bb4.i ], [ 64, %sw.bb1.i111 ], [ 1, %if.end.xfs_this_quota_on.exit_crit_edge ]
  %m_qflags5.i = getelementptr inbounds %struct.xfs_mount, ptr %27, i32 0, i32 60
  %29 = ptrtoint ptr %m_qflags5.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %m_qflags5.i, align 4
  %and6.i = and i32 %30, %.sink9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not, label %xfs_this_quota_on.exit.err_cancel_crit_edge, label %if.end9

xfs_this_quota_on.exit.err_cancel_crit_edge:      ; preds = %xfs_this_quota_on.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_cancel

if.end9:                                          ; preds = %xfs_this_quota_on.exit
  %call10 = call i32 @xfs_iext_count_may_overflow(ptr noundef %retval.0.i, i32 noundef 0, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.err_cancel_crit_edge

if.end9.err_cancel_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_cancel

if.end13:                                         ; preds = %if.end9
  %31 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tp, align 4
  %q_fileoffset = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 8
  %33 = ptrtoint ptr %q_fileoffset to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %q_fileoffset, align 8
  %call14 = call i32 @xfs_bmapi_write(ptr noundef %32, ptr noundef %retval.0.i, i64 noundef %34, i64 noundef 1, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %map, ptr noundef nonnull %nmaps) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.err_cancel_crit_edge

if.end13.err_cancel_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_cancel

if.end17:                                         ; preds = %if.end13
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %map, i32 0, i32 2
  %35 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %br_blockcount, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %36)
  %cmp = icmp eq i64 %36, 1
  br i1 %cmp, label %if.end17.cond.end_crit_edge, label %cond.false, !prof !132

if.end17.cond.end_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, i32 noundef 335) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end17.cond.end_crit_edge
  %37 = ptrtoint ptr %nmaps to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nmaps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp21 = icmp eq i32 %38, 1
  br i1 %cmp21, label %cond.end.cond.end31_crit_edge, label %cond.false30, !prof !132

cond.end.cond.end31_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end31

cond.false30:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1, i32 noundef 336) #11
  br label %cond.end31

cond.end31:                                       ; preds = %cond.false30, %cond.end.cond.end31_crit_edge
  %br_startblock = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %map, i32 0, i32 1
  %39 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %br_startblock, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %40)
  %41 = icmp ult i64 %40, -2
  br i1 %41, label %cond.end31.cond.end45_crit_edge, label %cond.false44, !prof !132

cond.end31.cond.end45_crit_edge:                  ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end45

cond.false44:                                     ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 338) #11
  br label %cond.end45

cond.end45:                                       ; preds = %cond.false44, %cond.end31.cond.end45_crit_edge
  %42 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %br_startblock, align 8
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 24
  %44 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %sb_agblklog, align 4
  %conv47 = zext i8 %45 to i32
  %sh_prom = zext i8 %45 to i64
  %shr = lshr i64 %43, %sh_prom
  %conv49 = and i64 %shr, 4294967295
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 11
  %46 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sb_agblocks, align 4
  %conv51 = zext i32 %47 to i64
  %mul = mul nuw i64 %conv49, %conv51
  %notmask.i = shl nsw i32 -1, %conv47
  %sub.i = xor i32 %notmask.i, -1
  %48 = trunc i64 %43 to i32
  %conv58 = and i32 %sub.i, %48
  %conv59 = zext i32 %conv58 to i64
  %add60 = add nuw i64 %mul, %conv59
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 28
  %49 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom62 = zext i8 %50 to i64
  %shl = shl i64 %add60, %sh_prom62
  %q_blkno = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 7
  %51 = ptrtoint ptr %q_blkno to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %shl, ptr %q_blkno, align 8
  %52 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tp, align 4
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 13
  %54 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %m_ddev_targp, align 8
  %m_quotainfo = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 12
  %56 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %m_quotainfo, align 4
  %qi_dqchunklen = getelementptr inbounds %struct.xfs_quotainfo, ptr %57, i32 0, i32 10
  %58 = ptrtoint ptr %qi_dqchunklen to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %qi_dqchunklen, align 8
  %conv64 = trunc i64 %59 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map.i) #11
  %60 = getelementptr inbounds i8, ptr %map.i, i32 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 -1, ptr %60, align 8
  %62 = ptrtoint ptr %map.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %shl, ptr %map.i, align 8
  store i32 %conv64, ptr %60, align 8
  %call.i = call i32 @xfs_trans_get_buf_map(ptr noundef %53, ptr noundef %55, ptr noundef nonnull %map.i, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %bp) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool66.not = icmp eq i32 %call.i, 0
  br i1 %tobool66.not, label %if.end68, label %cond.end45.err_cancel_crit_edge

cond.end45.err_cancel_crit_edge:                  ; preds = %cond.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_cancel

if.end68:                                         ; preds = %cond.end45
  %63 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bp, align 4
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %64, i32 0, i32 35
  %65 = ptrtoint ptr %b_ops to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @xfs_dquot_buf_ops, ptr %b_ops, align 4
  %66 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tp, align 4
  %q_id = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 4
  %68 = ptrtoint ptr %q_id to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %q_id, align 8
  call fastcc void @xfs_qm_init_dquot_blk(ptr noundef %67, ptr noundef %3, i32 noundef %69, i8 noundef zeroext %7, ptr noundef %64)
  %70 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bp, align 4
  call void @xfs_buf_set_ref(ptr noundef %71, i32 noundef 1) #11
  %72 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tp, align 4
  %74 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bp, align 4
  call void @xfs_trans_bhold(ptr noundef %73, ptr noundef %75) #11
  %76 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tp, align 4
  %call69 = call i32 @xfs_trans_commit(ptr noundef %77) #11
  call void @xfs_iunlock(ptr noundef %retval.0.i, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  %78 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bp, align 4
  br i1 %tobool70.not, label %if.end72, label %if.then71

if.then71:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  call void @xfs_buf_unlock(ptr noundef %79) #11
  call void @xfs_buf_rele(ptr noundef %79) #11
  br label %cleanup

if.end72:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  %80 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %79, ptr %bpp, align 4
  br label %cleanup

err_cancel:                                       ; preds = %cond.end45.err_cancel_crit_edge, %if.end13.err_cancel_crit_edge, %if.end9.err_cancel_crit_edge, %xfs_this_quota_on.exit.err_cancel_crit_edge, %if.end.err_cancel_crit_edge
  %error.0 = phi i32 [ %call10, %if.end9.err_cancel_crit_edge ], [ %call14, %if.end13.err_cancel_crit_edge ], [ %call.i, %cond.end45.err_cancel_crit_edge ], [ -3, %xfs_this_quota_on.exit.err_cancel_crit_edge ], [ -3, %if.end.err_cancel_crit_edge ]
  %81 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %tp, align 4
  call void @xfs_trans_cancel(ptr noundef %82) #11
  call void @xfs_iunlock(ptr noundef %retval.0.i, i32 noundef 4) #11
  br label %cleanup

cleanup:                                          ; preds = %err_cancel, %if.end72, %if.then71, %xfs_quota_inode.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %err_cancel ], [ %call69, %if.then71 ], [ 0, %if.end72 ], [ %call4, %xfs_quota_inode.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nmaps) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %map) #11
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_dquot_from_disk(ptr noundef %dqp, ptr nocapture noundef readonly %bp) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %q_bufoffset = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 6
  %2 = ptrtoint ptr %q_bufoffset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %q_bufoffset, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %d_type.i = getelementptr inbounds %struct.xfs_disk_dquot, ptr %add.ptr, i32 0, i32 2
  %4 = ptrtoint ptr %d_type.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %d_type.i, align 1
  %6 = and i8 %5, 7
  %q_type.i.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 2
  %7 = ptrtoint ptr %q_type.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %q_type.i.i, align 4
  %9 = and i8 %8, 7
  %d_id.i = getelementptr inbounds %struct.xfs_disk_dquot, ptr %add.ptr, i32 0, i32 3
  %10 = ptrtoint ptr %d_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %d_id.i, align 4
  %q_id.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 4
  %12 = ptrtoint ptr %q_id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %q_id.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.not.i = icmp eq i32 %11, %13
  br i1 %cmp.not.i, label %if.end.i, label %entry.__here_crit_edge

entry.__here_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

if.end.i:                                         ; preds = %entry
  %q_mount.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 1
  %14 = ptrtoint ptr %q_mount.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %q_mount.i, align 8
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %15, i32 0, i32 61
  %16 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %m_features.i.i, align 8
  %and.i33.i = and i64 %17, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i33.i)
  %tobool.i.i = icmp eq i64 %and.i33.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp7.i = icmp ne i8 %9, 1
  %or.cond.i = select i1 %tobool.i.i, i1 %cmp7.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp11.not.i = icmp eq i32 %11, 0
  %or.cond34.i = select i1 %or.cond.i, i1 %cmp11.not.i, i1 false
  br i1 %or.cond34.i, label %xfs_dquot_check_type.exit, label %if.then13.i

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %9)
  %cmp16.i = icmp eq i8 %6, %9
  br i1 %cmp16.i, label %if.then13.i.if.end_crit_edge, label %if.then13.i.__here_crit_edge

if.then13.i.__here_crit_edge:                     ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

if.then13.i.if.end_crit_edge:                     ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

xfs_dquot_check_type.exit:                        ; preds = %if.end.i
  %trunc = trunc i8 %5 to i3
  %18 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.55)
  switch i3 %trunc, label %xfs_dquot_check_type.exit.__here_crit_edge [
    i3 -4, label %xfs_dquot_check_type.exit.if.end_crit_edge
    i3 2, label %xfs_dquot_check_type.exit.if.end_crit_edge85
  ]

xfs_dquot_check_type.exit.if.end_crit_edge85:     ; preds = %xfs_dquot_check_type.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

xfs_dquot_check_type.exit.if.end_crit_edge:       ; preds = %xfs_dquot_check_type.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

xfs_dquot_check_type.exit.__here_crit_edge:       ; preds = %xfs_dquot_check_type.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %xfs_dquot_check_type.exit.__here_crit_edge, %if.then13.i.__here_crit_edge, %entry.__here_crit_edge
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %19 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b_mount, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !166
  %21 = ptrtoint ptr %q_id.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %q_id.i, align 8
  tail call void (ptr, i32, ptr, ...) @xfs_alert_tag(ptr noundef %20, i32 noundef 256, ptr noundef nonnull @.str.32, ptr noundef blockaddress(@xfs_dquot_from_disk, %__here), i32 noundef %22) #11
  %23 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %b_mount, align 4
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %24, ptr noundef nonnull @.str.33) #11
  br label %cleanup

if.end:                                           ; preds = %xfs_dquot_check_type.exit.if.end_crit_edge, %xfs_dquot_check_type.exit.if.end_crit_edge85, %if.then13.i.if.end_crit_edge
  %25 = ptrtoint ptr %q_type.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %5, ptr %q_type.i.i, align 4
  %d_blk_hardlimit = getelementptr inbounds %struct.xfs_disk_dquot, ptr %add.ptr, i32 0, i32 4
  %26 = ptrtoint ptr %d_blk_hardlimit to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %d_blk_hardlimit, align 8
  %q_blk = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 9
  %hardlimit = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 9, i32 2
  %28 = ptrtoint ptr %hardlimit to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %hardlimit, align 8
  %d_blk_softlimit = getelementptr inbounds %struct.xfs_disk_dquot, ptr %add.ptr, i32 0, i32 5
  %29 = ptrtoint ptr %d_blk_softlimit to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %d_blk_softlimit, align 8
  %softlimit = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 9, i32 3
  %31 = ptrtoint ptr %softlimit to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %softlimit, align 8
  %d_ino_hardlimit = getelementptr inbounds %struct.xfs_disk_dquot, ptr %add.ptr, i32 0, i32 6
  %32 = ptrtoint ptr %d_ino_hardlimit to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %d_ino_hardlimit, align 8
  %q_ino = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 10
  %hardlimit3 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 10, i32 2
  %34 = ptrtoint ptr %hardlimit3 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %hardlimit3, align 8
  %d_ino_softlimit = getelementptr inbounds %struct.xfs_disk_dquot, ptr %add.ptr, i32 0, i32 7
  %35 = ptrtoint ptr %d_ino_softlimit to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %d_ino_softlimit, align 8
  %softlimit5 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 10, i32 3
  %37 = ptrtoint ptr %softlimit5 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %softlimit5, align 8
  %d_rtb_hardlimit = getelementptr inbounds %struct.xfs_disk_dquot, ptr %add.ptr, i32 0, i32 15
  %38 = ptrtoint ptr %d_rtb_hardlimit to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %d_rtb_hardlimit, align 8
  %q_rtb = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 11
  %hardlimit6 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 11, i32 2
  %40 = ptrtoint ptr %hardlimit6 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %hardlimit6, align 8
  %d_rtb_softlimit = getelementptr inbounds %struct.xfs_disk_dquot, ptr %add.ptr, i32 0, i32 16
  %41 = ptrtoint ptr %d_rtb_softlimit to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %d_rtb_softlimit, align 8
  %softlimit8 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 11, i32 3
  %43 = ptrtoint ptr %softlimit8 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %softlimit8, align 8
  %d_bcount = getelementptr inbounds %struct.xfs_disk_dquot, ptr %add.ptr, i32 0, i32 8
  %44 = ptrtoint ptr %d_bcount to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %d_bcount, align 8
  %count = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 9, i32 1
  %46 = ptrtoint ptr %count to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %count, align 8
  %d_icount = getelementptr inbounds %struct.xfs_disk_dquot, ptr %add.ptr, i32 0, i32 9
  %47 = ptrtoint ptr %d_icount to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %d_icount, align 8
  %count11 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 10, i32 1
  %49 = ptrtoint ptr %count11 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %count11, align 8
  %d_rtbcount = getelementptr inbounds %struct.xfs_disk_dquot, ptr %add.ptr, i32 0, i32 17
  %50 = ptrtoint ptr %d_rtbcount to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %d_rtbcount, align 8
  %count13 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 11, i32 1
  %52 = ptrtoint ptr %count13 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %count13, align 8
  %d_bwarns = getelementptr inbounds %struct.xfs_disk_dquot, ptr %add.ptr, i32 0, i32 13
  %53 = ptrtoint ptr %d_bwarns to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %d_bwarns, align 2
  %warnings = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 9, i32 5
  %55 = ptrtoint ptr %warnings to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %warnings, align 8
  %d_iwarns = getelementptr inbounds %struct.xfs_disk_dquot, ptr %add.ptr, i32 0, i32 12
  %56 = ptrtoint ptr %d_iwarns to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %d_iwarns, align 8
  %warnings16 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 10, i32 5
  %58 = ptrtoint ptr %warnings16 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %warnings16, align 8
  %d_rtbwarns = getelementptr inbounds %struct.xfs_disk_dquot, ptr %add.ptr, i32 0, i32 19
  %59 = ptrtoint ptr %d_rtbwarns to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %d_rtbwarns, align 4
  %warnings18 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 11, i32 5
  %61 = ptrtoint ptr %warnings18 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %warnings18, align 8
  %d_btimer = getelementptr inbounds %struct.xfs_disk_dquot, ptr %add.ptr, i32 0, i32 11
  %62 = ptrtoint ptr %d_btimer to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %d_btimer, align 4
  %call19 = tail call i64 @xfs_dquot_from_disk_ts(ptr noundef %add.ptr, i32 noundef %63) #11
  %timer = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 9, i32 4
  %64 = ptrtoint ptr %timer to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %call19, ptr %timer, align 8
  %d_itimer = getelementptr inbounds %struct.xfs_disk_dquot, ptr %add.ptr, i32 0, i32 10
  %65 = ptrtoint ptr %d_itimer to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %d_itimer, align 8
  %call21 = tail call i64 @xfs_dquot_from_disk_ts(ptr noundef %add.ptr, i32 noundef %66) #11
  %timer23 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 10, i32 4
  %67 = ptrtoint ptr %timer23 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %call21, ptr %timer23, align 8
  %d_rtbtimer = getelementptr inbounds %struct.xfs_disk_dquot, ptr %add.ptr, i32 0, i32 18
  %68 = ptrtoint ptr %d_rtbtimer to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %d_rtbtimer, align 8
  %call24 = tail call i64 @xfs_dquot_from_disk_ts(ptr noundef %add.ptr, i32 noundef %69) #11
  %timer26 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 11, i32 4
  %70 = ptrtoint ptr %timer26 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %call24, ptr %timer26, align 8
  %71 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %count, align 8
  %73 = ptrtoint ptr %q_blk to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %72, ptr %q_blk, align 8
  %74 = ptrtoint ptr %count11 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %count11, align 8
  %76 = ptrtoint ptr %q_ino to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %75, ptr %q_ino, align 8
  %77 = ptrtoint ptr %count13 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %count13, align 8
  %79 = ptrtoint ptr %q_rtb to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %78, ptr %q_rtb, align 8
  %80 = ptrtoint ptr %hardlimit to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %hardlimit, align 8
  %q_prealloc_hi_wmark.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 14
  %82 = ptrtoint ptr %q_prealloc_hi_wmark.i to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %81, ptr %q_prealloc_hi_wmark.i, align 8
  %83 = ptrtoint ptr %softlimit to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %softlimit, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %84)
  %tobool.not.i = icmp eq i64 %84, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.xfs_dquot_set_prealloc_limits.exit_crit_edge

if.end.xfs_dquot_set_prealloc_limits.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_dquot_set_prealloc_limits.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %85 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %81, i32 0) #14, !srcloc !134
  %asmresult.i.i = extractvalue { i64, i32 } %85, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %85, 1
  %86 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %81, i64 %asmresult.i.i, i32 %asmresult4.i.i) #14, !srcloc !135
  %asmresult10.i.i = extractvalue { i64, i32 } %86, 0
  %div168608.i = lshr i64 %asmresult10.i.i, 6
  %mul198.i = mul i64 %div168608.i, 95
  br label %xfs_dquot_set_prealloc_limits.exit

xfs_dquot_set_prealloc_limits.exit:               ; preds = %if.then.i, %if.end.xfs_dquot_set_prealloc_limits.exit_crit_edge
  %storemerge.i = phi i64 [ %mul198.i, %if.then.i ], [ %84, %if.end.xfs_dquot_set_prealloc_limits.exit_crit_edge ]
  %q_prealloc_lo_wmark.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 13
  %87 = ptrtoint ptr %q_prealloc_lo_wmark.i to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %storemerge.i, ptr %q_prealloc_lo_wmark.i, align 8
  %88 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %81, i32 0) #14, !srcloc !134
  %asmresult.i610.i = extractvalue { i64, i32 } %88, 0
  %asmresult4.i611.i = extractvalue { i64, i32 } %88, 1
  %89 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %81, i64 %asmresult.i610.i, i32 %asmresult4.i611.i) #14, !srcloc !135
  %asmresult10.i612.i = extractvalue { i64, i32 } %89, 0
  %div396609.i = lshr i64 %asmresult10.i612.i, 6
  %q_low_space.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 15
  %90 = ptrtoint ptr %q_low_space.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %div396609.i, ptr %q_low_space.i, align 8
  %mul422.i = mul nuw nsw i64 %div396609.i, 3
  %arrayidx424.i = getelementptr %struct.xfs_dquot, ptr %dqp, i32 0, i32 15, i32 1
  %91 = ptrtoint ptr %arrayidx424.i to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %mul422.i, ptr %arrayidx424.i, align 8
  %mul425.i = mul nuw nsw i64 %div396609.i, 5
  %arrayidx427.i = getelementptr %struct.xfs_dquot, ptr %dqp, i32 0, i32 15, i32 2
  %92 = ptrtoint ptr %arrayidx427.i to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %mul425.i, ptr %arrayidx427.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %xfs_dquot_set_prealloc_limits.exit, %__here
  %retval.0 = phi i32 [ 0, %xfs_dquot_set_prealloc_limits.exit ], [ -117, %__here ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dqread_fail(ptr noundef %dqp) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqread_fail, i32 0, i32 1), ptr blockaddress(@trace_xfs_dqread_fail, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !138

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !132

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !167
  %call42 = tail call i32 @__traceiter_xfs_dqread_fail(ptr noundef null, ptr noundef %dqp) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !168
  %13 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !132

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqread_fail, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqread_fail, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_dqread_fail.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_dqread_fail.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 1085, ptr noundef nonnull @.str.16) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !142
  %31 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_qm_dquot_logitem_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dqread(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ilock_data_map_shared(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmapi_read(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dqtobp_read(ptr noundef %dqp) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqtobp_read, i32 0, i32 1), ptr blockaddress(@trace_xfs_dqtobp_read, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !138

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !132

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !169
  %call42 = tail call i32 @__traceiter_xfs_dqtobp_read(ptr noundef null, ptr noundef %dqp) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !170
  %13 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !132

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqtobp_read, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqtobp_read, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_dqtobp_read.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_dqtobp_read.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 1083, ptr noundef nonnull @.str.16) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !142
  %31 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
declare dso_local void @xfs_buf_set_ref(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dqtobp_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dqalloc(ptr noundef %dqp) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqalloc, i32 0, i32 1), ptr blockaddress(@trace_xfs_dqalloc, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !138

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !132

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !171
  %call42 = tail call i32 @__traceiter_xfs_dqalloc(ptr noundef null, ptr noundef %dqp) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !172
  %13 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !132

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqalloc, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqalloc, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_dqalloc.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_dqalloc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 1082, ptr noundef nonnull @.str.16) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !142
  %31 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
declare dso_local i32 @xfs_trans_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_ijoin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iext_count_may_overflow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmapi_write(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_qm_init_dquot_blk(ptr noundef %tp, ptr nocapture noundef readonly %mp, i32 noundef %id, i8 noundef zeroext %type, ptr noundef %bp) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %m_quotainfo = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 12
  %0 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_quotainfo, align 4
  %tobool.not = icmp eq ptr %tp, null
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !133

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1, i32 noundef 193) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %count = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %cond.end.cond.end11_crit_edge, label %cond.false10, !prof !132

cond.end.cond.end11_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 194) #11
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false10, %cond.end.cond.end11_crit_edge
  %4 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.56)
  switch i8 %type, label %sw.default [
    i8 1, label %cond.end11.sw.epilog_crit_edge
    i8 2, label %sw.bb12
    i8 4, label %sw.bb13
  ]

cond.end11.sw.epilog_crit_edge:                   ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb12:                                          ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb13:                                          ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 210) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb12, %cond.end11.sw.epilog_crit_edge
  %qflag.0 = phi i32 [ 256, %sw.bb13 ], [ 1024, %sw.bb12 ], [ 4, %cond.end11.sw.epilog_crit_edge ]
  %blftype.0 = phi i32 [ 16, %sw.bb13 ], [ 8, %sw.bb12 ], [ 4, %cond.end11.sw.epilog_crit_edge ]
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %5 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %b_addr, align 4
  %qi_dqperchunk = getelementptr inbounds %struct.xfs_quotainfo, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %qi_dqperchunk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %qi_dqperchunk, align 8
  %qi_dqchunklen = getelementptr inbounds %struct.xfs_quotainfo, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %qi_dqchunklen to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %qi_dqchunklen, align 8
  %.tr = trunc i64 %10 to i32
  %conv14 = shl i32 %.tr, 9
  %11 = call ptr @memset(ptr %6, i32 0, i32 %conv14)
  %12 = load i32, ptr %qi_dqperchunk, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1676.not = icmp eq i32 %12, 0
  br i1 %cmp1676.not, label %sw.epilog.for.end_crit_edge, label %for.body.lr.ph

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %sw.epilog
  %rem = urem i32 %id, %8
  %sub = sub i32 %id, %rem
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %13 = or i8 %type, -128
  %sb_meta_uuid = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 54
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.080 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %curid.079 = phi i32 [ %sub, %for.body.lr.ph ], [ %inc31, %for.inc.for.body_crit_edge ]
  %d.077 = phi ptr [ %6, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %14 = ptrtoint ptr %d.077 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 17489, ptr %d.077, align 8
  %d_version = getelementptr inbounds %struct.xfs_disk_dquot, ptr %d.077, i32 0, i32 1
  %15 = ptrtoint ptr %d_version to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %d_version, align 2
  %d_id = getelementptr inbounds %struct.xfs_disk_dquot, ptr %d.077, i32 0, i32 3
  %16 = ptrtoint ptr %d_id to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %curid.079, ptr %d_id, align 4
  %d_type = getelementptr inbounds %struct.xfs_disk_dquot, ptr %d.077, i32 0, i32 2
  %17 = ptrtoint ptr %d_type to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %type, ptr %d_type, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %curid.079)
  %cmp21.not = icmp eq i32 %curid.079, 0
  br i1 %cmp21.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %18 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %19, 16777216
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %d_type to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %13, ptr %d_type, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %21 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %m_features.i, align 8
  %and.i74 = and i64 %22, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i74)
  %tobool.i75.not = icmp eq i64 %and.i74, 0
  br i1 %tobool.i75.not, label %if.end.for.inc_crit_edge, label %if.then29

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dd_uuid = getelementptr inbounds %struct.xfs_dqblk, ptr %d.077, i32 0, i32 4
  %23 = call ptr @memcpy(ptr %dd_uuid, ptr %sb_meta_uuid, i32 16)
  %add.ptr.i.i = getelementptr i8, ptr %d.077, i32 108
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %add.ptr.i.i, align 4
  %call.i.i = tail call i32 @crc32c(i32 noundef -1, ptr noundef %d.077, i32 noundef 136) #11
  %25 = xor i32 %call.i.i, -1
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #11
  %27 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %add.ptr.i.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then29, %if.end.for.inc_crit_edge
  %inc = add nuw i32 %i.080, 1
  %incdec.ptr = getelementptr %struct.xfs_dqblk, ptr %d.077, i32 1
  %inc31 = add i32 %curid.079, 1
  %28 = ptrtoint ptr %qi_dqperchunk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %qi_dqperchunk, align 8
  %cmp16 = icmp ult i32 %inc, %29
  br i1 %cmp16, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %sw.epilog.for.end_crit_edge
  tail call void @xfs_trans_dquot_buf(ptr noundef %tp, ptr noundef %bp, i32 noundef %blftype.0) #11
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 60
  %30 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %m_qflags, align 4
  %and = and i32 %31, %qflag.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %if.then33, label %if.else

if.then33:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %call34 = tail call zeroext i1 @xfs_trans_ordered_buf(ptr noundef %tp, ptr noundef %bp) #11
  br label %cleanup

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %qi_dqchunklen to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %qi_dqchunklen, align 8
  %.tr72 = trunc i64 %33 to i32
  %34 = shl i32 %.tr72, 9
  %conv38 = add i32 %34, -1
  tail call void @xfs_trans_log_buf(ptr noundef %tp, ptr noundef %bp, i32 noundef 0, i32 noundef %conv38) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then33, %sw.default
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_bhold(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_commit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dqalloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_get_buf_map(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_dquot_buf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_trans_ordered_buf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_log_buf(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_alert_tag(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @xfs_dquot_from_disk_ts(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dqread_fail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dqget_dup(ptr noundef %dqp) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqget_dup, i32 0, i32 1), ptr blockaddress(@trace_xfs_dqget_dup, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !138

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !132

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !173
  %call42 = tail call i32 @__traceiter_xfs_dqget_dup(ptr noundef null, ptr noundef %dqp) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !174
  %13 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !132

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !122) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqget_dup, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqget_dup, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_dqget_dup.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_dqget_dup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 1089, ptr noundef nonnull @.str.16) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !142
  %31 = tail call i32 @llvm.read_register.i32(metadata !122) #11
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
declare dso_local i32 @__traceiter_xfs_dqget_dup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dqget_miss(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iread_extents(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_iext_lookup_extent(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dqput(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dqput_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dqrele(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @xfs_ail_delete_one(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ail_update_finish(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_rele(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_hold(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dqflush(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_read_buf_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dqflush_force(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dqflush_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !38, !39, !40, !42, !43, !45, !46, !48, !50, !51, !53, !54, !56, !58, !60, !61, !63, !65, !67, !68, !70, !72, !74, !76, !78, !79, !81, !83, !85, !86, !88, !90, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121}
!llvm.named.register.sp = !{!122}
!llvm.module.flags = !{!123, !124, !125, !126, !127, !128, !129, !130}
!llvm.ident = !{!131}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_dquot.c", i32 54, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/xfs_dquot.c", i32 77, i32 2}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/xfs/xfs_dquot.c", i32 930, i32 2}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/xfs/xfs_dquot.c", i32 957, i32 2}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/xfs/xfs_dquot.c", i32 958, i32 2}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/xfs/xfs_dquot.c", i32 1063, i32 2}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/xfs/xfs_dquot.c", i32 1064, i32 2}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/xfs/xfs_dquot.c", i32 1229, i32 2}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/xfs_dquot.c", i32 1250, i32 17}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/xfs/xfs_dquot.c", i32 1325, i32 3}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/xfs/xfs_dquot.c", i32 1343, i32 38}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/xfs/xfs_dquot.c", i32 1349, i32 38}
!25 = !{ptr @xfs_dqtrx_cache, !26, !"xfs_dqtrx_cache", i1 false, i1 false}
!26 = !{!"../fs/xfs/xfs_dquot.c", i32 41, i32 21}
!27 = !{ptr @xfs_dquot_cache, !28, !"xfs_dquot_cache", i1 false, i1 false}
!28 = !{!"../fs/xfs/xfs_dquot.c", i32 42, i32 27}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/xfs/xfs_qm.h", i32 171, i32 3}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/xfs/xfs_dquot.c", i32 131, i32 2}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../fs/xfs/xfs_dquot.c", i32 841, i32 3}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../fs/xfs/xfs_trace.h", i32 1088, i32 1}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!39 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../fs/xfs/xfs_trace.h", i32 1086, i32 1}
!45 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/xfs/xfs_dquot.c", i32 679, i32 2}
!48 = !{ptr @xfs_dquot_alloc.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../fs/xfs/xfs_dquot.c", i32 481, i32 2}
!50 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @xfs_dquot_alloc.__key.20, !52, !"__key", i1 false, i1 false}
!52 = !{!"../fs/xfs/xfs_dquot.c", i32 482, i32 2}
!53 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/xfs/xfs_dquot.c", i32 507, i32 3}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/xfs/xfs_dquot.c", i32 510, i32 3}
!58 = !{ptr @init_completion.__key, !59, !"__key", i1 false, i1 false}
!59 = !{!"../include/linux/completion.h", i32 87, i32 2}
!60 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @xfs_dquot_group_class, !62, !"xfs_dquot_group_class", i1 false, i1 false}
!62 = !{!"../fs/xfs/xfs_dquot.c", i32 44, i32 30}
!63 = !{ptr @xfs_dquot_project_class, !64, !"xfs_dquot_project_class", i1 false, i1 false}
!64 = !{!"../fs/xfs/xfs_dquot.c", i32 45, i32 30}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../fs/xfs/xfs_trace.h", i32 1084, i32 1}
!67 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/xfs/xfs_dquot.c", i32 437, i32 2}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/xfs/xfs_dquot.c", i32 438, i32 2}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/xfs/xfs_dquot.c", i32 439, i32 2}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/xfs/xfs_dquot.c", i32 455, i32 3}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../fs/xfs/xfs_trace.h", i32 1083, i32 1}
!78 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/xfs/xfs_dquot.c", i32 335, i32 2}
!81 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/xfs/xfs_dquot.c", i32 337, i32 2}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../fs/xfs/xfs_trace.h", i32 1082, i32 1}
!85 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!86 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/xfs/xfs_dquot.c", i32 193, i32 2}
!88 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/xfs/xfs_dquot.c", i32 573, i32 6}
!90 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/xfs/xfs_dquot.c", i32 575, i32 26}
!92 = distinct !{null, !93, !"__already_done", i1 false, i1 false}
!93 = !{!"../fs/xfs/xfs_trace.h", i32 1085, i32 1}
!94 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!95 = distinct !{null, !96, !"__already_done", i1 false, i1 false}
!96 = !{!"../fs/xfs/xfs_trace.h", i32 1089, i32 1}
!97 = distinct !{null, !96, !"__warned", i1 false, i1 false}
!98 = distinct !{null, !99, !"__already_done", i1 false, i1 false}
!99 = !{!"../fs/xfs/xfs_trace.h", i32 1087, i32 1}
!100 = distinct !{null, !99, !"__warned", i1 false, i1 false}
!101 = distinct !{null, !102, !"__already_done", i1 false, i1 false}
!102 = !{!"../fs/xfs/xfs_trace.h", i32 1090, i32 1}
!103 = distinct !{null, !102, !"__warned", i1 false, i1 false}
!104 = distinct !{null, !105, !"__already_done", i1 false, i1 false}
!105 = !{!"../fs/xfs/xfs_trace.h", i32 1091, i32 1}
!106 = distinct !{null, !105, !"__warned", i1 false, i1 false}
!107 = distinct !{null, !108, !"__already_done", i1 false, i1 false}
!108 = !{!"../fs/xfs/xfs_trace.h", i32 1092, i32 1}
!109 = distinct !{null, !108, !"__warned", i1 false, i1 false}
!110 = !{ptr @.str.34, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/xfs/xfs_trans_priv.h", i32 148, i32 2}
!112 = !{ptr @.str.35, !111, !"<string literal>", i1 false, i1 false}
!113 = distinct !{null, !114, !"__already_done", i1 false, i1 false}
!114 = !{!"../fs/xfs/xfs_trace.h", i32 1093, i32 1}
!115 = distinct !{null, !114, !"__warned", i1 false, i1 false}
!116 = distinct !{null, !117, !"__already_done", i1 false, i1 false}
!117 = !{!"../fs/xfs/xfs_trace.h", i32 1094, i32 1}
!118 = distinct !{null, !117, !"__warned", i1 false, i1 false}
!119 = distinct !{null, !120, !"__already_done", i1 false, i1 false}
!120 = !{!"../fs/xfs/xfs_trace.h", i32 1095, i32 1}
!121 = distinct !{null, !120, !"__warned", i1 false, i1 false}
!122 = !{!"sp"}
!123 = !{i32 1, !"wchar_size", i32 2}
!124 = !{i32 1, !"min_enum_size", i32 4}
!125 = !{i32 8, !"branch-target-enforcement", i32 0}
!126 = !{i32 8, !"sign-return-address", i32 0}
!127 = !{i32 8, !"sign-return-address-all", i32 0}
!128 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!129 = !{i32 7, !"uwtable", i32 1}
!130 = !{i32 7, !"frame-pointer", i32 2}
!131 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!132 = !{!"branch_weights", i32 2000, i32 1}
!133 = !{!"branch_weights", i32 1, i32 2000}
!134 = !{i64 1015102, i64 1015129, i64 1015151, i64 1015179}
!135 = !{i64 1015510, i64 1015537, i64 1015570, i64 1015591, i64 1015618, i64 1015644}
!136 = !{!"auto-init"}
!137 = !{!"branch_weights", i32 1, i32 4002000, i32 2000}
!138 = !{i64 2148278849, i64 2148278854, i64 2148278867, i64 2148278911, i64 2148278945, i64 2148278966}
!139 = !{i64 2158847071}
!140 = !{i64 2158847268}
!141 = !{i64 2149980942}
!142 = !{i64 2149981978}
!143 = !{i64 2158899141}
!144 = !{i64 2158899328}
!145 = !{i64 2158914877}
!146 = !{i64 2158915074}
!147 = !{i64 2158934788}
!148 = !{i64 2158934977}
!149 = !{i64 2158950461}
!150 = !{i64 2158950652}
!151 = !{i64 2166417657}
!152 = !{i64 2166417760}
!153 = !{i64 2166417851}
!154 = !{i64 2166417942}
!155 = !{i64 2166418038}
!156 = !{i64 2158966422}
!157 = !{i64 2158966625}
!158 = !{i64 2158982668}
!159 = !{i64 2158982869}
!160 = !{i64 2158867255}
!161 = !{i64 2158867458}
!162 = !{i64 2158831119}
!163 = !{i64 2158831314}
!164 = !{i64 2158799269}
!165 = !{i64 2158799458}
!166 = !{i64 2166388930}
!167 = !{i64 2158815098}
!168 = !{i64 2158815297}
!169 = !{i64 2158783365}
!170 = !{i64 2158783564}
!171 = !{i64 2158763421}
!172 = !{i64 2158763612}
!173 = !{i64 2158883384}
!174 = !{i64 2158883579}
