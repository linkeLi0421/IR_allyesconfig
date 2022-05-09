; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_symlink.c_pt.bc'
source_filename = "../fs/xfs/xfs_symlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_buf_ops = type { ptr, %union.anon.87, ptr, ptr, ptr }
%union.anon.87 = type { [2 x i32] }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.4 }
%union.anon.4 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
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
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.xfs_buf_map = type { i64, i32 }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.91, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.90, i16, i8, i32 }
%union.anon.90 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.llist_node = type { ptr }
%union.anon.91 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
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
%union.anon.78 = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.37 = type { %struct.callback_head }
%struct.xfs_da_geometry = type { i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xfs_trans = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, i32 }

@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"xfs_isilocked(ip, XFS_ILOCK_SHARED | XFS_ILOCK_EXCL)\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/xfs/xfs_symlink.c\00", [43 x i8] zeroinitializer }, align 32
@xfs_symlink_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@.str.2 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"symlink header does not match required off/len/owner (0x%x/Ox%x,0x%llx)\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pathlen == 0\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: inode (%llu) bad symlink length (%lld)\00", [53 x i8] zeroinitializer }, align 32
@__func__.xfs_readlink = private unnamed_addr constant [13 x i8] c"xfs_readlink\00", align 1
@.str.5 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"!ip->i_df.if_u1.if_data\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pathlen > 0\00", [20 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pathlen\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: inode (0x%llx) bad symlink length (%d)\00", [53 x i8] zeroinitializer }, align 32
@__func__.xfs_inactive_symlink = private unnamed_addr constant [21 x i8] c"xfs_inactive_symlink\00", align 1
@__tracepoint_xfs_readlink = external dso_local global %struct.tracepoint, align 4
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_readlink.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_symlink = external dso_local global %struct.tracepoint, align 4
@trace_xfs_symlink.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_inactive_symlink = external dso_local global %struct.tracepoint, align 4
@trace_xfs_inactive_symlink.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"!xfs_need_iread_extents(&ip->i_df)\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"ip->i_df.if_nextents > 0 && ip->i_df.if_nextents <= 2\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"done\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xfs_is_shutdown(mp)\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ip->i_df.if_bytes == 0\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 46, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 72, i32 1 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 89, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 119, i32 17 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 122, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 131, i32 7 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 189, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 494, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 497, i32 17 }
@___asan_gen_.53 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 754, i32 1 }
@___asan_gen_.56 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 108, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 271, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 393, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 401, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 447, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 456, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private constant [24 x i8] c"../fs/xfs/xfs_symlink.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 465, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_readlink_bmap_ilocked(ptr noundef %ip, ptr nocapture noundef writeonly %link) local_unnamed_addr #0 align 64 {
entry:
  %map.i = alloca %struct.xfs_buf_map, align 8
  %mval = alloca [3 x %struct.xfs_bmbt_irec], align 8
  %bp = alloca ptr, align 4
  %nmaps = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %mval) #9
  %2 = call ptr @memset(ptr %mval, i32 255, i32 96)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #9
  %3 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !64
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 18
  %4 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_disk_size, align 8
  %conv = trunc i64 %5 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nmaps) #9
  %6 = ptrtoint ptr %nmaps to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %nmaps, align 4
  %call = tail call zeroext i1 @xfs_isilocked(ptr noundef %ip, i32 noundef 12) #9
  br i1 %call, label %entry.cond.end_crit_edge, label %cond.false, !prof !65

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 46) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %call2 = tail call i32 @xfs_symlink_blocks(ptr noundef %1, i32 noundef %conv) #9
  %conv3 = sext i32 %call2 to i64
  %call4 = call i32 @xfs_bmapi_read(ptr noundef %ip, i64 noundef 0, i64 noundef %conv3, ptr noundef nonnull %mval, ptr noundef nonnull %nmaps, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %for.cond.preheader, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %cond.end
  %7 = ptrtoint ptr %nmaps to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nmaps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp124 = icmp sgt i32 %8, 0
  br i1 %cmp124, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 24
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 11
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 28
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 20
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 13
  %9 = getelementptr inbounds i8, ptr %map.i, i32 8
  %10 = call ptr @llvm.returnaddress(i32 0) #9
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end50.for.body_crit_edge, %for.body.lr.ph
  %offset.0127 = phi i32 [ 0, %for.body.lr.ph ], [ %add53, %if.end50.for.body_crit_edge ]
  %n.0126 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end50.for.body_crit_edge ]
  %pathlen.0125 = phi i32 [ %conv, %for.body.lr.ph ], [ %sub52, %if.end50.for.body_crit_edge ]
  %br_startblock = getelementptr [3 x %struct.xfs_bmbt_irec], ptr %mval, i32 0, i32 %n.0126, i32 1
  %11 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %br_startblock, align 8
  %13 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sb_agblklog, align 4
  %conv7 = zext i8 %14 to i32
  %sh_prom = zext i8 %14 to i64
  %shr = lshr i64 %12, %sh_prom
  %conv9 = and i64 %shr, 4294967295
  %15 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sb_agblocks, align 4
  %conv11 = zext i32 %16 to i64
  %mul = mul nuw i64 %conv9, %conv11
  %notmask.i = shl nsw i32 -1, %conv7
  %sub.i = xor i32 %notmask.i, -1
  %17 = trunc i64 %12 to i32
  %conv19 = and i32 %sub.i, %17
  %conv20 = zext i32 %conv19 to i64
  %add = add nuw i64 %mul, %conv20
  %18 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom22 = zext i8 %19 to i64
  %shl = shl i64 %add, %sh_prom22
  %br_blockcount = getelementptr [3 x %struct.xfs_bmbt_irec], ptr %mval, i32 0, i32 %n.0126, i32 2
  %20 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %br_blockcount, align 8
  %22 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sb_blocklog, align 8
  %sh_prom26 = zext i8 %23 to i64
  %shl27 = shl i64 %21, %sh_prom26
  %conv28 = trunc i64 %shl27 to i32
  %24 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %m_ddev_targp, align 8
  %conv29 = sext i32 %conv28 to i64
  %sub = add nsw i64 %conv29, 511
  %shr31 = lshr i64 %sub, 9
  %conv32 = trunc i64 %shr31 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map.i) #9
  %26 = ptrtoint ptr %9 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 -1, ptr %9, align 8
  %27 = ptrtoint ptr %map.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %shl, ptr %map.i, align 8
  store i32 %conv32, ptr %9, align 8
  %call.i = call i32 @xfs_buf_read_map(ptr noundef %25, ptr noundef nonnull %map.i, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %bp, ptr noundef nonnull @xfs_symlink_buf_ops, ptr noundef %10) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool34.not = icmp eq i32 %call.i, 0
  br i1 %tobool34.not, label %if.end36, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end36:                                         ; preds = %for.body
  %28 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %29, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %cond.neg = select i1 %tobool.i.not, i32 0, i32 -56
  %sub39 = add i32 %cond.neg, %conv28
  %30 = call i32 @llvm.smin.i32(i32 %pathlen.0125, i32 %sub39)
  %31 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %32, i32 0, i32 16
  %33 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %b_addr, align 4
  br i1 %tobool.i.not, label %if.end36.if.end50_crit_edge, label %if.then45

if.end36.if.end50_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then45:                                        ; preds = %if.end36
  %35 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %i_ino, align 8
  %call46 = call zeroext i1 @xfs_symlink_hdr_ok(i64 noundef %36, i32 noundef %offset.0127, i32 noundef %30, ptr noundef %32) #9
  br i1 %call46, label %if.end49, label %if.then47

