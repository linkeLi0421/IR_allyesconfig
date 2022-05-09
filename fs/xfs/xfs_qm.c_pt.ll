; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_qm.c_pt.bc'
source_filename = "../fs/xfs/xfs_qm.c"
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
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.4 }
%union.anon.4 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.14, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.xfs_buf_ops = type { ptr, %union.anon.87, ptr, ptr, ptr }
%union.anon.87 = type { [2 x i32] }
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
%struct.xfs_quotainfo = type { %struct.xarray, %struct.xarray, %struct.xarray, %struct.mutex, ptr, ptr, ptr, %struct.list_lru, i32, %struct.mutex, i64, i32, %struct.xfs_def_quota, %struct.xfs_def_quota, %struct.xfs_def_quota, %struct.shrinker, i64, i64 }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.xfs_def_quota = type { %struct.xfs_quota_limits, %struct.xfs_quota_limits, %struct.xfs_quota_limits }
%struct.xfs_quota_limits = type { i64, i64, i64, i16 }
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
%struct.xfs_dquot = type { %struct.list_head, ptr, i8, i16, i32, i32, i32, i64, i64, %struct.xfs_dquot_res, %struct.xfs_dquot_res, %struct.xfs_dquot_res, %struct.xfs_dq_logitem, i64, i64, [3 x i64], %struct.mutex, %struct.completion, %struct.atomic_t, %struct.wait_queue_head }
%struct.xfs_dquot_res = type { i64, i64, i64, i64, i64, i16 }
%struct.xfs_dq_logitem = type { %struct.xfs_log_item, ptr, i64 }
%struct.xfs_log_item = type { %struct.list_head, %struct.list_head, i64, ptr, ptr, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.xfs_trans = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.__xfsstats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.shrink_control = type { i32, i32, i32, i32, ptr }
%struct.xfs_qm_isolate = type { %struct.list_head, %struct.list_head }
%struct.xfs_buf_map = type { i64, i32 }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.xfs_dqblk = type { %struct.xfs_disk_dquot, [4 x i8], i32, i64, %struct.uuid_t }
%struct.xfs_disk_dquot = type { i16, i8, i8, i32, i64, i64, i64, i64, i64, i64, i32, i32, i16, i16, i32, i64, i64, i64, i32, i16, i16 }

@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mp->m_rootip\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/xfs/xfs_qm.c\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"xfs_isilocked(ip, XFS_ILOCK_EXCL)\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ip->i_udquot\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ip->i_gdquot\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ip->i_pdquot\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"!xfs_is_quota_inode(&ip->i_mount->m_sb, ip->i_ino)\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qi != NULL\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Cannot turn on quotas for realtime filesystem\00", [50 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"XFS_IS_QUOTA_ON(mp)\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mp->m_quotainfo == NULL\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"!(XFS_IS_QUOTA_ON(mp))\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Superblock update failed!\00", [34 x i8] zeroinitializer }, align 32
@__func__.xfs_qm_mount_quotas = private unnamed_addr constant [20 x i8] c"xfs_qm_mount_quotas\00", align 1
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to initialize disk quotas.\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"O_udqpp\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"error != -ENOENT\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"O_gdqpp\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"O_pdqpp\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"XFS_IS_QUOTA_ON(ip->i_mount)\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"prevdq\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"prevdq != newdq\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"prevdq->q_blk.reserved >= ip->i_delayed_blks\00", [51 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ip->i_udquot == NULL\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"i_uid_read(VFS_I(ip)) == udqp->q_id\00", [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ip->i_gdquot == NULL\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"i_gid_read(VFS_I(ip)) == gdqp->q_id\00", [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ip->i_pdquot == NULL\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ip->i_projid == pdqp->q_id\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/xfs/xfs_qm.h\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"atomic_read(&dqp->q_pincount) == 0\00", [61 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"xfs_is_shutdown(mp) || !test_bit(XFS_LI_IN_AIL, &dqp->q_logitem.qli_item.li_flags)\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"!list_empty(&dqp->q_lru)\00", [39 x i8] zeroinitializer }, align 32
@xfsstats = external dso_local local_unnamed_addr global %struct.xstats, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__tracepoint_xfs_dqattach_found = external dso_local global %struct.tracepoint, align 4
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_dqattach_found.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.34 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_dqattach_get = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dqattach_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_dquot_dqdetach = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dquot_dqdetach.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xfs_qm_init_quotainfo.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&qinf->qi_tree_lock\00", [44 x i8] zeroinitializer }, align 32
@xfs_qm_init_quotainfo.__key.37 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&qinf->qi_quotaofflock\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mp->m_quotainfo\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mp->m_sb.sb_uquotino > 0\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mp->m_sb.sb_gquotino > 0\00", [39 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mp->m_sb.sb_pquotino > 0\00", [39 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mp->m_sb.sb_pquotino != NULLFSINO\00", [62 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mp->m_sb.sb_gquotino != NULLFSINO\00", [62 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"!xfs_has_quota(mp)\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xfs_is_shutdown(mp)\00", [44 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s failed (error %d)!\00", [42 x i8] zeroinitializer }, align 32
@__func__.xfs_qm_qino_alloc = private unnamed_addr constant [18 x i8] c"xfs_qm_qino_alloc\00", align 1
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_quota_expiry_range = external dso_local global %struct.tracepoint, align 4
@trace_xfs_quota_expiry_range.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: dquot reclaim failed\00", [39 x i8] zeroinitializer }, align 32
@__func__.xfs_qm_shrink_scan = private unnamed_addr constant [19 x i8] c"xfs_qm_shrink_scan\00", align 1
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dqp->q_nrefs == 0\00", [46 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_dqreclaim_want = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dqreclaim_want.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_dqreclaim_dirty = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dqreclaim_dirty.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_dqreclaim_done = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dqreclaim_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_dqreclaim_busy = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dqreclaim_busy.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"uip || gip || pip\00", [46 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Quotacheck needed: Please wait.\00", [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Quotacheck: Unsuccessful (Error %d): Disabling quotas.\00", [41 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mp->m_quotainfo != NULL\00", [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Quotacheck: Failed to reset quota flags.\00", [55 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Quotacheck: Done.\00", [46 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nmaps <= XFS_DQITER_MAP_SIZE\00", [35 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"map[i].br_startblock != DELAYSTARTBLOCK\00", [56 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"map[i].br_blockcount\00", [43 x i8] zeroinitializer }, align 32
@xfs_dquot_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"blkcnt > 0\00", [21 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mp->m_quotainfo->qi_dqperchunk == j\00", [60 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_reset_dqcounts = external dso_local global %struct.tracepoint, align 4
@trace_xfs_reset_dqcounts.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ip->i_delayed_blks == 0\00", [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"error != -ESRCH\00", [16 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_dqadjust = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dqadjust.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_dquot_dqalloc = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dquot_dqalloc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_dquot.h\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.67 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.68 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.69 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 3, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 -1]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 -1]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 -1]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 3, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.78 = internal global [5 x i64] [i64 3, i64 3, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967274, i64 4294967294]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967293, i64 4294967294]
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 221, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 325, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 332, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 340, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 348, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 390, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 719, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1410, i32 18 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1415, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1426, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1470, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1471, i32 18 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1477, i32 16 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1664, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1679, i32 5 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1698, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1716, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1773, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1777, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1778, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1806, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1863, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1864, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1870, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1871, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1877, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1878, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant [19 x i8] c"../fs/xfs/xfs_qm.h\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 87, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 159, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 160, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 173, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1080, i32 1 }
@___asan_gen_.187 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 108, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 651, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 654, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1496, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1504, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1512, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1520, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 759, i32 8 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 765, i32 8 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 805, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 826, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 827, i32 17 }
@___asan_gen_.228 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 378, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 516, i32 18 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 474, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1284, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1287, i32 17 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1373, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1378, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1382, i32 5 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1385, i32 18 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1018, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1020, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1021, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 917, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 854, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1163, i32 2 }
@___asan_gen_.277 = private constant [19 x i8] c"../fs/xfs/xfs_qm.c\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1090, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.280 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_dquot.h\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 190, i32 2 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @xfs_qm_init_quotainfo.__key, ptr @.str.36, ptr @xfs_qm_init_quotainfo.__key.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @xa_init_flags.__key, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_qm_init_quotainfo.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_qm_init_quotainfo.__key.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_qm_unmount(ptr nocapture noundef %mp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %m_quotainfo = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 12
  %0 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_quotainfo, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call fastcc i32 @xfs_qm_dquot_walk(ptr noundef %mp, i8 noundef zeroext 1, ptr noundef nonnull @xfs_qm_dqpurge, ptr noundef null) #8
  %call1.i = tail call fastcc i32 @xfs_qm_dquot_walk(ptr noundef %mp, i8 noundef zeroext 4, ptr noundef nonnull @xfs_qm_dqpurge, ptr noundef null) #8
  %call2.i = tail call fastcc i32 @xfs_qm_dquot_walk(ptr noundef %mp, i8 noundef zeroext 2, ptr noundef nonnull @xfs_qm_dqpurge, ptr noundef null) #8
  tail call void @xfs_qm_destroy_quotainfo(ptr noundef %mp)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_qm_destroy_quotainfo(ptr nocapture noundef %mp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %m_quotainfo = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 12
  %0 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_quotainfo, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !177

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 719) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %qi_shrinker = getelementptr inbounds %struct.xfs_quotainfo, ptr %1, i32 0, i32 15
  tail call void @unregister_shrinker(ptr noundef %qi_shrinker) #8
  %qi_lru = getelementptr inbounds %struct.xfs_quotainfo, ptr %1, i32 0, i32 7
  tail call void @list_lru_destroy(ptr noundef %qi_lru) #8
  tail call fastcc void @xfs_qm_destroy_quotainos(ptr noundef %1)
  %qi_tree_lock = getelementptr inbounds %struct.xfs_quotainfo, ptr %1, i32 0, i32 3
  tail call void @mutex_destroy(ptr noundef %qi_tree_lock) #8
  %qi_quotaofflock = getelementptr inbounds %struct.xfs_quotainfo, ptr %1, i32 0, i32 9
  tail call void @mutex_destroy(ptr noundef %qi_quotaofflock) #8
  tail call void @kvfree(ptr noundef %1) #8
  %2 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %m_quotainfo, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_qm_unmount_quotas(ptr nocapture noundef readonly %mp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %m_rootip = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 11
  %0 = ptrtoint ptr %m_rootip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_rootip, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !177

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 221) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %2 = ptrtoint ptr %m_rootip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_rootip, align 16
  tail call void @xfs_qm_dqdetach(ptr noundef %3)
  %m_rbmip = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 9
  %4 = ptrtoint ptr %m_rbmip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m_rbmip, align 8
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfs_qm_dqdetach(ptr noundef nonnull %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %m_rsumip = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 10
  %6 = ptrtoint ptr %m_rsumip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m_rsumip, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfs_qm_dqdetach(ptr noundef nonnull %7)
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %m_quotainfo = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 12
  %8 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m_quotainfo, align 4
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %if.end9.if.end36_crit_edge, label %if.then11

if.end9.if.end36_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then11:                                        ; preds = %if.end9
  %qi_uquotaip = getelementptr inbounds %struct.xfs_quotainfo, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %qi_uquotaip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qi_uquotaip, align 8
  %tobool13.not = icmp eq ptr %11, null
  br i1 %tobool13.not, label %if.then11.if.end19_crit_edge, label %if.then14

if.then11.if.end19_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfs_irele(ptr noundef nonnull %11) #8
  %12 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %m_quotainfo, align 4
  %qi_uquotaip18 = getelementptr inbounds %struct.xfs_quotainfo, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %qi_uquotaip18 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %qi_uquotaip18, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.then11.if.end19_crit_edge
  %15 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %m_quotainfo, align 4
  %qi_gquotaip = getelementptr inbounds %struct.xfs_quotainfo, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %qi_gquotaip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %qi_gquotaip, align 4
  %tobool21.not = icmp eq ptr %18, null
  br i1 %tobool21.not, label %if.end19.if.end27_crit_edge, label %if.then22

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfs_irele(ptr noundef nonnull %18) #8
  %19 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %m_quotainfo, align 4
  %qi_gquotaip26 = getelementptr inbounds %struct.xfs_quotainfo, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %qi_gquotaip26 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %qi_gquotaip26, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.end19.if.end27_crit_edge
  %22 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %m_quotainfo, align 4
  %qi_pquotaip = getelementptr inbounds %struct.xfs_quotainfo, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %qi_pquotaip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %qi_pquotaip, align 8
  %tobool29.not = icmp eq ptr %25, null
  br i1 %tobool29.not, label %if.end27.if.end36_crit_edge, label %if.then30

if.end27.if.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfs_irele(ptr noundef nonnull %25) #8
  %26 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %m_quotainfo, align 4
  %qi_pquotaip34 = getelementptr inbounds %struct.xfs_quotainfo, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %qi_pquotaip34 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %qi_pquotaip34, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then30, %if.end27.if.end36_crit_edge, %if.end9.if.end36_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_qm_dqdetach(ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_udquot = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 1
  %0 = ptrtoint ptr %i_udquot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_udquot, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %i_gdquot = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 2
  %2 = ptrtoint ptr %i_gdquot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_gdquot, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %i_pdquot = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 3
  %4 = ptrtoint ptr %i_pdquot to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_pdquot, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false2.if.end24_crit_edge, label %lor.lhs.false2.if.end_crit_edge

lor.lhs.false2.if.end_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false2.if.end24_crit_edge:                ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.end:                                           ; preds = %lor.lhs.false2.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  tail call fastcc void @trace_xfs_dquot_dqdetach(ptr noundef %ip)
  %6 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ip, align 8
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 4
  %8 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_ino, align 8
  %sb_uquotino.i = getelementptr inbounds %struct.xfs_sb, ptr %7, i32 0, i32 32
  %10 = ptrtoint ptr %sb_uquotino.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %sb_uquotino.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %9)
  %cmp.i = icmp eq i64 %11, %9
  br i1 %cmp.i, label %if.end.cond.false_crit_edge, label %lor.lhs.false.i, !prof !178

if.end.cond.false_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

lor.lhs.false.i:                                  ; preds = %if.end
  %sb_gquotino.i = getelementptr inbounds %struct.xfs_sb, ptr %7, i32 0, i32 33
  %12 = ptrtoint ptr %sb_gquotino.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %sb_gquotino.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %9)
  %cmp1.i = icmp eq i64 %13, %9
  br i1 %cmp1.i, label %lor.lhs.false.i.cond.false_crit_edge, label %xfs_is_quota_inode.exit, !prof !178

lor.lhs.false.i.cond.false_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

xfs_is_quota_inode.exit:                          ; preds = %lor.lhs.false.i
  %sb_pquotino.i = getelementptr inbounds %struct.xfs_sb, ptr %7, i32 0, i32 52
  %14 = ptrtoint ptr %sb_pquotino.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %sb_pquotino.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %9)
  %cmp2.i = icmp eq i64 %15, %9
  br i1 %cmp2.i, label %xfs_is_quota_inode.exit.cond.false_crit_edge, label %xfs_is_quota_inode.exit.cond.end_crit_edge, !prof !177

xfs_is_quota_inode.exit.cond.end_crit_edge:       ; preds = %xfs_is_quota_inode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

xfs_is_quota_inode.exit.cond.false_crit_edge:     ; preds = %xfs_is_quota_inode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

cond.false:                                       ; preds = %xfs_is_quota_inode.exit.cond.false_crit_edge, %lor.lhs.false.i.cond.false_crit_edge, %if.end.cond.false_crit_edge
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 390) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %xfs_is_quota_inode.exit.cond.end_crit_edge
  %16 = ptrtoint ptr %i_udquot to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_udquot, align 4
  %tobool8.not = icmp eq ptr %17, null
  br i1 %tobool8.not, label %cond.end.if.end12_crit_edge, label %if.then9

cond.end.if.end12_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then9:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfs_qm_dqrele(ptr noundef nonnull %17) #8
  %18 = ptrtoint ptr %i_udquot to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %i_udquot, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %cond.end.if.end12_crit_edge
  %i_gdquot13 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 2
  %19 = ptrtoint ptr %i_gdquot13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_gdquot13, align 8
  %tobool14.not = icmp eq ptr %20, null
  br i1 %tobool14.not, label %if.end12.if.end18_crit_edge, label %if.then15

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfs_qm_dqrele(ptr noundef nonnull %20) #8
  %21 = ptrtoint ptr %i_gdquot13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %i_gdquot13, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end12.if.end18_crit_edge
  %i_pdquot19 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 3
  %22 = ptrtoint ptr %i_pdquot19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_pdquot19, align 4
  %tobool20.not = icmp eq ptr %23, null
  br i1 %tobool20.not, label %if.end18.if.end24_crit_edge, label %if.then21

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfs_qm_dqrele(ptr noundef nonnull %23) #8
  %24 = ptrtoint ptr %i_pdquot19 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %i_pdquot19, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end18.if.end24_crit_edge, %lor.lhs.false2.if.end24_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_irele(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_qm_dqattach_locked(ptr noundef %ip, i1 noundef zeroext %doalloc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  %m_qflags.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 60
  %2 = ptrtoint ptr %m_qflags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %m_qflags.i, align 4
  %and.i = and i32 %3, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %and2.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.lor.lhs.false.i_crit_edge, label %land.lhs.true.i

if.end.i.lor.lhs.false.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %i_udquot.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 1
  %4 = ptrtoint ptr %i_udquot.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_udquot.i, align 4
  %cmp.i = icmp eq ptr %5, null
  br i1 %cmp.i, label %land.lhs.true.i.if.end16.i_crit_edge, label %land.lhs.true.i.lor.lhs.false.i_crit_edge

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

land.lhs.true.i.if.end16.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i.lor.lhs.false.i_crit_edge, %if.end.i.lor.lhs.false.i_crit_edge
  %and5.i = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i.lor.lhs.false9.i_crit_edge, label %land.lhs.true7.i

lor.lhs.false.i.lor.lhs.false9.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false9.i

land.lhs.true7.i:                                 ; preds = %lor.lhs.false.i
  %i_gdquot.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 2
  %6 = ptrtoint ptr %i_gdquot.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_gdquot.i, align 8
  %cmp8.i = icmp eq ptr %7, null
  br i1 %cmp8.i, label %land.lhs.true7.i.if.end16.i_crit_edge, label %land.lhs.true7.i.lor.lhs.false9.i_crit_edge

land.lhs.true7.i.lor.lhs.false9.i_crit_edge:      ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false9.i

land.lhs.true7.i.if.end16.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

lor.lhs.false9.i:                                 ; preds = %land.lhs.true7.i.lor.lhs.false9.i_crit_edge, %lor.lhs.false.i.lor.lhs.false9.i_crit_edge
  %and11.i = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %lor.lhs.false9.i.cleanup_crit_edge, label %land.lhs.true13.i

lor.lhs.false9.i.cleanup_crit_edge:               ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true13.i:                                ; preds = %lor.lhs.false9.i
  %i_pdquot.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 3
  %8 = ptrtoint ptr %i_pdquot.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_pdquot.i, align 4
  %cmp14.i = icmp eq ptr %9, null
  br i1 %cmp14.i, label %land.lhs.true13.i.if.end16.i_crit_edge, label %land.lhs.true13.i.cleanup_crit_edge

land.lhs.true13.i.cleanup_crit_edge:              ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true13.i.if.end16.i_crit_edge:           ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.end16.i:                                       ; preds = %land.lhs.true13.i.if.end16.i_crit_edge, %land.lhs.true7.i.if.end16.i_crit_edge, %land.lhs.true.i.if.end16.i_crit_edge
  %i_ino.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 4
  %10 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_ino.i, align 8
  %sb_uquotino.i.i = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 32
  %12 = ptrtoint ptr %sb_uquotino.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %sb_uquotino.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %11)
  %cmp.i.i = icmp eq i64 %13, %11
  br i1 %cmp.i.i, label %if.end16.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end16.i
  %sb_gquotino.i.i = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 33
  %14 = ptrtoint ptr %sb_gquotino.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %sb_gquotino.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %11)
  %cmp1.i.i = icmp eq i64 %15, %11
  br i1 %cmp1.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %xfs_is_quota_inode.exit.i

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

xfs_is_quota_inode.exit.i:                        ; preds = %lor.lhs.false.i.i
  %sb_pquotino.i.i = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 52
  %16 = ptrtoint ptr %sb_pquotino.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %sb_pquotino.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %11)
  %cmp2.i.i = icmp eq i64 %17, %11
  br i1 %cmp2.i.i, label %xfs_is_quota_inode.exit.i.cleanup_crit_edge, label %if.end

xfs_is_quota_inode.exit.i.cleanup_crit_edge:      ; preds = %xfs_is_quota_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %xfs_is_quota_inode.exit.i
  %call1 = tail call zeroext i1 @xfs_isilocked(ptr noundef %ip, i32 noundef 4) #8
  br i1 %call1, label %if.end.cond.end_crit_edge, label %cond.false, !prof !179

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 325) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %18 = ptrtoint ptr %m_qflags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %m_qflags.i, align 4
  %and = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %cond.end.if.end23_crit_edge, label %land.lhs.true

cond.end.if.end23_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

land.lhs.true:                                    ; preds = %cond.end
  %i_udquot = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 1
  %20 = ptrtoint ptr %i_udquot to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_udquot, align 4
  %tobool4.not = icmp eq ptr %21, null
  br i1 %tobool4.not, label %if.then5, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then5:                                         ; preds = %land.lhs.true
  %call8 = tail call fastcc i32 @xfs_qm_dqattach_one(ptr noundef %ip, i8 noundef zeroext 1, i1 noundef zeroext %doalloc, ptr noundef %i_udquot)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then5.done_crit_edge

if.then5.done_crit_edge:                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end11:                                         ; preds = %if.then5
  %22 = ptrtoint ptr %i_udquot to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_udquot, align 4
  %tobool13.not = icmp eq ptr %23, null
  br i1 %tobool13.not, label %cond.false21, label %if.end11.if.end23_crit_edge, !prof !177

if.end11.if.end23_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

cond.false21:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 332) #8
  br label %if.end23

if.end23:                                         ; preds = %cond.false21, %if.end11.if.end23_crit_edge, %land.lhs.true.if.end23_crit_edge, %cond.end.if.end23_crit_edge
  %24 = ptrtoint ptr %m_qflags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %m_qflags.i, align 4
  %and25 = and i32 %25, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end23.if.end47_crit_edge, label %land.lhs.true27

if.end23.if.end47_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

land.lhs.true27:                                  ; preds = %if.end23
  %i_gdquot = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 2
  %26 = ptrtoint ptr %i_gdquot to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_gdquot, align 8
  %tobool28.not = icmp eq ptr %27, null
  br i1 %tobool28.not, label %if.then29, label %land.lhs.true27.if.end47_crit_edge

land.lhs.true27.if.end47_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then29:                                        ; preds = %land.lhs.true27
  %call32 = tail call fastcc i32 @xfs_qm_dqattach_one(ptr noundef %ip, i8 noundef zeroext 4, i1 noundef zeroext %doalloc, ptr noundef %i_gdquot)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.then29.done_crit_edge

if.then29.done_crit_edge:                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end35:                                         ; preds = %if.then29
  %28 = ptrtoint ptr %i_gdquot to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_gdquot, align 8
  %tobool37.not = icmp eq ptr %29, null
  br i1 %tobool37.not, label %cond.false45, label %if.end35.if.end47_crit_edge, !prof !177

if.end35.if.end47_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

cond.false45:                                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 340) #8
  br label %if.end47

if.end47:                                         ; preds = %cond.false45, %if.end35.if.end47_crit_edge, %land.lhs.true27.if.end47_crit_edge, %if.end23.if.end47_crit_edge
  %30 = ptrtoint ptr %m_qflags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %m_qflags.i, align 4
  %and49 = and i32 %31, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end47.done_crit_edge, label %land.lhs.true51

if.end47.done_crit_edge:                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

land.lhs.true51:                                  ; preds = %if.end47
  %i_pdquot = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 3
  %32 = ptrtoint ptr %i_pdquot to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_pdquot, align 4
  %tobool52.not = icmp eq ptr %33, null
  br i1 %tobool52.not, label %if.then53, label %land.lhs.true51.done_crit_edge

land.lhs.true51.done_crit_edge:                   ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.then53:                                        ; preds = %land.lhs.true51
  %call56 = tail call fastcc i32 @xfs_qm_dqattach_one(ptr noundef %ip, i8 noundef zeroext 2, i1 noundef zeroext %doalloc, ptr noundef %i_pdquot)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.then53.done_crit_edge

if.then53.done_crit_edge:                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end59:                                         ; preds = %if.then53
  %34 = ptrtoint ptr %i_pdquot to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_pdquot, align 4
  %tobool61.not = icmp eq ptr %35, null
  br i1 %tobool61.not, label %cond.false69, label %if.end59.done_crit_edge, !prof !177

if.end59.done_crit_edge:                          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

cond.false69:                                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 348) #8
  br label %done

done:                                             ; preds = %cond.false69, %if.end59.done_crit_edge, %if.then53.done_crit_edge, %land.lhs.true51.done_crit_edge, %if.end47.done_crit_edge, %if.then29.done_crit_edge, %if.then5.done_crit_edge
  %error.2 = phi i32 [ 0, %land.lhs.true51.done_crit_edge ], [ %call56, %if.then53.done_crit_edge ], [ 0, %if.end59.done_crit_edge ], [ 0, %cond.false69 ], [ 0, %if.end47.done_crit_edge ], [ %call32, %if.then29.done_crit_edge ], [ %call8, %if.then5.done_crit_edge ]
  %call72 = tail call zeroext i1 @xfs_isilocked(ptr noundef %ip, i32 noundef 4) #8
  br i1 %call72, label %done.cleanup_crit_edge, label %cond.false80, !prof !179

done.cleanup_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.false80:                                     ; preds = %done
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 356) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.false80, %done.cleanup_crit_edge, %xfs_is_quota_inode.exit.i.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end16.i.cleanup_crit_edge, %land.lhs.true13.i.cleanup_crit_edge, %lor.lhs.false9.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.2, %done.cleanup_crit_edge ], [ %error.2, %cond.false80 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true13.i.cleanup_crit_edge ], [ 0, %lor.lhs.false9.i.cleanup_crit_edge ], [ 0, %xfs_is_quota_inode.exit.i.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.i.cleanup_crit_edge ], [ 0, %if.end16.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_isilocked(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_qm_dqattach_one(ptr noundef %ip, i8 noundef zeroext %type, i1 noundef zeroext %doalloc, ptr nocapture noundef %IO_idqpp) unnamed_addr #3 align 64 {
entry:
  %dqp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dqp) #8
  %call = tail call zeroext i1 @xfs_isilocked(ptr noundef %ip, i32 noundef 4) #8
  br i1 %call, label %entry.cond.end_crit_edge, label %cond.false, !prof !179

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 257) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %0 = ptrtoint ptr %IO_idqpp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %IO_idqpp, align 4
  %2 = ptrtoint ptr %dqp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %dqp, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_xfs_dqattach_found(ptr noundef nonnull %1)
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %call4 = call i32 @xfs_qm_dqget_inode(ptr noundef %ip, i8 noundef zeroext %type, i1 noundef zeroext %doalloc, ptr noundef nonnull %dqp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %dqp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dqp, align 4
  call fastcc void @trace_xfs_dqattach_get(ptr noundef %4)
  %5 = ptrtoint ptr %dqp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dqp, align 4
  %7 = ptrtoint ptr %IO_idqpp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %IO_idqpp, align 4
  %q_qlock.i = getelementptr inbounds %struct.xfs_dquot, ptr %6, i32 0, i32 16
  call void @mutex_unlock(ptr noundef %q_qlock.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end7 ], [ %call4, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dqp) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_qm_dqattach(ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  %m_qflags.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 60
  %2 = ptrtoint ptr %m_qflags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %m_qflags.i, align 4
  %and.i = and i32 %3, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %and2.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.lor.lhs.false.i_crit_edge, label %land.lhs.true.i

if.end.i.lor.lhs.false.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %i_udquot.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 1
  %4 = ptrtoint ptr %i_udquot.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_udquot.i, align 4
  %cmp.i = icmp eq ptr %5, null
  br i1 %cmp.i, label %land.lhs.true.i.if.end16.i_crit_edge, label %land.lhs.true.i.lor.lhs.false.i_crit_edge

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

land.lhs.true.i.if.end16.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i.lor.lhs.false.i_crit_edge, %if.end.i.lor.lhs.false.i_crit_edge
  %and5.i = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i.lor.lhs.false9.i_crit_edge, label %land.lhs.true7.i

lor.lhs.false.i.lor.lhs.false9.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false9.i

land.lhs.true7.i:                                 ; preds = %lor.lhs.false.i
  %i_gdquot.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 2
  %6 = ptrtoint ptr %i_gdquot.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_gdquot.i, align 8
  %cmp8.i = icmp eq ptr %7, null
  br i1 %cmp8.i, label %land.lhs.true7.i.if.end16.i_crit_edge, label %land.lhs.true7.i.lor.lhs.false9.i_crit_edge

land.lhs.true7.i.lor.lhs.false9.i_crit_edge:      ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false9.i

land.lhs.true7.i.if.end16.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

lor.lhs.false9.i:                                 ; preds = %land.lhs.true7.i.lor.lhs.false9.i_crit_edge, %lor.lhs.false.i.lor.lhs.false9.i_crit_edge
  %and11.i = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %lor.lhs.false9.i.cleanup_crit_edge, label %land.lhs.true13.i

lor.lhs.false9.i.cleanup_crit_edge:               ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true13.i:                                ; preds = %lor.lhs.false9.i
  %i_pdquot.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 3
  %8 = ptrtoint ptr %i_pdquot.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_pdquot.i, align 4
  %cmp14.i = icmp eq ptr %9, null
  br i1 %cmp14.i, label %land.lhs.true13.i.if.end16.i_crit_edge, label %land.lhs.true13.i.cleanup_crit_edge

land.lhs.true13.i.cleanup_crit_edge:              ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true13.i.if.end16.i_crit_edge:           ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.end16.i:                                       ; preds = %land.lhs.true13.i.if.end16.i_crit_edge, %land.lhs.true7.i.if.end16.i_crit_edge, %land.lhs.true.i.if.end16.i_crit_edge
  %i_ino.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 4
  %10 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_ino.i, align 8
  %sb_uquotino.i.i = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 32
  %12 = ptrtoint ptr %sb_uquotino.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %sb_uquotino.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %11)
  %cmp.i.i = icmp eq i64 %13, %11
  br i1 %cmp.i.i, label %if.end16.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end16.i
  %sb_gquotino.i.i = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 33
  %14 = ptrtoint ptr %sb_gquotino.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %sb_gquotino.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %11)
  %cmp1.i.i = icmp eq i64 %15, %11
  br i1 %cmp1.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %xfs_is_quota_inode.exit.i

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

