; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_iomap.c_pt.bc'
source_filename = "../fs/xfs/xfs_iomap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iomap_ops = type { ptr, ptr }
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
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.91, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.90, i16, i8, i32 }
%union.anon.90 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.llist_node = type { ptr }
%union.anon.91 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.78 = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }
%struct.iomap = type { i64, i64, i64, i16, i16, ptr, ptr, ptr, ptr, ptr }
%struct.xfs_buftarg = type { i32, ptr, ptr, i64, ptr, i32, i32, i32, i32, %struct.shrinker, %struct.list_lru, %struct.percpu_counter, %struct.ratelimit_state }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.xfs_inode_log_item = type { %struct.xfs_log_item, ptr, i16, %struct.spinlock, i32, i32, i32, i64, i64 }
%struct.xfs_log_item = type { %struct.list_head, %struct.list_head, i64, ptr, ptr, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, i64 }
%struct.xfs_iext_cursor = type { ptr, i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.hlist_head = type { ptr }
%struct.__xfsstats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.xfs_dquot = type { %struct.list_head, ptr, i8, i16, i32, i32, i32, i64, i64, %struct.xfs_dquot_res, %struct.xfs_dquot_res, %struct.xfs_dquot_res, %struct.xfs_dq_logitem, i64, i64, [3 x i64], %struct.mutex, %struct.completion, %struct.atomic_t, %struct.wait_queue_head }
%struct.xfs_dquot_res = type { i64, i64, i64, i64, i64, i16 }
%struct.xfs_dq_logitem = type { %struct.xfs_log_item, ptr, i64 }

@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"!xfs_need_iread_extents(ifp)\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_iomap.c\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"count_fsb > 0\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"imap.br_blockcount\00", [45 x i8] zeroinitializer }, align 32
@xfs_direct_write_iomap_ops = dso_local constant { %struct.iomap_ops, [24 x i8] } { %struct.iomap_ops { ptr @xfs_direct_write_iomap_begin, ptr null }, [24 x i8] zeroinitializer }, align 32
@xfs_buffered_write_iomap_ops = dso_local constant { %struct.iomap_ops, [24 x i8] } { %struct.iomap_ops { ptr @xfs_buffered_write_iomap_begin, ptr @xfs_buffered_write_iomap_end }, [24 x i8] zeroinitializer }, align 32
@xfs_read_iomap_ops = dso_local constant { %struct.iomap_ops, [24 x i8] } { %struct.iomap_ops { ptr @xfs_read_iomap_begin, ptr null }, [24 x i8] zeroinitializer }, align 32
@xfs_seek_iomap_ops = dso_local constant { %struct.iomap_ops, [24 x i8] } { %struct.iomap_ops { ptr @xfs_seek_iomap_begin, ptr null }, [24 x i8] zeroinitializer }, align 32
@xfs_xattr_iomap_ops = dso_local constant { %struct.iomap_ops, [24 x i8] } { %struct.iomap_ops { ptr @xfs_xattr_iomap_begin, ptr null }, [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"Access to block zero in inode %llu start_block: %llx start_off: %llx blkcnt: %llx extent-state: %x\00", [61 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_unwritten_convert = external dso_local global %struct.tracepoint, align 4
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_unwritten_convert.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"flags & (IOMAP_WRITE | IOMAP_ZERO)\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"offset <= mp->m_super->s_maxbytes\00", [62 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_iomap_found = external dso_local global %struct.tracepoint, align 4
@trace_xfs_iomap_found.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_iomap_alloc = external dso_local global %struct.tracepoint, align 4
@trace_xfs_iomap_alloc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"!XFS_IS_REALTIME_INODE(ip)\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"!xfs_ifork_has_extents(&ip->i_df)\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@xfsstats = external dso_local local_unnamed_addr global %struct.xstats, align 4
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"!xfs_is_reflink_inode(ip)\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"p_end_fsb > offset_fsb\00", [41 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_reflink_cow_found = external dso_local global %struct.tracepoint, align 4
@trace_xfs_reflink_cow_found.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_iomap_prealloc_size = external dso_local global %struct.tracepoint, align 4
@trace_xfs_iomap_prealloc_size.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_delalloc_enospc = external dso_local global %struct.tracepoint, align 4
@trace_xfs_delalloc_enospc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: unable to clean up ino %lld\00", [32 x i8] zeroinitializer }, align 32
@__func__.xfs_buffered_write_iomap_end = private unnamed_addr constant [29 x i8] c"xfs_buffered_write_iomap_end\00", align 1
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"!(flags & (IOMAP_WRITE | IOMAP_ZERO))\00", [58 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ip->i_afp->if_format != XFS_DINODE_FMT_LOCAL\00", [51 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nimaps\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 64, i64 -2, i64 -1]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967174, i64 4294967268]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 168, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 210, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 600, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant [27 x i8] c"xfs_direct_write_iomap_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 861, i32 24 }
@___asan_gen_.40 = private unnamed_addr constant [29 x i8] c"xfs_buffered_write_iomap_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1149, i32 24 }
@___asan_gen_.43 = private unnamed_addr constant [19 x i8] c"xfs_read_iomap_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1193, i32 24 }
@___asan_gen_.46 = private unnamed_addr constant [19 x i8] c"xfs_seek_iomap_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1278, i32 24 }
@___asan_gen_.49 = private unnamed_addr constant [20 x i8] c"xfs_xattr_iomap_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1322, i32 24 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 40, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 1531, i32 1 }
@___asan_gen_.62 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 108, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 271, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 742, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 120, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 893, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 897, i32 6 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 898, i32 6 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 935, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1025, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1140, i32 18 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1172, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1310, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.98 = private constant [22 x i8] c"../fs/xfs/xfs_iomap.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1318, i32 2 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @xfs_direct_write_iomap_ops, ptr @xfs_buffered_write_iomap_ops, ptr @xfs_read_iomap_ops, ptr @xfs_seek_iomap_ops, ptr @xfs_xattr_iomap_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_direct_write_iomap_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_buffered_write_iomap_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_read_iomap_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_seek_iomap_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_xattr_iomap_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_bmbt_to_iomap(ptr noundef %ip, ptr nocapture noundef %iomap, ptr nocapture noundef readonly %imap, i32 %mapping_flags, i16 noundef zeroext %iomap_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  %i_diflags = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 24
  %2 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %i_diflags, align 2
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %cond.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %m_rtdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %m_rtdev_targp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m_rtdev_targp, align 64
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %cond.end.thread124, label %cond.end.thread

cond.end:                                         ; preds = %entry
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %m_ddev_targp, align 8
  %br_startblock = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 1
  %9 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %br_startblock, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %cmp.not = icmp eq i64 %10, 0
  br i1 %cmp.not, label %cond.end.if.then_crit_edge, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

cond.end.thread124:                               ; preds = %land.lhs.true
  %m_ddev_targp125 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 13
  %11 = ptrtoint ptr %m_ddev_targp125 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %m_ddev_targp125, align 8
  %br_startblock126 = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 1
  %13 = ptrtoint ptr %br_startblock126 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %br_startblock126, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %cmp.not127 = icmp eq i64 %14, 0
  br i1 %cmp.not127, label %cond.end.thread124.land.rhs_crit_edge, label %cond.end.thread124.if.end_crit_edge

cond.end.thread124.if.end_crit_edge:              ; preds = %cond.end.thread124
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cond.end.thread124.land.rhs_crit_edge:            ; preds = %cond.end.thread124
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

cond.end.thread:                                  ; preds = %land.lhs.true
  %br_startblock108 = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 1
  %15 = ptrtoint ptr %br_startblock108 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %br_startblock108, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %cmp.not109 = icmp eq i64 %16, 0
  br i1 %cmp.not109, label %cond.end.thread.land.rhs_crit_edge, label %cond.end.thread.if.end_crit_edge

cond.end.thread.if.end_crit_edge:                 ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cond.end.thread.land.rhs_crit_edge:               ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

land.rhs:                                         ; preds = %cond.end.thread.land.rhs_crit_edge, %cond.end.thread124.land.rhs_crit_edge
  %cond111113 = phi ptr [ %6, %cond.end.thread.land.rhs_crit_edge ], [ %12, %cond.end.thread124.land.rhs_crit_edge ]
  %17 = ptrtoint ptr %m_rtdev_targp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %m_rtdev_targp, align 64
  %tobool13 = icmp eq ptr %18, null
  br i1 %tobool13, label %land.rhs.if.then_crit_edge, label %land.rhs.if.else30_crit_edge, !prof !79

land.rhs.if.else30_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else30

land.rhs.if.then_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %land.rhs.if.then_crit_edge, %cond.end.if.then_crit_edge
  %i_ino.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 4
  %19 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %i_ino.i, align 8
  %21 = ptrtoint ptr %imap to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %imap, align 8
  %br_blockcount.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 2
  %23 = ptrtoint ptr %br_blockcount.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %br_blockcount.i, align 8
  %br_state.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 3
  %25 = ptrtoint ptr %br_state.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %br_state.i, align 8
  tail call void (ptr, i32, ptr, ...) @xfs_alert_tag(ptr noundef %1, i32 noundef 128, ptr noundef nonnull @.str.4, i64 noundef %20, i64 noundef 0, i64 noundef %22, i64 noundef %24, i32 noundef %26) #11
  br label %cleanup

if.end:                                           ; preds = %cond.end.thread.if.end_crit_edge, %cond.end.thread124.if.end_crit_edge, %cond.end.if.end_crit_edge
  %27 = phi i64 [ %16, %cond.end.thread.if.end_crit_edge ], [ %10, %cond.end.if.end_crit_edge ], [ %14, %cond.end.thread124.if.end_crit_edge ]
  %cond110 = phi ptr [ %6, %cond.end.thread.if.end_crit_edge ], [ %8, %cond.end.if.end_crit_edge ], [ %12, %cond.end.thread124.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i64 %27, label %lor.lhs.false [
    i64 -2, label %if.then20
    i64 -1, label %if.end.if.then27_crit_edge
  ]

if.end.if.then27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %iomap to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 -1, ptr %iomap, align 8
  %type = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 3
  %29 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %type, align 8
  br label %if.end47

lor.lhs.false:                                    ; preds = %if.end
  %and.i = and i64 %27, 4503599627239424
  call void @__sanitizer_cov_trace_const_cmp8(i64 4503599627239424, i64 %and.i)
  %cmp.i.not = icmp eq i64 %and.i, 4503599627239424
  br i1 %cmp.i.not, label %lor.lhs.false.if.then27_crit_edge, label %lor.lhs.false.if.else30_crit_edge

lor.lhs.false.if.else30_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else30

lor.lhs.false.if.then27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27

if.then27:                                        ; preds = %lor.lhs.false.if.then27_crit_edge, %if.end.if.then27_crit_edge
  %30 = ptrtoint ptr %iomap to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 -1, ptr %iomap, align 8
  %type29 = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 3
  %31 = ptrtoint ptr %type29 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %type29, align 8
  br label %if.end47

if.else30:                                        ; preds = %lor.lhs.false.if.else30_crit_edge, %land.rhs.if.else30_crit_edge
  %32 = phi i64 [ %27, %lor.lhs.false.if.else30_crit_edge ], [ 0, %land.rhs.if.else30_crit_edge ]
  %cond110117123 = phi ptr [ %cond110, %lor.lhs.false.if.else30_crit_edge ], [ %cond111113, %land.rhs.if.else30_crit_edge ]
  %call32 = tail call i64 @xfs_fsb_to_db(ptr noundef %ip, i64 noundef %32) #11
  %shl = shl i64 %call32, 9
  %33 = ptrtoint ptr %iomap to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %shl, ptr %iomap, align 8
  %br_state = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 3
  %34 = ptrtoint ptr %br_state to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %br_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp39 = icmp eq i32 %35, 1
  %type42 = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 3
  br i1 %cmp39, label %if.then41, label %if.else43

if.then41:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %type42 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 3, ptr %type42, align 8
  br label %if.end47

if.else43:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %type42 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 2, ptr %type42, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.else43, %if.then41, %if.then27, %if.then20
  %cond110115 = phi ptr [ %cond110, %if.then27 ], [ %cond110117123, %if.else43 ], [ %cond110117123, %if.then41 ], [ %cond110, %if.then20 ]
  %38 = ptrtoint ptr %imap to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %imap, align 8
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 20
  %40 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %41 to i64
  %shl49 = shl i64 %39, %sh_prom
  %offset = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 1
  %42 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %shl49, ptr %offset, align 8
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 2
  %43 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %br_blockcount, align 8
  %45 = load i8, ptr %sb_blocklog, align 8
  %sh_prom53 = zext i8 %45 to i64
  %shl54 = shl i64 %44, %sh_prom53
  %length = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 2
  %46 = ptrtoint ptr %length to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %shl54, ptr %length, align 8
  %bt_bdev = getelementptr inbounds %struct.xfs_buftarg, ptr %cond110115, i32 0, i32 1
  %47 = ptrtoint ptr %bt_bdev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bt_bdev, align 4
  %bdev = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 5
  %49 = ptrtoint ptr %bdev to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %bdev, align 4
  %flags = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 4
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %iomap_flags, ptr %flags, align 2
  %i_pincount = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_pincount, i32 noundef 4) #11
  %51 = ptrtoint ptr %i_pincount to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %i_pincount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool61.not = icmp eq i32 %52, 0
  br i1 %tobool61.not, label %if.end47.cleanup_crit_edge, label %land.lhs.true62

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true62:                                  ; preds = %if.end47
  %i_itemp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 9
  %53 = ptrtoint ptr %i_itemp to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %i_itemp, align 8
  %ili_fsync_fields = getelementptr inbounds %struct.xfs_inode_log_item, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %ili_fsync_fields to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ili_fsync_fields, align 4
  %and63 = and i32 %56, -16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %land.lhs.true62.cleanup_crit_edge, label %if.then65

land.lhs.true62.cleanup_crit_edge:                ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then65:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %flags, align 2
  %59 = or i16 %58, 2
  store i16 %59, ptr %flags, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %land.lhs.true62.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -117, %if.then ], [ 0, %if.then65 ], [ 0, %land.lhs.true62.cleanup_crit_edge ], [ 0, %if.end47.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_alert_fsblock_zero(ptr nocapture noundef readonly %ip, ptr nocapture noundef readonly %imap) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 4
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_ino, align 8
  %br_startblock = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 1
  %4 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %br_startblock, align 8
  %6 = ptrtoint ptr %imap to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %imap, align 8
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 2
  %8 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %br_blockcount, align 8
  %br_state = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 3
  %10 = ptrtoint ptr %br_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %br_state, align 8
  tail call void (ptr, i32, ptr, ...) @xfs_alert_tag(ptr noundef %1, i32 noundef 128, ptr noundef nonnull @.str.4, i64 noundef %3, i64 noundef %5, i64 noundef %7, i64 noundef %9, i32 noundef %11) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @xfs_fsb_to_db(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @xfs_iomap_eof_align_last_fsb(ptr noundef %ip, i64 noundef %end_fsb) local_unnamed_addr #0 align 64 {
entry:
  %irec = alloca %struct.xfs_bmbt_irec, align 8
  %icur = alloca %struct.xfs_iext_cursor, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8
  %call = tail call i32 @xfs_get_extsz_hint(ptr noundef %ip) #11
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  %i_diflags.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 24
  %2 = ptrtoint ptr %i_diflags.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %i_diflags.i, align 2
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not.i = icmp eq i16 %4, 0
  br i1 %tobool.not.i, label %entry.if.then.i_crit_edge, label %land.lhs.true.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

land.lhs.true.i:                                  ; preds = %entry
  %m_rtdev_targp.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %m_rtdev_targp.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m_rtdev_targp.i, align 64
  %tobool2.not.i = icmp eq ptr %6, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.then.i_crit_edge, label %land.lhs.true.i.xfs_eof_alignment.exit_crit_edge

land.lhs.true.i.xfs_eof_alignment.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_eof_alignment.exit

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %m_swidth.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 51
  %7 = ptrtoint ptr %m_swidth.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %m_swidth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not.i = icmp eq i32 %8, 0
  br i1 %tobool3.not.i, label %if.then.i.if.end11.i_crit_edge, label %land.lhs.true4.i

if.then.i.if.end11.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

land.lhs.true4.i:                                 ; preds = %if.then.i
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %9 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %10, 288230376151711744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %land.lhs.true4.i.if.end11.i_crit_edge, label %land.lhs.true4.i.land.lhs.true13.i_crit_edge

land.lhs.true4.i.land.lhs.true13.i_crit_edge:     ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true13.i

land.lhs.true4.i.if.end11.i_crit_edge:            ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

if.end11.i:                                       ; preds = %land.lhs.true4.i.if.end11.i_crit_edge, %if.then.i.if.end11.i_crit_edge
  %m_dalign.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 50
  %11 = ptrtoint ptr %m_dalign.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %m_dalign.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.not.i = icmp eq i32 %12, 0
  br i1 %tobool12.not.i, label %if.end11.i.xfs_eof_alignment.exit_crit_edge, label %if.end11.i.land.lhs.true13.i_crit_edge

if.end11.i.land.lhs.true13.i_crit_edge:           ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true13.i

if.end11.i.xfs_eof_alignment.exit_crit_edge:      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_eof_alignment.exit

land.lhs.true13.i:                                ; preds = %if.end11.i.land.lhs.true13.i_crit_edge, %land.lhs.true4.i.land.lhs.true13.i_crit_edge
  %align.034.i = phi i32 [ %12, %if.end11.i.land.lhs.true13.i_crit_edge ], [ %8, %land.lhs.true4.i.land.lhs.true13.i_crit_edge ]
  %i_vnode.i.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %13 = ptrtoint ptr %i_vnode.i.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %i_vnode.i.i.i, align 8
  %15 = and i16 %14, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %15)
  %cmp.i.i = icmp eq i16 %15, -32768
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i.i = tail call fastcc i64 @i_size_read(ptr noundef %i_vnode.i.i.i) #11
  br label %XFS_ISIZE.exit.i

if.end.i.i:                                       ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #13
  %i_disk_size.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 18
  %16 = ptrtoint ptr %i_disk_size.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_disk_size.i.i, align 8
  br label %XFS_ISIZE.exit.i

XFS_ISIZE.exit.i:                                 ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i64 [ %call3.i.i, %if.then.i.i ], [ %17, %if.end.i.i ]
  %conv15.i = zext i32 %align.034.i to i64
  %sb_blocklog.i = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 20
  %18 = ptrtoint ptr %sb_blocklog.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sb_blocklog.i, align 8
  %sh_prom.i = zext i8 %19 to i64
  %shl.i = shl i64 %conv15.i, %sh_prom.i
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i.i, i64 %shl.i)
  %cmp.i = icmp slt i64 %retval.0.i.i, %shl.i
  %spec.select31.i = select i1 %cmp.i, i32 0, i32 %align.034.i
  br label %xfs_eof_alignment.exit

xfs_eof_alignment.exit:                           ; preds = %XFS_ISIZE.exit.i, %if.end11.i.xfs_eof_alignment.exit_crit_edge, %land.lhs.true.i.xfs_eof_alignment.exit_crit_edge
  %align.1.i = phi i32 [ 0, %land.lhs.true.i.xfs_eof_alignment.exit_crit_edge ], [ 0, %if.end11.i.xfs_eof_alignment.exit_crit_edge ], [ %spec.select31.i, %XFS_ISIZE.exit.i ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %irec) #11
  %20 = call ptr @memset(ptr %irec, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %icur) #11
  %21 = ptrtoint ptr %icur to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 -1 to ptr), ptr %icur, align 4, !annotation !80
  %22 = getelementptr inbounds %struct.xfs_iext_cursor, ptr %icur, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %22, align 4, !annotation !80
  %if_format.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8, i32 6
  %24 = ptrtoint ptr %if_format.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %if_format.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %25)
  %cmp.i35 = icmp eq i8 %25, 3
  br i1 %cmp.i35, label %xfs_need_iread_extents.exit, label %xfs_eof_alignment.exit.cond.end_crit_edge

xfs_eof_alignment.exit.cond.end_crit_edge:        ; preds = %xfs_eof_alignment.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

xfs_need_iread_extents.exit:                      ; preds = %xfs_eof_alignment.exit
  %if_height.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8, i32 3
  %26 = ptrtoint ptr %if_height.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %if_height.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp2.i = icmp eq i32 %27, 0
  br i1 %cmp2.i, label %cond.false, label %xfs_need_iread_extents.exit.cond.end_crit_edge, !prof !79

xfs_need_iread_extents.exit.cond.end_crit_edge:   ; preds = %xfs_need_iread_extents.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %xfs_need_iread_extents.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 168) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %xfs_need_iread_extents.exit.cond.end_crit_edge, %xfs_eof_alignment.exit.cond.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %cond.end.if.end10_crit_edge, label %if.then

cond.end.if.end10_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %align.1.i)
  %tobool6.not = icmp eq i32 %align.1.i, 0
  br i1 %tobool6.not, label %if.then.if.then12_crit_edge, label %if.then7

if.then.if.then12_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

if.then7:                                         ; preds = %if.then
  %conv = zext i32 %align.1.i to i64
  %sub.i = add i32 %call, -1
  %conv.i = zext i32 %sub.i to i64
  %add.i = add nuw nsw i64 %conv, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i)
  %cmp168.i = icmp ult i64 %add.i, 4294967296
  br i1 %cmp168.i, label %if.then172.i, label %if.else178.i, !prof !81

if.then172.i:                                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %conv173.i = trunc i64 %add.i to i32
  %div176.i = udiv i32 %conv173.i, %call
  br label %roundup_64.exit

if.else178.i:                                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %28 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call, i64 %add.i) #14, !srcloc !82
  %asmresult1.i.i = extractvalue { i64, i64 } %28, 1
  %extract.t166 = trunc i64 %asmresult1.i.i to i32
  br label %roundup_64.exit