if.then47:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %i_ino, align 8
  call void (ptr, ptr, ...) @xfs_alert(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %offset.0127, i32 noundef %30, i64 noundef %38) #9
  %39 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bp, align 4
  call void @xfs_buf_unlock(ptr noundef %40) #9
  call void @xfs_buf_rele(ptr noundef %40) #9
  br label %cleanup

if.end49:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %34, i32 56
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.end36.if.end50_crit_edge
  %cur_chunk.0 = phi ptr [ %add.ptr, %if.end49 ], [ %34, %if.end36.if.end50_crit_edge ]
  %add.ptr51 = getelementptr i8, ptr %link, i32 %offset.0127
  %41 = call ptr @memcpy(ptr %add.ptr51, ptr %cur_chunk.0, i32 %30)
  %sub52 = sub i32 %pathlen.0125, %30
  %add53 = add i32 %30, %offset.0127
  %42 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bp, align 4
  call void @xfs_buf_unlock(ptr noundef %43) #9
  call void @xfs_buf_rele(ptr noundef %43) #9
  %inc = add nuw nsw i32 %n.0126, 1
  %44 = ptrtoint ptr %nmaps to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nmaps, align 4
  %cmp = icmp slt i32 %inc, %45
  br i1 %cmp, label %if.end50.for.body_crit_edge, label %if.end50.for.end_crit_edge

if.end50.for.end_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end50.for.body_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end50.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %pathlen.0.lcssa = phi i32 [ %conv, %for.cond.preheader.for.end_crit_edge ], [ %sub52, %if.end50.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pathlen.0.lcssa)
  %cmp54 = icmp eq i32 %pathlen.0.lcssa, 0
  br i1 %cmp54, label %for.end.cond.end64_crit_edge, label %cond.false63, !prof !65

for.end.cond.end64_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end64

cond.false63:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 89) #9
  br label %cond.end64

cond.end64:                                       ; preds = %cond.false63, %for.end.cond.end64_crit_edge
  %46 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %i_disk_size, align 8
  %idxprom = trunc i64 %47 to i32
  %arrayidx66 = getelementptr i8, ptr %link, i32 %idxprom
  %48 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %arrayidx66, align 1
  br label %cleanup

cleanup:                                          ; preds = %cond.end64, %if.then47, %for.body.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %cond.end.cleanup_crit_edge ], [ -117, %if.then47 ], [ 0, %cond.end64 ], [ %call.i, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nmaps) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %mval) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_isilocked(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_symlink_blocks(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmapi_read(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_symlink_hdr_ok(i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_readlink(ptr noundef %ip, ptr nocapture noundef writeonly %link) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  tail call fastcc void @trace_xfs_readlink(ptr noundef %ip)
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 66
  %2 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %m_opstate.i, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @xfs_ilock(ptr noundef %ip, i32 noundef 8) #9
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 18
  %5 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %i_disk_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool.not = icmp eq i64 %6, 0
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end2

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 1024, i64 %6)
  %7 = icmp ugt i64 %6, 1024
  br i1 %7, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 4
  %8 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.xfs_readlink, i64 noundef %9, i64 noundef %6) #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 122) #9
  br label %out

if.end5:                                          ; preds = %if.end2
  %if_format = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8, i32 6
  %10 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp6 = icmp eq i8 %11, 1
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end5
  %if_u1 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8, i32 4
  %12 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %if_u1, align 4
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %__here, label %if.end16, !prof !66

__here:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ip, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !67
  tail call void @xfs_corruption_error(ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef %15, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 131, ptr noundef blockaddress(@xfs_readlink, %__here)) #9
  br label %out

if.end16:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %16 = trunc i64 %6 to i32
  %conv19 = add nuw nsw i32 %16, 1
  %17 = call ptr @memcpy(ptr %link, ptr %13, i32 %conv19)
  br label %out

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = tail call i32 @xfs_readlink_bmap_ilocked(ptr noundef %ip, ptr noundef %link)
  br label %out

out:                                              ; preds = %if.else, %if.end16, %__here, %if.then4, %if.end.out_crit_edge
  %error.0 = phi i32 [ -117, %if.then4 ], [ -117, %__here ], [ 0, %if.end16 ], [ %call20, %if.else ], [ -117, %if.end.out_crit_edge ]
  tail call void @xfs_iunlock(ptr noundef %ip, i32 noundef 8) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_readlink(ptr noundef %ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_readlink, i32 0, i32 1), ptr blockaddress(@trace_xfs_readlink, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !68

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !54) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !65

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !69
  %call42 = tail call i32 @__traceiter_xfs_readlink(ptr noundef null, ptr noundef %ip) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !70
  %13 = tail call i32 @llvm.read_register.i32(metadata !54) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !54) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !65

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !71
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_readlink, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_readlink, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_readlink.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_xfs_readlink.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 754, ptr noundef nonnull @.str.11) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !72
  %31 = tail call i32 @llvm.read_register.i32(metadata !54) #9
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
declare dso_local void @xfs_ilock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_corruption_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iunlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_symlink(ptr noundef %mnt_userns, ptr noundef %dp, ptr noundef %link_name, ptr noundef %target_path, i16 noundef zeroext %mode, ptr nocapture noundef writeonly %ipp) local_unnamed_addr #0 align 64 {
entry:
  %map.i = alloca %struct.xfs_buf_map, align 8
  %tp = alloca ptr, align 4
  %ip = alloca ptr, align 4
  %nmaps = alloca i32, align 4
  %mval = alloca [3 x %struct.xfs_bmbt_irec], align 8
  %bp = alloca ptr, align 4
  %udqp = alloca ptr, align 4
  %gdqp = alloca ptr, align 4
  %pdqp = alloca ptr, align 4
  %ino = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #9
  %2 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %tp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip) #9
  %3 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %ip, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nmaps) #9
  %4 = ptrtoint ptr %nmaps to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %nmaps, align 4, !annotation !64
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %mval) #9
  %5 = call ptr @memset(ptr %mval, i32 255, i32 96)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #9
  %6 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %udqp) #9
  %7 = ptrtoint ptr %udqp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %udqp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gdqp) #9
  %8 = ptrtoint ptr %gdqp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %gdqp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pdqp) #9
  %9 = ptrtoint ptr %pdqp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %pdqp, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ino) #9
  %10 = ptrtoint ptr %ino to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %ino, align 8, !annotation !64
  %11 = ptrtoint ptr %ipp to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %ipp, align 4
  tail call fastcc void @trace_xfs_symlink(ptr noundef %dp, ptr noundef %link_name)
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 66
  %12 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %m_opstate.i, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not = icmp eq i32 %14, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup216_crit_edge

entry.cleanup216_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup216

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @strlen(ptr noundef %target_path) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %call1)
  %cmp = icmp sgt i32 %call1, 1023
  br i1 %cmp, label %if.end.cleanup216_crit_edge, label %if.end3

if.end.cleanup216_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup216

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp4 = icmp sgt i32 %call1, 0
  br i1 %cmp4, label %if.end3.cond.end_crit_edge, label %cond.false, !prof !65

if.end3.cond.end_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 189) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end3.cond.end_crit_edge
  %i_diflags.i = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 24
  %15 = ptrtoint ptr %i_diflags.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %i_diflags.i, align 2
  %17 = and i16 %16, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.i = icmp eq i16 %17, 0
  br i1 %tobool.not.i, label %cond.end.xfs_get_initial_prid.exit_crit_edge, label %if.then.i

cond.end.xfs_get_initial_prid.exit_crit_edge:     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_get_initial_prid.exit

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %i_projid.i = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 20
  %18 = ptrtoint ptr %i_projid.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_projid.i, align 8
  br label %xfs_get_initial_prid.exit