xfs_is_quota_inode.exit.i:                        ; preds = %lor.lhs.false.i.i
  %sb_pquotino.i.i = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 52
  %16 = ptrtoint ptr %sb_pquotino.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %sb_pquotino.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %11)
  %cmp2.i.i = icmp eq i64 %17, %11
  br i1 %cmp2.i.i, label %xfs_is_quota_inode.exit.i.cleanup_crit_edge, label %if.end

xfs_is_quota_inode.exit.i.cleanup_crit_edge:      ; preds = %xfs_is_quota_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %xfs_is_quota_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfs_ilock(ptr noundef %ip, i32 noundef 4) #8
  %call1 = tail call i32 @xfs_qm_dqattach_locked(ptr noundef %ip, i1 noundef zeroext false)
  tail call void @xfs_iunlock(ptr noundef %ip, i32 noundef 4) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %xfs_is_quota_inode.exit.i.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end16.i.cleanup_crit_edge, %land.lhs.true13.i.cleanup_crit_edge, %lor.lhs.false9.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true13.i.cleanup_crit_edge ], [ 0, %lor.lhs.false9.i.cleanup_crit_edge ], [ 0, %xfs_is_quota_inode.exit.i.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.i.cleanup_crit_edge ], [ 0, %if.end16.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ilock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iunlock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dquot_dqdetach(ptr noundef %ip) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dquot_dqdetach, i32 0, i32 1), ptr blockaddress(@trace_xfs_dquot_dqdetach, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !180

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !179

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !167) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !181
  %call42 = tail call i32 @__traceiter_xfs_dquot_dqdetach(ptr noundef null, ptr noundef %ip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !182
  %13 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !179

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !167) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dquot_dqdetach, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dquot_dqdetach, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_dquot_dqdetach.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_dquot_dqdetach.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 775, ptr noundef nonnull @.str.34) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !184
  %31 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
declare dso_local void @xfs_qm_dqrele(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_shrinker(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_lru_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_qm_destroy_quotainos(ptr nocapture noundef %qi) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %qi_uquotaip = getelementptr inbounds %struct.xfs_quotainfo, ptr %qi, i32 0, i32 4
  %0 = ptrtoint ptr %qi_uquotaip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qi_uquotaip, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfs_irele(ptr noundef nonnull %1) #8
  %2 = ptrtoint ptr %qi_uquotaip to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %qi_uquotaip, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %qi_gquotaip = getelementptr inbounds %struct.xfs_quotainfo, ptr %qi, i32 0, i32 5
  %3 = ptrtoint ptr %qi_gquotaip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %qi_gquotaip, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfs_irele(ptr noundef nonnull %4) #8
  %5 = ptrtoint ptr %qi_gquotaip to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %qi_gquotaip, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %qi_pquotaip = getelementptr inbounds %struct.xfs_quotainfo, ptr %qi, i32 0, i32 6
  %6 = ptrtoint ptr %qi_pquotaip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qi_pquotaip, align 8
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %if.end7.if.end12_crit_edge, label %if.then9

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfs_irele(ptr noundef nonnull %7) #8
  %8 = ptrtoint ptr %qi_pquotaip to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %qi_pquotaip, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end7.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_qm_mount_quotas(ptr noundef %mp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_rextents = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 4
  %0 = ptrtoint ptr %sb_rextents to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sb_rextents, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @xfs_notice(ptr noundef %mp, ptr noundef nonnull @.str.8) #8
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 60
  %2 = ptrtoint ptr %m_qflags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %m_qflags, align 4
  br label %write_changes

if.end:                                           ; preds = %entry
  %m_qflags1 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 60
  %3 = ptrtoint ptr %m_qflags1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %m_qflags1, align 4
  %and = and i32 %4, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %cond.false, label %if.end.cond.end_crit_edge, !prof !177

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 1415) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %call = tail call fastcc i32 @xfs_qm_init_quotainfo(ptr noundef %mp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end17, label %if.then6

if.then6:                                         ; preds = %cond.end
  %m_quotainfo = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 12
  %5 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m_quotainfo, align 4
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %if.then6.cond.end15_crit_edge, label %cond.false14, !prof !179

if.then6.cond.end15_crit_edge:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end15

cond.false14:                                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 1426) #8
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false14, %if.then6.cond.end15_crit_edge
  %7 = ptrtoint ptr %m_qflags1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %m_qflags1, align 4
  br label %write_changes

if.end17:                                         ; preds = %cond.end
  %8 = ptrtoint ptr %m_qflags1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %m_qflags1, align 4
  %and19 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end17.lor.lhs.false_crit_edge, label %land.lhs.true

if.end17.lor.lhs.false_crit_edge:                 ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end17
  %sb_qflags = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 34
  %10 = ptrtoint ptr %sb_qflags to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sb_qflags, align 16
  %12 = and i16 %11, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp23 = icmp eq i16 %12, 0
  br i1 %cmp23, label %land.lhs.true.if.then46_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true.if.then46_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then46

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.end17.lor.lhs.false_crit_edge
  %and26 = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %lor.lhs.false.lor.lhs.false35_crit_edge, label %land.lhs.true28

lor.lhs.false.lor.lhs.false35_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false35

land.lhs.true28:                                  ; preds = %lor.lhs.false
  %sb_qflags30 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 34
  %13 = ptrtoint ptr %sb_qflags30 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %sb_qflags30, align 16
  %15 = and i16 %14, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp33 = icmp eq i16 %15, 0
  br i1 %cmp33, label %land.lhs.true28.if.then46_crit_edge, label %land.lhs.true28.lor.lhs.false35_crit_edge

land.lhs.true28.lor.lhs.false35_crit_edge:        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false35

land.lhs.true28.if.then46_crit_edge:              ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then46

lor.lhs.false35:                                  ; preds = %land.lhs.true28.lor.lhs.false35_crit_edge, %lor.lhs.false.lor.lhs.false35_crit_edge
  %and37 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %lor.lhs.false35.if.end51_crit_edge, label %land.lhs.true39

lor.lhs.false35.if.end51_crit_edge:               ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

land.lhs.true39:                                  ; preds = %lor.lhs.false35
  %sb_qflags41 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 34
  %16 = ptrtoint ptr %sb_qflags41 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sb_qflags41, align 16
  %18 = and i16 %17, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp44 = icmp eq i16 %18, 0
  br i1 %cmp44, label %land.lhs.true39.if.then46_crit_edge, label %land.lhs.true39.if.end51_crit_edge

land.lhs.true39.if.end51_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

land.lhs.true39.if.then46_crit_edge:              ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then46

if.then46:                                        ; preds = %land.lhs.true39.if.then46_crit_edge, %land.lhs.true28.if.then46_crit_edge, %land.lhs.true.if.then46_crit_edge
  %call47 = tail call fastcc i32 @xfs_qm_quotacheck(ptr noundef %mp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then46.if.end51_crit_edge, label %if.then46.cleanup_crit_edge

if.then46.cleanup_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then46.if.end51_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.end51:                                         ; preds = %if.then46.if.end51_crit_edge, %land.lhs.true39.if.end51_crit_edge, %lor.lhs.false35.if.end51_crit_edge
  %19 = ptrtoint ptr %m_qflags1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %m_qflags1, align 4
  %and53 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.then55, label %if.end51.if.end58_crit_edge

if.end51.if.end58_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %and57 = and i32 %20, -5
  %21 = ptrtoint ptr %m_qflags1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and57, ptr %m_qflags1, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %if.end51.if.end58_crit_edge
  %22 = ptrtoint ptr %m_qflags1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %m_qflags1, align 4
  %and60 = and i32 %23, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.then62, label %if.end58.if.end65_crit_edge

if.end58.if.end65_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %and64 = and i32 %23, -257
  %24 = ptrtoint ptr %m_qflags1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and64, ptr %m_qflags1, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.end58.if.end65_crit_edge
  %25 = ptrtoint ptr %m_qflags1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %m_qflags1, align 4
  %and67 = and i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.then69, label %if.end65.write_changes_crit_edge

if.end65.write_changes_crit_edge:                 ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_changes

if.then69:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  %and71 = and i32 %26, -1025
  %27 = ptrtoint ptr %m_qflags1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and71, ptr %m_qflags1, align 4
  br label %write_changes

write_changes:                                    ; preds = %if.then69, %if.end65.write_changes_crit_edge, %cond.end15, %if.then
  %tobool106.not = phi i1 [ true, %if.end65.write_changes_crit_edge ], [ true, %if.then69 ], [ false, %cond.end15 ], [ true, %if.then ]
  %m_sb_lock = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 76
  tail call void @_raw_spin_lock(ptr noundef %m_sb_lock) #8
  %sb_qflags74 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 34
  %28 = ptrtoint ptr %sb_qflags74 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %sb_qflags74, align 16
  %conv75 = zext i16 %29 to i32
  %m_qflags76 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 60
  %30 = ptrtoint ptr %m_qflags76 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %m_qflags76, align 4
  %32 = trunc i32 %31 to i16
  %conv78 = and i16 %32, 1999
  store i16 %conv78, ptr %sb_qflags74, align 16
  tail call void @_raw_spin_unlock(ptr noundef %m_sb_lock) #8
  %33 = ptrtoint ptr %m_qflags76 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %m_qflags76, align 4
  %and83 = and i32 %34, 1999
  call void @__sanitizer_cov_trace_cmp4(i32 %and83, i32 %conv75)
  %cmp84.not = icmp eq i32 %and83, %conv75
  br i1 %cmp84.not, label %write_changes.if.end105_crit_edge, label %if.then86

write_changes.if.end105_crit_edge:                ; preds = %write_changes
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

if.then86:                                        ; preds = %write_changes
  %call87 = tail call i32 @xfs_sync_sb(ptr noundef %mp, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.then86.if.end105_crit_edge, label %if.then89

if.then86.if.end105_crit_edge:                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

if.then89:                                        ; preds = %if.then86
  %35 = ptrtoint ptr %m_qflags76 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %m_qflags76, align 4
  %and91 = and i32 %36, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.then89.cond.end103_crit_edge, label %cond.false102, !prof !179

if.then89.cond.end103_crit_edge:                  ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end103

cond.false102:                                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 1470) #8
  br label %cond.end103

cond.end103:                                      ; preds = %cond.false102, %if.then89.cond.end103_crit_edge
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %mp, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.xfs_qm_mount_quotas) #8
  br label %if.end105

if.end105:                                        ; preds = %cond.end103, %if.then86.if.end105_crit_edge, %write_changes.if.end105_crit_edge
  br i1 %tobool106.not, label %if.end105.cleanup_crit_edge, label %if.then107

if.end105.cleanup_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then107:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.13) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then107, %if.end105.cleanup_crit_edge, %if.then46.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_qm_init_quotainfo(ptr noundef %mp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 60
  %0 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %m_qflags, align 4
  %and = and i32 %1, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !177

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 632) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %call.i = tail call ptr @kmem_alloc(i32 noundef 736, i32 noundef 16) #8
  %m_quotainfo = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 12
  %2 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %m_quotainfo, align 4
  %qi_lru = getelementptr inbounds %struct.xfs_quotainfo, ptr %call.i, i32 0, i32 7
  %call3 = tail call i32 @__list_lru_init(ptr noundef %qi_lru, i1 noundef zeroext false, ptr noundef null, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %cond.end.out_free_qinf_crit_edge

cond.end.out_free_qinf_crit_edge:                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_qinf

if.end:                                           ; preds = %cond.end
  %call5 = tail call fastcc i32 @xfs_qm_init_quotainos(ptr noundef %mp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.out_free_lru_crit_edge

if.end.out_free_lru_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_lru

if.end8:                                          ; preds = %if.end
  tail call void @__raw_spin_lock_init(ptr noundef %call.i, ptr noundef nonnull @.str.48, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #8
  %xa_flags.i = getelementptr inbounds %struct.xarray, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %xa_flags.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3136, ptr %xa_flags.i, align 4
  %xa_head.i = getelementptr inbounds %struct.xarray, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %xa_head.i, align 4
  %qi_gquota_tree = getelementptr inbounds %struct.xfs_quotainfo, ptr %call.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %qi_gquota_tree, ptr noundef nonnull @.str.48, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #8
  %xa_flags.i102 = getelementptr inbounds %struct.xfs_quotainfo, ptr %call.i, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %xa_flags.i102 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3136, ptr %xa_flags.i102, align 4
  %xa_head.i103 = getelementptr inbounds %struct.xfs_quotainfo, ptr %call.i, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %xa_head.i103 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %xa_head.i103, align 4
  %qi_pquota_tree = getelementptr inbounds %struct.xfs_quotainfo, ptr %call.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %qi_pquota_tree, ptr noundef nonnull @.str.48, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #8
  %xa_flags.i104 = getelementptr inbounds %struct.xfs_quotainfo, ptr %call.i, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %xa_flags.i104 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3136, ptr %xa_flags.i104, align 4
  %xa_head.i105 = getelementptr inbounds %struct.xfs_quotainfo, ptr %call.i, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %xa_head.i105 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %xa_head.i105, align 4
  %qi_tree_lock = getelementptr inbounds %struct.xfs_quotainfo, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %qi_tree_lock, ptr noundef nonnull @.str.36, ptr noundef nonnull @xfs_qm_init_quotainfo.__key) #8
  %qi_quotaofflock = getelementptr inbounds %struct.xfs_quotainfo, ptr %call.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %qi_quotaofflock, ptr noundef nonnull @.str.38, ptr noundef nonnull @xfs_qm_init_quotainfo.__key.37) #8
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 28
  %9 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom = zext i8 %10 to i64
  %shl = shl nuw i64 1, %sh_prom
  %qi_dqchunklen = getelementptr inbounds %struct.xfs_quotainfo, ptr %call.i, i32 0, i32 10
  %11 = ptrtoint ptr %qi_dqchunklen to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %shl, ptr %qi_dqchunklen, align 8
  %conv13 = trunc i64 %shl to i32
  %call14 = tail call i32 @xfs_calc_dquots_per_chunk(i32 noundef %conv13) #8
  %qi_dqperchunk = getelementptr inbounds %struct.xfs_quotainfo, ptr %call.i, i32 0, i32 11
  %12 = ptrtoint ptr %qi_dqperchunk to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call14, ptr %qi_dqperchunk, align 8
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %13 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %spec.select = select i1 %tobool.i.not, i64 1, i64 4
  %spec.select107 = select i1 %tobool.i.not, i64 4294967295, i64 16299260424
  %15 = getelementptr inbounds %struct.xfs_quotainfo, ptr %call.i, i32 0, i32 16
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %spec.select, ptr %15, align 8
  %17 = getelementptr inbounds %struct.xfs_quotainfo, ptr %call.i, i32 0, i32 17
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %spec.select107, ptr %17, align 8
  tail call fastcc void @trace_xfs_quota_expiry_range(ptr noundef %mp, i64 noundef %spec.select, i64 noundef %spec.select107)
  %sb_qflags = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 34
  %19 = ptrtoint ptr %sb_qflags to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %sb_qflags, align 16
  %21 = and i16 %20, 1284
  %and25 = zext i16 %21 to i32
  %22 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %m_qflags, align 4
  %or = or i32 %23, %and25
  store i32 %or, ptr %m_qflags, align 4
  tail call fastcc void @xfs_qm_init_timelimits(ptr noundef %mp, i8 noundef zeroext 1)
  tail call fastcc void @xfs_qm_init_timelimits(ptr noundef %mp, i8 noundef zeroext 4)
  tail call fastcc void @xfs_qm_init_timelimits(ptr noundef %mp, i8 noundef zeroext 2)
  %24 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %m_qflags, align 4
  %and28 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end8.if.end31_crit_edge, label %if.then30

if.end8.if.end31_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then30:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @xfs_qm_set_defquota(ptr noundef %mp, i8 noundef zeroext 1, ptr noundef %call.i)
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end8.if.end31_crit_edge
  %26 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %m_qflags, align 4
  %and33 = and i32 %27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end31.if.end36_crit_edge, label %if.then35

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @xfs_qm_set_defquota(ptr noundef %mp, i8 noundef zeroext 4, ptr noundef %call.i)
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end31.if.end36_crit_edge
  %28 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %m_qflags, align 4
  %and38 = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end36.if.end41_crit_edge, label %if.then40

if.end36.if.end41_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @xfs_qm_set_defquota(ptr noundef %mp, i8 noundef zeroext 2, ptr noundef %call.i)
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end36.if.end41_crit_edge
  %qi_shrinker = getelementptr inbounds %struct.xfs_quotainfo, ptr %call.i, i32 0, i32 15
  %30 = ptrtoint ptr %qi_shrinker to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @xfs_qm_shrink_count, ptr %qi_shrinker, align 8
  %scan_objects = getelementptr inbounds %struct.xfs_quotainfo, ptr %call.i, i32 0, i32 15, i32 1
  %31 = ptrtoint ptr %scan_objects to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @xfs_qm_shrink_scan, ptr %scan_objects, align 4
  %seeks = getelementptr inbounds %struct.xfs_quotainfo, ptr %call.i, i32 0, i32 15, i32 3
  %32 = ptrtoint ptr %seeks to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %seeks, align 4
  %flags = getelementptr inbounds %struct.xfs_quotainfo, ptr %call.i, i32 0, i32 15, i32 4
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %flags, align 8
  %call46 = tail call i32 @register_shrinker(ptr noundef %qi_shrinker) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end41.cleanup_crit_edge, label %out_free_inos

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

out_free_inos:                                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_destroy(ptr noundef %qi_quotaofflock) #8
  tail call void @mutex_destroy(ptr noundef %qi_tree_lock) #8
  tail call fastcc void @xfs_qm_destroy_quotainos(ptr noundef %call.i)
  br label %out_free_lru

out_free_lru:                                     ; preds = %out_free_inos, %if.end.out_free_lru_crit_edge
  %error.0 = phi i32 [ %call5, %if.end.out_free_lru_crit_edge ], [ %call46, %out_free_inos ]
  tail call void @list_lru_destroy(ptr noundef %qi_lru) #8
  br label %out_free_qinf

out_free_qinf:                                    ; preds = %out_free_lru, %cond.end.out_free_qinf_crit_edge
  %error.1 = phi i32 [ %call3, %cond.end.out_free_qinf_crit_edge ], [ %error.0, %out_free_lru ]
  tail call void @kvfree(ptr noundef %call.i) #8
  %34 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %m_quotainfo, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_free_qinf, %if.end41.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1, %out_free_qinf ], [ 0, %if.end41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_qm_quotacheck(ptr noundef %mp) unnamed_addr #3 align 64 {
entry:
  %buffer_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buffer_list) #8
  %0 = getelementptr inbounds %struct.list_head, ptr %buffer_list, i32 0, i32 1
  %1 = ptrtoint ptr %buffer_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %buffer_list, ptr %buffer_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %buffer_list, ptr %0, align 4
  %m_quotainfo = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 12
  %3 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %m_quotainfo, align 4
  %qi_uquotaip = getelementptr inbounds %struct.xfs_quotainfo, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %qi_uquotaip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qi_uquotaip, align 8
  %qi_gquotaip = getelementptr inbounds %struct.xfs_quotainfo, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %qi_gquotaip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %qi_gquotaip, align 4
  %qi_pquotaip = getelementptr inbounds %struct.xfs_quotainfo, ptr %4, i32 0, i32 6
  %9 = ptrtoint ptr %qi_pquotaip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %qi_pquotaip, align 8
  %tobool.not = icmp eq ptr %6, null
  %tobool3.not = icmp eq ptr %8, null
  %or.cond = select i1 %tobool.not, i1 %tobool3.not, i1 false
  %or.cond.not = xor i1 %or.cond, true
  %tobool4 = icmp ne ptr %10, null
  %or.cond141 = select i1 %or.cond.not, i1 true, i1 %tobool4
  br i1 %or.cond141, label %entry.cond.end_crit_edge, label %cond.false, !prof !185

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.1, i32 noundef 1284) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 60
  %11 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %m_qflags, align 4
  %and = and i32 %12, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %cond.false15, label %cond.end.cond.end16_crit_edge, !prof !177

cond.end.cond.end16_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end16

cond.false15:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 1285) #8
  br label %cond.end16

cond.end16:                                       ; preds = %cond.false15, %cond.end.cond.end16_crit_edge
  call void (ptr, ptr, ...) @xfs_notice(ptr noundef %mp, ptr noundef nonnull @.str.52) #8
  br i1 %tobool.not, label %cond.end16.if.end20_crit_edge, label %if.then

cond.end16.if.end20_crit_edge:                    ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then:                                          ; preds = %cond.end16
  %call = call fastcc i32 @xfs_qm_reset_dqcounts_buf(ptr noundef %mp, ptr noundef nonnull %6, i8 noundef zeroext 1, ptr noundef nonnull %buffer_list)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool18.not = icmp eq i32 %call, 0
  br i1 %tobool18.not, label %if.then.if.end20_crit_edge, label %if.then.if.then77_crit_edge

if.then.if.then77_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then77

if.then.if.end20_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end20:                                         ; preds = %if.then.if.end20_crit_edge, %cond.end16.if.end20_crit_edge
  %flags.0 = phi i32 [ 0, %cond.end16.if.end20_crit_edge ], [ 4, %if.then.if.end20_crit_edge ]
  br i1 %tobool3.not, label %if.end20.if.end28_crit_edge, label %if.then22

if.end20.if.end28_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then22:                                        ; preds = %if.end20
  %call23 = call fastcc i32 @xfs_qm_reset_dqcounts_buf(ptr noundef %mp, ptr noundef nonnull %8, i8 noundef zeroext 4, ptr noundef nonnull %buffer_list)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.then22.if.then77_crit_edge

if.then22.if.then77_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then77

if.end26:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %or27 = or i32 %flags.0, 256
  br label %if.end28

if.end28:                                         ; preds = %if.end26, %if.end20.if.end28_crit_edge
  %flags.1 = phi i32 [ %or27, %if.end26 ], [ %flags.0, %if.end20.if.end28_crit_edge ]
  %tobool29.not = icmp eq ptr %10, null
  br i1 %tobool29.not, label %if.end28.if.end36_crit_edge, label %if.then30

if.end28.if.end36_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then30:                                        ; preds = %if.end28
  %call31 = call fastcc i32 @xfs_qm_reset_dqcounts_buf(ptr noundef %mp, ptr noundef nonnull %10, i8 noundef zeroext 2, ptr noundef nonnull %buffer_list)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.then30.if.then77_crit_edge

if.then30.if.then77_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then77

if.end34:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %or35 = or i32 %flags.1, 1024
  br label %if.end36

if.end36:                                         ; preds = %if.end34, %if.end28.if.end36_crit_edge
  %flags.2 = phi i32 [ %or35, %if.end34 ], [ %flags.1, %if.end28.if.end36_crit_edge ]
  %call37 = call i32 @xfs_iwalk_threaded(ptr noundef %mp, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @xfs_qm_dqusage_adjust, i32 noundef 0, i1 noundef zeroext true, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end36.if.then77_crit_edge

if.end36.if.then77_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then77

if.end40:                                         ; preds = %if.end36
  %13 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %m_qflags, align 4
  %and42 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end40.if.end46_crit_edge, label %if.then44

if.end40.if.end46_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %call45 = call fastcc i32 @xfs_qm_dquot_walk(ptr noundef %mp, i8 noundef zeroext 1, ptr noundef nonnull @xfs_qm_flush_one, ptr noundef nonnull %buffer_list)
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.end40.if.end46_crit_edge
  %error.0 = phi i32 [ %call45, %if.then44 ], [ 0, %if.end40.if.end46_crit_edge ]
  %15 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %m_qflags, align 4
  %and48 = and i32 %16, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end46.if.end55_crit_edge, label %if.then50

if.end46.if.end55_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %call51 = call fastcc i32 @xfs_qm_dquot_walk(ptr noundef %mp, i8 noundef zeroext 4, ptr noundef nonnull @xfs_qm_flush_one, ptr noundef nonnull %buffer_list)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool52.not = icmp eq i32 %error.0, 0
  %spec.select = select i1 %tobool52.not, i32 %call51, i32 %error.0
  br label %if.end55

if.end55:                                         ; preds = %if.then50, %if.end46.if.end55_crit_edge
  %error.1 = phi i32 [ %error.0, %if.end46.if.end55_crit_edge ], [ %spec.select, %if.then50 ]
  %17 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %m_qflags, align 4
  %and57 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end55.if.end64_crit_edge, label %if.then59

if.end55.if.end64_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then59:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %call60 = call fastcc i32 @xfs_qm_dquot_walk(ptr noundef %mp, i8 noundef zeroext 2, ptr noundef nonnull @xfs_qm_flush_one, ptr noundef nonnull %buffer_list)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1)
  %tobool61.not = icmp eq i32 %error.1, 0
  %spec.select139 = select i1 %tobool61.not, i32 %call60, i32 %error.1
  br label %if.end64

if.end64:                                         ; preds = %if.then59, %if.end55.if.end64_crit_edge
  %error.2 = phi i32 [ %error.1, %if.end55.if.end64_crit_edge ], [ %spec.select139, %if.then59 ]
  %call65 = call i32 @xfs_buf_delwri_submit(ptr noundef nonnull %buffer_list) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.2)
  %tobool66.not = icmp eq i32 %error.2, 0
  %spec.select140 = select i1 %tobool66.not, i32 %call65, i32 %error.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select140)
  %tobool69.not = icmp eq i32 %spec.select140, 0
  br i1 %tobool69.not, label %if.else, label %if.then70

if.then70:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call fastcc i32 @xfs_qm_dquot_walk(ptr noundef %mp, i8 noundef zeroext 1, ptr noundef nonnull @xfs_qm_dqpurge, ptr noundef null) #8
  %call1.i = call fastcc i32 @xfs_qm_dquot_walk(ptr noundef %mp, i8 noundef zeroext 4, ptr noundef nonnull @xfs_qm_dqpurge, ptr noundef null) #8
  %call2.i = call fastcc i32 @xfs_qm_dquot_walk(ptr noundef %mp, i8 noundef zeroext 2, ptr noundef nonnull @xfs_qm_dqpurge, ptr noundef null) #8
  br label %if.then77

if.then77:                                        ; preds = %if.then70, %if.end36.if.then77_crit_edge, %if.then30.if.then77_crit_edge, %if.then22.if.then77_crit_edge, %if.then.if.then77_crit_edge
  %error.4.ph = phi i32 [ %spec.select140, %if.then70 ], [ %call37, %if.end36.if.then77_crit_edge ], [ %call31, %if.then30.if.then77_crit_edge ], [ %call23, %if.then22.if.then77_crit_edge ], [ %call, %if.then.if.then77_crit_edge ]
  call void @xfs_buf_delwri_cancel(ptr noundef nonnull %buffer_list) #8
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.53, i32 noundef %error.4.ph) #8
  %19 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %m_quotainfo, align 4
  %cmp.not = icmp eq ptr %20, null
  br i1 %cmp.not, label %cond.false86, label %if.then77.cond.end87_crit_edge, !prof !177

if.then77.cond.end87_crit_edge:                   ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end87

cond.false86:                                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 1378) #8
  br label %cond.end87

cond.end87:                                       ; preds = %cond.false86, %if.then77.cond.end87_crit_edge
  call void @xfs_qm_destroy_quotainfo(ptr noundef %mp)
  %call88 = call i32 @xfs_mount_reset_sbqflags(ptr noundef %mp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %cond.end87.if.end92_crit_edge, label %if.then90

cond.end87.if.end92_crit_edge:                    ; preds = %cond.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then90:                                        ; preds = %cond.end87
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.55) #8
  br label %if.end92

if.else:                                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %m_qflags, align 4
  %and73 = and i32 %22, -1285
  %or75 = or i32 %and73, %flags.2
  store i32 %or75, ptr %m_qflags, align 4
  call void @xfs_buf_delwri_cancel(ptr noundef nonnull %buffer_list) #8
  call void (ptr, ptr, ...) @xfs_notice(ptr noundef %mp, ptr noundef nonnull @.str.56) #8
  br label %if.end92

if.end92:                                         ; preds = %if.else, %if.then90, %cond.end87.if.end92_crit_edge
  %error.4144 = phi i32 [ %error.4.ph, %cond.end87.if.end92_crit_edge ], [ %error.4.ph, %if.then90 ], [ 0, %if.else ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buffer_list) #8
  ret i32 %error.4144
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_sync_sb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_qm_vop_dqalloc(ptr noundef %ip, [1 x i32] %uid.coerce, [1 x i32] %gid.coerce, i32 noundef %prid, i32 noundef %flags, ptr noundef writeonly %O_udqpp, ptr noundef writeonly %O_gdqpp, ptr noundef writeonly %O_pdqpp) local_unnamed_addr #0 align 64 {
entry:
  %uq = alloca ptr, align 4
  %gq = alloca ptr, align 4
  %pq = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gid.coerce.fca.0.extract = extractvalue [1 x i32] %gid.coerce, 0
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %i_sb = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_user_ns = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %s_user_ns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_user_ns, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uq) #8
  %6 = ptrtoint ptr %uq to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %uq, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gq) #8
  %7 = ptrtoint ptr %gq to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %gq, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pq) #8
  %8 = ptrtoint ptr %pq to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %pq, align 4
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 60
  %9 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %m_qflags, align 4
  %and = and i32 %10, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @xfs_ilock(ptr noundef %ip, i32 noundef 4) #8
  %and2 = and i32 %flags, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end10_crit_edge, label %land.lhs.true

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %11 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ip, align 8
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %12, i32 0, i32 61
  %13 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %14, 36028797018963968
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false, label %land.lhs.true.if.then9_crit_edge

land.lhs.true.if.then9_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

lor.lhs.false:                                    ; preds = %land.lhs.true
  %15 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %i_vnode.i, align 8
  %17 = and i16 %16, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool8.not = icmp eq i16 %17, 0
  br i1 %tobool8.not, label %lor.lhs.false.if.end10_crit_edge, label %lor.lhs.false.if.then9_crit_edge

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

lor.lhs.false.if.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %land.lhs.true.if.then9_crit_edge
  %i_gid = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 3
  %18 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %18)
  %gid.sroa.0.0.copyload = load i32, ptr %i_gid, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %lor.lhs.false.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %gid.sroa.0.0 = phi i32 [ %gid.sroa.0.0.copyload, %if.then9 ], [ %gid.coerce.fca.0.extract, %lor.lhs.false.if.end10_crit_edge ], [ %gid.coerce.fca.0.extract, %if.end.if.end10_crit_edge ]
  %19 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %m_qflags, align 4
  %and12 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end10.lor.lhs.false16_crit_edge, label %land.lhs.true14

if.end10.lor.lhs.false16_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false16

land.lhs.true14:                                  ; preds = %if.end10
  %i_udquot = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 1
  %21 = ptrtoint ptr %i_udquot to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_udquot, align 4
  %cmp = icmp eq ptr %22, null
  br i1 %cmp, label %land.lhs.true14.if.then30_crit_edge, label %land.lhs.true14.lor.lhs.false16_crit_edge

