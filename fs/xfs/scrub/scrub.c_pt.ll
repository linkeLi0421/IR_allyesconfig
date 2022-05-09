; ModuleID = '/llk/IR_all_yes/fs/xfs/scrub/scrub.c_pt.bc'
source_filename = "../fs/xfs/scrub/scrub.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xchk_meta_ops = type { ptr, ptr, ptr, ptr, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xfs_scrub_metadata = type { i32, i32, i64, i32, i32, [5 x i64] }
%struct.xfs_scrub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.xchk_ag }
%struct.xchk_ag = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.90, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.89, i16, i8, i32 }
%union.anon.89 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.llist_node = type { ptr }
%union.anon.90 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.77, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.78, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.79, ptr, %struct.address_space, %struct.list_head, %union.anon.82, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.78 = type { %struct.callback_head }
%union.anon.79 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.82 = type { ptr }
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

@meta_scrub_ops = internal constant { [25 x %struct.xchk_meta_ops], [108 x i8] } { [25 x %struct.xchk_meta_ops] [%struct.xchk_meta_ops { ptr @xchk_setup_fs, ptr @xchk_probe, ptr @xrep_probe, ptr null, i32 1 }, %struct.xchk_meta_ops { ptr @xchk_setup_fs, ptr @xchk_superblock, ptr @xrep_superblock, ptr null, i32 2 }, %struct.xchk_meta_ops { ptr @xchk_setup_fs, ptr @xchk_agf, ptr @xrep_agf, ptr null, i32 2 }, %struct.xchk_meta_ops { ptr @xchk_setup_fs, ptr @xchk_agfl, ptr @xrep_agfl, ptr null, i32 2 }, %struct.xchk_meta_ops { ptr @xchk_setup_fs, ptr @xchk_agi, ptr @xrep_agi, ptr null, i32 2 }, %struct.xchk_meta_ops { ptr @xchk_setup_ag_allocbt, ptr @xchk_bnobt, ptr @xrep_notsupported, ptr null, i32 2 }, %struct.xchk_meta_ops { ptr @xchk_setup_ag_allocbt, ptr @xchk_cntbt, ptr @xrep_notsupported, ptr null, i32 2 }, %struct.xchk_meta_ops { ptr @xchk_setup_ag_iallocbt, ptr @xchk_inobt, ptr @xrep_notsupported, ptr null, i32 2 }, %struct.xchk_meta_ops { ptr @xchk_setup_ag_iallocbt, ptr @xchk_finobt, ptr @xrep_notsupported, ptr @xfs_has_finobt, i32 2 }, %struct.xchk_meta_ops { ptr @xchk_setup_ag_rmapbt, ptr @xchk_rmapbt, ptr @xrep_notsupported, ptr @xfs_has_rmapbt, i32 2 }, %struct.xchk_meta_ops { ptr @xchk_setup_ag_refcountbt, ptr @xchk_refcountbt, ptr @xrep_notsupported, ptr @xfs_has_reflink, i32 2 }, %struct.xchk_meta_ops { ptr @xchk_setup_inode, ptr @xchk_inode, ptr @xrep_notsupported, ptr null, i32 4 }, %struct.xchk_meta_ops { ptr @xchk_setup_inode_bmap, ptr @xchk_bmap_data, ptr @xrep_notsupported, ptr null, i32 4 }, %struct.xchk_meta_ops { ptr @xchk_setup_inode_bmap, ptr @xchk_bmap_attr, ptr @xrep_notsupported, ptr null, i32 4 }, %struct.xchk_meta_ops { ptr @xchk_setup_inode_bmap, ptr @xchk_bmap_cow, ptr @xrep_notsupported, ptr null, i32 4 }, %struct.xchk_meta_ops { ptr @xchk_setup_directory, ptr @xchk_directory, ptr @xrep_notsupported, ptr null, i32 4 }, %struct.xchk_meta_ops { ptr @xchk_setup_xattr, ptr @xchk_xattr, ptr @xrep_notsupported, ptr null, i32 4 }, %struct.xchk_meta_ops { ptr @xchk_setup_symlink, ptr @xchk_symlink, ptr @xrep_notsupported, ptr null, i32 4 }, %struct.xchk_meta_ops { ptr @xchk_setup_parent, ptr @xchk_parent, ptr @xrep_notsupported, ptr null, i32 4 }, %struct.xchk_meta_ops { ptr @xchk_setup_rt, ptr @xchk_rtbitmap, ptr @xrep_notsupported, ptr @xfs_has_realtime, i32 3 }, %struct.xchk_meta_ops { ptr @xchk_setup_rt, ptr @xchk_rtsummary, ptr @xrep_notsupported, ptr @xfs_has_realtime, i32 3 }, %struct.xchk_meta_ops { ptr @xchk_setup_quota, ptr @xchk_quota, ptr @xrep_notsupported, ptr null, i32 3 }, %struct.xchk_meta_ops { ptr @xchk_setup_quota, ptr @xchk_quota, ptr @xrep_notsupported, ptr null, i32 3 }, %struct.xchk_meta_ops { ptr @xchk_setup_quota, ptr @xchk_quota, ptr @xrep_notsupported, ptr null, i32 3 }, %struct.xchk_meta_ops { ptr @xchk_setup_fscounters, ptr @xchk_fscounters, ptr @xrep_notsupported, ptr null, i32 3 }], [108 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/xfs/scrub/scrub.c\00", [43 x i8] zeroinitializer }, align 32
@__tracepoint_xchk_start = external dso_local global %struct.tracepoint, align 4
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/xfs/scrub/trace.h\00", [43 x i8] zeroinitializer }, align 32
@trace_xchk_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@xchk_experimental_warning.scrub_warning = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 8640000, i32 1, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\22xchk_warning\22.lock\00", [44 x i8] zeroinitializer }, align 32
@__func__.xchk_experimental_warning = private unnamed_addr constant [26 x i8] c"xchk_experimental_warning\00", align 1
@.str.6 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"EXPERIMENTAL online scrub feature in use. Use at your own risk!\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/xfs/scrub/common.h\00", [42 x i8] zeroinitializer }, align 32
@__tracepoint_xchk_done = external dso_local global %struct.tracepoint, align 4
@trace_xchk_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 4294967179, i64 4294967222]
@___asan_gen_.9 = private unnamed_addr constant [15 x i8] c"meta_scrub_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 185, i32 35 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 533, i32 7 }
@___asan_gen_.22 = private unnamed_addr constant [24 x i8] c"../fs/xfs/scrub/trace.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 136, i32 1 }
@___asan_gen_.25 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 108, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [14 x i8] c"scrub_warning\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 348, i32 32 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 348, i32 48 }
@___asan_gen_.34 = private constant [24 x i8] c"../fs/xfs/scrub/scrub.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 354, i32 1 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [25 x i8] c"../fs/xfs/scrub/common.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 24, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @meta_scrub_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @xchk_experimental_warning.scrub_warning, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meta_scrub_ops to i32), i32 500, i32 608, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xchk_experimental_warning.scrub_warning to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_scrub_metadata(ptr noundef %file, ptr noundef %sm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -312
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  tail call fastcc void @trace_xchk_start(ptr noundef %add.ptr.i, ptr noundef %sm)
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 66
  %4 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %m_opstate.i, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %if.end, label %entry.out.thread_crit_edge

entry.out.thread_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.end:                                           ; preds = %entry
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 61
  %7 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %8, 4611686018427387904
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i153.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i153.not, label %if.end7, label %if.end.out.thread_crit_edge

if.end.out.thread_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.end7:                                          ; preds = %if.end
  %sm_flags.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %sm, i32 0, i32 1
  %9 = ptrtoint ptr %sm_flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sm_flags.i, align 4
  %and.i154 = and i32 %10, -255
  store i32 %and.i154, ptr %sm_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %10)
  %tobool.not.i = icmp ult i32 %10, 256
  br i1 %tobool.not.i, label %if.end.i, label %if.end7.out.thread177_crit_edge