xfs_get_initial_prid.exit:                        ; preds = %if.then.i, %cond.end.xfs_get_initial_prid.exit_crit_edge
  %retval.0.i = phi i32 [ %19, %if.then.i ], [ 0, %cond.end.xfs_get_initial_prid.exit_crit_edge ]
  %20 = tail call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 99
  %24 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cred.i, align 16
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %agg.tmp.sroa.0.0.copyload.i = load i32, ptr %fsuid.i, align 4
  %cmp.i.i.i.i = icmp eq ptr %mnt_userns, @init_user_ns
  br i1 %cmp.i.i.i.i, label %xfs_get_initial_prid.exit.mapped_fsuid.exit_crit_edge, label %if.end.i.i

xfs_get_initial_prid.exit.mapped_fsuid.exit_crit_edge: ; preds = %xfs_get_initial_prid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mapped_fsuid.exit

if.end.i.i:                                       ; preds = %xfs_get_initial_prid.exit
  call void @__sanitizer_cov_trace_pc() #11
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload.i, 0
  %call2.i.i = tail call i32 @from_kuid(ptr noundef %mnt_userns, [1 x i32] %.fca.0.insert.i) #9
  br label %mapped_fsuid.exit

mapped_fsuid.exit:                                ; preds = %if.end.i.i, %xfs_get_initial_prid.exit.mapped_fsuid.exit_crit_edge
  %retval.sroa.0.0.i.i = phi i32 [ %call2.i.i, %if.end.i.i ], [ %agg.tmp.sroa.0.0.copyload.i, %xfs_get_initial_prid.exit.mapped_fsuid.exit_crit_edge ]
  %27 = tail call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i336 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i336 to ptr
  %task.i337 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task.i337 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task.i337, align 8
  %cred.i338 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 99
  %31 = ptrtoint ptr %cred.i338 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cred.i338, align 16
  %fsgid.i = getelementptr inbounds %struct.cred, ptr %32, i32 0, i32 11
  %33 = ptrtoint ptr %fsgid.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %agg.tmp.sroa.0.0.copyload.i339 = load i32, ptr %fsgid.i, align 4
  br i1 %cmp.i.i.i.i, label %mapped_fsuid.exit.mapped_fsgid.exit_crit_edge, label %if.end.i.i343

mapped_fsuid.exit.mapped_fsgid.exit_crit_edge:    ; preds = %mapped_fsuid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mapped_fsgid.exit

if.end.i.i343:                                    ; preds = %mapped_fsuid.exit
  call void @__sanitizer_cov_trace_pc() #11
  %.fca.0.insert.i341 = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload.i339, 0
  %call2.i.i342 = tail call i32 @from_kgid(ptr noundef %mnt_userns, [1 x i32] %.fca.0.insert.i341) #9
  br label %mapped_fsgid.exit

mapped_fsgid.exit:                                ; preds = %if.end.i.i343, %mapped_fsuid.exit.mapped_fsgid.exit_crit_edge
  %retval.sroa.0.0.i.i344 = phi i32 [ %call2.i.i342, %if.end.i.i343 ], [ %agg.tmp.sroa.0.0.copyload.i339, %mapped_fsuid.exit.mapped_fsgid.exit_crit_edge ]
  %.fca.0.insert243 = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i.i, 0
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i.i344, 0
  %call13 = call i32 @xfs_qm_vop_dqalloc(ptr noundef %dp, [1 x i32] %.fca.0.insert243, [1 x i32] %.fca.0.insert, i32 noundef %retval.0.i, i32 noundef 16785420, ptr noundef nonnull %udqp, ptr noundef nonnull %gdqp, ptr noundef nonnull %pdqp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %mapped_fsgid.exit.cleanup216_crit_edge

mapped_fsgid.exit.cleanup216_crit_edge:           ; preds = %mapped_fsgid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup216

if.end16:                                         ; preds = %mapped_fsgid.exit
  %sb_inodesize = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 17
  %34 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %sb_inodesize, align 8
  %conv = zext i16 %35 to i32
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %36 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %37, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i345.not = icmp eq i64 %and.i, 0
  %cond.neg = select i1 %tobool.i345.not, i32 -100, i32 -176
  %sub = add nsw i32 %cond.neg, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %sub)
  %cmp19.not = icmp ugt i32 %call1, %sub
  br i1 %cmp19.not, label %if.else, label %if.end16.if.end24_crit_edge

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %call22 = call i32 @xfs_symlink_blocks(ptr noundef %1, i32 noundef %call1) #9
  %conv23 = sext i32 %call22 to i64
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.end16.if.end24_crit_edge
  %fs_blocks.0 = phi i64 [ %conv23, %if.else ], [ 0, %if.end16.if.end24_crit_edge ]
  %ialloc_blks = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 64, i32 12
  %38 = ptrtoint ptr %ialloc_blks to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ialloc_blks, align 4
  %40 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %m_features.i, align 8
  %and.i347 = and i64 %41, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i347)
  %tobool.i348.not = icmp eq i64 %and.i347, 0
  %cond27 = select i1 %tobool.i348.not, i32 1, i32 2
  %inobt_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 64, i32 10
  %42 = ptrtoint ptr %inobt_maxlevels to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %inobt_maxlevels, align 4
  %mul = mul i32 %cond27, %43
  %m_dir_geo = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 6
  %44 = ptrtoint ptr %m_dir_geo to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %m_dir_geo, align 4
  %fsbcount = getelementptr inbounds %struct.xfs_da_geometry, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %fsbcount to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fsbcount, align 4
  %m_alloc_mxr = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 34
  %48 = ptrtoint ptr %m_alloc_mxr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %m_alloc_mxr, align 4
  %m_alloc_mnr = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 35
  %50 = ptrtoint ptr %m_alloc_mnr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %m_alloc_mnr, align 4
  %sub33 = sub i32 %49, %51
  %add34 = add i32 %47, -1
  %sub35 = add i32 %add34, %sub33
  %div = udiv i32 %sub35, %sub33
  %m_bm_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 43
  %52 = ptrtoint ptr %m_bm_maxlevels to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %m_bm_maxlevels, align 8
  %sub42 = add i32 %53, -1
  %mul43 = mul i32 %sub42, %div
  %mul29333 = add i32 %mul43, %47
  %add45 = mul i32 %mul29333, 7
  %54 = trunc i64 %fs_blocks.0 to i32
  %add = add i32 %39, %54
  %add47 = add i32 %add, %mul
  %conv50 = add i32 %add47, %add45
  %tr_symlink = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 65, i32 5
  %55 = ptrtoint ptr %udqp to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %udqp, align 4
  %57 = ptrtoint ptr %gdqp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %gdqp, align 4
  %59 = ptrtoint ptr %pdqp to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdqp, align 4
  %call51 = call i32 @xfs_trans_alloc_icreate(ptr noundef %1, ptr noundef %tr_symlink, ptr noundef %56, ptr noundef %58, ptr noundef %60, i32 noundef %conv50, ptr noundef nonnull %tp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end24.out_release_dquots_crit_edge

if.end24.out_release_dquots_crit_edge:            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_release_dquots

if.end54:                                         ; preds = %if.end24
  call void @xfs_ilock(ptr noundef %dp, i32 noundef 83886084) #9
  %61 = ptrtoint ptr %i_diflags.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %i_diflags.i, align 2
  %63 = and i16 %62, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool56.not = icmp eq i16 %63, 0
  br i1 %tobool56.not, label %if.end58, label %if.end54.out_trans_cancel_crit_edge

if.end54.out_trans_cancel_crit_edge:              ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_trans_cancel

if.end58:                                         ; preds = %if.end54
  %64 = ptrtoint ptr %m_dir_geo to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %m_dir_geo, align 4
  %fsbcount60 = getelementptr inbounds %struct.xfs_da_geometry, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %fsbcount60 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %fsbcount60, align 4
  %mul61 = mul i32 %67, 7
  %call62 = call i32 @xfs_iext_count_may_overflow(ptr noundef %dp, i32 noundef 0, i32 noundef %mul61) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end58.out_trans_cancel_crit_edge

if.end58.out_trans_cancel_crit_edge:              ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_trans_cancel

if.end65:                                         ; preds = %if.end58
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %dp, i32 0, i32 4
  %68 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %i_ino, align 8
  %call66 = call i32 @xfs_dialloc(ptr noundef nonnull %tp, i64 noundef %69, i16 noundef zeroext -24576, ptr noundef nonnull %ino) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end73, label %if.end65.out_trans_cancel_crit_edge

if.end65.out_trans_cancel_crit_edge:              ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_trans_cancel

if.end73:                                         ; preds = %if.end65
  %70 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %tp, align 4
  %72 = ptrtoint ptr %ino to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %ino, align 8
  %74 = and i16 %mode, 4095
  %75 = or i16 %74, -24576
  %call72 = call i32 @xfs_init_new_inode(ptr noundef %mnt_userns, ptr noundef %71, ptr noundef %dp, i64 noundef %73, i16 noundef zeroext %75, i32 noundef 1, i32 noundef 0, i32 noundef %retval.0.i, i1 noundef zeroext false, ptr noundef nonnull %ip) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool74.not = icmp eq i32 %call72, 0
  br i1 %tobool74.not, label %if.end76, label %if.end73.out_trans_cancel_crit_edge

if.end73.out_trans_cancel_crit_edge:              ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_trans_cancel

if.end76:                                         ; preds = %if.end73
  %76 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ijoin(ptr noundef %77, ptr noundef %dp, i32 noundef 4) #9
  %78 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %tp, align 4
  %80 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ip, align 4
  %82 = ptrtoint ptr %udqp to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %udqp, align 4
  %84 = ptrtoint ptr %gdqp to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %gdqp, align 4
  %86 = ptrtoint ptr %pdqp to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pdqp, align 4
  call void @xfs_qm_vop_create_dqattach(ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #9
  %88 = ptrtoint ptr %ialloc_blks to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %ialloc_blks, align 4
  %90 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %m_features.i, align 8
  %and.i350 = and i64 %91, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i350)
  %tobool.i351.not = icmp eq i64 %and.i350, 0
  %cond81.neg = select i1 %tobool.i351.not, i32 -1, i32 -2
  %92 = ptrtoint ptr %inobt_maxlevels to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %inobt_maxlevels, align 4
  %mul84.neg383 = mul i32 %cond81.neg, %93
  %add85.neg = sub i32 %conv50, %89
  %sub86 = add i32 %add85.neg, %mul84.neg383
  %94 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ip, align 4
  %i_forkoff = getelementptr inbounds %struct.xfs_inode, ptr %95, i32 0, i32 23
  %96 = ptrtoint ptr %i_forkoff to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %i_forkoff, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %cmp88.not = icmp eq i8 %97, 0
  br i1 %cmp88.not, label %cond.false93, label %cond.true90

cond.true90:                                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  %conv87 = zext i8 %97 to i32
  %shl = shl nuw nsw i32 %conv87, 3
  br label %cond.end103

cond.false93:                                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  %98 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %95, align 8
  %sb_inodesize96 = getelementptr inbounds %struct.xfs_sb, ptr %99, i32 0, i32 17
  %100 = ptrtoint ptr %sb_inodesize96 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %sb_inodesize96, align 8
  %conv97 = zext i16 %101 to i32
  %m_features.i352 = getelementptr inbounds %struct.xfs_mount, ptr %99, i32 0, i32 61
  %102 = ptrtoint ptr %m_features.i352 to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %m_features.i352, align 8
  %and.i353 = and i64 %103, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i353)
  %tobool.i354.not = icmp eq i64 %and.i353, 0
  %cond101.neg = select i1 %tobool.i354.not, i32 -100, i32 -176
  %sub102 = add nsw i32 %cond101.neg, %conv97
  br label %cond.end103