land.lhs.true14.lor.lhs.false16_crit_edge:        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false16

land.lhs.true14.if.then30_crit_edge:              ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

lor.lhs.false16:                                  ; preds = %land.lhs.true14.lor.lhs.false16_crit_edge, %if.end10.lor.lhs.false16_crit_edge
  %and18 = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %lor.lhs.false16.lor.lhs.false23_crit_edge, label %land.lhs.true20

lor.lhs.false16.lor.lhs.false23_crit_edge:        ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false23

land.lhs.true20:                                  ; preds = %lor.lhs.false16
  %i_gdquot = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 2
  %23 = ptrtoint ptr %i_gdquot to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_gdquot, align 8
  %cmp21 = icmp eq ptr %24, null
  br i1 %cmp21, label %land.lhs.true20.if.then30_crit_edge, label %land.lhs.true20.lor.lhs.false23_crit_edge

land.lhs.true20.lor.lhs.false23_crit_edge:        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false23

land.lhs.true20.if.then30_crit_edge:              ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

lor.lhs.false23:                                  ; preds = %land.lhs.true20.lor.lhs.false23_crit_edge, %lor.lhs.false16.lor.lhs.false23_crit_edge
  %and25 = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %lor.lhs.false23.if.end35_crit_edge, label %land.lhs.true27

lor.lhs.false23.if.end35_crit_edge:               ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

land.lhs.true27:                                  ; preds = %lor.lhs.false23
  %i_pdquot = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 3
  %25 = ptrtoint ptr %i_pdquot to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_pdquot, align 4
  %cmp28 = icmp eq ptr %26, null
  br i1 %cmp28, label %land.lhs.true27.if.then30_crit_edge, label %land.lhs.true27.if.end35_crit_edge

land.lhs.true27.if.end35_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

land.lhs.true27.if.then30_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

if.then30:                                        ; preds = %land.lhs.true27.if.then30_crit_edge, %land.lhs.true20.if.then30_crit_edge, %land.lhs.true14.if.then30_crit_edge
  %call31 = tail call i32 @xfs_qm_dqattach_locked(ptr noundef %ip, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then30.if.end35_crit_edge, label %if.then33

if.then30.if.end35_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then33:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfs_iunlock(ptr noundef %ip, i32 noundef 4) #8
  br label %cleanup

if.end35:                                         ; preds = %if.then30.if.end35_crit_edge, %land.lhs.true27.if.end35_crit_edge, %lor.lhs.false23.if.end35_crit_edge
  %and36 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.if.end81_crit_edge, label %land.lhs.true38

if.end35.if.end81_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

land.lhs.true38:                                  ; preds = %if.end35
  %27 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %m_qflags, align 4
  %and40 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %land.lhs.true38.if.end81_crit_edge, label %if.then42

land.lhs.true38.if.end81_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.then42:                                        ; preds = %land.lhs.true38
  %tobool43.not = icmp eq ptr %O_udqpp, null
  br i1 %tobool43.not, label %cond.false, label %if.then42.cond.end_crit_edge, !prof !177

if.then42.cond.end_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 1664) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then42.cond.end_crit_edge
  %i_uid = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 2
  %29 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %29)
  %.unpack280 = load i32, ptr %i_uid, align 4
  %uid.coerce.fca.0.extract.i6.i = extractvalue [1 x i32] %uid.coerce, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack280, i32 %uid.coerce.fca.0.extract.i6.i)
  %cmp.i = icmp eq i32 %.unpack280, %uid.coerce.fca.0.extract.i6.i
  br i1 %cmp.i, label %if.else, label %if.then49

if.then49:                                        ; preds = %cond.end
  tail call void @xfs_iunlock(ptr noundef %ip, i32 noundef 4) #8
  %call51 = tail call i32 @from_kuid(ptr noundef %5, [1 x i32] %uid.coerce) #8
  %call52 = call i32 @xfs_qm_dqget(ptr noundef %1, i32 noundef %call51, i8 noundef zeroext 1, i1 noundef zeroext true, ptr noundef nonnull %uq) #8
  %30 = zext i32 %call52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call52, label %if.then49.cleanup_crit_edge [
    i32 0, label %if.end66
    i32 -2, label %cond.false64
  ], !prof !186

if.then49.cleanup_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.false64:                                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 1679) #8
  br label %cleanup

if.end66:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %uq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %uq, align 4
  %q_qlock.i = getelementptr inbounds %struct.xfs_dquot, ptr %32, i32 0, i32 16
  call void @mutex_unlock(ptr noundef %q_qlock.i) #8
  call void @xfs_ilock(ptr noundef %ip, i32 noundef 8) #8
  br label %if.end81

if.else:                                          ; preds = %cond.end
  %i_udquot67 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 1
  %33 = ptrtoint ptr %i_udquot67 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_udquot67, align 4
  %tobool68.not = icmp eq ptr %34, null
  br i1 %tobool68.not, label %cond.false76, label %if.else.cond.end77_crit_edge, !prof !177

if.else.cond.end77_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end77

cond.false76:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 1693) #8
  br label %cond.end77

cond.end77:                                       ; preds = %cond.false76, %if.else.cond.end77_crit_edge
  %35 = ptrtoint ptr %i_udquot67 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_udquot67, align 4
  %q_qlock.i.i = getelementptr inbounds %struct.xfs_dquot, ptr %36, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %q_qlock.i.i, i32 noundef 0) #8
  %q_nrefs.i = getelementptr inbounds %struct.xfs_dquot, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %q_nrefs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %q_nrefs.i, align 4
  %inc.i = add i32 %38, 1
  store i32 %inc.i, ptr %q_nrefs.i, align 4
  tail call void @mutex_unlock(ptr noundef %q_qlock.i.i) #8
  %39 = ptrtoint ptr %uq to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %uq, align 4
  br label %if.end81

if.end81:                                         ; preds = %cond.end77, %if.end66, %land.lhs.true38.if.end81_crit_edge, %if.end35.if.end81_crit_edge
  %lockflags.0 = phi i32 [ 4, %cond.end77 ], [ 8, %if.end66 ], [ 4, %land.lhs.true38.if.end81_crit_edge ], [ 4, %if.end35.if.end81_crit_edge ]
  %and82 = and i32 %flags, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.end81.if.end136_crit_edge, label %land.lhs.true84

if.end81.if.end136_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end136

land.lhs.true84:                                  ; preds = %if.end81
  %40 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %m_qflags, align 4
  %and86 = and i32 %41, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %land.lhs.true84.if.end136_crit_edge, label %if.then88

land.lhs.true84.if.end136_crit_edge:              ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end136

if.then88:                                        ; preds = %land.lhs.true84
  %tobool89.not = icmp eq ptr %O_gdqpp, null
  br i1 %tobool89.not, label %cond.false97, label %if.then88.cond.end98_crit_edge, !prof !177

if.then88.cond.end98_crit_edge:                   ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end98

cond.false97:                                     ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 1698) #8
  br label %cond.end98

cond.end98:                                       ; preds = %cond.false97, %if.then88.cond.end98_crit_edge
  %i_gid99 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 3
  %42 = ptrtoint ptr %i_gid99 to i32
  call void @__asan_load4_noabort(i32 %42)
  %.unpack = load i32, ptr %i_gid99, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %gid.sroa.0.0)
  %cmp.i282 = icmp eq i32 %.unpack, %gid.sroa.0.0
  br i1 %cmp.i282, label %if.else121, label %if.then103

if.then103:                                       ; preds = %cond.end98
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %gid.sroa.0.0, 0
  call void @xfs_iunlock(ptr noundef %ip, i32 noundef %lockflags.0) #8
  %call105 = call i32 @from_kgid(ptr noundef %5, [1 x i32] %.fca.0.insert) #8
  %call106 = call i32 @xfs_qm_dqget(ptr noundef %1, i32 noundef %call105, i8 noundef zeroext 4, i1 noundef zeroext true, ptr noundef nonnull %gq) #8
  %43 = zext i32 %call106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %call106, label %if.then103.error_rele_crit_edge [
    i32 0, label %if.end120
    i32 -2, label %if.then103.error_rele.sink.split_crit_edge
  ], !prof !186

if.then103.error_rele.sink.split_crit_edge:       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_rele.sink.split

if.then103.error_rele_crit_edge:                  ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_rele

if.end120:                                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %gq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %gq, align 4
  %q_qlock.i283 = getelementptr inbounds %struct.xfs_dquot, ptr %45, i32 0, i32 16
  call void @mutex_unlock(ptr noundef %q_qlock.i283) #8
  call void @xfs_ilock(ptr noundef %ip, i32 noundef 8) #8
  br label %if.end136

if.else121:                                       ; preds = %cond.end98
  %i_gdquot122 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 2
  %46 = ptrtoint ptr %i_gdquot122 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %i_gdquot122, align 8
  %tobool123.not = icmp eq ptr %47, null
  br i1 %tobool123.not, label %cond.false131, label %if.else121.cond.end132_crit_edge, !prof !177

if.else121.cond.end132_crit_edge:                 ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end132

cond.false131:                                    ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1711) #8
  br label %cond.end132

cond.end132:                                      ; preds = %cond.false131, %if.else121.cond.end132_crit_edge
  %48 = ptrtoint ptr %i_gdquot122 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i_gdquot122, align 8
  %q_qlock.i.i284 = getelementptr inbounds %struct.xfs_dquot, ptr %49, i32 0, i32 16
  call void @mutex_lock_nested(ptr noundef %q_qlock.i.i284, i32 noundef 0) #8
  %q_nrefs.i285 = getelementptr inbounds %struct.xfs_dquot, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %q_nrefs.i285 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %q_nrefs.i285, align 4
  %inc.i286 = add i32 %51, 1
  store i32 %inc.i286, ptr %q_nrefs.i285, align 4
  call void @mutex_unlock(ptr noundef %q_qlock.i.i284) #8
  %52 = ptrtoint ptr %gq to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %gq, align 4
  br label %if.end136

if.end136:                                        ; preds = %cond.end132, %if.end120, %land.lhs.true84.if.end136_crit_edge, %if.end81.if.end136_crit_edge
  %lockflags.1 = phi i32 [ %lockflags.0, %cond.end132 ], [ 8, %if.end120 ], [ %lockflags.0, %land.lhs.true84.if.end136_crit_edge ], [ %lockflags.0, %if.end81.if.end136_crit_edge ]
  %and137 = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %if.end136.if.end187_crit_edge, label %land.lhs.true139

if.end136.if.end187_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end187

land.lhs.true139:                                 ; preds = %if.end136
  %53 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %m_qflags, align 4
  %and141 = and i32 %54, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  br i1 %tobool142.not, label %land.lhs.true139.if.end187_crit_edge, label %if.then143

land.lhs.true139.if.end187_crit_edge:             ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end187

if.then143:                                       ; preds = %land.lhs.true139
  %tobool144.not = icmp eq ptr %O_pdqpp, null
  br i1 %tobool144.not, label %cond.false152, label %if.then143.cond.end153_crit_edge, !prof !177

if.then143.cond.end153_crit_edge:                 ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end153

cond.false152:                                    ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 1716) #8
  br label %cond.end153

cond.end153:                                      ; preds = %cond.false152, %if.then143.cond.end153_crit_edge
  %i_projid = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 20
  %55 = ptrtoint ptr %i_projid to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %i_projid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %prid)
  %cmp154.not = icmp eq i32 %56, %prid
  br i1 %cmp154.not, label %if.else172, label %if.then156

if.then156:                                       ; preds = %cond.end153
  call void @xfs_iunlock(ptr noundef %ip, i32 noundef %lockflags.1) #8
  %call157 = call i32 @xfs_qm_dqget(ptr noundef %1, i32 noundef %prid, i8 noundef zeroext 2, i1 noundef zeroext true, ptr noundef nonnull %pq) #8
  %57 = zext i32 %call157 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %call157, label %if.then156.error_rele_crit_edge [
    i32 0, label %if.end171
    i32 -2, label %if.then156.error_rele.sink.split_crit_edge
  ], !prof !186

if.then156.error_rele.sink.split_crit_edge:       ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_rele.sink.split

if.then156.error_rele_crit_edge:                  ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_rele

if.end171:                                        ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %pq to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pq, align 4
  %q_qlock.i287 = getelementptr inbounds %struct.xfs_dquot, ptr %59, i32 0, i32 16
  call void @mutex_unlock(ptr noundef %q_qlock.i287) #8
  call void @xfs_ilock(ptr noundef %ip, i32 noundef 8) #8
  br label %if.end187

if.else172:                                       ; preds = %cond.end153
  %i_pdquot173 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 3
  %60 = ptrtoint ptr %i_pdquot173 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %i_pdquot173, align 4
  %tobool174.not = icmp eq ptr %61, null
  br i1 %tobool174.not, label %cond.false182, label %if.else172.cond.end183_crit_edge, !prof !177

if.else172.cond.end183_crit_edge:                 ; preds = %if.else172
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end183

cond.false182:                                    ; preds = %if.else172
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1729) #8
  br label %cond.end183

cond.end183:                                      ; preds = %cond.false182, %if.else172.cond.end183_crit_edge
  %62 = ptrtoint ptr %i_pdquot173 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i_pdquot173, align 4
  %q_qlock.i.i288 = getelementptr inbounds %struct.xfs_dquot, ptr %63, i32 0, i32 16
  call void @mutex_lock_nested(ptr noundef %q_qlock.i.i288, i32 noundef 0) #8
  %q_nrefs.i289 = getelementptr inbounds %struct.xfs_dquot, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %q_nrefs.i289 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %q_nrefs.i289, align 4
  %inc.i290 = add i32 %65, 1
  store i32 %inc.i290, ptr %q_nrefs.i289, align 4
  call void @mutex_unlock(ptr noundef %q_qlock.i.i288) #8
  %66 = ptrtoint ptr %pq to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %pq, align 4
  br label %if.end187

if.end187:                                        ; preds = %cond.end183, %if.end171, %land.lhs.true139.if.end187_crit_edge, %if.end136.if.end187_crit_edge
  %lockflags.2 = phi i32 [ 8, %if.end171 ], [ %lockflags.1, %cond.end183 ], [ %lockflags.1, %land.lhs.true139.if.end187_crit_edge ], [ %lockflags.1, %if.end136.if.end187_crit_edge ]
  call fastcc void @trace_xfs_dquot_dqalloc(ptr noundef %ip)
  call void @xfs_iunlock(ptr noundef %ip, i32 noundef %lockflags.2) #8
  %tobool188.not = icmp eq ptr %O_udqpp, null
  %67 = ptrtoint ptr %uq to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %uq, align 4
  br i1 %tobool188.not, label %if.else190, label %if.then189

if.then189:                                       ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %O_udqpp to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %O_udqpp, align 4
  br label %if.end191

if.else190:                                       ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #10
  call void @xfs_qm_dqrele(ptr noundef %68) #8
  br label %if.end191

if.end191:                                        ; preds = %if.else190, %if.then189
  %tobool192.not = icmp eq ptr %O_gdqpp, null
  %70 = ptrtoint ptr %gq to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %gq, align 4
  br i1 %tobool192.not, label %if.else194, label %if.then193

if.then193:                                       ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %O_gdqpp to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %71, ptr %O_gdqpp, align 4
  br label %if.end195

if.else194:                                       ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #10
  call void @xfs_qm_dqrele(ptr noundef %71) #8
  br label %if.end195

if.end195:                                        ; preds = %if.else194, %if.then193
  %tobool196.not = icmp eq ptr %O_pdqpp, null
  %73 = ptrtoint ptr %pq to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pq, align 4
  br i1 %tobool196.not, label %if.else198, label %if.then197

if.then197:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %O_pdqpp to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %74, ptr %O_pdqpp, align 4
  br label %cleanup

if.else198:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #10
  call void @xfs_qm_dqrele(ptr noundef %74) #8
  br label %cleanup

error_rele.sink.split:                            ; preds = %if.then156.error_rele.sink.split_crit_edge, %if.then103.error_rele.sink.split_crit_edge
  %.sink = phi i32 [ 1704, %if.then103.error_rele.sink.split_crit_edge ], [ 1722, %if.then156.error_rele.sink.split_crit_edge ]
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef %.sink) #8
  br label %error_rele

error_rele:                                       ; preds = %error_rele.sink.split, %if.then156.error_rele_crit_edge, %if.then103.error_rele_crit_edge
  %error.0 = phi i32 [ %call106, %if.then103.error_rele_crit_edge ], [ %call157, %if.then156.error_rele_crit_edge ], [ -2, %error_rele.sink.split ]
  %76 = ptrtoint ptr %gq to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %gq, align 4
  call void @xfs_qm_dqrele(ptr noundef %77) #8
  %78 = ptrtoint ptr %uq to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %uq, align 4
  call void @xfs_qm_dqrele(ptr noundef %79) #8
  br label %cleanup

cleanup:                                          ; preds = %error_rele, %if.else198, %if.then197, %cond.false64, %if.then49.cleanup_crit_edge, %if.then33, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call31, %if.then33 ], [ %error.0, %error_rele ], [ 0, %entry.cleanup_crit_edge ], [ %call52, %if.then49.cleanup_crit_edge ], [ -2, %cond.false64 ], [ 0, %if.else198 ], [ 0, %if.then197 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pq) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gq) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uq) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_qm_dqget(ptr noundef, i32 noundef, i8 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dquot_dqalloc(ptr noundef %ip) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dquot_dqalloc, i32 0, i32 1), ptr blockaddress(@trace_xfs_dquot_dqalloc, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !180

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !179

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !167) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !187
  %call42 = tail call i32 @__traceiter_xfs_dquot_dqalloc(ptr noundef null, ptr noundef %ip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !188
  %13 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !179

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !167) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dquot_dqalloc, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dquot_dqalloc, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_dquot_dqalloc.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_dquot_dqalloc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 774, ptr noundef nonnull @.str.34) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !184
  %31 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
define dso_local ptr @xfs_qm_vop_chown(ptr noundef %tp, ptr noundef %ip, ptr nocapture noundef %IO_olddq, ptr noundef %newdq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_diflags = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 24
  %0 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %i_diflags, align 2
  %2 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ip, align 8
  %m_rtdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %4, i32 0, i32 15
  %5 = ptrtoint ptr %m_rtdev_targp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m_rtdev_targp, align 64
  %tobool1.not = icmp eq ptr %6, null
  %phi.sel = select i1 %tobool1.not, i32 262144, i32 1048576
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %7 = phi i32 [ 262144, %entry.land.end_crit_edge ], [ %phi.sel, %land.rhs ]
  %call = tail call zeroext i1 @xfs_isilocked(ptr noundef %ip, i32 noundef 4) #8
  br i1 %call, label %land.end.cond.end_crit_edge, label %cond.false, !prof !179

land.end.cond.end_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1772) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %land.end.cond.end_crit_edge
  %8 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ip, align 8
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %9, i32 0, i32 60
  %10 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %m_qflags, align 4
  %and5 = and i32 %11, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %cond.false14, label %cond.end.cond.end15_crit_edge, !prof !177

cond.end.cond.end15_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end15

cond.false14:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 1773) #8
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false14, %cond.end.cond.end15_crit_edge
  %12 = ptrtoint ptr %IO_olddq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %IO_olddq, align 4
  %tobool16.not = icmp eq ptr %13, null
  br i1 %tobool16.not, label %cond.false24, label %cond.end15.cond.end25_crit_edge, !prof !177

cond.end15.cond.end25_crit_edge:                  ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end25

cond.false24:                                     ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 1777) #8
  br label %cond.end25

cond.end25:                                       ; preds = %cond.false24, %cond.end15.cond.end25_crit_edge
  %cmp.not = icmp eq ptr %13, %newdq
  br i1 %cmp.not, label %cond.false34, label %cond.end25.cond.end35_crit_edge, !prof !177

cond.end25.cond.end35_crit_edge:                  ; preds = %cond.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end35

cond.false34:                                     ; preds = %cond.end25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 1778) #8
  br label %cond.end35

cond.end35:                                       ; preds = %cond.false34, %cond.end25.cond.end35_crit_edge
  %i_nblocks = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 19
  %14 = ptrtoint ptr %i_nblocks to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %i_nblocks, align 8
  %sub = sub i64 0, %15
  tail call void @xfs_trans_mod_dquot(ptr noundef %tp, ptr noundef %13, i32 noundef %7, i64 noundef %sub) #8
  tail call void @xfs_trans_mod_dquot(ptr noundef %tp, ptr noundef %13, i32 noundef 524288, i64 noundef -1) #8
  %16 = ptrtoint ptr %i_nblocks to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_nblocks, align 8
  tail call void @xfs_trans_mod_dquot(ptr noundef %tp, ptr noundef %newdq, i32 noundef %7, i64 noundef %17) #8
  tail call void @xfs_trans_mod_dquot(ptr noundef %tp, ptr noundef %newdq, i32 noundef 524288, i64 noundef 1) #8
  %i_delayed_blks = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 17
  %18 = ptrtoint ptr %i_delayed_blks to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %i_delayed_blks, align 8
  %sub37 = sub i64 0, %19
  tail call void @xfs_trans_mod_dquot(ptr noundef %tp, ptr noundef %newdq, i32 noundef 65536, i64 noundef %sub37) #8
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 7
  %20 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %t_flags, align 4
  %or = or i32 %21, 1
  store i32 %or, ptr %t_flags, align 4
  %q_qlock.i = getelementptr inbounds %struct.xfs_dquot, ptr %13, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %q_qlock.i, i32 noundef 0) #8
  %q_blk = getelementptr inbounds %struct.xfs_dquot, ptr %13, i32 0, i32 9
  %22 = ptrtoint ptr %q_blk to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %q_blk, align 8
  %24 = ptrtoint ptr %i_delayed_blks to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %i_delayed_blks, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %25)
  %cmp39.not = icmp ult i64 %23, %25
  br i1 %cmp39.not, label %cond.false48, label %cond.end35.cond.end49_crit_edge, !prof !177

cond.end35.cond.end49_crit_edge:                  ; preds = %cond.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end49

cond.false48:                                     ; preds = %cond.end35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 1806) #8
  br label %cond.end49

cond.end49:                                       ; preds = %cond.false48, %cond.end35.cond.end49_crit_edge
  %26 = ptrtoint ptr %i_delayed_blks to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %i_delayed_blks, align 8
  %28 = ptrtoint ptr %q_blk to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %q_blk, align 8
  %sub53 = sub i64 %29, %27
  store i64 %sub53, ptr %q_blk, align 8
  tail call void @mutex_unlock(ptr noundef %q_qlock.i) #8
  %q_qlock.i.i = getelementptr inbounds %struct.xfs_dquot, ptr %newdq, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %q_qlock.i.i, i32 noundef 0) #8
  %q_nrefs.i = getelementptr inbounds %struct.xfs_dquot, ptr %newdq, i32 0, i32 5
  %30 = ptrtoint ptr %q_nrefs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %q_nrefs.i, align 4
  %inc.i = add i32 %31, 1
  store i32 %inc.i, ptr %q_nrefs.i, align 4
  tail call void @mutex_unlock(ptr noundef %q_qlock.i.i) #8
  %32 = ptrtoint ptr %IO_olddq to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %newdq, ptr %IO_olddq, align 4
  ret ptr %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_mod_dquot(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_qm_vop_rename_dqattach(ptr nocapture noundef readonly %i_tab) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i_tab to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_tab, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 60
  %4 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %m_qflags, align 4
  %and = and i32 %5, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup31_crit_edge, label %land.rhs.preheader

entry.cleanup31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup31

land.rhs.preheader:                               ; preds = %entry
  %6 = ptrtoint ptr %i_tab to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_tab, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %land.rhs.preheader.cleanup31_crit_edge, label %if.then7

land.rhs.preheader.cleanup31_crit_edge:           ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup31

if.then7:                                         ; preds = %land.rhs.preheader
  %8 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %m_qflags, align 4
  %and9 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.then7.lor.lhs.false12_crit_edge, label %land.lhs.true

if.then7.lor.lhs.false12_crit_edge:               ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false12

land.lhs.true:                                    ; preds = %if.then7
  %i_udquot = getelementptr inbounds %struct.xfs_inode, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %i_udquot to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_udquot, align 4
  %cmp11 = icmp eq ptr %11, null
  br i1 %cmp11, label %land.lhs.true.if.then24_crit_edge, label %land.lhs.true.lor.lhs.false12_crit_edge

land.lhs.true.lor.lhs.false12_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false12

land.lhs.true.if.then24_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

lor.lhs.false12:                                  ; preds = %land.lhs.true.lor.lhs.false12_crit_edge, %if.then7.lor.lhs.false12_crit_edge
  %and14 = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %lor.lhs.false12.lor.lhs.false18_crit_edge, label %land.lhs.true16

lor.lhs.false12.lor.lhs.false18_crit_edge:        ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false18

land.lhs.true16:                                  ; preds = %lor.lhs.false12
  %i_gdquot = getelementptr inbounds %struct.xfs_inode, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %i_gdquot to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_gdquot, align 8
  %cmp17 = icmp eq ptr %13, null
  br i1 %cmp17, label %land.lhs.true16.if.then24_crit_edge, label %land.lhs.true16.lor.lhs.false18_crit_edge

land.lhs.true16.lor.lhs.false18_crit_edge:        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false18

land.lhs.true16.if.then24_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

lor.lhs.false18:                                  ; preds = %land.lhs.true16.lor.lhs.false18_crit_edge, %lor.lhs.false12.lor.lhs.false18_crit_edge
  %and20 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %lor.lhs.false18.for.inc_crit_edge, label %land.lhs.true22

lor.lhs.false18.for.inc_crit_edge:                ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true22:                                  ; preds = %lor.lhs.false18
  %i_pdquot = getelementptr inbounds %struct.xfs_inode, ptr %7, i32 0, i32 3
  %14 = ptrtoint ptr %i_pdquot to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_pdquot, align 4
  %cmp23 = icmp eq ptr %15, null
  br i1 %cmp23, label %land.lhs.true22.if.then24_crit_edge, label %land.lhs.true22.for.inc_crit_edge

land.lhs.true22.for.inc_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true22.if.then24_crit_edge:              ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

if.then24:                                        ; preds = %land.lhs.true22.if.then24_crit_edge, %land.lhs.true16.if.then24_crit_edge, %land.lhs.true.if.then24_crit_edge
  %call = tail call i32 @xfs_qm_dqattach(ptr noundef nonnull %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool25.not = icmp eq i32 %call, 0
  br i1 %tobool25.not, label %if.then24.for.inc_crit_edge, label %if.then24.cleanup31_crit_edge

if.then24.cleanup31_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup31

if.then24.for.inc_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %if.then24.for.inc_crit_edge, %land.lhs.true22.for.inc_crit_edge, %lor.lhs.false18.for.inc_crit_edge
  %arrayidx1.1 = getelementptr ptr, ptr %i_tab, i32 1
  %16 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx1.1, align 4
  %tobool2.not.1 = icmp eq ptr %17, null
  br i1 %tobool2.not.1, label %for.inc.cleanup31_crit_edge, label %lor.lhs.false.1

for.inc.cleanup31_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup31

lor.lhs.false.1:                                  ; preds = %for.inc
  %18 = ptrtoint ptr %i_tab to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_tab, align 4
  %cmp6.not.1 = icmp eq ptr %17, %19
  br i1 %cmp6.not.1, label %lor.lhs.false.1.for.inc.1_crit_edge, label %if.then7.1

lor.lhs.false.1.for.inc.1_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then7.1:                                       ; preds = %lor.lhs.false.1
  %20 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %m_qflags, align 4
  %and9.1 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.1)
  %tobool10.not.1 = icmp eq i32 %and9.1, 0
  br i1 %tobool10.not.1, label %if.then7.1.lor.lhs.false12.1_crit_edge, label %land.lhs.true.1

if.then7.1.lor.lhs.false12.1_crit_edge:           ; preds = %if.then7.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false12.1

land.lhs.true.1:                                  ; preds = %if.then7.1
  %i_udquot.1 = getelementptr inbounds %struct.xfs_inode, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %i_udquot.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_udquot.1, align 4
  %cmp11.1 = icmp eq ptr %23, null
  br i1 %cmp11.1, label %land.lhs.true.1.if.then24.1_crit_edge, label %land.lhs.true.1.lor.lhs.false12.1_crit_edge

land.lhs.true.1.lor.lhs.false12.1_crit_edge:      ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false12.1

land.lhs.true.1.if.then24.1_crit_edge:            ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24.1

lor.lhs.false12.1:                                ; preds = %land.lhs.true.1.lor.lhs.false12.1_crit_edge, %if.then7.1.lor.lhs.false12.1_crit_edge
  %and14.1 = and i32 %21, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.1)
  %tobool15.not.1 = icmp eq i32 %and14.1, 0
  br i1 %tobool15.not.1, label %lor.lhs.false12.1.lor.lhs.false18.1_crit_edge, label %land.lhs.true16.1

lor.lhs.false12.1.lor.lhs.false18.1_crit_edge:    ; preds = %lor.lhs.false12.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false18.1

land.lhs.true16.1:                                ; preds = %lor.lhs.false12.1
  %i_gdquot.1 = getelementptr inbounds %struct.xfs_inode, ptr %17, i32 0, i32 2
  %24 = ptrtoint ptr %i_gdquot.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_gdquot.1, align 8
  %cmp17.1 = icmp eq ptr %25, null
  br i1 %cmp17.1, label %land.lhs.true16.1.if.then24.1_crit_edge, label %land.lhs.true16.1.lor.lhs.false18.1_crit_edge

land.lhs.true16.1.lor.lhs.false18.1_crit_edge:    ; preds = %land.lhs.true16.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false18.1

land.lhs.true16.1.if.then24.1_crit_edge:          ; preds = %land.lhs.true16.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24.1

lor.lhs.false18.1:                                ; preds = %land.lhs.true16.1.lor.lhs.false18.1_crit_edge, %lor.lhs.false12.1.lor.lhs.false18.1_crit_edge
  %and20.1 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.1)
  %tobool21.not.1 = icmp eq i32 %and20.1, 0
  br i1 %tobool21.not.1, label %lor.lhs.false18.1.for.inc.1_crit_edge, label %land.lhs.true22.1

lor.lhs.false18.1.for.inc.1_crit_edge:            ; preds = %lor.lhs.false18.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

land.lhs.true22.1:                                ; preds = %lor.lhs.false18.1
  %i_pdquot.1 = getelementptr inbounds %struct.xfs_inode, ptr %17, i32 0, i32 3
  %26 = ptrtoint ptr %i_pdquot.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_pdquot.1, align 4
  %cmp23.1 = icmp eq ptr %27, null
  br i1 %cmp23.1, label %land.lhs.true22.1.if.then24.1_crit_edge, label %land.lhs.true22.1.for.inc.1_crit_edge

land.lhs.true22.1.for.inc.1_crit_edge:            ; preds = %land.lhs.true22.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