if.end7.out.thread177_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread177

if.end.i:                                         ; preds = %if.end7
  %sm_reserved.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %sm, i32 0, i32 5
  %call.i = tail call ptr @memchr_inv(ptr noundef %sm_reserved.i, i32 noundef 0, i32 noundef 40) #7
  %tobool3.not.i = icmp eq ptr %call.i, null
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.out.thread177_crit_edge

if.end.i.out.thread177_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread177

if.end5.i:                                        ; preds = %if.end.i
  %11 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %12)
  %cmp.i = icmp ugt i32 %12, 24
  br i1 %cmp.i, label %if.end5.i.out.thread177_crit_edge, label %if.end7.i

if.end5.i.out.thread177_crit_edge:                ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread177

if.end7.i:                                        ; preds = %if.end5.i
  %arrayidx.i = getelementptr [25 x %struct.xchk_meta_ops], ptr @meta_scrub_ops, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %cmp9.i = icmp eq ptr %14, null
  br i1 %cmp9.i, label %if.end7.i.out.thread177_crit_edge, label %if.end12.i

if.end7.i.out.thread177_crit_edge:                ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread177

if.end12.i:                                       ; preds = %if.end7.i
  %15 = lshr i32 31979775, %12
  %16 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool13.not.not.i = icmp eq i32 %16, 0
  br i1 %tobool13.not.not.i, label %land.lhs.true.i, label %if.end12.i.if.end17.i_crit_edge

if.end12.i.if.end17.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

land.lhs.true.i:                                  ; preds = %if.end12.i
  %has.i = getelementptr [25 x %struct.xchk_meta_ops], ptr @meta_scrub_ops, i32 0, i32 %12, i32 3
  %17 = ptrtoint ptr %has.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %has.i, align 4
  %call15.i = tail call zeroext i1 %18(ptr noundef %3) #7
  br i1 %call15.i, label %land.lhs.true.i.if.end17.i_crit_edge, label %land.lhs.true.i.out.thread177_crit_edge

land.lhs.true.i.out.thread177_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread177