cond.end103:                                      ; preds = %cond.false93, %cond.true90
  %cond104 = phi i32 [ %shl, %cond.true90 ], [ %sub102, %cond.false93 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %cond104)
  %cmp105.not = icmp ugt i32 %call1, %cond104
  br i1 %cmp105.not, label %if.else110, label %if.then107

if.then107:                                       ; preds = %cond.end103
  call void @__sanitizer_cov_trace_pc() #11
  %conv108 = sext i32 %call1 to i64
  call void @xfs_init_local_fork(ptr noundef %95, i32 noundef 0, ptr noundef %target_path, i64 noundef %conv108) #9
  %104 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ip, align 4
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %105, i32 0, i32 18
  %106 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %conv108, ptr %i_disk_size, align 8
  %if_format = getelementptr inbounds %struct.xfs_inode, ptr %105, i32 0, i32 8, i32 6
  %107 = ptrtoint ptr %if_format to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 1, ptr %if_format, align 2
  %108 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %tp, align 4
  call void @xfs_trans_log_inode(ptr noundef %109, ptr noundef %105, i32 noundef 3) #9
  br label %if.end191

if.else110:                                       ; preds = %cond.end103
  %110 = ptrtoint ptr %nmaps to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 3, ptr %nmaps, align 4
  %111 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %tp, align 4
  %call111 = call i32 @xfs_bmapi_write(ptr noundef %112, ptr noundef %95, i64 noundef 0, i64 noundef %fs_blocks.0, i32 noundef 2, i32 noundef %sub86, ptr noundef nonnull %mval, ptr noundef nonnull %nmaps) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end114, label %if.else110.out_trans_cancel_crit_edge

if.else110.out_trans_cancel_crit_edge:            ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_trans_cancel

if.end114:                                        ; preds = %if.else110
  %conv117 = sub i32 %sub86, %54
  %conv118 = sext i32 %call1 to i64
  %113 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ip, align 4
  %i_disk_size119 = getelementptr inbounds %struct.xfs_inode, ptr %114, i32 0, i32 18
  %115 = ptrtoint ptr %i_disk_size119 to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %conv118, ptr %i_disk_size119, align 8
  %116 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %tp, align 4
  call void @xfs_trans_log_inode(ptr noundef %117, ptr noundef %114, i32 noundef 1) #9
  %118 = ptrtoint ptr %nmaps to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %nmaps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %cmp120378 = icmp sgt i32 %119, 0
  br i1 %cmp120378, label %for.body.lr.ph, label %if.end114.cond.false186_crit_edge, !prof !73

if.end114.cond.false186_crit_edge:                ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false186