roundup_64.exit:                                  ; preds = %if.else178.i, %if.then172.i
  %x.addr.0.i.off0 = phi i32 [ %div176.i, %if.then172.i ], [ %extract.t166, %if.else178.i ]
  %conv9 = mul i32 %x.addr.0.i.off0, %call
  br label %if.end10

if.end10:                                         ; preds = %roundup_64.exit, %cond.end.if.end10_crit_edge
  %align.0 = phi i32 [ %conv9, %roundup_64.exit ], [ %align.1.i, %cond.end.if.end10_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %align.0)
  %tobool11.not = icmp eq i32 %align.0, 0
  br i1 %tobool11.not, label %if.end10.cleanup19_crit_edge, label %if.end10.if.then12_crit_edge

if.end10.if.then12_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

if.end10.cleanup19_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup19

if.then12:                                        ; preds = %if.end10.if.then12_crit_edge, %if.then.if.then12_crit_edge
  %align.0162 = phi i32 [ %align.0, %if.end10.if.then12_crit_edge ], [ %call, %if.then.if.then12_crit_edge ]
  %sub.i42 = add i32 %align.0162, -1
  %conv.i43 = zext i32 %sub.i42 to i64
  %add.i44 = add i64 %conv.i43, %end_fsb
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i44)
  %cmp168.i148 = icmp ult i64 %add.i44, 4294967296
  br i1 %cmp168.i148, label %if.then172.i153, label %if.else178.i155, !prof !81

if.then172.i153:                                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %conv173.i150 = trunc i64 %add.i44 to i32
  %div176.i151 = udiv i32 %conv173.i150, %align.0162
  %conv177.i152 = zext i32 %div176.i151 to i64
  br label %roundup_64.exit159

if.else178.i155:                                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %29 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %align.0162, i64 %add.i44) #14, !srcloc !82
  %asmresult1.i.i154 = extractvalue { i64, i64 } %29, 1
  br label %roundup_64.exit159

roundup_64.exit159:                               ; preds = %if.else178.i155, %if.then172.i153
  %x.addr.0.i156 = phi i64 [ %conv177.i152, %if.then172.i153 ], [ %asmresult1.i.i154, %if.else178.i155 ]
  %conv184.i157 = zext i32 %align.0162 to i64
  %mul185.i158 = mul i64 %x.addr.0.i156, %conv184.i157
  call void @xfs_iext_last(ptr noundef %i_df, ptr noundef nonnull %icur) #11
  %call14 = call zeroext i1 @xfs_iext_get_extent(ptr noundef %i_df, ptr noundef nonnull %icur, ptr noundef nonnull %irec) #11
  br i1 %call14, label %lor.lhs.false, label %roundup_64.exit159.cleanup19_crit_edge

roundup_64.exit159.cleanup19_crit_edge:           ; preds = %roundup_64.exit159
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup19

lor.lhs.false:                                    ; preds = %roundup_64.exit159
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %irec to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %irec, align 8
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %irec, i32 0, i32 2
  %32 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %br_blockcount, align 8
  %add = add i64 %33, %31
  call void @__sanitizer_cov_trace_cmp8(i64 %mul185.i158, i64 %add)
  %cmp.not = icmp ult i64 %mul185.i158, %add
  %spec.select = select i1 %cmp.not, i64 %end_fsb, i64 %mul185.i158
  br label %cleanup19

cleanup19:                                        ; preds = %lor.lhs.false, %roundup_64.exit159.cleanup19_crit_edge, %if.end10.cleanup19_crit_edge
  %retval.1 = phi i64 [ %mul185.i158, %roundup_64.exit159.cleanup19_crit_edge ], [ %end_fsb, %if.end10.cleanup19_crit_edge ], [ %spec.select, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %icur) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %irec) #11
  ret i64 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_get_extsz_hint(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_eof_alignment(ptr noundef %ip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  %i_diflags = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 24
  %2 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %i_diflags, align 2
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %land.lhs.true

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

land.lhs.true:                                    ; preds = %entry
  %m_rtdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %m_rtdev_targp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m_rtdev_targp, align 64
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  %m_swidth = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 51
  %7 = ptrtoint ptr %m_swidth to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %m_swidth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not = icmp eq i32 %8, 0
  br i1 %tobool3.not, label %if.then.if.end11_crit_edge, label %land.lhs.true4

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

land.lhs.true4:                                   ; preds = %if.then
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %9 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %10, 288230376151711744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true4.if.end11_crit_edge, label %land.lhs.true4.land.lhs.true13_crit_edge

land.lhs.true4.land.lhs.true13_crit_edge:         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true13

land.lhs.true4.if.end11_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true4.if.end11_crit_edge, %if.then.if.end11_crit_edge
  %m_dalign = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 50
  %11 = ptrtoint ptr %m_dalign to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %m_dalign, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.not = icmp eq i32 %12, 0
  br i1 %tobool12.not, label %if.end11.if.end20_crit_edge, label %if.end11.land.lhs.true13_crit_edge

if.end11.land.lhs.true13_crit_edge:               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true13

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

land.lhs.true13:                                  ; preds = %if.end11.land.lhs.true13_crit_edge, %land.lhs.true4.land.lhs.true13_crit_edge
  %align.034 = phi i32 [ %12, %if.end11.land.lhs.true13_crit_edge ], [ %8, %land.lhs.true4.land.lhs.true13_crit_edge ]
  %i_vnode.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %13 = ptrtoint ptr %i_vnode.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %i_vnode.i.i, align 8
  %15 = and i16 %14, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %15)
  %cmp.i = icmp eq i16 %15, -32768
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = tail call fastcc i64 @i_size_read(ptr noundef %i_vnode.i.i) #11
  br label %XFS_ISIZE.exit

if.end.i:                                         ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #13
  %i_disk_size.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 18
  %16 = ptrtoint ptr %i_disk_size.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_disk_size.i, align 8
  br label %XFS_ISIZE.exit

XFS_ISIZE.exit:                                   ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i64 [ %call3.i, %if.then.i ], [ %17, %if.end.i ]
  %conv15 = zext i32 %align.034 to i64
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 20
  %18 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %19 to i64
  %shl = shl i64 %conv15, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i, i64 %shl)
  %cmp = icmp slt i64 %retval.0.i, %shl
  %spec.select31 = select i1 %cmp, i32 0, i32 %align.034
  br label %if.end20

if.end20:                                         ; preds = %XFS_ISIZE.exit, %if.end11.if.end20_crit_edge, %land.lhs.true.if.end20_crit_edge
  %align.1 = phi i32 [ 0, %land.lhs.true.if.end20_crit_edge ], [ 0, %if.end11.if.end20_crit_edge ], [ %spec.select31, %XFS_ISIZE.exit ]
  ret i32 %align.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iext_last(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_iext_get_extent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_iomap_write_direct(ptr noundef %ip, i64 noundef %offset_fsb, i64 noundef %count_fsb, i32 %flags, ptr noundef %imap) local_unnamed_addr #0 align 64 {
entry:
  %tp = alloca ptr, align 4
  %nimaps = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #11
  %2 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !80
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nimaps) #11
  %3 = ptrtoint ptr %nimaps to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %nimaps, align 4, !annotation !80
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %count_fsb)
  %cmp.not = icmp eq i64 %count_fsb, 0
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !79

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 210) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %call = tail call i32 @xfs_get_extsz_hint(ptr noundef %ip) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not.i = icmp eq i32 %call, 0
  %extract.t115 = trunc i64 %count_fsb to i32
  br i1 %tobool.not.i, label %cond.end.xfs_aligned_fsb_count.exit_crit_edge, label %if.else162.i.i

cond.end.xfs_aligned_fsb_count.exit_crit_edge:    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_aligned_fsb_count.exit

if.else162.i.i:                                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %offset_fsb)
  %cmp164.i.i = icmp ult i64 %offset_fsb, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !81

if.then168.i.i:                                   ; preds = %if.else162.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv169.i.i = trunc i64 %offset_fsb to i32
  %rem170.i.i = urem i32 %conv169.i.i, %call
  br label %if.else162.i125.i

if.else174.i.i:                                   ; preds = %if.else162.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call, i64 %offset_fsb) #14, !srcloc !82
  %asmresult.i3.i.i = extractvalue { i64, i64 } %4, 0
  %shr.i.i.i = lshr i64 %asmresult.i3.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %if.else162.i125.i

if.else162.i125.i:                                ; preds = %if.else174.i.i, %if.then168.i.i
  %__rem.0.i.i = phi i32 [ %rem170.i.i, %if.then168.i.i ], [ %conv.i.i.i, %if.else174.i.i ]
  %conv.i = zext i32 %__rem.0.i.i to i64
  %count_fsb.addr.0.i = add i64 %conv.i, %count_fsb
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %count_fsb.addr.0.i)
  %cmp164.i124.i = icmp ult i64 %count_fsb.addr.0.i, 4294967296
  br i1 %cmp164.i124.i, label %if.then168.i128.i, label %if.else174.i132.i, !prof !81

if.then168.i128.i:                                ; preds = %if.else162.i125.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv169.i126.i = trunc i64 %count_fsb.addr.0.i to i32
  %rem170.i127.i = urem i32 %conv169.i126.i, %call
  br label %div_u64_rem.exit134.i

if.else174.i132.i:                                ; preds = %if.else162.i125.i
  call void @__sanitizer_cov_trace_pc() #13
  %5 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call, i64 %count_fsb.addr.0.i) #14, !srcloc !82
  %asmresult.i3.i129.i = extractvalue { i64, i64 } %5, 0
  %shr.i.i130.i = lshr i64 %asmresult.i3.i129.i, 32
  %conv.i.i131.i = trunc i64 %shr.i.i130.i to i32
  %extract.t119 = trunc i64 %count_fsb.addr.0.i to i32
  br label %div_u64_rem.exit134.i

div_u64_rem.exit134.i:                            ; preds = %if.else174.i132.i, %if.then168.i128.i
  %count_fsb.addr.0141.i.off0 = phi i32 [ %conv169.i126.i, %if.then168.i128.i ], [ %extract.t119, %if.else174.i132.i ]
  %__rem.0.i133.i = phi i32 [ %rem170.i127.i, %if.then168.i128.i ], [ %conv.i.i131.i, %if.else174.i132.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0.i133.i)
  %tobool4.not.i = icmp eq i32 %__rem.0.i133.i, 0
  %sub.i = sub i32 %call, %__rem.0.i133.i
  %narrow.i = select i1 %tobool4.not.i, i32 0, i32 %sub.i
  %extract.t = add i32 %narrow.i, %count_fsb.addr.0141.i.off0
  br label %xfs_aligned_fsb_count.exit

xfs_aligned_fsb_count.exit:                       ; preds = %div_u64_rem.exit134.i, %cond.end.xfs_aligned_fsb_count.exit_crit_edge
  %count_fsb.addr.2.i.off0 = phi i32 [ %extract.t, %div_u64_rem.exit134.i ], [ %extract.t115, %cond.end.xfs_aligned_fsb_count.exit_crit_edge ]
  %i_diflags = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 24
  %6 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %i_diflags, align 2
  %8 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool3.not = icmp eq i16 %8, 0
  br i1 %tobool3.not, label %xfs_aligned_fsb_count.exit.if.else_crit_edge, label %land.rhs

xfs_aligned_fsb_count.exit.if.else_crit_edge:     ; preds = %xfs_aligned_fsb_count.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.rhs:                                         ; preds = %xfs_aligned_fsb_count.exit
  %9 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ip, align 8
  %m_rtdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %10, i32 0, i32 15
  %11 = ptrtoint ptr %m_rtdev_targp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %m_rtdev_targp, align 64
  %tobool5.not = icmp eq ptr %12, null
  br i1 %tobool5.not, label %land.rhs.if.else_crit_edge, label %if.then, !prof !81

land.rhs.if.else_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %m_bm_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 43
  %13 = ptrtoint ptr %m_bm_maxlevels to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %m_bm_maxlevels, align 8
  %sub = add i32 %14, -1
  br label %if.end

if.else:                                          ; preds = %land.rhs.if.else_crit_edge, %xfs_aligned_fsb_count.exit.if.else_crit_edge
  %m_bm_maxlevels13 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 43
  %15 = ptrtoint ptr %m_bm_maxlevels13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %m_bm_maxlevels13, align 8
  %sub15 = add i32 %count_fsb.addr.2.i.off0, -1
  %conv18 = add i32 %sub15, %16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %dblocks.0 = phi i32 [ %sub, %if.then ], [ %conv18, %if.else ]
  %rblocks.0 = phi i32 [ %count_fsb.addr.2.i.off0, %if.then ], [ 0, %if.else ]
  %call19 = tail call i32 @xfs_qm_dqattach(ptr noundef %ip) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end34, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end34:                                         ; preds = %if.end
  %m_resv = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 65
  %call36 = call i32 @xfs_trans_alloc_inode(ptr noundef %ip, ptr noundef %m_resv, i32 noundef %dblocks.0, i32 noundef %rblocks.0, i1 noundef zeroext false, ptr noundef nonnull %tp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end39:                                         ; preds = %if.end34
  %call40 = call i32 @xfs_iext_count_may_overflow(ptr noundef %ip, i32 noundef 0, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end39.out_trans_cancel_crit_edge

if.end39.out_trans_cancel_crit_edge:              ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_trans_cancel

if.end43:                                         ; preds = %if.end39
  %17 = ptrtoint ptr %nimaps to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %nimaps, align 4
  %18 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tp, align 4
  %call44 = call i32 @xfs_bmapi_write(ptr noundef %19, ptr noundef %ip, i64 noundef %offset_fsb, i64 noundef %count_fsb, i32 noundef 8, i32 noundef 0, ptr noundef %imap, ptr noundef nonnull %nimaps) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end43.out_trans_cancel_crit_edge

if.end43.out_trans_cancel_crit_edge:              ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_trans_cancel

if.end47:                                         ; preds = %if.end43
  %20 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tp, align 4
  %call48 = call i32 @xfs_trans_commit(ptr noundef %21) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end47.out_unlock_crit_edge

if.end47.out_unlock_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end51:                                         ; preds = %if.end47
  %22 = ptrtoint ptr %nimaps to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nimaps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp52 = icmp eq i32 %23, 0
  br i1 %cmp52, label %if.end51.out_unlock_crit_edge, label %if.end55

if.end51.out_unlock_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end55:                                         ; preds = %if.end51
  %br_startblock = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 1
  %24 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %br_startblock, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %25)
  %cmp56.not = icmp eq i64 %25, 0
  br i1 %cmp56.not, label %lor.rhs, label %if.end55.out_unlock_crit_edge

if.end55.out_unlock_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

lor.rhs:                                          ; preds = %if.end55
  %26 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %i_diflags, align 2
  %28 = and i16 %27, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool61.not = icmp eq i16 %28, 0
  br i1 %tobool61.not, label %lor.rhs.if.then75_crit_edge, label %land.rhs62

lor.rhs.if.then75_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then75

land.rhs62:                                       ; preds = %lor.rhs
  %29 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ip, align 8
  %m_rtdev_targp64 = getelementptr inbounds %struct.xfs_mount, ptr %30, i32 0, i32 15
  %31 = ptrtoint ptr %m_rtdev_targp64 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %m_rtdev_targp64, align 64
  %tobool65 = icmp eq ptr %32, null
  br i1 %tobool65, label %land.rhs62.if.then75_crit_edge, label %land.rhs62.out_unlock_crit_edge, !prof !79

land.rhs62.out_unlock_crit_edge:                  ; preds = %land.rhs62
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

land.rhs62.if.then75_crit_edge:                   ; preds = %land.rhs62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then75

if.then75:                                        ; preds = %land.rhs62.if.then75_crit_edge, %lor.rhs.if.then75_crit_edge
  call fastcc void @xfs_alert_fsblock_zero(ptr noundef %ip, ptr noundef %imap)
  br label %out_unlock

out_unlock:                                       ; preds = %out_trans_cancel, %if.then75, %land.rhs62.out_unlock_crit_edge, %if.end55.out_unlock_crit_edge, %if.end51.out_unlock_crit_edge, %if.end47.out_unlock_crit_edge
  %error.0 = phi i32 [ %error.1, %out_trans_cancel ], [ %call48, %if.end47.out_unlock_crit_edge ], [ -117, %if.then75 ], [ 0, %land.rhs62.out_unlock_crit_edge ], [ -28, %if.end51.out_unlock_crit_edge ], [ 0, %if.end55.out_unlock_crit_edge ]
  call void @xfs_iunlock(ptr noundef %ip, i32 noundef 4) #11
  br label %cleanup

out_trans_cancel:                                 ; preds = %if.end43.out_trans_cancel_crit_edge, %if.end39.out_trans_cancel_crit_edge
  %error.1 = phi i32 [ %call40, %if.end39.out_trans_cancel_crit_edge ], [ %call44, %if.end43.out_trans_cancel_crit_edge ]
  %33 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tp, align 4
  call void @xfs_trans_cancel(ptr noundef %34) #11
  br label %out_unlock

cleanup:                                          ; preds = %out_unlock, %if.end34.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out_unlock ], [ %call19, %if.end.cleanup_crit_edge ], [ %call36, %if.end34.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nimaps) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_qm_dqattach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_alloc_inode(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iext_count_may_overflow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmapi_write(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iunlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_iomap_write_unwritten(ptr noundef %ip, i64 noundef %offset, i64 noundef %count, i1 noundef zeroext %update_isize) local_unnamed_addr #0 align 64 {
entry:
  %nimaps = alloca i32, align 4
  %tp = alloca ptr, align 4
  %imap = alloca %struct.xfs_bmbt_irec, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nimaps) #11
  %2 = ptrtoint ptr %nimaps to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %nimaps, align 4, !annotation !80
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #11
  %3 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !80
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %imap) #11
  %4 = call ptr @memset(ptr %imap, i32 255, i32 32)
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %conv = trunc i64 %count to i32
  tail call fastcc void @trace_xfs_unwritten_convert(ptr noundef %ip, i64 noundef %offset, i32 noundef %conv)
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sb_blocklog, align 8
  %add = add i64 %count, %offset
  %m_blockmask = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 31
  %7 = ptrtoint ptr %m_blockmask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %m_blockmask, align 8
  %m_bm_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 43
  %9 = ptrtoint ptr %m_bm_maxlevels to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %m_bm_maxlevels, align 8
  %sub9 = shl i32 %10, 1
  %shl = add i32 %sub9, -2
  %call11 = tail call i32 @xfs_qm_dqattach(ptr noundef %ip) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %do.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %conv2 = zext i32 %8 to i64
  %add3 = add i64 %add, %conv2
  %sh_prom = zext i8 %6 to i64
  %shr8 = lshr i64 %add3, %sh_prom
  %shr = lshr i64 %offset, %sh_prom
  %sub = sub i64 %shr8, %shr
  %m_resv = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 65
  %i_size_seqcount.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 23
  %dep_map.i.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 23, i32 1
  %i_size8.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 14
  %i_disk_size.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 18
  %br_startblock = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 1
  %i_diflags = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 24
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %if.end73.do.body_crit_edge, %do.body.preheader
  %offset_fsb.0 = phi i64 [ %add74, %if.end73.do.body_crit_edge ], [ %shr, %do.body.preheader ]
  %count_fsb.0 = phi i64 [ %sub75, %if.end73.do.body_crit_edge ], [ %sub, %do.body.preheader ]
  %call12 = call i32 @xfs_trans_alloc_inode(ptr noundef %ip, ptr noundef %m_resv, i32 noundef %shl, i32 noundef 0, i1 noundef zeroext true, ptr noundef nonnull %tp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %do.body
  %call16 = call i32 @xfs_iext_count_may_overflow(ptr noundef %ip, i32 noundef 0, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.error_on_bmapi_transaction_crit_edge

if.end15.error_on_bmapi_transaction_crit_edge:    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_on_bmapi_transaction

if.end19:                                         ; preds = %if.end15
  %11 = ptrtoint ptr %nimaps to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %nimaps, align 4
  %12 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tp, align 4
  %call20 = call i32 @xfs_bmapi_write(ptr noundef %13, ptr noundef %ip, i64 noundef %offset_fsb.0, i64 noundef %count_fsb.0, i32 noundef 64, i32 noundef %shl, ptr noundef nonnull %imap, ptr noundef nonnull %nimaps) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.error_on_bmapi_transaction_crit_edge

if.end19.error_on_bmapi_transaction_crit_edge:    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_on_bmapi_transaction

if.end23:                                         ; preds = %if.end19
  %add24 = add i64 %count_fsb.0, %offset_fsb.0
  %14 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sb_blocklog, align 8
  %sh_prom28 = zext i8 %15 to i64
  %shl29 = shl i64 %add24, %sh_prom28
  %16 = call i64 @llvm.smin.i64(i64 %shl29, i64 %add)
  br i1 %update_isize, label %land.lhs.true, label %if.end23.if.end41_crit_edge

if.end23.if.end41_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

land.lhs.true:                                    ; preds = %if.end23
  %call37 = call fastcc i64 @i_size_read(ptr noundef %i_vnode.i)
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %call37)
  %cmp38 = icmp sgt i64 %16, %call37
  br i1 %cmp38, label %if.then40, label %land.lhs.true.if.end41_crit_edge

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then40:                                        ; preds = %land.lhs.true
  %17 = call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %20, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %21 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i, label %if.then40.i_size_write.exit_crit_edge, label %land.lhs.true.i.i

if.then40.i_size_write.exit_crit_edge:            ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  br label %i_size_write.exit

land.lhs.true.i.i:                                ; preds = %if.then40
  %22 = call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %25, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !84
  %26 = call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i, align 4
  %add.i28.i = add i32 %31, ptrtoint (ptr @lockdep_recursion to i32)
  %32 = inttoptr i32 %add.i28.i to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !85
  %35 = call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i.i7.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %38, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool20.not.i.i = icmp eq i32 %34, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.i_size_write.exit_crit_edge

land.lhs.true.i.i.i_size_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %i_size_write.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %39 = call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i.i29.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i29.i to ptr
  %preempt_count.i.i30.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i.i = icmp eq i32 %42, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.i_size_write.exit_crit_edge

land.rhs.i.i.i_size_write.exit_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %i_size_write.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %43 = call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i.i9.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %46, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !86
  %47 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %50, ptrtoint (ptr @hardirqs_enabled to i32)
  %51 = inttoptr i32 %add47.i.i to ptr
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %51, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !87
  %54 = call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i.i12.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %57, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool54.not.i.i = icmp eq i32 %53, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.i_size_write.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %i_size_write.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.i_size_write.exit_crit_edge, label %if.then.i.i, !prof !81

land.rhs58.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %i_size_write.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 271, i32 noundef 9, ptr noundef null) #11
  br label %i_size_write.exit