land.lhs.true.i.if.end17.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.end17.i:                                       ; preds = %land.lhs.true.i.if.end17.i_crit_edge, %if.end12.i.if.end17.i_crit_edge
  %type.i = getelementptr [25 x %struct.xchk_meta_ops], ptr @meta_scrub_ops, i32 0, i32 %12, i32 4
  %19 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type.i, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %if.end17.i.out.thread177_crit_edge [
    i32 1, label %if.end17.i.sw.bb.i_crit_edge
    i32 3, label %if.end17.i.sw.bb.i_crit_edge198
    i32 2, label %sw.bb25.i
    i32 4, label %sw.bb36.i
  ]

if.end17.i.sw.bb.i_crit_edge198:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end17.i.sw.bb.i_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end17.i.out.thread177_crit_edge:               ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread177

sw.bb.i:                                          ; preds = %if.end17.i.sw.bb.i_crit_edge, %if.end17.i.sw.bb.i_crit_edge198
  %sm_ino.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %sm, i32 0, i32 2
  %22 = ptrtoint ptr %sm_ino.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %sm_ino.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %tobool18.not.i = icmp eq i64 %23, 0
  br i1 %tobool18.not.i, label %lor.lhs.false19.i, label %sw.bb.i.out.thread177_crit_edge

sw.bb.i.out.thread177_crit_edge:                  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread177

lor.lhs.false19.i:                                ; preds = %sw.bb.i
  %sm_gen.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %sm, i32 0, i32 3
  %24 = ptrtoint ptr %sm_gen.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sm_gen.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool20.not.i = icmp eq i32 %25, 0
  br i1 %tobool20.not.i, label %lor.lhs.false21.i, label %lor.lhs.false19.i.out.thread177_crit_edge

lor.lhs.false19.i.out.thread177_crit_edge:        ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread177

lor.lhs.false21.i:                                ; preds = %lor.lhs.false19.i
  %sm_agno.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %sm, i32 0, i32 4
  %26 = ptrtoint ptr %sm_agno.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sm_agno.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool22.not.i = icmp eq i32 %27, 0
  br i1 %tobool22.not.i, label %lor.lhs.false21.i.sw.epilog.i_crit_edge, label %lor.lhs.false21.i.out.thread177_crit_edge

lor.lhs.false21.i.out.thread177_crit_edge:        ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread177

lor.lhs.false21.i.sw.epilog.i_crit_edge:          ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb25.i:                                        ; preds = %if.end17.i
  %sm_ino26.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %sm, i32 0, i32 2
  %28 = ptrtoint ptr %sm_ino26.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %sm_ino26.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %tobool27.not.i = icmp eq i64 %29, 0
  br i1 %tobool27.not.i, label %lor.lhs.false28.i, label %sw.bb25.i.out.thread177_crit_edge

sw.bb25.i.out.thread177_crit_edge:                ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread177

lor.lhs.false28.i:                                ; preds = %sw.bb25.i
  %sm_gen29.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %sm, i32 0, i32 3
  %30 = ptrtoint ptr %sm_gen29.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sm_gen29.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool30.not.i = icmp eq i32 %31, 0
  br i1 %tobool30.not.i, label %lor.lhs.false31.i, label %lor.lhs.false28.i.out.thread177_crit_edge

lor.lhs.false28.i.out.thread177_crit_edge:        ; preds = %lor.lhs.false28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread177

lor.lhs.false31.i:                                ; preds = %lor.lhs.false28.i
  %sm_agno32.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %sm, i32 0, i32 4
  %32 = ptrtoint ptr %sm_agno32.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sm_agno32.i, align 4
  %sb_agcount.i = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 12
  %34 = ptrtoint ptr %sb_agcount.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sb_agcount.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp33.not.i = icmp ult i32 %33, %35
  br i1 %cmp33.not.i, label %lor.lhs.false31.i.sw.epilog.i_crit_edge, label %lor.lhs.false31.i.out.thread177_crit_edge

lor.lhs.false31.i.out.thread177_crit_edge:        ; preds = %lor.lhs.false31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread177

lor.lhs.false31.i.sw.epilog.i_crit_edge:          ; preds = %lor.lhs.false31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb36.i:                                        ; preds = %if.end17.i
  %sm_agno37.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %sm, i32 0, i32 4
  %36 = ptrtoint ptr %sm_agno37.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sm_agno37.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool38.not.i = icmp eq i32 %37, 0
  br i1 %tobool38.not.i, label %lor.lhs.false39.i, label %sw.bb36.i.out.thread177_crit_edge

sw.bb36.i.out.thread177_crit_edge:                ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread177

lor.lhs.false39.i:                                ; preds = %sw.bb36.i
  %sm_gen40.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %sm, i32 0, i32 3
  %38 = ptrtoint ptr %sm_gen40.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sm_gen40.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool41.not.i = icmp eq i32 %39, 0
  br i1 %tobool41.not.i, label %lor.lhs.false39.i.sw.epilog.i_crit_edge, label %land.lhs.true42.i

lor.lhs.false39.i.sw.epilog.i_crit_edge:          ; preds = %lor.lhs.false39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