land.lhs.true22.1.if.then24.1_crit_edge:          ; preds = %land.lhs.true22.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24.1

if.then24.1:                                      ; preds = %land.lhs.true22.1.if.then24.1_crit_edge, %land.lhs.true16.1.if.then24.1_crit_edge, %land.lhs.true.1.if.then24.1_crit_edge
  %call.1 = tail call i32 @xfs_qm_dqattach(ptr noundef nonnull %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool25.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool25.not.1, label %if.then24.1.for.inc.1_crit_edge, label %if.then24.1.cleanup31_crit_edge

if.then24.1.cleanup31_crit_edge:                  ; preds = %if.then24.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup31

if.then24.1.for.inc.1_crit_edge:                  ; preds = %if.then24.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then24.1.for.inc.1_crit_edge, %land.lhs.true22.1.for.inc.1_crit_edge, %lor.lhs.false18.1.for.inc.1_crit_edge, %lor.lhs.false.1.for.inc.1_crit_edge
  %arrayidx1.2 = getelementptr ptr, ptr %i_tab, i32 2
  %28 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx1.2, align 4
  %tobool2.not.2 = icmp eq ptr %29, null
  br i1 %tobool2.not.2, label %for.inc.1.cleanup31_crit_edge, label %lor.lhs.false.2

for.inc.1.cleanup31_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup31

lor.lhs.false.2:                                  ; preds = %for.inc.1
  %30 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx1.1, align 4
  %cmp6.not.2 = icmp eq ptr %29, %31
  br i1 %cmp6.not.2, label %lor.lhs.false.2.for.inc.2_crit_edge, label %if.then7.2

lor.lhs.false.2.for.inc.2_crit_edge:              ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.then7.2:                                       ; preds = %lor.lhs.false.2
  %32 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %m_qflags, align 4
  %and9.2 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.2)
  %tobool10.not.2 = icmp eq i32 %and9.2, 0
  br i1 %tobool10.not.2, label %if.then7.2.lor.lhs.false12.2_crit_edge, label %land.lhs.true.2

if.then7.2.lor.lhs.false12.2_crit_edge:           ; preds = %if.then7.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false12.2

land.lhs.true.2:                                  ; preds = %if.then7.2
  %i_udquot.2 = getelementptr inbounds %struct.xfs_inode, ptr %29, i32 0, i32 1
  %34 = ptrtoint ptr %i_udquot.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_udquot.2, align 4
  %cmp11.2 = icmp eq ptr %35, null
  br i1 %cmp11.2, label %land.lhs.true.2.if.then24.2_crit_edge, label %land.lhs.true.2.lor.lhs.false12.2_crit_edge

land.lhs.true.2.lor.lhs.false12.2_crit_edge:      ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false12.2

land.lhs.true.2.if.then24.2_crit_edge:            ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24.2

lor.lhs.false12.2:                                ; preds = %land.lhs.true.2.lor.lhs.false12.2_crit_edge, %if.then7.2.lor.lhs.false12.2_crit_edge
  %and14.2 = and i32 %33, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.2)
  %tobool15.not.2 = icmp eq i32 %and14.2, 0
  br i1 %tobool15.not.2, label %lor.lhs.false12.2.lor.lhs.false18.2_crit_edge, label %land.lhs.true16.2

lor.lhs.false12.2.lor.lhs.false18.2_crit_edge:    ; preds = %lor.lhs.false12.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false18.2

land.lhs.true16.2:                                ; preds = %lor.lhs.false12.2
  %i_gdquot.2 = getelementptr inbounds %struct.xfs_inode, ptr %29, i32 0, i32 2
  %36 = ptrtoint ptr %i_gdquot.2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_gdquot.2, align 8
  %cmp17.2 = icmp eq ptr %37, null
  br i1 %cmp17.2, label %land.lhs.true16.2.if.then24.2_crit_edge, label %land.lhs.true16.2.lor.lhs.false18.2_crit_edge

land.lhs.true16.2.lor.lhs.false18.2_crit_edge:    ; preds = %land.lhs.true16.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false18.2

land.lhs.true16.2.if.then24.2_crit_edge:          ; preds = %land.lhs.true16.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24.2

lor.lhs.false18.2:                                ; preds = %land.lhs.true16.2.lor.lhs.false18.2_crit_edge, %lor.lhs.false12.2.lor.lhs.false18.2_crit_edge
  %and20.2 = and i32 %33, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.2)
  %tobool21.not.2 = icmp eq i32 %and20.2, 0
  br i1 %tobool21.not.2, label %lor.lhs.false18.2.for.inc.2_crit_edge, label %land.lhs.true22.2

lor.lhs.false18.2.for.inc.2_crit_edge:            ; preds = %lor.lhs.false18.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

land.lhs.true22.2:                                ; preds = %lor.lhs.false18.2
  %i_pdquot.2 = getelementptr inbounds %struct.xfs_inode, ptr %29, i32 0, i32 3
  %38 = ptrtoint ptr %i_pdquot.2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i_pdquot.2, align 4
  %cmp23.2 = icmp eq ptr %39, null
  br i1 %cmp23.2, label %land.lhs.true22.2.if.then24.2_crit_edge, label %land.lhs.true22.2.for.inc.2_crit_edge

land.lhs.true22.2.for.inc.2_crit_edge:            ; preds = %land.lhs.true22.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

land.lhs.true22.2.if.then24.2_crit_edge:          ; preds = %land.lhs.true22.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24.2

if.then24.2:                                      ; preds = %land.lhs.true22.2.if.then24.2_crit_edge, %land.lhs.true16.2.if.then24.2_crit_edge, %land.lhs.true.2.if.then24.2_crit_edge
  %call.2 = tail call i32 @xfs_qm_dqattach(ptr noundef nonnull %29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool25.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool25.not.2, label %if.then24.2.for.inc.2_crit_edge, label %if.then24.2.cleanup31_crit_edge

if.then24.2.cleanup31_crit_edge:                  ; preds = %if.then24.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup31

if.then24.2.for.inc.2_crit_edge:                  ; preds = %if.then24.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then24.2.for.inc.2_crit_edge, %land.lhs.true22.2.for.inc.2_crit_edge, %lor.lhs.false18.2.for.inc.2_crit_edge, %lor.lhs.false.2.for.inc.2_crit_edge
  %arrayidx1.3 = getelementptr ptr, ptr %i_tab, i32 3
  %40 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx1.3, align 4
  %tobool2.not.3 = icmp eq ptr %41, null
  br i1 %tobool2.not.3, label %for.inc.2.cleanup31_crit_edge, label %lor.lhs.false.3

for.inc.2.cleanup31_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup31

lor.lhs.false.3:                                  ; preds = %for.inc.2
  %42 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx1.2, align 4
  %cmp6.not.3 = icmp eq ptr %41, %43
  br i1 %cmp6.not.3, label %lor.lhs.false.3.for.inc.3_crit_edge, label %if.then7.3

lor.lhs.false.3.for.inc.3_crit_edge:              ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.then7.3:                                       ; preds = %lor.lhs.false.3
  %44 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %m_qflags, align 4
  %and9.3 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.3)
  %tobool10.not.3 = icmp eq i32 %and9.3, 0
  br i1 %tobool10.not.3, label %if.then7.3.lor.lhs.false12.3_crit_edge, label %land.lhs.true.3

if.then7.3.lor.lhs.false12.3_crit_edge:           ; preds = %if.then7.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false12.3

land.lhs.true.3:                                  ; preds = %if.then7.3
  %i_udquot.3 = getelementptr inbounds %struct.xfs_inode, ptr %41, i32 0, i32 1
  %46 = ptrtoint ptr %i_udquot.3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %i_udquot.3, align 4
  %cmp11.3 = icmp eq ptr %47, null
  br i1 %cmp11.3, label %land.lhs.true.3.if.then24.3_crit_edge, label %land.lhs.true.3.lor.lhs.false12.3_crit_edge

land.lhs.true.3.lor.lhs.false12.3_crit_edge:      ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false12.3

land.lhs.true.3.if.then24.3_crit_edge:            ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24.3

lor.lhs.false12.3:                                ; preds = %land.lhs.true.3.lor.lhs.false12.3_crit_edge, %if.then7.3.lor.lhs.false12.3_crit_edge
  %and14.3 = and i32 %45, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.3)
  %tobool15.not.3 = icmp eq i32 %and14.3, 0
  br i1 %tobool15.not.3, label %lor.lhs.false12.3.lor.lhs.false18.3_crit_edge, label %land.lhs.true16.3

lor.lhs.false12.3.lor.lhs.false18.3_crit_edge:    ; preds = %lor.lhs.false12.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false18.3

land.lhs.true16.3:                                ; preds = %lor.lhs.false12.3
  %i_gdquot.3 = getelementptr inbounds %struct.xfs_inode, ptr %41, i32 0, i32 2
  %48 = ptrtoint ptr %i_gdquot.3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i_gdquot.3, align 8
  %cmp17.3 = icmp eq ptr %49, null
  br i1 %cmp17.3, label %land.lhs.true16.3.if.then24.3_crit_edge, label %land.lhs.true16.3.lor.lhs.false18.3_crit_edge

land.lhs.true16.3.lor.lhs.false18.3_crit_edge:    ; preds = %land.lhs.true16.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false18.3

land.lhs.true16.3.if.then24.3_crit_edge:          ; preds = %land.lhs.true16.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24.3

lor.lhs.false18.3:                                ; preds = %land.lhs.true16.3.lor.lhs.false18.3_crit_edge, %lor.lhs.false12.3.lor.lhs.false18.3_crit_edge
  %and20.3 = and i32 %45, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.3)
  %tobool21.not.3 = icmp eq i32 %and20.3, 0
  br i1 %tobool21.not.3, label %lor.lhs.false18.3.for.inc.3_crit_edge, label %land.lhs.true22.3

lor.lhs.false18.3.for.inc.3_crit_edge:            ; preds = %lor.lhs.false18.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

land.lhs.true22.3:                                ; preds = %lor.lhs.false18.3
  %i_pdquot.3 = getelementptr inbounds %struct.xfs_inode, ptr %41, i32 0, i32 3
  %50 = ptrtoint ptr %i_pdquot.3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i_pdquot.3, align 4
  %cmp23.3 = icmp eq ptr %51, null
  br i1 %cmp23.3, label %land.lhs.true22.3.if.then24.3_crit_edge, label %land.lhs.true22.3.for.inc.3_crit_edge

land.lhs.true22.3.for.inc.3_crit_edge:            ; preds = %land.lhs.true22.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

land.lhs.true22.3.if.then24.3_crit_edge:          ; preds = %land.lhs.true22.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24.3

if.then24.3:                                      ; preds = %land.lhs.true22.3.if.then24.3_crit_edge, %land.lhs.true16.3.if.then24.3_crit_edge, %land.lhs.true.3.if.then24.3_crit_edge
  %call.3 = tail call i32 @xfs_qm_dqattach(ptr noundef nonnull %41)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool25.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool25.not.3, label %if.then24.3.for.inc.3_crit_edge, label %if.then24.3.cleanup31_crit_edge

if.then24.3.cleanup31_crit_edge:                  ; preds = %if.then24.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup31

if.then24.3.for.inc.3_crit_edge:                  ; preds = %if.then24.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then24.3.for.inc.3_crit_edge, %land.lhs.true22.3.for.inc.3_crit_edge, %lor.lhs.false18.3.for.inc.3_crit_edge, %lor.lhs.false.3.for.inc.3_crit_edge
  br label %cleanup31

cleanup31:                                        ; preds = %for.inc.3, %if.then24.3.cleanup31_crit_edge, %for.inc.2.cleanup31_crit_edge, %if.then24.2.cleanup31_crit_edge, %for.inc.1.cleanup31_crit_edge, %if.then24.1.cleanup31_crit_edge, %for.inc.cleanup31_crit_edge, %if.then24.cleanup31_crit_edge, %land.rhs.preheader.cleanup31_crit_edge, %entry.cleanup31_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup31_crit_edge ], [ 0, %land.rhs.preheader.cleanup31_crit_edge ], [ %call, %if.then24.cleanup31_crit_edge ], [ 0, %for.inc.cleanup31_crit_edge ], [ %call.1, %if.then24.1.cleanup31_crit_edge ], [ 0, %for.inc.1.cleanup31_crit_edge ], [ %call.2, %if.then24.2.cleanup31_crit_edge ], [ 0, %for.inc.2.cleanup31_crit_edge ], [ %call.3, %if.then24.3.cleanup31_crit_edge ], [ 0, %for.inc.3 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_qm_vop_create_dqattach(ptr noundef %tp, ptr noundef %ip, ptr noundef %udqp, ptr noundef %gdqp, ptr noundef %pdqp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call zeroext i1 @xfs_isilocked(ptr noundef %ip, i32 noundef 4) #8
  br i1 %call, label %if.end.cond.end_crit_edge, label %cond.false, !prof !179

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1860) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %tobool3.not = icmp eq ptr %udqp, null
  br i1 %tobool3.not, label %cond.end.if.end31_crit_edge, label %land.lhs.true

cond.end.if.end31_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

land.lhs.true:                                    ; preds = %cond.end
  %4 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %m_qflags, align 4
  %and5 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end31_crit_edge, label %if.then7

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then7:                                         ; preds = %land.lhs.true
  %i_udquot = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 1
  %6 = ptrtoint ptr %i_udquot to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_udquot, align 4
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %if.then7.cond.end16_crit_edge, label %cond.false15, !prof !179

if.then7.cond.end16_crit_edge:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end16

cond.false15:                                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 1863) #8
  br label %cond.end16

cond.end16:                                       ; preds = %cond.false15, %if.then7.cond.end16_crit_edge
  %i_sb.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 8
  %8 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 53
  %10 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_uid.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 2
  %12 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %13 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call1.i = tail call i32 @from_kuid(ptr noundef %11, [1 x i32] %13) #8
  %q_id = getelementptr inbounds %struct.xfs_dquot, ptr %udqp, i32 0, i32 4
  %14 = ptrtoint ptr %q_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %q_id, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i, i32 %15)
  %cmp19 = icmp eq i32 %call1.i, %15
  br i1 %cmp19, label %cond.end16.cond.end28_crit_edge, label %cond.false27, !prof !179

cond.end16.cond.end28_crit_edge:                  ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end28

cond.false27:                                     ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 1864) #8
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false27, %cond.end16.cond.end28_crit_edge
  %q_qlock.i.i = getelementptr inbounds %struct.xfs_dquot, ptr %udqp, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %q_qlock.i.i, i32 noundef 0) #8
  %q_nrefs.i = getelementptr inbounds %struct.xfs_dquot, ptr %udqp, i32 0, i32 5
  %16 = ptrtoint ptr %q_nrefs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %q_nrefs.i, align 4
  %inc.i = add i32 %17, 1
  store i32 %inc.i, ptr %q_nrefs.i, align 4
  tail call void @mutex_unlock(ptr noundef %q_qlock.i.i) #8
  %18 = ptrtoint ptr %i_udquot to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %udqp, ptr %i_udquot, align 4
  tail call void @xfs_trans_mod_dquot(ptr noundef %tp, ptr noundef nonnull %udqp, i32 noundef 524288, i64 noundef 1) #8
  br label %if.end31

if.end31:                                         ; preds = %cond.end28, %land.lhs.true.if.end31_crit_edge, %cond.end.if.end31_crit_edge
  %tobool32.not = icmp eq ptr %gdqp, null
  br i1 %tobool32.not, label %if.end31.if.end63_crit_edge, label %land.lhs.true33

if.end31.if.end63_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

land.lhs.true33:                                  ; preds = %if.end31
  %19 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %m_qflags, align 4
  %and35 = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %land.lhs.true33.if.end63_crit_edge, label %if.then37

land.lhs.true33.if.end63_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then37:                                        ; preds = %land.lhs.true33
  %i_gdquot = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 2
  %21 = ptrtoint ptr %i_gdquot to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_gdquot, align 8
  %cmp38 = icmp eq ptr %22, null
  br i1 %cmp38, label %if.then37.cond.end47_crit_edge, label %cond.false46, !prof !179

if.then37.cond.end47_crit_edge:                   ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end47

cond.false46:                                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 1870) #8
  br label %cond.end47

cond.end47:                                       ; preds = %cond.false46, %if.then37.cond.end47_crit_edge
  %i_sb.i.i119 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 8
  %23 = ptrtoint ptr %i_sb.i.i119 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb.i.i119, align 4
  %s_user_ns.i.i120 = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 53
  %25 = ptrtoint ptr %s_user_ns.i.i120 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_user_ns.i.i120, align 8
  %i_gid.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 3
  %27 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.unpack.i121 = load i32, ptr %i_gid.i, align 8
  %28 = insertvalue [1 x i32] undef, i32 %.unpack.i121, 0
  %call1.i122 = tail call i32 @from_kgid(ptr noundef %26, [1 x i32] %28) #8
  %q_id50 = getelementptr inbounds %struct.xfs_dquot, ptr %gdqp, i32 0, i32 4
  %29 = ptrtoint ptr %q_id50 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %q_id50, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i122, i32 %30)
  %cmp51 = icmp eq i32 %call1.i122, %30
  br i1 %cmp51, label %cond.end47.cond.end60_crit_edge, label %cond.false59, !prof !179

cond.end47.cond.end60_crit_edge:                  ; preds = %cond.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end60

cond.false59:                                     ; preds = %cond.end47
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1, i32 noundef 1871) #8
  br label %cond.end60

cond.end60:                                       ; preds = %cond.false59, %cond.end47.cond.end60_crit_edge
  %q_qlock.i.i123 = getelementptr inbounds %struct.xfs_dquot, ptr %gdqp, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %q_qlock.i.i123, i32 noundef 0) #8
  %q_nrefs.i124 = getelementptr inbounds %struct.xfs_dquot, ptr %gdqp, i32 0, i32 5
  %31 = ptrtoint ptr %q_nrefs.i124 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %q_nrefs.i124, align 4
  %inc.i125 = add i32 %32, 1
  store i32 %inc.i125, ptr %q_nrefs.i124, align 4
  tail call void @mutex_unlock(ptr noundef %q_qlock.i.i123) #8
  %33 = ptrtoint ptr %i_gdquot to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %gdqp, ptr %i_gdquot, align 8
  tail call void @xfs_trans_mod_dquot(ptr noundef %tp, ptr noundef nonnull %gdqp, i32 noundef 524288, i64 noundef 1) #8
  br label %if.end63

if.end63:                                         ; preds = %cond.end60, %land.lhs.true33.if.end63_crit_edge, %if.end31.if.end63_crit_edge
  %tobool64.not = icmp eq ptr %pdqp, null
  br i1 %tobool64.not, label %if.end63.cleanup_crit_edge, label %land.lhs.true65

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true65:                                  ; preds = %if.end63
  %34 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %m_qflags, align 4
  %and67 = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %land.lhs.true65.cleanup_crit_edge, label %if.then69

land.lhs.true65.cleanup_crit_edge:                ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then69:                                        ; preds = %land.lhs.true65
  %i_pdquot = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 3
  %36 = ptrtoint ptr %i_pdquot to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_pdquot, align 4
  %cmp70 = icmp eq ptr %37, null
  br i1 %cmp70, label %if.then69.cond.end79_crit_edge, label %cond.false78, !prof !179

if.then69.cond.end79_crit_edge:                   ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end79

cond.false78:                                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 1877) #8
  br label %cond.end79

cond.end79:                                       ; preds = %cond.false78, %if.then69.cond.end79_crit_edge
  %i_projid = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 20
  %38 = ptrtoint ptr %i_projid to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %i_projid, align 8
  %q_id80 = getelementptr inbounds %struct.xfs_dquot, ptr %pdqp, i32 0, i32 4
  %40 = ptrtoint ptr %q_id80 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %q_id80, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp81 = icmp eq i32 %39, %41
  br i1 %cmp81, label %cond.end79.cond.end90_crit_edge, label %cond.false89, !prof !179

cond.end79.cond.end90_crit_edge:                  ; preds = %cond.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end90

cond.false89:                                     ; preds = %cond.end79
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1, i32 noundef 1878) #8
  br label %cond.end90

cond.end90:                                       ; preds = %cond.false89, %cond.end79.cond.end90_crit_edge
  %q_qlock.i.i126 = getelementptr inbounds %struct.xfs_dquot, ptr %pdqp, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %q_qlock.i.i126, i32 noundef 0) #8
  %q_nrefs.i127 = getelementptr inbounds %struct.xfs_dquot, ptr %pdqp, i32 0, i32 5
  %42 = ptrtoint ptr %q_nrefs.i127 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %q_nrefs.i127, align 4
  %inc.i128 = add i32 %43, 1
  store i32 %inc.i128, ptr %q_nrefs.i127, align 4
  tail call void @mutex_unlock(ptr noundef %q_qlock.i.i126) #8
  %44 = ptrtoint ptr %i_pdquot to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %pdqp, ptr %i_pdquot, align 4
  tail call void @xfs_trans_mod_dquot(ptr noundef %tp, ptr noundef nonnull %pdqp, i32 noundef 524288, i64 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end90, %land.lhs.true65.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @xfs_inode_near_dquot_enforcement(ptr nocapture noundef readonly %ip, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.67)
  switch i8 %type, label %entry.cleanup_crit_edge [
    i8 1, label %sw.bb.i
    i8 4, label %sw.bb1.i
    i8 2, label %sw.bb2.i
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i_udquot.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 1
  br label %xfs_inode_dquot.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i_gdquot.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 2
  br label %xfs_inode_dquot.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i_pdquot.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 3
  br label %xfs_inode_dquot.exit

xfs_inode_dquot.exit:                             ; preds = %sw.bb2.i, %sw.bb1.i, %sw.bb.i
  %retval.0.i.in = phi ptr [ %i_pdquot.i, %sw.bb2.i ], [ %i_gdquot.i, %sw.bb1.i ], [ %i_udquot.i, %sw.bb.i ]
  %1 = ptrtoint ptr %retval.0.i.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %retval.0.i = load ptr, ptr %retval.0.i.in, align 4
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %xfs_inode_dquot.exit.cleanup_crit_edge, label %lor.lhs.false

xfs_inode_dquot.exit.cleanup_crit_edge:           ; preds = %xfs_inode_dquot.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %xfs_inode_dquot.exit
  %q_type.i.i = getelementptr inbounds %struct.xfs_dquot, ptr %retval.0.i, i32 0, i32 2
  %2 = ptrtoint ptr %q_type.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %q_type.i.i, align 4
  %4 = and i8 %3, 7
  %and.i.i = zext i8 %4 to i32
  %5 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %and.i.i, label %xfs_dquot_is_enforced.exit.thread [
    i32 1, label %xfs_dquot_is_enforced.exit
    i32 4, label %sw.bb1.i38
    i32 2, label %sw.bb6.i
  ]

sw.bb1.i38:                                       ; preds = %lor.lhs.false
  %q_mount2.i = getelementptr inbounds %struct.xfs_dquot, ptr %retval.0.i, i32 0, i32 1
  %6 = ptrtoint ptr %q_mount2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %q_mount2.i, align 8
  %m_qflags3.i = getelementptr inbounds %struct.xfs_mount, ptr %7, i32 0, i32 60
  %8 = ptrtoint ptr %m_qflags3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %m_qflags3.i, align 4
  %and4.i = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.i.not = icmp eq i32 %and4.i, 0
  br i1 %tobool5.i.not, label %sw.bb1.i38.cleanup_crit_edge, label %sw.bb1.i38.if.end_crit_edge

sw.bb1.i38.if.end_crit_edge:                      ; preds = %sw.bb1.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

sw.bb1.i38.cleanup_crit_edge:                     ; preds = %sw.bb1.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb6.i:                                         ; preds = %lor.lhs.false
  %q_mount7.i = getelementptr inbounds %struct.xfs_dquot, ptr %retval.0.i, i32 0, i32 1
  %10 = ptrtoint ptr %q_mount7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %q_mount7.i, align 8
  %m_qflags8.i = getelementptr inbounds %struct.xfs_mount, ptr %11, i32 0, i32 60
  %12 = ptrtoint ptr %m_qflags8.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %m_qflags8.i, align 4
  %and9.i = and i32 %13, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.i.not = icmp eq i32 %and9.i, 0
  br i1 %tobool10.i.not, label %sw.bb6.i.cleanup_crit_edge, label %sw.bb6.i.if.end_crit_edge

sw.bb6.i.if.end_crit_edge:                        ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

sw.bb6.i.cleanup_crit_edge:                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

xfs_dquot_is_enforced.exit.thread:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.64, i32 noundef 190) #8
  br label %cleanup

xfs_dquot_is_enforced.exit:                       ; preds = %lor.lhs.false
  %q_mount.i = getelementptr inbounds %struct.xfs_dquot, ptr %retval.0.i, i32 0, i32 1
  %14 = ptrtoint ptr %q_mount.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %q_mount.i, align 8
  %m_qflags.i = getelementptr inbounds %struct.xfs_mount, ptr %15, i32 0, i32 60
  %16 = ptrtoint ptr %m_qflags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %m_qflags.i, align 4
  %and.i = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %xfs_dquot_is_enforced.exit.cleanup_crit_edge, label %xfs_dquot_is_enforced.exit.if.end_crit_edge

xfs_dquot_is_enforced.exit.if.end_crit_edge:      ; preds = %xfs_dquot_is_enforced.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

xfs_dquot_is_enforced.exit.cleanup_crit_edge:     ; preds = %xfs_dquot_is_enforced.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %xfs_dquot_is_enforced.exit.if.end_crit_edge, %sw.bb6.i.if.end_crit_edge, %sw.bb1.i38.if.end_crit_edge
  %q_ino = getelementptr inbounds %struct.xfs_dquot, ptr %retval.0.i, i32 0, i32 10
  %softlimit.i = getelementptr inbounds %struct.xfs_dquot, ptr %retval.0.i, i32 0, i32 10, i32 3
  %18 = ptrtoint ptr %softlimit.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %softlimit.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool.not.i = icmp eq i64 %19, 0
  br i1 %tobool.not.i, label %if.end.lor.lhs.false.i_crit_edge, label %land.lhs.true.i

if.end.lor.lhs.false.i_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %if.end
  %20 = ptrtoint ptr %q_ino to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %q_ino, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %21)
  %cmp.i = icmp ult i64 %19, %21
  br i1 %cmp.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.lor.lhs.false.i_crit_edge

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i.lor.lhs.false.i_crit_edge, %if.end.lor.lhs.false.i_crit_edge
  %hardlimit.i = getelementptr inbounds %struct.xfs_dquot, ptr %retval.0.i, i32 0, i32 10, i32 2
  %22 = ptrtoint ptr %hardlimit.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %hardlimit.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %tobool2.not.i = icmp eq i64 %23, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.lor.lhs.false3_crit_edge, label %land.lhs.true3.i

lor.lhs.false.i.lor.lhs.false3_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false3

land.lhs.true3.i:                                 ; preds = %lor.lhs.false.i
  %24 = ptrtoint ptr %q_ino to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %q_ino, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %25)
  %cmp6.i = icmp ult i64 %23, %25
  br i1 %cmp6.i, label %land.lhs.true3.i.cleanup_crit_edge, label %land.lhs.true3.i.lor.lhs.false3_crit_edge

land.lhs.true3.i.lor.lhs.false3_crit_edge:        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false3

land.lhs.true3.i.cleanup_crit_edge:               ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false3:                                   ; preds = %land.lhs.true3.i.lor.lhs.false3_crit_edge, %lor.lhs.false.i.lor.lhs.false3_crit_edge
  %q_rtb = getelementptr inbounds %struct.xfs_dquot, ptr %retval.0.i, i32 0, i32 11
  %softlimit.i41 = getelementptr inbounds %struct.xfs_dquot, ptr %retval.0.i, i32 0, i32 11, i32 3
  %26 = ptrtoint ptr %softlimit.i41 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %softlimit.i41, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %tobool.not.i42 = icmp eq i64 %27, 0
  br i1 %tobool.not.i42, label %lor.lhs.false3.lor.lhs.false.i47_crit_edge, label %land.lhs.true.i44

lor.lhs.false3.lor.lhs.false.i47_crit_edge:       ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i47

land.lhs.true.i44:                                ; preds = %lor.lhs.false3
  %28 = ptrtoint ptr %q_rtb to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %q_rtb, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %29)
  %cmp.i43 = icmp ult i64 %27, %29
  br i1 %cmp.i43, label %land.lhs.true.i44.cleanup_crit_edge, label %land.lhs.true.i44.lor.lhs.false.i47_crit_edge

land.lhs.true.i44.lor.lhs.false.i47_crit_edge:    ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i47

land.lhs.true.i44.cleanup_crit_edge:              ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i47:                                ; preds = %land.lhs.true.i44.lor.lhs.false.i47_crit_edge, %lor.lhs.false3.lor.lhs.false.i47_crit_edge
  %hardlimit.i45 = getelementptr inbounds %struct.xfs_dquot, ptr %retval.0.i, i32 0, i32 11, i32 2
  %30 = ptrtoint ptr %hardlimit.i45 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %hardlimit.i45, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %31)
  %tobool2.not.i46 = icmp eq i64 %31, 0
  br i1 %tobool2.not.i46, label %lor.lhs.false.i47.if.end6_crit_edge, label %land.lhs.true3.i49

lor.lhs.false.i47.if.end6_crit_edge:              ; preds = %lor.lhs.false.i47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

land.lhs.true3.i49:                               ; preds = %lor.lhs.false.i47
  %32 = ptrtoint ptr %q_rtb to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %q_rtb, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %33)
  %cmp6.i48 = icmp ult i64 %31, %33
  br i1 %cmp6.i48, label %land.lhs.true3.i49.cleanup_crit_edge, label %land.lhs.true3.i49.if.end6_crit_edge

land.lhs.true3.i49.if.end6_crit_edge:             ; preds = %land.lhs.true3.i49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

