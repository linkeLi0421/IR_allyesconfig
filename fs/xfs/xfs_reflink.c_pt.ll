; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_reflink.c_pt.bc'
source_filename = "../fs/xfs/xfs_reflink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iomap_ops = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.xfs_buf_map = type { i64, i32 }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.90, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.89, i16, i8, i32 }
%union.anon.89 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.llist_node = type { ptr }
%union.anon.90 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.78 = type { ptr }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xfs_iext_cursor = type { ptr, i32 }
%struct.xfs_trans = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.xfs_perag = type { ptr, i32, %struct.atomic_t, i8, i8, i8, i8, [3 x i8], i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.xfs_ag_resv, %struct.xfs_ag_resv, %struct.callback_head, i16, i16, %struct.spinlock, %struct.spinlock, %struct.rb_root, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.xarray, i32, i32, %struct.spinlock, %struct.rhashtable, %struct.delayed_work, %struct.rhashtable }
%struct.xfs_ag_resv = type { i32, i32, i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%union.anon.30 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"count != 0\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/xfs/xfs_reflink.c\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"xfs_isilocked(ip, XFS_ILOCK_EXCL)\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"!xfs_is_reflink_inode(ip)\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(*tpp)->t_firstblock == NULLFSBLOCK\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ip->i_cowfp\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"nimaps == 1 && imap.br_startoff == srcoff\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"imap.br_startblock != DELAYSTARTBLOCK\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xfs_is_reflink_inode(ip)\00", [39 x i8] zeroinitializer }, align 32
@xfs_buffered_write_iomap_ops = external dso_local constant %struct.iomap_ops, align 4
@__tracepoint_xfs_reflink_trim_around_shared = external dso_local global %struct.tracepoint, align 4
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_reflink_trim_around_shared.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@xfs_reflink_convert_cow_locked.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_xfs_reflink_convert_cow = external dso_local global %struct.tracepoint, align 4
@trace_xfs_reflink_convert_cow.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_reflink_cancel_cow = external dso_local global %struct.tracepoint, align 4
@trace_xfs_reflink_cancel_cow.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_reflink_cancel_cow_range = external dso_local global %struct.tracepoint, align 4
@trace_xfs_reflink_cancel_cow_range.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_reflink_cancel_cow_range_error = external dso_local global %struct.tracepoint, align 4
@trace_xfs_reflink_cancel_cow_range_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_reflink_end_cow = external dso_local global %struct.tracepoint, align 4
@trace_xfs_reflink_end_cow.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"del.br_blockcount > 0\00", [42 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_reflink_cow_remap = external dso_local global %struct.tracepoint, align 4
@trace_xfs_reflink_cow_remap.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_reflink_end_cow_error = external dso_local global %struct.tracepoint, align 4
@trace_xfs_reflink_end_cow_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_reflink_update_inode_size = external dso_local global %struct.tracepoint, align 4
@trace_xfs_reflink_update_inode_size.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_reflink_update_inode_size_error = external dso_local global %struct.tracepoint, align 4
@trace_xfs_reflink_update_inode_size_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_reflink_remap_blocks = external dso_local global %struct.tracepoint, align 4
@trace_xfs_reflink_remap_blocks.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_reflink_remap_extent_src = external dso_local global %struct.tracepoint, align 4
@trace_xfs_reflink_remap_extent_src.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"nimaps == 1 && smap.br_startoff == dmap->br_startoff\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"dmap->br_blockcount == smap.br_blockcount\00", [54 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"len == 0\00", [23 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_reflink_remap_extent_dest = external dso_local global %struct.tracepoint, align 4
@trace_xfs_reflink_remap_extent_dest.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_reflink_remap_extent_error = external dso_local global %struct.tracepoint, align 4
@trace_xfs_reflink_remap_extent_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_reflink_remap_blocks_error = external dso_local global %struct.tracepoint, align 4
@trace_xfs_reflink_remap_blocks_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_zero_eof = external dso_local global %struct.tracepoint, align 4
@trace_xfs_zero_eof.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_reflink_set_inode_flag = external dso_local global %struct.tracepoint, align 4
@trace_xfs_reflink_set_inode_flag.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_reflink_set_inode_flag_error = external dso_local global %struct.tracepoint, align 4
@trace_xfs_reflink_set_inode_flag_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_reflink_unset_inode_flag = external dso_local global %struct.tracepoint, align 4
@trace_xfs_reflink_unset_inode_flag.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_reflink_unshare = external dso_local global %struct.tracepoint, align 4
@trace_xfs_reflink_unshare.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_reflink_unshare_error = external dso_local global %struct.tracepoint, align 4
@trace_xfs_reflink_unshare_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967174, i64 4294967268]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 292, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 362, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 364, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 481, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 537, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 1225, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 1227, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 1444, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 3414, i32 1 }
@___asan_gen_.51 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 108, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 643, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 271, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 1049, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 1057, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [24 x i8] c"../fs/xfs/xfs_reflink.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 1144, i32 3 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_reflink_find_shared(ptr noundef %mp, ptr noundef %tp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %aglen, ptr noundef %fbno, ptr noundef %flen, i1 noundef zeroext %find_end_of_shared) local_unnamed_addr #0 align 64 {
entry:
  %agbp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agbp) #8
  %0 = ptrtoint ptr %agbp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %agbp, align 4, !annotation !108
  %call = call i32 @xfs_alloc_read_agf(ptr noundef %mp, ptr noundef %tp, i32 noundef %agno, i32 noundef 0, ptr noundef nonnull %agbp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %agbp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %agbp, align 4
  %b_pag = getelementptr inbounds %struct.xfs_buf, ptr %2, i32 0, i32 13
  %3 = ptrtoint ptr %b_pag to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %b_pag, align 8
  %call1 = call ptr @xfs_refcountbt_init_cursor(ptr noundef %mp, ptr noundef %tp, ptr noundef %2, ptr noundef %4) #8
  %call3 = call i32 @xfs_refcount_find_shared(ptr noundef %call1, i32 noundef %agbno, i32 noundef %aglen, ptr noundef %fbno, ptr noundef %flen, i1 noundef zeroext %find_end_of_shared) #8
  call void @xfs_btree_del_cursor(ptr noundef %call1, i32 noundef %call3) #8
  %5 = ptrtoint ptr %agbp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %agbp, align 4
  call void @xfs_trans_brelse(ptr noundef %tp, ptr noundef %6) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agbp) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_alloc_read_agf(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_refcountbt_init_cursor(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_refcount_find_shared(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_btree_del_cursor(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_brelse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_reflink_trim_around_shared(ptr noundef %ip, ptr noundef %irec, ptr nocapture noundef writeonly %shared) local_unnamed_addr #0 align 64 {
entry:
  %agbp.i = alloca ptr, align 4
  %fbno = alloca i32, align 4
  %flen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fbno) #8
  %0 = ptrtoint ptr %fbno to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %fbno, align 4, !annotation !108
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flen) #8
  %1 = ptrtoint ptr %flen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %flen, align 4, !annotation !108
  %i_diflags2.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 25
  %2 = ptrtoint ptr %i_diflags2.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_diflags2.i.i, align 8
  %and.i.i = and i64 %3, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %lor.rhs.i, label %entry.lor.lhs.false_crit_edge

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

lor.rhs.i:                                        ; preds = %entry
  %4 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ip, align 8
  %m_always_cow.i.i = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 67
  %6 = ptrtoint ptr %m_always_cow.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %m_always_cow.i.i, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i, label %lor.rhs.i.if.then_crit_edge, label %xfs_is_cow_inode.exit

lor.rhs.i.if.then_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

xfs_is_cow_inode.exit:                            ; preds = %lor.rhs.i
  %m_features.i.i.i = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 61
  %8 = ptrtoint ptr %m_features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %m_features.i.i.i, align 8
  %and.i.i.i = and i64 %9, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.i.i.not = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.i.i.not, label %xfs_is_cow_inode.exit.if.then_crit_edge, label %xfs_is_cow_inode.exit.lor.lhs.false_crit_edge

xfs_is_cow_inode.exit.lor.lhs.false_crit_edge:    ; preds = %xfs_is_cow_inode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

xfs_is_cow_inode.exit.if.then_crit_edge:          ; preds = %xfs_is_cow_inode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %xfs_is_cow_inode.exit.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %br_startblock.i.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %irec, i32 0, i32 1
  %10 = ptrtoint ptr %br_startblock.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %br_startblock.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %11)
  %switch.i.i = icmp ult i64 %11, -2
  %and.i.i.i46 = and i64 %11, 4503599627239424
  call void @__sanitizer_cov_trace_const_cmp8(i64 4503599627239424, i64 %and.i.i.i46)
  %cmp.i.i.i = icmp ne i64 %and.i.i.i46, 4503599627239424
  %12 = and i1 %switch.i.i, %cmp.i.i.i
  br i1 %12, label %xfs_bmap_is_written_extent.exit, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

xfs_bmap_is_written_extent.exit:                  ; preds = %lor.lhs.false
  %br_state.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %irec, i32 0, i32 3
  %13 = ptrtoint ptr %br_state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %br_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.i.not = icmp eq i32 %14, 1
  br i1 %cmp.i.not, label %xfs_bmap_is_written_extent.exit.if.then_crit_edge, label %if.end

xfs_bmap_is_written_extent.exit.if.then_crit_edge: ; preds = %xfs_bmap_is_written_extent.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %xfs_bmap_is_written_extent.exit.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %xfs_is_cow_inode.exit.if.then_crit_edge, %lor.rhs.i.if.then_crit_edge
  %15 = ptrtoint ptr %shared to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %shared, align 1
  br label %cleanup

if.end:                                           ; preds = %xfs_bmap_is_written_extent.exit
  tail call fastcc void @trace_xfs_reflink_trim_around_shared(ptr noundef %ip, ptr noundef %irec)
  %16 = ptrtoint ptr %br_startblock.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %br_startblock.i.i, align 8
  %18 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ip, align 8
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %19, i32 0, i32 24
  %20 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sb_agblklog, align 4
  %conv = zext i8 %21 to i32
  %sh_prom = zext i8 %21 to i64
  %shr = lshr i64 %17, %sh_prom
  %conv2 = trunc i64 %shr to i32
  %notmask.i = shl nsw i32 -1, %conv
  %sub.i = xor i32 %notmask.i, -1
  %22 = trunc i64 %17 to i32
  %conv10 = and i32 %sub.i, %22
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %irec, i32 0, i32 2
  %23 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %br_blockcount, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agbp.i) #8
  %25 = ptrtoint ptr %agbp.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 -1 to ptr), ptr %agbp.i, align 4, !annotation !108
  %call.i = call i32 @xfs_alloc_read_agf(ptr noundef %19, ptr noundef null, i32 noundef %conv2, i32 noundef 0, ptr noundef nonnull %agbp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %xfs_reflink_find_shared.exit, label %xfs_reflink_find_shared.exit.thread

xfs_reflink_find_shared.exit.thread:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agbp.i) #8
  br label %cleanup

xfs_reflink_find_shared.exit:                     ; preds = %if.end
  %conv11 = trunc i64 %24 to i32
  %26 = ptrtoint ptr %agbp.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %agbp.i, align 4
  %b_pag.i = getelementptr inbounds %struct.xfs_buf, ptr %27, i32 0, i32 13
  %28 = ptrtoint ptr %b_pag.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %b_pag.i, align 8
  %call1.i = call ptr @xfs_refcountbt_init_cursor(ptr noundef %19, ptr noundef null, ptr noundef %27, ptr noundef %29) #8
  %call3.i = call i32 @xfs_refcount_find_shared(ptr noundef %call1.i, i32 noundef %conv10, i32 noundef %conv11, ptr noundef nonnull %fbno, ptr noundef nonnull %flen, i1 noundef zeroext true) #8
  call void @xfs_btree_del_cursor(ptr noundef %call1.i, i32 noundef %call3.i) #8
  %30 = ptrtoint ptr %agbp.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %agbp.i, align 4
  call void @xfs_trans_brelse(ptr noundef null, ptr noundef %31) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agbp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %if.end15, label %xfs_reflink_find_shared.exit.cleanup_crit_edge

xfs_reflink_find_shared.exit.cleanup_crit_edge:   ; preds = %xfs_reflink_find_shared.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %xfs_reflink_find_shared.exit
  %32 = ptrtoint ptr %shared to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %shared, align 1
  %33 = ptrtoint ptr %fbno to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fbno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp = icmp eq i32 %34, -1
  br i1 %cmp, label %if.end15.cleanup_crit_edge, label %if.else

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %conv10)
  %cmp18 = icmp eq i32 %34, %conv10
  br i1 %cmp18, label %if.then20, label %if.else23

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %flen to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flen, align 4
  %conv21 = zext i32 %36 to i64
  %37 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv21, ptr %br_blockcount, align 8
  %38 = ptrtoint ptr %shared to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %shared, align 1
  br label %cleanup

if.else23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i32 %34, %conv10
  %conv24 = zext i32 %sub to i64
  %39 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv24, ptr %br_blockcount, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else23, %if.then20, %if.end15.cleanup_crit_edge, %xfs_reflink_find_shared.exit.cleanup_crit_edge, %xfs_reflink_find_shared.exit.thread, %if.then
  %retval.0 = phi i32 [ 0, %if.then20 ], [ 0, %if.else23 ], [ 0, %if.then ], [ %call3.i, %xfs_reflink_find_shared.exit.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ], [ %call.i, %xfs_reflink_find_shared.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flen) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fbno) #8
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_reflink_trim_around_shared(ptr noundef %ip, ptr noundef %irec) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_trim_around_shared, i32 0, i32 1), ptr blockaddress(@trace_xfs_reflink_trim_around_shared, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !110

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !112
  %call42 = tail call i32 @__traceiter_xfs_reflink_trim_around_shared(ptr noundef null, ptr noundef %ip, ptr noundef %irec) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !113
  %13 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !111

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_trim_around_shared, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_trim_around_shared, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_reflink_trim_around_shared.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_reflink_trim_around_shared.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 3414, ptr noundef nonnull @.str.10) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !115
  %31 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
define dso_local i32 @xfs_bmap_trim_cow(ptr noundef %ip, ptr noundef %imap, ptr nocapture noundef writeonly %shared) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  %m_always_cow.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 67
  %2 = ptrtoint ptr %m_always_cow.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %m_always_cow.i, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %xfs_is_always_cow_inode.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

xfs_is_always_cow_inode.exit:                     ; preds = %entry
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %4 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %5, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.i.not, label %xfs_is_always_cow_inode.exit.if.end_crit_edge, label %land.lhs.true

xfs_is_always_cow_inode.exit.if.end_crit_edge:    ; preds = %xfs_is_always_cow_inode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %xfs_is_always_cow_inode.exit
  %br_startblock = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 1
  %6 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %br_startblock, align 8
  %and.i = and i64 %7, 4503599627239424
  call void @__sanitizer_cov_trace_const_cmp8(i64 4503599627239424, i64 %and.i)
  %cmp.i.not = icmp eq i64 %and.i, 4503599627239424
  br i1 %cmp.i.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %shared to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %shared, align 1
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %xfs_is_always_cow_inode.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %call2 = tail call i32 @xfs_reflink_trim_around_shared(ptr noundef %ip, ptr noundef %imap, ptr noundef %shared)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_reflink_convert_cow(ptr noundef %ip, i64 noundef %offset, i64 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sb_blocklog, align 8
  %m_blockmask = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 31
  %4 = ptrtoint ptr %m_blockmask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %m_blockmask, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %count)
  %cmp.not = icmp eq i64 %count, 0
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !116

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 292) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %add = add i64 %count, %offset
  %conv1 = zext i32 %5 to i64
  %add2 = add i64 %add, %conv1
  %sh_prom = zext i8 %3 to i64
  %shr7 = lshr i64 %add2, %sh_prom
  %shr = lshr i64 %offset, %sh_prom
  %sub = sub i64 %shr7, %shr
  tail call void @xfs_ilock(ptr noundef %ip, i32 noundef 4) #8
  %call = tail call fastcc i32 @xfs_reflink_convert_cow_locked(ptr noundef %ip, i64 noundef %shr, i64 noundef %sub)
  tail call void @xfs_iunlock(ptr noundef %ip, i32 noundef 4) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ilock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_reflink_convert_cow_locked(ptr noundef %ip, i64 noundef %offset_fsb, i64 noundef %count_fsb) unnamed_addr #0 align 64 {