land.lhs.true42.i:                                ; preds = %lor.lhs.false39.i
  %sm_ino43.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %sm, i32 0, i32 2
  %40 = ptrtoint ptr %sm_ino43.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %sm_ino43.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %41)
  %tobool44.not.i = icmp eq i64 %41, 0
  br i1 %tobool44.not.i, label %land.lhs.true42.i.out.thread177_crit_edge, label %land.lhs.true42.i.sw.epilog.i_crit_edge

land.lhs.true42.i.sw.epilog.i_crit_edge:          ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

land.lhs.true42.i.out.thread177_crit_edge:        ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread177

sw.epilog.i:                                      ; preds = %land.lhs.true42.i.sw.epilog.i_crit_edge, %lor.lhs.false39.i.sw.epilog.i_crit_edge, %lor.lhs.false31.i.sw.epilog.i_crit_edge, %lor.lhs.false21.i.sw.epilog.i_crit_edge
  %42 = ptrtoint ptr %sm_flags.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sm_flags.i, align 4
  %and48.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  br i1 %tobool49.not.i, label %sw.epilog.i.if.end10_crit_edge, label %if.then50.i

sw.epilog.i.if.end10_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then50.i:                                      ; preds = %sw.epilog.i
  %44 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %m_features.i, align 8
  %and.i.i = and i64 %45, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then50.i.out.thread177_crit_edge, label %if.end53.i

if.then50.i.out.thread177_crit_edge:              ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread177

if.end53.i:                                       ; preds = %if.then50.i
  %46 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %m_opstate.i, align 4
  %48 = and i32 %47, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.i80.not.i = icmp eq i32 %48, 0
  br i1 %tobool.i80.not.i, label %if.end53.i.if.end10_crit_edge, label %if.end53.i.out.thread177_crit_edge

if.end53.i.out.thread177_crit_edge:               ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread177

if.end53.i.if.end10_crit_edge:                    ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.end10:                                         ; preds = %if.end53.i.if.end10_crit_edge, %sw.epilog.i.if.end10_crit_edge
  store i32 1, ptr getelementptr inbounds (%struct.ratelimit_state, ptr @xchk_experimental_warning.scrub_warning, i32 0, i32 6), align 4
  %call.i155 = tail call i32 @___ratelimit(ptr noundef nonnull @xchk_experimental_warning.scrub_warning, ptr noundef nonnull @__func__.xchk_experimental_warning) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155)
  %tobool.not.i156 = icmp eq i32 %call.i155, 0
  br i1 %tobool.not.i156, label %if.end10.xchk_experimental_warning.exit_crit_edge, label %if.then.i

if.end10.xchk_experimental_warning.exit_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_experimental_warning.exit

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %3, ptr noundef nonnull @.str.6) #7
  br label %xchk_experimental_warning.exit

xchk_experimental_warning.exit:                   ; preds = %if.then.i, %if.end10.xchk_experimental_warning.exit_crit_edge
  %call.i158 = tail call ptr @kmem_alloc(i32 noundef 80, i32 noundef 28) #7
  %tobool12.not = icmp eq ptr %call.i158, null
  br i1 %tobool12.not, label %xchk_experimental_warning.exit.out.thread_crit_edge, label %if.end14

xchk_experimental_warning.exit.out.thread_crit_edge: ; preds = %xchk_experimental_warning.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.end14:                                         ; preds = %xchk_experimental_warning.exit
  %49 = ptrtoint ptr %call.i158 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %3, ptr %call.i158, align 4
  %file16 = getelementptr inbounds %struct.xfs_scrub, ptr %call.i158, i32 0, i32 4
  %50 = ptrtoint ptr %file16 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %file, ptr %file16, align 4
  %sm17 = getelementptr inbounds %struct.xfs_scrub, ptr %call.i158, i32 0, i32 1
  %51 = ptrtoint ptr %sm17 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %sm, ptr %sm17, align 4
  %52 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sm, align 8
  %arrayidx = getelementptr [25 x %struct.xchk_meta_ops], ptr @meta_scrub_ops, i32 0, i32 %53
  %ops = getelementptr inbounds %struct.xfs_scrub, ptr %call.i158, i32 0, i32 2
  %54 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %arrayidx, ptr %ops, align 4
  %55 = load i32, ptr %sm, align 8
  %call19 = tail call i32 @xchk_health_mask_for_scrub_type(i32 noundef %55) #7
  %sick_mask = getelementptr inbounds %struct.xfs_scrub, ptr %call.i158, i32 0, i32 9
  %56 = ptrtoint ptr %sick_mask to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call19, ptr %sick_mask, align 4
  %flags = getelementptr inbounds %struct.xfs_scrub, ptr %call.i158, i32 0, i32 8
  br label %retry_op

retry_op:                                         ; preds = %retry_op.backedge, %if.end14
  %57 = ptrtoint ptr %sm_flags.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sm_flags.i, align 4
  %and = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %retry_op.if.end27_crit_edge, label %if.then21

retry_op.if.end27_crit_edge:                      ; preds = %retry_op
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then21:                                        ; preds = %retry_op
  %59 = ptrtoint ptr %file16 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %file16, align 4
  %call23 = tail call i32 @mnt_want_write_file(ptr noundef %60) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then21.if.end27_crit_edge, label %if.then21.out_crit_edge