i_size_write.exit:                                ; preds = %if.then.i.i, %land.rhs58.i.i.i_size_write.exit_crit_edge, %land.rhs22.i.i.i_size_write.exit_crit_edge, %land.rhs.i.i.i_size_write.exit_crit_edge, %land.lhs.true.i.i.i_size_write.exit_crit_edge, %if.then40.i_size_write.exit_crit_edge
  %58 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i.i = add i32 %59, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !88
  %60 = call ptr @llvm.returnaddress(i32 0) #11
  %61 = ptrtoint ptr %60 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %61) #11
  %62 = ptrtoint ptr %i_size8.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %16, ptr %i_size8.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %61) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !89
  %63 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i = add i32 %64, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !90
  %65 = call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i.i26.i = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i26.i to ptr
  %preempt_count.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %preempt_count.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %preempt_count.i.i27.i, align 4
  %sub.i.i = add i32 %68, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i27.i, align 4
  br label %if.end41

if.end41:                                         ; preds = %i_size_write.exit, %land.lhs.true.if.end41_crit_edge, %if.end23.if.end41_crit_edge
  %call1.i = call fastcc i64 @i_size_read(ptr noundef %i_vnode.i) #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call1.i, i64 %16)
  %cmp.i = icmp slt i64 %call1.i, %16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %cmp2.i = icmp slt i64 %16, 0
  %or.cond.i = or i1 %cmp2.i, %cmp.i
  %new_size.addr.0.i = select i1 %or.cond.i, i64 %call1.i, i64 %16
  %69 = ptrtoint ptr %i_disk_size.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %i_disk_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %new_size.addr.0.i, i64 %70)
  %cmp3.i = icmp sle i64 %new_size.addr.0.i, %70
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %new_size.addr.0.i)
  %tobool43.not137 = icmp eq i64 %new_size.addr.0.i, 0
  %tobool43.not = or i1 %cmp3.i, %tobool43.not137
  br i1 %tobool43.not, label %if.end41.if.end45_crit_edge, label %if.then44

if.end41.if.end45_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %i_disk_size.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %new_size.addr.0.i, ptr %i_disk_size.i, align 8
  %72 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tp, align 4
  call void @xfs_trans_log_inode(ptr noundef %73, ptr noundef %ip, i32 noundef 1) #11
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end41.if.end45_crit_edge
  %74 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tp, align 4
  %call46 = call i32 @xfs_trans_commit(ptr noundef %75) #11
  call void @xfs_iunlock(ptr noundef %ip, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end49:                                         ; preds = %if.end45
  %76 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %br_startblock, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %77)
  %cmp50.not = icmp eq i64 %77, 0
  br i1 %cmp50.not, label %lor.rhs, label %if.end49.if.end61_crit_edge

if.end49.if.end61_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

lor.rhs:                                          ; preds = %if.end49
  %78 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %i_diflags, align 2
  %80 = and i16 %79, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %tobool53.not = icmp eq i16 %80, 0
  br i1 %tobool53.not, label %lor.rhs.if.then59_crit_edge, label %land.rhs

lor.rhs.if.then59_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then59

land.rhs:                                         ; preds = %lor.rhs
  %81 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ip, align 8
  %m_rtdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %82, i32 0, i32 15
  %83 = ptrtoint ptr %m_rtdev_targp to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %m_rtdev_targp, align 64
  %tobool55.not = icmp eq ptr %84, null
  br i1 %tobool55.not, label %land.rhs.if.then59_crit_edge, label %land.rhs.if.end61_crit_edge, !prof !79

land.rhs.if.end61_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

land.rhs.if.then59_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then59

if.then59:                                        ; preds = %land.rhs.if.then59_crit_edge, %lor.rhs.if.then59_crit_edge
  %85 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ip, align 8
  %i_ino.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 4
  %87 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %i_ino.i, align 8
  %89 = ptrtoint ptr %imap to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %imap, align 8
  %91 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %br_blockcount, align 8
  %br_state.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 3
  %93 = ptrtoint ptr %br_state.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %br_state.i, align 8
  call void (ptr, i32, ptr, ...) @xfs_alert_tag(ptr noundef %86, i32 noundef 128, ptr noundef nonnull @.str.4, i64 noundef %88, i64 noundef 0, i64 noundef %90, i64 noundef %92, i32 noundef %94) #11
  br label %cleanup

if.end61:                                         ; preds = %land.rhs.if.end61_crit_edge, %if.end49.if.end61_crit_edge
  %95 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %br_blockcount, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %96)
  %cmp62 = icmp eq i64 %96, 0
  br i1 %cmp62, label %cond.false, label %if.end73

cond.false:                                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 600) #11
  br label %cleanup

if.end73:                                         ; preds = %if.end61
  %add74 = add i64 %96, %offset_fsb.0
  %sub75 = sub i64 %count_fsb.0, %96
  %cmp76.not = icmp eq i64 %sub75, 0
  br i1 %cmp76.not, label %if.end73.cleanup_crit_edge, label %if.end73.do.body_crit_edge

if.end73.do.body_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

error_on_bmapi_transaction:                       ; preds = %if.end19.error_on_bmapi_transaction_crit_edge, %if.end15.error_on_bmapi_transaction_crit_edge
  %error.0 = phi i32 [ %call16, %if.end15.error_on_bmapi_transaction_crit_edge ], [ %call20, %if.end19.error_on_bmapi_transaction_crit_edge ]
  %97 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %tp, align 4
  call void @xfs_trans_cancel(ptr noundef %98) #11
  call void @xfs_iunlock(ptr noundef %ip, i32 noundef 4) #11
  br label %cleanup

cleanup:                                          ; preds = %error_on_bmapi_transaction, %if.end73.cleanup_crit_edge, %cond.false, %if.then59, %if.end45.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %error_on_bmapi_transaction ], [ -117, %if.then59 ], [ %call11, %entry.cleanup_crit_edge ], [ 0, %cond.false ], [ 0, %if.end73.cleanup_crit_edge ], [ %call46, %if.end45.cleanup_crit_edge ], [ %call12, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %imap) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nimaps) #11
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_unwritten_convert(ptr noundef %ip, i64 noundef %offset, i32 noundef %count) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_unwritten_convert, i32 0, i32 1), ptr blockaddress(@trace_xfs_unwritten_convert, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !91

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !69) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !81

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !92
  %call42 = tail call i32 @__traceiter_xfs_unwritten_convert(ptr noundef null, ptr noundef %ip, i64 noundef %offset, i32 noundef %count) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !93
  %13 = tail call i32 @llvm.read_register.i32(metadata !69) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !69) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !81

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !94
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_unwritten_convert, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_unwritten_convert, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_unwritten_convert.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_unwritten_convert.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 1531, ptr noundef nonnull @.str.6) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !95
  %31 = tail call i32 @llvm.read_register.i32(metadata !69) #11
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
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !96
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  %1 = tail call ptr @llvm.returnaddress(i32 0) #11
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #11
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #11
  tail call void @trace_hardirqs_on() #11
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %3 = tail call ptr @llvm.returnaddress(i32 0) #11
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #11
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #11
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !97
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !79

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #11, !srcloc !98
  %6 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount, align 4
  %and29 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not30 = icmp eq i32 %and29, 0
  br i1 %tobool.not30, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !99
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !100
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !101
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !102
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_log_inode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_direct_write_iomap_begin(ptr noundef %inode, i64 noundef %offset, i64 noundef %length, i32 noundef %flags, ptr nocapture noundef %iomap, ptr nocapture noundef %srcmap) #0 align 64 {
entry:
  %imap = alloca %struct.xfs_bmbt_irec, align 8
  %cmap = alloca %struct.xfs_bmbt_irec, align 8
  %nimaps = alloca i32, align 4
  %shared = alloca i8, align 1
  %lockmode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -312
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %imap) #11
  %2 = call ptr @memset(ptr %imap, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmap) #11
  %3 = call ptr @memset(ptr %cmap, i32 255, i32 32)
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %5 to i64
  %shr = lshr i64 %offset, %sh_prom
  %m_super.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %m_super.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m_super.i, align 8
  %s_maxbytes.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %s_maxbytes.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %s_maxbytes.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %offset)
  %cmp.not.i = icmp slt i64 %9, %offset
  br i1 %cmp.not.i, label %cond.false.i, label %entry.xfs_iomap_end_fsb.exit_crit_edge, !prof !79

entry.xfs_iomap_end_fsb.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iomap_end_fsb.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 120) #11
  br label %xfs_iomap_end_fsb.exit

xfs_iomap_end_fsb.exit:                           ; preds = %cond.false.i, %entry.xfs_iomap_end_fsb.exit_crit_edge
  %add.i = add i64 %length, %offset
  %m_blockmask.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 31
  %10 = ptrtoint ptr %m_blockmask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %m_blockmask.i, align 8
  %conv.i = zext i32 %11 to i64
  %add2.i = add i64 %add.i, %conv.i
  %12 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sb_blocklog, align 8
  %sh_prom.i = zext i8 %13 to i64
  %shr.i = lshr i64 %add2.i, %sh_prom.i
  %14 = ptrtoint ptr %m_super.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %m_super.i, align 8
  %s_maxbytes5.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %s_maxbytes5.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %s_maxbytes5.i, align 8
  %add8.i = add i64 %17, %conv.i
  %shr13.i = lshr i64 %add8.i, %sh_prom.i
  %18 = tail call i64 @llvm.umin.i64(i64 %shr.i, i64 %shr13.i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nimaps) #11
  %19 = ptrtoint ptr %nimaps to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %nimaps, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %shared) #11
  %20 = ptrtoint ptr %shared to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %shared, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lockmode) #11
  %21 = ptrtoint ptr %lockmode to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %lockmode, align 4, !annotation !80
  %and = and i32 %flags, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %xfs_iomap_end_fsb.exit.cond.end_crit_edge, !prof !79

xfs_iomap_end_fsb.exit.cond.end_crit_edge:        ; preds = %xfs_iomap_end_fsb.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %xfs_iomap_end_fsb.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 742) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %xfs_iomap_end_fsb.exit.cond.end_crit_edge
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 66
  %22 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %m_opstate.i, align 4
  %24 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.not = icmp eq i32 %24, 0
  br i1 %tobool.i.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %call5 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %call5)
  %cmp = icmp sgt i64 %add.i, %call5
  %spec.select = select i1 %cmp, i16 2, i16 0
  %call11 = call fastcc i32 @xfs_ilock_for_iomap(ptr noundef %add.ptr.i, i32 noundef %flags, ptr noundef nonnull %lockmode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %sub = sub i64 %18, %shr
  %call15 = call i32 @xfs_bmapi_read(ptr noundef %add.ptr.i, i64 noundef %shr, i64 noundef %sub, ptr noundef nonnull %imap, ptr noundef nonnull %nimaps, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.out_unlock_crit_edge

if.end14.out_unlock_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end18:                                         ; preds = %if.end14
  %25 = ptrtoint ptr %nimaps to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nimaps, align 4
  %i_diflags2.i.i.i = getelementptr i8, ptr %inode, i32 -24
  %27 = ptrtoint ptr %i_diflags2.i.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %i_diflags2.i.i.i, align 8
  %and.i.i.i = and i64 %28, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %lor.rhs.i.i, label %if.end18.if.end.i_crit_edge

if.end18.if.end.i_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

lor.rhs.i.i:                                      ; preds = %if.end18
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i, align 8
  %m_always_cow.i.i.i = getelementptr inbounds %struct.xfs_mount, ptr %30, i32 0, i32 67
  %31 = ptrtoint ptr %m_always_cow.i.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %m_always_cow.i.i.i, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i.i.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i.i.i, label %lor.rhs.i.i.if.end40_crit_edge, label %xfs_is_cow_inode.exit.i

lor.rhs.i.i.if.end40_crit_edge:                   ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

xfs_is_cow_inode.exit.i:                          ; preds = %lor.rhs.i.i
  %m_features.i.i.i.i = getelementptr inbounds %struct.xfs_mount, ptr %30, i32 0, i32 61
  %33 = ptrtoint ptr %m_features.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %m_features.i.i.i.i, align 8
  %and.i.i.i.i = and i64 %34, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i)
  %tobool.i.i.i.not.i = icmp eq i64 %and.i.i.i.i, 0
  br i1 %tobool.i.i.i.not.i, label %xfs_is_cow_inode.exit.i.if.end40_crit_edge, label %xfs_is_cow_inode.exit.i.if.end.i_crit_edge

xfs_is_cow_inode.exit.i.if.end.i_crit_edge:       ; preds = %xfs_is_cow_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

xfs_is_cow_inode.exit.i.if.end40_crit_edge:       ; preds = %xfs_is_cow_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.end.i:                                         ; preds = %xfs_is_cow_inode.exit.i.if.end.i_crit_edge, %if.end18.if.end.i_crit_edge
  %and.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.then20_crit_edge, label %if.then1.i

if.end.i.if.then20_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool2.not.i = icmp eq i32 %26, 0
  br i1 %tobool2.not.i, label %if.then1.i.if.end40_crit_edge, label %lor.lhs.false.i

if.then1.i.if.end40_crit_edge:                    ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

lor.lhs.false.i:                                  ; preds = %if.then1.i
  %br_startblock.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 1
  %35 = ptrtoint ptr %br_startblock.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %br_startblock.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %36)
  %cmp.i = icmp eq i64 %36, -2
  br i1 %cmp.i, label %lor.lhs.false.i.if.end40_crit_edge, label %lor.lhs.false3.i

lor.lhs.false.i.if.end40_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %br_state.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 3
  %37 = ptrtoint ptr %br_state.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %br_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp4.i = icmp eq i32 %38, 1
  br i1 %cmp4.i, label %lor.lhs.false3.i.if.end40_crit_edge, label %lor.lhs.false3.i.if.then20_crit_edge

lor.lhs.false3.i.if.then20_crit_edge:             ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

lor.lhs.false3.i.if.end40_crit_edge:              ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then20:                                        ; preds = %lor.lhs.false3.i.if.then20_crit_edge, %if.end.i.if.then20_crit_edge
  %and21 = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end24, label %if.then20.out_unlock_crit_edge

if.then20.out_unlock_crit_edge:                   ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end24:                                         ; preds = %if.then20
  %and25 = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26 = icmp ne i32 %and25, 0
  %call27 = call i32 @xfs_reflink_allocate_cow(ptr noundef %add.ptr.i, ptr noundef nonnull %imap, ptr noundef nonnull %cmap, ptr noundef nonnull %shared, ptr noundef nonnull %lockmode, i1 noundef zeroext %tobool26) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end24.out_unlock_crit_edge

if.end24.out_unlock_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end30:                                         ; preds = %if.end24
  %39 = ptrtoint ptr %shared to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %shared, align 1, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool31.not = icmp eq i8 %40, 0
  br i1 %tobool31.not, label %if.end33, label %out_found_cow

if.end33:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %imap to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %imap, align 8
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 2
  %43 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %br_blockcount, align 8
  %add34 = add i64 %44, %42
  %45 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %sb_blocklog, align 8
  %sh_prom38 = zext i8 %46 to i64
  %shl = shl i64 %add34, %sh_prom38
  %sub39 = sub i64 %shl, %offset
  br label %if.end40

if.end40:                                         ; preds = %if.end33, %lor.lhs.false3.i.if.end40_crit_edge, %lor.lhs.false.i.if.end40_crit_edge, %if.then1.i.if.end40_crit_edge, %xfs_is_cow_inode.exit.i.if.end40_crit_edge, %lor.rhs.i.i.if.end40_crit_edge
  %end_fsb.0 = phi i64 [ %add34, %if.end33 ], [ %18, %xfs_is_cow_inode.exit.i.if.end40_crit_edge ], [ %18, %lor.lhs.false3.i.if.end40_crit_edge ], [ %18, %lor.lhs.false.i.if.end40_crit_edge ], [ %18, %if.then1.i.if.end40_crit_edge ], [ %18, %lor.rhs.i.i.if.end40_crit_edge ]
  %length.addr.0 = phi i64 [ %sub39, %if.end33 ], [ %length, %xfs_is_cow_inode.exit.i.if.end40_crit_edge ], [ %length, %lor.lhs.false3.i.if.end40_crit_edge ], [ %length, %lor.lhs.false.i.if.end40_crit_edge ], [ %length, %if.then1.i.if.end40_crit_edge ], [ %length, %lor.rhs.i.i.if.end40_crit_edge ]
  %and.i223 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i223)
  %tobool.not.i224 = icmp eq i32 %and.i223, 0
  br i1 %tobool.not.i224, label %if.end.i225, label %if.end40.if.end43_crit_edge

if.end40.if.end43_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.end.i225:                                      ; preds = %if.end40
  %47 = ptrtoint ptr %nimaps to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nimaps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool1.not.i = icmp eq i32 %48, 0
  br i1 %tobool1.not.i, label %if.end.i225.allocate_blocks_crit_edge, label %imap_needs_alloc.exit

if.end.i225.allocate_blocks_crit_edge:            ; preds = %if.end.i225
  call void @__sanitizer_cov_trace_pc() #13
  br label %allocate_blocks

imap_needs_alloc.exit:                            ; preds = %if.end.i225
  %br_startblock.i226 = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 1
  %49 = ptrtoint ptr %br_startblock.i226 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %br_startblock.i226, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3, i64 %50)
  %switch.i = icmp ugt i64 %50, -3
  br i1 %switch.i, label %imap_needs_alloc.exit.allocate_blocks_crit_edge, label %imap_needs_alloc.exit.if.end43_crit_edge

imap_needs_alloc.exit.if.end43_crit_edge:         ; preds = %imap_needs_alloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

imap_needs_alloc.exit.allocate_blocks_crit_edge:  ; preds = %imap_needs_alloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %allocate_blocks

if.end43:                                         ; preds = %imap_needs_alloc.exit.if.end43_crit_edge, %if.end40.if.end43_crit_edge
  %and44 = and i32 %flags, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end43.if.end50_crit_edge, label %if.then46

if.end43.if.end50_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.then46:                                        ; preds = %if.end43
  %51 = ptrtoint ptr %imap to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %imap, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %52, i64 %shr)
  %cmp.i229 = icmp ugt i64 %52, %shr
  br i1 %cmp.i229, label %if.then46.out_unlock_crit_edge, label %imap_spans_range.exit

if.then46.out_unlock_crit_edge:                   ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

imap_spans_range.exit:                            ; preds = %if.then46
  %br_blockcount.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 2
  %53 = ptrtoint ptr %br_blockcount.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %br_blockcount.i, align 8
  %add.i230 = add i64 %54, %52
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i230, i64 %end_fsb.0)
  %cmp2.i.not = icmp ult i64 %add.i230, %end_fsb.0
  br i1 %cmp2.i.not, label %imap_spans_range.exit.out_unlock_crit_edge, label %imap_spans_range.exit.if.end50_crit_edge

imap_spans_range.exit.if.end50_crit_edge:         ; preds = %imap_spans_range.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

imap_spans_range.exit.out_unlock_crit_edge:       ; preds = %imap_spans_range.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end50:                                         ; preds = %imap_spans_range.exit.if.end50_crit_edge, %if.end43.if.end50_crit_edge
  %and51 = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end50.if.end62_crit_edge, label %if.then53

if.end50.if.end62_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

if.then53:                                        ; preds = %if.end50
  %br_state = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 3
  %55 = ptrtoint ptr %br_state to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %br_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp54.not = icmp eq i32 %56, 0
  br i1 %cmp54.not, label %if.then53.if.end62_crit_edge, label %land.lhs.true

if.then53.if.end62_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

land.lhs.true:                                    ; preds = %if.then53
  %or56 = or i64 %length.addr.0, %offset
  %57 = ptrtoint ptr %m_blockmask.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %m_blockmask.i, align 8
  %conv57 = zext i32 %58 to i64
  %and58 = and i64 %or56, %conv57
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and58)
  %tobool59.not = icmp eq i64 %and58, 0
  br i1 %tobool59.not, label %land.lhs.true.if.end62_crit_edge, label %land.lhs.true.out_unlock_crit_edge

land.lhs.true.out_unlock_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

land.lhs.true.if.end62_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

if.end62:                                         ; preds = %land.lhs.true.if.end62_crit_edge, %if.then53.if.end62_crit_edge, %if.end50.if.end62_crit_edge
  %59 = ptrtoint ptr %lockmode to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %lockmode, align 4
  call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef %60) #11
  %conv63 = trunc i64 %length.addr.0 to i32
  call fastcc void @trace_xfs_iomap_found(ptr noundef %add.ptr.i, i64 noundef %offset, i32 noundef %conv63, i32 noundef 0, ptr noundef nonnull %imap)
  %call64 = call i32 @xfs_bmbt_to_iomap(ptr noundef %add.ptr.i, ptr noundef %iomap, ptr noundef nonnull %imap, i32 undef, i16 noundef zeroext %spec.select)
  br label %cleanup

allocate_blocks:                                  ; preds = %imap_needs_alloc.exit.allocate_blocks_crit_edge, %if.end.i225.allocate_blocks_crit_edge
  %and65 = and i32 %flags, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end68, label %allocate_blocks.out_unlock_crit_edge