land.lhs.true3.i49.cleanup_crit_edge:             ; preds = %land.lhs.true3.i49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true3.i49.if.end6_crit_edge, %lor.lhs.false.i47.if.end6_crit_edge
  %q_prealloc_hi_wmark = getelementptr inbounds %struct.xfs_dquot, ptr %retval.0.i, i32 0, i32 14
  %34 = ptrtoint ptr %q_prealloc_hi_wmark to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %q_prealloc_hi_wmark, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %35)
  %tobool7.not = icmp eq i64 %35, 0
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %q_blk = getelementptr inbounds %struct.xfs_dquot, ptr %retval.0.i, i32 0, i32 9
  %36 = ptrtoint ptr %q_blk to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %q_blk, align 8
  %q_prealloc_lo_wmark = getelementptr inbounds %struct.xfs_dquot, ptr %retval.0.i, i32 0, i32 13
  %38 = ptrtoint ptr %q_prealloc_lo_wmark to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %q_prealloc_lo_wmark, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %39)
  %cmp = icmp ult i64 %37, %39
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %37)
  %cmp15.not = icmp ugt i64 %35, %37
  br i1 %cmp15.not, label %if.end17, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i64 %35, %37
  %arrayidx = getelementptr %struct.xfs_dquot, ptr %retval.0.i, i32 0, i32 15, i32 2
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %41)
  %cmp21 = icmp slt i64 %sub, %41
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end11.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %land.lhs.true3.i49.cleanup_crit_edge, %land.lhs.true.i44.cleanup_crit_edge, %land.lhs.true3.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %xfs_dquot_is_enforced.exit.cleanup_crit_edge, %xfs_dquot_is_enforced.exit.thread, %sw.bb6.i.cleanup_crit_edge, %sw.bb1.i38.cleanup_crit_edge, %xfs_inode_dquot.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %xfs_dquot_is_enforced.exit.cleanup_crit_edge ], [ false, %xfs_inode_dquot.exit.cleanup_crit_edge ], [ false, %if.end6.cleanup_crit_edge ], [ false, %if.end9.cleanup_crit_edge ], [ true, %if.end11.cleanup_crit_edge ], [ %cmp21, %if.end17 ], [ false, %xfs_dquot_is_enforced.exit.thread ], [ false, %sw.bb6.i.cleanup_crit_edge ], [ false, %sw.bb1.i38.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ true, %land.lhs.true3.i.cleanup_crit_edge ], [ true, %land.lhs.true.i.cleanup_crit_edge ], [ true, %land.lhs.true3.i49.cleanup_crit_edge ], [ true, %land.lhs.true.i44.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_qm_dquot_walk(ptr nocapture noundef readonly %mp, i8 noundef zeroext %type, ptr nocapture noundef readonly %execute, ptr noundef %data) unnamed_addr #3 align 64 {
entry:
  %batch = alloca [32 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %m_quotainfo = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 12
  %0 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_quotainfo, align 4
  %2 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.69)
  switch i8 %type, label %sw.default.i [
    i8 1, label %entry.xfs_dquot_tree.exit_crit_edge
    i8 4, label %sw.bb1.i
    i8 2, label %sw.bb2.i
  ]

entry.xfs_dquot_tree.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dquot_tree.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %qi_gquota_tree.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %1, i32 0, i32 1
  br label %xfs_dquot_tree.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %qi_pquota_tree.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %1, i32 0, i32 2
  br label %xfs_dquot_tree.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 87) #8
  br label %xfs_dquot_tree.exit

xfs_dquot_tree.exit:                              ; preds = %sw.default.i, %sw.bb2.i, %sw.bb1.i, %entry.xfs_dquot_tree.exit_crit_edge
  %retval.0.i = phi ptr [ null, %sw.default.i ], [ %qi_pquota_tree.i, %sw.bb2.i ], [ %qi_gquota_tree.i, %sw.bb1.i ], [ %1, %entry.xfs_dquot_tree.exit_crit_edge ]
  %qi_tree_lock = getelementptr inbounds %struct.xfs_quotainfo, ptr %1, i32 0, i32 3
  br label %restart

restart:                                          ; preds = %if.then26, %xfs_dquot_tree.exit
  %last_error.0 = phi i32 [ 0, %xfs_dquot_tree.exit ], [ %last_error.5.ph, %if.then26 ]
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %batch) #8
  %3 = call ptr @memset(ptr %batch, i32 255, i32 128)
  call void @mutex_lock_nested(ptr noundef %qi_tree_lock, i32 noundef 0) #8
  %call172 = call i32 @radix_tree_gang_lookup(ptr noundef %retval.0.i, ptr noundef nonnull %batch, i32 noundef 0, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %tobool.not73 = icmp eq i32 %call172, 0
  br i1 %tobool.not73, label %restart.if.then_crit_edge, label %restart.for.cond.preheader_crit_edge

restart.for.cond.preheader_crit_edge:             ; preds = %restart
  br label %for.cond.preheader

restart.if.then_crit_edge:                        ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.cond.preheader:                               ; preds = %cleanup20.for.cond.preheader_crit_edge, %restart.for.cond.preheader_crit_edge
  %call177 = phi i32 [ %call1, %cleanup20.for.cond.preheader_crit_edge ], [ %call172, %restart.for.cond.preheader_crit_edge ]
  %skipped.076 = phi i32 [ %skipped.1.lcssa, %cleanup20.for.cond.preheader_crit_edge ], [ 0, %restart.for.cond.preheader_crit_edge ]
  %last_error.175 = phi i32 [ %last_error.2.lcssa, %cleanup20.for.cond.preheader_crit_edge ], [ %last_error.0, %restart.for.cond.preheader_crit_edge ]
  %next_index.074 = phi i32 [ %next_index.1.lcssa, %cleanup20.for.cond.preheader_crit_edge ], [ 0, %restart.for.cond.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %cmp66 = icmp sgt i32 %call177, 0
  br i1 %cmp66, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then:                                          ; preds = %cleanup20.if.then_crit_edge, %restart.if.then_crit_edge
  %last_error.1.lcssa = phi i32 [ %last_error.0, %restart.if.then_crit_edge ], [ %last_error.2.lcssa, %cleanup20.if.then_crit_edge ]
  %skipped.0.lcssa = phi i32 [ 0, %restart.if.then_crit_edge ], [ %skipped.1.lcssa, %cleanup20.if.then_crit_edge ]
  call void @mutex_unlock(ptr noundef %qi_tree_lock) #8
  br label %while.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.069 = phi i32 [ %inc12, %cleanup.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %skipped.168 = phi i32 [ %skipped.2, %cleanup.for.body_crit_edge ], [ %skipped.076, %for.cond.preheader.for.body_crit_edge ]
  %last_error.267 = phi i32 [ %last_error.4, %cleanup.for.body_crit_edge ], [ %last_error.175, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x ptr], ptr %batch, i32 0, i32 %i.069
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %q_id = getelementptr inbounds %struct.xfs_dquot, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %q_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %q_id, align 8
  %call4 = call i32 %execute(ptr noundef %5, ptr noundef %data) #8, !callees !189
  %8 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %call4, label %land.lhs.true [
    i32 -11, label %if.then6
    i32 0, label %for.body.cleanup_crit_edge
  ]

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add i32 %skipped.168, 1
  br label %cleanup

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -117, i32 %last_error.267)
  %cmp9.not = icmp eq i32 %last_error.267, -117
  %spec.select = select i1 %cmp9.not, i32 -117, i32 %call4
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.then6, %for.body.cleanup_crit_edge
  %last_error.4 = phi i32 [ %last_error.267, %if.then6 ], [ %last_error.267, %for.body.cleanup_crit_edge ], [ %spec.select, %land.lhs.true ]
  %skipped.2 = phi i32 [ %inc, %if.then6 ], [ %skipped.168, %for.body.cleanup_crit_edge ], [ %skipped.168, %land.lhs.true ]
  %inc12 = add nuw nsw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc12, %call177
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  %add.le = add i32 %7, 1
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %next_index.1.lcssa = phi i32 [ %add.le, %for.cond.for.end_crit_edge ], [ %next_index.074, %for.cond.preheader.for.end_crit_edge ]
  %last_error.2.lcssa = phi i32 [ %last_error.4, %for.cond.for.end_crit_edge ], [ %last_error.175, %for.cond.preheader.for.end_crit_edge ]
  %skipped.1.lcssa = phi i32 [ %skipped.2, %for.cond.for.end_crit_edge ], [ %skipped.076, %for.cond.preheader.for.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %qi_tree_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -117, i32 %last_error.2.lcssa)
  %cmp14 = icmp eq i32 %last_error.2.lcssa, -117
  br i1 %cmp14, label %while.end.thread, label %if.end16

while.end.thread:                                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %batch) #8
  br label %if.end27

if.end16:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %next_index.1.lcssa)
  %tobool17.not = icmp eq i32 %next_index.1.lcssa, 0
  br i1 %tobool17.not, label %if.end16.while.end_crit_edge, label %cleanup20

if.end16.while.end_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

cleanup20:                                        ; preds = %if.end16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %batch) #8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %batch) #8
  %9 = call ptr @memset(ptr %batch, i32 255, i32 128)
  call void @mutex_lock_nested(ptr noundef %qi_tree_lock, i32 noundef 0) #8
  %call1 = call i32 @radix_tree_gang_lookup(ptr noundef %retval.0.i, ptr noundef nonnull %batch, i32 noundef %next_index.1.lcssa, i32 noundef 32) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup20.if.then_crit_edge, label %cleanup20.for.cond.preheader_crit_edge

cleanup20.for.cond.preheader_crit_edge:           ; preds = %cleanup20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader

cleanup20.if.then_crit_edge:                      ; preds = %cleanup20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

while.end:                                        ; preds = %if.end16.while.end_crit_edge, %if.then
  %last_error.5.ph = phi i32 [ %last_error.1.lcssa, %if.then ], [ %last_error.2.lcssa, %if.end16.while.end_crit_edge ]
  %skipped.3.ph = phi i32 [ %skipped.0.lcssa, %if.then ], [ %skipped.1.lcssa, %if.end16.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %batch) #8
  %tobool25.not = icmp eq i32 %skipped.3.ph, 0
  br i1 %tobool25.not, label %while.end.if.end27_crit_edge, label %if.then26

while.end.if.end27_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then26:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #8
  br label %restart

if.end27:                                         ; preds = %while.end.if.end27_crit_edge, %while.end.thread
  %last_error.5.ph57 = phi i32 [ -117, %while.end.thread ], [ %last_error.5.ph, %while.end.if.end27_crit_edge ]
  ret i32 %last_error.5.ph57
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_qm_dqpurge(ptr noundef %dqp, ptr nocapture noundef readnone %data) #3 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %q_mount = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 1
  %0 = ptrtoint ptr %q_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q_mount, align 8
  %m_quotainfo = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_quotainfo, align 4
  %q_qlock.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %q_qlock.i, i32 noundef 0) #8
  %q_flags = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 3
  %4 = ptrtoint ptr %q_flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %q_flags, align 2
  %6 = and i16 %5, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.out_unlock_crit_edge

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

lor.lhs.false:                                    ; preds = %entry
  %q_nrefs = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 5
  %7 = ptrtoint ptr %q_nrefs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %q_nrefs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.out_unlock_crit_edge

lor.lhs.false.out_unlock_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end:                                           ; preds = %lor.lhs.false
  %or = or i16 %5, 2
  %9 = ptrtoint ptr %q_flags to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %or, ptr %q_flags, align 2
  %q_flush.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 17
  tail call void @wait_for_completion(ptr noundef %q_flush.i) #8
  %10 = ptrtoint ptr %q_flags to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %q_flags, align 2
  %12 = and i16 %11, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool8.not = icmp eq i16 %12, 0
  br i1 %tobool8.not, label %if.end.if.end22_crit_edge, label %if.then9

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then9:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #8
  %13 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %bp, align 4
  %call = call i32 @xfs_qm_dqflush(ptr noundef %dqp, ptr noundef nonnull %bp) #8
  %14 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %call, label %if.then9.cleanup.thread_crit_edge [
    i32 0, label %if.then11
    i32 -11, label %cleanup
  ]

if.then9.cleanup.thread_crit_edge:                ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bp, align 4
  %call12 = call i32 @xfs_bwrite(ptr noundef %16) #8
  %17 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bp, align 4
  call void @xfs_buf_unlock(ptr noundef %18) #8
  call void @xfs_buf_rele(ptr noundef %18) #8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then11, %if.then9.cleanup.thread_crit_edge
  call void @wait_for_completion(ptr noundef %q_flush.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #8
  br label %if.end22

cleanup:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %q_flags to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %q_flags, align 2
  %21 = and i16 %20, -3
  store i16 %21, ptr %q_flags, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #8
  br label %out_unlock

if.end22:                                         ; preds = %cleanup.thread, %if.end.if.end22_crit_edge
  %q_pincount = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 18
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %q_pincount, i32 noundef 4) #8
  %22 = ptrtoint ptr %q_pincount to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %q_pincount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp24 = icmp eq i32 %23, 0
  br i1 %cmp24, label %if.end22.cond.end_crit_edge, label %cond.false, !prof !179

if.end22.cond.end_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 159) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end22.cond.end_crit_edge
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 66
  %24 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %m_opstate.i, align 4
  %26 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.i.not = icmp eq i32 %26, 0
  br i1 %tobool.i.not, label %lor.rhs, label %cond.end.cond.end42_crit_edge

cond.end.cond.end42_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end42

lor.rhs:                                          ; preds = %cond.end
  %li_flags = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 12, i32 0, i32 6
  %27 = ptrtoint ptr %li_flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %li_flags, align 4
  %and1.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool31.not = icmp eq i32 %and1.i, 0
  br i1 %tobool31.not, label %lor.rhs.cond.end42_crit_edge, label %cond.false41, !prof !179

lor.rhs.cond.end42_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end42

cond.false41:                                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1, i32 noundef 161) #8
  br label %cond.end42

cond.end42:                                       ; preds = %cond.false41, %lor.rhs.cond.end42_crit_edge, %cond.end.cond.end42_crit_edge
  call void @complete(ptr noundef %q_flush.i) #8
  call void @mutex_unlock(ptr noundef %q_qlock.i) #8
  %q_type.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 2
  %29 = ptrtoint ptr %q_type.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %q_type.i, align 4
  %trunc = trunc i8 %30 to i3
  %31 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.72)
  switch i3 %trunc, label %sw.default.i [
    i3 1, label %cond.end42.xfs_dquot_tree.exit_crit_edge
    i3 -4, label %sw.bb1.i
    i3 2, label %sw.bb2.i
  ]

cond.end42.xfs_dquot_tree.exit_crit_edge:         ; preds = %cond.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dquot_tree.exit

sw.bb1.i:                                         ; preds = %cond.end42
  call void @__sanitizer_cov_trace_pc() #10
  %qi_gquota_tree.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %3, i32 0, i32 1
  br label %xfs_dquot_tree.exit

sw.bb2.i:                                         ; preds = %cond.end42
  call void @__sanitizer_cov_trace_pc() #10
  %qi_pquota_tree.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %3, i32 0, i32 2
  br label %xfs_dquot_tree.exit

sw.default.i:                                     ; preds = %cond.end42
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 87) #8
  br label %xfs_dquot_tree.exit

xfs_dquot_tree.exit:                              ; preds = %sw.default.i, %sw.bb2.i, %sw.bb1.i, %cond.end42.xfs_dquot_tree.exit_crit_edge
  %retval.0.i = phi ptr [ null, %sw.default.i ], [ %qi_pquota_tree.i, %sw.bb2.i ], [ %qi_gquota_tree.i, %sw.bb1.i ], [ %3, %cond.end42.xfs_dquot_tree.exit_crit_edge ]
  %q_id = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 4
  %32 = ptrtoint ptr %q_id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %q_id, align 8
  %call46 = call ptr @radix_tree_delete(ptr noundef %retval.0.i, i32 noundef %33) #8
  %qi_dquots = getelementptr inbounds %struct.xfs_quotainfo, ptr %3, i32 0, i32 8
  %34 = ptrtoint ptr %qi_dquots to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %qi_dquots, align 8
  %dec = add i32 %35, -1
  store i32 %dec, ptr %qi_dquots, align 8
  %36 = ptrtoint ptr %dqp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %dqp, align 4
  %cmp.i.not = icmp eq ptr %37, %dqp
  br i1 %cmp.i.not, label %cond.false58, label %xfs_dquot_tree.exit.cond.end59_crit_edge, !prof !177

xfs_dquot_tree.exit.cond.end59_crit_edge:         ; preds = %xfs_dquot_tree.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end59

cond.false58:                                     ; preds = %xfs_dquot_tree.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 173) #8
  br label %cond.end59

cond.end59:                                       ; preds = %cond.false58, %xfs_dquot_tree.exit.cond.end59_crit_edge
  %qi_lru = getelementptr inbounds %struct.xfs_quotainfo, ptr %3, i32 0, i32 7
  %call61 = call zeroext i1 @list_lru_del(ptr noundef %qi_lru, ptr noundef %dqp) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %38 = load ptr, ptr @xfsstats, align 4
  %39 = ptrtoint ptr %38 to i32
  %40 = call i32 @llvm.read_register.i32(metadata !167) #8
  %and.i113 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i113 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %43
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx, align 4
  %add = add i32 %45, %39
  %46 = inttoptr i32 %add to ptr
  %xs_qm_dquot_unused = getelementptr inbounds %struct.__xfsstats, ptr %46, i32 0, i32 90
  %47 = ptrtoint ptr %xs_qm_dquot_unused to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %xs_qm_dquot_unused, align 8
  %dec65 = add i32 %48, -1
  store i32 %dec65, ptr %xs_qm_dquot_unused, align 8
  %m_stats = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 92
  %49 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %m_stats, align 4
  %51 = ptrtoint ptr %50 to i32
  %52 = load i32, ptr %cpu, align 4
  %arrayidx75 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %52
  %53 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx75, align 4
  %add76 = add i32 %54, %51
  %55 = inttoptr i32 %add76 to ptr
  %xs_qm_dquot_unused77 = getelementptr inbounds %struct.__xfsstats, ptr %55, i32 0, i32 90
  %56 = ptrtoint ptr %xs_qm_dquot_unused77 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %xs_qm_dquot_unused77, align 8
  %dec78 = add i32 %57, -1
  store i32 %dec78, ptr %xs_qm_dquot_unused77, align 8
  call void @xfs_qm_dqdestroy(ptr noundef %dqp) #8
  br label %cleanup81

out_unlock:                                       ; preds = %cleanup, %lor.lhs.false.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  call void @mutex_unlock(ptr noundef %q_qlock.i) #8
  br label %cleanup81

cleanup81:                                        ; preds = %out_unlock, %cond.end59
  %retval.0 = phi i32 [ -11, %out_unlock ], [ 0, %cond.end59 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_gang_lookup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_qm_dqflush(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bwrite(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_delete(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @list_lru_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_qm_dqdestroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_rele(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dqattach_found(ptr noundef %dqp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqattach_found, i32 0, i32 1), ptr blockaddress(@trace_xfs_dqattach_found, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !180

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !179

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !167) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !190
  %call42 = tail call i32 @__traceiter_xfs_dqattach_found(ptr noundef null, ptr noundef %dqp) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !191
  %13 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !179

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !167) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqattach_found, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqattach_found, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_dqattach_found.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_dqattach_found.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 1080, ptr noundef nonnull @.str.34) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !184
  %31 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
declare dso_local i32 @xfs_qm_dqget_inode(ptr noundef, i8 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dqattach_get(ptr noundef %dqp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqattach_get, i32 0, i32 1), ptr blockaddress(@trace_xfs_dqattach_get, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !180

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !179

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !167) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !192
  %call42 = tail call i32 @__traceiter_xfs_dqattach_get(ptr noundef null, ptr noundef %dqp) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !193
  %13 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !179

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !167) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqattach_get, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqattach_get, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_dqattach_get.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_dqattach_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 1081, ptr noundef nonnull @.str.34) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !184
  %31 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dqattach_found(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dqattach_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dquot_dqdetach(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__list_lru_init(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_qm_init_quotainos(ptr noundef %mp) unnamed_addr #3 align 64 {
entry:
  %uip = alloca ptr, align 4
  %gip = alloca ptr, align 4
  %pip = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uip) #8
  %0 = ptrtoint ptr %uip to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %uip, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gip) #8
  %1 = ptrtoint ptr %gip to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %gip, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pip) #8
  %2 = ptrtoint ptr %pip to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pip, align 4
  %m_quotainfo = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 12
  %3 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %m_quotainfo, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !177

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.1, i32 noundef 1496) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %5 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %6, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %cond.end.if.end75_crit_edge, label %if.then

cond.end.if.end75_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then:                                          ; preds = %cond.end
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 60
  %7 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %m_qflags, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then.if.end22_crit_edge, label %land.lhs.true

if.then.if.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

land.lhs.true:                                    ; preds = %if.then
  %sb_uquotino = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 32
  %9 = ptrtoint ptr %sb_uquotino to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %sb_uquotino, align 32
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.73)
  switch i64 %10, label %land.lhs.true.cond.end16_crit_edge [
    i64 -1, label %land.lhs.true.if.end22_crit_edge
    i64 0, label %cond.false15
  ], !prof !186

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

land.lhs.true.cond.end16_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end16

cond.false15:                                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.1, i32 noundef 1504) #8
  br label %cond.end16

cond.end16:                                       ; preds = %cond.false15, %land.lhs.true.cond.end16_crit_edge
  %11 = ptrtoint ptr %sb_uquotino to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %sb_uquotino, align 32
  %call19 = call i32 @xfs_iget(ptr noundef %mp, ptr noundef null, i64 noundef %12, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %uip) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %cond.end16.if.end22_crit_edge, label %cond.end16.cleanup_crit_edge

cond.end16.cleanup_crit_edge:                     ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.end16.if.end22_crit_edge:                    ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end22:                                         ; preds = %cond.end16.if.end22_crit_edge, %land.lhs.true.if.end22_crit_edge, %if.then.if.end22_crit_edge
  %13 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %m_qflags, align 4
  %and24 = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end22.if.end48_crit_edge, label %land.lhs.true26

if.end22.if.end48_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

land.lhs.true26:                                  ; preds = %if.end22
  %sb_gquotino = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 33
  %15 = ptrtoint ptr %sb_gquotino to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %sb_gquotino, align 8
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.74)
  switch i64 %16, label %land.lhs.true26.cond.end41_crit_edge [
    i64 -1, label %land.lhs.true26.if.end48_crit_edge
    i64 0, label %cond.false40
  ], !prof !186

land.lhs.true26.if.end48_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

land.lhs.true26.cond.end41_crit_edge:             ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end41

cond.false40:                                     ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.1, i32 noundef 1512) #8
  br label %cond.end41

cond.end41:                                       ; preds = %cond.false40, %land.lhs.true26.cond.end41_crit_edge
  %17 = ptrtoint ptr %sb_gquotino to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %sb_gquotino, align 8
  %call44 = call i32 @xfs_iget(ptr noundef %mp, ptr noundef null, i64 noundef %18, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %gip) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %cond.end41.if.end48_crit_edge, label %cond.end41.error_rele_crit_edge

cond.end41.error_rele_crit_edge:                  ; preds = %cond.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_rele

cond.end41.if.end48_crit_edge:                    ; preds = %cond.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.end48:                                         ; preds = %cond.end41.if.end48_crit_edge, %land.lhs.true26.if.end48_crit_edge, %if.end22.if.end48_crit_edge
  %19 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %m_qflags, align 4
  %and50 = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end48.if.end75_crit_edge, label %land.lhs.true52

if.end48.if.end75_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

land.lhs.true52:                                  ; preds = %if.end48
  %sb_pquotino = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 52
  %21 = ptrtoint ptr %sb_pquotino to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %sb_pquotino, align 8
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.75)
  switch i64 %22, label %land.lhs.true52.cond.end67_crit_edge [
    i64 -1, label %land.lhs.true52.if.end75_crit_edge
    i64 0, label %cond.false66
  ], !prof !186

land.lhs.true52.if.end75_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

land.lhs.true52.cond.end67_crit_edge:             ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end67

cond.false66:                                     ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.1, i32 noundef 1520) #8
  br label %cond.end67

cond.end67:                                       ; preds = %cond.false66, %land.lhs.true52.cond.end67_crit_edge
  %23 = ptrtoint ptr %sb_pquotino to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %sb_pquotino, align 8
  %call70 = call i32 @xfs_iget(ptr noundef %mp, ptr noundef null, i64 noundef %24, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %pip) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %cond.end67.if.end75_crit_edge, label %cond.end67.error_rele_crit_edge

cond.end67.error_rele_crit_edge:                  ; preds = %cond.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_rele

cond.end67.if.end75_crit_edge:                    ; preds = %cond.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.end75:                                         ; preds = %cond.end67.if.end75_crit_edge, %land.lhs.true52.if.end75_crit_edge, %if.end48.if.end75_crit_edge, %cond.end.if.end75_crit_edge
  %flags.0 = phi i32 [ 0, %cond.end67.if.end75_crit_edge ], [ 0, %land.lhs.true52.if.end75_crit_edge ], [ 0, %if.end48.if.end75_crit_edge ], [ 64, %cond.end.if.end75_crit_edge ]
  %m_qflags76 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 60
  %25 = ptrtoint ptr %m_qflags76 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %m_qflags76, align 4
  %and77 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end75.if.end88_crit_edge, label %land.lhs.true79

if.end75.if.end88_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

land.lhs.true79:                                  ; preds = %if.end75
  %27 = ptrtoint ptr %uip to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %uip, align 4
  %cmp80 = icmp eq ptr %28, null
  br i1 %cmp80, label %if.then81, label %land.lhs.true79.if.end88_crit_edge

land.lhs.true79.if.end88_crit_edge:               ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.then81:                                        ; preds = %land.lhs.true79
  %or82 = or i32 %flags.0, 4
  %call83 = call fastcc i32 @xfs_qm_qino_alloc(ptr noundef %mp, ptr noundef nonnull %uip, i32 noundef %or82)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.then81.if.end88_crit_edge, label %if.then81.error_rele_crit_edge

if.then81.error_rele_crit_edge:                   ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_rele

if.then81.if.end88_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.end88:                                         ; preds = %if.then81.if.end88_crit_edge, %land.lhs.true79.if.end88_crit_edge, %if.end75.if.end88_crit_edge
  %flags.1 = phi i32 [ %flags.0, %land.lhs.true79.if.end88_crit_edge ], [ %flags.0, %if.end75.if.end88_crit_edge ], [ 0, %if.then81.if.end88_crit_edge ]
  %29 = ptrtoint ptr %m_qflags76 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %m_qflags76, align 4
  %and90 = and i32 %30, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.end88.if.end101_crit_edge, label %land.lhs.true92

if.end88.if.end101_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

land.lhs.true92:                                  ; preds = %if.end88
  %31 = ptrtoint ptr %gip to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %gip, align 4
  %cmp93 = icmp eq ptr %32, null
  br i1 %cmp93, label %if.then94, label %land.lhs.true92.if.end101_crit_edge

land.lhs.true92.if.end101_crit_edge:              ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

if.then94:                                        ; preds = %land.lhs.true92
  %or95 = or i32 %flags.1, 8192
  %call96 = call fastcc i32 @xfs_qm_qino_alloc(ptr noundef %mp, ptr noundef nonnull %gip, i32 noundef %or95)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.then94.if.end101_crit_edge, label %if.then94.error_rele_crit_edge

if.then94.error_rele_crit_edge:                   ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_rele

if.then94.if.end101_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

if.end101:                                        ; preds = %if.then94.if.end101_crit_edge, %land.lhs.true92.if.end101_crit_edge, %if.end88.if.end101_crit_edge
  %flags.2 = phi i32 [ %flags.1, %land.lhs.true92.if.end101_crit_edge ], [ %flags.1, %if.end88.if.end101_crit_edge ], [ 0, %if.then94.if.end101_crit_edge ]
  %33 = ptrtoint ptr %m_qflags76 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %m_qflags76, align 4
  %and103 = and i32 %34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %if.end101.if.end113_crit_edge, label %land.lhs.true105

if.end101.if.end113_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

land.lhs.true105:                                 ; preds = %if.end101
  %35 = ptrtoint ptr %pip to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pip, align 4
  %cmp106 = icmp eq ptr %36, null
  br i1 %cmp106, label %if.then107, label %land.lhs.true105.if.end113_crit_edge

land.lhs.true105.if.end113_crit_edge:             ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.then107:                                       ; preds = %land.lhs.true105
  %or108 = or i32 %flags.2, 8
  %call109 = call fastcc i32 @xfs_qm_qino_alloc(ptr noundef %mp, ptr noundef nonnull %pip, i32 noundef %or108)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.then107.if.end113_crit_edge, label %if.then107.error_rele_crit_edge

if.then107.error_rele_crit_edge:                  ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_rele

if.then107.if.end113_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.end113:                                        ; preds = %if.then107.if.end113_crit_edge, %land.lhs.true105.if.end113_crit_edge, %if.end101.if.end113_crit_edge
  %37 = ptrtoint ptr %uip to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %uip, align 4
  %39 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %m_quotainfo, align 4
  %qi_uquotaip = getelementptr inbounds %struct.xfs_quotainfo, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %qi_uquotaip to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %qi_uquotaip, align 8
  %42 = ptrtoint ptr %gip to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %gip, align 4
  %44 = load ptr, ptr %m_quotainfo, align 4
  %qi_gquotaip = getelementptr inbounds %struct.xfs_quotainfo, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %qi_gquotaip to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %43, ptr %qi_gquotaip, align 4
  %46 = ptrtoint ptr %pip to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pip, align 4
  %48 = load ptr, ptr %m_quotainfo, align 4
  %qi_pquotaip = getelementptr inbounds %struct.xfs_quotainfo, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %qi_pquotaip to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %47, ptr %qi_pquotaip, align 8
  br label %cleanup

error_rele:                                       ; preds = %if.then107.error_rele_crit_edge, %if.then94.error_rele_crit_edge, %if.then81.error_rele_crit_edge, %cond.end67.error_rele_crit_edge, %cond.end41.error_rele_crit_edge
  %error.0 = phi i32 [ %call44, %cond.end41.error_rele_crit_edge ], [ %call70, %cond.end67.error_rele_crit_edge ], [ %call83, %if.then81.error_rele_crit_edge ], [ %call96, %if.then94.error_rele_crit_edge ], [ %call109, %if.then107.error_rele_crit_edge ]
  %50 = ptrtoint ptr %uip to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %uip, align 4
  %tobool117.not = icmp eq ptr %51, null
  br i1 %tobool117.not, label %error_rele.if.end119_crit_edge, label %if.then118

error_rele.if.end119_crit_edge:                   ; preds = %error_rele
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

if.then118:                                       ; preds = %error_rele
  call void @__sanitizer_cov_trace_pc() #10
  call void @xfs_irele(ptr noundef nonnull %51) #8
  br label %if.end119

if.end119:                                        ; preds = %if.then118, %error_rele.if.end119_crit_edge
  %52 = ptrtoint ptr %gip to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %gip, align 4
  %tobool120.not = icmp eq ptr %53, null
  br i1 %tobool120.not, label %if.end119.if.end122_crit_edge, label %if.then121

if.end119.if.end122_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122

if.then121:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  call void @xfs_irele(ptr noundef nonnull %53) #8
  br label %if.end122

if.end122:                                        ; preds = %if.then121, %if.end119.if.end122_crit_edge
  %54 = ptrtoint ptr %pip to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pip, align 4
  %tobool123.not = icmp eq ptr %55, null
  br i1 %tobool123.not, label %if.end122.cleanup_crit_edge, label %if.then124