entry:
  %icur = alloca %struct.xfs_iext_cursor, align 4
  %got = alloca %struct.xfs_bmbt_irec, align 8
  %dummy_cur = alloca ptr, align 4
  %dummy_logflags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %icur) #8
  %0 = ptrtoint ptr %icur to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %icur, align 4, !annotation !108
  %1 = getelementptr inbounds %struct.xfs_iext_cursor, ptr %icur, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !108
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %got) #8
  %3 = call ptr @memset(ptr %got, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy_cur) #8
  %4 = ptrtoint ptr %dummy_cur to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %dummy_cur, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy_logflags) #8
  %5 = ptrtoint ptr %dummy_logflags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %dummy_logflags, align 4, !annotation !108
  %i_cowfp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 7
  %6 = ptrtoint ptr %i_cowfp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_cowfp, align 4
  %call = call zeroext i1 @xfs_iext_lookup_extent(ptr noundef %ip, ptr noundef %7, i64 noundef %offset_fsb, ptr noundef nonnull %icur, ptr noundef nonnull %got) #8
  br i1 %call, label %do.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %add = add i64 %count_fsb, %offset_fsb
  %br_state = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %got, i32 0, i32 3
  %br_startblock = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %got, i32 0, i32 1
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %got, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %do.cond56.do.body_crit_edge, %do.body.preheader
  %8 = ptrtoint ptr %got to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %got, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %add)
  %cmp.not = icmp ult i64 %9, %add
  br i1 %cmp.not, label %if.end2, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %do.body
  %10 = ptrtoint ptr %br_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %br_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp3 = icmp eq i32 %11, 0
  br i1 %cmp3, label %if.end2.do.cond56_crit_edge, label %if.end5

if.end2.do.cond56_crit_edge:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond56

if.end5:                                          ; preds = %if.end2
  %12 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %br_startblock, align 8
  %and.i = and i64 %13, 4503599627239424
  call void @__sanitizer_cov_trace_const_cmp8(i64 4503599627239424, i64 %and.i)
  %cmp.i.not = icmp eq i64 %and.i, 4503599627239424
  br i1 %cmp.i.not, label %land.rhs, label %if.end47

land.rhs:                                         ; preds = %if.end5
  %.b74 = load i1, ptr @xfs_reflink_convert_cow_locked.__already_done, align 1
  br i1 %.b74, label %land.rhs.cleanup_crit_edge, label %if.then14, !prof !111

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then14:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @xfs_reflink_convert_cow_locked.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 261, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end47:                                         ; preds = %if.end5
  call void @xfs_trim_extent(ptr noundef nonnull %got, i64 noundef %offset_fsb, i64 noundef %count_fsb) #8
  %14 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %br_blockcount, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool48.not = icmp eq i64 %15, 0
  br i1 %tobool48.not, label %if.end47.do.cond56_crit_edge, label %if.end50

if.end47.do.cond56_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond56

if.end50:                                         ; preds = %if.end47
  %16 = ptrtoint ptr %br_state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %br_state, align 8
  %call52 = call i32 @xfs_bmap_add_extent_unwritten_real(ptr noundef null, ptr noundef %ip, i32 noundef 2, ptr noundef nonnull %icur, ptr noundef nonnull %dummy_cur, ptr noundef nonnull %got, ptr noundef nonnull %dummy_logflags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end50.do.cond56_crit_edge, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end50.do.cond56_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond56

do.cond56:                                        ; preds = %if.end50.do.cond56_crit_edge, %if.end47.do.cond56_crit_edge, %if.end2.do.cond56_crit_edge
  %17 = ptrtoint ptr %i_cowfp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_cowfp, align 4
  call void @xfs_iext_next(ptr noundef %18, ptr noundef nonnull %icur) #8
  %call.i = call zeroext i1 @xfs_iext_get_extent(ptr noundef %18, ptr noundef nonnull %icur, ptr noundef nonnull %got) #8
  br i1 %call.i, label %do.cond56.do.body_crit_edge, label %do.cond56.cleanup_crit_edge

do.cond56.cleanup_crit_edge:                      ; preds = %do.cond56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond56.do.body_crit_edge:                      ; preds = %do.cond56
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

cleanup:                                          ; preds = %do.cond56.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.then14, %land.rhs.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -5, %if.then14 ], [ -5, %land.rhs.cleanup_crit_edge ], [ 0, %do.cond56.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ], [ %call52, %if.end50.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy_logflags) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy_cur) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %got) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %icur) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iunlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_reflink_allocate_cow(ptr noundef %ip, ptr noundef %imap, ptr noundef %cmap, ptr nocapture noundef %shared, ptr nocapture noundef %lockmode, i1 noundef zeroext %convert_now) local_unnamed_addr #0 align 64 {
entry:
  %tp = alloca ptr, align 4
  %nimaps = alloca i32, align 4
  %found = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  %2 = ptrtoint ptr %imap to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %imap, align 8
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 2
  %4 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %br_blockcount, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #8
  %6 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !108
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nimaps) #8
  %7 = ptrtoint ptr %nimaps to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %nimaps, align 4, !annotation !108
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %found) #8
  %8 = ptrtoint ptr %found to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %found, align 1, !annotation !108
  %call = tail call zeroext i1 @xfs_isilocked(ptr noundef %ip, i32 noundef 4) #8
  br i1 %call, label %entry.cond.end_crit_edge, label %cond.false, !prof !111

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 362) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %i_cowfp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 7
  %9 = ptrtoint ptr %i_cowfp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_cowfp, align 4
  %tobool2.not = icmp eq ptr %10, null
  br i1 %tobool2.not, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %cond.end
  %i_diflags2.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 25
  %11 = ptrtoint ptr %i_diflags2.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %i_diflags2.i, align 8
  %and.i = and i64 %12, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.then.cond.end14_crit_edge, label %cond.false13, !prof !111

if.then.cond.end14_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end14

cond.false13:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 364) #8
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false13, %if.then.cond.end14_crit_edge
  tail call void @xfs_ifork_init_cow(ptr noundef %ip) #8
  br label %if.end

if.end:                                           ; preds = %cond.end14, %cond.end.if.end_crit_edge
  %call15 = call fastcc i32 @xfs_find_trim_cow_extent(ptr noundef %ip, ptr noundef %imap, ptr noundef %cmap, ptr noundef %shared, ptr noundef nonnull %found)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %13 = ptrtoint ptr %shared to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %shared, align 1, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool17.not = icmp eq i8 %14, 0
  br i1 %tobool17.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end19

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false
  %15 = ptrtoint ptr %found to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %found, align 1, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool20.not = icmp eq i8 %16, 0
  br i1 %tobool20.not, label %if.end22, label %if.end19.convert_crit_edge

if.end19.convert_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %convert

if.end22:                                         ; preds = %if.end19
  %17 = ptrtoint ptr %imap to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %imap, align 8
  %19 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %br_blockcount, align 8
  %call25 = tail call i32 @xfs_get_cowextsz_hint(ptr noundef %ip) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool.not.i = icmp eq i32 %call25, 0
  %extract.t110 = trunc i64 %20 to i32
  br i1 %tobool.not.i, label %if.end22.xfs_aligned_fsb_count.exit_crit_edge, label %if.else162.i.i

if.end22.xfs_aligned_fsb_count.exit_crit_edge:    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_aligned_fsb_count.exit

if.else162.i.i:                                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %18)
  %cmp164.i.i = icmp ult i64 %18, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !111

if.then168.i.i:                                   ; preds = %if.else162.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i = trunc i64 %18 to i32
  %rem170.i.i = urem i32 %conv169.i.i, %call25
  br label %if.else162.i125.i

if.else174.i.i:                                   ; preds = %if.else162.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call25, i64 %18) #11, !srcloc !117
  %asmresult.i3.i.i = extractvalue { i64, i64 } %21, 0
  %shr.i.i.i = lshr i64 %asmresult.i3.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %if.else162.i125.i

if.else162.i125.i:                                ; preds = %if.else174.i.i, %if.then168.i.i
  %__rem.0.i.i = phi i32 [ %rem170.i.i, %if.then168.i.i ], [ %conv.i.i.i, %if.else174.i.i ]
  %conv.i = zext i32 %__rem.0.i.i to i64
  %count_fsb.addr.0.i = add i64 %20, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %count_fsb.addr.0.i)
  %cmp164.i124.i = icmp ult i64 %count_fsb.addr.0.i, 4294967296
  br i1 %cmp164.i124.i, label %if.then168.i128.i, label %if.else174.i132.i, !prof !111

if.then168.i128.i:                                ; preds = %if.else162.i125.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i126.i = trunc i64 %count_fsb.addr.0.i to i32
  %rem170.i127.i = urem i32 %conv169.i126.i, %call25
  br label %div_u64_rem.exit134.i

if.else174.i132.i:                                ; preds = %if.else162.i125.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call25, i64 %count_fsb.addr.0.i) #11, !srcloc !117
  %asmresult.i3.i129.i = extractvalue { i64, i64 } %22, 0
  %shr.i.i130.i = lshr i64 %asmresult.i3.i129.i, 32
  %conv.i.i131.i = trunc i64 %shr.i.i130.i to i32
  %extract.t114 = trunc i64 %count_fsb.addr.0.i to i32
  br label %div_u64_rem.exit134.i

div_u64_rem.exit134.i:                            ; preds = %if.else174.i132.i, %if.then168.i128.i
  %count_fsb.addr.0141.i.off0 = phi i32 [ %conv169.i126.i, %if.then168.i128.i ], [ %extract.t114, %if.else174.i132.i ]
  %__rem.0.i133.i = phi i32 [ %rem170.i127.i, %if.then168.i128.i ], [ %conv.i.i131.i, %if.else174.i132.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0.i133.i)
  %tobool4.not.i = icmp eq i32 %__rem.0.i133.i, 0
  %sub.i = sub i32 %call25, %__rem.0.i133.i
  %narrow.i = select i1 %tobool4.not.i, i32 0, i32 %sub.i
  %extract.t = add i32 %narrow.i, %count_fsb.addr.0141.i.off0
  br label %xfs_aligned_fsb_count.exit

xfs_aligned_fsb_count.exit:                       ; preds = %div_u64_rem.exit134.i, %if.end22.xfs_aligned_fsb_count.exit_crit_edge
  %count_fsb.addr.2.i.off0 = phi i32 [ %extract.t, %div_u64_rem.exit134.i ], [ %extract.t110, %if.end22.xfs_aligned_fsb_count.exit_crit_edge ]
  %m_bm_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 43
  %23 = ptrtoint ptr %m_bm_maxlevels to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %m_bm_maxlevels, align 8
  %sub = add i32 %count_fsb.addr.2.i.off0, -1
  %conv27 = add i32 %sub, %24
  %25 = ptrtoint ptr %lockmode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lockmode, align 4
  tail call void @xfs_iunlock(ptr noundef %ip, i32 noundef %26) #8
  %27 = ptrtoint ptr %lockmode to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %lockmode, align 4
  %m_resv = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 65
  %call28 = call i32 @xfs_trans_alloc_inode(ptr noundef %ip, ptr noundef %m_resv, i32 noundef %conv27, i32 noundef 0, i1 noundef zeroext false, ptr noundef nonnull %tp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %xfs_aligned_fsb_count.exit.cleanup_crit_edge

xfs_aligned_fsb_count.exit.cleanup_crit_edge:     ; preds = %xfs_aligned_fsb_count.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31:                                         ; preds = %xfs_aligned_fsb_count.exit
  %28 = ptrtoint ptr %lockmode to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 4, ptr %lockmode, align 4
  %call32 = call fastcc i32 @xfs_find_trim_cow_extent(ptr noundef %ip, ptr noundef %imap, ptr noundef %cmap, ptr noundef %shared, ptr noundef nonnull %found)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %lor.lhs.false34, label %if.end31.out_trans_cancel_crit_edge

if.end31.out_trans_cancel_crit_edge:              ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_trans_cancel

lor.lhs.false34:                                  ; preds = %if.end31
  %29 = ptrtoint ptr %shared to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %shared, align 1, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool35.not = icmp eq i8 %30, 0
  br i1 %tobool35.not, label %lor.lhs.false34.out_trans_cancel_crit_edge, label %if.end37

lor.lhs.false34.out_trans_cancel_crit_edge:       ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_trans_cancel

if.end37:                                         ; preds = %lor.lhs.false34
  %31 = ptrtoint ptr %found to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %found, align 1, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool38.not = icmp eq i8 %32, 0
  br i1 %tobool38.not, label %if.end40, label %if.then39

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tp, align 4
  call void @xfs_trans_cancel(ptr noundef %34) #8
  br label %convert

if.end40:                                         ; preds = %if.end37
  %35 = ptrtoint ptr %nimaps to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %nimaps, align 4
  %36 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tp, align 4
  %38 = ptrtoint ptr %imap to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %imap, align 8
  %40 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %br_blockcount, align 8
  %call43 = call i32 @xfs_bmapi_write(ptr noundef %37, ptr noundef %ip, i64 noundef %39, i64 noundef %41, i32 noundef 520, i32 noundef 0, ptr noundef %cmap, ptr noundef nonnull %nimaps) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end40.out_trans_cancel_crit_edge

if.end40.out_trans_cancel_crit_edge:              ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_trans_cancel

if.end46:                                         ; preds = %if.end40
  call void @xfs_inode_set_cowblocks_tag(ptr noundef %ip) #8
  %42 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tp, align 4
  %call47 = call i32 @xfs_trans_commit(ptr noundef %43) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end50:                                         ; preds = %if.end46
  %44 = ptrtoint ptr %nimaps to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nimaps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp = icmp eq i32 %45, 0
  br i1 %cmp, label %if.end50.cleanup_crit_edge, label %if.end50.convert_crit_edge

if.end50.convert_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %convert

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

convert:                                          ; preds = %if.end50.convert_crit_edge, %if.then39, %if.end19.convert_crit_edge
  call void @xfs_trim_extent(ptr noundef %cmap, i64 noundef %3, i64 noundef %5) #8
  br i1 %convert_now, label %lor.lhs.false55, label %convert.cleanup_crit_edge

convert.cleanup_crit_edge:                        ; preds = %convert
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false55:                                  ; preds = %convert
  %br_state = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %cmap, i32 0, i32 3
  %46 = ptrtoint ptr %br_state to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %br_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp56 = icmp eq i32 %47, 0
  br i1 %cmp56, label %lor.lhs.false55.cleanup_crit_edge, label %if.end59

lor.lhs.false55.cleanup_crit_edge:                ; preds = %lor.lhs.false55
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end59:                                         ; preds = %lor.lhs.false55
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xfs_reflink_convert_cow(ptr noundef %ip, ptr noundef %cmap)
  %call60 = call fastcc i32 @xfs_reflink_convert_cow_locked(ptr noundef %ip, i64 noundef %3, i64 noundef %5)
  br label %cleanup

out_trans_cancel:                                 ; preds = %if.end40.out_trans_cancel_crit_edge, %lor.lhs.false34.out_trans_cancel_crit_edge, %if.end31.out_trans_cancel_crit_edge
  %error.0 = phi i32 [ %call32, %if.end31.out_trans_cancel_crit_edge ], [ %call43, %if.end40.out_trans_cancel_crit_edge ], [ 0, %lor.lhs.false34.out_trans_cancel_crit_edge ]
  %48 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tp, align 4
  call void @xfs_trans_cancel(ptr noundef %49) #8
  br label %cleanup

cleanup:                                          ; preds = %out_trans_cancel, %if.end59, %lor.lhs.false55.cleanup_crit_edge, %convert.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %xfs_aligned_fsb_count.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call60, %if.end59 ], [ %error.0, %out_trans_cancel ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %call15, %if.end.cleanup_crit_edge ], [ %call28, %xfs_aligned_fsb_count.exit.cleanup_crit_edge ], [ %call47, %if.end46.cleanup_crit_edge ], [ -28, %if.end50.cleanup_crit_edge ], [ 0, %lor.lhs.false55.cleanup_crit_edge ], [ 0, %convert.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %found) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nimaps) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_isilocked(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ifork_init_cow(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_find_trim_cow_extent(ptr noundef %ip, ptr noundef %imap, ptr noundef %cmap, ptr nocapture noundef writeonly %shared, ptr nocapture noundef writeonly %found) unnamed_addr #0 align 64 {
entry:
  %icur = alloca %struct.xfs_iext_cursor, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %imap to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %imap, align 8
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 2
  %2 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %br_blockcount, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %icur) #8
  %4 = ptrtoint ptr %icur to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %icur, align 4, !annotation !108
  %5 = getelementptr inbounds %struct.xfs_iext_cursor, ptr %icur, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !108
  %7 = ptrtoint ptr %found to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %found, align 1
  %i_cowfp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 7
  %8 = ptrtoint ptr %i_cowfp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_cowfp, align 4
  %call = call zeroext i1 @xfs_iext_lookup_extent(ptr noundef %ip, ptr noundef %9, i64 noundef %1, ptr noundef nonnull %icur, ptr noundef %cmap) #8
  br i1 %call, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add = add i64 %3, %1
  %10 = ptrtoint ptr %cmap to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %add, ptr %cmap, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %cmap to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %cmap, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %1)
  %cmp = icmp ugt i64 %12, %1
  br i1 %cmp, label %if.then3, label %if.end8

if.then3:                                         ; preds = %if.end
  %13 = ptrtoint ptr %imap to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %imap, align 8
  %sub = sub i64 %12, %14
  call void @xfs_trim_extent(ptr noundef %imap, i64 noundef %14, i64 noundef %sub) #8
  %15 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ip, align 8
  %m_always_cow.i.i = getelementptr inbounds %struct.xfs_mount, ptr %16, i32 0, i32 67
  %17 = ptrtoint ptr %m_always_cow.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %m_always_cow.i.i, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i.i, label %if.then3.if.end.i_crit_edge, label %xfs_is_always_cow_inode.exit.i