allocate_blocks.out_unlock_crit_edge:             ; preds = %allocate_blocks
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end68:                                         ; preds = %allocate_blocks
  %61 = call i64 @llvm.smin.i64(i64 %length.addr.0, i64 4194304)
  %call74 = call fastcc i64 @xfs_iomap_end_fsb(ptr noundef %1, i64 noundef %offset, i64 noundef %61)
  %add75 = add i64 %61, %offset
  %62 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %inode, align 8
  %64 = and i16 %63, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %64)
  %cmp.i233 = icmp eq i16 %64, -32768
  br i1 %cmp.i233, label %if.then.i, label %if.end.i234

if.then.i:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = call fastcc i64 @i_size_read(ptr noundef %inode) #11
  br label %XFS_ISIZE.exit

if.end.i234:                                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  %i_disk_size.i = getelementptr i8, ptr %inode, i32 -56
  %65 = ptrtoint ptr %i_disk_size.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %i_disk_size.i, align 8
  br label %XFS_ISIZE.exit

XFS_ISIZE.exit:                                   ; preds = %if.end.i234, %if.then.i
  %retval.0.i235 = phi i64 [ %call3.i, %if.then.i ], [ %66, %if.end.i234 ]
  call void @__sanitizer_cov_trace_cmp8(i64 %add75, i64 %retval.0.i235)
  %cmp77 = icmp sgt i64 %add75, %retval.0.i235
  br i1 %cmp77, label %if.then79, label %if.else

if.then79:                                        ; preds = %XFS_ISIZE.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call80 = call i64 @xfs_iomap_eof_align_last_fsb(ptr noundef %add.ptr.i, i64 noundef %call74)
  br label %if.end97

if.else:                                          ; preds = %XFS_ISIZE.exit
  %67 = ptrtoint ptr %nimaps to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %nimaps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool81.not = icmp eq i32 %68, 0
  br i1 %tobool81.not, label %if.else.if.end97_crit_edge, label %land.lhs.true82

if.else.if.end97_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97

land.lhs.true82:                                  ; preds = %if.else
  %br_startblock = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 1
  %69 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %br_startblock, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %70)
  %cmp83 = icmp eq i64 %70, -2
  br i1 %cmp83, label %if.then85, label %land.lhs.true82.if.end97_crit_edge

land.lhs.true82.if.end97_crit_edge:               ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97

if.then85:                                        ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %imap to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %imap, align 8
  %br_blockcount87 = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 2
  %73 = ptrtoint ptr %br_blockcount87 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %br_blockcount87, align 8
  %add88 = add i64 %74, %72
  %75 = call i64 @llvm.umin.i64(i64 %call74, i64 %add88)
  br label %if.end97

if.end97:                                         ; preds = %if.then85, %land.lhs.true82.if.end97_crit_edge, %if.else.if.end97_crit_edge, %if.then79
  %end_fsb.1 = phi i64 [ %call80, %if.then79 ], [ %75, %if.then85 ], [ %call74, %land.lhs.true82.if.end97_crit_edge ], [ %call74, %if.else.if.end97_crit_edge ]
  %76 = ptrtoint ptr %lockmode to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %lockmode, align 4
  call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef %77) #11
  %sub98 = sub i64 %end_fsb.1, %shr
  %call99 = call i32 @xfs_iomap_write_direct(ptr noundef %add.ptr.i, i64 noundef %shr, i64 noundef %sub98, i32 undef, ptr noundef nonnull %imap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end102, label %if.end97.cleanup_crit_edge

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end102:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #13
  %conv103 = trunc i64 %61 to i32
  call fastcc void @trace_xfs_iomap_alloc(ptr noundef %add.ptr.i, i64 noundef %offset, i32 noundef %conv103, i32 noundef 0, ptr noundef nonnull %imap)
  %78 = or i16 %spec.select, 1
  %call107 = call i32 @xfs_bmbt_to_iomap(ptr noundef %add.ptr.i, ptr noundef %iomap, ptr noundef nonnull %imap, i32 undef, i16 noundef zeroext %78)
  br label %cleanup

out_found_cow:                                    ; preds = %if.end30
  %79 = ptrtoint ptr %lockmode to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %lockmode, align 4
  call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef %80) #11
  %81 = ptrtoint ptr %cmap to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %cmap, align 8
  %br_blockcount109 = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %cmap, i32 0, i32 2
  %83 = ptrtoint ptr %br_blockcount109 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %br_blockcount109, align 8
  %add110 = add i64 %84, %82
  %85 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %sb_blocklog, align 8
  %sh_prom114 = zext i8 %86 to i64
  %shl115 = shl i64 %add110, %sh_prom114
  %sub116 = sub i64 %shl115, %offset
  %conv117 = trunc i64 %sub116 to i32
  call fastcc void @trace_xfs_iomap_found(ptr noundef %add.ptr.i, i64 noundef %offset, i32 noundef %conv117, i32 noundef 2, ptr noundef nonnull %cmap)
  %br_startblock118 = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 1
  %87 = ptrtoint ptr %br_startblock118 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %br_startblock118, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %88)
  %cmp119.not = icmp eq i64 %88, -2
  br i1 %cmp119.not, label %out_found_cow.if.end126_crit_edge, label %if.then121

out_found_cow.if.end126_crit_edge:                ; preds = %out_found_cow
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end126

if.then121:                                       ; preds = %out_found_cow
  %call122 = call i32 @xfs_bmbt_to_iomap(ptr noundef %add.ptr.i, ptr noundef %srcmap, ptr noundef nonnull %imap, i32 undef, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.then121.if.end126_crit_edge, label %if.then121.cleanup_crit_edge

if.then121.cleanup_crit_edge:                     ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then121.if.end126_crit_edge:                   ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end126

if.end126:                                        ; preds = %if.then121.if.end126_crit_edge, %out_found_cow.if.end126_crit_edge
  %call127 = call i32 @xfs_bmbt_to_iomap(ptr noundef %add.ptr.i, ptr noundef %iomap, ptr noundef nonnull %cmap, i32 undef, i16 noundef zeroext 4)
  br label %cleanup

out_unlock:                                       ; preds = %allocate_blocks.out_unlock_crit_edge, %land.lhs.true.out_unlock_crit_edge, %imap_spans_range.exit.out_unlock_crit_edge, %if.then46.out_unlock_crit_edge, %if.end24.out_unlock_crit_edge, %if.then20.out_unlock_crit_edge, %if.end14.out_unlock_crit_edge
  %error.0 = phi i32 [ %call15, %if.end14.out_unlock_crit_edge ], [ -11, %if.then20.out_unlock_crit_edge ], [ %call27, %if.end24.out_unlock_crit_edge ], [ -11, %allocate_blocks.out_unlock_crit_edge ], [ -11, %land.lhs.true.out_unlock_crit_edge ], [ -11, %imap_spans_range.exit.out_unlock_crit_edge ], [ -11, %if.then46.out_unlock_crit_edge ]
  %89 = ptrtoint ptr %lockmode to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %lockmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool128.not = icmp eq i32 %90, 0
  br i1 %tobool128.not, label %out_unlock.cleanup_crit_edge, label %if.then129

out_unlock.cleanup_crit_edge:                     ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then129:                                       ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #13
  call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef %90) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then129, %out_unlock.cleanup_crit_edge, %if.end126, %if.then121.cleanup_crit_edge, %if.end102, %if.end97.cleanup_crit_edge, %if.end62, %if.end.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call127, %if.end126 ], [ %call107, %if.end102 ], [ %call64, %if.end62 ], [ -5, %cond.end.cleanup_crit_edge ], [ %call11, %if.end.cleanup_crit_edge ], [ %call99, %if.end97.cleanup_crit_edge ], [ %call122, %if.then121.cleanup_crit_edge ], [ %error.0, %if.then129 ], [ %error.0, %out_unlock.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lockmode) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %shared) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nimaps) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmap) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %imap) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_buffered_write_iomap_begin(ptr noundef %inode, i64 noundef %offset, i64 noundef %count, i32 noundef %flags, ptr nocapture noundef %iomap, ptr nocapture noundef %srcmap) #0 align 64 {
entry:
  %imap = alloca %struct.xfs_bmbt_irec, align 8
  %cmap = alloca %struct.xfs_bmbt_irec, align 8
  %icur = alloca %struct.xfs_iext_cursor, align 4
  %ccur = alloca %struct.xfs_iext_cursor, align 4
  %shared = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -312
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %3 to i64
  %shr = lshr i64 %offset, %sh_prom
  %m_super.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %m_super.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m_super.i, align 8
  %s_maxbytes.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %s_maxbytes.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %s_maxbytes.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %offset)
  %cmp.not.i = icmp slt i64 %7, %offset
  br i1 %cmp.not.i, label %cond.false.i, label %entry.xfs_iomap_end_fsb.exit_crit_edge, !prof !79

entry.xfs_iomap_end_fsb.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iomap_end_fsb.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 120) #11
  br label %xfs_iomap_end_fsb.exit

xfs_iomap_end_fsb.exit:                           ; preds = %cond.false.i, %entry.xfs_iomap_end_fsb.exit_crit_edge
  %add.i = add i64 %count, %offset
  %m_blockmask.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 31
  %8 = ptrtoint ptr %m_blockmask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %m_blockmask.i, align 8
  %conv.i = zext i32 %9 to i64
  %add2.i = add i64 %add.i, %conv.i
  %10 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sb_blocklog, align 8
  %sh_prom.i = zext i8 %11 to i64
  %shr.i = lshr i64 %add2.i, %sh_prom.i
  %12 = ptrtoint ptr %m_super.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %m_super.i, align 8
  %s_maxbytes5.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %s_maxbytes5.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %s_maxbytes5.i, align 8
  %add8.i = add i64 %15, %conv.i
  %shr13.i = lshr i64 %add8.i, %sh_prom.i
  %16 = tail call i64 @llvm.umin.i64(i64 %shr.i, i64 %shr13.i) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %imap) #11
  %17 = call ptr @memset(ptr %imap, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmap) #11
  %18 = call ptr @memset(ptr %cmap, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %icur) #11
  %19 = ptrtoint ptr %icur to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 -1 to ptr), ptr %icur, align 4, !annotation !80
  %20 = getelementptr inbounds %struct.xfs_iext_cursor, ptr %icur, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %20, align 4, !annotation !80
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ccur) #11
  %22 = ptrtoint ptr %ccur to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 -1 to ptr), ptr %ccur, align 4, !annotation !80
  %23 = getelementptr inbounds %struct.xfs_iext_cursor, ptr %ccur, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %23, align 4, !annotation !80
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %shared) #11
  %25 = ptrtoint ptr %shared to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %shared, align 1
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 66
  %26 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %m_opstate.i, align 4
  %28 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not = icmp eq i32 %28, 0
  br i1 %tobool.i.not, label %if.end, label %xfs_iomap_end_fsb.exit.cleanup_crit_edge

xfs_iomap_end_fsb.exit.cleanup_crit_edge:         ; preds = %xfs_iomap_end_fsb.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %xfs_iomap_end_fsb.exit
  %call3 = tail call i32 @xfs_get_extsz_hint(ptr noundef %add.ptr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 @xfs_direct_write_iomap_begin(ptr noundef %inode, i64 noundef %offset, i64 noundef %count, i32 noundef %flags, ptr noundef %iomap, ptr noundef %srcmap)
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %i_diflags = getelementptr i8, ptr %inode, i32 -26
  %29 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %i_diflags, align 2
  %31 = and i16 %30, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool8.not = icmp eq i16 %31, 0
  br i1 %tobool8.not, label %if.end6.cond.end_crit_edge, label %land.rhs

if.end6.cond.end_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

land.rhs:                                         ; preds = %if.end6
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 8
  %m_rtdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %33, i32 0, i32 15
  %34 = ptrtoint ptr %m_rtdev_targp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %m_rtdev_targp, align 64
  %tobool10.not = icmp eq ptr %35, null
  br i1 %tobool10.not, label %land.rhs.cond.end_crit_edge, label %cond.false, !prof !81

land.rhs.cond.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 893) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %land.rhs.cond.end_crit_edge, %if.end6.cond.end_crit_edge
  tail call void @xfs_ilock(ptr noundef %add.ptr.i, i32 noundef 4) #11
  %i_df = getelementptr i8, ptr %inode, i32 -264
  %if_format.i = getelementptr i8, ptr %inode, i32 -238
  %36 = ptrtoint ptr %if_format.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %if_format.i, align 2
  %38 = and i8 %37, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %38)
  %39 = icmp eq i8 %38, 2
  br i1 %39, label %lor.lhs.false, label %__here, !prof !81

__here:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !104
  tail call void @xfs_corruption_error(ptr noundef nonnull @.str.12, i32 noundef 1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 897, ptr noundef blockaddress(@xfs_buffered_write_iomap_begin, %__here)) #11
  br label %out_unlock

lor.lhs.false:                                    ; preds = %cond.end
  %call25 = tail call zeroext i1 @xfs_errortag_test(ptr noundef %1, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 898, i32 noundef 21) #11
  br i1 %call25, label %lor.lhs.false.out_unlock_crit_edge, label %do.body29

lor.lhs.false.out_unlock_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

do.body29:                                        ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %40 = load ptr, ptr @xfsstats, align 4
  %41 = ptrtoint ptr %40 to i32
  %42 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx, align 4
  %add = add i32 %47, %41
  %48 = inttoptr i32 %add to ptr
  %xs_blk_mapw = getelementptr inbounds %struct.__xfsstats, ptr %48, i32 0, i32 9
  %49 = ptrtoint ptr %xs_blk_mapw to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %xs_blk_mapw, align 4
  %inc = add i32 %50, 1
  store i32 %inc, ptr %xs_blk_mapw, align 4
  %m_stats = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 92
  %51 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %m_stats, align 4
  %53 = ptrtoint ptr %52 to i32
  %54 = load i32, ptr %cpu, align 4
  %arrayidx42 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %54
  %55 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx42, align 4
  %add43 = add i32 %56, %53
  %57 = inttoptr i32 %add43 to ptr
  %xs_blk_mapw44 = getelementptr inbounds %struct.__xfsstats, ptr %57, i32 0, i32 9
  %58 = ptrtoint ptr %xs_blk_mapw44 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %xs_blk_mapw44, align 4
  %inc45 = add i32 %59, 1
  store i32 %inc45, ptr %xs_blk_mapw44, align 4
  %call48 = tail call i32 @xfs_iread_extents(ptr noundef null, ptr noundef %add.ptr.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %do.body29.out_unlock_crit_edge

do.body29.out_unlock_crit_edge:                   ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end51:                                         ; preds = %do.body29
  %call53 = call zeroext i1 @xfs_iext_lookup_extent(ptr noundef %add.ptr.i, ptr noundef %i_df, i64 noundef %shr, ptr noundef nonnull %icur, ptr noundef nonnull %imap) #11
  %lnot54 = xor i1 %call53, true
  br i1 %call53, label %if.end51.if.end58_crit_edge, label %if.then57

if.end51.if.end58_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.then57:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %imap to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %16, ptr %imap, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end51.if.end58_crit_edge
  %and59 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end58.if.end65_crit_edge, label %land.lhs.true

if.end58.if.end65_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65

land.lhs.true:                                    ; preds = %if.end58
  %61 = ptrtoint ptr %imap to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %imap, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %62, i64 %shr)
  %cmp = icmp ugt i64 %62, %shr
  br i1 %cmp, label %if.then63, label %land.lhs.true.if.end65_crit_edge

land.lhs.true.if.end65_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65

if.then63:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @xfs_hole_to_iomap(ptr noundef %add.ptr.i, ptr noundef %iomap, i64 noundef %shr, i64 noundef %62)
  br label %out_unlock

if.end65:                                         ; preds = %land.lhs.true.if.end65_crit_edge, %if.end58.if.end65_crit_edge
  %i_diflags2.i.i = getelementptr i8, ptr %inode, i32 -24
  %63 = ptrtoint ptr %i_diflags2.i.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %i_diflags2.i.i, align 8
  %and.i.i = and i64 %64, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %lor.rhs.i, label %if.then67

lor.rhs.i:                                        ; preds = %if.end65
  %65 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr.i, align 8
  %m_always_cow.i.i = getelementptr inbounds %struct.xfs_mount, ptr %66, i32 0, i32 67
  %67 = ptrtoint ptr %m_always_cow.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %m_always_cow.i.i, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i.i = icmp eq i8 %68, 0
  br i1 %tobool.not.i.i, label %lor.rhs.i.if.end95_crit_edge, label %xfs_is_cow_inode.exit

lor.rhs.i.if.end95_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

xfs_is_cow_inode.exit:                            ; preds = %lor.rhs.i
  %m_features.i.i.i = getelementptr inbounds %struct.xfs_mount, ptr %66, i32 0, i32 61
  %69 = ptrtoint ptr %m_features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %m_features.i.i.i, align 8
  %and.i.i.i = and i64 %70, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.i.i.not = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.i.i.not, label %xfs_is_cow_inode.exit.if.end95_crit_edge, label %if.then67.thread

xfs_is_cow_inode.exit.if.end95_crit_edge:         ; preds = %xfs_is_cow_inode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

if.then67:                                        ; preds = %if.end65
  %i_cowfp = getelementptr i8, ptr %inode, i32 -268
  %71 = ptrtoint ptr %i_cowfp to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %i_cowfp, align 4
  %tobool68.not = icmp eq ptr %72, null
  br i1 %tobool68.not, label %cond.false80, label %if.then67.if.end82_crit_edge

if.then67.if.end82_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

if.then67.thread:                                 ; preds = %xfs_is_cow_inode.exit
  %i_cowfp414 = getelementptr i8, ptr %inode, i32 -268
  %73 = ptrtoint ptr %i_cowfp414 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %i_cowfp414, align 4
  %tobool68.not415 = icmp eq ptr %74, null
  br i1 %tobool68.not415, label %if.then67.thread.cond.end81_crit_edge, label %if.then67.thread.if.end82_crit_edge

if.then67.thread.if.end82_crit_edge:              ; preds = %if.then67.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

if.then67.thread.cond.end81_crit_edge:            ; preds = %if.then67.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end81

cond.false80:                                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 935) #11
  br label %cond.end81

cond.end81:                                       ; preds = %cond.false80, %if.then67.thread.cond.end81_crit_edge
  %i_cowfp417420 = phi ptr [ %i_cowfp, %cond.false80 ], [ %i_cowfp414, %if.then67.thread.cond.end81_crit_edge ]
  call void @xfs_ifork_init_cow(ptr noundef %add.ptr.i) #11
  br label %if.end82

if.end82:                                         ; preds = %cond.end81, %if.then67.thread.if.end82_crit_edge, %if.then67.if.end82_crit_edge
  %i_cowfp416 = phi ptr [ %i_cowfp414, %if.then67.thread.if.end82_crit_edge ], [ %i_cowfp417420, %cond.end81 ], [ %i_cowfp, %if.then67.if.end82_crit_edge ]
  %75 = ptrtoint ptr %i_cowfp416 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %i_cowfp416, align 4
  %call84 = call zeroext i1 @xfs_iext_lookup_extent(ptr noundef %add.ptr.i, ptr noundef %76, i64 noundef %shr, ptr noundef nonnull %ccur, ptr noundef nonnull %cmap) #11
  br i1 %call84, label %land.lhs.true89, label %if.end82.if.end95_crit_edge

if.end82.if.end95_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

land.lhs.true89:                                  ; preds = %if.end82
  %77 = ptrtoint ptr %cmap to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %cmap, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %78, i64 %shr)
  %cmp91.not = icmp ugt i64 %78, %shr
  br i1 %cmp91.not, label %land.lhs.true89.if.end95_crit_edge, label %if.then93

land.lhs.true89.if.end95_crit_edge:               ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

if.then93:                                        ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @trace_xfs_reflink_cow_found(ptr noundef %add.ptr.i, ptr noundef nonnull %cmap)
  br label %found_cow

if.end95:                                         ; preds = %land.lhs.true89.if.end95_crit_edge, %if.end82.if.end95_crit_edge, %xfs_is_cow_inode.exit.if.end95_crit_edge, %lor.rhs.i.if.end95_crit_edge
  %cow_eof.0.shrunk = phi i1 [ true, %if.end82.if.end95_crit_edge ], [ false, %land.lhs.true89.if.end95_crit_edge ], [ false, %xfs_is_cow_inode.exit.if.end95_crit_edge ], [ false, %lor.rhs.i.if.end95_crit_edge ]
  %79 = ptrtoint ptr %imap to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %imap, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %80, i64 %shr)
  %cmp97.not = icmp ugt i64 %80, %shr
  br i1 %cmp97.not, label %if.else, label %if.then99

if.then99:                                        ; preds = %if.end95
  %81 = ptrtoint ptr %i_diflags2.i.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %i_diflags2.i.i, align 8
  %and.i.i393 = and i64 %82, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i393)
  %tobool.i.not.i394 = icmp eq i64 %and.i.i393, 0
  br i1 %tobool.i.not.i394, label %lor.rhs.i397, label %if.then99.lor.lhs.false101_crit_edge

if.then99.lor.lhs.false101_crit_edge:             ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false101

lor.rhs.i397:                                     ; preds = %if.then99
  %83 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %add.ptr.i, align 8
  %m_always_cow.i.i395 = getelementptr inbounds %struct.xfs_mount, ptr %84, i32 0, i32 67
  %85 = ptrtoint ptr %m_always_cow.i.i395 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %m_always_cow.i.i395, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool.not.i.i396 = icmp eq i8 %86, 0
  br i1 %tobool.not.i.i396, label %lor.rhs.i397.found_imap_crit_edge, label %xfs_is_cow_inode.exit402

lor.rhs.i397.found_imap_crit_edge:                ; preds = %lor.rhs.i397
  call void @__sanitizer_cov_trace_pc() #13
  br label %found_imap