if.end122.cleanup_crit_edge:                      ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then124:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  call void @xfs_irele(ptr noundef nonnull %55) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then124, %if.end122.cleanup_crit_edge, %if.end113, %cond.end16.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end113 ], [ %call19, %cond.end16.cleanup_crit_edge ], [ %error.0, %if.then124 ], [ %error.0, %if.end122.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pip) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gip) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uip) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_calc_dquots_per_chunk(i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_quota_expiry_range(ptr noundef %mp, i64 noundef %min, i64 noundef %max) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_quota_expiry_range, i32 0, i32 1), ptr blockaddress(@trace_xfs_quota_expiry_range, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !180

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !179

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !167) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !194
  %call42 = tail call i32 @__traceiter_xfs_quota_expiry_range(ptr noundef null, ptr noundef %mp, i64 noundef %min, i64 noundef %max) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !195
  %13 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !179

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !167) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_quota_expiry_range, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_quota_expiry_range, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_quota_expiry_range.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_quota_expiry_range.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 4007, ptr noundef nonnull @.str.34) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !184
  %31 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
define internal fastcc void @xfs_qm_init_timelimits(ptr noundef %mp, i8 noundef zeroext %type) unnamed_addr #0 align 64 {
entry:
  %dqp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %m_quotainfo = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 12
  %0 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_quotainfo, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dqp) #8
  %2 = ptrtoint ptr %dqp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %dqp, align 4, !annotation !196
  %3 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.76)
  switch i8 %type, label %sw.default.i [
    i8 1, label %sw.bb.i
    i8 4, label %sw.bb1.i
    i8 2, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %qi_usr_default.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %1, i32 0, i32 12
  br label %xfs_get_defquota.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %qi_grp_default.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %1, i32 0, i32 13
  br label %xfs_get_defquota.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %qi_prj_default.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %1, i32 0, i32 14
  br label %xfs_get_defquota.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 171) #8
  br label %xfs_get_defquota.exit

xfs_get_defquota.exit:                            ; preds = %sw.default.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ null, %sw.default.i ], [ %qi_prj_default.i, %sw.bb2.i ], [ %qi_grp_default.i, %sw.bb1.i ], [ %qi_usr_default.i, %sw.bb.i ]
  %time = getelementptr inbounds %struct.xfs_quota_limits, ptr %retval.0.i, i32 0, i32 2
  %4 = ptrtoint ptr %time to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 604800, ptr %time, align 8
  %time1 = getelementptr inbounds %struct.xfs_def_quota, ptr %retval.0.i, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %time1 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 604800, ptr %time1, align 8
  %time2 = getelementptr inbounds %struct.xfs_def_quota, ptr %retval.0.i, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %time2 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 604800, ptr %time2, align 8
  %warn = getelementptr inbounds %struct.xfs_quota_limits, ptr %retval.0.i, i32 0, i32 3
  %7 = ptrtoint ptr %warn to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 5, ptr %warn, align 8
  %warn5 = getelementptr inbounds %struct.xfs_def_quota, ptr %retval.0.i, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %warn5 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 5, ptr %warn5, align 8
  %warn7 = getelementptr inbounds %struct.xfs_def_quota, ptr %retval.0.i, i32 0, i32 2, i32 3
  %9 = ptrtoint ptr %warn7 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 5, ptr %warn7, align 8
  %call8 = call i32 @xfs_qm_dqget_uncached(ptr noundef %mp, i32 noundef 0, i8 noundef zeroext %type, ptr noundef nonnull %dqp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end, label %xfs_get_defquota.exit.cleanup_crit_edge

xfs_get_defquota.exit.cleanup_crit_edge:          ; preds = %xfs_get_defquota.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %xfs_get_defquota.exit
  %10 = ptrtoint ptr %dqp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dqp, align 4
  %timer = getelementptr inbounds %struct.xfs_dquot, ptr %11, i32 0, i32 9, i32 4
  %12 = ptrtoint ptr %timer to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %timer, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool9.not = icmp eq i64 %13, 0
  br i1 %tobool9.not, label %if.end.if.end15_crit_edge, label %if.then10

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %time to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %time, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.end.if.end15_crit_edge
  %timer16 = getelementptr inbounds %struct.xfs_dquot, ptr %11, i32 0, i32 10, i32 4
  %15 = ptrtoint ptr %timer16 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %timer16, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool17.not = icmp eq i64 %16, 0
  br i1 %tobool17.not, label %if.end15.if.end23_crit_edge, label %if.then18

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %time1 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %time1, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.end15.if.end23_crit_edge
  %timer24 = getelementptr inbounds %struct.xfs_dquot, ptr %11, i32 0, i32 11, i32 4
  %18 = ptrtoint ptr %timer24 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %timer24, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool25.not = icmp eq i64 %19, 0
  br i1 %tobool25.not, label %if.end23.if.end31_crit_edge, label %if.then26

if.end23.if.end31_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %time2 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %time2, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.end23.if.end31_crit_edge
  %warnings = getelementptr inbounds %struct.xfs_dquot, ptr %11, i32 0, i32 9, i32 5
  %21 = ptrtoint ptr %warnings to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %warnings, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool33.not = icmp eq i16 %22, 0
  br i1 %tobool33.not, label %if.end31.if.end39_crit_edge, label %if.then34

if.end31.if.end39_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %warn to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %warn, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then34, %if.end31.if.end39_crit_edge
  %warnings41 = getelementptr inbounds %struct.xfs_dquot, ptr %11, i32 0, i32 10, i32 5
  %24 = ptrtoint ptr %warnings41 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %warnings41, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool42.not = icmp eq i16 %25, 0
  br i1 %tobool42.not, label %if.end39.if.end48_crit_edge, label %if.then43

if.end39.if.end48_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %warn5 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %warn5, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then43, %if.end39.if.end48_crit_edge
  %warnings50 = getelementptr inbounds %struct.xfs_dquot, ptr %11, i32 0, i32 11, i32 5
  %27 = ptrtoint ptr %warnings50 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %warnings50, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool51.not = icmp eq i16 %28, 0
  br i1 %tobool51.not, label %if.end48.if.end57_crit_edge, label %if.then52

if.end48.if.end57_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %warn7 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %warn7, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then52, %if.end48.if.end57_crit_edge
  call void @xfs_qm_dqdestroy(ptr noundef %11) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %xfs_get_defquota.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dqp) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_qm_set_defquota(ptr noundef %mp, i8 noundef zeroext %type, ptr nocapture noundef writeonly %qinf) unnamed_addr #3 align 64 {
entry:
  %dqp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dqp) #8
  %0 = ptrtoint ptr %dqp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %dqp, align 4, !annotation !196
  %call = call i32 @xfs_qm_dqget_uncached(ptr noundef %mp, i32 noundef 0, i8 noundef zeroext %type, ptr noundef nonnull %dqp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %dqp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dqp, align 4
  %q_type.i = getelementptr inbounds %struct.xfs_dquot, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %q_type.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %q_type.i, align 4
  %trunc = trunc i8 %4 to i3
  %5 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.77)
  switch i3 %trunc, label %sw.default.i [
    i3 1, label %sw.bb.i
    i3 -4, label %sw.bb1.i
    i3 2, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %qi_usr_default.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %qinf, i32 0, i32 12
  br label %xfs_get_defquota.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %qi_grp_default.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %qinf, i32 0, i32 13
  br label %xfs_get_defquota.exit

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %qi_prj_default.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %qinf, i32 0, i32 14
  br label %xfs_get_defquota.exit

sw.default.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 171) #8
  br label %xfs_get_defquota.exit

xfs_get_defquota.exit:                            ; preds = %sw.default.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ null, %sw.default.i ], [ %qi_prj_default.i, %sw.bb2.i ], [ %qi_grp_default.i, %sw.bb1.i ], [ %qi_usr_default.i, %sw.bb.i ]
  %6 = ptrtoint ptr %dqp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dqp, align 4
  %hardlimit = getelementptr inbounds %struct.xfs_dquot, ptr %7, i32 0, i32 9, i32 2
  %8 = ptrtoint ptr %hardlimit to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %hardlimit, align 8
  %10 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %retval.0.i, align 8
  %softlimit = getelementptr inbounds %struct.xfs_dquot, ptr %7, i32 0, i32 9, i32 3
  %11 = ptrtoint ptr %softlimit to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %softlimit, align 8
  %soft = getelementptr inbounds %struct.xfs_quota_limits, ptr %retval.0.i, i32 0, i32 1
  %13 = ptrtoint ptr %soft to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %soft, align 8
  %hardlimit5 = getelementptr inbounds %struct.xfs_dquot, ptr %7, i32 0, i32 10, i32 2
  %14 = ptrtoint ptr %hardlimit5 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %hardlimit5, align 8
  %ino = getelementptr inbounds %struct.xfs_def_quota, ptr %retval.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %ino to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %ino, align 8
  %softlimit8 = getelementptr inbounds %struct.xfs_dquot, ptr %7, i32 0, i32 10, i32 3
  %17 = ptrtoint ptr %softlimit8 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %softlimit8, align 8
  %soft10 = getelementptr inbounds %struct.xfs_def_quota, ptr %retval.0.i, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %soft10 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %soft10, align 8
  %hardlimit11 = getelementptr inbounds %struct.xfs_dquot, ptr %7, i32 0, i32 11, i32 2
  %20 = ptrtoint ptr %hardlimit11 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %hardlimit11, align 8
  %rtb = getelementptr inbounds %struct.xfs_def_quota, ptr %retval.0.i, i32 0, i32 2
  %22 = ptrtoint ptr %rtb to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %rtb, align 8
  %softlimit14 = getelementptr inbounds %struct.xfs_dquot, ptr %7, i32 0, i32 11, i32 3
  %23 = ptrtoint ptr %softlimit14 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %softlimit14, align 8
  %soft16 = getelementptr inbounds %struct.xfs_def_quota, ptr %retval.0.i, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %soft16 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %soft16, align 8
  call void @xfs_qm_dqdestroy(ptr noundef %7) #8
  br label %cleanup

cleanup:                                          ; preds = %xfs_get_defquota.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dqp) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_qm_shrink_count(ptr noundef %shrink, ptr nocapture noundef readonly %sc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %qi_lru = getelementptr i8, ptr %shrink, i32 -420
  %nid.i = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 1
  %0 = ptrtoint ptr %nid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nid.i, align 4
  %memcg.i = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 4
  %2 = ptrtoint ptr %memcg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %memcg.i, align 4
  %call.i = tail call i32 @list_lru_count_one(ptr noundef %qi_lru, i32 noundef %1, ptr noundef %3) #8
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_qm_shrink_scan(ptr noundef %shrink, ptr noundef %sc) #0 align 64 {
entry:
  %isol = alloca %struct.xfs_qm_isolate, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %isol) #8
  %0 = getelementptr inbounds %struct.xfs_qm_isolate, ptr %isol, i32 0, i32 1
  %1 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sc, align 4
  %and = and i32 %2, 1152
  call void @__sanitizer_cov_trace_const_cmp4(i32 1152, i32 %and)
  %cmp.not = icmp eq i32 %and, 1152
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds %struct.xfs_qm_isolate, ptr %isol, i32 0, i32 1, i32 1
  %4 = getelementptr inbounds %struct.list_head, ptr %isol, i32 0, i32 1
  %5 = ptrtoint ptr %isol to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %isol, ptr %isol, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %isol, ptr %4, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %0, ptr %0, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %0, ptr %3, align 4
  %qi_lru = getelementptr i8, ptr %shrink, i32 -420
  %nid.i = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 1
  %9 = ptrtoint ptr %nid.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nid.i, align 4
  %memcg.i = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 4
  %11 = ptrtoint ptr %memcg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %memcg.i, align 4
  %nr_to_scan.i = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 2
  %call.i = call i32 @list_lru_walk_one(ptr noundef %qi_lru, i32 noundef %10, ptr noundef %12, ptr noundef nonnull @xfs_qm_dquot_isolate, ptr noundef nonnull %isol, ptr noundef %nr_to_scan.i) #8
  %call2 = call i32 @xfs_buf_delwri_submit(ptr noundef nonnull %isol) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef null, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.xfs_qm_shrink_scan) #8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %0, align 4
  %cmp.i.not18 = icmp eq ptr %14, %0
  br i1 %cmp.i.not18, label %if.end4.cleanup_crit_edge, label %if.end4.while.body_crit_edge

if.end4.while.body_crit_edge:                     ; preds = %if.end4
  br label %while.body

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body:                                       ; preds = %list_del_init.exit.while.body_crit_edge, %if.end4.while.body_crit_edge
  %15 = phi ptr [ %25, %list_del_init.exit.while.body_crit_edge ], [ %14, %if.end4.while.body_crit_edge ]
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %15) #8
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %15, ptr %15, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %15, ptr %prev.i3.i, align 4
  call fastcc void @xfs_qm_dqfree_one(ptr noundef %15)
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %0, align 4
  %cmp.i.not = icmp eq ptr %25, %0
  br i1 %cmp.i.not, label %list_del_init.exit.cleanup_crit_edge, label %list_del_init.exit.while.body_crit_edge

list_del_init.exit.while.body_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

list_del_init.exit.cleanup_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %list_del_init.exit.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.end4.cleanup_crit_edge ], [ %call.i, %list_del_init.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %isol) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_shrinker(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_alloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iget(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_qm_qino_alloc(ptr noundef %mp, ptr noundef %ipp, i32 noundef %flags) #3 align 64 {
entry:
  %tp = alloca ptr, align 4
  %ino62 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #8
  %0 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !196
  %1 = ptrtoint ptr %ipp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %ipp, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %2 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i = icmp ne i64 %and.i, 0
  %and = and i32 %flags, 8200
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool.not, %tobool.i
  br i1 %or.cond, label %entry.cond.end_crit_edge, label %if.then

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.then:                                          ; preds = %entry
  %and1 = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.then.if.else_crit_edge, label %land.lhs.true3

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true3:                                   ; preds = %if.then
  %sb_gquotino = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 33
  %4 = ptrtoint ptr %sb_gquotino to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sb_gquotino, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %5)
  %cmp.not = icmp eq i64 %5, -1
  br i1 %cmp.not, label %land.lhs.true3.if.else_crit_edge, label %if.then4

land.lhs.true3.if.else_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then4:                                         ; preds = %land.lhs.true3
  %sb_pquotino = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 52
  %6 = ptrtoint ptr %sb_pquotino to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sb_pquotino, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %7)
  %cmp8.not = icmp eq i64 %7, -1
  br i1 %cmp8.not, label %if.then4.if.then39_crit_edge, label %__here, !prof !179

if.then4.if.then39_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then39

__here:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !197
  tail call void @xfs_corruption_error(ptr noundef nonnull @.str.43, i32 noundef 1, ptr noundef %mp, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 760, ptr noundef blockaddress(@xfs_qm_qino_alloc, %__here)) #8
  br label %cleanup134

if.else:                                          ; preds = %land.lhs.true3.if.else_crit_edge, %if.then.if.else_crit_edge
  %and12 = and i32 %flags, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else.cond.end_crit_edge, label %land.lhs.true14

if.else.cond.end_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

land.lhs.true14:                                  ; preds = %if.else
  %sb_pquotino16 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 52
  %8 = ptrtoint ptr %sb_pquotino16 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %sb_pquotino16, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %9)
  %cmp17.not = icmp eq i64 %9, -1
  br i1 %cmp17.not, label %land.lhs.true14.cond.end_crit_edge, label %if.then18

land.lhs.true14.cond.end_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.then18:                                        ; preds = %land.lhs.true14
  %sb_gquotino22 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 33
  %10 = ptrtoint ptr %sb_gquotino22 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %sb_gquotino22, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %11)
  %cmp23.not = icmp eq i64 %11, -1
  br i1 %cmp23.not, label %if.then18.if.then39_crit_edge, label %__here31, !prof !179

if.then18.if.then39_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then39

__here31:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !198
  tail call void @xfs_corruption_error(ptr noundef nonnull @.str.44, i32 noundef 1, ptr noundef %mp, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 766, ptr noundef blockaddress(@xfs_qm_qino_alloc, %__here31)) #8
  br label %cleanup134

if.then39:                                        ; preds = %if.then18.if.then39_crit_edge, %if.then4.if.then39_crit_edge
  %ino.0 = phi i64 [ %5, %if.then4.if.then39_crit_edge ], [ %9, %if.then18.if.then39_crit_edge ]
  %call40 = tail call i32 @xfs_iget(ptr noundef %mp, ptr noundef null, i64 noundef %ino.0, i32 noundef 0, i32 noundef 0, ptr noundef %ipp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %cond.end.thread, label %if.then39.cleanup134_crit_edge

if.then39.cleanup134_crit_edge:                   ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup134

cond.end:                                         ; preds = %land.lhs.true14.cond.end_crit_edge, %if.else.cond.end_crit_edge, %entry.cond.end_crit_edge
  %tr_create209 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 65, i32 6
  %ialloc_blks = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 12
  %12 = ptrtoint ptr %ialloc_blks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ialloc_blks, align 4
  %14 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %m_features.i, align 8
  %and.i195 = and i64 %15, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i195)
  %tobool.i196.not = icmp eq i64 %and.i195, 0
  %cond = select i1 %tobool.i196.not, i32 1, i32 2
  %inobt_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 10
  %16 = ptrtoint ptr %inobt_maxlevels to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %inobt_maxlevels, align 4
  %mul = mul i32 %cond, %17
  %add = add i32 %mul, %13
  %call56 = call i32 @xfs_trans_alloc(ptr noundef %mp, ptr noundef %tr_create209, i32 noundef %add, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %tp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then61, label %cond.end.cleanup134_crit_edge

cond.end.cleanup134_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup134

cond.end.thread:                                  ; preds = %if.then39
  %sb_gquotino45 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 33
  %18 = ptrtoint ptr %sb_gquotino45 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 -1, ptr %sb_gquotino45, align 8
  %sb_pquotino47 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 52
  %19 = ptrtoint ptr %sb_pquotino47 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 -1, ptr %sb_pquotino47, align 8
  %tr_create = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 65, i32 6
  %call56220 = call i32 @xfs_trans_alloc(ptr noundef %mp, ptr noundef %tr_create, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %tp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56220)
  %tobool57.not221 = icmp eq i32 %call56220, 0
  br i1 %tobool57.not221, label %cond.end.thread.if.end74_crit_edge, label %cond.end.thread.cleanup134_crit_edge

cond.end.thread.cleanup134_crit_edge:             ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup134

cond.end.thread.if.end74_crit_edge:               ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then61:                                        ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ino62) #8
  %20 = ptrtoint ptr %ino62 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 -1, ptr %ino62, align 8, !annotation !196
  %call63 = call i32 @xfs_dialloc(ptr noundef nonnull %tp, i64 noundef 0, i16 noundef zeroext -32768, ptr noundef nonnull %ino62) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  %21 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tp, align 4
  br i1 %tobool64.not, label %if.end67, label %cleanup71

if.end67:                                         ; preds = %if.then61
  %23 = ptrtoint ptr %ino62 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ino62, align 8
  %call66 = call i32 @xfs_init_new_inode(ptr noundef nonnull @init_user_ns, ptr noundef %22, ptr noundef null, i64 noundef %24, i16 noundef zeroext -32768, i32 noundef 1, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false, ptr noundef %ipp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool68.not = icmp eq i32 %call66, 0
  br i1 %tobool68.not, label %cleanup71.thread, label %cleanup71.thread233

cleanup71.thread233:                              ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tp, align 4
  call void @xfs_trans_cancel(ptr noundef %26) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ino62) #8
  br label %cleanup134

cleanup71.thread:                                 ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ino62) #8
  br label %if.end74

cleanup71:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  call void @xfs_trans_cancel(ptr noundef %22) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ino62) #8
  br label %cleanup134

if.end74:                                         ; preds = %cleanup71.thread, %cond.end.thread.if.end74_crit_edge
  %need_alloc.2.off0210223225 = phi i1 [ true, %cleanup71.thread ], [ false, %cond.end.thread.if.end74_crit_edge ]
  %m_sb_lock = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 76
  call void @_raw_spin_lock(ptr noundef %m_sb_lock) #8
  %and75 = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end74.if.end97_crit_edge, label %if.then77

if.end74.if.end97_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

if.then77:                                        ; preds = %if.end74
  %27 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %m_features.i, align 8
  %and.i198 = and i64 %28, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i198)
  %tobool.i199.not = icmp eq i64 %and.i198, 0
  br i1 %tobool.i199.not, label %if.then77.cond.end89_crit_edge, label %cond.false88, !prof !179

if.then77.cond.end89_crit_edge:                   ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end89

cond.false88:                                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.1, i32 noundef 805) #8
  br label %cond.end89

cond.end89:                                       ; preds = %cond.false88, %if.then77.cond.end89_crit_edge
  %29 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %m_features.i, align 8
  %or.i = or i64 %30, 4
  store i64 %or.i, ptr %m_features.i, align 8
  %sb_versionnum.i.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 15
  %31 = ptrtoint ptr %sb_versionnum.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %sb_versionnum.i.i, align 4
  %33 = or i16 %32, 64
  store i16 %33, ptr %sb_versionnum.i.i, align 4
  %sb_uquotino = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 32
  %sb_pquotino94 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 52
  %34 = ptrtoint ptr %sb_pquotino94 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 -1, ptr %sb_pquotino94, align 8
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 60
  %35 = call ptr @memset(ptr %sb_uquotino, i32 255, i32 16)
  %36 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %m_qflags, align 4
  %38 = trunc i32 %37 to i16
  %conv = and i16 %38, 73
  %sb_qflags = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 34
  %39 = ptrtoint ptr %sb_qflags to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv, ptr %sb_qflags, align 16
  br label %if.end97

if.end97:                                         ; preds = %cond.end89, %if.end74.if.end97_crit_edge
  %and98 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.else103, label %if.then100

if.then100:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ipp, align 4
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %i_ino, align 8
  %sb_uquotino102 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 32
  %44 = ptrtoint ptr %sb_uquotino102 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %sb_uquotino102, align 32
  br label %if.end115

if.else103:                                       ; preds = %if.end97
  %and104 = and i32 %flags, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  %45 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ipp, align 4
  %i_ino111 = getelementptr inbounds %struct.xfs_inode, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %i_ino111 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %i_ino111, align 8
  br i1 %tobool105.not, label %if.else110, label %if.then106

if.then106:                                       ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #10
  %sb_gquotino109 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 33
  %49 = ptrtoint ptr %sb_gquotino109 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %sb_gquotino109, align 8
  br label %if.end115

if.else110:                                       ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #10
  %sb_pquotino113 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 52
  %50 = ptrtoint ptr %sb_pquotino113 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %48, ptr %sb_pquotino113, align 8
  br label %if.end115

if.end115:                                        ; preds = %if.else110, %if.then106, %if.then100
  call void @_raw_spin_unlock(ptr noundef %m_sb_lock) #8
  %51 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tp, align 4
  call void @xfs_log_sb(ptr noundef %52) #8
  %53 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tp, align 4
  %call117 = call i32 @xfs_trans_commit(ptr noundef %54) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end115.if.end130_crit_edge, label %if.then119

if.end115.if.end130_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130

if.then119:                                       ; preds = %if.end115
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 66
  %55 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %m_opstate.i, align 4
  %57 = and i32 %56, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.i201.not = icmp eq i32 %57, 0
  br i1 %tobool.i201.not, label %cond.false128, label %if.then119.cond.end129_crit_edge, !prof !177

if.then119.cond.end129_crit_edge:                 ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end129

cond.false128:                                    ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.1, i32 noundef 826) #8
  br label %cond.end129

cond.end129:                                      ; preds = %cond.false128, %if.then119.cond.end129_crit_edge
  call void (ptr, ptr, ...) @xfs_alert(ptr noundef %mp, ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.xfs_qm_qino_alloc, i32 noundef %call117) #8
  br label %if.end130

if.end130:                                        ; preds = %cond.end129, %if.end115.if.end130_crit_edge
  br i1 %need_alloc.2.off0210223225, label %if.then132, label %if.end130.cleanup134_crit_edge

if.end130.cleanup134_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup134

if.then132:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ipp, align 4
  %i_flags_lock.i.i = getelementptr inbounds %struct.xfs_inode, ptr %59, i32 0, i32 15
  call void @_raw_spin_lock(ptr noundef %i_flags_lock.i.i) #8
  %i_flags.i.i = getelementptr inbounds %struct.xfs_inode, ptr %59, i32 0, i32 16
  %60 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %i_flags.i.i, align 8
  %and.i.i = and i32 %61, -9
  store i32 %and.i.i, ptr %i_flags.i.i, align 8
  call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i.i) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !199
  %i_vnode.i.i = getelementptr inbounds %struct.xfs_inode, ptr %59, i32 0, i32 27
  call void @unlock_new_inode(ptr noundef %i_vnode.i.i) #8
  br label %cleanup134