for.body.lr.ph:                                   ; preds = %if.end114
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 24
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 11
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 28
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 20
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 13
  %120 = getelementptr inbounds i8, ptr %map.i, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %offset.0382 = phi i32 [ 0, %for.body.lr.ph ], [ %add173, %for.inc.for.body_crit_edge ]
  %n.0381 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %cur_chunk.0380 = phi ptr [ %target_path, %for.body.lr.ph ], [ %add.ptr171, %for.inc.for.body_crit_edge ]
  %pathlen.0379 = phi i32 [ %call1, %for.body.lr.ph ], [ %sub172, %for.inc.for.body_crit_edge ]
  %br_startblock = getelementptr [3 x %struct.xfs_bmbt_irec], ptr %mval, i32 0, i32 %n.0381, i32 1
  %121 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %br_startblock, align 8
  %123 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %sb_agblklog, align 4
  %conv124 = zext i8 %124 to i32
  %sh_prom = zext i8 %124 to i64
  %shr = lshr i64 %122, %sh_prom
  %conv126 = and i64 %shr, 4294967295
  %125 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %sb_agblocks, align 4
  %conv128 = zext i32 %126 to i64
  %mul129 = mul nuw i64 %conv126, %conv128
  %notmask.i = shl nsw i32 -1, %conv124
  %sub.i = xor i32 %notmask.i, -1
  %127 = trunc i64 %122 to i32
  %conv138 = and i32 %sub.i, %127
  %conv139 = zext i32 %conv138 to i64
  %add140 = add nuw i64 %mul129, %conv139
  %128 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom142 = zext i8 %129 to i64
  %shl143 = shl i64 %add140, %sh_prom142
  %br_blockcount = getelementptr [3 x %struct.xfs_bmbt_irec], ptr %mval, i32 0, i32 %n.0381, i32 2
  %130 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %br_blockcount, align 8
  %132 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %sb_blocklog, align 8
  %sh_prom147 = zext i8 %133 to i64
  %shl148 = shl i64 %131, %sh_prom147
  %conv149 = trunc i64 %shl148 to i32
  %134 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %tp, align 4
  %136 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %m_ddev_targp, align 8
  %conv150 = sext i32 %conv149 to i64
  %sub152 = add nsw i64 %conv150, 511
  %shr153 = lshr i64 %sub152, 9
  %conv154 = trunc i64 %shr153 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map.i) #9
  %138 = ptrtoint ptr %120 to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 -1, ptr %120, align 8
  %139 = ptrtoint ptr %map.i to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 %shl143, ptr %map.i, align 8
  store i32 %conv154, ptr %120, align 8
  %call.i = call i32 @xfs_trans_get_buf_map(ptr noundef %135, ptr noundef %137, ptr noundef nonnull %map.i, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %bp) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool156.not = icmp eq i32 %call.i, 0
  br i1 %tobool156.not, label %for.inc, label %for.body.out_trans_cancel_crit_edge

for.body.out_trans_cancel_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_trans_cancel

for.inc:                                          ; preds = %for.body
  %140 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %bp, align 4
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %141, i32 0, i32 35
  %142 = ptrtoint ptr %b_ops to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr @xfs_symlink_buf_ops, ptr %b_ops, align 4
  %143 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %m_features.i, align 8
  %and.i356 = and i64 %144, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i356)
  %tobool.i357.not = icmp eq i64 %and.i356, 0
  %cond161.neg = select i1 %tobool.i357.not, i32 0, i32 -56
  %sub162 = add i32 %cond161.neg, %conv149
  %145 = call i32 @llvm.smin.i32(i32 %sub162, i32 %pathlen.0379)
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %141, i32 0, i32 16
  %146 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %b_addr, align 4
  %148 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %ip, align 4
  %i_ino169 = getelementptr inbounds %struct.xfs_inode, ptr %149, i32 0, i32 4
  %150 = ptrtoint ptr %i_ino169 to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %i_ino169, align 8
  %call170 = call i32 @xfs_symlink_hdr_set(ptr noundef %1, i64 noundef %151, i32 noundef %offset.0382, i32 noundef %145, ptr noundef %141) #9
  %add.ptr = getelementptr i8, ptr %147, i32 %call170
  %152 = call ptr @memcpy(ptr %add.ptr, ptr %cur_chunk.0380, i32 %145)
  %add.ptr171 = getelementptr i8, ptr %cur_chunk.0380, i32 %145
  %sub172 = sub i32 %pathlen.0379, %145
  %add173 = add i32 %145, %offset.0382
  %153 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %tp, align 4
  %155 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %bp, align 4
  call void @xfs_trans_buf_set_type(ptr noundef %154, ptr noundef %156, i32 noundef 9) #9
  %157 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %tp, align 4
  %159 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %bp, align 4
  %add.ptr174 = getelementptr i8, ptr %add.ptr, i32 -1
  %add.ptr175 = getelementptr i8, ptr %add.ptr174, i32 %145
  %b_addr176 = getelementptr inbounds %struct.xfs_buf, ptr %160, i32 0, i32 16
  %161 = ptrtoint ptr %b_addr176 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %b_addr176, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr175 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %162 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @xfs_trans_log_buf(ptr noundef %158, ptr noundef %160, i32 noundef 0, i32 noundef %sub.ptr.sub) #9
  %inc = add nuw nsw i32 %n.0381, 1
  %163 = ptrtoint ptr %nmaps to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %nmaps, align 4
  %cmp120 = icmp slt i32 %inc, %164
  br i1 %cmp120, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub172)
  %phi.cmp = icmp eq i32 %sub172, 0
  br i1 %phi.cmp, label %for.end.if.end191_crit_edge, label %for.end.cond.false186_crit_edge, !prof !65

for.end.cond.false186_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false186

for.end.if.end191_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end191

cond.false186:                                    ; preds = %for.end.cond.false186_crit_edge, %if.end114.cond.false186_crit_edge
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 315) #9
  br label %if.end191

if.end191:                                        ; preds = %cond.false186, %for.end.if.end191_crit_edge, %if.then107
  %resblks.1 = phi i32 [ %sub86, %if.then107 ], [ %conv117, %for.end.if.end191_crit_edge ], [ %conv117, %cond.false186 ]
  %165 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %ip, align 4
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %166, i32 0, i32 27
  %i_disk_size193 = getelementptr inbounds %struct.xfs_inode, ptr %166, i32 0, i32 18
  %167 = ptrtoint ptr %i_disk_size193 to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %i_disk_size193, align 8
  call fastcc void @i_size_write(ptr noundef %i_vnode.i, i64 noundef %168)
  %169 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %tp, align 4
  %171 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %ip, align 4
  %i_ino194 = getelementptr inbounds %struct.xfs_inode, ptr %172, i32 0, i32 4
  %173 = ptrtoint ptr %i_ino194 to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %i_ino194, align 8
  %call195 = call i32 @xfs_dir_createname(ptr noundef %170, ptr noundef %dp, ptr noundef %link_name, i64 noundef %174, i32 noundef %resblks.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195)
  %tobool196.not = icmp eq i32 %call195, 0
  br i1 %tobool196.not, label %if.end198, label %if.end191.out_trans_cancel_crit_edge

if.end191.out_trans_cancel_crit_edge:             ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_trans_cancel

if.end198:                                        ; preds = %if.end191
  %175 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ichgtime(ptr noundef %176, ptr noundef %dp, i32 noundef 3) #9
  %177 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %tp, align 4
  call void @xfs_trans_log_inode(ptr noundef %178, ptr noundef %dp, i32 noundef 1) #9
  %179 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %m_features.i, align 8
  %181 = and i64 %180, 13510798882111488
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %181)
  %.not = icmp eq i64 %181, 0
  br i1 %.not, label %if.end198.if.end205_crit_edge, label %if.then203

if.end198.if.end205_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end205

if.then203:                                       ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #11
  %182 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %tp, align 4
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %183, i32 0, i32 7
  %184 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %t_flags, align 4
  %or204 = or i32 %185, 8
  store i32 %or204, ptr %t_flags, align 4
  br label %if.end205

if.end205:                                        ; preds = %if.then203, %if.end198.if.end205_crit_edge
  %186 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %tp, align 4
  %call206 = call i32 @xfs_trans_commit(ptr noundef %187) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call206)
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %if.end209, label %if.end205.out_release_inode_crit_edge

if.end205.out_release_inode_crit_edge:            ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_release_inode

if.end209:                                        ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #11
  %188 = ptrtoint ptr %udqp to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %udqp, align 4
  call void @xfs_qm_dqrele(ptr noundef %189) #9
  %190 = ptrtoint ptr %gdqp to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %gdqp, align 4
  call void @xfs_qm_dqrele(ptr noundef %191) #9
  %192 = ptrtoint ptr %pdqp to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %pdqp, align 4
  call void @xfs_qm_dqrele(ptr noundef %193) #9
  %194 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %ip, align 4
  %196 = ptrtoint ptr %ipp to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %195, ptr %ipp, align 4
  br label %cleanup216