xfs_is_cow_inode.exit402:                         ; preds = %lor.rhs.i397
  %m_features.i.i.i398 = getelementptr inbounds %struct.xfs_mount, ptr %84, i32 0, i32 61
  %87 = ptrtoint ptr %m_features.i.i.i398 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %m_features.i.i.i398, align 8
  %and.i.i.i399 = and i64 %88, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i399)
  %tobool.i.i.i400.not = icmp eq i64 %and.i.i.i399, 0
  br i1 %tobool.i.i.i400.not, label %xfs_is_cow_inode.exit402.found_imap_crit_edge, label %xfs_is_cow_inode.exit402.lor.lhs.false101_crit_edge

xfs_is_cow_inode.exit402.lor.lhs.false101_crit_edge: ; preds = %xfs_is_cow_inode.exit402
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false101

xfs_is_cow_inode.exit402.found_imap_crit_edge:    ; preds = %xfs_is_cow_inode.exit402
  call void @__sanitizer_cov_trace_pc() #13
  br label %found_imap

lor.lhs.false101:                                 ; preds = %xfs_is_cow_inode.exit402.lor.lhs.false101_crit_edge, %if.then99.lor.lhs.false101_crit_edge
  br i1 %tobool60.not, label %lor.lhs.false101.if.end109_crit_edge, label %land.lhs.true104

lor.lhs.false101.if.end109_crit_edge:             ; preds = %lor.lhs.false101
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

land.lhs.true104:                                 ; preds = %lor.lhs.false101
  %br_state = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 3
  %89 = ptrtoint ptr %br_state to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %br_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp105.not = icmp eq i32 %90, 0
  br i1 %cmp105.not, label %land.lhs.true104.if.end109_crit_edge, label %land.lhs.true104.found_imap_crit_edge

land.lhs.true104.found_imap_crit_edge:            ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #13
  br label %found_imap

land.lhs.true104.if.end109_crit_edge:             ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

if.end109:                                        ; preds = %land.lhs.true104.if.end109_crit_edge, %lor.lhs.false101.if.end109_crit_edge
  %sub = sub i64 %16, %shr
  call void @xfs_trim_extent(ptr noundef nonnull %imap, i64 noundef %shr, i64 noundef %sub) #11
  %call110 = call i32 @xfs_bmap_trim_cow(ptr noundef %add.ptr.i, ptr noundef nonnull %imap, ptr noundef nonnull %shared) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end113, label %if.end109.out_unlock_crit_edge

if.end109.out_unlock_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end113:                                        ; preds = %if.end109
  %91 = ptrtoint ptr %shared to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %shared, align 1, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool114.not = icmp eq i8 %92, 0
  br i1 %tobool114.not, label %if.end113.found_imap_crit_edge, label %if.end117

if.end113.found_imap_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #13
  br label %found_imap

if.end117:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #13
  %93 = ptrtoint ptr %imap to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %imap, align 8
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 2
  %95 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %br_blockcount, align 8
  %add119 = add i64 %96, %94
  br label %if.end130

if.else:                                          ; preds = %if.end95
  %97 = call i64 @llvm.smin.i64(i64 %count, i64 4194304)
  %call126 = call fastcc i64 @xfs_iomap_end_fsb(ptr noundef %1, i64 noundef %offset, i64 noundef %97)
  %98 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %add.ptr.i, align 8
  %m_always_cow.i = getelementptr inbounds %struct.xfs_mount, ptr %99, i32 0, i32 67
  %100 = ptrtoint ptr %m_always_cow.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %m_always_cow.i, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.not.i = icmp eq i8 %101, 0
  br i1 %tobool.not.i, label %if.else.if.end130_crit_edge, label %xfs_is_always_cow_inode.exit

if.else.if.end130_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end130

xfs_is_always_cow_inode.exit:                     ; preds = %if.else
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %99, i32 0, i32 61
  %102 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %m_features.i.i, align 8
  %and.i.i403 = and i64 %103, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i403)
  %tobool.i.i.not = icmp eq i64 %and.i.i403, 0
  br i1 %tobool.i.i.not, label %xfs_is_always_cow_inode.exit.if.end130_crit_edge, label %if.then128

xfs_is_always_cow_inode.exit.if.end130_crit_edge: ; preds = %xfs_is_always_cow_inode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end130

if.then128:                                       ; preds = %xfs_is_always_cow_inode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end130

if.end130:                                        ; preds = %if.then128, %xfs_is_always_cow_inode.exit.if.end130_crit_edge, %if.else.if.end130_crit_edge, %if.end117
  %cmp197 = phi i1 [ true, %xfs_is_always_cow_inode.exit.if.end130_crit_edge ], [ false, %if.then128 ], [ false, %if.end117 ], [ true, %if.else.if.end130_crit_edge ]
  %cmp224 = phi i1 [ false, %xfs_is_always_cow_inode.exit.if.end130_crit_edge ], [ true, %if.then128 ], [ true, %if.end117 ], [ false, %if.else.if.end130_crit_edge ]
  %allocfork.0 = phi i32 [ 0, %xfs_is_always_cow_inode.exit.if.end130_crit_edge ], [ 2, %if.then128 ], [ 2, %if.end117 ], [ 0, %if.else.if.end130_crit_edge ]
  %end_fsb.0 = phi i64 [ %call126, %xfs_is_always_cow_inode.exit.if.end130_crit_edge ], [ %call126, %if.then128 ], [ %add119, %if.end117 ], [ %call126, %if.else.if.end130_crit_edge ]
  %count.addr.0 = phi i64 [ %97, %xfs_is_always_cow_inode.exit.if.end130_crit_edge ], [ %97, %if.then128 ], [ %count, %if.end117 ], [ %97, %if.else.if.end130_crit_edge ]
  %call131 = call i32 @xfs_qm_dqattach_locked(ptr noundef %add.ptr.i, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.end134, label %if.end130.out_unlock_crit_edge

if.end130.out_unlock_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end134:                                        ; preds = %if.end130
  br i1 %call53, label %if.end134.if.end195_crit_edge, label %land.lhs.true137

if.end134.if.end195_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end195

land.lhs.true137:                                 ; preds = %if.end134
  %add138 = add i64 %count.addr.0, %offset
  %104 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %inode, align 8
  %106 = and i16 %105, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %106)
  %cmp.i = icmp eq i16 %106, -32768
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = call fastcc i64 @i_size_read(ptr noundef %inode) #11
  br label %XFS_ISIZE.exit

if.end.i:                                         ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #13
  %i_disk_size.i = getelementptr i8, ptr %inode, i32 -56
  %107 = ptrtoint ptr %i_disk_size.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %i_disk_size.i, align 8
  br label %XFS_ISIZE.exit

XFS_ISIZE.exit:                                   ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i64 [ %call3.i, %if.then.i ], [ %108, %if.end.i ]
  call void @__sanitizer_cov_trace_cmp8(i64 %add138, i64 %retval.0.i)
  %cmp140 = icmp sgt i64 %add138, %retval.0.i
  br i1 %cmp140, label %if.then142, label %XFS_ISIZE.exit.if.end195_crit_edge

XFS_ISIZE.exit.if.end195_crit_edge:               ; preds = %XFS_ISIZE.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end195

if.then142:                                       ; preds = %XFS_ISIZE.exit
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %109 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %m_features.i, align 8
  %and.i404 = and i64 %110, 1125899906842624
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i404)
  %tobool.i405.not = icmp eq i64 %and.i404, 0
  br i1 %tobool.i405.not, label %if.else146, label %if.then144

if.then144:                                       ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #13
  %m_allocsize_blocks = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 54
  %111 = ptrtoint ptr %m_allocsize_blocks to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %m_allocsize_blocks, align 8
  %conv145 = zext i32 %112 to i64
  br label %if.end148

if.else146:                                       ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #13
  %call147 = call fastcc i64 @xfs_iomap_prealloc_size(ptr noundef %add.ptr.i, i32 noundef %allocfork.0, i64 noundef %offset, ptr noundef nonnull %icur)
  br label %if.end148

if.end148:                                        ; preds = %if.else146, %if.then144
  %prealloc_blocks.0 = phi i64 [ %conv145, %if.then144 ], [ %call147, %if.else146 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %prealloc_blocks.0)
  %tobool149.not = icmp eq i64 %prealloc_blocks.0, 0
  br i1 %tobool149.not, label %if.end148.if.end195_crit_edge, label %if.then150

if.end148.if.end195_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end195

if.then150:                                       ; preds = %if.end148
  %sub152 = add nsw i64 %add138, -1
  %m_allocsize_log = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 53
  %113 = ptrtoint ptr %m_allocsize_log to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %m_allocsize_log, align 4
  %sh_prom153 = zext i32 %114 to i64
  %115 = shl nsw i64 -1, %sh_prom153
  %shl = and i64 %115, %sub152
  %116 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %sb_blocklog, align 8
  %sh_prom160 = zext i8 %117 to i64
  %shr161 = lshr i64 %shl, %sh_prom160
  %add162 = add i64 %shr161, %prealloc_blocks.0
  %call163 = call fastcc i32 @xfs_eof_alignment(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.then150.if.end167_crit_edge, label %if.then165

if.then150.if.end167_crit_edge:                   ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end167

if.then165:                                       ; preds = %if.then150
  %sub.i = add i32 %call163, -1
  %conv.i406 = zext i32 %sub.i to i64
  %add.i407 = add i64 %add162, %conv.i406
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i407)
  %cmp168.i = icmp ult i64 %add.i407, 4294967296
  br i1 %cmp168.i, label %if.then172.i, label %if.else178.i, !prof !81

if.then172.i:                                     ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #13
  %conv173.i = trunc i64 %add.i407 to i32
  %div176.i = udiv i32 %conv173.i, %call163
  %conv177.i = zext i32 %div176.i to i64
  br label %roundup_64.exit

if.else178.i:                                     ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #13
  %118 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call163, i64 %add.i407) #14, !srcloc !82
  %asmresult1.i.i = extractvalue { i64, i64 } %118, 1
  br label %roundup_64.exit

roundup_64.exit:                                  ; preds = %if.else178.i, %if.then172.i
  %x.addr.0.i = phi i64 [ %conv177.i, %if.then172.i ], [ %asmresult1.i.i, %if.else178.i ]
  %conv184.i = zext i32 %call163 to i64
  %mul185.i = mul i64 %x.addr.0.i, %conv184.i
  br label %if.end167

if.end167:                                        ; preds = %roundup_64.exit, %if.then150.if.end167_crit_edge
  %p_end_fsb.0 = phi i64 [ %mul185.i, %roundup_64.exit ], [ %add162, %if.then150.if.end167_crit_edge ]
  %119 = ptrtoint ptr %m_super.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %m_super.i, align 8
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %120, i32 0, i32 4
  %121 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %s_maxbytes, align 8
  %123 = ptrtoint ptr %m_blockmask.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %m_blockmask.i, align 8
  %conv168 = zext i32 %124 to i64
  %add169 = add i64 %122, %conv168
  %125 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %sb_blocklog, align 8
  %sh_prom173 = zext i8 %126 to i64
  %shr174 = lshr i64 %add169, %sh_prom173
  %127 = call i64 @llvm.umin.i64(i64 %p_end_fsb.0, i64 %shr174)
  call void @__sanitizer_cov_trace_cmp8(i64 %127, i64 %shr)
  %cmp182 = icmp ugt i64 %127, %shr
  br i1 %cmp182, label %if.end167.cond.end192_crit_edge, label %cond.false191, !prof !81

if.end167.cond.end192_crit_edge:                  ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end192

cond.false191:                                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 1025) #11
  br label %cond.end192

cond.end192:                                      ; preds = %cond.false191, %if.end167.cond.end192_crit_edge
  %sub193 = sub i64 %127, %end_fsb.0
  br label %if.end195

if.end195:                                        ; preds = %cond.end192, %if.end148.if.end195_crit_edge, %XFS_ISIZE.exit.if.end195_crit_edge, %if.end134.if.end195_crit_edge
  %prealloc_blocks.1 = phi i64 [ %sub193, %cond.end192 ], [ 0, %if.end148.if.end195_crit_edge ], [ 0, %XFS_ISIZE.exit.if.end195_crit_edge ], [ 0, %if.end134.if.end195_crit_edge ]
  %sub196 = sub i64 %end_fsb.0, %shr
  %imap.cmap = select i1 %cmp197, ptr %imap, ptr %cmap
  %cond208 = select i1 %cmp197, ptr %icur, ptr %ccur
  %lnot54.cow_eof.0.shrunk = select i1 %cmp197, i1 %lnot54, i1 %cow_eof.0.shrunk
  %cond218 = zext i1 %lnot54.cow_eof.0.shrunk to i32
  %conv220 = trunc i64 %count.addr.0 to i32
  br label %retry

retry:                                            ; preds = %sw.bb.retry_crit_edge, %if.end195
  %prealloc_blocks.2 = phi i64 [ %prealloc_blocks.1, %if.end195 ], [ 0, %sw.bb.retry_crit_edge ]
  %call219 = call i32 @xfs_bmapi_reserve_delalloc(ptr noundef %add.ptr.i, i32 noundef %allocfork.0, i64 noundef %shr, i64 noundef %sub196, i64 noundef %prealloc_blocks.2, ptr noundef nonnull %imap.cmap, ptr noundef nonnull %cond208, i32 noundef %cond218) #11
  %128 = zext i32 %call219 to i64
  call void @__sanitizer_cov_trace_switch(i64 %128, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %call219, label %retry.out_unlock_crit_edge [
    i32 0, label %sw.epilog
    i32 -28, label %retry.sw.bb_crit_edge
    i32 -122, label %retry.sw.bb_crit_edge428
  ]

retry.sw.bb_crit_edge428:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

retry.sw.bb_crit_edge:                            ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

retry.out_unlock_crit_edge:                       ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

sw.bb:                                            ; preds = %retry.sw.bb_crit_edge, %retry.sw.bb_crit_edge428
  call fastcc void @trace_xfs_delalloc_enospc(ptr noundef %add.ptr.i, i64 noundef %offset, i32 noundef %conv220)
  %tobool221.not = icmp eq i64 %prealloc_blocks.2, 0
  br i1 %tobool221.not, label %sw.bb.out_unlock_crit_edge, label %sw.bb.retry_crit_edge

sw.bb.retry_crit_edge:                            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %retry

sw.bb.out_unlock_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

sw.epilog:                                        ; preds = %retry
  br i1 %cmp224, label %if.then226, label %if.end228

if.then226:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @trace_xfs_iomap_alloc(ptr noundef %add.ptr.i, i64 noundef %offset, i32 noundef %conv220, i32 noundef 2, ptr noundef nonnull %cmap)
  br label %found_cow

if.end228:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef 4) #11
  call fastcc void @trace_xfs_iomap_alloc(ptr noundef %add.ptr.i, i64 noundef %offset, i32 noundef %conv220, i32 noundef %allocfork.0, ptr noundef nonnull %imap)
  %call230 = call i32 @xfs_bmbt_to_iomap(ptr noundef %add.ptr.i, ptr noundef %iomap, ptr noundef nonnull %imap, i32 undef, i16 noundef zeroext 1)
  br label %cleanup

found_imap:                                       ; preds = %if.end113.found_imap_crit_edge, %land.lhs.true104.found_imap_crit_edge, %xfs_is_cow_inode.exit402.found_imap_crit_edge, %lor.rhs.i397.found_imap_crit_edge
  %conv116 = trunc i64 %count to i32
  call fastcc void @trace_xfs_iomap_found(ptr noundef %add.ptr.i, i64 noundef %offset, i32 noundef %conv116, i32 noundef 0, ptr noundef nonnull %imap)
  call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef 4) #11
  %call231 = call i32 @xfs_bmbt_to_iomap(ptr noundef %add.ptr.i, ptr noundef %iomap, ptr noundef nonnull %imap, i32 undef, i16 noundef zeroext 0)
  br label %cleanup

found_cow:                                        ; preds = %if.then226, %if.then93
  call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef 4) #11
  %129 = ptrtoint ptr %imap to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %imap, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %130, i64 %shr)
  %cmp233.not = icmp ugt i64 %130, %shr
  br i1 %cmp233.not, label %if.end241, label %if.then235

if.then235:                                       ; preds = %found_cow
  %call236 = call i32 @xfs_bmbt_to_iomap(ptr noundef %add.ptr.i, ptr noundef %srcmap, ptr noundef nonnull %imap, i32 undef, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call236)
  %tobool237.not = icmp eq i32 %call236, 0
  br i1 %tobool237.not, label %if.end239, label %if.then235.cleanup_crit_edge

if.then235.cleanup_crit_edge:                     ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end239:                                        ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #13
  %call240 = call i32 @xfs_bmbt_to_iomap(ptr noundef %add.ptr.i, ptr noundef %iomap, ptr noundef nonnull %cmap, i32 undef, i16 noundef zeroext 4)
  br label %cleanup

if.end241:                                        ; preds = %found_cow
  call void @__sanitizer_cov_trace_pc() #13
  %sub243 = sub i64 %130, %shr
  call void @xfs_trim_extent(ptr noundef nonnull %cmap, i64 noundef %shr, i64 noundef %sub243) #11
  %call244 = call i32 @xfs_bmbt_to_iomap(ptr noundef %add.ptr.i, ptr noundef %iomap, ptr noundef nonnull %cmap, i32 undef, i16 noundef zeroext 0)
  br label %cleanup

out_unlock:                                       ; preds = %sw.bb.out_unlock_crit_edge, %retry.out_unlock_crit_edge, %if.end130.out_unlock_crit_edge, %if.end109.out_unlock_crit_edge, %if.then63, %do.body29.out_unlock_crit_edge, %lor.lhs.false.out_unlock_crit_edge, %__here
  %error.0 = phi i32 [ %call48, %do.body29.out_unlock_crit_edge ], [ 0, %if.then63 ], [ %call110, %if.end109.out_unlock_crit_edge ], [ %call131, %if.end130.out_unlock_crit_edge ], [ -117, %__here ], [ -117, %lor.lhs.false.out_unlock_crit_edge ], [ %call219, %sw.bb.out_unlock_crit_edge ], [ %call219, %retry.out_unlock_crit_edge ]
  call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef 4) #11
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end241, %if.end239, %if.then235.cleanup_crit_edge, %found_imap, %if.end228, %if.then4, %xfs_iomap_end_fsb.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then4 ], [ %error.0, %out_unlock ], [ %call231, %found_imap ], [ %call240, %if.end239 ], [ %call244, %if.end241 ], [ %call230, %if.end228 ], [ -5, %xfs_iomap_end_fsb.exit.cleanup_crit_edge ], [ %call236, %if.then235.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %shared) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ccur) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %icur) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmap) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %imap) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_buffered_write_iomap_end(ptr noundef %inode, i64 noundef %offset, i64 noundef %length, i32 noundef %written, i32 noundef %flags, ptr nocapture noundef %iomap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -312
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %type = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 3
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp.not = icmp eq i16 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call zeroext i1 @xfs_errortag_test(ptr noundef %1, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 1109, i32 noundef 28) #11
  br i1 %call2, label %if.end8.thread, label %if.end8

if.end8.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %flags5 = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 4
  %4 = ptrtoint ptr %flags5 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags5, align 2
  %6 = or i16 %5, 1
  store i16 %6, ptr %flags5, align 2
  br label %if.end22

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %written)
  %tobool.not = icmp eq i32 %written, 0
  br i1 %tobool.not, label %if.end8.if.end22_crit_edge, label %if.else, !prof !79

if.end8.if.end22_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %conv14 = sext i32 %written to i64
  %add = add i64 %conv14, %offset
  %m_blockmask = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 31
  %7 = ptrtoint ptr %m_blockmask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %m_blockmask, align 8
  %conv15 = zext i32 %8 to i64
  %add16 = add i64 %add, %conv15
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.end8.if.end22_crit_edge, %if.end8.thread
  %add16.sink = phi i64 [ %add16, %if.else ], [ %offset, %if.end8.thread ], [ %offset, %if.end8.if.end22_crit_edge ]
  %sb_blocklog18 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 20
  %9 = ptrtoint ptr %sb_blocklog18 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sb_blocklog18, align 8
  %sh_prom20 = zext i8 %10 to i64
  %shr21 = lshr i64 %add16.sink, %sh_prom20
  %add23 = add i64 %length, %offset
  %m_blockmask24 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 31
  %11 = ptrtoint ptr %m_blockmask24 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %m_blockmask24, align 8
  %conv25 = zext i32 %12 to i64
  %add26 = add i64 %add23, %conv25
  %sb_blocklog28 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 20
  %13 = ptrtoint ptr %sb_blocklog28 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sb_blocklog28, align 8
  %sh_prom30 = zext i8 %14 to i64
  %shr31 = lshr i64 %add26, %sh_prom30
  %flags32 = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 4
  %15 = ptrtoint ptr %flags32 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %flags32, align 2
  %17 = and i16 %16, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool34.not = icmp ne i16 %17, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %shr31, i64 %shr21)
  %cmp35 = icmp ugt i64 %shr31, %shr21
  %or.cond = select i1 %tobool34.not, i1 %cmp35, i1 false
  br i1 %or.cond, label %if.then37, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then37:                                        ; preds = %if.end22
  %shl = shl i64 %shr21, %sh_prom30
  %shl47 = shl i64 %shr31, %sh_prom30
  %sub = add i64 %shl47, -1
  tail call void @truncate_pagecache_range(ptr noundef %inode, i64 noundef %shl, i64 noundef %sub) #11
  %sub48 = sub i64 %shr31, %shr21
  %call49 = tail call i32 @xfs_bmap_punch_delalloc_range(ptr noundef %add.ptr.i, i64 noundef %shr21, i64 noundef %sub48) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then37.cleanup_crit_edge, label %land.lhs.true51

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true51:                                  ; preds = %if.then37
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 66
  %18 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %m_opstate.i, align 4
  %20 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.not = icmp eq i32 %20, 0
  br i1 %tobool.i.not, label %if.then53, label %land.lhs.true51.cleanup_crit_edge