if.then21.out_crit_edge:                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then21.if.end27_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.end27:                                         ; preds = %if.then21.if.end27_crit_edge, %retry_op.if.end27_crit_edge
  %61 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ops, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %call29 = tail call i32 %64(ptr noundef nonnull %call.i158) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end27.out_teardown_crit_edge

if.end27.out_teardown_crit_edge:                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_teardown

if.end32:                                         ; preds = %if.end27
  %65 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ops, align 4
  %scrub = getelementptr inbounds %struct.xchk_meta_ops, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %scrub to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %scrub, align 4
  %call34 = tail call i32 %68(ptr noundef nonnull %call.i158) #7
  %69 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags, align 4
  %and35 = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -35, i32 %call34)
  %cmp = icmp eq i32 %call34, -35
  %or.cond = select i1 %tobool36.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then37, label %if.else

if.then37:                                        ; preds = %if.end32
  %call38 = tail call fastcc i32 @xchk_teardown(ptr noundef nonnull %call.i158, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.then37.out_crit_edge

if.then37.out_crit_edge:                          ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end41:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags, align 4
  %or = or i32 %72, 1
  store i32 %or, ptr %flags, align 4
  br label %retry_op.backedge

retry_op.backedge:                                ; preds = %if.then77.retry_op.backedge_crit_edge, %if.end41
  br label %retry_op

if.else:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool43.not = icmp eq i32 %call34, 0
  br i1 %tobool43.not, label %lor.lhs.false, label %if.else.out_teardown_crit_edge

if.else.out_teardown_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_teardown

lor.lhs.false:                                    ; preds = %if.else
  %73 = ptrtoint ptr %sm_flags.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %sm_flags.i, align 4
  %and45 = and i32 %74, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end49, label %lor.lhs.false.out_teardown_crit_edge

lor.lhs.false.out_teardown_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_teardown

if.end49:                                         ; preds = %lor.lhs.false
  tail call void @xchk_update_health(ptr noundef nonnull %call.i158) #7
  %75 = ptrtoint ptr %sm17 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sm17, align 4
  %sm_flags51 = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %sm_flags51 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %sm_flags51, align 4
  %and52 = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end49.out_nofix_crit_edge, label %land.lhs.true54

if.end49.out_nofix_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_nofix

land.lhs.true54:                                  ; preds = %if.end49
  %79 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %80)
  %tobool57.not = icmp sgt i32 %80, -1
  br i1 %tobool57.not, label %if.then58, label %land.lhs.true54.out_nofix_crit_edge

land.lhs.true54.out_nofix_crit_edge:              ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_nofix

if.then58:                                        ; preds = %land.lhs.true54
  %call59 = tail call zeroext i1 @xfs_errortag_test(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 533, i32 noundef 32) #7
  br i1 %call59, label %if.then60, label %if.then58.if.end64_crit_edge

if.then58.if.end64_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then60:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %sm17 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %sm17, align 4
  %sm_flags62 = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %sm_flags62 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %sm_flags62, align 4
  %or63 = or i32 %84, 2
  store i32 %or63, ptr %sm_flags62, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then60, %if.then58.if.end64_crit_edge
  %85 = ptrtoint ptr %sm17 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %sm17, align 4
  %sm_flags66 = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %sm_flags66 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %sm_flags66, align 4
  %and67 = and i32 %88, 22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.then70, label %if.end74

if.then70:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  %sm_flags66.le = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %86, i32 0, i32 1
  %or73 = or i32 %88, 128
  %89 = ptrtoint ptr %sm_flags66.le to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %or73, ptr %sm_flags66.le, align 4
  br label %out_nofix

if.end74:                                         ; preds = %if.end64
  %call75 = tail call i32 @xrep_attempt(ptr noundef nonnull %call.i158) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call75)
  %cmp76 = icmp eq i32 %call75, -11
  br i1 %cmp76, label %if.then77, label %if.end74.out_nofix_crit_edge

if.end74.out_nofix_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_nofix

if.then77:                                        ; preds = %if.end74
  %call78 = tail call fastcc i32 @xchk_teardown(ptr noundef nonnull %call.i158, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.then77.retry_op.backedge_crit_edge, label %cleanup.thread170

if.then77.retry_op.backedge_crit_edge:            ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  br label %retry_op.backedge

cleanup.thread170:                                ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @xrep_failure(ptr noundef %3) #7
  br label %out

out_nofix:                                        ; preds = %if.end74.out_nofix_crit_edge, %if.then70, %land.lhs.true54.out_nofix_crit_edge, %if.end49.out_nofix_crit_edge
  %error.1 = phi i32 [ 0, %if.then70 ], [ %call75, %if.end74.out_nofix_crit_edge ], [ 0, %if.end49.out_nofix_crit_edge ], [ 0, %land.lhs.true54.out_nofix_crit_edge ]
  %90 = ptrtoint ptr %sm17 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %sm17, align 4
  %sm_flags.i159 = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %sm_flags.i159 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %sm_flags.i159, align 4
  %and.i160 = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i160)
  %tobool.not.i161 = icmp eq i32 %and.i160, 0
  %and3.i = and i32 %93, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %or.cond.i = or i1 %tobool.not.i161, %tobool4.not.i
  br i1 %or.cond.i, label %out_nofix.out_teardown_crit_edge, label %if.then.i162