out_trans_cancel:                                 ; preds = %if.end191.out_trans_cancel_crit_edge, %for.body.out_trans_cancel_crit_edge, %if.else110.out_trans_cancel_crit_edge, %if.end73.out_trans_cancel_crit_edge, %if.end65.out_trans_cancel_crit_edge, %if.end58.out_trans_cancel_crit_edge, %if.end54.out_trans_cancel_crit_edge
  %unlock_dp_on_error.0.off0 = phi i1 [ true, %if.end58.out_trans_cancel_crit_edge ], [ true, %if.end73.out_trans_cancel_crit_edge ], [ false, %if.end191.out_trans_cancel_crit_edge ], [ true, %if.end54.out_trans_cancel_crit_edge ], [ false, %if.else110.out_trans_cancel_crit_edge ], [ true, %if.end65.out_trans_cancel_crit_edge ], [ false, %for.body.out_trans_cancel_crit_edge ]
  %error.3 = phi i32 [ %call62, %if.end58.out_trans_cancel_crit_edge ], [ %call72, %if.end73.out_trans_cancel_crit_edge ], [ %call195, %if.end191.out_trans_cancel_crit_edge ], [ -1, %if.end54.out_trans_cancel_crit_edge ], [ %call111, %if.else110.out_trans_cancel_crit_edge ], [ %call66, %if.end65.out_trans_cancel_crit_edge ], [ %call.i, %for.body.out_trans_cancel_crit_edge ]
  %197 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %tp, align 4
  call void @xfs_trans_cancel(ptr noundef %198) #9
  br label %out_release_inode

out_release_inode:                                ; preds = %out_trans_cancel, %if.end205.out_release_inode_crit_edge
  %unlock_dp_on_error.1.off0 = phi i1 [ %unlock_dp_on_error.0.off0, %out_trans_cancel ], [ false, %if.end205.out_release_inode_crit_edge ]
  %error.4 = phi i32 [ %error.3, %out_trans_cancel ], [ %call206, %if.end205.out_release_inode_crit_edge ]
  %199 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %ip, align 4
  %tobool210.not = icmp eq ptr %200, null
  br i1 %tobool210.not, label %out_release_inode.out_release_dquots_crit_edge, label %if.then211

out_release_inode.out_release_dquots_crit_edge:   ; preds = %out_release_inode
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_release_dquots

if.then211:                                       ; preds = %out_release_inode
  call void @__sanitizer_cov_trace_pc() #11
  %i_flags_lock.i.i = getelementptr inbounds %struct.xfs_inode, ptr %200, i32 0, i32 15
  call void @_raw_spin_lock(ptr noundef %i_flags_lock.i.i) #9
  %i_flags.i.i = getelementptr inbounds %struct.xfs_inode, ptr %200, i32 0, i32 16
  %201 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %i_flags.i.i, align 8
  %and.i.i364 = and i32 %202, -9
  store i32 %and.i.i364, ptr %i_flags.i.i, align 8
  call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i.i) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !74
  %i_vnode.i.i = getelementptr inbounds %struct.xfs_inode, ptr %200, i32 0, i32 27
  call void @unlock_new_inode(ptr noundef %i_vnode.i.i) #9
  %203 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %ip, align 4
  call void @xfs_irele(ptr noundef %204) #9
  br label %out_release_dquots

out_release_dquots:                               ; preds = %if.then211, %out_release_inode.out_release_dquots_crit_edge, %if.end24.out_release_dquots_crit_edge
  %unlock_dp_on_error.2.off0 = phi i1 [ false, %if.end24.out_release_dquots_crit_edge ], [ %unlock_dp_on_error.1.off0, %if.then211 ], [ %unlock_dp_on_error.1.off0, %out_release_inode.out_release_dquots_crit_edge ]
  %error.5 = phi i32 [ %call51, %if.end24.out_release_dquots_crit_edge ], [ %error.4, %if.then211 ], [ %error.4, %out_release_inode.out_release_dquots_crit_edge ]
  %205 = ptrtoint ptr %udqp to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %udqp, align 4
  call void @xfs_qm_dqrele(ptr noundef %206) #9
  %207 = ptrtoint ptr %gdqp to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %gdqp, align 4
  call void @xfs_qm_dqrele(ptr noundef %208) #9
  %209 = ptrtoint ptr %pdqp to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %pdqp, align 4
  call void @xfs_qm_dqrele(ptr noundef %210) #9
  br i1 %unlock_dp_on_error.2.off0, label %if.then214, label %out_release_dquots.cleanup216_crit_edge

out_release_dquots.cleanup216_crit_edge:          ; preds = %out_release_dquots
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup216

if.then214:                                       ; preds = %out_release_dquots
  call void @__sanitizer_cov_trace_pc() #11
  call void @xfs_iunlock(ptr noundef %dp, i32 noundef 4) #9
  br label %cleanup216