if.then3.if.end.i_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

xfs_is_always_cow_inode.exit.i:                   ; preds = %if.then3
  %m_features.i.i.i = getelementptr inbounds %struct.xfs_mount, ptr %16, i32 0, i32 61
  %19 = ptrtoint ptr %m_features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %m_features.i.i.i, align 8
  %and.i.i.i = and i64 %20, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.i.not.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %xfs_is_always_cow_inode.exit.i.if.end.i_crit_edge, label %land.lhs.true.i

xfs_is_always_cow_inode.exit.i.if.end.i_crit_edge: ; preds = %xfs_is_always_cow_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %xfs_is_always_cow_inode.exit.i
  %br_startblock.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 1
  %21 = ptrtoint ptr %br_startblock.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %br_startblock.i, align 8
  %and.i.i = and i64 %22, 4503599627239424
  call void @__sanitizer_cov_trace_const_cmp8(i64 4503599627239424, i64 %and.i.i)
  %cmp.i.not.i = icmp eq i64 %and.i.i, 4503599627239424
  br i1 %cmp.i.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %shared to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %shared, align 1
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %xfs_is_always_cow_inode.exit.i.if.end.i_crit_edge, %if.then3.if.end.i_crit_edge
  %call2.i = call i32 @xfs_reflink_trim_around_shared(ptr noundef %ip, ptr noundef %imap, ptr noundef %shared) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %24 = ptrtoint ptr %shared to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %shared, align 1
  %br_startblock = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %cmap, i32 0, i32 1
  %25 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %br_startblock, align 8
  %and.i = and i64 %26, 4503599627239424
  call void @__sanitizer_cov_trace_const_cmp8(i64 4503599627239424, i64 %and.i)
  %cmp.i.not = icmp eq i64 %and.i, 4503599627239424
  br i1 %cmp.i.not, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %cmap to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %cmap, align 8
  %br_blockcount12 = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %cmap, i32 0, i32 2
  %29 = ptrtoint ptr %br_blockcount12 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %br_blockcount12, align 8
  call void @xfs_trim_extent(ptr noundef %imap, i64 noundef %28, i64 noundef %30) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  call void @xfs_trim_extent(ptr noundef %cmap, i64 noundef %1, i64 noundef %3) #8
  %31 = ptrtoint ptr %found to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %found, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then10, %if.end.i, %if.then.i
  %retval.0 = phi i32 [ 0, %if.then10 ], [ 0, %if.end13 ], [ %call2.i, %if.end.i ], [ 0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %icur) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_get_cowextsz_hint(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_alloc_inode(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmapi_write(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_inode_set_cowblocks_tag(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trim_extent(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_reflink_convert_cow(ptr noundef %ip, ptr noundef %irec) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_convert_cow, i32 0, i32 1), ptr blockaddress(@trace_xfs_reflink_convert_cow, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !110

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !118
  %call42 = tail call i32 @__traceiter_xfs_reflink_convert_cow(ptr noundef null, ptr noundef %ip, ptr noundef %irec) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !119
  %13 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !111

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_convert_cow, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_convert_cow, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_reflink_convert_cow.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_reflink_convert_cow.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 3417, ptr noundef nonnull @.str.10) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !115
  %31 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
define dso_local i32 @xfs_reflink_cancel_cow_blocks(ptr noundef %ip, ptr noundef %tpp, i64 noundef %offset_fsb, i64 noundef %end_fsb, i1 noundef zeroext %cancel_real) local_unnamed_addr #0 align 64 {
entry:
  %end_fsb.addr = alloca i64, align 8
  %got = alloca %struct.xfs_bmbt_irec, align 8
  %del = alloca %struct.xfs_bmbt_irec, align 8
  %icur = alloca %struct.xfs_iext_cursor, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %end_fsb.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %end_fsb, ptr %end_fsb.addr, align 8
  %i_cowfp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 7
  %1 = ptrtoint ptr %i_cowfp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_cowfp, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %got) #8
  %3 = call ptr @memset(ptr %got, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %del) #8
  %4 = call ptr @memset(ptr %del, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %icur) #8
  %5 = ptrtoint ptr %icur to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %icur, align 4, !annotation !108
  %6 = getelementptr inbounds %struct.xfs_iext_cursor, ptr %icur, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !108
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %xfs_inode_has_cow_data.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

xfs_inode_has_cow_data.exit:                      ; preds = %entry
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool2.i.not = icmp eq i64 %9, 0
  br i1 %tobool2.i.not, label %xfs_inode_has_cow_data.exit.cleanup_crit_edge, label %if.end

xfs_inode_has_cow_data.exit.cleanup_crit_edge:    ; preds = %xfs_inode_has_cow_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %xfs_inode_has_cow_data.exit
  %call1 = call zeroext i1 @xfs_iext_lookup_extent_before(ptr noundef %ip, ptr noundef nonnull %2, ptr noundef nonnull %end_fsb.addr, ptr noundef nonnull %icur, ptr noundef nonnull %got) #8
  br i1 %call1, label %while.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %got, i32 0, i32 2
  %br_blockcount4 = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %del, i32 0, i32 2
  %br_startblock = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %del, i32 0, i32 1
  %br_state = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %del, i32 0, i32 3
  br label %while.cond

while.cond:                                       ; preds = %next_extent.while.cond_crit_edge, %while.cond.preheader
  %10 = ptrtoint ptr %got to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %got, align 8
  %12 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %br_blockcount, align 8
  %add = add i64 %13, %11
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %offset_fsb)
  %cmp = icmp ugt i64 %add, %offset_fsb
  br i1 %cmp, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.cond
  %14 = call ptr @memcpy(ptr %del, ptr %got, i32 32)
  %15 = ptrtoint ptr %end_fsb.addr to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %end_fsb.addr, align 8
  %sub = sub i64 %16, %offset_fsb
  call void @xfs_trim_extent(ptr noundef nonnull %del, i64 noundef %offset_fsb, i64 noundef %sub) #8
  %17 = ptrtoint ptr %br_blockcount4 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %br_blockcount4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %tobool.not = icmp eq i64 %18, 0
  br i1 %tobool.not, label %while.body.next_extent.sink.split_crit_edge, label %if.end6

while.body.next_extent.sink.split_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %next_extent.sink.split

if.end6:                                          ; preds = %while.body
  call fastcc void @trace_xfs_reflink_cancel_cow(ptr noundef %ip, ptr noundef nonnull %del)
  %19 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %br_startblock, align 8
  %and.i = and i64 %20, 4503599627239424
  call void @__sanitizer_cov_trace_const_cmp8(i64 4503599627239424, i64 %and.i)
  %cmp.i.not = icmp eq i64 %and.i, 4503599627239424
  br i1 %cmp.i.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end6
  %call10 = call i32 @xfs_bmap_del_extent_delay(ptr noundef %ip, i32 noundef 2, ptr noundef nonnull %icur, ptr noundef nonnull %got, ptr noundef nonnull %del) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then9.next_extent_crit_edge, label %if.then9.while.end_crit_edge

if.then9.while.end_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.then9.next_extent_crit_edge:                   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %next_extent

if.else:                                          ; preds = %if.end6
  %21 = ptrtoint ptr %br_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %br_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp14 = icmp eq i32 %22, 1
  %brmerge = or i1 %cmp14, %cancel_real
  br i1 %brmerge, label %if.then16, label %if.else.next_extent.sink.split_crit_edge

if.else.next_extent.sink.split_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %next_extent.sink.split

if.then16:                                        ; preds = %if.else
  %23 = ptrtoint ptr %tpp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tpp, align 4
  %t_firstblock = getelementptr inbounds %struct.xfs_trans, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %t_firstblock to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %t_firstblock, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %26)
  %cmp17 = icmp eq i64 %26, -1
  br i1 %cmp17, label %if.then16.cond.end_crit_edge, label %cond.false, !prof !111

if.then16.cond.end_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 481) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then16.cond.end_crit_edge
  %27 = ptrtoint ptr %tpp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tpp, align 4
  %29 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %br_startblock, align 8
  %31 = ptrtoint ptr %br_blockcount4 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %br_blockcount4, align 8
  %conv = trunc i64 %32 to i32
  call void @xfs_refcount_free_cow_extent(ptr noundef %28, i64 noundef %30, i32 noundef %conv) #8
  %33 = ptrtoint ptr %tpp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tpp, align 4
  %35 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %br_startblock, align 8
  %37 = ptrtoint ptr %br_blockcount4 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %br_blockcount4, align 8
  call void @__xfs_free_extent_later(ptr noundef %34, i64 noundef %36, i64 noundef %38, ptr noundef null, i1 noundef zeroext false) #8
  %call24 = call i32 @xfs_defer_finish(ptr noundef %tpp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %cond.end.while.end_crit_edge

cond.end.while.end_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end27:                                         ; preds = %cond.end
  call void @xfs_bmap_del_extent_cow(ptr noundef %ip, ptr noundef nonnull %icur, ptr noundef nonnull %got, ptr noundef nonnull %del) #8
  %39 = ptrtoint ptr %br_blockcount4 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %br_blockcount4, align 8
  %sub.i = sub i64 0, %40
  %call.i.i = call i32 @xfs_trans_reserve_quota_nblks(ptr noundef null, ptr noundef %ip, i64 noundef %sub.i, i64 noundef 0, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool30.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool30.not, label %if.end27.next_extent_crit_edge, label %if.end27.while.end_crit_edge

if.end27.while.end_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end27.next_extent_crit_edge:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %next_extent

next_extent.sink.split:                           ; preds = %if.else.next_extent.sink.split_crit_edge, %while.body.next_extent.sink.split_crit_edge
  call void @xfs_iext_prev(ptr noundef nonnull %2, ptr noundef nonnull %icur) #8
  br label %next_extent

next_extent:                                      ; preds = %next_extent.sink.split, %if.end27.next_extent_crit_edge, %if.then9.next_extent_crit_edge
  %call36 = call zeroext i1 @xfs_iext_get_extent(ptr noundef nonnull %2, ptr noundef nonnull %icur, ptr noundef nonnull %got) #8
  br i1 %call36, label %next_extent.while.cond_crit_edge, label %next_extent.while.end_crit_edge

next_extent.while.end_crit_edge:                  ; preds = %next_extent
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

next_extent.while.cond_crit_edge:                 ; preds = %next_extent
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.end:                                        ; preds = %next_extent.while.end_crit_edge, %if.end27.while.end_crit_edge, %cond.end.while.end_crit_edge, %if.then9.while.end_crit_edge, %while.cond.while.end_crit_edge
  %error.2 = phi i32 [ %call10, %if.then9.while.end_crit_edge ], [ 0, %next_extent.while.end_crit_edge ], [ %call24, %cond.end.while.end_crit_edge ], [ %call.i.i, %if.end27.while.end_crit_edge ], [ 0, %while.cond.while.end_crit_edge ]
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %42)
  %tobool39.not = icmp eq i64 %42, 0
  br i1 %tobool39.not, label %if.then40, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then40:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @xfs_inode_clear_cowblocks_tag(ptr noundef %ip) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %while.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %xfs_inode_has_cow_data.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %xfs_inode_has_cow_data.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %error.2, %if.then40 ], [ %error.2, %while.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %icur) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %del) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %got) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_iext_lookup_extent_before(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iext_prev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_reflink_cancel_cow(ptr noundef %ip, ptr noundef %irec) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_cancel_cow, i32 0, i32 1), ptr blockaddress(@trace_xfs_reflink_cancel_cow, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !110

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !120
  %call42 = tail call i32 @__traceiter_xfs_reflink_cancel_cow(ptr noundef null, ptr noundef %ip, ptr noundef %irec) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !121
  %13 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !111

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_cancel_cow, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_cancel_cow, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_reflink_cancel_cow.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_reflink_cancel_cow.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 3427, ptr noundef nonnull @.str.10) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !115
  %31 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