out_nofix.out_teardown_crit_edge:                 ; preds = %out_nofix
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_teardown

if.then.i162:                                     ; preds = %out_nofix
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %call.i158 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %call.i158, align 4
  tail call void @xrep_failure(ptr noundef %95) #7
  br label %out_teardown

out_teardown:                                     ; preds = %if.then.i162, %out_nofix.out_teardown_crit_edge, %lor.lhs.false.out_teardown_crit_edge, %if.else.out_teardown_crit_edge, %if.end27.out_teardown_crit_edge
  %error.2 = phi i32 [ %error.1, %out_nofix.out_teardown_crit_edge ], [ %error.1, %if.then.i162 ], [ 0, %lor.lhs.false.out_teardown_crit_edge ], [ %call34, %if.else.out_teardown_crit_edge ], [ %call29, %if.end27.out_teardown_crit_edge ]
  %call84 = tail call fastcc i32 @xchk_teardown(ptr noundef nonnull %call.i158, i32 noundef %error.2)
  br label %out

out.thread:                                       ; preds = %xchk_experimental_warning.exit.out.thread_crit_edge, %if.end.out.thread_crit_edge, %entry.out.thread_crit_edge
  %error.4.ph = phi i32 [ -12, %xchk_experimental_warning.exit.out.thread_crit_edge ], [ -131, %if.end.out.thread_crit_edge ], [ -108, %entry.out.thread_crit_edge ]
  %96 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i165174 = getelementptr i8, ptr %97, i32 -312
  tail call fastcc void @trace_xchk_done(ptr noundef %add.ptr.i165174, ptr noundef %sm, i32 noundef %error.4.ph)
  br label %cleanup94

out.thread177:                                    ; preds = %if.end53.i.out.thread177_crit_edge, %if.then50.i.out.thread177_crit_edge, %land.lhs.true42.i.out.thread177_crit_edge, %sw.bb36.i.out.thread177_crit_edge, %lor.lhs.false31.i.out.thread177_crit_edge, %lor.lhs.false28.i.out.thread177_crit_edge, %sw.bb25.i.out.thread177_crit_edge, %lor.lhs.false21.i.out.thread177_crit_edge, %lor.lhs.false19.i.out.thread177_crit_edge, %sw.bb.i.out.thread177_crit_edge, %if.end17.i.out.thread177_crit_edge, %land.lhs.true.i.out.thread177_crit_edge, %if.end7.i.out.thread177_crit_edge, %if.end5.i.out.thread177_crit_edge, %if.end.i.out.thread177_crit_edge, %if.end7.out.thread177_crit_edge
  %error.4.ph176 = phi i32 [ -22, %if.end7.out.thread177_crit_edge ], [ -22, %if.end.i.out.thread177_crit_edge ], [ -2, %if.end5.i.out.thread177_crit_edge ], [ -2, %if.end7.i.out.thread177_crit_edge ], [ -22, %if.end17.i.out.thread177_crit_edge ], [ -22, %sw.bb36.i.out.thread177_crit_edge ], [ -30, %if.end53.i.out.thread177_crit_edge ], [ -95, %if.then50.i.out.thread177_crit_edge ], [ -22, %land.lhs.true42.i.out.thread177_crit_edge ], [ -22, %sw.bb25.i.out.thread177_crit_edge ], [ -22, %lor.lhs.false28.i.out.thread177_crit_edge ], [ -22, %lor.lhs.false31.i.out.thread177_crit_edge ], [ -22, %sw.bb.i.out.thread177_crit_edge ], [ -22, %lor.lhs.false19.i.out.thread177_crit_edge ], [ -22, %lor.lhs.false21.i.out.thread177_crit_edge ], [ -2, %land.lhs.true.i.out.thread177_crit_edge ]
  %98 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i165179 = getelementptr i8, ptr %99, i32 -312
  tail call fastcc void @trace_xchk_done(ptr noundef %add.ptr.i165179, ptr noundef %sm, i32 noundef %error.4.ph176)
  br label %cleanup94

out:                                              ; preds = %out_teardown, %cleanup.thread170, %if.then37.out_crit_edge, %if.then21.out_crit_edge
  %error.3 = phi i32 [ %call84, %out_teardown ], [ %call78, %cleanup.thread170 ], [ %call38, %if.then37.out_crit_edge ], [ %call23, %if.then21.out_crit_edge ]
  tail call void @kvfree(ptr noundef nonnull %call.i158) #7
  %100 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i165 = getelementptr i8, ptr %101, i32 -312
  tail call fastcc void @trace_xchk_done(ptr noundef %add.ptr.i165, ptr noundef %sm, i32 noundef %error.3)
  %102 = zext i32 %error.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %error.3, label %out.cleanup94_crit_edge [
    i32 -117, label %out.if.then90_crit_edge
    i32 -74, label %out.if.then90_crit_edge199
  ]

out.if.then90_crit_edge199:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then90

out.if.then90_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then90

out.cleanup94_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup94