cleanup216:                                       ; preds = %if.then214, %out_release_dquots.cleanup216_crit_edge, %if.end209, %mapped_fsgid.exit.cleanup216_crit_edge, %if.end.cleanup216_crit_edge, %entry.cleanup216_crit_edge
  %retval.0 = phi i32 [ 0, %if.end209 ], [ -5, %entry.cleanup216_crit_edge ], [ -36, %if.end.cleanup216_crit_edge ], [ %call13, %mapped_fsgid.exit.cleanup216_crit_edge ], [ %error.5, %if.then214 ], [ %error.5, %out_release_dquots.cleanup216_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ino) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pdqp) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gdqp) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %udqp) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %mval) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nmaps) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #9
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_symlink(ptr noundef %dp, ptr noundef %xfs_symlink) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_symlink, i32 0, i32 1), ptr blockaddress(@trace_xfs_symlink, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !68

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !54) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !65

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !75
  %call42 = tail call i32 @__traceiter_xfs_symlink(ptr noundef null, ptr noundef %dp, ptr noundef %xfs_symlink) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
  %13 = tail call i32 @llvm.read_register.i32(metadata !54) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !54) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !65

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !71
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_symlink, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_symlink, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_symlink.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_xfs_symlink.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 965, ptr noundef nonnull @.str.11) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !72
  %31 = tail call i32 @llvm.read_register.i32(metadata !54) #9
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

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_qm_vop_dqalloc(ptr noundef, [1 x i32], [1 x i32], i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_alloc_icreate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iext_count_may_overflow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dialloc(ptr noundef, i64 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_init_new_inode(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_ijoin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_qm_vop_create_dqattach(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_init_local_fork(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_log_inode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmapi_write(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_symlink_hdr_set(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_buf_set_type(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_log_buf(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i_size_write(ptr noundef %inode, i64 noundef %i_size) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !77
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %8, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !78
  %9 = tail call i32 @llvm.read_register.i32(metadata !54) #9
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !79
  %18 = tail call i32 @llvm.read_register.i32(metadata !54) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !54) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i.i9.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %29, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !80
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !81
  %37 = tail call i32 @llvm.read_register.i32(metadata !54) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !65

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 271, i32 noundef 9, ptr noundef null) #9
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %41 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !82
  %dep_map.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %43 = tail call ptr @llvm.returnaddress(i32 0) #9
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %44) #9
  %i_size8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %45 = ptrtoint ptr %i_size8 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %i_size, ptr %i_size8, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %44) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !83
  %46 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i = add i32 %47, 1
  store i32 %inc.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !84
  %48 = tail call i32 @llvm.read_register.i32(metadata !54) #9
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
declare dso_local i32 @xfs_dir_createname(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_ichgtime(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_qm_dqrele(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_irele(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_inactive_symlink(ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  tail call fastcc void @trace_xfs_inactive_symlink(ptr noundef %ip)
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 66
  %2 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %m_opstate.i, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @xfs_ilock(ptr noundef %ip, i32 noundef 4) #9
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 18
  %5 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %i_disk_size, align 8
  %conv = trunc i64 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool.not = icmp eq i32 %conv, 0
  br i1 %tobool.not, label %cond.end.thread, label %cond.end, !prof !66

cond.end.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 494) #9
  br label %if.then6

cond.end:                                         ; preds = %if.end
  %7 = add i32 %conv, -1025
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1024, i32 %7)
  %8 = icmp ult i32 %7, -1024
  br i1 %8, label %cond.end.if.then6_crit_edge, label %if.end7

cond.end.if.then6_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.then6:                                         ; preds = %cond.end.if.then6_crit_edge, %cond.end.thread
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 4
  %9 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.xfs_inactive_symlink, i64 noundef %10, i32 noundef %conv) #9
  tail call void @xfs_iunlock(ptr noundef %ip, i32 noundef 4) #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 500) #9
  br label %cleanup

if.end7:                                          ; preds = %cond.end
  %if_format = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8, i32 6
  %11 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp9 = icmp eq i8 %12, 1
  tail call void @xfs_iunlock(ptr noundef %ip, i32 noundef 4) #9
  br i1 %cmp9, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call fastcc i32 @xfs_inactive_symlink_rmt(ptr noundef %ip)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end7.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -117, %if.then6 ], [ %call13, %if.end12 ], [ -5, %entry.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_inactive_symlink(ptr noundef %ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inactive_symlink, i32 0, i32 1), ptr blockaddress(@trace_xfs_inactive_symlink, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !68

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !54) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !65

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !85
  %call42 = tail call i32 @__traceiter_xfs_inactive_symlink(ptr noundef null, ptr noundef %ip) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !86
  %13 = tail call i32 @llvm.read_register.i32(metadata !54) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !54) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !65

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !71
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inactive_symlink, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inactive_symlink, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_inactive_symlink.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_xfs_inactive_symlink.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 755, ptr noundef nonnull @.str.11) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !72
  %31 = tail call i32 @llvm.read_register.i32(metadata !54) #9
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
define internal fastcc i32 @xfs_inactive_symlink_rmt(ptr noundef %ip) unnamed_addr #5 align 64 {
entry:
  %map.i = alloca %struct.xfs_buf_map, align 8
  %bp = alloca ptr, align 4
  %done = alloca i32, align 4
  %mval = alloca [3 x %struct.xfs_bmbt_irec], align 8
  %nmaps = alloca i32, align 4
  %tp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #9
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %done) #9
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %mval) #9
  %1 = call ptr @memset(ptr %mval, i32 255, i32 96)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nmaps) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #9
  %2 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !64
  %3 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ip, align 8
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8
  %if_format.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8, i32 6
  %5 = ptrtoint ptr %if_format.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %if_format.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp.i = icmp eq i8 %6, 3
  br i1 %cmp.i, label %xfs_need_iread_extents.exit, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

xfs_need_iread_extents.exit:                      ; preds = %entry
  %if_height.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8, i32 3
  %7 = ptrtoint ptr %if_height.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %if_height.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp2.i = icmp eq i32 %8, 0
  br i1 %cmp2.i, label %cond.false, label %xfs_need_iread_extents.exit.cond.end_crit_edge, !prof !66

xfs_need_iread_extents.exit.cond.end_crit_edge:   ; preds = %xfs_need_iread_extents.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %xfs_need_iread_extents.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 393) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %xfs_need_iread_extents.exit.cond.end_crit_edge, %entry.cond.end_crit_edge
  %if_nextents = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8, i32 7
  %9 = ptrtoint ptr %if_nextents to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %if_nextents, align 4
  %11 = add i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %cond.end.cond.end15_crit_edge, label %cond.false14, !prof !65

cond.end.cond.end15_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end15

cond.false14:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 401) #9
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false14, %cond.end.cond.end15_crit_edge
  %tr_itruncate = getelementptr inbounds %struct.xfs_mount, ptr %4, i32 0, i32 65, i32 1
  %call16 = call i32 @xfs_trans_alloc(ptr noundef %4, ptr noundef %tr_itruncate, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %tp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end, label %cond.end15.cleanup_crit_edge

cond.end15.cleanup_crit_edge:                     ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %cond.end15
  call void @xfs_ilock(ptr noundef %ip, i32 noundef 4) #9
  %13 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ijoin(ptr noundef %14, ptr noundef %ip, i32 noundef 0) #9
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 18
  %15 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %i_disk_size, align 8
  %conv = trunc i64 %16 to i32
  store i64 0, ptr %i_disk_size, align 8
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %17 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %i_vnode.i, align 8
  %19 = and i16 %18, 4095
  %20 = or i16 %19, -32768
  store i16 %20, ptr %i_vnode.i, align 8
  %21 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tp, align 4
  call void @xfs_trans_log_inode(ptr noundef %22, ptr noundef %ip, i32 noundef 1) #9
  %23 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %done, align 4
  %24 = ptrtoint ptr %nmaps to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %nmaps, align 4
  %call24 = call i32 @xfs_symlink_blocks(ptr noundef %4, i32 noundef %conv) #9
  %conv25 = sext i32 %call24 to i64
  %call26 = call i32 @xfs_bmapi_read(ptr noundef %ip, i64 noundef 0, i64 noundef %conv25, ptr noundef nonnull %mval, ptr noundef nonnull %nmaps, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %for.cond.preheader, label %if.end.error_trans_cancel_crit_edge

if.end.error_trans_cancel_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_trans_cancel

for.cond.preheader:                               ; preds = %if.end
  %25 = ptrtoint ptr %nmaps to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nmaps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp30159 = icmp sgt i32 %26, 0
  br i1 %cmp30159, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %4, i32 0, i32 13
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %4, i32 0, i32 24
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %4, i32 0, i32 11
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %4, i32 0, i32 28
  %27 = getelementptr inbounds i8, ptr %map.i, i32 8
  br label %for.body

for.body:                                         ; preds = %if.end58.for.body_crit_edge, %for.body.lr.ph
  %i.0160 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end58.for.body_crit_edge ]
  %28 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tp, align 4
  %30 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %m_ddev_targp, align 8
  %br_startblock = getelementptr [3 x %struct.xfs_bmbt_irec], ptr %mval, i32 0, i32 %i.0160, i32 1
  %32 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %br_startblock, align 8
  %34 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %sb_agblklog, align 4
  %conv32 = zext i8 %35 to i32
  %sh_prom = zext i8 %35 to i64
  %shr = lshr i64 %33, %sh_prom
  %conv34 = and i64 %shr, 4294967295
  %36 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sb_agblocks, align 4
  %conv36 = zext i32 %37 to i64
  %mul = mul nuw i64 %conv34, %conv36
  %notmask.i = shl nsw i32 -1, %conv32
  %sub.i = xor i32 %notmask.i, -1
  %38 = trunc i64 %33 to i32
  %conv45 = and i32 %sub.i, %38
  %conv46 = zext i32 %conv45 to i64
  %add = add nuw i64 %mul, %conv46
  %39 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom48 = zext i8 %40 to i64
  %shl = shl i64 %add, %sh_prom48
  %br_blockcount = getelementptr [3 x %struct.xfs_bmbt_irec], ptr %mval, i32 0, i32 %i.0160, i32 2
  %41 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %br_blockcount, align 8
  %shl53 = shl i64 %42, %sh_prom48
  %conv54 = trunc i64 %shl53 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map.i) #9
  %43 = ptrtoint ptr %27 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 -1, ptr %27, align 8
  %44 = ptrtoint ptr %map.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %shl, ptr %map.i, align 8
  store i32 %conv54, ptr %27, align 8
  %call.i = call i32 @xfs_trans_get_buf_map(ptr noundef %29, ptr noundef %31, ptr noundef nonnull %map.i, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %bp) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool56.not = icmp eq i32 %call.i, 0
  br i1 %tobool56.not, label %if.end58, label %for.body.error_trans_cancel_crit_edge