declare dso_local i32 @xfs_bmap_del_extent_delay(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_refcount_free_cow_extent(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_defer_finish(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_bmap_del_extent_cow(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_iext_get_extent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_inode_clear_cowblocks_tag(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_reflink_cancel_cow_range(ptr noundef %ip, i64 noundef %offset, i64 noundef %count, i1 noundef zeroext %cancel_real) local_unnamed_addr #0 align 64 {
entry:
  %tp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #8
  %0 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !108
  %conv = trunc i64 %count to i32
  tail call fastcc void @trace_xfs_reflink_cancel_cow_range(ptr noundef %ip, i64 noundef %offset, i32 noundef %conv)
  %i_cowfp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 7
  %1 = ptrtoint ptr %i_cowfp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_cowfp, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !116

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 537) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %3 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ip, align 8
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %4, i32 0, i32 20
  %5 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %6 to i64
  %shr = lshr i64 %offset, %sh_prom
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %count)
  %cmp = icmp eq i64 %count, -1
  br i1 %cmp, label %cond.end.if.end_crit_edge, label %if.else

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %add = add i64 %count, %offset
  %m_blockmask = getelementptr inbounds %struct.xfs_mount, ptr %4, i32 0, i32 31
  %7 = ptrtoint ptr %m_blockmask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %m_blockmask, align 8
  %conv6 = zext i32 %8 to i64
  %add7 = add i64 %add, %conv6
  %shr13 = lshr i64 %add7, %sh_prom
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end.if.end_crit_edge
  %end_fsb.0 = phi i64 [ %shr13, %if.else ], [ -1, %cond.end.if.end_crit_edge ]
  %m_resv = getelementptr inbounds %struct.xfs_mount, ptr %4, i32 0, i32 65
  %call = call i32 @xfs_trans_alloc(ptr noundef %4, ptr noundef %m_resv, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %tp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool16.not = icmp eq i32 %call, 0
  br i1 %tobool16.not, label %if.end18, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end18:                                         ; preds = %if.end
  call void @xfs_ilock(ptr noundef %ip, i32 noundef 4) #8
  %9 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ijoin(ptr noundef %10, ptr noundef %ip, i32 noundef 0) #8
  %call20 = call i32 @xfs_reflink_cancel_cow_blocks(ptr noundef %ip, ptr noundef nonnull %tp, i64 noundef %shr, i64 noundef %end_fsb.0, i1 noundef zeroext %cancel_real)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  %11 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tp, align 4
  br i1 %tobool21.not, label %if.end23, label %out_cancel

if.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %call24 = call i32 @xfs_trans_commit(ptr noundef %12) #8
  call void @xfs_iunlock(ptr noundef %ip, i32 noundef 4) #8
  br label %cleanup

out_cancel:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  call void @xfs_trans_cancel(ptr noundef %12) #8
  call void @xfs_iunlock(ptr noundef %ip, i32 noundef 4) #8
  br label %out

out:                                              ; preds = %out_cancel, %if.end.out_crit_edge
  %error.0 = phi i32 [ %call, %if.end.out_crit_edge ], [ %call20, %out_cancel ]
  %13 = call ptr @llvm.returnaddress(i32 0)
  %14 = ptrtoint ptr %13 to i32
  call fastcc void @trace_xfs_reflink_cancel_cow_range_error(ptr noundef %ip, i32 noundef %error.0, i32 noundef %14)
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end23
  %retval.0 = phi i32 [ %error.0, %out ], [ %call24, %if.end23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #8
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_reflink_cancel_cow_range(ptr noundef %ip, i64 noundef %offset, i32 noundef %count) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_cancel_cow_range, i32 0, i32 1), ptr blockaddress(@trace_xfs_reflink_cancel_cow_range, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !110

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !122
  %call42 = tail call i32 @__traceiter_xfs_reflink_cancel_cow_range(ptr noundef null, ptr noundef %ip, i64 noundef %offset, i32 noundef %count) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !123
  %13 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !111

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_cancel_cow_range, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_cancel_cow_range, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_reflink_cancel_cow_range.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_reflink_cancel_cow_range.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 3419, ptr noundef nonnull @.str.10) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !115
  %31 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
declare dso_local i32 @xfs_trans_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_ijoin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_reflink_cancel_cow_range_error(ptr noundef %ip, i32 noundef %error, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_cancel_cow_range_error, i32 0, i32 1), ptr blockaddress(@trace_xfs_reflink_cancel_cow_range_error, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !110

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !124
  %call42 = tail call i32 @__traceiter_xfs_reflink_cancel_cow_range_error(ptr noundef null, ptr noundef %ip, i32 noundef %error, i32 noundef %caller_ip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !125
  %13 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !111

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_cancel_cow_range_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_cancel_cow_range_error, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_reflink_cancel_cow_range_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_reflink_cancel_cow_range_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 3423, ptr noundef nonnull @.str.10) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !115
  %31 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
define dso_local i32 @xfs_reflink_end_cow(ptr noundef %ip, i64 noundef %offset, i64 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  %end_fsb = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end_fsb) #8
  %conv = trunc i64 %count to i32
  tail call fastcc void @trace_xfs_reflink_end_cow(ptr noundef %ip, i64 noundef %offset, i32 noundef %conv)
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %3 to i64
  %shr = lshr i64 %offset, %sh_prom
  %add = add i64 %count, %offset
  %m_blockmask = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 31
  %4 = ptrtoint ptr %m_blockmask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %m_blockmask, align 8
  %conv3 = zext i32 %5 to i64
  %add4 = add i64 %add, %conv3
  %shr10 = lshr i64 %add4, %sh_prom
  %6 = ptrtoint ptr %end_fsb to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %shr10, ptr %end_fsb, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shr10, i64 %shr)
  %cmp25 = icmp ugt i64 %shr10, %shr
  br i1 %cmp25, label %entry.while.body_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call = call fastcc i32 @xfs_reflink_end_cow_extent(ptr noundef %ip, i64 noundef %shr, ptr noundef nonnull %end_fsb)
  %7 = ptrtoint ptr %end_fsb to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %end_fsb, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %shr)
  %cmp = icmp ugt i64 %8, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %or.cond = select i1 %cmp, i1 %tobool.not, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body
  br i1 %tobool.not, label %while.end.if.end_crit_edge, label %if.then

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = call ptr @llvm.returnaddress(i32 0)
  %10 = ptrtoint ptr %9 to i32
  call fastcc void @trace_xfs_reflink_end_cow_error(ptr noundef %ip, i32 noundef %call, i32 noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge, %entry.if.end_crit_edge
  %error.0.lcssa30 = phi i32 [ %call, %if.then ], [ 0, %while.end.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end_fsb) #8
  ret i32 %error.0.lcssa30
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_reflink_end_cow(ptr noundef %ip, i64 noundef %offset, i32 noundef %count) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_end_cow, i32 0, i32 1), ptr blockaddress(@trace_xfs_reflink_end_cow, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !110

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !126
  %call42 = tail call i32 @__traceiter_xfs_reflink_end_cow(ptr noundef null, ptr noundef %ip, i64 noundef %offset, i32 noundef %count) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !127
  %13 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !111

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_end_cow, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_end_cow, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_reflink_end_cow.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_reflink_end_cow.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 3420, ptr noundef nonnull @.str.10) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !115
  %31 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
define internal fastcc i32 @xfs_reflink_end_cow_extent(ptr noundef %ip, i64 noundef %offset_fsb, ptr noundef %end_fsb) unnamed_addr #5 align 64 {
entry:
  %got = alloca %struct.xfs_bmbt_irec, align 8
  %del = alloca %struct.xfs_bmbt_irec, align 8
  %icur = alloca %struct.xfs_iext_cursor, align 4
  %tp = alloca ptr, align 4
  %rlen = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %got) #8
  %0 = call ptr @memset(ptr %got, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %del) #8
  %1 = call ptr @memset(ptr %del, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %icur) #8
  %2 = ptrtoint ptr %icur to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %icur, align 4, !annotation !108
  %3 = getelementptr inbounds %struct.xfs_iext_cursor, ptr %icur, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !108
  %5 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ip, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #8
  %7 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !108
  %i_cowfp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 7
  %8 = ptrtoint ptr %i_cowfp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_cowfp, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rlen) #8
  %10 = ptrtoint ptr %rlen to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %rlen, align 8, !annotation !108
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %9, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %cmp = icmp eq i64 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %end_fsb to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %offset_fsb, ptr %end_fsb, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %m_bm_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %6, i32 0, i32 43
  %14 = ptrtoint ptr %m_bm_maxlevels to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %m_bm_maxlevels, align 8
  %sub = add i32 %15, -1
  %m_resv = getelementptr inbounds %struct.xfs_mount, ptr %6, i32 0, i32 65
  %call = call i32 @xfs_trans_alloc(ptr noundef %6, ptr noundef %m_resv, i32 noundef %sub, i32 noundef 0, i32 noundef 32, ptr noundef nonnull %tp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @xfs_ilock(ptr noundef %ip, i32 noundef 4) #8
  %16 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ijoin(ptr noundef %17, ptr noundef %ip, i32 noundef 0) #8
  %call3 = call i32 @xfs_iext_count_may_overflow(ptr noundef %ip, i32 noundef 0, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end2.out_cancel_crit_edge

if.end2.out_cancel_crit_edge:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_cancel

if.end6:                                          ; preds = %if.end2
  %call7 = call zeroext i1 @xfs_iext_lookup_extent_before(ptr noundef %ip, ptr noundef %9, ptr noundef %end_fsb, ptr noundef nonnull %icur, ptr noundef nonnull %got) #8
  br i1 %call7, label %lor.lhs.false, label %if.end6.out_cancel.sink.split_crit_edge

if.end6.out_cancel.sink.split_crit_edge:          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_cancel.sink.split

lor.lhs.false:                                    ; preds = %if.end6
  %18 = ptrtoint ptr %got to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %got, align 8
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %got, i32 0, i32 2
  %20 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %br_blockcount, align 8
  %add = add i64 %21, %19
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %offset_fsb)
  %cmp8.not = icmp ugt i64 %add, %offset_fsb
  br i1 %cmp8.not, label %if.end10, label %lor.lhs.false.out_cancel.sink.split_crit_edge

lor.lhs.false.out_cancel.sink.split_crit_edge:    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_cancel.sink.split

if.end10:                                         ; preds = %lor.lhs.false
  %22 = call ptr @memcpy(ptr %del, ptr %got, i32 32)
  %23 = ptrtoint ptr %end_fsb to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %end_fsb, align 8
  %sub11 = sub i64 %24, %offset_fsb
  call void @xfs_trim_extent(ptr noundef nonnull %del, i64 noundef %offset_fsb, i64 noundef %sub11) #8
  %br_blockcount12 = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %del, i32 0, i32 2
  %25 = ptrtoint ptr %br_blockcount12 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %br_blockcount12, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %26)
  %cmp13.not = icmp eq i64 %26, 0
  br i1 %cmp13.not, label %cond.false, label %if.end10.cond.end_crit_edge, !prof !116

if.end10.cond.end_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 643) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end10.cond.end_crit_edge
  %br_startblock.i.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %got, i32 0, i32 1
  %27 = ptrtoint ptr %br_startblock.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %br_startblock.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %28)
  %switch.i.i = icmp ult i64 %28, -2
  %and.i.i.i = and i64 %28, 4503599627239424
  call void @__sanitizer_cov_trace_const_cmp8(i64 4503599627239424, i64 %and.i.i.i)
  %cmp.i.i.i = icmp ne i64 %and.i.i.i, 4503599627239424
  %29 = and i1 %switch.i.i, %cmp.i.i.i
  br i1 %29, label %xfs_bmap_is_written_extent.exit, label %cond.end.if.then17_crit_edge

cond.end.if.then17_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

xfs_bmap_is_written_extent.exit:                  ; preds = %cond.end
  %br_state.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %got, i32 0, i32 3
  %30 = ptrtoint ptr %br_state.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %br_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp.i.not = icmp eq i32 %31, 1
  br i1 %cmp.i.not, label %xfs_bmap_is_written_extent.exit.if.then17_crit_edge, label %if.end19

xfs_bmap_is_written_extent.exit.if.then17_crit_edge: ; preds = %xfs_bmap_is_written_extent.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.then17:                                        ; preds = %xfs_bmap_is_written_extent.exit.if.then17_crit_edge, %cond.end.if.then17_crit_edge
  %32 = ptrtoint ptr %del to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %del, align 8
  br label %out_cancel.sink.split

if.end19:                                         ; preds = %xfs_bmap_is_written_extent.exit
  %34 = ptrtoint ptr %br_blockcount12 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %br_blockcount12, align 8
  %36 = ptrtoint ptr %rlen to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %rlen, align 8
  %37 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tp, align 4
  %39 = ptrtoint ptr %del to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %del, align 8
  %call22 = call i32 @__xfs_bunmapi(ptr noundef %38, ptr noundef %ip, i64 noundef %40, ptr noundef nonnull %rlen, i32 noundef 0, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end19.out_cancel_crit_edge

if.end19.out_cancel_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_cancel

if.end25:                                         ; preds = %if.end19
  %41 = ptrtoint ptr %del to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %del, align 8
  %43 = ptrtoint ptr %rlen to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %rlen, align 8
  %add27 = add i64 %44, %42
  %45 = ptrtoint ptr %br_blockcount12 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %br_blockcount12, align 8
  %sub29 = sub i64 %46, %44
  call void @xfs_trim_extent(ptr noundef nonnull %del, i64 noundef %add27, i64 noundef %sub29) #8
  call fastcc void @trace_xfs_reflink_cow_remap(ptr noundef %ip, ptr noundef nonnull %del)
  %47 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tp, align 4
  %br_startblock = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %del, i32 0, i32 1
  %49 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %br_startblock, align 8
  %51 = ptrtoint ptr %br_blockcount12 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %br_blockcount12, align 8
  %conv = trunc i64 %52 to i32
  call void @xfs_refcount_free_cow_extent(ptr noundef %48, i64 noundef %50, i32 noundef %conv) #8
  %53 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tp, align 4
  call void @xfs_bmap_map_extent(ptr noundef %54, ptr noundef %ip, ptr noundef nonnull %del) #8
  %55 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tp, align 4
  %57 = ptrtoint ptr %br_blockcount12 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %br_blockcount12, align 8
  %59 = shl i64 %58, 32
  %conv33 = ashr exact i64 %59, 32
  call void @xfs_trans_mod_dquot_byino(ptr noundef %56, ptr noundef %ip, i32 noundef 2097152, i64 noundef %conv33) #8
  call void @xfs_bmap_del_extent_cow(ptr noundef %ip, ptr noundef nonnull %icur, ptr noundef nonnull %got, ptr noundef nonnull %del) #8
  %60 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tp, align 4
  %call34 = call i32 @xfs_trans_commit(ptr noundef %61) #8
  call void @xfs_iunlock(ptr noundef %ip, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end37:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %del to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %del, align 8
  %64 = ptrtoint ptr %end_fsb to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %end_fsb, align 8
  br label %cleanup

out_cancel.sink.split:                            ; preds = %if.then17, %lor.lhs.false.out_cancel.sink.split_crit_edge, %if.end6.out_cancel.sink.split_crit_edge
  %.sink = phi i64 [ %33, %if.then17 ], [ %offset_fsb, %lor.lhs.false.out_cancel.sink.split_crit_edge ], [ %offset_fsb, %if.end6.out_cancel.sink.split_crit_edge ]
  %65 = ptrtoint ptr %end_fsb to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %.sink, ptr %end_fsb, align 8
  br label %out_cancel

out_cancel:                                       ; preds = %out_cancel.sink.split, %if.end19.out_cancel_crit_edge, %if.end2.out_cancel_crit_edge
  %error.0 = phi i32 [ %call3, %if.end2.out_cancel_crit_edge ], [ %call22, %if.end19.out_cancel_crit_edge ], [ 0, %out_cancel.sink.split ]
  %66 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tp, align 4
  call void @xfs_trans_cancel(ptr noundef %67) #8
  call void @xfs_iunlock(ptr noundef %ip, i32 noundef 4) #8
  br label %cleanup

cleanup:                                          ; preds = %out_cancel, %if.end37, %if.end25.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %error.0, %out_cancel ], [ 0, %if.end37 ], [ %call, %if.end.cleanup_crit_edge ], [ %call34, %if.end25.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rlen) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %icur) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %del) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %got) #8
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_reflink_end_cow_error(ptr noundef %ip, i32 noundef %error, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_end_cow_error, i32 0, i32 1), ptr blockaddress(@trace_xfs_reflink_end_cow_error, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !110

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !128
  %call42 = tail call i32 @__traceiter_xfs_reflink_end_cow_error(ptr noundef null, ptr noundef %ip, i32 noundef %error, i32 noundef %caller_ip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !129
  %13 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !111

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_end_cow_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_end_cow_error, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_reflink_end_cow_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_reflink_end_cow_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 3424, ptr noundef nonnull @.str.10) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !115
  %31 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
define dso_local i32 @xfs_reflink_recover_cow(ptr noundef %mp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %0 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %1, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @xfs_perag_get(ptr noundef %mp, i32 noundef 0) #8
  %cmp.not16 = icmp eq ptr %call1, null
  br i1 %cmp.not16, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %sb_agcount = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %xfs_perag_next.exit.for.body_crit_edge, %for.body.lr.ph
  %pag.017 = phi ptr [ %call1, %for.body.lr.ph ], [ %call.i, %xfs_perag_next.exit.for.body_crit_edge ]
  %call2 = tail call i32 @xfs_refcount_recover_cow_leftovers(ptr noundef %mp, ptr noundef nonnull %pag.017) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %for.inc, label %if.then3

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfs_perag_put(ptr noundef nonnull %pag.017) #8
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %2 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb_agcount, align 8
  %sub = add i32 %3, -1
  %4 = ptrtoint ptr %pag.017 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pag.017, align 4
  %pag_agno.i = getelementptr inbounds %struct.xfs_perag, ptr %pag.017, i32 0, i32 1
  %6 = ptrtoint ptr %pag_agno.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pag_agno.i, align 4
  %add.i = add i32 %7, 1
  tail call void @xfs_perag_put(ptr noundef nonnull %pag.017) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub)
  %cmp.i = icmp ugt i32 %add.i, %sub
  br i1 %cmp.i, label %for.inc.cleanup_crit_edge, label %xfs_perag_next.exit

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

xfs_perag_next.exit:                              ; preds = %for.inc
  %call.i = tail call ptr @xfs_perag_get(ptr noundef %5, i32 noundef %add.i) #8
  %cmp.not = icmp eq ptr %call.i, null
  br i1 %cmp.not, label %xfs_perag_next.exit.cleanup_crit_edge, label %xfs_perag_next.exit.for.body_crit_edge

xfs_perag_next.exit.for.body_crit_edge:           ; preds = %xfs_perag_next.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

xfs_perag_next.exit.cleanup_crit_edge:            ; preds = %xfs_perag_next.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %xfs_perag_next.exit.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call2, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %xfs_perag_next.exit.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_perag_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_refcount_recover_cow_leftovers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_perag_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_reflink_update_dest(ptr noundef %dest, i64 noundef %newlen, i32 noundef %cowextsize, i32 noundef %remap_flags) local_unnamed_addr #0 align 64 {
entry:
  %tp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dest to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dest, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #8
  %2 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !108
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %dest, i32 0, i32 27
  %call1 = tail call fastcc i64 @i_size_read(ptr noundef %i_vnode.i)
  call void @__sanitizer_cov_trace_cmp8(i64 %call1, i64 %newlen)
  %cmp.not = icmp sge i64 %call1, %newlen
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cowextsize)
  %cmp2 = icmp eq i32 %cowextsize, 0
  %or.cond = and i1 %cmp2, %cmp.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tr_ichange = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 65, i32 10
  %call3 = call i32 @xfs_trans_alloc(ptr noundef %1, ptr noundef %tr_ichange, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %tp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.out_error_crit_edge

if.end.out_error_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_error

if.end5:                                          ; preds = %if.end
  call void @xfs_ilock(ptr noundef %dest, i32 noundef 4) #8
  %3 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ijoin(ptr noundef %4, ptr noundef %dest, i32 noundef 4) #8
  %call7 = call fastcc i64 @i_size_read(ptr noundef %i_vnode.i)
  call void @__sanitizer_cov_trace_cmp8(i64 %call7, i64 %newlen)
  %cmp8 = icmp slt i64 %call7, %newlen
  br i1 %cmp8, label %if.then9, label %if.end5.if.end11_crit_edge

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xfs_reflink_update_inode_size(ptr noundef %dest, i64 noundef %newlen)
  call fastcc void @i_size_write(ptr noundef %i_vnode.i, i64 noundef %newlen)
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %dest, i32 0, i32 18
  %5 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %newlen, ptr %i_disk_size, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end5.if.end11_crit_edge
  br i1 %cmp2, label %if.end11.if.end14_crit_edge, label %if.then13

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %6 = getelementptr inbounds %struct.xfs_inode, ptr %dest, i32 0, i32 22
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cowextsize, ptr %6, align 8
  %i_diflags2 = getelementptr inbounds %struct.xfs_inode, ptr %dest, i32 0, i32 25
  %8 = ptrtoint ptr %i_diflags2 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_diflags2, align 8
  %or = or i64 %9, 4
  store i64 %or, ptr %i_diflags2, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end11.if.end14_crit_edge
  %10 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tp, align 4
  call void @xfs_trans_log_inode(ptr noundef %11, ptr noundef %dest, i32 noundef 1) #8
  %12 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tp, align 4
  %call15 = call i32 @xfs_trans_commit(ptr noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %if.end14.out_error_crit_edge

if.end14.out_error_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_error

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

out_error:                                        ; preds = %if.end14.out_error_crit_edge, %if.end.out_error_crit_edge
  %error.0 = phi i32 [ %call3, %if.end.out_error_crit_edge ], [ %call15, %if.end14.out_error_crit_edge ]
  %14 = call ptr @llvm.returnaddress(i32 0)
  %15 = ptrtoint ptr %14 to i32
  call fastcc void @trace_xfs_reflink_update_inode_size_error(ptr noundef %dest, i32 noundef %error.0, i32 noundef %15)
  br label %cleanup

cleanup:                                          ; preds = %out_error, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out_error ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #8
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !130
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  %1 = tail call ptr @llvm.returnaddress(i32 0) #8
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #8
  tail call void @trace_hardirqs_on() #8
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %3 = tail call ptr @llvm.returnaddress(i32 0) #8
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #8
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !131
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !116

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #8, !srcloc !132
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !134
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !135
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !136
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  ret i64 %11
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_reflink_update_inode_size(ptr noundef %ip, i64 noundef %new_size) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_update_inode_size, i32 0, i32 1), ptr blockaddress(@trace_xfs_reflink_update_inode_size, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !110

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !137
  %call42 = tail call i32 @__traceiter_xfs_reflink_update_inode_size(ptr noundef null, ptr noundef %ip, i64 noundef %new_size) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !138
  %13 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !111

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_update_inode_size, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_update_inode_size, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_reflink_update_inode_size.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_reflink_update_inode_size.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 3339, ptr noundef nonnull @.str.10) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !115
  %31 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
define internal fastcc void @i_size_write(ptr noundef %inode, i64 noundef %i_size) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !139
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %8, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !140
  %9 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i28 = add i32 %14, ptrtoint (ptr @lockdep_recursion to i32)
  %15 = inttoptr i32 %add.i28 to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !141
  %18 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i7.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not.i = icmp eq i32 %17, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i29 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i29 to ptr
  %preempt_count.i.i30 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp eq i32 %25, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i9.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %29, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !142
  %30 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %33, ptrtoint (ptr @hardirqs_enabled to i32)
  %34 = inttoptr i32 %add47.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !143
  %37 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i12.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %40, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool54.not.i = icmp eq i32 %36, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !111

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 271, i32 noundef 9, ptr noundef null) #8
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %41 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !144
  %dep_map.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %43 = tail call ptr @llvm.returnaddress(i32 0) #8
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %44) #8
  %i_size8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %45 = ptrtoint ptr %i_size8 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %i_size, ptr %i_size8, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %44) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !145
  %46 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i = add i32 %47, 1
  store i32 %inc.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !146
  %48 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i26 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i26 to ptr
  %preempt_count.i.i27 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i27, align 4
  %sub.i = add i32 %51, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i27, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_log_inode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_reflink_update_inode_size_error(ptr noundef %ip, i32 noundef %error, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_update_inode_size_error, i32 0, i32 1), ptr blockaddress(@trace_xfs_reflink_update_inode_size_error, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !110

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !147
  %call42 = tail call i32 @__traceiter_xfs_reflink_update_inode_size_error(ptr noundef null, ptr noundef %ip, i32 noundef %error, i32 noundef %caller_ip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !148
  %13 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !111

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_update_inode_size_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_update_inode_size_error, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_reflink_update_inode_size_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_reflink_update_inode_size_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 3373, ptr noundef nonnull @.str.10) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !115
  %31 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
define dso_local i32 @xfs_reflink_remap_blocks(ptr noundef %src, i64 noundef %pos_in, ptr noundef %dest, i64 noundef %pos_out, i64 noundef %remap_len, ptr nocapture noundef writeonly %remapped) local_unnamed_addr #0 align 64 {
entry:
  %imap = alloca %struct.xfs_bmbt_irec, align 8
  %nimaps = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %imap) #8
  %0 = call ptr @memset(ptr %imap, i32 255, i32 32)
  %1 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %src, align 8
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %2, i32 0, i32 20
  %3 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %4 to i64
  %shr = lshr i64 %pos_in, %sh_prom
  %shr5 = lshr i64 %pos_out, %sh_prom
  %add = add i64 %remap_len, %pos_out
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nimaps) #8
  %m_blockmask = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 31
  %5 = ptrtoint ptr %m_blockmask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %m_blockmask, align 8
  %conv6 = zext i32 %6 to i64
  %add7 = add i64 %conv6, %remap_len
  %shr12 = lshr i64 %add7, %sh_prom
  %7 = tail call i64 @llvm.umin.i64(i64 %shr12, i64 18014398511579134)
  tail call fastcc void @trace_xfs_reflink_remap_blocks(ptr noundef %src, i64 noundef %shr, i64 noundef %7, ptr noundef %dest, i64 noundef %shr5)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp14.not128 = icmp eq i64 %7, 0
  br i1 %cmp14.not128, label %entry.if.end60_crit_edge, label %while.body.lr.ph