land.lhs.true51.cleanup_crit_edge:                ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then53:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #13
  %i_ino = getelementptr i8, ptr %inode, i32 -296
  %21 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.xfs_buffered_write_iomap_end, i64 noundef %22) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then53, %land.lhs.true51.cleanup_crit_edge, %if.then37.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call49, %if.then53 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then37.cleanup_crit_edge ], [ 0, %land.lhs.true51.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_read_iomap_begin(ptr noundef %inode, i64 noundef %offset, i64 noundef %length, i32 noundef %flags, ptr nocapture noundef %iomap, ptr nocapture noundef readnone %srcmap) #0 align 64 {
entry:
  %imap = alloca %struct.xfs_bmbt_irec, align 8
  %nimaps = alloca i32, align 4
  %shared = alloca i8, align 1
  %lockmode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -312
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %imap) #11
  %2 = call ptr @memset(ptr %imap, i32 255, i32 32)
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 20
  %3 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %4 to i64
  %shr = lshr i64 %offset, %sh_prom
  %m_super.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %m_super.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m_super.i, align 8
  %s_maxbytes.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %s_maxbytes.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %s_maxbytes.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %offset)
  %cmp.not.i = icmp slt i64 %8, %offset
  br i1 %cmp.not.i, label %cond.false.i, label %entry.xfs_iomap_end_fsb.exit_crit_edge, !prof !79

entry.xfs_iomap_end_fsb.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iomap_end_fsb.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 120) #11
  br label %xfs_iomap_end_fsb.exit

xfs_iomap_end_fsb.exit:                           ; preds = %cond.false.i, %entry.xfs_iomap_end_fsb.exit_crit_edge
  %add.i = add i64 %length, %offset
  %m_blockmask.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 31
  %9 = ptrtoint ptr %m_blockmask.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %m_blockmask.i, align 8
  %conv.i = zext i32 %10 to i64
  %add2.i = add i64 %add.i, %conv.i
  %11 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %sb_blocklog, align 8
  %sh_prom.i = zext i8 %12 to i64
  %shr.i = lshr i64 %add2.i, %sh_prom.i
  %13 = ptrtoint ptr %m_super.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %m_super.i, align 8
  %s_maxbytes5.i = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %s_maxbytes5.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %s_maxbytes5.i, align 8
  %add8.i = add i64 %16, %conv.i
  %shr13.i = lshr i64 %add8.i, %sh_prom.i
  %17 = tail call i64 @llvm.umin.i64(i64 %shr.i, i64 %shr13.i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nimaps) #11
  %18 = ptrtoint ptr %nimaps to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %nimaps, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %shared) #11
  %19 = ptrtoint ptr %shared to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %shared, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lockmode) #11
  %20 = ptrtoint ptr %lockmode to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %lockmode, align 4, !annotation !80
  %and = and i32 %flags, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %xfs_iomap_end_fsb.exit.cond.end_crit_edge, label %cond.false, !prof !81

xfs_iomap_end_fsb.exit.cond.end_crit_edge:        ; preds = %xfs_iomap_end_fsb.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %xfs_iomap_end_fsb.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 1172) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %xfs_iomap_end_fsb.exit.cond.end_crit_edge
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 66
  %21 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %m_opstate.i, align 4
  %23 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i.not = icmp eq i32 %23, 0
  br i1 %tobool.i.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %call6 = call fastcc i32 @xfs_ilock_for_iomap(ptr noundef %add.ptr.i, i32 noundef %flags, ptr noundef nonnull %lockmode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %sub = sub i64 %17, %shr
  %call10 = call i32 @xfs_bmapi_read(ptr noundef %add.ptr.i, i64 noundef %shr, i64 noundef %sub, ptr noundef nonnull %imap, ptr noundef nonnull %nimaps, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true, label %if.end16.thread54

if.end16.thread54:                                ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %lockmode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %lockmode, align 4
  call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef %25) #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end9
  %and12 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end16.thread, label %if.end16

if.end16.thread:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %lockmode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lockmode, align 4
  call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef %27) #11
  br label %if.end19

if.end16:                                         ; preds = %land.lhs.true
  %call15 = call i32 @xfs_reflink_trim_around_shared(ptr noundef %add.ptr.i, ptr noundef nonnull %imap, ptr noundef nonnull %shared) #11
  %28 = ptrtoint ptr %lockmode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lockmode, align 4
  call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef %29) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool17.not = icmp eq i32 %call15, 0
  br i1 %tobool17.not, label %if.end16.if.end19_crit_edge, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16.if.end19_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.end19:                                         ; preds = %if.end16.if.end19_crit_edge, %if.end16.thread
  %conv20 = trunc i64 %length to i32
  call fastcc void @trace_xfs_iomap_found(ptr noundef %add.ptr.i, i64 noundef %offset, i32 noundef %conv20, i32 noundef 0, ptr noundef nonnull %imap)
  %30 = ptrtoint ptr %shared to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %shared, align 1, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool21.not = icmp eq i8 %31, 0
  %conv23 = select i1 %tobool21.not, i16 0, i16 4
  %call24 = call i32 @xfs_bmbt_to_iomap(ptr noundef %add.ptr.i, ptr noundef %iomap, ptr noundef nonnull %imap, i32 undef, i16 noundef zeroext %conv23)
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end16.cleanup_crit_edge, %if.end16.thread54, %if.end.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %if.end19 ], [ -5, %cond.end.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ], [ %call15, %if.end16.cleanup_crit_edge ], [ %call10, %if.end16.thread54 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lockmode) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %shared) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nimaps) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %imap) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_seek_iomap_begin(ptr noundef %inode, i64 noundef %offset, i64 noundef %length, i32 noundef %flags, ptr nocapture noundef %iomap, ptr nocapture noundef readnone %srcmap) #0 align 64 {
entry:
  %icur = alloca %struct.xfs_iext_cursor, align 4
  %imap = alloca %struct.xfs_bmbt_irec, align 8
  %cmap = alloca %struct.xfs_bmbt_irec, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -312
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %3 to i64
  %shr = lshr i64 %offset, %sh_prom
  %add = add i64 %length, %offset
  %m_blockmask = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 31
  %4 = ptrtoint ptr %m_blockmask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %m_blockmask, align 8
  %conv1 = zext i32 %5 to i64
  %add2 = add i64 %add, %conv1
  %shr7 = lshr i64 %add2, %sh_prom
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %icur) #11
  %6 = ptrtoint ptr %icur to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %icur, align 4, !annotation !80
  %7 = getelementptr inbounds %struct.xfs_iext_cursor, ptr %icur, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !80
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %imap) #11
  %9 = call ptr @memset(ptr %imap, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmap) #11
  %10 = call ptr @memset(ptr %cmap, i32 255, i32 32)
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 66
  %11 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %m_opstate.i, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not = icmp eq i32 %13, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call9 = tail call i32 @xfs_ilock_data_map_shared(ptr noundef %add.ptr.i) #11
  %call10 = tail call i32 @xfs_iread_extents(ptr noundef null, ptr noundef %add.ptr.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end12, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end12:                                         ; preds = %if.end
  %i_df = getelementptr i8, ptr %inode, i32 -264
  %call13 = call zeroext i1 @xfs_iext_lookup_extent(ptr noundef %add.ptr.i, ptr noundef %i_df, i64 noundef %shr, ptr noundef nonnull %icur, ptr noundef nonnull %imap) #11
  br i1 %call13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end12
  %14 = ptrtoint ptr %imap to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %imap, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %shr)
  %cmp.not = icmp ugt i64 %15, %shr
  br i1 %cmp.not, label %if.then14.if.end20_crit_edge, label %if.then14.done_crit_edge

if.then14.done_crit_edge:                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.then14.if.end20_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.else:                                          ; preds = %if.end12
  %m_super.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %m_super.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %m_super.i, align 8
  %s_maxbytes.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %s_maxbytes.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %s_maxbytes.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %offset)
  %cmp.not.i = icmp slt i64 %19, %offset
  br i1 %cmp.not.i, label %cond.false.i, label %if.else.xfs_iomap_end_fsb.exit_crit_edge, !prof !79

if.else.xfs_iomap_end_fsb.exit_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_iomap_end_fsb.exit

cond.false.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 120) #11
  br label %xfs_iomap_end_fsb.exit

xfs_iomap_end_fsb.exit:                           ; preds = %cond.false.i, %if.else.xfs_iomap_end_fsb.exit_crit_edge
  %20 = ptrtoint ptr %m_blockmask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %m_blockmask, align 8
  %conv.i = zext i32 %21 to i64
  %add2.i = add i64 %add, %conv.i
  %22 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sb_blocklog, align 8
  %sh_prom.i = zext i8 %23 to i64
  %shr.i = lshr i64 %add2.i, %sh_prom.i
  %24 = ptrtoint ptr %m_super.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %m_super.i, align 8
  %s_maxbytes5.i = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %s_maxbytes5.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %s_maxbytes5.i, align 8
  %add8.i = add i64 %27, %conv.i
  %shr13.i = lshr i64 %add8.i, %sh_prom.i
  %28 = call i64 @llvm.umin.i64(i64 %shr.i, i64 %shr13.i) #11
  br label %if.end20

if.end20:                                         ; preds = %xfs_iomap_end_fsb.exit, %if.then14.if.end20_crit_edge
  %data_fsb.0 = phi i64 [ %28, %xfs_iomap_end_fsb.exit ], [ %15, %if.then14.if.end20_crit_edge ]
  %i_cowfp.i = getelementptr i8, ptr %inode, i32 -268
  %29 = ptrtoint ptr %i_cowfp.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_cowfp.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.end20.if.else50_crit_edge, label %xfs_inode_has_cow_data.exit

if.end20.if.else50_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else50

xfs_inode_has_cow_data.exit:                      ; preds = %if.end20
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %30, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %32)
  %tobool2.i.not = icmp eq i64 %32, 0
  br i1 %tobool2.i.not, label %xfs_inode_has_cow_data.exit.if.else50_crit_edge, label %land.lhs.true

xfs_inode_has_cow_data.exit.if.else50_crit_edge:  ; preds = %xfs_inode_has_cow_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else50

land.lhs.true:                                    ; preds = %xfs_inode_has_cow_data.exit
  %call23 = call zeroext i1 @xfs_iext_lookup_extent(ptr noundef %add.ptr.i, ptr noundef nonnull %30, i64 noundef %shr, ptr noundef nonnull %icur, ptr noundef nonnull %cmap) #11
  br i1 %call23, label %if.end27, label %land.lhs.true.if.else50_crit_edge

land.lhs.true.if.else50_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else50

if.end27:                                         ; preds = %land.lhs.true
  %33 = ptrtoint ptr %cmap to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %cmap, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %34)
  %cmp28.not = icmp eq i64 %34, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %shr)
  %cmp31.not = icmp ugt i64 %34, %shr
  %or.cond = select i1 %cmp28.not, i1 true, i1 %cmp31.not
  br i1 %or.cond, label %if.end42, label %if.then33

if.then33:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %cmap, i32 0, i32 2
  %35 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %br_blockcount, align 8
  %add34 = add i64 %36, %34
  call void @__sanitizer_cov_trace_cmp8(i64 %data_fsb.0, i64 %add34)
  %cmp35 = icmp ult i64 %data_fsb.0, %add34
  %37 = call i64 @llvm.umin.i64(i64 %shr7, i64 %data_fsb.0)
  %end_fsb.0 = select i1 %cmp35, i64 %37, i64 %shr7
  call void @xfs_trim_extent(ptr noundef nonnull %cmap, i64 noundef %shr, i64 noundef %end_fsb.0) #11
  %call41 = call i32 @xfs_bmbt_to_iomap(ptr noundef %add.ptr.i, ptr noundef %iomap, ptr noundef nonnull %cmap, i32 undef, i16 noundef zeroext 4)
  %type = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 3
  %38 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 3, ptr %type, align 8
  br label %out_unlock

if.end42:                                         ; preds = %if.end27
  %cmp28.not.not = xor i1 %cmp28.not, true
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %data_fsb.0)
  %cmp46 = icmp ult i64 %34, %data_fsb.0
  %or.cond107 = select i1 %cmp28.not.not, i1 %cmp46, i1 false
  br i1 %or.cond107, label %if.end42.if.end53_crit_edge, label %if.end42.if.else50_crit_edge

if.end42.if.else50_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else50

if.end42.if.end53_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.else50:                                        ; preds = %if.end42.if.else50_crit_edge, %land.lhs.true.if.else50_crit_edge, %xfs_inode_has_cow_data.exit.if.else50_crit_edge, %if.end20.if.else50_crit_edge
  br label %if.end53

if.end53:                                         ; preds = %if.else50, %if.end42.if.end53_crit_edge
  %data_fsb.0.sink = phi i64 [ %data_fsb.0, %if.else50 ], [ %34, %if.end42.if.end53_crit_edge ]
  %sub51 = sub i64 %data_fsb.0.sink, %shr
  %br_blockcount52 = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 2
  %39 = ptrtoint ptr %br_blockcount52 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %sub51, ptr %br_blockcount52, align 8
  %40 = ptrtoint ptr %imap to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %shr, ptr %imap, align 8
  %br_startblock = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 1
  %41 = ptrtoint ptr %br_startblock to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 -2, ptr %br_startblock, align 8
  %br_state = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 3
  %42 = ptrtoint ptr %br_state to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %br_state, align 8
  br label %done

done:                                             ; preds = %if.end53, %if.then14.done_crit_edge
  call void @xfs_trim_extent(ptr noundef nonnull %imap, i64 noundef %shr, i64 noundef %shr7) #11
  %call55 = call i32 @xfs_bmbt_to_iomap(ptr noundef %add.ptr.i, ptr noundef %iomap, ptr noundef nonnull %imap, i32 undef, i16 noundef zeroext 0)
  br label %out_unlock

out_unlock:                                       ; preds = %done, %if.then33, %if.end.out_unlock_crit_edge
  %error.0 = phi i32 [ %call10, %if.end.out_unlock_crit_edge ], [ %call55, %done ], [ %call41, %if.then33 ]
  call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef %call9) #11
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out_unlock ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmap) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %imap) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %icur) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_xattr_iomap_begin(ptr noundef %inode, i64 noundef %offset, i64 noundef %length, i32 noundef %flags, ptr nocapture noundef %iomap, ptr nocapture noundef readnone %srcmap) #0 align 64 {
entry:
  %imap = alloca %struct.xfs_bmbt_irec, align 8
  %nimaps = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -312
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %3 to i64
  %shr = lshr i64 %offset, %sh_prom
  %add = add i64 %length, %offset
  %m_blockmask = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 31
  %4 = ptrtoint ptr %m_blockmask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %m_blockmask, align 8
  %conv1 = zext i32 %5 to i64
  %add2 = add i64 %add, %conv1
  %shr7 = lshr i64 %add2, %sh_prom
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %imap) #11
  %6 = call ptr @memset(ptr %imap, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nimaps) #11
  %7 = ptrtoint ptr %nimaps to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %nimaps, align 4
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 66
  %8 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %m_opstate.i, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not = icmp eq i32 %10, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call9 = tail call i32 @xfs_ilock_attr_map_shared(ptr noundef %add.ptr.i) #11
  %i_forkoff = getelementptr i8, ptr %inode, i32 -28
  %11 = ptrtoint ptr %i_forkoff to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %i_forkoff, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp.not = icmp eq i8 %12, 0
  br i1 %cmp.not, label %if.end.out_unlock.thread_crit_edge, label %lor.lhs.false

if.end.out_unlock.thread_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock.thread

lor.lhs.false:                                    ; preds = %if.end
  %i_afp = getelementptr i8, ptr %inode, i32 -272
  %13 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_afp, align 8
  %if_nextents = getelementptr inbounds %struct.xfs_ifork, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %if_nextents to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %if_nextents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %lor.lhs.false.out_unlock.thread_crit_edge, label %if.end13

lor.lhs.false.out_unlock.thread_crit_edge:        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock.thread

if.end13:                                         ; preds = %lor.lhs.false
  %if_format = getelementptr inbounds %struct.xfs_ifork, ptr %14, i32 0, i32 6
  %17 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp16.not = icmp eq i8 %18, 1
  br i1 %cmp16.not, label %cond.false, label %if.end13.out_unlock_crit_edge, !prof !79

if.end13.out_unlock_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

cond.false:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 1310) #11
  br label %out_unlock

out_unlock.thread:                                ; preds = %lor.lhs.false.out_unlock.thread_crit_edge, %if.end.out_unlock.thread_crit_edge
  tail call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef %call9) #11
  br label %cleanup

out_unlock:                                       ; preds = %cond.false, %if.end13.out_unlock_crit_edge
  %sub = sub i64 %shr7, %shr
  %call20 = call i32 @xfs_bmapi_read(ptr noundef %add.ptr.i, i64 noundef %shr, i64 noundef %sub, ptr noundef nonnull %imap, ptr noundef nonnull %nimaps, i32 noundef 4) #11
  call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef %call9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %out_unlock.cleanup_crit_edge

out_unlock.cleanup_crit_edge:                     ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end23:                                         ; preds = %out_unlock
  %19 = ptrtoint ptr %nimaps to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nimaps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool24.not = icmp eq i32 %20, 0
  br i1 %tobool24.not, label %cond.false32, label %if.end23.cond.end33_crit_edge, !prof !79

if.end23.cond.end33_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end33

cond.false32:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 1318) #11
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false32, %if.end23.cond.end33_crit_edge
  %call34 = call i32 @xfs_bmbt_to_iomap(ptr noundef %add.ptr.i, ptr noundef %iomap, ptr noundef nonnull %imap, i32 undef, i16 noundef zeroext 0)
  br label %cleanup