cleanup134:                                       ; preds = %if.then132, %if.end130.cleanup134_crit_edge, %cleanup71, %cleanup71.thread233, %cond.end.thread.cleanup134_crit_edge, %cond.end.cleanup134_crit_edge, %if.then39.cleanup134_crit_edge, %__here31, %__here
  %retval.3 = phi i32 [ %call63, %cleanup71 ], [ %call56, %cond.end.cleanup134_crit_edge ], [ %call117, %if.then132 ], [ %call117, %if.end130.cleanup134_crit_edge ], [ %call56220, %cond.end.thread.cleanup134_crit_edge ], [ %call66, %cleanup71.thread233 ], [ %call40, %if.then39.cleanup134_crit_edge ], [ -117, %__here31 ], [ -117, %__here ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #8
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_corruption_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dialloc(ptr noundef, i64 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_init_new_inode(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_log_sb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_commit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_quota_expiry_range(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_qm_dqget_uncached(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @list_lru_count_one(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_qm_dquot_isolate(ptr noundef %item, ptr noundef %lru, ptr noundef %lru_lock, ptr noundef %arg) #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %q_qlock.i = getelementptr inbounds %struct.xfs_dquot, ptr %item, i32 0, i32 16
  %call.i = tail call i32 @mutex_trylock(ptr noundef %q_qlock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.out_miss_busy_crit_edge, label %if.end

entry.out_miss_busy_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_miss_busy

if.end:                                           ; preds = %entry
  %q_nrefs = getelementptr inbounds %struct.xfs_dquot, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %q_nrefs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %q_nrefs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end52, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %q_qlock.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %2 = load ptr, ptr @xfsstats, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !167) #8
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %3
  %10 = inttoptr i32 %add to ptr
  %xs_qm_dqwants = getelementptr inbounds %struct.__xfsstats, ptr %10, i32 0, i32 88
  %11 = ptrtoint ptr %xs_qm_dqwants to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %xs_qm_dqwants, align 8
  %inc = add i32 %12, 1
  store i32 %inc, ptr %xs_qm_dqwants, align 8
  %q_mount = getelementptr inbounds %struct.xfs_dquot, ptr %item, i32 0, i32 1
  %13 = ptrtoint ptr %q_mount to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %q_mount, align 8
  %m_stats = getelementptr inbounds %struct.xfs_mount, ptr %14, i32 0, i32 92
  %15 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %m_stats, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = load i32, ptr %cpu, align 4
  %arrayidx16 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx16, align 4
  %add17 = add i32 %20, %17
  %21 = inttoptr i32 %add17 to ptr
  %xs_qm_dqwants18 = getelementptr inbounds %struct.__xfsstats, ptr %21, i32 0, i32 88
  %22 = ptrtoint ptr %xs_qm_dqwants18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %xs_qm_dqwants18, align 8
  %inc19 = add i32 %23, 1
  store i32 %inc19, ptr %xs_qm_dqwants18, align 8
  tail call fastcc void @trace_xfs_dqreclaim_want(ptr noundef %item)
  tail call void @list_lru_isolate(ptr noundef %lru, ptr noundef %item) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %24 = load ptr, ptr @xfsstats, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu, align 4
  %arrayidx32 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx32, align 4
  %add33 = add i32 %29, %25
  %30 = inttoptr i32 %add33 to ptr
  %xs_qm_dquot_unused = getelementptr inbounds %struct.__xfsstats, ptr %30, i32 0, i32 90
  %31 = ptrtoint ptr %xs_qm_dquot_unused to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %xs_qm_dquot_unused, align 8
  %dec = add i32 %32, -1
  store i32 %dec, ptr %xs_qm_dquot_unused, align 8
  %33 = ptrtoint ptr %q_mount to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %q_mount, align 8
  %m_stats41 = getelementptr inbounds %struct.xfs_mount, ptr %34, i32 0, i32 92
  %35 = ptrtoint ptr %m_stats41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %m_stats41, align 4
  %37 = ptrtoint ptr %36 to i32
  %38 = load i32, ptr %cpu, align 4
  %arrayidx46 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx46, align 4
  %add47 = add i32 %40, %37
  %41 = inttoptr i32 %add47 to ptr
  %xs_qm_dquot_unused48 = getelementptr inbounds %struct.__xfsstats, ptr %41, i32 0, i32 90
  %42 = ptrtoint ptr %xs_qm_dquot_unused48 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %xs_qm_dquot_unused48, align 8
  %dec49 = add i32 %43, -1
  store i32 %dec49, ptr %xs_qm_dquot_unused48, align 8
  br label %cleanup199

if.end52:                                         ; preds = %if.end
  %q_flush.i = getelementptr inbounds %struct.xfs_dquot, ptr %item, i32 0, i32 17
  %call.i229 = tail call zeroext i1 @try_wait_for_completion(ptr noundef %q_flush.i) #8
  br i1 %call.i229, label %if.end55, label %if.then54

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %q_qlock.i) #8
  br label %out_miss_busy

if.end55:                                         ; preds = %if.end52
  %q_flags = getelementptr inbounds %struct.xfs_dquot, ptr %item, i32 0, i32 3
  %44 = ptrtoint ptr %q_flags to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %q_flags, align 2
  %46 = and i16 %45, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool56.not = icmp eq i16 %46, 0
  br i1 %tobool56.not, label %if.end64, label %if.then57

if.then57:                                        ; preds = %if.end55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #8
  %47 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %bp, align 4
  tail call fastcc void @trace_xfs_dqreclaim_dirty(ptr noundef %item)
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock) #8
  %call58 = call i32 @xfs_qm_dqflush(ptr noundef %item, ptr noundef nonnull %bp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.then57.cleanup_crit_edge

if.then57.cleanup_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end61:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bp, align 4
  %call62 = call zeroext i1 @xfs_buf_delwri_queue(ptr noundef %49, ptr noundef %arg) #8
  %50 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bp, align 4
  call void @xfs_buf_unlock(ptr noundef %51) #8
  call void @xfs_buf_rele(ptr noundef %51) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then57.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #8
  call fastcc void @trace_xfs_dqreclaim_busy(ptr noundef %item)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %52 = load ptr, ptr @xfsstats, align 4
  %53 = ptrtoint ptr %52 to i32
  %54 = call i32 @llvm.read_register.i32(metadata !167) #8
  %and.i231 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i231 to ptr
  %cpu176 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %cpu176 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cpu176, align 4
  %arrayidx177 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %57
  %58 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx177, align 4
  %add178 = add i32 %59, %53
  %60 = inttoptr i32 %add178 to ptr
  %xs_qm_dqreclaim_misses179 = getelementptr inbounds %struct.__xfsstats, ptr %60, i32 0, i32 84
  %61 = ptrtoint ptr %xs_qm_dqreclaim_misses179 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %xs_qm_dqreclaim_misses179, align 8
  %inc180 = add i32 %62, 1
  store i32 %inc180, ptr %xs_qm_dqreclaim_misses179, align 8
  %q_mount187 = getelementptr inbounds %struct.xfs_dquot, ptr %item, i32 0, i32 1
  %63 = ptrtoint ptr %q_mount187 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %q_mount187, align 8
  %m_stats188 = getelementptr inbounds %struct.xfs_mount, ptr %64, i32 0, i32 92
  %65 = ptrtoint ptr %m_stats188 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %m_stats188, align 4
  %67 = ptrtoint ptr %66 to i32
  %68 = load i32, ptr %cpu176, align 4
  %arrayidx193 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %68
  %69 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx193, align 4
  %add194 = add i32 %70, %67
  %71 = inttoptr i32 %add194 to ptr
  %xs_qm_dqreclaim_misses195 = getelementptr inbounds %struct.__xfsstats, ptr %71, i32 0, i32 84
  %72 = ptrtoint ptr %xs_qm_dqreclaim_misses195 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %xs_qm_dqreclaim_misses195, align 8
  %inc196 = add i32 %73, 1
  store i32 %inc196, ptr %xs_qm_dqreclaim_misses195, align 8
  call void @mutex_unlock(ptr noundef %q_qlock.i) #8
  call void @_raw_spin_lock(ptr noundef %lru_lock) #8
  br label %cleanup199

if.end64:                                         ; preds = %if.end55
  tail call void @complete(ptr noundef %q_flush.i) #8
  %74 = ptrtoint ptr %q_flags to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %q_flags, align 2
  %76 = or i16 %75, 2
  store i16 %76, ptr %q_flags, align 2
  tail call void @mutex_unlock(ptr noundef %q_qlock.i) #8
  %77 = ptrtoint ptr %q_nrefs to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %q_nrefs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp = icmp eq i32 %78, 0
  br i1 %cmp, label %if.end64.cond.end_crit_edge, label %cond.false, !prof !179

if.end64.cond.end_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.1, i32 noundef 474) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end64.cond.end_crit_edge
  %dispose = getelementptr inbounds %struct.xfs_qm_isolate, ptr %arg, i32 0, i32 1
  tail call void @list_lru_isolate_move(ptr noundef %lru, ptr noundef %item, ptr noundef %dispose) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %79 = load ptr, ptr @xfsstats, align 4
  %80 = ptrtoint ptr %79 to i32
  %81 = tail call i32 @llvm.read_register.i32(metadata !167) #8
  %and.i235 = and i32 %81, -16384
  %82 = inttoptr i32 %and.i235 to ptr
  %cpu82 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %cpu82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cpu82, align 4
  %arrayidx83 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %84
  %85 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx83, align 4
  %add84 = add i32 %86, %80
  %87 = inttoptr i32 %add84 to ptr
  %xs_qm_dquot_unused85 = getelementptr inbounds %struct.__xfsstats, ptr %87, i32 0, i32 90
  %88 = ptrtoint ptr %xs_qm_dquot_unused85 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %xs_qm_dquot_unused85, align 8
  %dec86 = add i32 %89, -1
  store i32 %dec86, ptr %xs_qm_dquot_unused85, align 8
  %q_mount93 = getelementptr inbounds %struct.xfs_dquot, ptr %item, i32 0, i32 1
  %90 = ptrtoint ptr %q_mount93 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %q_mount93, align 8
  %m_stats94 = getelementptr inbounds %struct.xfs_mount, ptr %91, i32 0, i32 92
  %92 = ptrtoint ptr %m_stats94 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %m_stats94, align 4
  %94 = ptrtoint ptr %93 to i32
  %95 = load i32, ptr %cpu82, align 4
  %arrayidx99 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %95
  %96 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx99, align 4
  %add100 = add i32 %97, %94
  %98 = inttoptr i32 %add100 to ptr
  %xs_qm_dquot_unused101 = getelementptr inbounds %struct.__xfsstats, ptr %98, i32 0, i32 90
  %99 = ptrtoint ptr %xs_qm_dquot_unused101 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %xs_qm_dquot_unused101, align 8
  %dec102 = add i32 %100, -1
  store i32 %dec102, ptr %xs_qm_dquot_unused101, align 8
  tail call fastcc void @trace_xfs_dqreclaim_done(ptr noundef %item)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %101 = load ptr, ptr @xfsstats, align 4
  %102 = ptrtoint ptr %101 to i32
  %103 = ptrtoint ptr %cpu82 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cpu82, align 4
  %arrayidx115 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %104
  %105 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx115, align 4
  %add116 = add i32 %106, %102
  %107 = inttoptr i32 %add116 to ptr
  %xs_qm_dqreclaims = getelementptr inbounds %struct.__xfsstats, ptr %107, i32 0, i32 83
  %108 = ptrtoint ptr %xs_qm_dqreclaims to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %xs_qm_dqreclaims, align 4
  %inc117 = add i32 %109, 1
  store i32 %inc117, ptr %xs_qm_dqreclaims, align 4
  %110 = ptrtoint ptr %q_mount93 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %q_mount93, align 8
  %m_stats125 = getelementptr inbounds %struct.xfs_mount, ptr %111, i32 0, i32 92
  %112 = ptrtoint ptr %m_stats125 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %m_stats125, align 4
  %114 = ptrtoint ptr %113 to i32
  %115 = load i32, ptr %cpu82, align 4
  %arrayidx130 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %115
  %116 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx130, align 4
  %add131 = add i32 %117, %114
  %118 = inttoptr i32 %add131 to ptr
  %xs_qm_dqreclaims132 = getelementptr inbounds %struct.__xfsstats, ptr %118, i32 0, i32 83
  %119 = ptrtoint ptr %xs_qm_dqreclaims132 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %xs_qm_dqreclaims132, align 4
  %inc133 = add i32 %120, 1
  store i32 %inc133, ptr %xs_qm_dqreclaims132, align 4
  br label %cleanup199

out_miss_busy:                                    ; preds = %if.then54, %entry.out_miss_busy_crit_edge
  tail call fastcc void @trace_xfs_dqreclaim_busy(ptr noundef %item)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %121 = load ptr, ptr @xfsstats, align 4
  %122 = ptrtoint ptr %121 to i32
  %123 = tail call i32 @llvm.read_register.i32(metadata !167) #8
  %and.i236 = and i32 %123, -16384
  %124 = inttoptr i32 %and.i236 to ptr
  %cpu145 = getelementptr inbounds %struct.thread_info, ptr %124, i32 0, i32 3
  %125 = ptrtoint ptr %cpu145 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %cpu145, align 4
  %arrayidx146 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %126
  %127 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx146, align 4
  %add147 = add i32 %128, %122
  %129 = inttoptr i32 %add147 to ptr
  %xs_qm_dqreclaim_misses = getelementptr inbounds %struct.__xfsstats, ptr %129, i32 0, i32 84
  %130 = ptrtoint ptr %xs_qm_dqreclaim_misses to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %xs_qm_dqreclaim_misses, align 8
  %inc148 = add i32 %131, 1
  store i32 %inc148, ptr %xs_qm_dqreclaim_misses, align 8
  %q_mount155 = getelementptr inbounds %struct.xfs_dquot, ptr %item, i32 0, i32 1
  %132 = ptrtoint ptr %q_mount155 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %q_mount155, align 8
  %m_stats156 = getelementptr inbounds %struct.xfs_mount, ptr %133, i32 0, i32 92
  %134 = ptrtoint ptr %m_stats156 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %m_stats156, align 4
  %136 = ptrtoint ptr %135 to i32
  %137 = load i32, ptr %cpu145, align 4
  %arrayidx161 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %137
  %138 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx161, align 4
  %add162 = add i32 %139, %136
  %140 = inttoptr i32 %add162 to ptr
  %xs_qm_dqreclaim_misses163 = getelementptr inbounds %struct.__xfsstats, ptr %140, i32 0, i32 84
  %141 = ptrtoint ptr %xs_qm_dqreclaim_misses163 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %xs_qm_dqreclaim_misses163, align 8
  %inc164 = add i32 %142, 1
  store i32 %inc164, ptr %xs_qm_dqreclaim_misses163, align 8
  br label %cleanup199

cleanup199:                                       ; preds = %out_miss_busy, %cond.end, %cleanup, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 4, %cleanup ], [ 0, %cond.end ], [ 3, %out_miss_busy ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_buf_delwri_submit(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_qm_dqfree_one(ptr noundef %dqp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %q_mount = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 1
  %0 = ptrtoint ptr %q_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q_mount, align 8
  %m_quotainfo = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_quotainfo, align 4
  %qi_tree_lock = getelementptr inbounds %struct.xfs_quotainfo, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %qi_tree_lock, i32 noundef 0) #8
  %q_type.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 2
  %4 = ptrtoint ptr %q_type.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %q_type.i, align 4
  %trunc = trunc i8 %5 to i3
  %6 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.78)
  switch i3 %trunc, label %sw.default.i [
    i3 1, label %entry.xfs_dquot_tree.exit_crit_edge
    i3 -4, label %sw.bb1.i
    i3 2, label %sw.bb2.i
  ]

entry.xfs_dquot_tree.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_dquot_tree.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %qi_gquota_tree.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %3, i32 0, i32 1
  br label %xfs_dquot_tree.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %qi_pquota_tree.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %3, i32 0, i32 2
  br label %xfs_dquot_tree.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 87) #8
  br label %xfs_dquot_tree.exit

xfs_dquot_tree.exit:                              ; preds = %sw.default.i, %sw.bb2.i, %sw.bb1.i, %entry.xfs_dquot_tree.exit_crit_edge
  %retval.0.i = phi ptr [ null, %sw.default.i ], [ %qi_pquota_tree.i, %sw.bb2.i ], [ %qi_gquota_tree.i, %sw.bb1.i ], [ %3, %entry.xfs_dquot_tree.exit_crit_edge ]
  %q_id = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 4
  %7 = ptrtoint ptr %q_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %q_id, align 8
  %call2 = tail call ptr @radix_tree_delete(ptr noundef %retval.0.i, i32 noundef %8) #8
  %qi_dquots = getelementptr inbounds %struct.xfs_quotainfo, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %qi_dquots to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qi_dquots, align 8
  %dec = add i32 %10, -1
  store i32 %dec, ptr %qi_dquots, align 8
  tail call void @mutex_unlock(ptr noundef %qi_tree_lock) #8
  tail call void @xfs_qm_dqdestroy(ptr noundef %dqp) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @list_lru_walk_one(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dqreclaim_want(ptr noundef %dqp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqreclaim_want, i32 0, i32 1), ptr blockaddress(@trace_xfs_dqreclaim_want, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !180

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !179

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !167) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !200
  %call42 = tail call i32 @__traceiter_xfs_dqreclaim_want(ptr noundef null, ptr noundef %dqp) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !201
  %13 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !179

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !167) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqreclaim_want, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqreclaim_want, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_dqreclaim_want.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_dqreclaim_want.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 1076, ptr noundef nonnull @.str.34) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !184
  %31 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
declare dso_local void @list_lru_isolate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dqreclaim_dirty(ptr noundef %dqp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqreclaim_dirty, i32 0, i32 1), ptr blockaddress(@trace_xfs_dqreclaim_dirty, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !180

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !179

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !167) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !202
  %call42 = tail call i32 @__traceiter_xfs_dqreclaim_dirty(ptr noundef null, ptr noundef %dqp) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !203
  %13 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !179

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !167) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqreclaim_dirty, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqreclaim_dirty, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_dqreclaim_dirty.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_dqreclaim_dirty.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 1077, ptr noundef nonnull @.str.34) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !184
  %31 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
declare dso_local zeroext i1 @xfs_buf_delwri_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_lru_isolate_move(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dqreclaim_done(ptr noundef %dqp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqreclaim_done, i32 0, i32 1), ptr blockaddress(@trace_xfs_dqreclaim_done, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !180

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !179

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !167) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !204
  %call42 = tail call i32 @__traceiter_xfs_dqreclaim_done(ptr noundef null, ptr noundef %dqp) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !205
  %13 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !179

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !167) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqreclaim_done, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqreclaim_done, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_dqreclaim_done.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_dqreclaim_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 1079, ptr noundef nonnull @.str.34) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !184
  %31 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
define internal fastcc void @trace_xfs_dqreclaim_busy(ptr noundef %dqp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqreclaim_busy, i32 0, i32 1), ptr blockaddress(@trace_xfs_dqreclaim_busy, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !180

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !179

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !167) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !206
  %call42 = tail call i32 @__traceiter_xfs_dqreclaim_busy(ptr noundef null, ptr noundef %dqp) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !207
  %13 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !179

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !167) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqreclaim_busy, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqreclaim_busy, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_dqreclaim_busy.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_dqreclaim_busy.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 1078, ptr noundef nonnull @.str.34) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !184
  %31 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dqreclaim_want(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dqreclaim_dirty(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dqreclaim_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dqreclaim_busy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_qm_reset_dqcounts_buf(ptr noundef %mp, ptr noundef %qip, i8 noundef zeroext %type, ptr noundef %buffer_list) unnamed_addr #3 align 64 {
entry:
  %map.i = alloca %struct.xfs_buf_map, align 8
  %nmaps = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nmaps) #8
  %i_nblocks = getelementptr inbounds %struct.xfs_inode, ptr %qip, i32 0, i32 19
  %0 = ptrtoint ptr %i_nblocks to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_nblocks, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %entry.cleanup94_crit_edge, label %if.end

entry.cleanup94_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup94

if.end:                                           ; preds = %entry
  %call = tail call ptr @kmem_alloc(i32 noundef 320, i32 noundef 0) #8
  %m_super = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 1
  %2 = ptrtoint ptr %m_super to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_super, align 8
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %s_maxbytes, align 8
  %m_blockmask = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 31
  %6 = ptrtoint ptr %m_blockmask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %m_blockmask, align 8
  %conv = zext i32 %7 to i64
  %add = add i64 %5, %conv
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 20
  %8 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %9 to i64
  %shr = lshr i64 %add, %sh_prom
  %m_quotainfo = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 12
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 13
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 24
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 28
  %10 = getelementptr inbounds i8, ptr %map.i, i32 8
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end
  %lblkno.0 = phi i64 [ 0, %if.end ], [ %lblkno.1.lcssa, %do.cond.do.body_crit_edge ]
  %11 = ptrtoint ptr %nmaps to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 10, ptr %nmaps, align 4
  %call2 = call i32 @xfs_ilock_data_map_shared(ptr noundef %qip) #8
  %sub = sub i64 %shr, %lblkno.0
  %call3 = call i32 @xfs_bmapi_read(ptr noundef %qip, i64 noundef %lblkno.0, i64 noundef %sub, ptr noundef %call, ptr noundef nonnull %nmaps, i32 noundef 0) #8
  call void @xfs_iunlock(ptr noundef %qip, i32 noundef %call2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %do.body.out_crit_edge

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end5:                                          ; preds = %do.body
  %12 = ptrtoint ptr %nmaps to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nmaps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %13)
  %cmp6 = icmp slt i32 %13, 11
  br i1 %cmp6, label %if.end5.cond.end_crit_edge, label %cond.false, !prof !179

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.1, i32 noundef 1018) #8
  %14 = ptrtoint ptr %nmaps to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %nmaps, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end5.cond.end_crit_edge
  %15 = phi i32 [ %13, %if.end5.cond.end_crit_edge ], [ %.pr, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp10154 = icmp sgt i32 %15, 0
  br i1 %cmp10154, label %cond.end.for.body_crit_edge, label %do.condthread-pre-split

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %cond.end.for.body_crit_edge
  %lblkno.1156 = phi i64 [ %add36, %for.inc.for.body_crit_edge ], [ %lblkno.0, %cond.end.for.body_crit_edge ]
  %i.0155 = phi i32 [ %inc91.pre-phi, %for.inc.for.body_crit_edge ], [ 0, %cond.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.xfs_bmbt_irec, ptr %call, i32 %i.0155
  %br_startblock = getelementptr %struct.xfs_bmbt_irec, ptr %call, i32 %i.0155, i32 1
  %16 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %br_startblock, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %17)
  %cmp12.not = icmp eq i64 %17, -1
  br i1 %cmp12.not, label %cond.false21, label %for.body.cond.end22_crit_edge, !prof !177

for.body.cond.end22_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end22

cond.false21:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.1, i32 noundef 1020) #8
  br label %cond.end22

cond.end22:                                       ; preds = %cond.false21, %for.body.cond.end22_crit_edge
  %br_blockcount = getelementptr %struct.xfs_bmbt_irec, ptr %call, i32 %i.0155, i32 2
  %18 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %br_blockcount, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool24.not = icmp eq i64 %19, 0
  br i1 %tobool24.not, label %cond.false32, label %cond.end22.cond.end33_crit_edge, !prof !177

cond.end22.cond.end33_crit_edge:                  ; preds = %cond.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end33

cond.false32:                                     ; preds = %cond.end22
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.1, i32 noundef 1021) #8
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false32, %cond.end22.cond.end33_crit_edge
  %20 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %br_blockcount, align 8
  %add36 = add i64 %21, %lblkno.1156
  %22 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %br_startblock, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %23)
  %cmp39 = icmp eq i64 %23, -2
  br i1 %cmp39, label %cond.end33.for.inc_crit_edge, label %if.end42

cond.end33.for.inc_crit_edge:                     ; preds = %cond.end33
  call void @__sanitizer_cov_trace_pc() #10
  %.pre = add nuw nsw i32 %i.0155, 1
  br label %for.inc

if.end42:                                         ; preds = %cond.end33
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx, align 8
  %conv44 = trunc i64 %25 to i32
  %26 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %m_quotainfo, align 4
  %qi_dqperchunk = getelementptr inbounds %struct.xfs_quotainfo, ptr %27, i32 0, i32 11
  %28 = ptrtoint ptr %qi_dqperchunk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %qi_dqperchunk, align 8
  %mul = mul i32 %29, %conv44
  %add45 = add nuw nsw i32 %i.0155, 1
  %30 = ptrtoint ptr %nmaps to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nmaps, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add45, i32 %31)
  %cmp46 = icmp slt i32 %add45, %31
  br i1 %cmp46, label %land.lhs.true, label %if.end42.if.end82_crit_edge

if.end42.if.end82_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

land.lhs.true:                                    ; preds = %if.end42
  %br_startblock50 = getelementptr %struct.xfs_bmbt_irec, ptr %call, i32 %add45, i32 1
  %32 = ptrtoint ptr %br_startblock50 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %br_startblock50, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %33)
  %cmp51.not = icmp eq i64 %33, -2
  br i1 %cmp51.not, label %land.lhs.true.if.end82_crit_edge, label %if.then53

land.lhs.true.if.end82_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

if.then53:                                        ; preds = %land.lhs.true
  %br_blockcount56 = getelementptr %struct.xfs_bmbt_irec, ptr %call, i32 %add45, i32 2
  %34 = ptrtoint ptr %br_blockcount56 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %br_blockcount56, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %35)
  %tobool60.not151 = icmp eq i64 %35, 0
  br i1 %tobool60.not151, label %if.then53.if.end82_crit_edge, label %if.then53.while.body_crit_edge

if.then53.while.body_crit_edge:                   ; preds = %if.then53
  br label %while.body

if.then53.if.end82_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then53.while.body_crit_edge
  %rablkcnt.0153 = phi i64 [ %dec, %while.body.while.body_crit_edge ], [ %35, %if.then53.while.body_crit_edge ]
  %rablkno.0152 = phi i64 [ %inc, %while.body.while.body_crit_edge ], [ %33, %if.then53.while.body_crit_edge ]
  %dec = add i64 %rablkcnt.0153, -1
  %36 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %m_ddev_targp, align 8
  %38 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %sb_agblklog, align 4
  %conv62 = zext i8 %39 to i32
  %sh_prom63 = zext i8 %39 to i64
  %shr64 = lshr i64 %rablkno.0152, %sh_prom63
  %conv66 = and i64 %shr64, 4294967295
  %40 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sb_agblocks, align 4
  %conv68 = zext i32 %41 to i64
  %mul69 = mul nuw i64 %conv66, %conv68
  %notmask.i = shl nsw i32 -1, %conv62
  %sub.i = xor i32 %notmask.i, -1
  %42 = trunc i64 %rablkno.0152 to i32
  %conv75 = and i32 %sub.i, %42
  %conv76 = zext i32 %conv75 to i64
  %add77 = add nuw i64 %mul69, %conv76
  %43 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom79 = zext i8 %44 to i64
  %shl = shl i64 %add77, %sh_prom79
  %45 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %m_quotainfo, align 4
  %qi_dqchunklen = getelementptr inbounds %struct.xfs_quotainfo, ptr %46, i32 0, i32 10
  %47 = ptrtoint ptr %qi_dqchunklen to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %qi_dqchunklen, align 8
  %conv81 = trunc i64 %48 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map.i) #8
  %49 = ptrtoint ptr %10 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 -1, ptr %10, align 8
  %50 = ptrtoint ptr %map.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %shl, ptr %map.i, align 8
  store i32 %conv81, ptr %10, align 8
  call void @xfs_buf_readahead_map(ptr noundef %37, ptr noundef nonnull %map.i, i32 noundef 1, ptr noundef nonnull @xfs_dquot_buf_ops) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map.i) #8
  %inc = add i64 %rablkno.0152, 1
  %tobool60.not = icmp eq i64 %dec, 0
  br i1 %tobool60.not, label %while.body.if.end82_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.if.end82_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

if.end82:                                         ; preds = %while.body.if.end82_crit_edge, %if.then53.if.end82_crit_edge, %land.lhs.true.if.end82_crit_edge, %if.end42.if.end82_crit_edge
  %51 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %br_startblock, align 8
  %53 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %br_blockcount, align 8
  %call87 = call fastcc i32 @xfs_qm_reset_dqcounts_all(ptr noundef %mp, i32 noundef %mul, i64 noundef %52, i64 noundef %54, i8 noundef zeroext %type, ptr noundef %buffer_list)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end82.for.inc_crit_edge, label %if.end82.out_crit_edge

if.end82.out_crit_edge:                           ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end82.for.inc_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %if.end82.for.inc_crit_edge, %cond.end33.for.inc_crit_edge
  %inc91.pre-phi = phi i32 [ %.pre, %cond.end33.for.inc_crit_edge ], [ %add45, %if.end82.for.inc_crit_edge ]
  %55 = ptrtoint ptr %nmaps to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nmaps, align 4
  %cmp10 = icmp slt i32 %inc91.pre-phi, %56
  br i1 %cmp10, label %for.inc.for.body_crit_edge, label %for.inc.do.cond_crit_edge

for.inc.do.cond_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.condthread-pre-split:                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %nmaps to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pr159 = load i32, ptr %nmaps, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.condthread-pre-split, %for.inc.do.cond_crit_edge
  %58 = phi i32 [ %.pr159, %do.condthread-pre-split ], [ %56, %for.inc.do.cond_crit_edge ]
  %lblkno.1.lcssa = phi i64 [ %lblkno.0, %do.condthread-pre-split ], [ %add36, %for.inc.do.cond_crit_edge ]
  %cmp92 = icmp sgt i32 %58, 0
  br i1 %cmp92, label %do.cond.do.body_crit_edge, label %do.cond.out_crit_edge

do.cond.out_crit_edge:                            ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

out:                                              ; preds = %do.cond.out_crit_edge, %if.end82.out_crit_edge, %do.body.out_crit_edge
  %error.2148 = phi i32 [ %call87, %if.end82.out_crit_edge ], [ %call3, %do.body.out_crit_edge ], [ 0, %do.cond.out_crit_edge ]
  call void @kvfree(ptr noundef %call) #8
  br label %cleanup94

cleanup94:                                        ; preds = %out, %entry.cleanup94_crit_edge
  %retval.0 = phi i32 [ %error.2148, %out ], [ 0, %entry.cleanup94_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nmaps) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iwalk_threaded(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_qm_dqusage_adjust(ptr noundef %mp, ptr noundef %tp, i64 noundef %ino, ptr nocapture noundef readnone %data) #3 align 64 {
entry:
  %ip = alloca ptr, align 4
  %rtblks = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip) #8
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ip, align 4, !annotation !196
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rtblks) #8
  %1 = ptrtoint ptr %rtblks to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %rtblks, align 8
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 60
  %2 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %m_qflags, align 4
  %and = and i32 %3, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !177

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 1144) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %sb_uquotino.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 32
  %4 = ptrtoint ptr %sb_uquotino.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sb_uquotino.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %ino)
  %cmp.i = icmp eq i64 %5, %ino
  br i1 %cmp.i, label %cond.end.cleanup57_crit_edge, label %lor.lhs.false.i

cond.end.cleanup57_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup57

lor.lhs.false.i:                                  ; preds = %cond.end
  %sb_gquotino.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 33
  %6 = ptrtoint ptr %sb_gquotino.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sb_gquotino.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %ino)
  %cmp1.i = icmp eq i64 %7, %ino
  br i1 %cmp1.i, label %lor.lhs.false.i.cleanup57_crit_edge, label %xfs_is_quota_inode.exit

lor.lhs.false.i.cleanup57_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup57

xfs_is_quota_inode.exit:                          ; preds = %lor.lhs.false.i
  %sb_pquotino.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 52
  %8 = ptrtoint ptr %sb_pquotino.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %sb_pquotino.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %ino)
  %cmp2.i = icmp eq i64 %9, %ino
  br i1 %cmp2.i, label %xfs_is_quota_inode.exit.cleanup57_crit_edge, label %if.end

xfs_is_quota_inode.exit.cleanup57_crit_edge:      ; preds = %xfs_is_quota_inode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup57

if.end:                                           ; preds = %xfs_is_quota_inode.exit
  %call3 = call i32 @xfs_iget(ptr noundef %mp, ptr noundef %tp, i64 noundef %ino, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %ip) #8
  %10 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %call3, label %if.then8 [
    i32 -22, label %if.end.cleanup57_crit_edge
    i32 -2, label %if.end.cleanup57_crit_edge80
    i32 0, label %if.end9
  ]

if.end.cleanup57_crit_edge80:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup57

if.end.cleanup57_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup57

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup57

if.end9:                                          ; preds = %if.end
  %11 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ip, align 4
  %i_delayed_blks = getelementptr inbounds %struct.xfs_inode, ptr %12, i32 0, i32 17
  %13 = ptrtoint ptr %i_delayed_blks to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %i_delayed_blks, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %cmp10 = icmp eq i64 %14, 0
  br i1 %cmp10, label %if.end9.cond.end19_crit_edge, label %cond.false18, !prof !179

if.end9.cond.end19_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end19

cond.false18:                                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.1, i32 noundef 1163) #8
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false18, %if.end9.cond.end19_crit_edge
  %15 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ip, align 4
  %i_diflags = getelementptr inbounds %struct.xfs_inode, ptr %16, i32 0, i32 24
  %17 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %i_diflags, align 2
  %19 = and i16 %18, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool21.not = icmp eq i16 %19, 0
  br i1 %tobool21.not, label %cond.end19.if.end29_crit_edge, label %land.lhs.true

cond.end19.if.end29_crit_edge:                    ; preds = %cond.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

land.lhs.true:                                    ; preds = %cond.end19
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %16, align 8
  %m_rtdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %21, i32 0, i32 15
  %22 = ptrtoint ptr %m_rtdev_targp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %m_rtdev_targp, align 64
  %tobool22.not = icmp eq ptr %23, null
  br i1 %tobool22.not, label %land.lhs.true.if.end29_crit_edge, label %if.then23

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then23:                                        ; preds = %land.lhs.true
  %call24 = call i32 @xfs_iread_extents(ptr noundef %tp, ptr noundef %16, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %cleanup.thread, label %if.then23.error0_crit_edge

if.then23.error0_crit_edge:                       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %error0

cleanup.thread:                                   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %16, i32 0, i32 8
  %call28 = call i32 @xfs_bmap_count_leaves(ptr noundef %i_df, ptr noundef nonnull %rtblks) #8
  br label %if.end29

if.end29:                                         ; preds = %cleanup.thread, %land.lhs.true.if.end29_crit_edge, %cond.end19.if.end29_crit_edge
  %24 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ip, align 4
  %i_nblocks = getelementptr inbounds %struct.xfs_inode, ptr %25, i32 0, i32 19
  %26 = ptrtoint ptr %i_nblocks to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %i_nblocks, align 8
  %28 = ptrtoint ptr %rtblks to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %rtblks, align 8
  %sub = sub i64 %27, %29
  %30 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %m_qflags, align 4
  %and31 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end29.if.end38_crit_edge, label %if.then33

if.end29.if.end38_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then33:                                        ; preds = %if.end29
  %call34 = call fastcc i32 @xfs_qm_quotacheck_dqadjust(ptr noundef %25, i8 noundef zeroext 1, i64 noundef %sub, i64 noundef %29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then33.if.end38_crit_edge, label %if.then33.error0_crit_edge

if.then33.error0_crit_edge:                       ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %error0

if.then33.if.end38_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.end38:                                         ; preds = %if.then33.if.end38_crit_edge, %if.end29.if.end38_crit_edge
  %32 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %m_qflags, align 4
  %and40 = and i32 %33, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end38.if.end47_crit_edge, label %if.then42

if.end38.if.end47_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then42:                                        ; preds = %if.end38
  %34 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ip, align 4
  %36 = ptrtoint ptr %rtblks to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %rtblks, align 8
  %call43 = call fastcc i32 @xfs_qm_quotacheck_dqadjust(ptr noundef %35, i8 noundef zeroext 4, i64 noundef %sub, i64 noundef %37)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then42.if.end47_crit_edge, label %if.then42.error0_crit_edge

if.then42.error0_crit_edge:                       ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %error0

if.then42.if.end47_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.end47:                                         ; preds = %if.then42.if.end47_crit_edge, %if.end38.if.end47_crit_edge
  %38 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %m_qflags, align 4
  %and49 = and i32 %39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end47.error0_crit_edge, label %if.then51

if.end47.error0_crit_edge:                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %error0

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ip, align 4
  %42 = ptrtoint ptr %rtblks to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %rtblks, align 8
  %call52 = call fastcc i32 @xfs_qm_quotacheck_dqadjust(ptr noundef %41, i8 noundef zeroext 2, i64 noundef %sub, i64 noundef %43)
  br label %error0

error0:                                           ; preds = %if.then51, %if.end47.error0_crit_edge, %if.then42.error0_crit_edge, %if.then33.error0_crit_edge, %if.then23.error0_crit_edge
  %error.3 = phi i32 [ %call34, %if.then33.error0_crit_edge ], [ %call43, %if.then42.error0_crit_edge ], [ %call52, %if.then51 ], [ 0, %if.end47.error0_crit_edge ], [ %call24, %if.then23.error0_crit_edge ]
  %44 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ip, align 4
  call void @xfs_irele(ptr noundef %45) #8
  br label %cleanup57

cleanup57:                                        ; preds = %error0, %if.then8, %if.end.cleanup57_crit_edge, %if.end.cleanup57_crit_edge80, %xfs_is_quota_inode.exit.cleanup57_crit_edge, %lor.lhs.false.i.cleanup57_crit_edge, %cond.end.cleanup57_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then8 ], [ %error.3, %error0 ], [ 0, %xfs_is_quota_inode.exit.cleanup57_crit_edge ], [ 0, %if.end.cleanup57_crit_edge ], [ 0, %if.end.cleanup57_crit_edge80 ], [ 0, %lor.lhs.false.i.cleanup57_crit_edge ], [ 0, %cond.end.cleanup57_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rtblks) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_qm_flush_one(ptr noundef %dqp, ptr noundef %data) #3 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %q_mount = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 1
  %0 = ptrtoint ptr %q_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q_mount, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #8
  %2 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bp, align 4
  %q_qlock.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %q_qlock.i, i32 noundef 0) #8
  %q_flags = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 3
  %3 = ptrtoint ptr %q_flags to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %q_flags, align 2
  %5 = and i16 %4, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %.not = icmp eq i16 %5, 1
  br i1 %.not, label %if.end6, label %entry.out_unlock_crit_edge

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end6:                                          ; preds = %entry
  %q_flush.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 17
  %call.i = tail call zeroext i1 @try_wait_for_completion(ptr noundef %q_flush.i) #8
  br i1 %call.i, label %if.end14, label %if.then7