entry.if.end60_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

while.body.lr.ph:                                 ; preds = %entry
  %br_startblock = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 1
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %srcoff.0133 = phi i64 [ %shr, %while.body.lr.ph ], [ %add52, %cleanup.while.body_crit_edge ]
  %destoff.0132 = phi i64 [ %shr5, %while.body.lr.ph ], [ %add54, %cleanup.while.body_crit_edge ]
  %len.0131 = phi i64 [ %7, %while.body.lr.ph ], [ %sub, %cleanup.while.body_crit_edge ]
  %remapped_len.0129 = phi i64 [ 0, %while.body.lr.ph ], [ %add57, %cleanup.while.body_crit_edge ]
  %8 = ptrtoint ptr %nimaps to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %nimaps, align 4
  %call = call i32 @xfs_ilock_data_map_shared(ptr noundef %src) #8
  %call16 = call i32 @xfs_bmapi_read(ptr noundef %src, i64 noundef %srcoff.0133, i64 noundef %len.0131, ptr noundef nonnull %imap, ptr noundef nonnull %nimaps, i32 noundef 0) #8
  call void @xfs_iunlock(ptr noundef %src, i32 noundef %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.end, label %while.body.if.then59_crit_edge

while.body.if.then59_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then59

if.end:                                           ; preds = %while.body
  %9 = ptrtoint ptr %nimaps to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nimaps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp17 = icmp eq i32 %10, 1
  br i1 %cmp17, label %land.rhs, label %if.end.cond.false24_crit_edge, !prof !111

if.end.cond.false24_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false24

land.rhs:                                         ; preds = %if.end
  %11 = ptrtoint ptr %imap to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %imap, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %srcoff.0133)
  %cmp19 = icmp eq i64 %12, %srcoff.0133
  br i1 %cmp19, label %land.rhs.cond.end25_crit_edge, label %land.rhs.cond.false24_crit_edge, !prof !111

land.rhs.cond.false24_crit_edge:                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false24

land.rhs.cond.end25_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end25

cond.false24:                                     ; preds = %land.rhs.cond.false24_crit_edge, %if.end.cond.false24_crit_edge
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 1225) #8
  br label %cond.end25

cond.end25:                                       ; preds = %cond.false24, %land.rhs.cond.end25_crit_edge
  %13 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %br_startblock, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %14)
  %cmp26 = icmp eq i64 %14, -1
  br i1 %cmp26, label %cond.false39, label %if.end41

cond.false39:                                     ; preds = %cond.end25
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 1227) #8
  br label %if.then59

if.end41:                                         ; preds = %cond.end25
  call fastcc void @trace_xfs_reflink_remap_extent_src(ptr noundef %src, ptr noundef nonnull %imap)
  %15 = ptrtoint ptr %imap to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %destoff.0132, ptr %imap, align 8
  %call43 = call fastcc i32 @xfs_reflink_remap_extent(ptr noundef %dest, ptr noundef nonnull %imap, i64 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end41.if.then59_crit_edge

if.end41.if.then59_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then59

if.end46:                                         ; preds = %if.end41
  %16 = call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stack.i.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %and1.i.i.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i, label %if.end46.cleanup_crit_edge, label %fatal_signal_pending.exit

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

fatal_signal_pending.exit:                        ; preds = %if.end46
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 116, i32 1
  %24 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %signal.i.i, align 4
  %26 = and i32 %25, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool49.not = icmp eq i32 %26, 0
  br i1 %tobool49.not, label %fatal_signal_pending.exit.cleanup_crit_edge, label %fatal_signal_pending.exit.if.then59_crit_edge

fatal_signal_pending.exit.if.then59_crit_edge:    ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then59

fatal_signal_pending.exit.cleanup_crit_edge:      ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %fatal_signal_pending.exit.cleanup_crit_edge, %if.end46.cleanup_crit_edge
  %27 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %br_blockcount, align 8
  %add52 = add i64 %28, %srcoff.0133
  %add54 = add i64 %28, %destoff.0132
  %sub = sub i64 %len.0131, %28
  %add57 = add i64 %28, %remapped_len.0129
  %cmp14.not = icmp eq i64 %sub, 0
  br i1 %cmp14.not, label %cleanup.if.end60_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup.if.end60_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then59:                                        ; preds = %fatal_signal_pending.exit.if.then59_crit_edge, %if.end41.if.then59_crit_edge, %cond.false39, %while.body.if.then59_crit_edge
  %error.1.ph = phi i32 [ -117, %cond.false39 ], [ %call16, %while.body.if.then59_crit_edge ], [ %call43, %if.end41.if.then59_crit_edge ], [ -4, %fatal_signal_pending.exit.if.then59_crit_edge ]
  %29 = call ptr @llvm.returnaddress(i32 0)
  %30 = ptrtoint ptr %29 to i32
  call fastcc void @trace_xfs_reflink_remap_blocks_error(ptr noundef %dest, i32 noundef %error.1.ph, i32 noundef %30)
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %cleanup.if.end60_crit_edge, %entry.if.end60_crit_edge
  %remapped_len.0126 = phi i64 [ %remapped_len.0129, %if.then59 ], [ 0, %entry.if.end60_crit_edge ], [ %add57, %cleanup.if.end60_crit_edge ]
  %error.2123 = phi i32 [ %error.1.ph, %if.then59 ], [ 0, %entry.if.end60_crit_edge ], [ 0, %cleanup.if.end60_crit_edge ]
  %31 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %src, align 8
  %sb_blocklog63 = getelementptr inbounds %struct.xfs_sb, ptr %32, i32 0, i32 20
  %33 = ptrtoint ptr %sb_blocklog63 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %sb_blocklog63, align 8
  %sh_prom65 = zext i8 %34 to i64
  %shl = shl i64 %remapped_len.0126, %sh_prom65
  %35 = call i64 @llvm.smin.i64(i64 %shl, i64 %remap_len)
  %36 = ptrtoint ptr %remapped to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %remapped, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nimaps) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %imap) #8
  ret i32 %error.2123
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_reflink_remap_blocks(ptr noundef %src, i64 noundef %soffset, i64 noundef %len, ptr noundef %dest, i64 noundef %doffset) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_remap_blocks, i32 0, i32 1), ptr blockaddress(@trace_xfs_reflink_remap_blocks, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !110

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !149
  %call42 = tail call i32 @__traceiter_xfs_reflink_remap_blocks(ptr noundef null, ptr noundef %src, i64 noundef %soffset, i64 noundef %len, ptr noundef %dest, i64 noundef %doffset) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !150
  %13 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !111

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_remap_blocks, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_remap_blocks, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_reflink_remap_blocks.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_reflink_remap_blocks.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 3369, ptr noundef nonnull @.str.10) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !115
  %31 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
declare dso_local i32 @xfs_ilock_data_map_shared(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmapi_read(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_reflink_remap_extent_src(ptr noundef %ip, ptr noundef %irec) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_remap_extent_src, i32 0, i32 1), ptr blockaddress(@trace_xfs_reflink_remap_extent_src, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !110

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !151
  %call42 = tail call i32 @__traceiter_xfs_reflink_remap_extent_src(ptr noundef null, ptr noundef %ip, ptr noundef %irec) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !152
  %13 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !111

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_remap_extent_src, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_remap_extent_src, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_reflink_remap_extent_src.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_reflink_remap_extent_src.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 3376, ptr noundef nonnull @.str.10) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !115
  %31 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
define internal fastcc i32 @xfs_reflink_remap_extent(ptr noundef %ip, ptr noundef %dmap, i64 noundef %new_isize) unnamed_addr #5 align 64 {
entry:
  %smap = alloca %struct.xfs_bmbt_irec, align 8
  %tp = alloca ptr, align 4
  %nimaps = alloca i32, align 4
  %len = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %smap) #8
  %0 = call ptr @memset(ptr %smap, i32 255, i32 32)
  %1 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ip, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #8
  %3 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !108
  %br_startblock.i.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %dmap, i32 0, i32 1
  %4 = ptrtoint ptr %br_startblock.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %br_startblock.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %5)
  %switch.i.i = icmp ult i64 %5, -2
  %and.i.i.i = and i64 %5, 4503599627239424
  call void @__sanitizer_cov_trace_const_cmp8(i64 4503599627239424, i64 %and.i.i.i)
  %cmp.i.i.i = icmp ne i64 %and.i.i.i, 4503599627239424
  %6 = and i1 %switch.i.i, %cmp.i.i.i
  br i1 %6, label %land.rhs.i, label %entry.xfs_bmap_is_written_extent.exit_crit_edge

entry.xfs_bmap_is_written_extent.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_bmap_is_written_extent.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %br_state.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %dmap, i32 0, i32 3
  %7 = ptrtoint ptr %br_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %br_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i = icmp ne i32 %8, 1
  br label %xfs_bmap_is_written_extent.exit

xfs_bmap_is_written_extent.exit:                  ; preds = %land.rhs.i, %entry.xfs_bmap_is_written_extent.exit_crit_edge
  %9 = phi i1 [ false, %entry.xfs_bmap_is_written_extent.exit_crit_edge ], [ %cmp.i, %land.rhs.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nimaps) #8
  %10 = ptrtoint ptr %nimaps to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %nimaps, align 4, !annotation !108
  %m_bm_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 43
  %11 = ptrtoint ptr %m_bm_maxlevels to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %m_bm_maxlevels, align 8
  %sub = add i32 %12, -1
  %m_resv = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 65
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %dmap, i32 0, i32 2
  %13 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %br_blockcount, align 8
  %15 = trunc i64 %14 to i32
  %conv1 = add i32 %sub, %15
  %call2 = call i32 @xfs_trans_alloc_inode(ptr noundef %ip, ptr noundef %m_resv, i32 noundef %conv1, i32 noundef 0, i1 noundef zeroext false, ptr noundef nonnull %tp) #8
  %16 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call2, label %xfs_bmap_is_written_extent.exit.if.end_crit_edge [
    i32 -122, label %xfs_bmap_is_written_extent.exit.if.then_crit_edge
    i32 -28, label %xfs_bmap_is_written_extent.exit.if.then_crit_edge252
  ]

xfs_bmap_is_written_extent.exit.if.then_crit_edge252: ; preds = %xfs_bmap_is_written_extent.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

xfs_bmap_is_written_extent.exit.if.then_crit_edge: ; preds = %xfs_bmap_is_written_extent.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

xfs_bmap_is_written_extent.exit.if.end_crit_edge: ; preds = %xfs_bmap_is_written_extent.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %xfs_bmap_is_written_extent.exit.if.then_crit_edge, %xfs_bmap_is_written_extent.exit.if.then_crit_edge252
  %call8 = call i32 @xfs_trans_alloc_inode(ptr noundef %ip, ptr noundef %m_resv, i32 noundef %sub, i32 noundef 0, i1 noundef zeroext false, ptr noundef nonnull %tp) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %xfs_bmap_is_written_extent.exit.if.end_crit_edge
  %quota_reserved.0.off0 = phi i1 [ false, %if.then ], [ true, %xfs_bmap_is_written_extent.exit.if.end_crit_edge ]
  %error.0 = phi i32 [ %call8, %if.then ], [ %call2, %xfs_bmap_is_written_extent.exit.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool.not = icmp eq i32 %error.0, 0
  br i1 %tobool.not, label %if.end10, label %if.end.if.then153_crit_edge

if.end.if.then153_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then153

if.end10:                                         ; preds = %if.end
  %17 = ptrtoint ptr %nimaps to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %nimaps, align 4
  %18 = ptrtoint ptr %dmap to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %dmap, align 8
  %20 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %br_blockcount, align 8
  %call12 = call i32 @xfs_bmapi_read(ptr noundef %ip, i64 noundef %19, i64 noundef %21, ptr noundef nonnull %smap, ptr noundef nonnull %nimaps, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.out_cancel_crit_edge

if.end10.out_cancel_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_cancel

if.end15:                                         ; preds = %if.end10
  %22 = ptrtoint ptr %nimaps to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nimaps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp16 = icmp eq i32 %23, 1
  br i1 %cmp16, label %land.rhs, label %if.end15.cond.false_crit_edge, !prof !111

if.end15.cond.false_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.rhs:                                         ; preds = %if.end15
  %24 = ptrtoint ptr %smap to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %smap, align 8
  %26 = ptrtoint ptr %dmap to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %dmap, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %27)
  %cmp20 = icmp eq i64 %25, %27
  br i1 %cmp20, label %land.rhs.cond.end_crit_edge, label %land.rhs.cond.false_crit_edge, !prof !111

land.rhs.cond.false_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.rhs.cond.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %land.rhs.cond.false_crit_edge, %if.end15.cond.false_crit_edge
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 1049) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %land.rhs.cond.end_crit_edge
  %br_startblock.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %smap, i32 0, i32 1
  %28 = ptrtoint ptr %br_startblock.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %br_startblock.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %29)
  %switch.i = icmp ult i64 %29, -2
  %and.i.i = and i64 %29, 4503599627239424
  call void @__sanitizer_cov_trace_const_cmp8(i64 4503599627239424, i64 %and.i.i)
  %cmp.i.i = icmp ne i64 %and.i.i, 4503599627239424
  %30 = and i1 %switch.i, %cmp.i.i
  %31 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %br_blockcount, align 8
  %br_blockcount27 = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %smap, i32 0, i32 2
  %33 = ptrtoint ptr %br_blockcount27 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %br_blockcount27, align 8
  %35 = call i64 @llvm.umin.i64(i64 %32, i64 %34)
  %36 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %br_blockcount, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %32)
  %cmp36.not = icmp ugt i64 %34, %32
  br i1 %cmp36.not, label %cond.false45, label %cond.end.cond.end46_crit_edge, !prof !116