if.then90:                                        ; preds = %out.if.then90_crit_edge, %out.if.then90_crit_edge199
  %103 = ptrtoint ptr %sm_flags.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %sm_flags.i, align 4
  %or92 = or i32 %104, 2
  store i32 %or92, ptr %sm_flags.i, align 4
  br label %cleanup94

cleanup94:                                        ; preds = %if.then90, %out.cleanup94_crit_edge, %out.thread177, %out.thread
  %retval.0 = phi i32 [ 0, %if.then90 ], [ %error.3, %out.cleanup94_crit_edge ], [ %error.4.ph, %out.thread ], [ %error.4.ph176, %out.thread177 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xchk_start(ptr noundef %ip, ptr noundef %sm) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_start, i32 0, i32 1), ptr blockaddress(@trace_xchk_start, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !36

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !26) #7
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !37

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !38
  %call42 = tail call i32 @__traceiter_xchk_start(ptr noundef null, ptr noundef %ip, ptr noundef %sm, i32 noundef 0) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !39
  %13 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !37

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_start, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_start, i32 0, i32 7), align 4
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
  %.b1 = load i1, ptr @trace_xchk_start.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_xchk_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 136, ptr noundef nonnull @.str.3) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !41
  %31 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_health_mask_for_scrub_type(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xchk_teardown(ptr noundef %sc, i32 noundef %error) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 4
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -312
  %sa = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10
  tail call void @xchk_ag_free(ptr noundef %sc, ptr noundef %sa) #7
  %tp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %4 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tp, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error)
  %cmp = icmp eq i32 %error, 0
  br i1 %cmp, label %land.lhs.true, label %if.then.if.else_crit_edge

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %6 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sm, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sm_flags, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true.if.else_crit_edge, label %if.then3

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 @xfs_trans_commit(ptr noundef nonnull %5) #7
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then.if.else_crit_edge
  tail call void @xfs_trans_cancel(ptr noundef nonnull %5) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  %error.addr.0 = phi i32 [ %call5, %if.then3 ], [ %error, %if.else ]
  %10 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %tp, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  %error.addr.1 = phi i32 [ %error.addr.0, %if.end ], [ %error, %entry.if.end8_crit_edge ]
  %ip = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 5
  %11 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ip, align 4
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %if.end8.if.end25_crit_edge, label %if.then10

if.end8.if.end25_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then10:                                        ; preds = %if.end8
  %ilock_flags = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 7
  %13 = ptrtoint ptr %ilock_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ilock_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool11.not = icmp eq i32 %14, 0
  br i1 %tobool11.not, label %if.then10.if.end15_crit_edge, label %if.then12

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @xfs_iunlock(ptr noundef nonnull %12, i32 noundef %14) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then10.if.end15_crit_edge
  %15 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ip, align 4
  %cmp17.not = icmp eq ptr %16, %add.ptr.i
  br i1 %cmp17.not, label %if.end15.if.end23_crit_edge, label %land.lhs.true18

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

land.lhs.true18:                                  ; preds = %if.end15
  %17 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sc, align 4
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %16, i32 0, i32 4
  %19 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %i_ino, align 8
  %call20 = tail call zeroext i1 @xfs_internal_inum(ptr noundef %18, i64 noundef %20) #7
  br i1 %call20, label %land.lhs.true18.if.end23_crit_edge, label %if.then21

land.lhs.true18.if.end23_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then21:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ip, align 4
  tail call void @xfs_irele(ptr noundef %22) #7
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %land.lhs.true18.if.end23_crit_edge, %if.end15.if.end23_crit_edge
  %23 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %ip, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.end23, %if.end8.if.end25_crit_edge
  %sm26 = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %24 = ptrtoint ptr %sm26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sm26, align 4
  %sm_flags27 = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %sm_flags27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sm_flags27, align 4
  %and28 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end25.if.end32_crit_edge, label %if.then30

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %file, align 4
  tail call void @mnt_drop_write_file(ptr noundef %29) #7
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end25.if.end32_crit_edge
  %flags = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 8
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags, align 4
  %and33 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.if.end36_crit_edge, label %if.then35

if.end32.if.end36_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @xchk_start_reaping(ptr noundef %sc) #7
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end32.if.end36_crit_edge
  %buf = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 6
  %32 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buf, align 4
  %tobool37.not = icmp eq ptr %33, null
  br i1 %tobool37.not, label %if.end36.if.end41_crit_edge, label %if.then38