for.body.error_trans_cancel_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_trans_cancel

if.end58:                                         ; preds = %for.body
  %45 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tp, align 4
  %47 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bp, align 4
  call void @xfs_trans_binval(ptr noundef %46, ptr noundef %48) #9
  %inc = add nuw nsw i32 %i.0160, 1
  %49 = ptrtoint ptr %nmaps to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nmaps, align 4
  %cmp30 = icmp slt i32 %inc, %50
  br i1 %cmp30, label %if.end58.for.body_crit_edge, label %if.end58.for.end_crit_edge

if.end58.for.end_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end58.for.body_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end58.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ %26, %for.cond.preheader.for.end_crit_edge ], [ %50, %if.end58.for.end_crit_edge ]
  %51 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tp, align 4
  %conv59 = sext i32 %conv to i64
  %call60 = call i32 @xfs_bunmapi(ptr noundef %52, ptr noundef %ip, i64 noundef 0, i64 noundef %conv59, i32 noundef 0, i32 noundef %.lcssa, ptr noundef nonnull %done) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %for.end.error_trans_cancel_crit_edge

for.end.error_trans_cancel_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_trans_cancel

if.end63:                                         ; preds = %for.end
  %53 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool64.not = icmp eq i32 %54, 0
  br i1 %tobool64.not, label %cond.false72, label %if.end63.cond.end73_crit_edge, !prof !66

if.end63.cond.end73_crit_edge:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end73

cond.false72:                                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 447) #9
  br label %cond.end73

cond.end73:                                       ; preds = %cond.false72, %if.end63.cond.end73_crit_edge
  %55 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tp, align 4
  call void @xfs_trans_log_inode(ptr noundef %56, ptr noundef %ip, i32 noundef 1) #9
  %57 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tp, align 4
  %call74 = call i32 @xfs_trans_commit(ptr noundef %58) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end87, label %if.then76

if.then76:                                        ; preds = %cond.end73
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %4, i32 0, i32 66
  %59 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %m_opstate.i, align 4
  %61 = and i32 %60, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.i.not = icmp eq i32 %61, 0
  br i1 %tobool.i.not, label %cond.false85, label %if.then76.cleanup.sink.split_crit_edge, !prof !66

if.then76.cleanup.sink.split_crit_edge:           ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cond.false85:                                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 456) #9
  br label %cleanup.sink.split

if.end87:                                         ; preds = %cond.end73
  %62 = ptrtoint ptr %i_df to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %i_df, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %63)
  %tobool89.not = icmp eq i64 %63, 0
  br i1 %tobool89.not, label %if.end87.cleanup.sink.split_crit_edge, label %if.end93

if.end87.cleanup.sink.split_crit_edge:            ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end93:                                         ; preds = %if.end87
  %sub = sub i64 0, %63
  call void @xfs_idata_realloc(ptr noundef %ip, i64 noundef %sub, i32 noundef 0) #9
  %64 = ptrtoint ptr %i_df to i32
  call void @__asan_load8_noabort(i32 %64)
  %.pr = load i64, ptr %i_df, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.pr)
  %cmp96 = icmp eq i64 %.pr, 0
  br i1 %cmp96, label %if.end93.cleanup.sink.split_crit_edge, label %cond.false105, !prof !65

if.end93.cleanup.sink.split_crit_edge:            ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cond.false105:                                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 465) #9
  br label %cleanup.sink.split

error_trans_cancel:                               ; preds = %for.end.error_trans_cancel_crit_edge, %for.body.error_trans_cancel_crit_edge, %if.end.error_trans_cancel_crit_edge
  %error.0 = phi i32 [ %call26, %if.end.error_trans_cancel_crit_edge ], [ %call60, %for.end.error_trans_cancel_crit_edge ], [ %call.i, %for.body.error_trans_cancel_crit_edge ]
  %65 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %tp, align 4
  call void @xfs_trans_cancel(ptr noundef %66) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %error_trans_cancel, %cond.false105, %if.end93.cleanup.sink.split_crit_edge, %if.end87.cleanup.sink.split_crit_edge, %cond.false85, %if.then76.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end87.cleanup.sink.split_crit_edge ], [ 0, %if.end93.cleanup.sink.split_crit_edge ], [ 0, %cond.false105 ], [ %error.0, %error_trans_cancel ], [ %call74, %if.then76.cleanup.sink.split_crit_edge ], [ %call74, %cond.false85 ]
  call void @xfs_iunlock(ptr noundef %ip, i32 noundef 4) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %cond.end15.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %cond.end15.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nmaps) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %mval) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %done) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_buf_read_map(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_rele(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_readlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_symlink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_get_buf_map(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_inactive_symlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_binval(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bunmapi(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_idata_realloc(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !26, !27, !28, !30, !31, !33, !34, !36, !38, !40, !41, !43, !44, !46, !48, !50, !52}
!llvm.named.register.sp = !{!54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_symlink.c", i32 46, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/xfs_symlink.c", i32 72, i32 1}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/xfs/xfs_symlink.c", i32 89, i32 2}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/xfs/xfs_symlink.c", i32 119, i32 17}
!9 = !{ptr @__func__.xfs_readlink, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/xfs/xfs_symlink.c", i32 120, i32 5}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/xfs/xfs_symlink.c", i32 122, i32 3}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/xfs/xfs_symlink.c", i32 131, i32 7}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/xfs/xfs_symlink.c", i32 189, i32 2}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/xfs_symlink.c", i32 494, i32 2}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/xfs/xfs_symlink.c", i32 497, i32 17}
!21 = !{ptr @__func__.xfs_inactive_symlink, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/xfs/xfs_symlink.c", i32 498, i32 5}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../fs/xfs/xfs_trace.h", i32 754, i32 1}
!25 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!27 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../fs/xfs/xfs_trace.h", i32 965, i32 1}
!33 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../include/linux/mnt_idmapping.h", i32 212, i32 49}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../include/linux/mnt_idmapping.h", i32 231, i32 49}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!40 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../fs/xfs/xfs_trace.h", i32 755, i32 1}
!43 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/xfs/xfs_symlink.c", i32 393, i32 2}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/xfs/xfs_symlink.c", i32 401, i32 2}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/xfs/xfs_symlink.c", i32 447, i32 2}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/xfs/xfs_symlink.c", i32 456, i32 3}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/xfs/xfs_symlink.c", i32 465, i32 2}
!54 = !{!"sp"}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{!"auto-init"}
!65 = !{!"branch_weights", i32 2000, i32 1}
!66 = !{!"branch_weights", i32 1, i32 2000}
!67 = !{i64 2166331551}
!68 = !{i64 2148255676, i64 2148255681, i64 2148255694, i64 2148255738, i64 2148255772, i64 2148255793}
!69 = !{i64 2157863550}
!70 = !{i64 2157863741}
!71 = !{i64 2149957769}
!72 = !{i64 2149958805}
!73 = !{!"branch_weights", i32 2146410443, i32 1073205}
!74 = !{i64 2155744103}
!75 = !{i64 2158591920}
!76 = !{i64 2158592135}
!77 = !{i64 2153129819}
!78 = !{i64 2149684070}
!79 = !{i64 2149689002}
!80 = !{i64 2149710714}
!81 = !{i64 2149715606}
!82 = !{i64 2149792063}
!83 = !{i64 2149792388}
!84 = !{i64 2153141681}
!85 = !{i64 2157879644}
!86 = !{i64 2157879851}