cond.end.cond.end46_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end46

cond.false45:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 1057) #8
  br label %cond.end46

cond.end46:                                       ; preds = %cond.false45, %cond.end.cond.end46_crit_edge
  call fastcc void @trace_xfs_reflink_remap_extent_dest(ptr noundef %ip, ptr noundef nonnull %smap)
  %37 = ptrtoint ptr %br_startblock.i.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %br_startblock.i.i, align 8
  %39 = ptrtoint ptr %br_startblock.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %br_startblock.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %38, i64 %40)
  %cmp48 = icmp eq i64 %38, %40
  %br_state = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %dmap, i32 0, i32 3
  %41 = ptrtoint ptr %br_state to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %br_state, align 8
  br i1 %cmp48, label %if.then50, label %if.end56

if.then50:                                        ; preds = %cond.end46
  call void @__sanitizer_cov_trace_pc() #10
  %br_state51 = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %smap, i32 0, i32 3
  %43 = ptrtoint ptr %br_state51 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %br_state51, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp52.not = icmp eq i32 %42, %44
  %spec.select = select i1 %cmp52.not, i32 0, i32 -117
  br label %out_cancel

if.end56:                                         ; preds = %cond.end46
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp58 = icmp eq i32 %42, 1
  br i1 %cmp58, label %land.lhs.true, label %if.end56.if.end64_crit_edge

if.end56.if.end64_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

land.lhs.true:                                    ; preds = %if.end56
  %br_state60 = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %smap, i32 0, i32 3
  %45 = ptrtoint ptr %br_state60 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %br_state60, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp61 = icmp eq i32 %46, 1
  br i1 %cmp61, label %land.lhs.true.out_cancel_crit_edge, label %land.lhs.true.if.end64_crit_edge

land.lhs.true.if.end64_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

land.lhs.true.out_cancel_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_cancel

if.end64:                                         ; preds = %land.lhs.true.if.end64_crit_edge, %if.end56.if.end64_crit_edge
  br i1 %9, label %if.then66, label %if.end64.if.end87_crit_edge

if.end64.if.end87_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then66:                                        ; preds = %if.end64
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 61
  %47 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %m_features.i.i, align 8
  %and.i.i237 = and i64 %48, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i237)
  %tobool.i.not.i = icmp eq i64 %and.i.i237, 0
  br i1 %tobool.i.not.i, label %if.then66.if.end74_crit_edge, label %if.end.i

if.then66.if.end74_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.end.i:                                         ; preds = %if.then66
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %2, i32 0, i32 24
  %49 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %sb_agblklog, align 4
  %sh_prom = zext i8 %50 to i64
  %shr = lshr i64 %38, %sh_prom
  %conv69 = trunc i64 %shr to i32
  %call1.i = call ptr @xfs_perag_get(ptr noundef %2, i32 noundef %conv69) #8
  %call2.i = call zeroext i1 @xfs_ag_resv_critical(ptr noundef %call1.i, i32 noundef 3) #8
  br i1 %call2.i, label %if.end.i.xfs_reflink_ag_has_free_space.exit_crit_edge, label %lor.lhs.false.i

if.end.i.xfs_reflink_ag_has_free_space.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_reflink_ag_has_free_space.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %call3.i = call zeroext i1 @xfs_ag_resv_critical(ptr noundef %call1.i, i32 noundef 2) #8
  br i1 %call3.i, label %lor.lhs.false.i.xfs_reflink_ag_has_free_space.exit_crit_edge, label %xfs_reflink_ag_has_free_space.exit.thread241

lor.lhs.false.i.xfs_reflink_ag_has_free_space.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_reflink_ag_has_free_space.exit

xfs_reflink_ag_has_free_space.exit.thread241:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @xfs_perag_put(ptr noundef %call1.i) #8
  br label %if.end74

xfs_reflink_ag_has_free_space.exit:               ; preds = %lor.lhs.false.i.xfs_reflink_ag_has_free_space.exit_crit_edge, %if.end.i.xfs_reflink_ag_has_free_space.exit_crit_edge
  call void @xfs_perag_put(ptr noundef %call1.i) #8
  br label %out_cancel

if.end74:                                         ; preds = %xfs_reflink_ag_has_free_space.exit.thread241, %if.then66.if.end74_crit_edge
  %brmerge = select i1 %quota_reserved.0.off0, i1 true, i1 %30
  br i1 %brmerge, label %if.end74.if.end87_crit_edge, label %if.then81

if.end74.if.end87_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then81:                                        ; preds = %if.end74
  %51 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tp, align 4
  %53 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %br_blockcount, align 8
  %call83 = call i32 @xfs_trans_reserve_quota_nblks(ptr noundef %52, ptr noundef %ip, i64 noundef %54, i64 noundef 0, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.then81.if.end87_crit_edge, label %if.then81.out_cancel_crit_edge

if.then81.out_cancel_crit_edge:                   ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_cancel

if.then81.if.end87_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.end87:                                         ; preds = %if.then81.if.end87_crit_edge, %if.end74.if.end87_crit_edge, %if.end64.if.end87_crit_edge
  %spec.select236 = zext i1 %30 to i32
  %inc93 = select i1 %30, i32 2, i32 1
  %iext_delta.1 = select i1 %9, i32 %inc93, i32 %spec.select236
  %call95 = call i32 @xfs_iext_count_may_overflow(ptr noundef %ip, i32 noundef 0, i32 noundef %iext_delta.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end98, label %if.end87.out_cancel_crit_edge

if.end87.out_cancel_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_cancel

if.end98:                                         ; preds = %if.end87
  br i1 %30, label %if.then100, label %if.else

if.then100:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tp, align 4
  call void @xfs_bmap_unmap_extent(ptr noundef %56, ptr noundef %ip, ptr noundef nonnull %smap) #8
  %57 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tp, align 4
  call void @xfs_refcount_decrease_extent(ptr noundef %58, ptr noundef nonnull %smap) #8
  %59 = ptrtoint ptr %br_blockcount27 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %br_blockcount27, align 8
  %sub102 = sub i64 0, %60
  br label %if.end125

if.else:                                          ; preds = %if.end98
  %61 = ptrtoint ptr %br_startblock.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %br_startblock.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %62)
  %cmp104 = icmp eq i64 %62, -1
  br i1 %cmp104, label %if.then106, label %if.else.if.end125_crit_edge

if.else.if.end125_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125

if.then106:                                       ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len) #8
  %63 = ptrtoint ptr %br_blockcount27 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %br_blockcount27, align 8
  %65 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %64, ptr %len, align 8
  %66 = ptrtoint ptr %smap to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %smap, align 8
  %call109 = call i32 @__xfs_bunmapi(ptr noundef null, ptr noundef %ip, i64 noundef %67, ptr noundef nonnull %len, i32 noundef 0, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end112, label %cleanup

if.end112:                                        ; preds = %if.then106
  %68 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %69)
  %cmp113 = icmp eq i64 %69, 0
  br i1 %cmp113, label %if.end112.cleanup.thread_crit_edge, label %cond.false122, !prof !111

if.end112.cleanup.thread_crit_edge:               ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

cond.false122:                                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 1144) #8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cond.false122, %if.end112.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #8
  br label %if.end125

cleanup:                                          ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #8
  br label %out_cancel

if.end125:                                        ; preds = %cleanup.thread, %if.else.if.end125_crit_edge, %if.then100
  %qdelta.0 = phi i64 [ %sub102, %if.then100 ], [ 0, %if.else.if.end125_crit_edge ], [ 0, %cleanup.thread ]
  br i1 %9, label %if.then127, label %if.end125.if.end130_crit_edge

if.end125.if.end130_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130

if.then127:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %tp, align 4
  call void @xfs_refcount_increase_extent(ptr noundef %71, ptr noundef %dmap) #8
  %72 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tp, align 4
  call void @xfs_bmap_map_extent(ptr noundef %73, ptr noundef %ip, ptr noundef %dmap) #8
  %74 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %br_blockcount, align 8
  %add129 = add i64 %75, %qdelta.0
  br label %if.end130

if.end130:                                        ; preds = %if.then127, %if.end125.if.end130_crit_edge
  %qdelta.1 = phi i64 [ %add129, %if.then127 ], [ %qdelta.0, %if.end125.if.end130_crit_edge ]
  %76 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tp, align 4
  call void @xfs_trans_mod_dquot_byino(ptr noundef %77, ptr noundef %ip, i32 noundef 262144, i64 noundef %qdelta.1) #8
  %78 = ptrtoint ptr %dmap to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %dmap, align 8
  %80 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %br_blockcount, align 8
  %add133 = add i64 %81, %79
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %2, i32 0, i32 20
  %82 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %sb_blocklog, align 8
  %sh_prom136 = zext i8 %83 to i64
  %shl = shl i64 %add133, %sh_prom136
  %84 = call i64 @llvm.smin.i64(i64 %shl, i64 %new_isize)
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %call145 = call fastcc i64 @i_size_read(ptr noundef %i_vnode.i)
  call void @__sanitizer_cov_trace_cmp8(i64 %84, i64 %call145)
  %cmp146 = icmp sgt i64 %84, %call145
  br i1 %cmp146, label %if.then148, label %if.end130.if.end150_crit_edge

if.end130.if.end150_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end150

if.then148:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xfs_reflink_update_inode_size(ptr noundef %ip, i64 noundef %84)
  call fastcc void @i_size_write(ptr noundef %i_vnode.i, i64 noundef %84)
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 18
  %85 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %84, ptr %i_disk_size, align 8
  %86 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %tp, align 4
  call void @xfs_trans_log_inode(ptr noundef %87, ptr noundef %ip, i32 noundef 1) #8
  br label %if.end150

if.end150:                                        ; preds = %if.then148, %if.end130.if.end150_crit_edge
  %88 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %tp, align 4
  %call151 = call i32 @xfs_trans_commit(ptr noundef %89) #8
  br label %out

out_cancel:                                       ; preds = %cleanup, %if.end87.out_cancel_crit_edge, %if.then81.out_cancel_crit_edge, %xfs_reflink_ag_has_free_space.exit, %land.lhs.true.out_cancel_crit_edge, %if.then50, %if.end10.out_cancel_crit_edge
  %error.1 = phi i32 [ %call12, %if.end10.out_cancel_crit_edge ], [ 0, %land.lhs.true.out_cancel_crit_edge ], [ -28, %xfs_reflink_ag_has_free_space.exit ], [ %call95, %if.end87.out_cancel_crit_edge ], [ %call109, %cleanup ], [ %call83, %if.then81.out_cancel_crit_edge ], [ %spec.select, %if.then50 ]
  %90 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %tp, align 4
  call void @xfs_trans_cancel(ptr noundef %91) #8
  br label %out

out:                                              ; preds = %out_cancel, %if.end150
  %error.2 = phi i32 [ %error.1, %out_cancel ], [ %call151, %if.end150 ]
  call void @xfs_iunlock(ptr noundef %ip, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.2)
  %tobool152.not = icmp eq i32 %error.2, 0
  br i1 %tobool152.not, label %out.cleanup155_crit_edge, label %out.if.then153_crit_edge

out.if.then153_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then153

out.cleanup155_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup155

if.then153:                                       ; preds = %out.if.then153_crit_edge, %if.end.if.then153_crit_edge
  %error.3250 = phi i32 [ %error.2, %out.if.then153_crit_edge ], [ %error.0, %if.end.if.then153_crit_edge ]
  %92 = call ptr @llvm.returnaddress(i32 0)
  %93 = ptrtoint ptr %92 to i32
  call fastcc void @trace_xfs_reflink_remap_extent_error(ptr noundef %ip, i32 noundef %error.3250, i32 noundef %93)
  br label %cleanup155

cleanup155:                                       ; preds = %if.then153, %out.cleanup155_crit_edge
  %error.3251 = phi i32 [ 0, %out.cleanup155_crit_edge ], [ %error.3250, %if.then153 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nimaps) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %smap) #8
  ret i32 %error.3251
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_reflink_remap_blocks_error(ptr noundef %ip, i32 noundef %error, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_remap_blocks_error, i32 0, i32 1), ptr blockaddress(@trace_xfs_reflink_remap_blocks_error, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !110

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !153
  %call42 = tail call i32 @__traceiter_xfs_reflink_remap_blocks_error(ptr noundef null, ptr noundef %ip, i32 noundef %error, i32 noundef %caller_ip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !154
  %13 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !111

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_remap_blocks_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_remap_blocks_error, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_reflink_remap_blocks_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_reflink_remap_blocks_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 3374, ptr noundef nonnull @.str.10) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !115
  %31 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
define dso_local i32 @xfs_reflink_remap_prep(ptr noundef %file_in, i64 noundef %pos_in, ptr noundef %file_out, i64 noundef %pos_out, ptr noundef %len, i32 noundef %remap_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file_in, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -312
  %f_inode.i92 = getelementptr inbounds %struct.file, ptr %file_out, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i92 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i92, align 8
  %add.ptr.i93 = getelementptr i8, ptr %3, i32 -312
  %call4 = tail call i32 @xfs_ilock2_io_mmap(ptr noundef %add.ptr.i, ptr noundef %add.ptr.i93) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_diflags = getelementptr i8, ptr %1, i32 -26
  %4 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %i_diflags, align 2
  %6 = and i16 %5, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool5.not = icmp eq i16 %6, 0
  br i1 %tobool5.not, label %if.end.lor.lhs.false_crit_edge, label %land.lhs.true

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 8
  %m_rtdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %m_rtdev_targp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m_rtdev_targp, align 64
  %tobool6.not = icmp eq ptr %10, null
  br i1 %tobool6.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.out_unlock_crit_edge

land.lhs.true.out_unlock_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge
  %i_diflags7 = getelementptr i8, ptr %3, i32 -26
  %11 = ptrtoint ptr %i_diflags7 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %i_diflags7, align 2
  %13 = and i16 %12, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool10.not = icmp eq i16 %13, 0
  br i1 %tobool10.not, label %lor.lhs.false.if.end24_crit_edge, label %land.lhs.true11

lor.lhs.false.if.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

land.lhs.true11:                                  ; preds = %lor.lhs.false
  %14 = ptrtoint ptr %add.ptr.i93 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i93, align 8
  %m_rtdev_targp13 = getelementptr inbounds %struct.xfs_mount, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %m_rtdev_targp13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %m_rtdev_targp13, align 64
  %tobool14.not = icmp eq ptr %17, null
  br i1 %tobool14.not, label %land.lhs.true11.if.end24_crit_edge, label %land.lhs.true11.out_unlock_crit_edge

land.lhs.true11.out_unlock_crit_edge:             ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

land.lhs.true11.if.end24_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.end24:                                         ; preds = %land.lhs.true11.if.end24_crit_edge, %lor.lhs.false.if.end24_crit_edge
  %call25 = tail call i32 @generic_remap_file_range_prep(ptr noundef %file_in, i64 noundef %pos_in, ptr noundef %file_out, i64 noundef %pos_out, ptr noundef %len, i32 noundef %remap_flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %lor.lhs.false27, label %if.end24.out_unlock_crit_edge

if.end24.out_unlock_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

lor.lhs.false27:                                  ; preds = %if.end24
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %cmp = icmp eq i64 %19, 0
  br i1 %cmp, label %lor.lhs.false27.out_unlock_crit_edge, label %if.end30

lor.lhs.false27.out_unlock_crit_edge:             ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end30:                                         ; preds = %lor.lhs.false27
  %call31 = tail call i32 @xfs_qm_dqattach(ptr noundef %add.ptr.i93) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.out_unlock_crit_edge

if.end30.out_unlock_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end34:                                         ; preds = %if.end30
  %call35 = tail call fastcc i32 @xfs_reflink_zero_posteof(ptr noundef %add.ptr.i93, i64 noundef %pos_out)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.out_unlock_crit_edge

if.end34.out_unlock_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end38:                                         ; preds = %if.end34
  %call39 = tail call fastcc i32 @xfs_reflink_set_inode_flag(ptr noundef %add.ptr.i, ptr noundef %add.ptr.i93)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.out_unlock_crit_edge

if.end38.out_unlock_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end42:                                         ; preds = %if.end38
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %3, align 8
  %22 = and i16 %21, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %22)
  %cmp.i = icmp eq i16 %22, -32768
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call fastcc i64 @i_size_read(ptr noundef %3) #8
  br label %XFS_ISIZE.exit

if.end.i:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %i_disk_size.i = getelementptr i8, ptr %3, i32 -56
  %23 = ptrtoint ptr %i_disk_size.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %i_disk_size.i, align 8
  br label %XFS_ISIZE.exit

XFS_ISIZE.exit:                                   ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i64 [ %call3.i, %if.then.i ], [ %24, %if.end.i ]
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i, i64 %pos_out)
  %cmp44 = icmp slt i64 %retval.0.i, %pos_out
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %len, align 8
  br i1 %cmp44, label %if.then46, label %if.else

if.then46:                                        ; preds = %XFS_ISIZE.exit
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %3, align 8
  %29 = and i16 %28, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %29)
  %cmp.i95 = icmp eq i16 %29, -32768
  br i1 %cmp.i95, label %if.then.i97, label %if.end.i99