if.end36.if.end41_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kvfree(ptr noundef nonnull %33) #7
  %34 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %buf, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end36.if.end41_crit_edge
  ret i32 %error.addr.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_update_health(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_errortag_test(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xrep_attempt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xrep_failure(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xchk_done(ptr noundef %ip, ptr noundef %sm, i32 noundef %error) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_done, i32 0, i32 1), ptr blockaddress(@trace_xchk_done, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !36

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !26) #7
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !37

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !42
  %call42 = tail call i32 @__traceiter_xchk_done(ptr noundef null, ptr noundef %ip, ptr noundef %sm, i32 noundef %error) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !43
  %13 = tail call i32 @llvm.read_register.i32(metadata !26) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !26) #7
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !37

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_done, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_done, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xchk_done.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_xchk_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 137, ptr noundef nonnull @.str.3) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !41
  %31 = tail call i32 @llvm.read_register.i32(metadata !26) #7
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
declare dso_local i32 @__traceiter_xchk_start(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_setup_fs(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xchk_probe(ptr nocapture noundef readnone %sc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_resched(ptr noundef nonnull @.str.7, i32 noundef 24, i32 noundef 0) #7
  %call.i.i = tail call i32 @__cond_resched() #7
  %0 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stack.i.i.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and1.i.i.i.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %entry.xchk_should_terminate.exit.thread_crit_edge, label %fatal_signal_pending.exit.i

entry.xchk_should_terminate.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_should_terminate.exit.thread

fatal_signal_pending.exit.i:                      ; preds = %entry
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 116, i32 1
  %8 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %signal.i.i.i, align 4
  %10 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %fatal_signal_pending.exit.i.xchk_should_terminate.exit.thread_crit_edge, label %fatal_signal_pending.exit.i.cleanup_crit_edge

fatal_signal_pending.exit.i.cleanup_crit_edge:    ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

fatal_signal_pending.exit.i.xchk_should_terminate.exit.thread_crit_edge: ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_should_terminate.exit.thread

xchk_should_terminate.exit.thread:                ; preds = %fatal_signal_pending.exit.i.xchk_should_terminate.exit.thread_crit_edge, %entry.xchk_should_terminate.exit.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %xchk_should_terminate.exit.thread, %fatal_signal_pending.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %xchk_should_terminate.exit.thread ], [ -11, %fatal_signal_pending.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xrep_probe(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_superblock(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xrep_superblock(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_agf(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xrep_agf(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_agfl(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xrep_agfl(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_agi(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xrep_agi(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_setup_ag_allocbt(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_bnobt(ptr noundef) #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xrep_notsupported(ptr nocapture noundef readnone %sc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 -95
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_cntbt(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_setup_ag_iallocbt(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_inobt(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_finobt(ptr noundef) #2

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @xfs_has_finobt(ptr nocapture noundef readonly %mp) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %m_features = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %0 = ptrtoint ptr %m_features to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %m_features, align 8
  %and = and i64 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool = icmp ne i64 %and, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_setup_ag_rmapbt(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_rmapbt(ptr noundef) #2

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @xfs_has_rmapbt(ptr nocapture noundef readonly %mp) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %m_features = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %0 = ptrtoint ptr %m_features to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %m_features, align 8
  %and = and i64 %1, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool = icmp ne i64 %and, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_setup_ag_refcountbt(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_refcountbt(ptr noundef) #2

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @xfs_has_reflink(ptr nocapture noundef readonly %mp) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %m_features = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %0 = ptrtoint ptr %m_features to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %m_features, align 8
  %and = and i64 %1, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool = icmp ne i64 %and, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_setup_inode(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_inode(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_setup_inode_bmap(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_bmap_data(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_bmap_attr(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_bmap_cow(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_setup_directory(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_directory(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_setup_xattr(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_xattr(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_setup_symlink(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_symlink(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_setup_parent(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_parent(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_setup_rt(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_rtbitmap(ptr noundef) #2

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @xfs_has_realtime(ptr nocapture noundef readonly %mp) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %m_features = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %0 = ptrtoint ptr %m_features to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %m_features, align 8
  %and = and i64 %1, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool = icmp ne i64 %and, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_rtsummary(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_setup_quota(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_quota(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_setup_fscounters(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_fscounters(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_ag_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iunlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_internal_inum(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_irele(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_start_reaping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xchk_done(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25}
!llvm.named.register.sp = !{!26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/scrub/scrub.c", i32 533, i32 7}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../fs/xfs/scrub/trace.h", i32 136, i32 1}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !4, !"__warned", i1 false, i1 false}
!7 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/xfs/scrub/scrub.c", i32 348, i32 48}
!13 = !{ptr @xchk_experimental_warning.scrub_warning, !14, !"scrub_warning", i1 false, i1 false}
!14 = !{!"../fs/xfs/scrub/scrub.c", i32 348, i32 32}
!15 = !{ptr @__func__.xchk_experimental_warning, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/xfs/scrub/scrub.c", i32 352, i32 6}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/scrub/scrub.c", i32 354, i32 1}
!19 = !{ptr @meta_scrub_ops, !20, !"meta_scrub_ops", i1 false, i1 false}
!20 = !{!"../fs/xfs/scrub/scrub.c", i32 185, i32 35}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/xfs/scrub/common.h", i32 24, i32 2}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../fs/xfs/scrub/trace.h", i32 137, i32 1}
!25 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!26 = !{!"sp"}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i64 2148260787, i64 2148260792, i64 2148260805, i64 2148260849, i64 2148260883, i64 2148260904}
!37 = !{!"branch_weights", i32 2000, i32 1}
!38 = !{i64 2155829890}
!39 = !{i64 2155830099}
!40 = !{i64 2149962880}
!41 = !{i64 2149963916}
!42 = !{i64 2155846445}
!43 = !{i64 2155846652}