cleanup:                                          ; preds = %cond.end33, %out_unlock.cleanup_crit_edge, %out_unlock.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call34, %cond.end33 ], [ -5, %entry.cleanup_crit_edge ], [ %call20, %out_unlock.cleanup_crit_edge ], [ -2, %out_unlock.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nimaps) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %imap) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_zero_range(ptr noundef %ip, i64 noundef %pos, i64 noundef %len, ptr noundef %did_zero) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %call2 = tail call i32 @iomap_zero_range(ptr noundef %i_vnode.i, i64 noundef %pos, i64 noundef %len, ptr noundef %did_zero, ptr noundef nonnull @xfs_buffered_write_iomap_ops) #11
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_zero_range(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_truncate_page(ptr noundef %ip, i64 noundef %pos, ptr noundef %did_zero) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %call2 = tail call i32 @iomap_truncate_page(ptr noundef %i_vnode.i, i64 noundef %pos, ptr noundef %did_zero, ptr noundef nonnull @xfs_buffered_write_iomap_ops) #11
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_truncate_page(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_alert_tag(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_unwritten_convert(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @xfs_iomap_end_fsb(ptr nocapture noundef readonly %mp, i64 noundef %offset, i64 noundef %count) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %m_super = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 1
  %0 = ptrtoint ptr %m_super to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_super, align 8
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %s_maxbytes, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %offset)
  %cmp.not = icmp slt i64 %3, %offset
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !79

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 120) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %add = add i64 %count, %offset
  %m_blockmask = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 31
  %4 = ptrtoint ptr %m_blockmask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %m_blockmask, align 8
  %conv = zext i32 %5 to i64
  %add2 = add i64 %add, %conv
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 20
  %6 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %7 to i64
  %shr = lshr i64 %add2, %sh_prom
  %8 = ptrtoint ptr %m_super to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m_super, align 8
  %s_maxbytes5 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %s_maxbytes5 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %s_maxbytes5, align 8
  %add8 = add i64 %11, %conv
  %shr13 = lshr i64 %add8, %sh_prom
  %12 = tail call i64 @llvm.umin.i64(i64 %shr, i64 %shr13)
  ret i64 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_ilock_for_iomap(ptr noundef %ip, i32 noundef %flags, ptr nocapture noundef writeonly %lockmode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %i_diflags2.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 25
  %0 = ptrtoint ptr %i_diflags2.i.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_diflags2.i.i, align 8
  %and.i.i = and i64 %1, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %lor.rhs.i, label %xfs_is_cow_inode.exit.thread

xfs_is_cow_inode.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %spec.select47 = select i1 %tobool.not, i32 8, i32 4
  br label %8

lor.rhs.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ip, align 8
  %m_always_cow.i.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 67
  %4 = ptrtoint ptr %m_always_cow.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %m_always_cow.i.i, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i.i, label %lor.rhs.i.xfs_is_cow_inode.exit.thread49_crit_edge, label %xfs_is_cow_inode.exit

lor.rhs.i.xfs_is_cow_inode.exit.thread49_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_is_cow_inode.exit.thread49

xfs_is_cow_inode.exit:                            ; preds = %lor.rhs.i
  %m_features.i.i.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 61
  %6 = ptrtoint ptr %m_features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %m_features.i.i.i, align 8
  %and.i.i.i = and i64 %7, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.i.i.not = icmp eq i64 %and.i.i.i, 0
  %spec.select = select i1 %tobool.not, i32 8, i32 4
  br i1 %tobool.i.i.i.not, label %xfs_is_cow_inode.exit.xfs_is_cow_inode.exit.thread49_crit_edge, label %xfs_is_cow_inode.exit._crit_edge

xfs_is_cow_inode.exit._crit_edge:                 ; preds = %xfs_is_cow_inode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %8

xfs_is_cow_inode.exit.xfs_is_cow_inode.exit.thread49_crit_edge: ; preds = %xfs_is_cow_inode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_is_cow_inode.exit.thread49

8:                                                ; preds = %xfs_is_cow_inode.exit._crit_edge, %xfs_is_cow_inode.exit.thread
  %spec.select48 = phi i32 [ %spec.select47, %xfs_is_cow_inode.exit.thread ], [ %spec.select, %xfs_is_cow_inode.exit._crit_edge ]
  br label %xfs_is_cow_inode.exit.thread49

xfs_is_cow_inode.exit.thread49:                   ; preds = %8, %xfs_is_cow_inode.exit.xfs_is_cow_inode.exit.thread49_crit_edge, %lor.rhs.i.xfs_is_cow_inode.exit.thread49_crit_edge
  %9 = phi i32 [ %spec.select48, %8 ], [ 8, %xfs_is_cow_inode.exit.xfs_is_cow_inode.exit.thread49_crit_edge ], [ 8, %lor.rhs.i.xfs_is_cow_inode.exit.thread49_crit_edge ]
  %if_format.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8, i32 6
  %10 = ptrtoint ptr %if_format.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %if_format.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %cmp.i = icmp eq i8 %11, 3
  br i1 %cmp.i, label %xfs_need_iread_extents.exit, label %xfs_is_cow_inode.exit.thread49.if.end8_crit_edge

xfs_is_cow_inode.exit.thread49.if.end8_crit_edge: ; preds = %xfs_is_cow_inode.exit.thread49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

xfs_need_iread_extents.exit:                      ; preds = %xfs_is_cow_inode.exit.thread49
  %if_height.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8, i32 3
  %12 = ptrtoint ptr %if_height.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %if_height.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp2.i = icmp eq i32 %13, 0
  br i1 %cmp2.i, label %if.then3, label %xfs_need_iread_extents.exit.if.end8_crit_edge

xfs_need_iread_extents.exit.if.end8_crit_edge:    ; preds = %xfs_need_iread_extents.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then3:                                         ; preds = %xfs_need_iread_extents.exit
  %and4 = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.then3.if.end8_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end8:                                          ; preds = %if.then3.if.end8_crit_edge, %xfs_need_iread_extents.exit.if.end8_crit_edge, %xfs_is_cow_inode.exit.thread49.if.end8_crit_edge
  %mode.1 = phi i32 [ %9, %xfs_need_iread_extents.exit.if.end8_crit_edge ], [ 4, %if.then3.if.end8_crit_edge ], [ %9, %xfs_is_cow_inode.exit.thread49.if.end8_crit_edge ]
  %and9 = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br label %relock

relock:                                           ; preds = %if.then21, %if.end8
  %mode.2 = phi i32 [ %mode.1, %if.end8 ], [ 4, %if.then21 ]
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %relock
  %call12 = tail call i32 @xfs_ilock_nowait(ptr noundef %ip, i32 noundef %mode.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then11.cleanup_crit_edge, label %if.then11.if.end16_crit_edge

if.then11.if.end16_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %relock
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @xfs_ilock(ptr noundef %ip, i32 noundef %mode.2) #11
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then11.if.end16_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %mode.2)
  %cmp = icmp ne i32 %mode.2, 8
  %brmerge = or i1 %tobool.not, %cmp
  br i1 %brmerge, label %if.end16.if.end22_crit_edge, label %land.lhs.true19

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

land.lhs.true19:                                  ; preds = %if.end16
  %14 = ptrtoint ptr %i_diflags2.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %i_diflags2.i.i, align 8
  %and.i.i37 = and i64 %15, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i37)
  %tobool.i.not.i38 = icmp eq i64 %and.i.i37, 0
  br i1 %tobool.i.not.i38, label %lor.rhs.i41, label %land.lhs.true19.if.then21_crit_edge

land.lhs.true19.if.then21_crit_edge:              ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21

lor.rhs.i41:                                      ; preds = %land.lhs.true19
  %16 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ip, align 8
  %m_always_cow.i.i39 = getelementptr inbounds %struct.xfs_mount, ptr %17, i32 0, i32 67
  %18 = ptrtoint ptr %m_always_cow.i.i39 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %m_always_cow.i.i39, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i.i40 = icmp eq i8 %19, 0
  br i1 %tobool.not.i.i40, label %lor.rhs.i41.if.end22_crit_edge, label %xfs_is_cow_inode.exit46

lor.rhs.i41.if.end22_crit_edge:                   ; preds = %lor.rhs.i41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

xfs_is_cow_inode.exit46:                          ; preds = %lor.rhs.i41
  %m_features.i.i.i42 = getelementptr inbounds %struct.xfs_mount, ptr %17, i32 0, i32 61
  %20 = ptrtoint ptr %m_features.i.i.i42 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %m_features.i.i.i42, align 8
  %and.i.i.i43 = and i64 %21, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i43)
  %tobool.i.i.i44.not = icmp eq i64 %and.i.i.i43, 0
  br i1 %tobool.i.i.i44.not, label %xfs_is_cow_inode.exit46.if.end22_crit_edge, label %xfs_is_cow_inode.exit46.if.then21_crit_edge

xfs_is_cow_inode.exit46.if.then21_crit_edge:      ; preds = %xfs_is_cow_inode.exit46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21

xfs_is_cow_inode.exit46.if.end22_crit_edge:       ; preds = %xfs_is_cow_inode.exit46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then21:                                        ; preds = %xfs_is_cow_inode.exit46.if.then21_crit_edge, %land.lhs.true19.if.then21_crit_edge
  tail call void @xfs_iunlock(ptr noundef %ip, i32 noundef 8) #11
  br label %relock

if.end22:                                         ; preds = %xfs_is_cow_inode.exit46.if.end22_crit_edge, %lor.rhs.i41.if.end22_crit_edge, %if.end16.if.end22_crit_edge
  %mode.2.lcssa53 = phi i32 [ 8, %lor.rhs.i41.if.end22_crit_edge ], [ %mode.2, %if.end16.if.end22_crit_edge ], [ 8, %xfs_is_cow_inode.exit46.if.end22_crit_edge ]
  %22 = ptrtoint ptr %lockmode to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mode.2.lcssa53, ptr %lockmode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then11.cleanup_crit_edge, %if.then3.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -11, %if.then3.cleanup_crit_edge ], [ -11, %if.then11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmapi_read(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_reflink_allocate_cow(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_iomap_found(ptr noundef %ip, i64 noundef %offset, i32 noundef %count, i32 noundef %whichfork, ptr noundef %irec) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iomap_found, i32 0, i32 1), ptr blockaddress(@trace_xfs_iomap_found, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !91

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !69) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !81

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !105
  %call42 = tail call i32 @__traceiter_xfs_iomap_found(ptr noundef null, ptr noundef %ip, i64 noundef %offset, i32 noundef %count, i32 noundef %whichfork, ptr noundef %irec) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !106
  %13 = tail call i32 @llvm.read_register.i32(metadata !69) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !69) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !81

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !94
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iomap_found, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iomap_found, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_iomap_found.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_iomap_found.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 1495, ptr noundef nonnull @.str.6) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !95
  %31 = tail call i32 @llvm.read_register.i32(metadata !69) #11
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
define internal fastcc void @trace_xfs_iomap_alloc(ptr noundef %ip, i64 noundef %offset, i32 noundef %count, i32 noundef %whichfork, ptr noundef %irec) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iomap_alloc, i32 0, i32 1), ptr blockaddress(@trace_xfs_iomap_alloc, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !91

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !69) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !81

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !107
  %call42 = tail call i32 @__traceiter_xfs_iomap_alloc(ptr noundef null, ptr noundef %ip, i64 noundef %offset, i32 noundef %count, i32 noundef %whichfork, ptr noundef %irec) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !108
  %13 = tail call i32 @llvm.read_register.i32(metadata !69) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !69) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !81

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !94
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iomap_alloc, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iomap_alloc, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_iomap_alloc.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_iomap_alloc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 1494, ptr noundef nonnull @.str.6) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !95
  %31 = tail call i32 @llvm.read_register.i32(metadata !69) #11
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
declare dso_local i32 @xfs_ilock_nowait(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ilock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_iomap_found(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_iomap_alloc(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_corruption_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_errortag_test(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iread_extents(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_iext_lookup_extent(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @xfs_hole_to_iomap(ptr nocapture noundef readonly %ip, ptr nocapture noundef writeonly %iomap, i64 noundef %offset_fsb, i64 noundef %end_fsb) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_diflags = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 24
  %0 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %i_diflags, align 2
  %2 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %3 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ip, align 8
  %m_rtdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %4, i32 0, i32 15
  %5 = ptrtoint ptr %m_rtdev_targp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m_rtdev_targp, align 64
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true.cond.end_crit_edge

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false

cond.false:                                       ; preds = %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %7 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ip, align 8
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m_ddev_targp, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %land.lhs.true.cond.end_crit_edge
  %cond = phi ptr [ %10, %cond.false ], [ %6, %land.lhs.true.cond.end_crit_edge ]
  %11 = ptrtoint ptr %iomap to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 -1, ptr %iomap, align 8
  %type = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 3
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %type, align 8
  %13 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ip, align 8
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %14, i32 0, i32 20
  %15 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %16 to i64
  %shl = shl i64 %offset_fsb, %sh_prom
  %offset = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 1
  %17 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %shl, ptr %offset, align 8
  %sub = sub i64 %end_fsb, %offset_fsb
  %18 = load ptr, ptr %ip, align 8
  %sb_blocklog9 = getelementptr inbounds %struct.xfs_sb, ptr %18, i32 0, i32 20
  %19 = ptrtoint ptr %sb_blocklog9 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %sb_blocklog9, align 8
  %sh_prom11 = zext i8 %20 to i64
  %shl12 = shl i64 %sub, %sh_prom11
  %length = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 2
  %21 = ptrtoint ptr %length to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %shl12, ptr %length, align 8
  %bt_bdev = getelementptr inbounds %struct.xfs_buftarg, ptr %cond, i32 0, i32 1
  %22 = ptrtoint ptr %bt_bdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bt_bdev, align 4
  %bdev = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 5
  %24 = ptrtoint ptr %bdev to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %bdev, align 4
  %bt_daxdev = getelementptr inbounds %struct.xfs_buftarg, ptr %cond, i32 0, i32 2
  %25 = ptrtoint ptr %bt_daxdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bt_daxdev, align 8
  %dax_dev = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 6
  %27 = ptrtoint ptr %dax_dev to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %dax_dev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ifork_init_cow(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_reflink_cow_found(ptr noundef %ip, ptr noundef %irec) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_cow_found, i32 0, i32 1), ptr blockaddress(@trace_xfs_reflink_cow_found, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !91

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !69) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !81

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !109
  %call42 = tail call i32 @__traceiter_xfs_reflink_cow_found(ptr noundef null, ptr noundef %ip, ptr noundef %irec) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !110
  %13 = tail call i32 @llvm.read_register.i32(metadata !69) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !69) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !81

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !94
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_cow_found, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_cow_found, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_reflink_cow_found.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_reflink_cow_found.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 3415, ptr noundef nonnull @.str.6) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !95
  %31 = tail call i32 @llvm.read_register.i32(metadata !69) #11
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
declare dso_local void @xfs_trim_extent(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmap_trim_cow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_qm_dqattach_locked(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @xfs_iomap_prealloc_size(ptr noundef %ip, i32 noundef %whichfork, i64 noundef %offset, ptr nocapture noundef readonly %icur) unnamed_addr #8 align 64 {
entry:
  %ncur = alloca %struct.xfs_iext_cursor, align 8
  %prev = alloca %struct.xfs_bmbt_irec, align 8
  %got = alloca %struct.xfs_bmbt_irec, align 8
  %freesp = alloca i64, align 8
  %qblocks = alloca i64, align 8
  %qshift = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ncur) #11
  %0 = ptrtoint ptr %icur to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %icur, align 4
  %2 = ptrtoint ptr %ncur to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %ncur, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %prev) #11
  %3 = call ptr @memset(ptr %prev, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %got) #11
  %4 = call ptr @memset(ptr %got, i32 255, i32 32)
  %5 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ip, align 8
  %7 = zext i32 %whichfork to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %whichfork, label %cond.false3 [
    i32 0, label %cond.true
    i32 1, label %cond.true2
  ]

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8
  br label %cond.end4

cond.true2:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 6
  %8 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_afp, align 8
  br label %cond.end4

cond.false3:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %i_cowfp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 7
  %10 = ptrtoint ptr %i_cowfp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_cowfp, align 4
  br label %cond.end4

cond.end4:                                        ; preds = %cond.false3, %cond.true2, %cond.true
  %cond5 = phi ptr [ %i_df, %cond.true ], [ %9, %cond.true2 ], [ %11, %cond.false3 ]
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %6, i32 0, i32 20
  %12 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %13 to i64
  %shr = lshr i64 %offset, %sh_prom
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %freesp) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %qblocks) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %qshift) #11
  %14 = ptrtoint ptr %qshift to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %qshift, align 4
  %i_vnode.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %15 = ptrtoint ptr %i_vnode.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %i_vnode.i.i, align 8
  %17 = and i16 %16, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %17)
  %cmp.i = icmp eq i16 %17, -32768
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %cond.end4
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = tail call fastcc i64 @i_size_read(ptr noundef %i_vnode.i.i) #11
  br label %XFS_ISIZE.exit

if.end.i:                                         ; preds = %cond.end4
  call void @__sanitizer_cov_trace_pc() #13
  %i_disk_size.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 18
  %18 = ptrtoint ptr %i_disk_size.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %i_disk_size.i, align 8
  br label %XFS_ISIZE.exit

XFS_ISIZE.exit:                                   ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i64 [ %call3.i, %if.then.i ], [ %19, %if.end.i ]
  %m_allocsize_blocks = getelementptr inbounds %struct.xfs_mount, ptr %6, i32 0, i32 54
  %20 = ptrtoint ptr %m_allocsize_blocks to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %m_allocsize_blocks, align 8
  %conv6 = zext i32 %21 to i64
  %22 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sb_blocklog, align 8
  %sh_prom10 = zext i8 %23 to i64
  %shl = shl i64 %conv6, %sh_prom10
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i, i64 %shl)
  %cmp11 = icmp slt i64 %retval.0.i, %shl
  br i1 %cmp11, label %XFS_ISIZE.exit.cleanup_crit_edge, label %if.end

XFS_ISIZE.exit.cleanup_crit_edge:                 ; preds = %XFS_ISIZE.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %XFS_ISIZE.exit
  %24 = ptrtoint ptr %i_vnode.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %i_vnode.i.i, align 8
  %26 = and i16 %25, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %26)
  %cmp.i5 = icmp eq i16 %26, -32768
  br i1 %cmp.i5, label %if.then.i7, label %if.end.i9

if.then.i7:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i6 = tail call fastcc i64 @i_size_read(ptr noundef %i_vnode.i.i) #11
  br label %XFS_ISIZE.exit11

if.end.i9:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %i_disk_size.i8 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 18
  %27 = ptrtoint ptr %i_disk_size.i8 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %i_disk_size.i8, align 8
  br label %XFS_ISIZE.exit11

XFS_ISIZE.exit11:                                 ; preds = %if.end.i9, %if.then.i7
  %retval.0.i10 = phi i64 [ %call3.i6, %if.then.i7 ], [ %28, %if.end.i9 ]
  %m_dalign = getelementptr inbounds %struct.xfs_mount, ptr %6, i32 0, i32 50
  %29 = ptrtoint ptr %m_dalign to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %m_dalign, align 8
  %conv14 = sext i32 %30 to i64
  %31 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %sb_blocklog, align 8
  %sh_prom18 = zext i8 %32 to i64
  %shl19 = shl i64 %conv14, %sh_prom18
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i10, i64 %shl19)
  %cmp20 = icmp slt i64 %retval.0.i10, %shl19
  br i1 %cmp20, label %XFS_ISIZE.exit11.if.then26_crit_edge, label %lor.lhs.false

XFS_ISIZE.exit11.if.then26_crit_edge:             ; preds = %XFS_ISIZE.exit11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26

lor.lhs.false:                                    ; preds = %XFS_ISIZE.exit11
  call void @xfs_iext_prev(ptr noundef %cond5, ptr noundef nonnull %ncur) #11
  %call.i = call zeroext i1 @xfs_iext_get_extent(ptr noundef %cond5, ptr noundef nonnull %ncur, ptr noundef nonnull %prev) #11
  br i1 %call.i, label %lor.lhs.false23, label %lor.lhs.false.if.then26_crit_edge

lor.lhs.false.if.then26_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26

lor.lhs.false23:                                  ; preds = %lor.lhs.false
  %33 = ptrtoint ptr %prev to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %prev, align 8
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %prev, i32 0, i32 2
  %35 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %br_blockcount, align 8
  %add = add i64 %36, %34
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %shr)
  %cmp24 = icmp ult i64 %add, %shr
  br i1 %cmp24, label %lor.lhs.false23.if.then26_crit_edge, label %if.end29

lor.lhs.false23.if.then26_crit_edge:              ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26

if.then26:                                        ; preds = %lor.lhs.false23.if.then26_crit_edge, %lor.lhs.false.if.then26_crit_edge, %XFS_ISIZE.exit11.if.then26_crit_edge
  %37 = ptrtoint ptr %m_allocsize_blocks to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %m_allocsize_blocks, align 8
  %conv28 = zext i32 %38 to i64
  br label %cleanup

if.end29:                                         ; preds = %lor.lhs.false23
  %conv31 = trunc i64 %36 to i32
  %br_startblock = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %got, i32 0, i32 1
  call void @xfs_iext_prev(ptr noundef %cond5, ptr noundef nonnull %ncur) #11
  %call.i1217 = call zeroext i1 @xfs_iext_get_extent(ptr noundef %cond5, ptr noundef nonnull %ncur, ptr noundef nonnull %got) #11
  %call32.not18 = xor i1 %call.i1217, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %conv31)
  %cmp3319 = icmp ugt i32 %conv31, 1048575
  %or.cond20 = select i1 %call32.not18, i1 true, i1 %cmp3319
  br i1 %or.cond20, label %if.end29.while.end_crit_edge, label %lor.lhs.false35.lr.ph

if.end29.while.end_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

lor.lhs.false35.lr.ph:                            ; preds = %if.end29
  %br_blockcount39 = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %got, i32 0, i32 2
  %br_startblock48 = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %prev, i32 0, i32 1
  br label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %if.end52.lor.lhs.false35_crit_edge, %lor.lhs.false35.lr.ph
  %plen.021 = phi i32 [ %conv31, %lor.lhs.false35.lr.ph ], [ %conv56, %if.end52.lor.lhs.false35_crit_edge ]
  %39 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %br_startblock, align 8
  %and.i = and i64 %40, 4503599627239424
  call void @__sanitizer_cov_trace_const_cmp8(i64 4503599627239424, i64 %and.i)
  %cmp.i13.not = icmp eq i64 %and.i, 4503599627239424
  br i1 %cmp.i13.not, label %lor.lhs.false35.while.end_crit_edge, label %lor.lhs.false37

lor.lhs.false35.while.end_crit_edge:              ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

lor.lhs.false37:                                  ; preds = %lor.lhs.false35
  %41 = ptrtoint ptr %got to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %got, align 8
  %43 = ptrtoint ptr %br_blockcount39 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %br_blockcount39, align 8
  %add40 = add i64 %44, %42
  %45 = ptrtoint ptr %prev to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %prev, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add40, i64 %46)
  %cmp42.not = icmp eq i64 %add40, %46
  br i1 %cmp42.not, label %lor.lhs.false44, label %lor.lhs.false37.while.end_crit_edge

lor.lhs.false37.while.end_crit_edge:              ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

lor.lhs.false44:                                  ; preds = %lor.lhs.false37
  %add47 = add i64 %44, %40
  %47 = ptrtoint ptr %br_startblock48 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %br_startblock48, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add47, i64 %48)
  %cmp49.not = icmp eq i64 %add47, %48
  br i1 %cmp49.not, label %if.end52, label %lor.lhs.false44.while.end_crit_edge

lor.lhs.false44.while.end_crit_edge:              ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end52:                                         ; preds = %lor.lhs.false44
  %49 = trunc i64 %44 to i32
  %conv56 = add i32 %plen.021, %49
  %50 = call ptr @memcpy(ptr %prev, ptr %got, i32 32)
  call void @xfs_iext_prev(ptr noundef %cond5, ptr noundef nonnull %ncur) #11
  %call.i12 = call zeroext i1 @xfs_iext_get_extent(ptr noundef %cond5, ptr noundef nonnull %ncur, ptr noundef nonnull %got) #11
  %call32.not = xor i1 %call.i12, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %conv56)
  %cmp33 = icmp ugt i32 %conv56, 1048575
  %or.cond = select i1 %call32.not, i1 true, i1 %cmp33
  br i1 %or.cond, label %if.end52.while.end_crit_edge, label %if.end52.lor.lhs.false35_crit_edge

if.end52.lor.lhs.false35_crit_edge:               ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false35

if.end52.while.end_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end52.while.end_crit_edge, %lor.lhs.false44.while.end_crit_edge, %lor.lhs.false37.while.end_crit_edge, %lor.lhs.false35.while.end_crit_edge, %if.end29.while.end_crit_edge
  %plen.0.lcssa = phi i32 [ %conv31, %if.end29.while.end_crit_edge ], [ %plen.021, %lor.lhs.false35.while.end_crit_edge ], [ %plen.021, %lor.lhs.false37.while.end_crit_edge ], [ %plen.021, %lor.lhs.false44.while.end_crit_edge ], [ %conv56, %if.end52.while.end_crit_edge ]
  %mul = shl i32 %plen.0.lcssa, 1
  %conv57 = zext i32 %mul to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097151, i32 %mul)
  %cmp58 = icmp ugt i32 %mul, 2097151
  br i1 %cmp58, label %if.then60, label %while.end.if.end68_crit_edge

while.end.if.end68_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.then60:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %m_blockmask = getelementptr inbounds %struct.xfs_mount, ptr %6, i32 0, i32 31
  %51 = ptrtoint ptr %m_blockmask to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %m_blockmask, align 8
  %conv61 = zext i32 %52 to i64
  %add62 = add i64 %conv61, %offset
  %53 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %sb_blocklog, align 8
  %sh_prom66 = zext i8 %54 to i64
  %shr67 = lshr i64 %add62, %sh_prom66
  br label %if.end68