if.then.i97:                                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i96 = tail call fastcc i64 @i_size_read(ptr noundef %3) #8
  br label %XFS_ISIZE.exit101

if.end.i99:                                       ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  %i_disk_size.i98 = getelementptr i8, ptr %3, i32 -56
  %30 = ptrtoint ptr %i_disk_size.i98 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %i_disk_size.i98, align 8
  br label %XFS_ISIZE.exit101

XFS_ISIZE.exit101:                                ; preds = %if.end.i99, %if.then.i97
  %retval.0.i100 = phi i64 [ %call3.i96, %if.then.i97 ], [ %31, %if.end.i99 ]
  %sub = add i64 %26, %pos_out
  %add = sub i64 %sub, %retval.0.i100
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %3, align 8
  %34 = and i16 %33, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %34)
  %cmp.i103 = icmp eq i16 %34, -32768
  br i1 %cmp.i103, label %if.then.i105, label %if.end.i107

if.then.i105:                                     ; preds = %XFS_ISIZE.exit101
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i104 = tail call fastcc i64 @i_size_read(ptr noundef %3) #8
  br label %XFS_ISIZE.exit109

if.end.i107:                                      ; preds = %XFS_ISIZE.exit101
  call void @__sanitizer_cov_trace_pc() #10
  %i_disk_size.i106 = getelementptr i8, ptr %3, i32 -56
  %35 = ptrtoint ptr %i_disk_size.i106 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %i_disk_size.i106, align 8
  br label %XFS_ISIZE.exit109

XFS_ISIZE.exit109:                                ; preds = %if.end.i107, %if.then.i105
  %retval.0.i108 = phi i64 [ %call3.i104, %if.then.i105 ], [ %36, %if.end.i107 ]
  %call49 = tail call i32 @xfs_flush_unmap_range(ptr noundef %add.ptr.i93, i64 noundef %retval.0.i108, i64 noundef %add) #8
  br label %if.end51

if.else:                                          ; preds = %XFS_ISIZE.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call50 = tail call i32 @xfs_flush_unmap_range(ptr noundef %add.ptr.i93, i64 noundef %pos_out, i64 noundef %26) #8
  br label %if.end51

if.end51:                                         ; preds = %if.else, %XFS_ISIZE.exit109
  %ret.0 = phi i32 [ %call49, %XFS_ISIZE.exit109 ], [ %call50, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool52.not = icmp eq i32 %ret.0, 0
  br i1 %tobool52.not, label %if.end51.cleanup_crit_edge, label %if.end51.out_unlock_crit_edge

if.end51.out_unlock_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

out_unlock:                                       ; preds = %if.end51.out_unlock_crit_edge, %if.end38.out_unlock_crit_edge, %if.end34.out_unlock_crit_edge, %if.end30.out_unlock_crit_edge, %lor.lhs.false27.out_unlock_crit_edge, %if.end24.out_unlock_crit_edge, %land.lhs.true11.out_unlock_crit_edge, %land.lhs.true.out_unlock_crit_edge
  %ret.1 = phi i32 [ -22, %land.lhs.true.out_unlock_crit_edge ], [ -22, %land.lhs.true11.out_unlock_crit_edge ], [ %call25, %if.end24.out_unlock_crit_edge ], [ 0, %lor.lhs.false27.out_unlock_crit_edge ], [ %call31, %if.end30.out_unlock_crit_edge ], [ %call35, %if.end34.out_unlock_crit_edge ], [ %call39, %if.end38.out_unlock_crit_edge ], [ %ret.0, %if.end51.out_unlock_crit_edge ]
  tail call void @xfs_iunlock2_io_mmap(ptr noundef %add.ptr.i, ptr noundef %add.ptr.i93) #8
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end51.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out_unlock ], [ %call4, %entry.cleanup_crit_edge ], [ 0, %if.end51.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ilock2_io_mmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_remap_file_range_prep(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_qm_dqattach(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_reflink_zero_posteof(ptr noundef %ip, i64 noundef %pos) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %call1 = tail call fastcc i64 @i_size_read(ptr noundef %i_vnode.i)
  call void @__sanitizer_cov_trace_cmp8(i64 %call1, i64 %pos)
  %cmp.not = icmp slt i64 %call1, %pos
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i64 %pos, %call1
  %conv = trunc i64 %sub to i32
  tail call fastcc void @trace_xfs_zero_eof(ptr noundef %ip, i64 noundef %call1, i32 noundef %conv)
  %call3 = tail call i32 @xfs_zero_range(ptr noundef %ip, i64 noundef %call1, i64 noundef %sub, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_reflink_set_inode_flag(ptr noundef %src, ptr noundef %dest) unnamed_addr #5 align 64 {
entry:
  %tp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #8
  %2 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !108
  %i_diflags2.i = getelementptr inbounds %struct.xfs_inode, ptr %src, i32 0, i32 25
  %3 = ptrtoint ptr %i_diflags2.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %i_diflags2.i, align 8
  %and.i = and i64 %4, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %i_diflags2.i57 = getelementptr inbounds %struct.xfs_inode, ptr %dest, i32 0, i32 25
  %5 = ptrtoint ptr %i_diflags2.i57 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %i_diflags2.i57, align 8
  %and.i58 = and i64 %6, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i58)
  %tobool.i59.not = icmp eq i64 %and.i58, 0
  br i1 %tobool.i59.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %tr_ichange = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 65, i32 10
  %call2 = call i32 @xfs_trans_alloc(ptr noundef %1, ptr noundef %tr_ichange, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %tp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.out_error_crit_edge

if.end.out_error_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_error

if.end4:                                          ; preds = %if.end
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %src, i32 0, i32 4
  %7 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %i_ino, align 8
  %i_ino5 = getelementptr inbounds %struct.xfs_inode, ptr %dest, i32 0, i32 4
  %9 = ptrtoint ptr %i_ino5 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %i_ino5, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %10)
  %cmp = icmp eq i64 %8, %10
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  call void @xfs_ilock(ptr noundef %src, i32 noundef 4) #8
  br label %if.end7

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  call void @xfs_lock_two_inodes(ptr noundef %src, i32 noundef 4, ptr noundef %dest, i32 noundef 4) #8
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  %11 = ptrtoint ptr %i_diflags2.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %i_diflags2.i, align 8
  %and.i61 = and i64 %12, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i61)
  %tobool.i62.not = icmp eq i64 %and.i61, 0
  br i1 %tobool.i62.not, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xfs_reflink_set_inode_flag(ptr noundef %src)
  %13 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ijoin(ptr noundef %14, ptr noundef %src, i32 noundef 4) #8
  %15 = ptrtoint ptr %i_diflags2.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %i_diflags2.i, align 8
  %or = or i64 %16, 2
  store i64 %or, ptr %i_diflags2.i, align 8
  %17 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tp, align 4
  call void @xfs_trans_log_inode(ptr noundef %18, ptr noundef %src, i32 noundef 1) #8
  call void @xfs_ifork_init_cow(ptr noundef %src) #8
  br label %if.end11

if.else10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  call void @xfs_iunlock(ptr noundef %src, i32 noundef 4) #8
  br label %if.end11

if.end11:                                         ; preds = %if.else10, %if.then9
  %19 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %i_ino, align 8
  %21 = ptrtoint ptr %i_ino5 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %i_ino5, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %22)
  %cmp14 = icmp eq i64 %20, %22
  br i1 %cmp14, label %if.end11.commit_flags_crit_edge, label %if.end16

if.end11.commit_flags_crit_edge:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %commit_flags

if.end16:                                         ; preds = %if.end11
  %i_diflags2.i63 = getelementptr inbounds %struct.xfs_inode, ptr %dest, i32 0, i32 25
  %23 = ptrtoint ptr %i_diflags2.i63 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %i_diflags2.i63, align 8
  %and.i64 = and i64 %24, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i64)
  %tobool.i65.not = icmp eq i64 %and.i64, 0
  br i1 %tobool.i65.not, label %if.then18, label %if.else21

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xfs_reflink_set_inode_flag(ptr noundef %dest)
  %25 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ijoin(ptr noundef %26, ptr noundef %dest, i32 noundef 4) #8
  %27 = ptrtoint ptr %i_diflags2.i63 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %i_diflags2.i63, align 8
  %or20 = or i64 %28, 2
  store i64 %or20, ptr %i_diflags2.i63, align 8
  %29 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tp, align 4
  call void @xfs_trans_log_inode(ptr noundef %30, ptr noundef %dest, i32 noundef 1) #8
  call void @xfs_ifork_init_cow(ptr noundef %dest) #8
  br label %commit_flags

if.else21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  call void @xfs_iunlock(ptr noundef %dest, i32 noundef 4) #8
  br label %commit_flags

commit_flags:                                     ; preds = %if.else21, %if.then18, %if.end11.commit_flags_crit_edge
  %31 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tp, align 4
  %call23 = call i32 @xfs_trans_commit(ptr noundef %32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %commit_flags.cleanup_crit_edge, label %commit_flags.out_error_crit_edge

commit_flags.out_error_crit_edge:                 ; preds = %commit_flags
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_error

commit_flags.cleanup_crit_edge:                   ; preds = %commit_flags
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

out_error:                                        ; preds = %commit_flags.out_error_crit_edge, %if.end.out_error_crit_edge
  %error.0 = phi i32 [ %call2, %if.end.out_error_crit_edge ], [ %call23, %commit_flags.out_error_crit_edge ]
  %33 = call ptr @llvm.returnaddress(i32 0)
  %34 = ptrtoint ptr %33 to i32
  call fastcc void @trace_xfs_reflink_set_inode_flag_error(ptr noundef %dest, i32 noundef %error.0, i32 noundef %34)
  br label %cleanup

cleanup:                                          ; preds = %out_error, %commit_flags.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out_error ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %commit_flags.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_flush_unmap_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iunlock2_io_mmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_reflink_inode_has_shared_extents(ptr noundef %tp, ptr noundef %ip, ptr nocapture noundef writeonly %has_shared) local_unnamed_addr #0 align 64 {
entry:
  %agbp.i = alloca ptr, align 4
  %got = alloca %struct.xfs_bmbt_irec, align 8
  %rbno = alloca i32, align 4
  %rlen = alloca i32, align 4
  %icur = alloca %struct.xfs_iext_cursor, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %got) #8
  %0 = call ptr @memset(ptr %got, i32 255, i32 32)
  %1 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ip, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rbno) #8
  %3 = ptrtoint ptr %rbno to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %rbno, align 4, !annotation !108
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rlen) #8
  %4 = ptrtoint ptr %rlen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %rlen, align 4, !annotation !108
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %icur) #8
  %5 = ptrtoint ptr %icur to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %icur, align 4, !annotation !108
  %6 = getelementptr inbounds %struct.xfs_iext_cursor, ptr %icur, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !108
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8
  %call = tail call i32 @xfs_iread_extents(ptr noundef %tp, ptr noundef %ip, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %has_shared to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %has_shared, align 1
  %call1 = call zeroext i1 @xfs_iext_lookup_extent(ptr noundef %ip, ptr noundef %i_df, i64 noundef 0, ptr noundef nonnull %icur, ptr noundef nonnull %got) #8
  br i1 %call1, label %while.body.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end
  %br_startblock = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %got, i32 0, i32 1
  %br_state = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %got, i32 0, i32 3
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %2, i32 0, i32 24
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %got, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %next.while.body_crit_edge, %while.body.lr.ph
  %9 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %br_startblock, align 8
  %and.i = and i64 %10, 4503599627239424
  call void @__sanitizer_cov_trace_const_cmp8(i64 4503599627239424, i64 %and.i)
  %cmp.i.not = icmp eq i64 %and.i, 4503599627239424
  br i1 %cmp.i.not, label %while.body.next_crit_edge, label %lor.lhs.false

while.body.next_crit_edge:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %next

lor.lhs.false:                                    ; preds = %while.body
  %11 = ptrtoint ptr %br_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %br_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not = icmp eq i32 %12, 0
  br i1 %cmp.not, label %if.end6, label %lor.lhs.false.next_crit_edge

lor.lhs.false.next_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %next

if.end6:                                          ; preds = %lor.lhs.false
  %13 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sb_agblklog, align 4
  %sh_prom = zext i8 %14 to i64
  %shr = lshr i64 %10, %sh_prom
  %conv8 = trunc i64 %shr to i32
  %15 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %br_blockcount, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agbp.i) #8
  %17 = ptrtoint ptr %agbp.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -1 to ptr), ptr %agbp.i, align 4, !annotation !108
  %call.i = call i32 @xfs_alloc_read_agf(ptr noundef %2, ptr noundef %tp, i32 noundef %conv8, i32 noundef 0, ptr noundef nonnull %agbp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %xfs_reflink_find_shared.exit, label %xfs_reflink_find_shared.exit.thread

xfs_reflink_find_shared.exit.thread:              ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agbp.i) #8
  br label %cleanup

xfs_reflink_find_shared.exit:                     ; preds = %if.end6
  %conv16 = trunc i64 %16 to i32
  %conv = zext i8 %14 to i32
  %notmask.i = shl nsw i32 -1, %conv
  %sub.i = xor i32 %notmask.i, -1
  %18 = trunc i64 %10 to i32
  %conv15 = and i32 %sub.i, %18
  %19 = ptrtoint ptr %agbp.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %agbp.i, align 4
  %b_pag.i = getelementptr inbounds %struct.xfs_buf, ptr %20, i32 0, i32 13
  %21 = ptrtoint ptr %b_pag.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %b_pag.i, align 8
  %call1.i = call ptr @xfs_refcountbt_init_cursor(ptr noundef %2, ptr noundef %tp, ptr noundef %20, ptr noundef %22) #8
  %call3.i = call i32 @xfs_refcount_find_shared(ptr noundef %call1.i, i32 noundef %conv15, i32 noundef %conv16, ptr noundef nonnull %rbno, ptr noundef nonnull %rlen, i1 noundef zeroext false) #8
  call void @xfs_btree_del_cursor(ptr noundef %call1.i, i32 noundef %call3.i) #8
  %23 = ptrtoint ptr %agbp.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %agbp.i, align 4
  call void @xfs_trans_brelse(ptr noundef %tp, ptr noundef %24) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agbp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool18.not = icmp eq i32 %call3.i, 0
  br i1 %tobool18.not, label %if.end20, label %xfs_reflink_find_shared.exit.cleanup_crit_edge

xfs_reflink_find_shared.exit.cleanup_crit_edge:   ; preds = %xfs_reflink_find_shared.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %xfs_reflink_find_shared.exit
  %25 = ptrtoint ptr %rbno to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rbno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp21.not = icmp eq i32 %26, -1
  br i1 %cmp21.not, label %if.end20.next_crit_edge, label %if.then23

if.end20.next_crit_edge:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %next

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %has_shared to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %has_shared, align 1
  br label %cleanup

next:                                             ; preds = %if.end20.next_crit_edge, %lor.lhs.false.next_crit_edge, %while.body.next_crit_edge
  call void @xfs_iext_next(ptr noundef %i_df, ptr noundef nonnull %icur) #8
  %call.i48 = call zeroext i1 @xfs_iext_get_extent(ptr noundef %i_df, ptr noundef nonnull %icur, ptr noundef nonnull %got) #8
  br i1 %call.i48, label %next.while.body_crit_edge, label %next.cleanup_crit_edge

next.cleanup_crit_edge:                           ; preds = %next
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