if.then7:                                         ; preds = %if.end6
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m_ddev_targp, align 8
  %q_blkno = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 7
  %8 = ptrtoint ptr %q_blkno to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %q_blkno, align 8
  %m_quotainfo = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %m_quotainfo, align 4
  %qi_dqchunklen = getelementptr inbounds %struct.xfs_quotainfo, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %qi_dqchunklen to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %qi_dqchunklen, align 8
  %conv8 = trunc i64 %13 to i32
  %call9 = tail call ptr @xfs_buf_incore(ptr noundef %7, i64 noundef %9, i32 noundef %conv8, i32 noundef 0) #8
  %14 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9, ptr %bp, align 4
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then7.out_unlock_crit_edge, label %if.end12

if.then7.out_unlock_crit_edge:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end12:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfs_buf_unlock(ptr noundef nonnull %call9) #8
  %15 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bp, align 4
  %call13 = tail call i32 @xfs_buf_delwri_pushbuf(ptr noundef %16, ptr noundef %data) #8
  tail call void @xfs_buf_rele(ptr noundef %16) #8
  br label %out_unlock

if.end14:                                         ; preds = %if.end6
  %call15 = call i32 @xfs_qm_dqflush(ptr noundef %dqp, ptr noundef nonnull %bp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.out_unlock_crit_edge

if.end14.out_unlock_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bp, align 4
  %call19 = call zeroext i1 @xfs_buf_delwri_queue(ptr noundef %18, ptr noundef %data) #8
  %19 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bp, align 4
  call void @xfs_buf_unlock(ptr noundef %20) #8
  call void @xfs_buf_rele(ptr noundef %20) #8
  br label %out_unlock

out_unlock:                                       ; preds = %if.end18, %if.end14.out_unlock_crit_edge, %if.end12, %if.then7.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %error.0 = phi i32 [ 0, %entry.out_unlock_crit_edge ], [ %call15, %if.end14.out_unlock_crit_edge ], [ 0, %if.end18 ], [ -11, %if.end12 ], [ -22, %if.then7.out_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %q_qlock.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #8
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_delwri_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_mount_reset_sbqflags(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ilock_data_map_shared(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmapi_read(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_qm_reset_dqcounts_all(ptr noundef %mp, i32 noundef %firstid, i64 noundef %bno, i64 noundef %blkcnt, i8 noundef zeroext %type, ptr noundef %buffer_list) unnamed_addr #3 align 64 {
entry:
  %map.i79 = alloca %struct.xfs_buf_map, align 8
  %map.i = alloca %struct.xfs_buf_map, align 8
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #8
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !196
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %blkcnt)
  %cmp.not = icmp eq i64 %blkcnt, 0
  br i1 %cmp.not, label %cond.end.thread, label %while.body.lr.ph, !prof !177

cond.end.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.1, i32 noundef 917) #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 13
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 24
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 28
  %m_quotainfo = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 12
  %1 = getelementptr inbounds i8, ptr %map.i, i32 8
  %2 = getelementptr inbounds i8, ptr %map.i79, i32 8
  br label %while.body

while.body:                                       ; preds = %if.end50.while.body_crit_edge, %while.body.lr.ph
  %dec86.in = phi i64 [ %blkcnt, %while.body.lr.ph ], [ %dec86, %if.end50.while.body_crit_edge ]
  %firstid.addr.085 = phi i32 [ %firstid, %while.body.lr.ph ], [ %add53, %if.end50.while.body_crit_edge ]
  %bno.addr.084 = phi i64 [ %bno, %while.body.lr.ph ], [ %inc, %if.end50.while.body_crit_edge ]
  %dec86 = add i64 %dec86.in, -1
  %3 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %m_ddev_targp, align 8
  %5 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sb_agblklog, align 4
  %conv = zext i8 %6 to i32
  %sh_prom = zext i8 %6 to i64
  %shr = lshr i64 %bno.addr.084, %sh_prom
  %conv4 = and i64 %shr, 4294967295
  %7 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sb_agblocks, align 4
  %conv6 = zext i32 %8 to i64
  %mul = mul nuw i64 %conv4, %conv6
  %notmask.i = shl nsw i32 -1, %conv
  %sub.i = xor i32 %notmask.i, -1
  %9 = trunc i64 %bno.addr.084 to i32
  %conv11 = and i32 %sub.i, %9
  %conv12 = zext i32 %conv11 to i64
  %add = add nuw i64 %mul, %conv12
  %10 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom14 = zext i8 %11 to i64
  %shl = shl i64 %add, %sh_prom14
  %12 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %m_quotainfo, align 4
  %qi_dqchunklen = getelementptr inbounds %struct.xfs_quotainfo, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %qi_dqchunklen to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %qi_dqchunklen, align 8
  %conv15 = trunc i64 %15 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map.i) #8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 -1, ptr %1, align 8
  %17 = ptrtoint ptr %map.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %shl, ptr %map.i, align 8
  store i32 %conv15, ptr %1, align 8
  %call.i = call i32 @xfs_trans_read_buf_map(ptr noundef %mp, ptr noundef null, ptr noundef %4, ptr noundef nonnull %map.i, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %bp, ptr noundef nonnull @xfs_dquot_buf_ops) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -117, i32 %call.i)
  %cmp17 = icmp eq i32 %call.i, -117
  br i1 %cmp17, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %m_ddev_targp, align 8
  %20 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sb_agblklog, align 4
  %conv22 = zext i8 %21 to i32
  %sh_prom23 = zext i8 %21 to i64
  %shr24 = lshr i64 %bno.addr.084, %sh_prom23
  %conv26 = and i64 %shr24, 4294967295
  %22 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sb_agblocks, align 4
  %conv29 = zext i32 %23 to i64
  %mul30 = mul nuw i64 %conv26, %conv29
  %notmask.i77 = shl nsw i32 -1, %conv22
  %sub.i78 = xor i32 %notmask.i77, -1
  %conv37 = and i32 %sub.i78, %9
  %conv38 = zext i32 %conv37 to i64
  %add39 = add nuw i64 %mul30, %conv38
  %24 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom42 = zext i8 %25 to i64
  %shl43 = shl i64 %add39, %sh_prom42
  %26 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %m_quotainfo, align 4
  %qi_dqchunklen45 = getelementptr inbounds %struct.xfs_quotainfo, ptr %27, i32 0, i32 10
  %28 = ptrtoint ptr %qi_dqchunklen45 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %qi_dqchunklen45, align 8
  %conv46 = trunc i64 %29 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map.i79) #8
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 -1, ptr %2, align 8
  %31 = ptrtoint ptr %map.i79 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %shl43, ptr %map.i79, align 8
  store i32 %conv46, ptr %2, align 8
  %call.i81 = call i32 @xfs_trans_read_buf_map(ptr noundef %mp, ptr noundef null, ptr noundef %19, ptr noundef nonnull %map.i79, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %bp, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map.i79) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %error.1 = phi i32 [ %call.i81, %if.then ], [ %call.i, %while.body.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1)
  %tobool48.not = icmp eq i32 %error.1, 0
  br i1 %tobool48.not, label %if.end50, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end50:                                         ; preds = %if.end
  %32 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bp, align 4
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %33, i32 0, i32 35
  %34 = ptrtoint ptr %b_ops to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @xfs_dquot_buf_ops, ptr %b_ops, align 4
  call fastcc void @xfs_qm_reset_dqcounts(ptr noundef %mp, ptr noundef %33, i32 noundef %firstid.addr.085, i8 noundef zeroext %type)
  %35 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bp, align 4
  %call51 = call zeroext i1 @xfs_buf_delwri_queue(ptr noundef %36, ptr noundef %buffer_list) #8
  %37 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bp, align 4
  call void @xfs_buf_unlock(ptr noundef %38) #8
  call void @xfs_buf_rele(ptr noundef %38) #8
  %inc = add i64 %bno.addr.084, 1
  %39 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %m_quotainfo, align 4
  %qi_dqperchunk = getelementptr inbounds %struct.xfs_quotainfo, ptr %40, i32 0, i32 11
  %41 = ptrtoint ptr %qi_dqperchunk to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %qi_dqperchunk, align 8
  %add53 = add i32 %42, %firstid.addr.085
  %tobool2.not = icmp eq i64 %dec86, 0
  br i1 %tobool2.not, label %if.end50.while.end_crit_edge, label %if.end50.while.body_crit_edge

if.end50.while.body_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end50.while.end_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end50.while.end_crit_edge, %if.end.while.end_crit_edge, %cond.end.thread
  %error.2 = phi i32 [ 0, %cond.end.thread ], [ %error.1, %if.end.while.end_crit_edge ], [ 0, %if.end50.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #8
  ret i32 %error.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_readahead_map(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_qm_reset_dqcounts(ptr noundef %mp, ptr noundef %bp, i32 noundef %id, i8 noundef zeroext %type) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call fastcc void @trace_xfs_reset_dqcounts(ptr noundef %bp, i32 noundef %1)
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 20
  %2 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %3 to i64
  %shl = shl nuw i64 1, %sh_prom
  %conv1 = trunc i64 %shl to i32
  %div = udiv i32 %conv1, 136
  %m_quotainfo = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 12
  %4 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m_quotainfo, align 4
  %qi_dqperchunk = getelementptr inbounds %struct.xfs_quotainfo, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %qi_dqperchunk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qi_dqperchunk, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %div)
  %cmp = icmp eq i32 %7, %div
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !179

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.1, i32 noundef 854) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %8 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_addr, align 4
  %10 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %m_quotainfo, align 4
  %qi_dqperchunk569 = getelementptr inbounds %struct.xfs_quotainfo, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %qi_dqperchunk569 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qi_dqperchunk569, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp670.not = icmp eq i32 %13, 0
  br i1 %cmp670.not, label %cond.end.for.end_crit_edge, label %for.body.lr.ph

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %cond.end
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %14 = or i8 %type, -128
  br label %for.body

for.body:                                         ; preds = %if.end31.for.body_crit_edge, %for.body.lr.ph
  %j.071 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end31.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.xfs_dqblk, ptr %9, i32 %j.071
  %add = add i32 %j.071, %id
  %call = tail call ptr @xfs_dqblk_verify(ptr noundef %mp, ptr noundef %arrayidx, i32 noundef %add) #8
  %tobool9.not = icmp eq ptr %call, null
  br i1 %tobool9.not, label %lor.lhs.false, label %for.body.if.then_crit_edge

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %d_type = getelementptr inbounds %struct.xfs_disk_dquot, ptr %arrayidx, i32 0, i32 2
  %15 = ptrtoint ptr %d_type to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %d_type, align 1
  %17 = and i8 %16, 7
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %type)
  %cmp13.not = icmp eq i8 %17, %type
  br i1 %cmp13.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %for.body.if.then_crit_edge
  tail call void @xfs_dqblk_repair(ptr noundef %mp, ptr noundef %arrayidx, i32 noundef %add, i8 noundef zeroext %type) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %d_type17 = getelementptr inbounds %struct.xfs_disk_dquot, ptr %arrayidx, i32 0, i32 2
  %18 = ptrtoint ptr %d_type17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %type, ptr %d_type17, align 1
  %d_bcount = getelementptr inbounds %struct.xfs_disk_dquot, ptr %arrayidx, i32 0, i32 8
  %d_rtbcount = getelementptr inbounds %struct.xfs_disk_dquot, ptr %arrayidx, i32 0, i32 17
  %19 = ptrtoint ptr %d_rtbcount to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %d_rtbcount, align 8
  %d_id = getelementptr inbounds %struct.xfs_disk_dquot, ptr %arrayidx, i32 0, i32 3
  %20 = call ptr @memset(ptr %d_bcount, i32 0, i32 16)
  %21 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %d_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp18.not = icmp eq i32 %22, 0
  br i1 %cmp18.not, label %if.end.if.end27_crit_edge, label %if.then20

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then20:                                        ; preds = %if.end
  %d_itimer = getelementptr inbounds %struct.xfs_disk_dquot, ptr %arrayidx, i32 0, i32 10
  %d_rtbtimer = getelementptr inbounds %struct.xfs_disk_dquot, ptr %arrayidx, i32 0, i32 18
  %23 = ptrtoint ptr %d_rtbtimer to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %d_rtbtimer, align 8
  %d_rtbwarns = getelementptr inbounds %struct.xfs_disk_dquot, ptr %arrayidx, i32 0, i32 19
  %24 = ptrtoint ptr %d_rtbwarns to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %d_rtbwarns, align 4
  %25 = call ptr @memset(ptr %d_itimer, i32 0, i32 12)
  %26 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %27, 16777216
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.then20.if.end27_crit_edge, label %if.then22

if.then20.if.end27_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then22:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %d_type17 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %14, ptr %d_type17, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.then20.if.end27_crit_edge, %if.end.if.end27_crit_edge
  %29 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %m_features.i, align 8
  %and.i67 = and i64 %30, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i67)
  %tobool.i68.not = icmp eq i64 %and.i67, 0
  br i1 %tobool.i68.not, label %if.end27.if.end31_crit_edge, label %if.then29

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i = getelementptr i8, ptr %arrayidx, i32 108
  %31 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %add.ptr.i.i, align 4
  %call.i.i = tail call i32 @crc32c(i32 noundef -1, ptr noundef %arrayidx, i32 noundef 136) #8
  %32 = xor i32 %call.i.i, -1
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #8
  %34 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %add.ptr.i.i, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end27.if.end31_crit_edge
  %inc = add nuw i32 %j.071, 1
  %35 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %m_quotainfo, align 4
  %qi_dqperchunk5 = getelementptr inbounds %struct.xfs_quotainfo, ptr %36, i32 0, i32 11
  %37 = ptrtoint ptr %qi_dqperchunk5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %qi_dqperchunk5, align 8
  %cmp6 = icmp ult i32 %inc, %38
  br i1 %cmp6, label %if.end31.for.body_crit_edge, label %if.end31.for.end_crit_edge

if.end31.for.end_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end31.for.body_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end31.for.end_crit_edge, %cond.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_read_buf_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_reset_dqcounts(ptr noundef %bp, i32 noundef %caller_ip) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reset_dqcounts, i32 0, i32 1), ptr blockaddress(@trace_xfs_reset_dqcounts, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !180

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !179

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !167) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !208
  %call42 = tail call i32 @__traceiter_xfs_reset_dqcounts(ptr noundef null, ptr noundef %bp, i32 noundef %caller_ip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !209
  %13 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !179

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !167) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reset_dqcounts, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reset_dqcounts, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_reset_dqcounts.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_reset_dqcounts.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 474, ptr noundef nonnull @.str.34) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !184
  %31 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_dqblk_verify(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_dqblk_repair(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_reset_dqcounts(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iread_extents(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmap_count_leaves(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_qm_quotacheck_dqadjust(ptr noundef %ip, i8 noundef zeroext %type, i64 noundef %nblks, i64 noundef %rtblks) unnamed_addr #3 align 64 {
entry:
  %dqp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dqp) #8
  %2 = ptrtoint ptr %dqp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %dqp, align 4, !annotation !196
  %call = tail call i32 @xfs_qm_id_for_quotatype(ptr noundef %ip, i8 noundef zeroext %type) #8
  %call1 = call i32 @xfs_qm_dqget(ptr noundef %1, i32 noundef %call, i8 noundef zeroext %type, i1 noundef zeroext true, ptr noundef nonnull %dqp) #8
  %3 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %call1, label %entry.cleanup_crit_edge [
    i32 0, label %if.end
    i32 -3, label %cond.false
    i32 -2, label %cond.false12
  ], !prof !210

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.1, i32 noundef 1090) #8
  br label %cleanup

cond.false12:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 1091) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %dqp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dqp, align 4
  call fastcc void @trace_xfs_dqadjust(ptr noundef %5)
  %6 = ptrtoint ptr %dqp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dqp, align 4
  %count = getelementptr inbounds %struct.xfs_dquot, ptr %7, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %count, align 8
  %inc = add i64 %9, 1
  store i64 %inc, ptr %count, align 8
  %q_ino14 = getelementptr inbounds %struct.xfs_dquot, ptr %7, i32 0, i32 10
  %10 = ptrtoint ptr %q_ino14 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %q_ino14, align 8
  %inc15 = add i64 %11, 1
  store i64 %inc15, ptr %q_ino14, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %nblks)
  %tobool16.not = icmp eq i64 %nblks, 0
  br i1 %tobool16.not, label %if.end.if.end22_crit_edge, label %if.then17

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %count18 = getelementptr inbounds %struct.xfs_dquot, ptr %7, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %count18 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %count18, align 8
  %add = add i64 %13, %nblks
  store i64 %add, ptr %count18, align 8
  %q_blk19 = getelementptr inbounds %struct.xfs_dquot, ptr %7, i32 0, i32 9
  %14 = ptrtoint ptr %q_blk19 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %q_blk19, align 8
  %add21 = add i64 %15, %nblks
  store i64 %add21, ptr %q_blk19, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %if.end.if.end22_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %rtblks)
  %tobool23.not = icmp eq i64 %rtblks, 0
  br i1 %tobool23.not, label %if.end22.if.end30_crit_edge, label %if.then24

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %count25 = getelementptr inbounds %struct.xfs_dquot, ptr %7, i32 0, i32 11, i32 1
  %16 = ptrtoint ptr %count25 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %count25, align 8
  %add26 = add i64 %17, %rtblks
  store i64 %add26, ptr %count25, align 8
  %q_rtb27 = getelementptr inbounds %struct.xfs_dquot, ptr %7, i32 0, i32 11
  %18 = ptrtoint ptr %q_rtb27 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %q_rtb27, align 8
  %add29 = add i64 %19, %rtblks
  store i64 %add29, ptr %q_rtb27, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %if.end22.if.end30_crit_edge
  %q_id = getelementptr inbounds %struct.xfs_dquot, ptr %7, i32 0, i32 4
  %20 = ptrtoint ptr %q_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %q_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool31.not = icmp eq i32 %21, 0
  br i1 %tobool31.not, label %if.end30.if.end33_crit_edge, label %if.then32

if.end30.if.end33_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  call void @xfs_qm_adjust_dqlimits(ptr noundef %7) #8
  %22 = ptrtoint ptr %dqp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dqp, align 4
  call void @xfs_qm_adjust_dqtimers(ptr noundef %23) #8
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end30.if.end33_crit_edge
  %24 = ptrtoint ptr %dqp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dqp, align 4
  %q_flags = getelementptr inbounds %struct.xfs_dquot, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %q_flags to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %q_flags, align 2
  %28 = or i16 %27, 1
  store i16 %28, ptr %q_flags, align 2
  call void @xfs_qm_dqput(ptr noundef %25) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %cond.false12, %cond.false, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dqp) #8
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_qm_id_for_quotatype(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dqadjust(ptr noundef %dqp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqadjust, i32 0, i32 1), ptr blockaddress(@trace_xfs_dqadjust, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !180

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !179

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !167) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !211
  %call42 = tail call i32 @__traceiter_xfs_dqadjust(ptr noundef null, ptr noundef %dqp) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !212
  %13 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !179

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !167) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqadjust, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dqadjust, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_dqadjust.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_dqadjust.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 1075, ptr noundef nonnull @.str.34) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !184
  %31 = tail call i32 @llvm.read_register.i32(metadata !167) #8
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_qm_dqput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dqadjust(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_buf_incore(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_buf_delwri_pushbuf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dquot_dqalloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !60, !62, !64, !66, !68, !69, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !109, !111, !112, !114, !116, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !155, !157, !159, !161, !162, !164, !165}
!llvm.named.register.sp = !{!167}
!llvm.module.flags = !{!168, !169, !170, !171, !172, !173, !174, !175}
!llvm.ident = !{!176}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_qm.c", i32 221, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/xfs_qm.c", i32 325, i32 2}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/xfs/xfs_qm.c", i32 332, i32 3}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/xfs/xfs_qm.c", i32 340, i32 3}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/xfs/xfs_qm.c", i32 348, i32 3}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/xfs/xfs_qm.c", i32 390, i32 2}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/xfs/xfs_qm.c", i32 719, i32 2}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/xfs/xfs_qm.c", i32 1410, i32 18}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/xfs_qm.c", i32 1415, i32 2}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/xfs/xfs_qm.c", i32 1426, i32 3}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/xfs/xfs_qm.c", i32 1470, i32 4}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/xfs/xfs_qm.c", i32 1471, i32 18}
!25 = !{ptr @__func__.xfs_qm_mount_quotas, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/xfs/xfs_qm.c", i32 1472, i32 5}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/xfs/xfs_qm.c", i32 1477, i32 16}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/xfs/xfs_qm.c", i32 1664, i32 3}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/xfs/xfs_qm.c", i32 1679, i32 5}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/xfs/xfs_qm.c", i32 1698, i32 3}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/xfs/xfs_qm.c", i32 1716, i32 3}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/xfs/xfs_qm.c", i32 1773, i32 2}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/xfs/xfs_qm.c", i32 1777, i32 2}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/xfs/xfs_qm.c", i32 1778, i32 2}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/xfs/xfs_qm.c", i32 1806, i32 2}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/xfs/xfs_qm.c", i32 1863, i32 3}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/xfs/xfs_qm.c", i32 1864, i32 3}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/xfs/xfs_qm.c", i32 1870, i32 3}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/xfs/xfs_qm.c", i32 1871, i32 3}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/xfs/xfs_qm.c", i32 1877, i32 3}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/xfs/xfs_qm.c", i32 1878, i32 3}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/xfs/xfs_qm.h", i32 87, i32 3}
!59 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/xfs/xfs_qm.c", i32 159, i32 2}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/xfs/xfs_qm.c", i32 160, i32 2}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/xfs/xfs_qm.c", i32 173, i32 2}
!66 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!67 = !{!"../fs/xfs/xfs_trace.h", i32 1080, i32 1}
!68 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!69 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!70 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!71 = distinct !{null, !72, !"__already_done", i1 false, i1 false}
!72 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!73 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../fs/xfs/xfs_trace.h", i32 1081, i32 1}
!76 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!77 = distinct !{null, !78, !"__already_done", i1 false, i1 false}
!78 = !{!"../fs/xfs/xfs_trace.h", i32 775, i32 1}
!79 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!80 = !{ptr @xfs_qm_init_quotainfo.__key, !81, !"__key", i1 false, i1 false}
!81 = !{!"../fs/xfs/xfs_qm.c", i32 651, i32 2}
!82 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @xfs_qm_init_quotainfo.__key.37, !84, !"__key", i1 false, i1 false}
!84 = !{!"../fs/xfs/xfs_qm.c", i32 654, i32 2}
!85 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/xfs/xfs_qm.c", i32 1496, i32 2}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/xfs/xfs_qm.c", i32 1504, i32 4}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/xfs/xfs_qm.c", i32 1512, i32 4}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/xfs/xfs_qm.c", i32 1520, i32 4}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/xfs/xfs_qm.c", i32 759, i32 8}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/xfs/xfs_qm.c", i32 765, i32 8}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/xfs/xfs_qm.c", i32 805, i32 3}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/xfs/xfs_qm.c", i32 826, i32 3}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/xfs/xfs_qm.c", i32 827, i32 17}
!104 = !{ptr @__func__.xfs_qm_qino_alloc, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/xfs/xfs_qm.c", i32 827, i32 42}
!106 = !{ptr @xa_init_flags.__key, !107, !"__key", i1 false, i1 false}
!107 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!108 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!109 = distinct !{null, !110, !"__already_done", i1 false, i1 false}
!110 = !{!"../fs/xfs/xfs_trace.h", i32 4007, i32 1}
!111 = distinct !{null, !110, !"__warned", i1 false, i1 false}
!112 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/xfs/xfs_qm.c", i32 516, i32 18}
!114 = !{ptr @__func__.xfs_qm_shrink_scan, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/xfs/xfs_qm.c", i32 516, i32 46}
!116 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/xfs/xfs_qm.c", i32 474, i32 2}
!118 = distinct !{null, !119, !"__already_done", i1 false, i1 false}
!119 = !{!"../fs/xfs/xfs_trace.h", i32 1076, i32 1}
!120 = distinct !{null, !119, !"__warned", i1 false, i1 false}
!121 = distinct !{null, !122, !"__already_done", i1 false, i1 false}
!122 = !{!"../fs/xfs/xfs_trace.h", i32 1077, i32 1}
!123 = distinct !{null, !122, !"__warned", i1 false, i1 false}
!124 = distinct !{null, !125, !"__already_done", i1 false, i1 false}
!125 = !{!"../fs/xfs/xfs_trace.h", i32 1079, i32 1}
!126 = distinct !{null, !125, !"__warned", i1 false, i1 false}
!127 = distinct !{null, !128, !"__already_done", i1 false, i1 false}
!128 = !{!"../fs/xfs/xfs_trace.h", i32 1078, i32 1}
!129 = distinct !{null, !128, !"__warned", i1 false, i1 false}
!130 = !{ptr @.str.51, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/xfs/xfs_qm.c", i32 1284, i32 2}
!132 = !{ptr @.str.52, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/xfs/xfs_qm.c", i32 1287, i32 17}
!134 = !{ptr @.str.53, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/xfs/xfs_qm.c", i32 1373, i32 2}
!136 = !{ptr @.str.54, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/xfs/xfs_qm.c", i32 1378, i32 3}
!138 = !{ptr @.str.55, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/xfs/xfs_qm.c", i32 1382, i32 5}
!140 = !{ptr @.str.56, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/xfs/xfs_qm.c", i32 1385, i32 18}
!142 = !{ptr @.str.57, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/xfs/xfs_qm.c", i32 1018, i32 3}
!144 = !{ptr @.str.58, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/xfs/xfs_qm.c", i32 1020, i32 4}
!146 = !{ptr @.str.59, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/xfs/xfs_qm.c", i32 1021, i32 4}
!148 = !{ptr @.str.60, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/xfs/xfs_qm.c", i32 917, i32 2}
!150 = !{ptr @.str.61, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/xfs/xfs_qm.c", i32 854, i32 2}
!152 = distinct !{null, !153, !"__already_done", i1 false, i1 false}
!153 = !{!"../fs/xfs/xfs_trace.h", i32 474, i32 1}
!154 = distinct !{null, !153, !"__warned", i1 false, i1 false}
!155 = !{ptr @.str.62, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../fs/xfs/xfs_qm.c", i32 1163, i32 2}
!157 = !{ptr @.str.63, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../fs/xfs/xfs_qm.c", i32 1090, i32 3}
!159 = distinct !{null, !160, !"__already_done", i1 false, i1 false}
!160 = !{!"../fs/xfs/xfs_trace.h", i32 1075, i32 1}
!161 = distinct !{null, !160, !"__warned", i1 false, i1 false}
!162 = distinct !{null, !163, !"__already_done", i1 false, i1 false}
!163 = !{!"../fs/xfs/xfs_trace.h", i32 774, i32 1}
!164 = distinct !{null, !163, !"__warned", i1 false, i1 false}
!165 = !{ptr @.str.64, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../fs/xfs/xfs_dquot.h", i32 190, i32 2}
!167 = !{!"sp"}
!168 = !{i32 1, !"wchar_size", i32 2}
!169 = !{i32 1, !"min_enum_size", i32 4}
!170 = !{i32 8, !"branch-target-enforcement", i32 0}
!171 = !{i32 8, !"sign-return-address", i32 0}
!172 = !{i32 8, !"sign-return-address-all", i32 0}
!173 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!174 = !{i32 7, !"uwtable", i32 1}
!175 = !{i32 7, !"frame-pointer", i32 2}
!176 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!177 = !{!"branch_weights", i32 1, i32 2000}
!178 = !{!"branch_weights", i32 1073205, i32 2146410443}
!179 = !{!"branch_weights", i32 2000, i32 1}
!180 = !{i64 2148289583, i64 2148289588, i64 2148289601, i64 2148289645, i64 2148289679, i64 2148289700}
!181 = !{i64 2158189129}
!182 = !{i64 2158189332}
!183 = !{i64 2149991676}
!184 = !{i64 2149992712}
!185 = !{!"branch_weights", i32 4001, i32 1}
!186 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!187 = !{i64 2158168782}
!188 = !{i64 2158168983}
!189 = !{ptr @xfs_qm_dqpurge, ptr @xfs_qm_flush_one}
!190 = !{i64 2158728868}
!191 = !{i64 2158729073}
!192 = !{i64 2158745168}
!193 = !{i64 2158745369}
!194 = !{i64 2165864310}
!195 = !{i64 2165864541}
!196 = !{!"auto-init"}
!197 = !{i64 2166367248}
!198 = !{i64 2166367740}
!199 = !{i64 2155729847}
!200 = !{i64 2158659202}
!201 = !{i64 2158659407}
!202 = !{i64 2158675619}
!203 = !{i64 2158675826}
!204 = !{i64 2158708429}
!205 = !{i64 2158708634}
!206 = !{i64 2158692051}
!207 = !{i64 2158692256}
!208 = !{i64 2157100302}
!209 = !{i64 2157100527}
!210 = !{!"branch_weights", i32 4000000, i32 4004001, i32 2001, i32 2000}
!211 = !{i64 2158639087}
!212 = !{i64 2158639280}