if.end68:                                         ; preds = %if.then60, %while.end.if.end68_crit_edge
  %alloc_blocks.0 = phi i64 [ %shr67, %if.then60 ], [ %conv57, %while.end.if.end68_crit_edge ]
  %55 = ptrtoint ptr %qblocks to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %alloc_blocks.0, ptr %qblocks, align 8
  %56 = call i64 @llvm.umin.i64(i64 %alloc_blocks.0, i64 2097152)
  %count.i = getelementptr inbounds %struct.xfs_mount, ptr %6, i32 0, i32 79, i32 1
  %57 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load volatile i64, ptr %count.i, align 8
  %59 = call i64 @llvm.smax.i64(i64 %58, i64 0) #11
  %60 = ptrtoint ptr %freesp to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %freesp, align 8
  %arrayidx = getelementptr %struct.xfs_mount, ptr %6, i32 0, i32 62, i32 4
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %arrayidx, align 32
  call void @__sanitizer_cov_trace_cmp8(i64 %59, i64 %62)
  %cmp76 = icmp ult i64 %59, %62
  br i1 %cmp76, label %if.then78, label %if.end68.if.end106_crit_edge

if.end68.if.end106_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106

if.then78:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  %m_low_space = getelementptr inbounds %struct.xfs_mount, ptr %6, i32 0, i32 62
  %arrayidx80 = getelementptr %struct.xfs_mount, ptr %6, i32 0, i32 62, i32 3
  %63 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %arrayidx80, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %59, i64 %64)
  %cmp81 = icmp ult i64 %59, %64
  %spec.select = select i1 %cmp81, i32 3, i32 2
  %arrayidx86 = getelementptr %struct.xfs_mount, ptr %6, i32 0, i32 62, i32 2
  %65 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %arrayidx86, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %59, i64 %66)
  %cmp87 = icmp ult i64 %59, %66
  %inc90 = zext i1 %cmp87 to i32
  %shift.1 = add nuw nsw i32 %spec.select, %inc90
  %arrayidx93 = getelementptr %struct.xfs_mount, ptr %6, i32 0, i32 62, i32 1
  %67 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %arrayidx93, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %59, i64 %68)
  %cmp94 = icmp ult i64 %59, %68
  %inc97 = zext i1 %cmp94 to i32
  %shift.2 = add nuw nsw i32 %shift.1, %inc97
  %69 = ptrtoint ptr %m_low_space to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %m_low_space, align 32
  call void @__sanitizer_cov_trace_cmp8(i64 %59, i64 %70)
  %cmp101 = icmp ult i64 %59, %70
  %inc104 = zext i1 %cmp101 to i32
  %spec.select3 = add nuw nsw i32 %shift.2, %inc104
  br label %if.end106

if.end106:                                        ; preds = %if.then78, %if.end68.if.end106_crit_edge
  %shift.3 = phi i32 [ 0, %if.end68.if.end106_crit_edge ], [ %spec.select3, %if.then78 ]
  %call107 = call fastcc zeroext i1 @xfs_quota_need_throttle(ptr noundef %ip, i8 noundef zeroext 1, i64 noundef %56)
  br i1 %call107, label %if.then108, label %if.end106.if.end109_crit_edge

if.end106.if.end109_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

if.then108:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @xfs_quota_calc_throttle(ptr noundef %ip, i8 noundef zeroext 1, ptr noundef nonnull %qblocks, ptr noundef nonnull %qshift, ptr noundef nonnull %freesp)
  br label %if.end109

if.end109:                                        ; preds = %if.then108, %if.end106.if.end109_crit_edge
  %call110 = call fastcc zeroext i1 @xfs_quota_need_throttle(ptr noundef %ip, i8 noundef zeroext 4, i64 noundef %56)
  br i1 %call110, label %if.then111, label %if.end109.if.end112_crit_edge

if.end109.if.end112_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112

if.then111:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @xfs_quota_calc_throttle(ptr noundef %ip, i8 noundef zeroext 4, ptr noundef nonnull %qblocks, ptr noundef nonnull %qshift, ptr noundef nonnull %freesp)
  br label %if.end112

if.end112:                                        ; preds = %if.then111, %if.end109.if.end112_crit_edge
  %call113 = call fastcc zeroext i1 @xfs_quota_need_throttle(ptr noundef %ip, i8 noundef zeroext 2, i64 noundef %56)
  br i1 %call113, label %if.then114, label %if.end112.if.end115_crit_edge

if.end112.if.end115_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end115

if.then114:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @xfs_quota_calc_throttle(ptr noundef %ip, i8 noundef zeroext 2, ptr noundef nonnull %qblocks, ptr noundef nonnull %qshift, ptr noundef nonnull %freesp)
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %if.end112.if.end115_crit_edge
  %71 = ptrtoint ptr %qblocks to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %qblocks, align 8
  %73 = call i64 @llvm.umin.i64(i64 %56, i64 %72)
  %74 = ptrtoint ptr %qshift to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %qshift, align 4
  %76 = call i32 @llvm.smax.i32(i32 %shift.3, i32 %75)
  %sh_prom132 = zext i32 %76 to i64
  %alloc_blocks.1 = lshr i64 %73, %sh_prom132
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %alloc_blocks.1)
  %tobool135.not = icmp eq i64 %alloc_blocks.1, 0
  br i1 %tobool135.not, label %if.end115.while.end167_crit_edge, label %if.end156.thread

if.end115.while.end167_crit_edge:                 ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end167

if.end156.thread:                                 ; preds = %if.end115
  %conv151 = trunc i64 %alloc_blocks.1 to i32
  %77 = call i32 @llvm.ctlz.i32(i32 %conv151, i1 false) #11, !range !111
  %shl.i = lshr i32 -2147483648, %77
  %78 = call i32 @llvm.umin.i32(i32 %shl.i, i32 2097151)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool162.not25 = icmp eq i32 %78, 0
  br i1 %tobool162.not25, label %if.end156.thread.while.end167_crit_edge, label %land.rhs.lr.ph

if.end156.thread.while.end167_crit_edge:          ; preds = %if.end156.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end167

land.rhs.lr.ph:                                   ; preds = %if.end156.thread
  %79 = zext i32 %78 to i64
  %80 = ptrtoint ptr %freesp to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %freesp, align 8
  br label %land.rhs

land.rhs:                                         ; preds = %while.body165.land.rhs_crit_edge, %land.rhs.lr.ph
  %alloc_blocks.426 = phi i64 [ %79, %land.rhs.lr.ph ], [ %shr166, %while.body165.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %alloc_blocks.426, i64 %81)
  %cmp163.not = icmp ult i64 %alloc_blocks.426, %81
  br i1 %cmp163.not, label %land.rhs.while.end167_crit_edge, label %while.body165

land.rhs.while.end167_crit_edge:                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end167

while.body165:                                    ; preds = %land.rhs
  %shr166 = lshr i64 %alloc_blocks.426, 4
  %tobool162.not = icmp ult i64 %alloc_blocks.426, 16
  br i1 %tobool162.not, label %while.body165.while.end167_crit_edge, label %while.body165.land.rhs_crit_edge

while.body165.land.rhs_crit_edge:                 ; preds = %while.body165
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

while.body165.while.end167_crit_edge:             ; preds = %while.body165
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end167

while.end167:                                     ; preds = %while.body165.while.end167_crit_edge, %land.rhs.while.end167_crit_edge, %if.end156.thread.while.end167_crit_edge, %if.end115.while.end167_crit_edge
  %alloc_blocks.4.lcssa = phi i64 [ 0, %if.end156.thread.while.end167_crit_edge ], [ 0, %if.end115.while.end167_crit_edge ], [ %shr166, %while.body165.while.end167_crit_edge ], [ %alloc_blocks.426, %land.rhs.while.end167_crit_edge ]
  %82 = ptrtoint ptr %m_allocsize_blocks to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %m_allocsize_blocks, align 8
  %conv169 = zext i32 %83 to i64
  %84 = call i64 @llvm.umax.i64(i64 %alloc_blocks.4.lcssa, i64 %conv169)
  call fastcc void @trace_xfs_iomap_prealloc_size(ptr noundef %ip, i64 noundef %84, i32 noundef %76, i32 noundef %83)
  br label %cleanup

cleanup:                                          ; preds = %while.end167, %if.then26, %XFS_ISIZE.exit.cleanup_crit_edge
  %retval.0 = phi i64 [ %conv28, %if.then26 ], [ %84, %while.end167 ], [ 0, %XFS_ISIZE.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qshift) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %qblocks) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %freesp) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %got) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %prev) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ncur) #11
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmapi_reserve_delalloc(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_delalloc_enospc(ptr noundef %ip, i64 noundef %offset, i32 noundef %count) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_delalloc_enospc, i32 0, i32 1), ptr blockaddress(@trace_xfs_delalloc_enospc, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !91

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !69) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !81

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !112
  %call42 = tail call i32 @__traceiter_xfs_delalloc_enospc(ptr noundef null, ptr noundef %ip, i64 noundef %offset, i32 noundef %count) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !113
  %13 = tail call i32 @llvm.read_register.i32(metadata !69) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !69) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !81

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !94
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_delalloc_enospc, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_delalloc_enospc, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_delalloc_enospc.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_delalloc_enospc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 1530, ptr noundef nonnull @.str.6) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !95
  %31 = tail call i32 @llvm.read_register.i32(metadata !69) #11
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
declare dso_local i32 @__traceiter_xfs_reflink_cow_found(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @xfs_quota_need_throttle(ptr nocapture noundef readonly %ip, i8 noundef zeroext %type, i64 noundef %alloc_blocks) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %type, label %entry.cleanup_crit_edge [
    i8 1, label %sw.bb.i
    i8 4, label %sw.bb1.i
    i8 2, label %sw.bb2.i
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %i_udquot.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 1
  br label %xfs_inode_dquot.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %i_gdquot.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 2
  br label %xfs_inode_dquot.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %xfs_inode_dquot.exit
  %2 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ip, align 8
  %4 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %type, label %lor.lhs.false.cleanup_crit_edge [
    i8 1, label %lor.lhs.false.xfs_this_quota_on.exit_crit_edge
    i8 4, label %sw.bb1.i13
    i8 2, label %sw.bb4.i
  ]

lor.lhs.false.xfs_this_quota_on.exit_crit_edge:   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_this_quota_on.exit

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb1.i13:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_this_quota_on.exit

sw.bb4.i:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_this_quota_on.exit

xfs_this_quota_on.exit:                           ; preds = %sw.bb4.i, %sw.bb1.i13, %lor.lhs.false.xfs_this_quota_on.exit_crit_edge
  %.sink9.i = phi i32 [ 8, %sw.bb4.i ], [ 64, %sw.bb1.i13 ], [ 1, %lor.lhs.false.xfs_this_quota_on.exit_crit_edge ]
  %m_qflags5.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 60
  %5 = ptrtoint ptr %m_qflags5.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %m_qflags5.i, align 4
  %and6.i = and i32 %6, %.sink9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool2.not = icmp eq i32 %and6.i, 0
  br i1 %tobool2.not, label %xfs_this_quota_on.exit.cleanup_crit_edge, label %if.end

xfs_this_quota_on.exit.cleanup_crit_edge:         ; preds = %xfs_this_quota_on.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %xfs_this_quota_on.exit
  %q_prealloc_hi_wmark = getelementptr inbounds %struct.xfs_dquot, ptr %retval.0.i, i32 0, i32 14
  %7 = ptrtoint ptr %q_prealloc_hi_wmark to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %q_prealloc_hi_wmark, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool3.not = icmp eq i64 %8, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %q_blk = getelementptr inbounds %struct.xfs_dquot, ptr %retval.0.i, i32 0, i32 9
  %9 = ptrtoint ptr %q_blk to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %q_blk, align 8
  %add = add i64 %10, %alloc_blocks
  %q_prealloc_lo_wmark = getelementptr inbounds %struct.xfs_dquot, ptr %retval.0.i, i32 0, i32 13
  %11 = ptrtoint ptr %q_prealloc_lo_wmark to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %q_prealloc_lo_wmark, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %12)
  %cmp = icmp uge i64 %add, %12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %xfs_this_quota_on.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %xfs_inode_dquot.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %xfs_this_quota_on.exit.cleanup_crit_edge ], [ false, %xfs_inode_dquot.exit.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ %cmp, %if.end5 ], [ false, %entry.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @xfs_quota_calc_throttle(ptr nocapture noundef readonly %ip, i8 noundef zeroext %type, ptr nocapture noundef %qblocks, ptr nocapture noundef %qshift, ptr nocapture noundef %qfreesp) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %type, label %entry.if.then_crit_edge [
    i8 1, label %sw.bb.i
    i8 4, label %sw.bb1.i
    i8 2, label %sw.bb2.i
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %i_udquot.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 1
  br label %xfs_inode_dquot.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %i_gdquot.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 2
  br label %xfs_inode_dquot.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %i_pdquot.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 3
  br label %xfs_inode_dquot.exit

xfs_inode_dquot.exit:                             ; preds = %sw.bb2.i, %sw.bb1.i, %sw.bb.i
  %retval.0.i.in = phi ptr [ %i_pdquot.i, %sw.bb2.i ], [ %i_gdquot.i, %sw.bb1.i ], [ %i_udquot.i, %sw.bb.i ]
  %1 = ptrtoint ptr %retval.0.i.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %retval.0.i = load ptr, ptr %retval.0.i.in, align 4
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %xfs_inode_dquot.exit.if.then_crit_edge, label %lor.lhs.false

xfs_inode_dquot.exit.if.then_crit_edge:           ; preds = %xfs_inode_dquot.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %xfs_inode_dquot.exit
  %q_blk = getelementptr inbounds %struct.xfs_dquot, ptr %retval.0.i, i32 0, i32 9
  %2 = ptrtoint ptr %q_blk to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %q_blk, align 8
  %q_prealloc_hi_wmark = getelementptr inbounds %struct.xfs_dquot, ptr %retval.0.i, i32 0, i32 14
  %4 = ptrtoint ptr %q_prealloc_hi_wmark to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %q_prealloc_hi_wmark, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %3)
  %cmp.not = icmp ugt i64 %5, %3
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %xfs_inode_dquot.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %6 = ptrtoint ptr %qblocks to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %qblocks, align 8
  %7 = ptrtoint ptr %qfreesp to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %qfreesp, align 8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %sub = sub i64 %5, %3
  %arrayidx = getelementptr %struct.xfs_dquot, ptr %retval.0.i, i32 0, i32 15, i32 2
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %9)
  %cmp4 = icmp slt i64 %sub, %9
  br i1 %cmp4, label %if.then5, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %q_low_space = getelementptr inbounds %struct.xfs_dquot, ptr %retval.0.i, i32 0, i32 15
  %arrayidx7 = getelementptr %struct.xfs_dquot, ptr %retval.0.i, i32 0, i32 15, i32 1
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx7, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %11)
  %cmp8 = icmp slt i64 %sub, %11
  %spec.select = select i1 %cmp8, i32 4, i32 2
  %12 = ptrtoint ptr %q_low_space to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %q_low_space, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %13)
  %cmp13 = icmp slt i64 %sub, %13
  %add15 = add nuw nsw i32 %spec.select, 2
  %spec.select50 = select i1 %cmp13, i32 %add15, i32 %spec.select
  br label %if.end17

if.end17:                                         ; preds = %if.then5, %if.end.if.end17_crit_edge
  %shift.1 = phi i32 [ 0, %if.end.if.end17_crit_edge ], [ %spec.select50, %if.then5 ]
  %14 = ptrtoint ptr %qfreesp to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %qfreesp, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %15)
  %cmp18 = icmp slt i64 %sub, %15
  br i1 %cmp18, label %if.then19, label %if.end17.if.end20_crit_edge

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %qfreesp to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %sub, ptr %qfreesp, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end17.if.end20_crit_edge
  %sh_prom = zext i32 %shift.1 to i64
  %shr = ashr i64 %sub, %sh_prom
  %17 = ptrtoint ptr %qblocks to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %qblocks, align 8
  %19 = ptrtoint ptr %qshift to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %qshift, align 4
  %sh_prom21 = zext i32 %20 to i64
  %shr22 = lshr i64 %18, %sh_prom21
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %shr22)
  %cmp23 = icmp ult i64 %shr, %shr22
  br i1 %cmp23, label %if.then24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %qblocks to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %sub, ptr %qblocks, align 8
  %22 = ptrtoint ptr %qshift to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shift.1, ptr %qshift, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end20.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_iomap_prealloc_size(ptr noundef %ip, i64 noundef %blocks, i32 noundef %shift, i32 noundef %writeio_blocks) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iomap_prealloc_size, i32 0, i32 1), ptr blockaddress(@trace_xfs_iomap_prealloc_size, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !91

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !69) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !81

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !114
  %call42 = tail call i32 @__traceiter_xfs_iomap_prealloc_size(ptr noundef null, ptr noundef %ip, i64 noundef %blocks, i32 noundef %shift, i32 noundef %writeio_blocks) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !115
  %13 = tail call i32 @llvm.read_register.i32(metadata !69) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !69) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !81

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !94
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iomap_prealloc_size, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iomap_prealloc_size, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_iomap_prealloc_size.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_iomap_prealloc_size.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 871, ptr noundef nonnull @.str.6) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !95
  %31 = tail call i32 @llvm.read_register.i32(metadata !69) #11
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
declare dso_local void @xfs_iext_prev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_iomap_prealloc_size(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_delalloc_enospc(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_pagecache_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmap_punch_delalloc_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_reflink_trim_around_shared(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ilock_data_map_shared(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ilock_attr_map_shared(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !22, !23, !24, !26, !27, !29, !30, !32, !34, !36, !37, !39, !40, !42, !44, !46, !48, !50, !52, !53, !55, !56, !58, !59, !61, !63, !65, !67}
!llvm.named.register.sp = !{!69}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_iomap.c", i32 168, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/xfs_iomap.c", i32 210, i32 2}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/xfs/xfs_iomap.c", i32 600, i32 4}
!7 = !{ptr @xfs_direct_write_iomap_ops, !8, !"xfs_direct_write_iomap_ops", i1 false, i1 false}
!8 = !{!"../fs/xfs/xfs_iomap.c", i32 861, i32 24}
!9 = !{ptr @xfs_buffered_write_iomap_ops, !10, !"xfs_buffered_write_iomap_ops", i1 false, i1 false}
!10 = !{!"../fs/xfs/xfs_iomap.c", i32 1149, i32 24}
!11 = !{ptr @xfs_read_iomap_ops, !12, !"xfs_read_iomap_ops", i1 false, i1 false}
!12 = !{!"../fs/xfs/xfs_iomap.c", i32 1193, i32 24}
!13 = !{ptr @xfs_seek_iomap_ops, !14, !"xfs_seek_iomap_ops", i1 false, i1 false}
!14 = !{!"../fs/xfs/xfs_iomap.c", i32 1278, i32 24}
!15 = !{ptr @xfs_xattr_iomap_ops, !16, !"xfs_xattr_iomap_ops", i1 false, i1 false}
!16 = !{!"../fs/xfs/xfs_iomap.c", i32 1322, i32 24}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/xfs_iomap.c", i32 40, i32 4}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../fs/xfs/xfs_trace.h", i32 1531, i32 1}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/xfs/xfs_iomap.c", i32 742, i32 2}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/xfs/xfs_iomap.c", i32 120, i32 2}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../fs/xfs/xfs_trace.h", i32 1495, i32 1}
!36 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../fs/xfs/xfs_trace.h", i32 1494, i32 1}
!39 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/xfs/xfs_iomap.c", i32 893, i32 2}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/xfs/xfs_iomap.c", i32 897, i32 6}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/xfs/xfs_iomap.c", i32 898, i32 6}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/xfs/xfs_iomap.c", i32 935, i32 4}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/xfs/xfs_iomap.c", i32 1025, i32 4}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../fs/xfs/xfs_trace.h", i32 3415, i32 1}
!52 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../fs/xfs/xfs_trace.h", i32 849, i32 1}
!55 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../fs/xfs/xfs_trace.h", i32 1530, i32 1}
!58 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!59 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/xfs/xfs_iomap.c", i32 1140, i32 18}
!61 = !{ptr @__func__.xfs_buffered_write_iomap_end, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/xfs/xfs_iomap.c", i32 1141, i32 5}
!63 = !{ptr @.str.17, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/xfs/xfs_iomap.c", i32 1172, i32 2}
!65 = !{ptr @.str.18, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/xfs/xfs_iomap.c", i32 1310, i32 2}
!67 = !{ptr @.str.19, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/xfs/xfs_iomap.c", i32 1318, i32 2}
!69 = !{!"sp"}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{!"branch_weights", i32 1, i32 2000}
!80 = !{!"auto-init"}
!81 = !{!"branch_weights", i32 2000, i32 1}
!82 = !{i64 2148501989, i64 2148502269, i64 2148502603, i64 2148502937}
!83 = !{i64 2153154335}
!84 = !{i64 2149708586}
!85 = !{i64 2149713518}
!86 = !{i64 2149735230}
!87 = !{i64 2149740122}
!88 = !{i64 2149816579}
!89 = !{i64 2149816904}
!90 = !{i64 2153166197}
!91 = !{i64 2148280192, i64 2148280197, i64 2148280210, i64 2148280254, i64 2148280288, i64 2148280309}
!92 = !{i64 2159778081}
!93 = !{i64 2159778320}
!94 = !{i64 2149982285}
!95 = !{i64 2149983321}
!96 = !{i64 1056884, i64 1056945}
!97 = !{i64 1059616}
!98 = !{i64 1059901}
!99 = !{i64 2153152404}
!100 = !{i64 2153152246}
!101 = !{i64 2153152574}
!102 = !{i64 2149816254}
!103 = !{i8 0, i8 2}
!104 = !{i64 2166387567}
!105 = !{i64 2159739384}
!106 = !{i64 2159743706}
!107 = !{i64 2159721367}
!108 = !{i64 2159721628}
!109 = !{i64 2164874712}
!110 = !{i64 2164874933}
!111 = !{i32 0, i32 33}
!112 = !{i64 2159760732}
!113 = !{i64 2159760967}
!114 = !{i64 2158419440}
!115 = !{i64 2158419715}