next.while.body_crit_edge:                        ; preds = %next
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup:                                          ; preds = %next.cleanup_crit_edge, %if.then23, %xfs_reflink_find_shared.exit.cleanup_crit_edge, %xfs_reflink_find_shared.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then23 ], [ %call, %entry.cleanup_crit_edge ], [ %call.i, %xfs_reflink_find_shared.exit.thread ], [ 0, %if.end.cleanup_crit_edge ], [ %call3.i, %xfs_reflink_find_shared.exit.cleanup_crit_edge ], [ 0, %next.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %icur) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rlen) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rbno) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %got) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iread_extents(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_iext_lookup_extent(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_reflink_clear_inode_flag(ptr noundef %ip, ptr noundef %tpp) local_unnamed_addr #0 align 64 {
entry:
  %needs_flag = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %needs_flag) #8
  %0 = ptrtoint ptr %needs_flag to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %needs_flag, align 1, !annotation !108
  %i_diflags2.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 25
  %1 = ptrtoint ptr %i_diflags2.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %i_diflags2.i, align 8
  %and.i = and i64 %2, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !116

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 1444) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %3 = ptrtoint ptr %tpp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tpp, align 4
  %call2 = call i32 @xfs_reflink_inode_has_shared_extents(ptr noundef %4, ptr noundef %ip, ptr noundef nonnull %needs_flag)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %cond.end
  %5 = ptrtoint ptr %needs_flag to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %needs_flag, align 1, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  br i1 %tobool4.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call5 = tail call i32 @xfs_reflink_cancel_cow_blocks(ptr noundef %ip, ptr noundef %tpp, i64 noundef 0, i64 noundef 18014398511579134, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_xfs_reflink_unset_inode_flag(ptr noundef %ip)
  %7 = ptrtoint ptr %i_diflags2.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %i_diflags2.i, align 8
  %and = and i64 %8, -3
  store i64 %and, ptr %i_diflags2.i, align 8
  tail call void @xfs_inode_clear_cowblocks_tag(ptr noundef %ip) #8
  %9 = ptrtoint ptr %tpp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tpp, align 4
  tail call void @xfs_trans_log_inode(ptr noundef %10, ptr noundef %ip, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %call2, %cond.end.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %needs_flag) #8
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_reflink_unset_inode_flag(ptr noundef %ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_unset_inode_flag, i32 0, i32 1), ptr blockaddress(@trace_xfs_reflink_unset_inode_flag, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !110

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !155
  %call42 = tail call i32 @__traceiter_xfs_reflink_unset_inode_flag(ptr noundef null, ptr noundef %ip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !156
  %13 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !111

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_unset_inode_flag, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_unset_inode_flag, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_reflink_unset_inode_flag.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_reflink_unset_inode_flag.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 3338, ptr noundef nonnull @.str.10) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !115
  %31 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
define dso_local i32 @xfs_reflink_unshare(ptr noundef %ip, i64 noundef %offset, i64 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_diflags2.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 25
  %0 = ptrtoint ptr %i_diflags2.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_diflags2.i, align 8
  %and.i = and i64 %1, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %conv = trunc i64 %len to i32
  tail call fastcc void @trace_xfs_reflink_unshare(ptr noundef %ip, i64 noundef %offset, i32 noundef %conv)
  tail call void @inode_dio_wait(ptr noundef %i_vnode.i) #8
  %call2 = tail call i32 @iomap_file_unshare(ptr noundef %i_vnode.i, i64 noundef %offset, i64 noundef %len, ptr noundef nonnull @xfs_buffered_write_iomap_ops) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end4:                                          ; preds = %if.end
  %i_mapping = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 9
  %2 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_mapping, align 8
  %add = add i64 %offset, -1
  %sub = add i64 %add, %len
  %call5 = tail call i32 @filemap_write_and_wait_range(ptr noundef %3, i64 noundef %offset, i64 noundef %sub) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end8:                                          ; preds = %if.end4
  %call9 = tail call fastcc i32 @xfs_reflink_try_clear_inode_flag(ptr noundef %ip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

out:                                              ; preds = %if.end8.out_crit_edge, %if.end4.out_crit_edge, %if.end.out_crit_edge
  %error.0 = phi i32 [ %call2, %if.end.out_crit_edge ], [ %call5, %if.end4.out_crit_edge ], [ %call9, %if.end8.out_crit_edge ]
  %4 = tail call ptr @llvm.returnaddress(i32 0)
  %5 = ptrtoint ptr %4 to i32
  tail call fastcc void @trace_xfs_reflink_unshare_error(ptr noundef %ip, i32 noundef %error.0, i32 noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_reflink_unshare(ptr noundef %ip, i64 noundef %offset, i32 noundef %count) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_unshare, i32 0, i32 1), ptr blockaddress(@trace_xfs_reflink_unshare, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !110

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !157
  %call42 = tail call i32 @__traceiter_xfs_reflink_unshare(ptr noundef null, ptr noundef %ip, i64 noundef %offset, i32 noundef %count) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !158
  %13 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !111

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_unshare, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_unshare, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_reflink_unshare.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_reflink_unshare.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 3410, ptr noundef nonnull @.str.10) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !115
  %31 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
declare dso_local void @inode_dio_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_file_unshare(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_reflink_try_clear_inode_flag(ptr noundef %ip) unnamed_addr #5 align 64 {
entry:
  %tp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #8
  %2 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !108
  %m_resv = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 65
  %call = call i32 @xfs_trans_alloc(ptr noundef %1, ptr noundef %m_resv, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %tp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @xfs_ilock(ptr noundef %ip, i32 noundef 4) #8
  %3 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ijoin(ptr noundef %4, ptr noundef %ip, i32 noundef 0) #8
  %call1 = call i32 @xfs_reflink_clear_inode_flag(ptr noundef %ip, ptr noundef nonnull %tp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  %5 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tp, align 4
  br i1 %tobool2.not, label %if.end4, label %cancel

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @xfs_trans_commit(ptr noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup.sink.split_crit_edge, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cancel:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @xfs_trans_cancel(ptr noundef %6) #8
  br label %out

out:                                              ; preds = %cancel, %if.end4.out_crit_edge
  %error.0 = phi i32 [ %call1, %cancel ], [ %call5, %if.end4.out_crit_edge ]
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out, %if.end4.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %error.0, %out ], [ 0, %if.end4.cleanup.sink.split_crit_edge ]
  call void @xfs_iunlock(ptr noundef %ip, i32 noundef 4) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #8
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_reflink_unshare_error(ptr noundef %ip, i32 noundef %error, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_unshare_error, i32 0, i32 1), ptr blockaddress(@trace_xfs_reflink_unshare_error, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !110

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !159
  %call42 = tail call i32 @__traceiter_xfs_reflink_unshare_error(ptr noundef null, ptr noundef %ip, i32 noundef %error, i32 noundef %caller_ip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !160
  %13 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !111

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_unshare_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_unshare_error, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_reflink_unshare_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_reflink_unshare_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 3411, ptr noundef nonnull @.str.10) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !115
  %31 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_reflink_trim_around_shared(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmap_add_extent_unwritten_real(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_reflink_convert_cow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_reflink_cancel_cow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xfs_free_extent_later(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_reserve_quota_nblks(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_reflink_cancel_cow_range(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_reflink_cancel_cow_range_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_reflink_end_cow(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iext_count_may_overflow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfs_bunmapi(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_reflink_cow_remap(ptr noundef %ip, ptr noundef %irec) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_cow_remap, i32 0, i32 1), ptr blockaddress(@trace_xfs_reflink_cow_remap, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !110

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !161
  %call42 = tail call i32 @__traceiter_xfs_reflink_cow_remap(ptr noundef null, ptr noundef %ip, ptr noundef %irec) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !162
  %13 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !111

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_cow_remap, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_cow_remap, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_reflink_cow_remap.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_reflink_cow_remap.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 3421, ptr noundef nonnull @.str.10) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !115
  %31 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
declare dso_local void @xfs_bmap_map_extent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_mod_dquot_byino(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_reflink_cow_remap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_reflink_end_cow_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_reflink_update_inode_size(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_reflink_update_inode_size_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_reflink_remap_blocks(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_reflink_remap_extent_src(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_reflink_remap_extent_dest(ptr noundef %ip, ptr noundef %irec) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_remap_extent_dest, i32 0, i32 1), ptr blockaddress(@trace_xfs_reflink_remap_extent_dest, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !110

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !163
  %call42 = tail call i32 @__traceiter_xfs_reflink_remap_extent_dest(ptr noundef null, ptr noundef %ip, ptr noundef %irec) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !164
  %13 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !111

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_remap_extent_dest, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_remap_extent_dest, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_reflink_remap_extent_dest.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_reflink_remap_extent_dest.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 3377, ptr noundef nonnull @.str.10) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !115
  %31 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
declare dso_local void @xfs_bmap_unmap_extent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_refcount_decrease_extent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_refcount_increase_extent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_reflink_remap_extent_error(ptr noundef %ip, i32 noundef %error, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_remap_extent_error, i32 0, i32 1), ptr blockaddress(@trace_xfs_reflink_remap_extent_error, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !110

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !165
  %call42 = tail call i32 @__traceiter_xfs_reflink_remap_extent_error(ptr noundef null, ptr noundef %ip, i32 noundef %error, i32 noundef %caller_ip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !166
  %13 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !111

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_remap_extent_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_remap_extent_error, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_reflink_remap_extent_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_reflink_remap_extent_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 3375, ptr noundef nonnull @.str.10) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !115
  %31 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
declare dso_local i32 @__traceiter_xfs_reflink_remap_extent_dest(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_ag_resv_critical(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_reflink_remap_extent_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_reflink_remap_blocks_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_zero_eof(ptr noundef %ip, i64 noundef %offset, i32 noundef %count) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_zero_eof, i32 0, i32 1), ptr blockaddress(@trace_xfs_zero_eof, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !110

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !167
  %call42 = tail call i32 @__traceiter_xfs_zero_eof(ptr noundef null, ptr noundef %ip, i64 noundef %offset, i32 noundef %count) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !168
  %13 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !111

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_zero_eof, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_zero_eof, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_zero_eof.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_zero_eof.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1533, ptr noundef nonnull @.str.10) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !115
  %31 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
declare dso_local i32 @xfs_zero_range(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_zero_eof(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_lock_two_inodes(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_reflink_set_inode_flag(ptr noundef %ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_set_inode_flag, i32 0, i32 1), ptr blockaddress(@trace_xfs_reflink_set_inode_flag, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !110

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !169
  %call42 = tail call i32 @__traceiter_xfs_reflink_set_inode_flag(ptr noundef null, ptr noundef %ip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !170
  %13 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !111

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_set_inode_flag, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_set_inode_flag, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_reflink_set_inode_flag.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_reflink_set_inode_flag.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 3337, ptr noundef nonnull @.str.10) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !115
  %31 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
define internal fastcc void @trace_xfs_reflink_set_inode_flag_error(ptr noundef %ip, i32 noundef %error, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_set_inode_flag_error, i32 0, i32 1), ptr blockaddress(@trace_xfs_reflink_set_inode_flag_error, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !110

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !171
  %call42 = tail call i32 @__traceiter_xfs_reflink_set_inode_flag_error(ptr noundef null, ptr noundef %ip, i32 noundef %error, i32 noundef %caller_ip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !172
  %13 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !111

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !98) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_set_inode_flag_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_set_inode_flag_error, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_reflink_set_inode_flag_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_reflink_set_inode_flag_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 3372, ptr noundef nonnull @.str.10) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !115
  %31 = tail call i32 @llvm.read_register.i32(metadata !98) #8
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
declare dso_local i32 @__traceiter_xfs_reflink_set_inode_flag(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_reflink_set_inode_flag_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iext_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_reflink_unset_inode_flag(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_reflink_unshare(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_reflink_unshare_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !24, !25, !27, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !69, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97}
!llvm.named.register.sp = !{!98}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105, !106}
!llvm.ident = !{!107}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_reflink.c", i32 292, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/xfs_reflink.c", i32 362, i32 2}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/xfs/xfs_reflink.c", i32 364, i32 3}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/xfs/xfs_reflink.c", i32 481, i32 4}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/xfs/xfs_reflink.c", i32 537, i32 2}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/xfs/xfs_reflink.c", i32 1225, i32 3}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/xfs/xfs_reflink.c", i32 1227, i32 4}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/xfs/xfs_reflink.c", i32 1444, i32 2}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../fs/xfs/xfs_trace.h", i32 3414, i32 1}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!21 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../fs/xfs/xfs_reflink.c", i32 261, i32 7}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../fs/xfs/xfs_trace.h", i32 3417, i32 1}
!29 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../fs/xfs/xfs_trace.h", i32 3427, i32 1}
!32 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../fs/xfs/xfs_trace.h", i32 3419, i32 1}
!35 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../fs/xfs/xfs_trace.h", i32 3423, i32 1}
!38 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../fs/xfs/xfs_trace.h", i32 3420, i32 1}
!41 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/xfs/xfs_reflink.c", i32 643, i32 2}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../fs/xfs/xfs_trace.h", i32 3421, i32 1}
!46 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../fs/xfs/xfs_trace.h", i32 3424, i32 1}
!49 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../fs/xfs/xfs_trace.h", i32 3339, i32 1}
!52 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!55 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../fs/xfs/xfs_trace.h", i32 3373, i32 1}
!58 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../fs/xfs/xfs_trace.h", i32 3340, i32 1}
!61 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../fs/xfs/xfs_trace.h", i32 3376, i32 1}
!64 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!65 = !{ptr @.str.14, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/xfs/xfs_reflink.c", i32 1049, i32 2}
!67 = !{ptr @.str.15, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/xfs/xfs_reflink.c", i32 1057, i32 2}
!69 = !{ptr @.str.16, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/xfs/xfs_reflink.c", i32 1144, i32 3}
!71 = distinct !{null, !72, !"__already_done", i1 false, i1 false}
!72 = !{!"../fs/xfs/xfs_trace.h", i32 3377, i32 1}
!73 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../fs/xfs/xfs_trace.h", i32 3375, i32 1}
!76 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!77 = distinct !{null, !78, !"__already_done", i1 false, i1 false}
!78 = !{!"../fs/xfs/xfs_trace.h", i32 3374, i32 1}
!79 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!80 = distinct !{null, !81, !"__already_done", i1 false, i1 false}
!81 = !{!"../fs/xfs/xfs_trace.h", i32 1533, i32 1}
!82 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../fs/xfs/xfs_trace.h", i32 3337, i32 1}
!85 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!86 = distinct !{null, !87, !"__already_done", i1 false, i1 false}
!87 = !{!"../fs/xfs/xfs_trace.h", i32 3372, i32 1}
!88 = distinct !{null, !87, !"__warned", i1 false, i1 false}
!89 = distinct !{null, !90, !"__already_done", i1 false, i1 false}
!90 = !{!"../fs/xfs/xfs_trace.h", i32 3338, i32 1}
!91 = distinct !{null, !90, !"__warned", i1 false, i1 false}
!92 = distinct !{null, !93, !"__already_done", i1 false, i1 false}
!93 = !{!"../fs/xfs/xfs_trace.h", i32 3410, i32 1}
!94 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!95 = distinct !{null, !96, !"__already_done", i1 false, i1 false}
!96 = !{!"../fs/xfs/xfs_trace.h", i32 3411, i32 1}
!97 = distinct !{null, !96, !"__warned", i1 false, i1 false}
!98 = !{!"sp"}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 1, !"min_enum_size", i32 4}
!101 = !{i32 8, !"branch-target-enforcement", i32 0}
!102 = !{i32 8, !"sign-return-address", i32 0}
!103 = !{i32 8, !"sign-return-address-all", i32 0}
!104 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!105 = !{i32 7, !"uwtable", i32 1}
!106 = !{i32 7, !"frame-pointer", i32 2}
!107 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!108 = !{!"auto-init"}
!109 = !{i8 0, i8 2}
!110 = !{i64 2148288488, i64 2148288493, i64 2148288506, i64 2148288550, i64 2148288584, i64 2148288605}
!111 = !{!"branch_weights", i32 2000, i32 1}
!112 = !{i64 2164811261}
!113 = !{i64 2164811500}
!114 = !{i64 2149990581}
!115 = !{i64 2149991617}
!116 = !{!"branch_weights", i32 1, i32 2000}
!117 = !{i64 2148510285, i64 2148510565, i64 2148510899, i64 2148511233}
!118 = !{i64 2164867648}
!119 = !{i64 2164867873}
!120 = !{i64 2164978608}
!121 = !{i64 2164982892}
!122 = !{i64 2164885416}
!123 = !{i64 2164885669}
!124 = !{i64 2164942489}
!125 = !{i64 2164942760}
!126 = !{i64 2164903185}
!127 = !{i64 2164903420}
!128 = !{i64 2164961008}
!129 = !{i64 2164961261}
!130 = !{i64 1065180, i64 1065241}
!131 = !{i64 1067912}
!132 = !{i64 1068197}
!133 = !{i64 2153160700}
!134 = !{i64 2153160542}
!135 = !{i64 2153160870}
!136 = !{i64 2149824550}
!137 = !{i64 2164516819}
!138 = !{i64 2164517064}
!139 = !{i64 2153162631}
!140 = !{i64 2149716882}
!141 = !{i64 2149721814}
!142 = !{i64 2149743526}
!143 = !{i64 2149748418}
!144 = !{i64 2149824875}
!145 = !{i64 2149825200}
!146 = !{i64 2153174493}
!147 = !{i64 2164618187}
!148 = !{i64 2164618460}
!149 = !{i64 2164535626}
!150 = !{i64 2164535901}
!151 = !{i64 2164677618}
!152 = !{i64 2164677853}
!153 = !{i64 2164636955}
!154 = !{i64 2164637218}
!155 = !{i64 2164499064}
!156 = !{i64 2164499287}
!157 = !{i64 2164771619}
!158 = !{i64 2164771854}
!159 = !{i64 2164789288}
!160 = !{i64 2164789541}
!161 = !{i64 2164924443}
!162 = !{i64 2164924664}
!163 = !{i64 2164695531}
!164 = !{i64 2164695768}
!165 = !{i64 2164655453}
!166 = !{i64 2164655716}
!167 = !{i64 2159766368}
!168 = !{i64 2159770650}
!169 = !{i64 2164477826}
!170 = !{i64 2164478045}
!171 = !{i64 2164595325}
!172 = !{i64 2164595592}
