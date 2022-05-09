; ModuleID = '/llk/IR_all_yes/fs/xfs/scrub/btree.c_pt.bc'
source_filename = "../fs/xfs/scrub/btree.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.xfs_scrub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.xchk_ag }
%struct.xchk_ag = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xfs_scrub_metadata = type { i32, i32, i64, i32, i32, [5 x i64] }
%struct.xfs_btree_cur = type { ptr, ptr, ptr, ptr, i32, i32, %union.xfs_btree_irec, i8, i8, i32, %union.anon.95, [0 x %struct.xfs_btree_level] }
%union.xfs_btree_irec = type { %struct.xfs_bmbt_irec }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }
%union.anon.95 = type { %struct.xfs_btree_cur_ag }
%struct.xfs_btree_cur_ag = type { ptr, %union.anon.96, %union.anon.97 }
%union.anon.96 = type { ptr }
%union.anon.97 = type { %struct.anon.98 }
%struct.anon.98 = type { i32, i32 }
%struct.xfs_btree_level = type { ptr, i16, i16 }
%union.xfs_btree_ptr = type { i64 }
%struct.xchk_btree = type { ptr, ptr, ptr, ptr, ptr, %union.xfs_btree_rec, %struct.list_head, [0 x %union.xfs_btree_key] }
%union.xfs_btree_rec = type { %struct.xfs_rmap_rec }
%struct.xfs_rmap_rec = type { i32, i32, i64, i64 }
%struct.list_head = type { ptr, ptr }
%union.xfs_btree_key = type { %struct.xfs_bmbt_key, [32 x i8] }
%struct.xfs_bmbt_key = type { i64 }
%struct.xfs_btree_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xfs_btree_block = type { i32, i16, i16, %union.anon.88 }
%union.anon.88 = type { %struct.xfs_btree_block_lhdr }
%struct.xfs_btree_block_lhdr = type { i64, i64, i64, i64, %struct.uuid_t, i64, i32, i32 }
%struct.uuid_t = type { [16 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
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
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.check_owner = type { %struct.list_head, i64, i32 }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xfs_btree_cur_ino = type { ptr, ptr, i32, i16, i8, i8 }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.90, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.89, i16, i8, i32 }
%union.anon.89 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.90 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.75 = type { i32 }
%union.anon.76 = type { %struct.callback_head }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.78 = type { ptr }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.xfs_buf_map = type { i64, i32 }

@__tracepoint_xchk_deadlock_retry = external dso_local global %struct.tracepoint, align 4
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/xfs/scrub/trace.h\00", [43 x i8] zeroinitializer }, align 32
@trace_xchk_deadlock_retry.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xchk_ifork_btree_op_error = external dso_local global %struct.tracepoint, align 4
@trace_xchk_ifork_btree_op_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xchk_btree_op_error = external dso_local global %struct.tracepoint, align 4
@trace_xchk_btree_op_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xchk_ifork_btree_error = external dso_local global %struct.tracepoint, align 4
@trace_xchk_ifork_btree_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xchk_btree_error = external dso_local global %struct.tracepoint, align 4
@trace_xchk_btree_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xchk_btree_rec = external dso_local global %struct.tracepoint, align 4
@trace_xchk_btree_rec.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/xfs/scrub/common.h\00", [42 x i8] zeroinitializer }, align 32
@__tracepoint_xchk_btree_key = external dso_local global %struct.tracepoint, align 4
@trace_xchk_btree_key.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4294967179, i64 4294967222, i64 4294967261]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 4294967179, i64 4294967222, i64 4294967261]
@__sancov_gen_cov_switch_values.5 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967179, i64 4294967222, i64 4294967261]
@__sancov_gen_cov_switch_values.6 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967179, i64 4294967222, i64 4294967261]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.8 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967179, i64 4294967222, i64 4294967261]
@__sancov_gen_cov_switch_values.9 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967179, i64 4294967222, i64 4294967261]
@___asan_gen_ = private constant [24 x i8] c"../fs/xfs/scrub/btree.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [24 x i8] c"../fs/xfs/scrub/trace.h\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 138, i32 1 }
@___asan_gen_.17 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 108, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [25 x i8] c"../fs/xfs/scrub/common.h\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 24, i32 2 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @xchk_btree_process_error(ptr noundef %sc, ptr noundef %cur, i32 noundef %level, ptr nocapture noundef %error) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp eq i32 %2, 0
  br i1 %cmp.i, label %entry.__xchk_btree_process_error.exit_crit_edge, label %if.end.i

entry.__xchk_btree_process_error.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__xchk_btree_process_error.exit

if.end.i:                                         ; preds = %entry
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %if.end.i.sw.default.i_crit_edge [
    i32 -35, label %sw.bb.i
    i32 -74, label %if.end.i.sw.bb1.i_crit_edge
    i32 -117, label %if.end.i.sw.bb1.i_crit_edge1
  ]

if.end.i.sw.bb1.i_crit_edge1:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

if.end.i.sw.bb1.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

if.end.i.sw.default.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %ip.i = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 5
  %4 = ptrtoint ptr %ip.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ip.i, align 4
  %sm.i = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %6 = ptrtoint ptr %sm.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sm.i, align 4
  tail call fastcc void @trace_xchk_deadlock_retry(ptr noundef %5, ptr noundef %7, i32 noundef -35) #8
  br label %__xchk_btree_process_error.exit

sw.bb1.i:                                         ; preds = %if.end.i.sw.bb1.i_crit_edge, %if.end.i.sw.bb1.i_crit_edge1
  %sm2.i = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %8 = ptrtoint ptr %sm2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sm2.i, align 4
  %sm_flags.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %sm_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sm_flags.i, align 4
  %or.i = or i32 %11, 2
  store i32 %or.i, ptr %sm_flags.i, align 4
  %12 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %error, align 4
  br label %sw.default.i

sw.default.i:                                     ; preds = %sw.bb1.i, %if.end.i.sw.default.i_crit_edge
  %bc_flags.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 4
  %13 = ptrtoint ptr %bc_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bc_flags.i, align 8
  %and.i = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %15 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %error, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_xchk_ifork_btree_op_error(ptr noundef %sc, ptr noundef %cur, i32 noundef %level, i32 noundef %16, ptr noundef %0) #8
  br label %__xchk_btree_process_error.exit

if.else.i:                                        ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_xchk_btree_op_error(ptr noundef %sc, ptr noundef %cur, i32 noundef %level, i32 noundef %16, ptr noundef %0) #8
  br label %__xchk_btree_process_error.exit

__xchk_btree_process_error.exit:                  ; preds = %if.else.i, %if.then3.i, %sw.bb.i, %entry.__xchk_btree_process_error.exit_crit_edge
  ret i1 %cmp.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @xchk_btree_xref_process_error(ptr noundef %sc, ptr noundef %cur, i32 noundef %level, ptr nocapture noundef %error) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp eq i32 %2, 0
  br i1 %cmp.i, label %entry.__xchk_btree_process_error.exit_crit_edge, label %if.end.i

entry.__xchk_btree_process_error.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__xchk_btree_process_error.exit

if.end.i:                                         ; preds = %entry
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %2, label %if.end.i.sw.default.i_crit_edge [
    i32 -35, label %sw.bb.i
    i32 -74, label %if.end.i.sw.bb1.i_crit_edge
    i32 -117, label %if.end.i.sw.bb1.i_crit_edge1
  ]

if.end.i.sw.bb1.i_crit_edge1:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

if.end.i.sw.bb1.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

if.end.i.sw.default.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %ip.i = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 5
  %4 = ptrtoint ptr %ip.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ip.i, align 4
  %sm.i = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %6 = ptrtoint ptr %sm.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sm.i, align 4
  tail call fastcc void @trace_xchk_deadlock_retry(ptr noundef %5, ptr noundef %7, i32 noundef -35) #8
  br label %__xchk_btree_process_error.exit

sw.bb1.i:                                         ; preds = %if.end.i.sw.bb1.i_crit_edge, %if.end.i.sw.bb1.i_crit_edge1
  %sm2.i = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %8 = ptrtoint ptr %sm2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sm2.i, align 4
  %sm_flags.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %sm_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sm_flags.i, align 4
  %or.i = or i32 %11, 8
  store i32 %or.i, ptr %sm_flags.i, align 4
  %12 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %error, align 4
  br label %sw.default.i

sw.default.i:                                     ; preds = %sw.bb1.i, %if.end.i.sw.default.i_crit_edge
  %bc_flags.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 4
  %13 = ptrtoint ptr %bc_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bc_flags.i, align 8
  %and.i = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %15 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %error, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_xchk_ifork_btree_op_error(ptr noundef %sc, ptr noundef %cur, i32 noundef %level, i32 noundef %16, ptr noundef %0) #8
  br label %__xchk_btree_process_error.exit

if.else.i:                                        ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_xchk_btree_op_error(ptr noundef %sc, ptr noundef %cur, i32 noundef %level, i32 noundef %16, ptr noundef %0) #8
  br label %__xchk_btree_process_error.exit

__xchk_btree_process_error.exit:                  ; preds = %if.else.i, %if.then3.i, %sw.bb.i, %entry.__xchk_btree_process_error.exit_crit_edge
  ret i1 %cmp.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xchk_btree_set_corrupt(ptr noundef %sc, ptr noundef %cur, i32 noundef %level) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %sm.i = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %1 = ptrtoint ptr %sm.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sm.i, align 4
  %sm_flags.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %sm_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sm_flags.i, align 4
  %or.i = or i32 %4, 2
  store i32 %or.i, ptr %sm_flags.i, align 4
  %bc_flags.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 4
  %5 = ptrtoint ptr %bc_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bc_flags.i, align 8
  %and.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_xchk_ifork_btree_error(ptr noundef %sc, ptr noundef %cur, i32 noundef %level, ptr noundef %0) #8
  br label %__xchk_btree_set_corrupt.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_xchk_btree_error(ptr noundef %sc, ptr noundef %cur, i32 noundef %level, ptr noundef %0) #8
  br label %__xchk_btree_set_corrupt.exit

__xchk_btree_set_corrupt.exit:                    ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xchk_btree_xref_set_corrupt(ptr noundef %sc, ptr noundef %cur, i32 noundef %level) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %sm.i = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %1 = ptrtoint ptr %sm.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sm.i, align 4
  %sm_flags.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %sm_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sm_flags.i, align 4
  %or.i = or i32 %4, 16
  store i32 %or.i, ptr %sm_flags.i, align 4
  %bc_flags.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 4
  %5 = ptrtoint ptr %bc_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bc_flags.i, align 8
  %and.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_xchk_ifork_btree_error(ptr noundef %sc, ptr noundef %cur, i32 noundef %level, ptr noundef %0) #8
  br label %__xchk_btree_set_corrupt.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_xchk_btree_error(ptr noundef %sc, ptr noundef %cur, i32 noundef %level, ptr noundef %0) #8
  br label %__xchk_btree_set_corrupt.exit

__xchk_btree_set_corrupt.exit:                    ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xchk_btree(ptr noundef %sc, ptr noundef %cur, ptr noundef %scrub_fn, ptr noundef %oinfo, ptr noundef %private) local_unnamed_addr #0 align 64 {
entry:
  %ptr = alloca %union.xfs_btree_ptr, align 8
  %block = alloca ptr, align 4
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ptr) #8
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %ptr, align 8, !annotation !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %block) #8
  %1 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %block, align 4, !annotation !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #8
  %2 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !38
  %bc_nlevels = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 7
  %3 = ptrtoint ptr %bc_nlevels to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bc_nlevels, align 8
  %conv = zext i8 %4 to i32
  %sub.i = add nsw i32 %conv, -1
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %sub.i, i32 40) #8
  %6 = extractvalue { i32, i1 } %5, 1
  %7 = extractvalue { i32, i1 } %5, 0
  %spec.select.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %7, i32 56) #8
  %retval.0.i.i = select i1 %6, i32 -1, i32 %spec.select.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %retval.0.i.i)
  %cmp = icmp ugt i32 %retval.0.i.i, 4096
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = tail call ptr @llvm.returnaddress(i32 0) #8
  %sm.i.i = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %9 = ptrtoint ptr %sm.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sm.i.i, align 4
  %sm_flags.i.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %sm_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sm_flags.i.i, align 4
  %or.i.i = or i32 %12, 2
  store i32 %or.i.i, ptr %sm_flags.i.i, align 4
  %bc_flags.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 4
  %13 = ptrtoint ptr %bc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bc_flags.i.i, align 8
  %and.i.i = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_xchk_ifork_btree_error(ptr noundef %sc, ptr noundef %cur, i32 noundef 0, ptr noundef %8) #8
  br label %cleanup

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_xchk_btree_error(ptr noundef %sc, ptr noundef %cur, i32 noundef 0, ptr noundef %8) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @kmem_alloc(i32 noundef %retval.0.i.i, i32 noundef 28) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %cur5 = getelementptr inbounds %struct.xchk_btree, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %cur5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %cur, ptr %cur5, align 4
  %scrub_rec = getelementptr inbounds %struct.xchk_btree, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %scrub_rec to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %scrub_fn, ptr %scrub_rec, align 8
  %oinfo6 = getelementptr inbounds %struct.xchk_btree, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %oinfo6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %oinfo, ptr %oinfo6, align 4
  %private7 = getelementptr inbounds %struct.xchk_btree, ptr %call.i, i32 0, i32 4
  %18 = ptrtoint ptr %private7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %private, ptr %private7, align 8
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %sc, ptr %call.i, align 8
  %to_check = getelementptr inbounds %struct.xchk_btree, ptr %call.i, i32 0, i32 6
  %20 = ptrtoint ptr %to_check to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %to_check, ptr %to_check, align 4
  %prev.i = getelementptr inbounds %struct.xchk_btree, ptr %call.i, i32 0, i32 6, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %to_check, ptr %prev.i, align 4
  %22 = ptrtoint ptr %bc_nlevels to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bc_nlevels, align 8
  %conv10 = zext i8 %23 to i32
  %sub = add nsw i32 %conv10, -1
  %bc_ops = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 2
  %24 = ptrtoint ptr %bc_ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bc_ops, align 8
  %init_ptr_from_cur = getelementptr inbounds %struct.xfs_btree_ops, ptr %25, i32 0, i32 13
  %26 = ptrtoint ptr %init_ptr_from_cur to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_ptr_from_cur, align 4
  call void %27(ptr noundef %cur, ptr noundef nonnull %ptr) #8
  %28 = ptrtoint ptr %bc_nlevels to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bc_nlevels, align 8
  %conv12 = zext i8 %29 to i32
  %call13 = call fastcc zeroext i1 @xchk_btree_ptr_ok(ptr noundef nonnull %call.i, i32 noundef %conv12, ptr noundef nonnull %ptr)
  br i1 %call13, label %if.end15, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end15:                                         ; preds = %if.end4
  %call16 = call fastcc i32 @xchk_btree_get_block(ptr noundef nonnull %call.i, i32 noundef %sub, ptr noundef nonnull %ptr, ptr noundef nonnull %block, ptr noundef nonnull %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %lor.lhs.false, label %if.end15.out_crit_edge

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false:                                    ; preds = %if.end15
  %30 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %block, align 4
  %tobool18.not = icmp eq ptr %31, null
  br i1 %tobool18.not, label %lor.lhs.false.out_crit_edge, label %if.end20

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end20:                                         ; preds = %lor.lhs.false
  %ptr21 = getelementptr %struct.xfs_btree_cur, ptr %cur, i32 0, i32 11, i32 %sub, i32 1
  %32 = ptrtoint ptr %ptr21 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %ptr21, align 4
  %33 = ptrtoint ptr %bc_nlevels to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bc_nlevels, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %34)
  %cmp24236238.not = icmp ugt i8 %23, %34
  br i1 %cmp24236238.not, label %if.end20.out_crit_edge, label %while.body.lr.ph.lr.ph

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

while.body.lr.ph.lr.ph:                           ; preds = %if.end20
  %ptr32 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 1, i32 1
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %ptr46 = getelementptr %struct.xfs_btree_cur, ptr %cur, i32 1, i32 3
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.outer.backedge.while.body.lr.ph_crit_edge, %while.body.lr.ph.lr.ph
  %level.0.ph239 = phi i32 [ %sub, %while.body.lr.ph.lr.ph ], [ %level.0.ph.be, %while.cond.outer.backedge.while.body.lr.ph_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level.0.ph239)
  %cmp27 = icmp eq i32 %level.0.ph239, 0
  %ptr73 = getelementptr %struct.xfs_btree_cur, ptr %cur, i32 0, i32 11, i32 %level.0.ph239, i32 1
  br label %while.body

while.body:                                       ; preds = %if.then100.while.body_crit_edge, %while.body.lr.ph
  %call26 = call ptr @xfs_btree_get_block(ptr noundef %cur, i32 noundef %level.0.ph239, ptr noundef nonnull %bp) #8
  %35 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call26, ptr %block, align 4
  br i1 %cmp27, label %if.then29, label %if.end70

if.then29:                                        ; preds = %while.body
  %36 = ptrtoint ptr %ptr32 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %ptr32, align 4
  %bb_numrecs = getelementptr inbounds %struct.xfs_btree_block, ptr %call26, i32 0, i32 2
  %38 = ptrtoint ptr %bb_numrecs to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %bb_numrecs, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %37, i16 %39)
  %cmp35 = icmp ugt i16 %37, %39
  br i1 %cmp35, label %if.then37, label %if.end49

if.then37:                                        ; preds = %if.then29
  call fastcc void @xchk_btree_block_keys(ptr noundef nonnull %call.i, i32 noundef 0, ptr noundef %call26)
  %40 = ptrtoint ptr %bc_nlevels to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bc_nlevels, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %41)
  %cmp41 = icmp ugt i8 %41, 1
  br i1 %cmp41, label %if.then43, label %if.then37.while.cond.outer.backedge_crit_edge

if.then37.while.cond.outer.backedge_crit_edge:    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.outer.backedge

if.then43:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %ptr46 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %ptr46, align 4
  %inc = add i16 %43, 1
  store i16 %inc, ptr %ptr46, align 4
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %if.end111, %if.then85, %if.then79.while.cond.outer.backedge_crit_edge, %if.end65, %if.then43, %if.then37.while.cond.outer.backedge_crit_edge
  %level.0.ph.be = phi i32 [ %dec, %if.end111 ], [ 0, %if.end65 ], [ 1, %if.then43 ], [ 1, %if.then37.while.cond.outer.backedge_crit_edge ], [ %add87, %if.then85 ], [ %add87, %if.then79.while.cond.outer.backedge_crit_edge ]
  %44 = ptrtoint ptr %bc_nlevels to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bc_nlevels, align 8
  %conv23235 = zext i8 %45 to i32
  %cmp24236 = icmp slt i32 %level.0.ph.be, %conv23235
  br i1 %cmp24236, label %while.cond.outer.backedge.while.body.lr.ph_crit_edge, label %while.cond.outer.backedge.out_crit_edge

while.cond.outer.backedge.out_crit_edge:          ; preds = %while.cond.outer.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

while.cond.outer.backedge.while.body.lr.ph_crit_edge: ; preds = %while.cond.outer.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.lr.ph

if.end49:                                         ; preds = %if.then29
  call fastcc void @xchk_btree_rec(ptr noundef nonnull %call.i)
  %46 = ptrtoint ptr %ptr32 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %ptr32, align 4
  %conv53 = zext i16 %47 to i32
  %48 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %block, align 4
  %call54 = call ptr @xfs_btree_rec_addr(ptr noundef %cur, i32 noundef %conv53, ptr noundef %49) #8
  %50 = ptrtoint ptr %scrub_rec to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %scrub_rec, align 8
  %call56 = call i32 %51(ptr noundef nonnull %call.i, ptr noundef %call54) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end49.out_crit_edge

if.end49.out_crit_edge:                           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end59:                                         ; preds = %if.end49
  call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 24, i32 noundef 0) #8
  %call.i.i = call i32 @__cond_resched() #8
  %52 = call i32 @llvm.read_register.i32(metadata !28) #8
  %and.i.i223 = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i223 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %task.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %stack.i.i.i.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %57, align 4
  %and1.i.i.i.i.i.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i.i224 = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i224, label %if.end59.lor.lhs.false62_crit_edge, label %fatal_signal_pending.exit.i

if.end59.lor.lhs.false62_crit_edge:               ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false62

fatal_signal_pending.exit.i:                      ; preds = %if.end59
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 116, i32 1
  %60 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %signal.i.i.i, align 4
  %62 = and i32 %61, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i = icmp eq i32 %62, 0
  br i1 %tobool.not.i, label %fatal_signal_pending.exit.i.lor.lhs.false62_crit_edge, label %fatal_signal_pending.exit.i.out_crit_edge

fatal_signal_pending.exit.i.out_crit_edge:        ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

fatal_signal_pending.exit.i.lor.lhs.false62_crit_edge: ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %fatal_signal_pending.exit.i.lor.lhs.false62_crit_edge, %if.end59.lor.lhs.false62_crit_edge
  %63 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sm, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sm_flags, align 4
  %and = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool63.not = icmp eq i32 %and, 0
  br i1 %tobool63.not, label %if.end65, label %lor.lhs.false62.out_crit_edge

lor.lhs.false62.out_crit_edge:                    ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end65:                                         ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %ptr32 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %ptr32, align 4
  %inc69 = add i16 %68, 1
  store i16 %inc69, ptr %ptr32, align 4
  br label %while.cond.outer.backedge

if.end70:                                         ; preds = %while.body
  %69 = ptrtoint ptr %ptr73 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %ptr73, align 4
  %bb_numrecs75 = getelementptr inbounds %struct.xfs_btree_block, ptr %call26, i32 0, i32 2
  %71 = ptrtoint ptr %bb_numrecs75 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %bb_numrecs75, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %70, i16 %72)
  %cmp77 = icmp ugt i16 %70, %72
  br i1 %cmp77, label %if.then79, label %if.end93

if.then79:                                        ; preds = %if.end70
  call fastcc void @xchk_btree_block_keys(ptr noundef nonnull %call.i, i32 noundef %level.0.ph239, ptr noundef %call26)
  %73 = ptrtoint ptr %bc_nlevels to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %bc_nlevels, align 8
  %conv81 = zext i8 %74 to i32
  %sub82 = add nsw i32 %conv81, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %level.0.ph239, i32 %sub82)
  %cmp83 = icmp slt i32 %level.0.ph239, %sub82
  %add87 = add nsw i32 %level.0.ph239, 1
  br i1 %cmp83, label %if.then85, label %if.then79.while.cond.outer.backedge_crit_edge

if.then79.while.cond.outer.backedge_crit_edge:    ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.outer.backedge

if.then85:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  %ptr89 = getelementptr %struct.xfs_btree_cur, ptr %cur, i32 0, i32 11, i32 %add87, i32 1
  %75 = ptrtoint ptr %ptr89 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %ptr89, align 4
  %inc90 = add i16 %76, 1
  store i16 %inc90, ptr %ptr89, align 4
  br label %while.cond.outer.backedge

if.end93:                                         ; preds = %if.end70
  call fastcc void @xchk_btree_key(ptr noundef nonnull %call.i, i32 noundef %level.0.ph239)
  %77 = ptrtoint ptr %ptr73 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %ptr73, align 4
  %conv97 = zext i16 %78 to i32
  %79 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %block, align 4
  %call98 = call ptr @xfs_btree_ptr_addr(ptr noundef %cur, i32 noundef %conv97, ptr noundef %80) #8
  %call99 = call fastcc zeroext i1 @xchk_btree_ptr_ok(ptr noundef nonnull %call.i, i32 noundef %level.0.ph239, ptr noundef %call98)
  br i1 %call99, label %if.end105, label %if.then100

if.then100:                                       ; preds = %if.end93
  %81 = ptrtoint ptr %ptr73 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %ptr73, align 4
  %inc104 = add i16 %82, 1
  store i16 %inc104, ptr %ptr73, align 4
  %83 = ptrtoint ptr %bc_nlevels to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %bc_nlevels, align 8
  %conv23 = zext i8 %84 to i32
  %cmp24 = icmp slt i32 %level.0.ph239, %conv23
  br i1 %cmp24, label %if.then100.while.body_crit_edge, label %if.then100.out_crit_edge

if.then100.out_crit_edge:                         ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then100.while.body_crit_edge:                  ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end105:                                        ; preds = %if.end93
  %dec = add i32 %level.0.ph239, -1
  %call106 = call fastcc i32 @xchk_btree_get_block(ptr noundef nonnull %call.i, i32 noundef %dec, ptr noundef %call98, ptr noundef nonnull %block, ptr noundef nonnull %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %lor.lhs.false108, label %if.end105.out_crit_edge

if.end105.out_crit_edge:                          ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false108:                                 ; preds = %if.end105
  %85 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %block, align 4
  %tobool109.not = icmp eq ptr %86, null
  br i1 %tobool109.not, label %lor.lhs.false108.out_crit_edge, label %if.end111

lor.lhs.false108.out_crit_edge:                   ; preds = %lor.lhs.false108
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end111:                                        ; preds = %lor.lhs.false108
  call void @__sanitizer_cov_trace_pc() #10
  %ptr114 = getelementptr %struct.xfs_btree_cur, ptr %cur, i32 0, i32 11, i32 %dec, i32 1
  %87 = ptrtoint ptr %ptr114 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 1, ptr %ptr114, align 4
  br label %while.cond.outer.backedge

out:                                              ; preds = %lor.lhs.false108.out_crit_edge, %if.end105.out_crit_edge, %if.then100.out_crit_edge, %lor.lhs.false62.out_crit_edge, %fatal_signal_pending.exit.i.out_crit_edge, %if.end49.out_crit_edge, %while.cond.outer.backedge.out_crit_edge, %if.end20.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end15.out_crit_edge, %if.end4.out_crit_edge
  %error.2 = phi i32 [ 0, %lor.lhs.false.out_crit_edge ], [ %call16, %if.end15.out_crit_edge ], [ 0, %if.end4.out_crit_edge ], [ 0, %if.end20.out_crit_edge ], [ 0, %if.then100.out_crit_edge ], [ 0, %while.cond.outer.backedge.out_crit_edge ], [ 0, %lor.lhs.false62.out_crit_edge ], [ %call56, %if.end49.out_crit_edge ], [ 0, %lor.lhs.false108.out_crit_edge ], [ %call106, %if.end105.out_crit_edge ], [ -11, %fatal_signal_pending.exit.i.out_crit_edge ]
  %88 = ptrtoint ptr %to_check to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %to_check, align 8
  %cmp122.not241 = icmp eq ptr %89, %to_check
  br i1 %cmp122.not241, label %out.for.end_crit_edge, label %out.for.body_crit_edge

out.for.body_crit_edge:                           ; preds = %out
  br label %for.body

out.for.end_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %out.for.body_crit_edge
  %co.0243 = phi ptr [ %n.0244, %list_del.exit.for.body_crit_edge ], [ %89, %out.for.body_crit_edge ]
  %error.3242 = phi i32 [ %error.4, %list_del.exit.for.body_crit_edge ], [ %error.2, %out.for.body_crit_edge ]
  %90 = ptrtoint ptr %co.0243 to i32
  call void @__asan_load4_noabort(i32 %90)
  %n.0244 = load ptr, ptr %co.0243, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.3242)
  %tobool124.not = icmp eq i32 %error.3242, 0
  br i1 %tobool124.not, label %land.lhs.true, label %for.body.if.end130_crit_edge

for.body.if.end130_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130

land.lhs.true:                                    ; preds = %for.body
  %91 = ptrtoint ptr %cur5 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cur5, align 4
  %tobool126.not = icmp eq ptr %92, null
  br i1 %tobool126.not, label %land.lhs.true.if.end130_crit_edge, label %if.then127

land.lhs.true.if.end130_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130

if.then127:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %level128 = getelementptr inbounds %struct.check_owner, ptr %co.0243, i32 0, i32 2
  %93 = ptrtoint ptr %level128 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %level128, align 8
  %daddr = getelementptr inbounds %struct.check_owner, ptr %co.0243, i32 0, i32 1
  %95 = ptrtoint ptr %daddr to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %daddr, align 8
  %call129 = call fastcc i32 @xchk_btree_check_block_owner(ptr noundef nonnull %call.i, i32 noundef %94, i64 noundef %96)
  br label %if.end130

if.end130:                                        ; preds = %if.then127, %land.lhs.true.if.end130_crit_edge, %for.body.if.end130_crit_edge
  %error.4 = phi i32 [ 0, %land.lhs.true.if.end130_crit_edge ], [ %call129, %if.then127 ], [ %error.3242, %for.body.if.end130_crit_edge ]
  %call.i.i225 = call zeroext i1 @__list_del_entry_valid(ptr noundef %co.0243) #8
  br i1 %call.i.i225, label %if.end.i.i, label %if.end130.list_del.exit_crit_edge

if.end130.list_del.exit_crit_edge:                ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %co.0243, i32 0, i32 1
  %97 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %prev.i.i, align 4
  %99 = ptrtoint ptr %co.0243 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %co.0243, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %98, ptr %prev1.i.i.i, align 4
  %102 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %100, ptr %98, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end130.list_del.exit_crit_edge
  %103 = ptrtoint ptr %co.0243 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr inttoptr (i32 256 to ptr), ptr %co.0243, align 4
  %prev.i226 = getelementptr inbounds %struct.list_head, ptr %co.0243, i32 0, i32 1
  %104 = ptrtoint ptr %prev.i226 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i226, align 4
  call void @kvfree(ptr noundef %co.0243) #8
  %cmp122.not = icmp eq ptr %n.0244, %to_check
  br i1 %cmp122.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %out.for.end_crit_edge
  %error.3.lcssa = phi i32 [ %error.2, %out.for.end_crit_edge ], [ %error.4, %list_del.exit.for.end_crit_edge ]
  call void @kvfree(ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %if.else.i.i, %if.then.i.i
  %retval.0 = phi i32 [ %error.3.lcssa, %for.end ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.then.i.i ], [ 0, %if.else.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %block) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ptr) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @xchk_btree_ptr_ok(ptr nocapture noundef readonly %bs, i32 noundef %level, ptr nocapture noundef readonly %ptr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cur = getelementptr inbounds %struct.xchk_btree, ptr %bs, i32 0, i32 1
  %0 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur, align 4
  %bc_flags = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %bc_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bc_flags, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %bc_nlevels = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %bc_nlevels to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bc_nlevels, align 8
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %level)
  %cmp = icmp eq i32 %conv, %level
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %and5 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end12, label %if.then7

if.then7:                                         ; preds = %if.end
  %6 = ptrtoint ptr %ptr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ptr, align 8
  %call = tail call zeroext i1 @xfs_btree_check_lptr(ptr noundef %1, i64 noundef %7, i32 noundef %level) #8
  br i1 %call, label %if.then7.cleanup_crit_edge, label %if.then7.if.then14_crit_edge

if.then7.if.then14_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %8 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ptr, align 8
  %call10 = tail call zeroext i1 @xfs_btree_check_sptr(ptr noundef %1, i32 noundef %9, i32 noundef %level) #8
  br i1 %call10, label %if.end12.cleanup_crit_edge, label %if.end12.if.then14_crit_edge

if.end12.if.then14_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then14:                                        ; preds = %if.end12.if.then14_crit_edge, %if.then7.if.then14_crit_edge
  %10 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bs, align 8
  %12 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cur, align 4
  %14 = tail call ptr @llvm.returnaddress(i32 0) #8
  %sm.i.i = getelementptr inbounds %struct.xfs_scrub, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %sm.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sm.i.i, align 4
  %sm_flags.i.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %sm_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sm_flags.i.i, align 4
  %or.i.i = or i32 %18, 2
  store i32 %or.i.i, ptr %sm_flags.i.i, align 4
  %bc_flags.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %13, i32 0, i32 4
  %19 = ptrtoint ptr %bc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bc_flags.i.i, align 8
  %and.i.i = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_xchk_ifork_btree_error(ptr noundef %11, ptr noundef %13, i32 noundef %level, ptr noundef %14) #8
  br label %cleanup

if.else.i.i:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_xchk_btree_error(ptr noundef %11, ptr noundef %13, i32 noundef %level, ptr noundef %14) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else.i.i, %if.then.i.i, %if.end12.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %land.lhs.true.cleanup_crit_edge ], [ true, %if.end12.cleanup_crit_edge ], [ true, %if.then7.cleanup_crit_edge ], [ false, %if.then.i.i ], [ false, %if.else.i.i ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xchk_btree_get_block(ptr noundef %bs, i32 noundef %level, ptr noundef %pp, ptr noundef %pblock, ptr noundef %pbp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pblock to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %pblock, align 4
  %1 = ptrtoint ptr %pbp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %pbp, align 4
  %cur = getelementptr inbounds %struct.xchk_btree, ptr %bs, i32 0, i32 1
  %2 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur, align 4
  %call = tail call i32 @xfs_btree_lookup_get_block(ptr noundef %3, i32 noundef %level, ptr noundef %pp, ptr noundef %pblock) #8
  %4 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bs, align 8
  %6 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur, align 4
  %8 = tail call ptr @llvm.returnaddress(i32 0) #8
  %9 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %call, label %entry.sw.default.i.i_crit_edge [
    i32 0, label %lor.lhs.false
    i32 -35, label %sw.bb.i.i
    i32 -74, label %entry.sw.bb1.i.i_crit_edge
    i32 -117, label %entry.sw.bb1.i.i_crit_edge70
  ]

entry.sw.bb1.i.i_crit_edge70:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i.i

entry.sw.bb1.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i.i

entry.sw.default.i.i_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default.i.i

sw.bb.i.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ip.i.i = getelementptr inbounds %struct.xfs_scrub, ptr %5, i32 0, i32 5
  %10 = ptrtoint ptr %ip.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ip.i.i, align 4
  %sm.i.i = getelementptr inbounds %struct.xfs_scrub, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %sm.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sm.i.i, align 4
  tail call fastcc void @trace_xchk_deadlock_retry(ptr noundef %11, ptr noundef %13, i32 noundef -35) #8
  br label %cleanup

sw.bb1.i.i:                                       ; preds = %entry.sw.bb1.i.i_crit_edge, %entry.sw.bb1.i.i_crit_edge70
  %sm2.i.i = getelementptr inbounds %struct.xfs_scrub, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %sm2.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sm2.i.i, align 4
  %sm_flags.i.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %sm_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sm_flags.i.i, align 4
  %or.i.i = or i32 %17, 2
  store i32 %or.i.i, ptr %sm_flags.i.i, align 4
  br label %sw.default.i.i

sw.default.i.i:                                   ; preds = %sw.bb1.i.i, %entry.sw.default.i.i_crit_edge
  %error.0 = phi i32 [ 0, %sw.bb1.i.i ], [ %call, %entry.sw.default.i.i_crit_edge ]
  %bc_flags.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %7, i32 0, i32 4
  %18 = ptrtoint ptr %bc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bc_flags.i.i, align 8
  %and.i.i = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_xchk_ifork_btree_op_error(ptr noundef %5, ptr noundef %7, i32 noundef %level, i32 noundef %error.0, ptr noundef %8) #8
  br label %cleanup

if.else.i.i:                                      ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_xchk_btree_op_error(ptr noundef %5, ptr noundef %7, i32 noundef %level, i32 noundef %error.0, ptr noundef %8) #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %20 = ptrtoint ptr %pblock to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pblock, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %22 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cur, align 4
  %call4 = tail call ptr @xfs_btree_get_block(ptr noundef %23, i32 noundef %level, ptr noundef %pbp) #8
  %24 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cur, align 4
  %bc_flags = getelementptr inbounds %struct.xfs_btree_cur, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %bc_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bc_flags, align 8
  %and = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %28 = ptrtoint ptr %pblock to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pblock, align 4
  %30 = ptrtoint ptr %pbp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pbp, align 4
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call ptr @__xfs_btree_check_lblock(ptr noundef %25, ptr noundef %29, i32 noundef %level, ptr noundef %31) #8
  br label %if.end12

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = tail call ptr @__xfs_btree_check_sblock(ptr noundef %25, ptr noundef %29, i32 noundef %level, ptr noundef %31) #8
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then7
  %failed_at.0 = phi ptr [ %call9, %if.then7 ], [ %call11, %if.else ]
  %tobool13.not = icmp eq ptr %failed_at.0, null
  br i1 %tobool13.not, label %if.end17, label %if.then14

if.then14:                                        ; preds = %if.end12
  %32 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bs, align 8
  %34 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cur, align 4
  %sm.i.i59 = getelementptr inbounds %struct.xfs_scrub, ptr %33, i32 0, i32 1
  %36 = ptrtoint ptr %sm.i.i59 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sm.i.i59, align 4
  %sm_flags.i.i60 = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %sm_flags.i.i60 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sm_flags.i.i60, align 4
  %or.i.i61 = or i32 %39, 2
  store i32 %or.i.i61, ptr %sm_flags.i.i60, align 4
  %bc_flags.i.i62 = getelementptr inbounds %struct.xfs_btree_cur, ptr %35, i32 0, i32 4
  %40 = ptrtoint ptr %bc_flags.i.i62 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bc_flags.i.i62, align 8
  %and.i.i63 = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i63)
  %tobool.not.i.i64 = icmp eq i32 %and.i.i63, 0
  br i1 %tobool.not.i.i64, label %if.else.i.i65, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_xchk_ifork_btree_error(ptr noundef %33, ptr noundef %35, i32 noundef %level, ptr noundef %8) #8
  br label %cleanup

if.else.i.i65:                                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_xchk_btree_error(ptr noundef %33, ptr noundef %35, i32 noundef %level, ptr noundef %8) #8
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %42 = ptrtoint ptr %pbp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pbp, align 4
  %tobool18.not = icmp eq ptr %43, null
  br i1 %tobool18.not, label %if.end17.if.end21_crit_edge, label %if.then19

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bs, align 8
  tail call void @xchk_buffer_recheck(ptr noundef %45, ptr noundef nonnull %43) #8
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17.if.end21_crit_edge
  %46 = ptrtoint ptr %pblock to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pblock, align 4
  tail call fastcc void @xchk_btree_check_minrecs(ptr noundef %bs, i32 noundef %level, ptr noundef %47)
  %48 = ptrtoint ptr %pbp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pbp, align 4
  %call22 = tail call fastcc i32 @xchk_btree_check_owner(ptr noundef %bs, i32 noundef %level, ptr noundef %49)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %pblock to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pblock, align 4
  %call26 = tail call fastcc i32 @xchk_btree_block_check_siblings(ptr noundef %bs, ptr noundef %51)
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end21.cleanup_crit_edge, %if.else.i.i65, %if.then.i.i, %lor.lhs.false.cleanup_crit_edge, %if.else.i.i, %if.then3.i.i, %sw.bb.i.i
  %retval.0 = phi i32 [ %call26, %if.end25 ], [ %call22, %if.end21.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.then.i.i ], [ 0, %if.else.i.i65 ], [ -35, %sw.bb.i.i ], [ %error.0, %if.then3.i.i ], [ %error.0, %if.else.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_btree_get_block(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xchk_btree_block_keys(ptr nocapture noundef readonly %bs, i32 noundef %level, ptr noundef %block) unnamed_addr #3 align 64 {
entry:
  %block_keys = alloca %union.xfs_btree_key, align 8
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %block_keys) #8
  %0 = call ptr @memset(ptr %block_keys, i32 255, i32 40)
  %cur1 = getelementptr inbounds %struct.xchk_btree, ptr %bs, i32 0, i32 1
  %1 = ptrtoint ptr %cur1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cur1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #8
  %3 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !38
  %bc_nlevels = getelementptr inbounds %struct.xfs_btree_cur, ptr %2, i32 0, i32 7
  %4 = ptrtoint ptr %bc_nlevels to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bc_nlevels, align 8
  %conv = zext i8 %5 to i32
  %sub = add nsw i32 %conv, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %level)
  %cmp.not = icmp sgt i32 %sub, %level
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @xfs_btree_get_keys(ptr noundef %2, ptr noundef %block, ptr noundef nonnull %block_keys) #8
  %add = add nsw i32 %level, 1
  %call = call ptr @xfs_btree_get_block(ptr noundef %2, i32 noundef %add, ptr noundef nonnull %bp) #8
  %ptr = getelementptr %struct.xfs_btree_cur, ptr %2, i32 0, i32 11, i32 %add, i32 1
  %6 = ptrtoint ptr %ptr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ptr, align 4
  %conv4 = zext i16 %7 to i32
  %call5 = call ptr @xfs_btree_key_addr(ptr noundef %2, i32 noundef %conv4, ptr noundef %call) #8
  %bc_ops = getelementptr inbounds %struct.xfs_btree_cur, ptr %2, i32 0, i32 2
  %8 = ptrtoint ptr %bc_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bc_ops, align 8
  %diff_two_keys = getelementptr inbounds %struct.xfs_btree_ops, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %diff_two_keys to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %diff_two_keys, align 4
  %call6 = call i64 %11(ptr noundef %2, ptr noundef nonnull %block_keys, ptr noundef %call5) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call6)
  %cmp7.not = icmp eq i64 %call6, 0
  br i1 %cmp7.not, label %if.end.if.end10_crit_edge, label %if.then9

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then9:                                         ; preds = %if.end
  %12 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bs, align 8
  %14 = call ptr @llvm.returnaddress(i32 0) #8
  %sm.i.i = getelementptr inbounds %struct.xfs_scrub, ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %sm.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sm.i.i, align 4
  %sm_flags.i.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %sm_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sm_flags.i.i, align 4
  %or.i.i = or i32 %18, 2
  store i32 %or.i.i, ptr %sm_flags.i.i, align 4
  %bc_flags.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %2, i32 0, i32 4
  %19 = ptrtoint ptr %bc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bc_flags.i.i, align 8
  %and.i.i = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xchk_ifork_btree_error(ptr noundef %13, ptr noundef %2, i32 noundef 1, ptr noundef %14) #8
  br label %if.end10

if.else.i.i:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xchk_btree_error(ptr noundef %13, ptr noundef %2, i32 noundef 1, ptr noundef %14) #8
  br label %if.end10

if.end10:                                         ; preds = %if.else.i.i, %if.then.i.i, %if.end.if.end10_crit_edge
  %bc_flags = getelementptr inbounds %struct.xfs_btree_cur, ptr %2, i32 0, i32 4
  %21 = ptrtoint ptr %bc_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bc_flags, align 8
  %and = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end10.cleanup_crit_edge, label %if.end12

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end10
  %call13 = call ptr @xfs_btree_high_key_from_key(ptr noundef %2, ptr noundef nonnull %block_keys) #8
  %23 = ptrtoint ptr %ptr to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ptr, align 4
  %conv18 = zext i16 %24 to i32
  %call19 = call ptr @xfs_btree_high_key_addr(ptr noundef %2, i32 noundef %conv18, ptr noundef %call) #8
  %25 = ptrtoint ptr %bc_ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bc_ops, align 8
  %diff_two_keys21 = getelementptr inbounds %struct.xfs_btree_ops, ptr %26, i32 0, i32 16
  %27 = ptrtoint ptr %diff_two_keys21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %diff_two_keys21, align 4
  %call22 = call i64 %28(ptr noundef %2, ptr noundef %call13, ptr noundef %call19) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call22)
  %cmp23.not = icmp eq i64 %call22, 0
  br i1 %cmp23.not, label %if.end12.cleanup_crit_edge, label %if.then25

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then25:                                        ; preds = %if.end12
  %29 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bs, align 8
  %31 = call ptr @llvm.returnaddress(i32 0) #8
  %sm.i.i54 = getelementptr inbounds %struct.xfs_scrub, ptr %30, i32 0, i32 1
  %32 = ptrtoint ptr %sm.i.i54 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sm.i.i54, align 4
  %sm_flags.i.i55 = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %sm_flags.i.i55 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sm_flags.i.i55, align 4
  %or.i.i56 = or i32 %35, 2
  store i32 %or.i.i56, ptr %sm_flags.i.i55, align 4
  %36 = ptrtoint ptr %bc_flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bc_flags, align 8
  %and.i.i58 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i58)
  %tobool.not.i.i59 = icmp eq i32 %and.i.i58, 0
  br i1 %tobool.not.i.i59, label %if.else.i.i61, label %if.then.i.i60

if.then.i.i60:                                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xchk_ifork_btree_error(ptr noundef %30, ptr noundef %2, i32 noundef 1, ptr noundef %31) #8
  br label %cleanup

if.else.i.i61:                                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xchk_btree_error(ptr noundef %30, ptr noundef %2, i32 noundef 1, ptr noundef %31) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else.i.i61, %if.then.i.i60, %if.end12.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %block_keys) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xchk_btree_rec(ptr noundef %bs) unnamed_addr #3 align 64 {
entry:
  %key = alloca %union.xfs_btree_key, align 8
  %hkey = alloca %union.xfs_btree_key, align 8
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cur1 = getelementptr inbounds %struct.xchk_btree, ptr %bs, i32 0, i32 1
  %0 = ptrtoint ptr %cur1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur1, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %key) #8
  %2 = call ptr @memset(ptr %key, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %hkey) #8
  %3 = call ptr @memset(ptr %hkey, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #8
  %4 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !38
  %call = call ptr @xfs_btree_get_block(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %bp) #8
  %ptr = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 1, i32 1
  %5 = ptrtoint ptr %ptr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ptr, align 4
  %conv = zext i16 %6 to i32
  %call2 = call ptr @xfs_btree_rec_addr(ptr noundef %1, i32 noundef %conv, ptr noundef %call) #8
  %7 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bs, align 8
  call fastcc void @trace_xchk_btree_rec(ptr noundef %8, ptr noundef %1)
  %9 = ptrtoint ptr %ptr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %10)
  %cmp = icmp ugt i16 %10, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %bc_ops = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %bc_ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bc_ops, align 8
  %recs_inorder = getelementptr inbounds %struct.xfs_btree_ops, ptr %12, i32 0, i32 19
  %13 = ptrtoint ptr %recs_inorder to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %recs_inorder, align 4
  %lastrec = getelementptr inbounds %struct.xchk_btree, ptr %bs, i32 0, i32 5
  %call8 = call i32 %14(ptr noundef %1, ptr noundef %lastrec, ptr noundef %call2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %15 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bs, align 8
  %17 = call ptr @llvm.returnaddress(i32 0) #8
  %sm.i.i = getelementptr inbounds %struct.xfs_scrub, ptr %16, i32 0, i32 1
  %18 = ptrtoint ptr %sm.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sm.i.i, align 4
  %sm_flags.i.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %sm_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sm_flags.i.i, align 4
  %or.i.i = or i32 %21, 2
  store i32 %or.i.i, ptr %sm_flags.i.i, align 4
  %bc_flags.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %bc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bc_flags.i.i, align 8
  %and.i.i = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xchk_ifork_btree_error(ptr noundef %16, ptr noundef %1, i32 noundef 0, ptr noundef %17) #8
  br label %if.end

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xchk_btree_error(ptr noundef %16, ptr noundef %1, i32 noundef 0, ptr noundef %17) #8
  br label %if.end

if.end:                                           ; preds = %if.else.i.i, %if.then.i.i, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %lastrec10 = getelementptr inbounds %struct.xchk_btree, ptr %bs, i32 0, i32 5
  %bc_ops11 = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %bc_ops11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bc_ops11, align 8
  %rec_len = getelementptr inbounds %struct.xfs_btree_ops, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %rec_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rec_len, align 4
  %28 = call ptr @memcpy(ptr %lastrec10, ptr %call2, i32 %27)
  %bc_nlevels = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 7
  %29 = ptrtoint ptr %bc_nlevels to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bc_nlevels, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %cmp13 = icmp eq i8 %30, 1
  br i1 %cmp13, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %31 = ptrtoint ptr %bc_ops11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bc_ops11, align 8
  %init_key_from_rec = getelementptr inbounds %struct.xfs_btree_ops, ptr %32, i32 0, i32 11
  %33 = ptrtoint ptr %init_key_from_rec to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_key_from_rec, align 4
  call void %34(ptr noundef nonnull %key, ptr noundef %call2) #8
  %call18 = call ptr @xfs_btree_get_block(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %bp) #8
  %ptr21 = getelementptr %struct.xfs_btree_cur, ptr %1, i32 1, i32 3
  %35 = ptrtoint ptr %ptr21 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %ptr21, align 4
  %conv22 = zext i16 %36 to i32
  %call23 = call ptr @xfs_btree_key_addr(ptr noundef %1, i32 noundef %conv22, ptr noundef %call18) #8
  %37 = ptrtoint ptr %bc_ops11 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bc_ops11, align 8
  %diff_two_keys = getelementptr inbounds %struct.xfs_btree_ops, ptr %38, i32 0, i32 16
  %39 = ptrtoint ptr %diff_two_keys to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %diff_two_keys, align 4
  %call25 = call i64 %40(ptr noundef %1, ptr noundef nonnull %key, ptr noundef %call23) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call25)
  %cmp26 = icmp slt i64 %call25, 0
  br i1 %cmp26, label %if.then28, label %if.end16.if.end30_crit_edge

if.end16.if.end30_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then28:                                        ; preds = %if.end16
  %41 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bs, align 8
  %43 = call ptr @llvm.returnaddress(i32 0) #8
  %sm.i.i89 = getelementptr inbounds %struct.xfs_scrub, ptr %42, i32 0, i32 1
  %44 = ptrtoint ptr %sm.i.i89 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sm.i.i89, align 4
  %sm_flags.i.i90 = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %sm_flags.i.i90 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sm_flags.i.i90, align 4
  %or.i.i91 = or i32 %47, 2
  store i32 %or.i.i91, ptr %sm_flags.i.i90, align 4
  %bc_flags.i.i92 = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 4
  %48 = ptrtoint ptr %bc_flags.i.i92 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bc_flags.i.i92, align 8
  %and.i.i93 = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i93)
  %tobool.not.i.i94 = icmp eq i32 %and.i.i93, 0
  br i1 %tobool.not.i.i94, label %if.else.i.i96, label %if.then.i.i95

if.then.i.i95:                                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xchk_ifork_btree_error(ptr noundef %42, ptr noundef %1, i32 noundef 1, ptr noundef %43) #8
  br label %if.end30

if.else.i.i96:                                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xchk_btree_error(ptr noundef %42, ptr noundef %1, i32 noundef 1, ptr noundef %43) #8
  br label %if.end30

if.end30:                                         ; preds = %if.else.i.i96, %if.then.i.i95, %if.end16.if.end30_crit_edge
  %bc_flags = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 4
  %50 = ptrtoint ptr %bc_flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bc_flags, align 8
  %and = and i32 %51, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %if.end30.cleanup_crit_edge, label %if.end33

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end33:                                         ; preds = %if.end30
  %52 = ptrtoint ptr %bc_ops11 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bc_ops11, align 8
  %init_high_key_from_rec = getelementptr inbounds %struct.xfs_btree_ops, ptr %53, i32 0, i32 14
  %54 = ptrtoint ptr %init_high_key_from_rec to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %init_high_key_from_rec, align 4
  call void %55(ptr noundef nonnull %hkey, ptr noundef %call2) #8
  %56 = ptrtoint ptr %ptr21 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %ptr21, align 4
  %conv38 = zext i16 %57 to i32
  %call39 = call ptr @xfs_btree_high_key_addr(ptr noundef %1, i32 noundef %conv38, ptr noundef %call18) #8
  %58 = ptrtoint ptr %bc_ops11 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bc_ops11, align 8
  %diff_two_keys41 = getelementptr inbounds %struct.xfs_btree_ops, ptr %59, i32 0, i32 16
  %60 = ptrtoint ptr %diff_two_keys41 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %diff_two_keys41, align 4
  %call42 = call i64 %61(ptr noundef %1, ptr noundef %call39, ptr noundef nonnull %hkey) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call42)
  %cmp43 = icmp slt i64 %call42, 0
  br i1 %cmp43, label %if.then45, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then45:                                        ; preds = %if.end33
  %62 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bs, align 8
  %64 = call ptr @llvm.returnaddress(i32 0) #8
  %sm.i.i98 = getelementptr inbounds %struct.xfs_scrub, ptr %63, i32 0, i32 1
  %65 = ptrtoint ptr %sm.i.i98 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sm.i.i98, align 4
  %sm_flags.i.i99 = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %sm_flags.i.i99 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sm_flags.i.i99, align 4
  %or.i.i100 = or i32 %68, 2
  store i32 %or.i.i100, ptr %sm_flags.i.i99, align 4
  %69 = ptrtoint ptr %bc_flags to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %bc_flags, align 8
  %and.i.i102 = and i32 %70, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i102)
  %tobool.not.i.i103 = icmp eq i32 %and.i.i102, 0
  br i1 %tobool.not.i.i103, label %if.else.i.i105, label %if.then.i.i104

if.then.i.i104:                                   ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xchk_ifork_btree_error(ptr noundef %63, ptr noundef %1, i32 noundef 1, ptr noundef %64) #8
  br label %cleanup

if.else.i.i105:                                   ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xchk_btree_error(ptr noundef %63, ptr noundef %1, i32 noundef 1, ptr noundef %64) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else.i.i105, %if.then.i.i104, %if.end33.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %hkey) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %key) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_btree_rec_addr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xchk_btree_key(ptr noundef %bs, i32 noundef %level) unnamed_addr #3 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cur1 = getelementptr inbounds %struct.xchk_btree, ptr %bs, i32 0, i32 1
  %0 = ptrtoint ptr %cur1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #8
  %2 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !38
  %call = call ptr @xfs_btree_get_block(ptr noundef %1, i32 noundef %level, ptr noundef nonnull %bp) #8
  %ptr = getelementptr %struct.xfs_btree_cur, ptr %1, i32 0, i32 11, i32 %level, i32 1
  %3 = ptrtoint ptr %ptr to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %ptr, align 4
  %conv = zext i16 %4 to i32
  %call2 = call ptr @xfs_btree_key_addr(ptr noundef %1, i32 noundef %conv, ptr noundef %call) #8
  %5 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bs, align 8
  call fastcc void @trace_xchk_btree_key(ptr noundef %6, ptr noundef %1, i32 noundef %level)
  %7 = ptrtoint ptr %ptr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %8)
  %cmp = icmp ugt i16 %8, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %.pre = add i32 %level, -1
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %bc_ops = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %bc_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bc_ops, align 8
  %keys_inorder = getelementptr inbounds %struct.xfs_btree_ops, ptr %10, i32 0, i32 18
  %11 = ptrtoint ptr %keys_inorder to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %keys_inorder, align 4
  %sub = add i32 %level, -1
  %arrayidx8 = getelementptr %struct.xchk_btree, ptr %bs, i32 0, i32 7, i32 %sub
  %call9 = call i32 %12(ptr noundef %1, ptr noundef %arrayidx8, ptr noundef %call2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %13 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bs, align 8
  %15 = call ptr @llvm.returnaddress(i32 0) #8
  %sm.i.i = getelementptr inbounds %struct.xfs_scrub, ptr %14, i32 0, i32 1
  %16 = ptrtoint ptr %sm.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sm.i.i, align 4
  %sm_flags.i.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %sm_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sm_flags.i.i, align 4
  %or.i.i = or i32 %19, 2
  store i32 %or.i.i, ptr %sm_flags.i.i, align 4
  %bc_flags.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %bc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bc_flags.i.i, align 8
  %and.i.i = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xchk_ifork_btree_error(ptr noundef %14, ptr noundef %1, i32 noundef %level, ptr noundef %15) #8
  br label %if.end

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xchk_btree_error(ptr noundef %14, ptr noundef %1, i32 noundef %level, ptr noundef %15) #8
  br label %if.end

if.end:                                           ; preds = %if.else.i.i, %if.then.i.i, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %sub12.pre-phi = phi i32 [ %.pre, %entry.if.end_crit_edge ], [ %sub, %if.else.i.i ], [ %sub, %if.then.i.i ], [ %sub, %land.lhs.true.if.end_crit_edge ]
  %arrayidx13 = getelementptr %struct.xchk_btree, ptr %bs, i32 0, i32 7, i32 %sub12.pre-phi
  %bc_ops14 = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %bc_ops14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bc_ops14, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %26 = call ptr @memcpy(ptr %arrayidx13, ptr %call2, i32 %25)
  %add = add i32 %level, 1
  %bc_nlevels = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 7
  %27 = ptrtoint ptr %bc_nlevels to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bc_nlevels, align 8
  %conv15 = zext i8 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv15)
  %cmp16.not = icmp slt i32 %add, %conv15
  br i1 %cmp16.not, label %if.end19, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %call21 = call ptr @xfs_btree_get_block(ptr noundef %1, i32 noundef %add, ptr noundef nonnull %bp) #8
  %ptr25 = getelementptr %struct.xfs_btree_cur, ptr %1, i32 0, i32 11, i32 %add, i32 1
  %29 = ptrtoint ptr %ptr25 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %ptr25, align 4
  %conv26 = zext i16 %30 to i32
  %call27 = call ptr @xfs_btree_key_addr(ptr noundef %1, i32 noundef %conv26, ptr noundef %call21) #8
  %31 = ptrtoint ptr %bc_ops14 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bc_ops14, align 8
  %diff_two_keys = getelementptr inbounds %struct.xfs_btree_ops, ptr %32, i32 0, i32 16
  %33 = ptrtoint ptr %diff_two_keys to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %diff_two_keys, align 4
  %call29 = call i64 %34(ptr noundef %1, ptr noundef %call2, ptr noundef %call27) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call29)
  %cmp30 = icmp slt i64 %call29, 0
  br i1 %cmp30, label %if.then32, label %if.end19.if.end34_crit_edge

if.end19.if.end34_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then32:                                        ; preds = %if.end19
  %35 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bs, align 8
  %37 = call ptr @llvm.returnaddress(i32 0) #8
  %sm.i.i110 = getelementptr inbounds %struct.xfs_scrub, ptr %36, i32 0, i32 1
  %38 = ptrtoint ptr %sm.i.i110 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sm.i.i110, align 4
  %sm_flags.i.i111 = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %sm_flags.i.i111 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sm_flags.i.i111, align 4
  %or.i.i112 = or i32 %41, 2
  store i32 %or.i.i112, ptr %sm_flags.i.i111, align 4
  %bc_flags.i.i113 = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 4
  %42 = ptrtoint ptr %bc_flags.i.i113 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bc_flags.i.i113, align 8
  %and.i.i114 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i114)
  %tobool.not.i.i115 = icmp eq i32 %and.i.i114, 0
  br i1 %tobool.not.i.i115, label %if.else.i.i117, label %if.then.i.i116

if.then.i.i116:                                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xchk_ifork_btree_error(ptr noundef %36, ptr noundef %1, i32 noundef %level, ptr noundef %37) #8
  br label %if.end34

if.else.i.i117:                                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xchk_btree_error(ptr noundef %36, ptr noundef %1, i32 noundef %level, ptr noundef %37) #8
  br label %if.end34

if.end34:                                         ; preds = %if.else.i.i117, %if.then.i.i116, %if.end19.if.end34_crit_edge
  %bc_flags = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 4
  %44 = ptrtoint ptr %bc_flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bc_flags, align 8
  %and = and i32 %45, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool35.not = icmp eq i32 %and, 0
  br i1 %tobool35.not, label %if.end34.cleanup_crit_edge, label %if.end37

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end37:                                         ; preds = %if.end34
  %46 = ptrtoint ptr %ptr to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %ptr, align 4
  %conv41 = zext i16 %47 to i32
  %call42 = call ptr @xfs_btree_high_key_addr(ptr noundef %1, i32 noundef %conv41, ptr noundef %call) #8
  %48 = ptrtoint ptr %ptr25 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %ptr25, align 4
  %conv47 = zext i16 %49 to i32
  %call48 = call ptr @xfs_btree_high_key_addr(ptr noundef %1, i32 noundef %conv47, ptr noundef %call21) #8
  %50 = ptrtoint ptr %bc_ops14 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bc_ops14, align 8
  %diff_two_keys50 = getelementptr inbounds %struct.xfs_btree_ops, ptr %51, i32 0, i32 16
  %52 = ptrtoint ptr %diff_two_keys50 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %diff_two_keys50, align 4
  %call51 = call i64 %53(ptr noundef %1, ptr noundef %call48, ptr noundef %call42) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call51)
  %cmp52 = icmp slt i64 %call51, 0
  br i1 %cmp52, label %if.then54, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then54:                                        ; preds = %if.end37
  %54 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bs, align 8
  %56 = call ptr @llvm.returnaddress(i32 0) #8
  %sm.i.i119 = getelementptr inbounds %struct.xfs_scrub, ptr %55, i32 0, i32 1
  %57 = ptrtoint ptr %sm.i.i119 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sm.i.i119, align 4
  %sm_flags.i.i120 = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %sm_flags.i.i120 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sm_flags.i.i120, align 4
  %or.i.i121 = or i32 %60, 2
  store i32 %or.i.i121, ptr %sm_flags.i.i120, align 4
  %61 = ptrtoint ptr %bc_flags to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bc_flags, align 8
  %and.i.i123 = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123)
  %tobool.not.i.i124 = icmp eq i32 %and.i.i123, 0
  br i1 %tobool.not.i.i124, label %if.else.i.i126, label %if.then.i.i125

if.then.i.i125:                                   ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xchk_ifork_btree_error(ptr noundef %55, ptr noundef %1, i32 noundef %level, ptr noundef %56) #8
  br label %cleanup

if.else.i.i126:                                   ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xchk_btree_error(ptr noundef %55, ptr noundef %1, i32 noundef %level, ptr noundef %56) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else.i.i126, %if.then.i.i125, %if.end37.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_btree_ptr_addr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xchk_btree_check_block_owner(ptr nocapture noundef %bs, i32 noundef %level, i64 noundef %daddr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cur = getelementptr inbounds %struct.xchk_btree, ptr %bs, i32 0, i32 1
  %0 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %bc_btnum = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %bc_btnum to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bc_btnum, align 4
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bc_mp, align 4
  %m_blkbb_log.i = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 28
  %6 = ptrtoint ptr %m_blkbb_log.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %m_blkbb_log.i, align 1
  %sh_prom.i = zext i8 %7 to i64
  %shr.i = ashr i64 %daddr, %sh_prom.i
  %sb_agblocks.i = getelementptr inbounds %struct.xfs_sb, ptr %5, i32 0, i32 11
  %8 = ptrtoint ptr %sb_agblocks.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sb_agblocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shr.i)
  %cmp168.i = icmp ult i64 %shr.i, 4294967296
  br i1 %cmp168.i, label %if.then172.i167, label %if.else178.i168, !prof !39

if.then172.i167:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv173.i = trunc i64 %shr.i to i32
  %conv173.i.frozen = freeze i32 %conv173.i
  %.frozen = freeze i32 %9
  %div176.i = udiv i32 %conv173.i.frozen, %.frozen
  %10 = mul i32 %div176.i, %.frozen
  %rem174.i.decomposed = sub i32 %conv173.i.frozen, %10
  br label %xfs_daddr_to_agbno.exit

if.else178.i168:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 %shr.i) #11
  %asmresult1.i.i = extractvalue { i64, i64 } %11, 1
  %extract.t291.i = trunc i64 %asmresult1.i.i to i32
  %asmresult.i266.i = extractvalue { i64, i64 } %11, 0
  %shr.i.i = lshr i64 %asmresult.i266.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %xfs_daddr_to_agbno.exit

xfs_daddr_to_agbno.exit:                          ; preds = %if.else178.i168, %if.then172.i167
  %ld.0.off0.i175 = phi i32 [ %div176.i, %if.then172.i167 ], [ %extract.t291.i, %if.else178.i168 ]
  %__rem.0.i = phi i32 [ %rem174.i.decomposed, %if.then172.i167 ], [ %conv.i.i, %if.else178.i168 ]
  %bc_flags = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %bc_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bc_flags, align 8
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %xfs_daddr_to_agbno.exit.if.end17_crit_edge, label %if.then9

xfs_daddr_to_agbno.exit.if.end17_crit_edge:       ; preds = %xfs_daddr_to_agbno.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then9:                                         ; preds = %xfs_daddr_to_agbno.exit
  %14 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bs, align 8
  %sa = getelementptr inbounds %struct.xfs_scrub, ptr %15, i32 0, i32 10
  %call.i = tail call i32 @xchk_ag_init(ptr noundef %15, i32 noundef %ld.0.off0.i175, ptr noundef %sa) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call.i)
  %cmp.i169 = icmp eq i32 %call.i, -2
  %spec.select.i = select i1 %cmp.i169, i32 -117, i32 %call.i
  %16 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bs, align 8
  %18 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cur, align 4
  %20 = tail call ptr @llvm.returnaddress(i32 0) #8
  %21 = zext i32 %spec.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %spec.select.i, label %if.then9.sw.default.i.i_crit_edge [
    i32 0, label %if.then9.if.end17_crit_edge
    i32 -35, label %sw.bb.i.i
    i32 -74, label %if.then9.sw.bb1.i.i_crit_edge
    i32 -117, label %if.then9.sw.bb1.i.i_crit_edge183
  ]

if.then9.sw.bb1.i.i_crit_edge183:                 ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i.i

if.then9.sw.bb1.i.i_crit_edge:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i.i

if.then9.if.end17_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then9.sw.default.i.i_crit_edge:                ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default.i.i

sw.bb.i.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %ip.i.i = getelementptr inbounds %struct.xfs_scrub, ptr %17, i32 0, i32 5
  %22 = ptrtoint ptr %ip.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ip.i.i, align 4
  %sm.i.i = getelementptr inbounds %struct.xfs_scrub, ptr %17, i32 0, i32 1
  %24 = ptrtoint ptr %sm.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sm.i.i, align 4
  tail call fastcc void @trace_xchk_deadlock_retry(ptr noundef %23, ptr noundef %25, i32 noundef -35) #8
  br label %if.then35

sw.bb1.i.i:                                       ; preds = %if.then9.sw.bb1.i.i_crit_edge, %if.then9.sw.bb1.i.i_crit_edge183
  %sm2.i.i = getelementptr inbounds %struct.xfs_scrub, ptr %17, i32 0, i32 1
  %26 = ptrtoint ptr %sm2.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sm2.i.i, align 4
  %sm_flags.i.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %sm_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sm_flags.i.i, align 4
  %or.i.i = or i32 %29, 8
  store i32 %or.i.i, ptr %sm_flags.i.i, align 4
  br label %sw.default.i.i

sw.default.i.i:                                   ; preds = %sw.bb1.i.i, %if.then9.sw.default.i.i_crit_edge
  %error.0 = phi i32 [ 0, %sw.bb1.i.i ], [ %spec.select.i, %if.then9.sw.default.i.i_crit_edge ]
  %bc_flags.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %19, i32 0, i32 4
  %30 = ptrtoint ptr %bc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bc_flags.i.i, align 8
  %and.i.i170 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i170)
  %tobool.not.i.i = icmp eq i32 %and.i.i170, 0
  br i1 %tobool.not.i.i, label %if.else.i.i171, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_xchk_ifork_btree_op_error(ptr noundef %17, ptr noundef %19, i32 noundef %level, i32 noundef %error.0, ptr noundef %20) #8
  br label %if.then35

if.else.i.i171:                                   ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_xchk_btree_op_error(ptr noundef %17, ptr noundef %19, i32 noundef %level, i32 noundef %error.0, ptr noundef %20) #8
  br label %if.then35

if.end17:                                         ; preds = %if.then9.if.end17_crit_edge, %xfs_daddr_to_agbno.exit.if.end17_crit_edge
  %32 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bs, align 8
  tail call void @xchk_xref_is_used_space(ptr noundef %33, i32 noundef %__rem.0.i, i32 noundef 1) #8
  %34 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bs, align 8
  %bno_cur = getelementptr inbounds %struct.xfs_scrub, ptr %35, i32 0, i32 10, i32 4
  %36 = ptrtoint ptr %bno_cur to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bno_cur, align 4
  %tobool21.not = icmp eq ptr %37, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %or.cond = select i1 %tobool21.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then22, label %if.end17.if.end24_crit_edge

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %cur, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end17.if.end24_crit_edge
  %oinfo = getelementptr inbounds %struct.xchk_btree, ptr %bs, i32 0, i32 3
  %39 = ptrtoint ptr %oinfo to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %oinfo, align 4
  tail call void @xchk_xref_is_owned_by(ptr noundef %35, i32 noundef %__rem.0.i, i32 noundef 1, ptr noundef %40) #8
  %41 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bs, align 8
  %rmap_cur = getelementptr inbounds %struct.xfs_scrub, ptr %42, i32 0, i32 10, i32 8
  %43 = ptrtoint ptr %rmap_cur to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rmap_cur, align 4
  %tobool28.not = icmp eq ptr %44, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp30 = icmp eq i32 %3, 2
  %or.cond65 = select i1 %tobool28.not, i1 %cmp30, i1 false
  br i1 %or.cond65, label %if.then31, label %if.end24.out_free_crit_edge

if.end24.out_free_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.then31:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %cur, align 4
  br label %out_free

out_free:                                         ; preds = %if.then31, %if.end24.out_free_crit_edge
  br i1 %tobool7.not, label %out_free.cleanup_crit_edge, label %out_free.if.then35_crit_edge

out_free.if.then35_crit_edge:                     ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

out_free.cleanup_crit_edge:                       ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then35:                                        ; preds = %out_free.if.then35_crit_edge, %if.else.i.i171, %if.then3.i.i, %sw.bb.i.i
  %error.3 = phi i32 [ 0, %out_free.if.then35_crit_edge ], [ -35, %sw.bb.i.i ], [ %error.0, %if.then3.i.i ], [ %error.0, %if.else.i.i171 ]
  %46 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bs, align 8
  %sa38 = getelementptr inbounds %struct.xfs_scrub, ptr %47, i32 0, i32 10
  tail call void @xchk_ag_free(ptr noundef %47, ptr noundef %sa38) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %out_free.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %out_free.cleanup_crit_edge ], [ %error.3, %if.then35 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xchk_deadlock_retry(ptr noundef %ip, ptr noundef %sm, i32 noundef %error) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_deadlock_retry, i32 0, i32 1), ptr blockaddress(@trace_xchk_deadlock_retry, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !40

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !28) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !39

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !28) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !41
  %call42 = tail call i32 @__traceiter_xchk_deadlock_retry(ptr noundef null, ptr noundef %ip, ptr noundef %sm, i32 noundef %error) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !42
  %13 = tail call i32 @llvm.read_register.i32(metadata !28) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !28) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !39

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !28) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_deadlock_retry, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_deadlock_retry, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xchk_deadlock_retry.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xchk_deadlock_retry.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 138, ptr noundef nonnull @.str.1) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !44
  %31 = tail call i32 @llvm.read_register.i32(metadata !28) #8
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
define internal fastcc void @trace_xchk_ifork_btree_op_error(ptr noundef %sc, ptr noundef %cur, i32 noundef %level, i32 noundef %error, ptr noundef %ret_ip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_ifork_btree_op_error, i32 0, i32 1), ptr blockaddress(@trace_xchk_ifork_btree_op_error, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !40

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !28) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !39

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !28) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !45
  %call42 = tail call i32 @__traceiter_xchk_ifork_btree_op_error(ptr noundef null, ptr noundef %sc, ptr noundef %cur, i32 noundef %level, i32 noundef %error, ptr noundef %ret_ip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !46
  %13 = tail call i32 @llvm.read_register.i32(metadata !28) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !28) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !39

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !28) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_ifork_btree_op_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_ifork_btree_op_error, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xchk_ifork_btree_op_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xchk_ifork_btree_op_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 410, ptr noundef nonnull @.str.1) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !44
  %31 = tail call i32 @llvm.read_register.i32(metadata !28) #8
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
define internal fastcc void @trace_xchk_btree_op_error(ptr noundef %sc, ptr noundef %cur, i32 noundef %level, i32 noundef %error, ptr noundef %ret_ip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_btree_op_error, i32 0, i32 1), ptr blockaddress(@trace_xchk_btree_op_error, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !40

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !28) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !39

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !28) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  %call42 = tail call i32 @__traceiter_xchk_btree_op_error(ptr noundef null, ptr noundef %sc, ptr noundef %cur, i32 noundef %level, i32 noundef %error, ptr noundef %ret_ip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !48
  %13 = tail call i32 @llvm.read_register.i32(metadata !28) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !28) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !39

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !28) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_btree_op_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_btree_op_error, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xchk_btree_op_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xchk_btree_op_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 365, ptr noundef nonnull @.str.1) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !44
  %31 = tail call i32 @llvm.read_register.i32(metadata !28) #8
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
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xchk_deadlock_retry(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xchk_ifork_btree_op_error(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xchk_btree_op_error(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xchk_ifork_btree_error(ptr noundef %sc, ptr noundef %cur, i32 noundef %level, ptr noundef %ret_ip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_ifork_btree_error, i32 0, i32 1), ptr blockaddress(@trace_xchk_ifork_btree_error, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !40

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !28) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !39

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !28) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !49
  %call42 = tail call i32 @__traceiter_xchk_ifork_btree_error(ptr noundef null, ptr noundef %sc, ptr noundef %cur, i32 noundef %level, ptr noundef %ret_ip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !50
  %13 = tail call i32 @llvm.read_register.i32(metadata !28) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !28) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !39

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !28) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_ifork_btree_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_ifork_btree_error, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xchk_ifork_btree_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xchk_ifork_btree_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 488, ptr noundef nonnull @.str.1) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !44
  %31 = tail call i32 @llvm.read_register.i32(metadata !28) #8
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
define internal fastcc void @trace_xchk_btree_error(ptr noundef %sc, ptr noundef %cur, i32 noundef %level, ptr noundef %ret_ip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_btree_error, i32 0, i32 1), ptr blockaddress(@trace_xchk_btree_error, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !40

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !28) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !39

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !28) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !51
  %call42 = tail call i32 @__traceiter_xchk_btree_error(ptr noundef null, ptr noundef %sc, ptr noundef %cur, i32 noundef %level, ptr noundef %ret_ip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !52
  %13 = tail call i32 @llvm.read_register.i32(metadata !28) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !28) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !39

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !28) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_btree_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_btree_error, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xchk_btree_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xchk_btree_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 446, ptr noundef nonnull @.str.1) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !44
  %31 = tail call i32 @llvm.read_register.i32(metadata !28) #8
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
declare dso_local i32 @__traceiter_xchk_ifork_btree_error(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xchk_btree_error(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_alloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_btree_check_lptr(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_btree_check_sptr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_lookup_get_block(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__xfs_btree_check_lblock(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__xfs_btree_check_sblock(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_buffer_recheck(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xchk_btree_check_minrecs(ptr nocapture noundef readonly %bs, i32 noundef %level, ptr nocapture noundef readonly %block) unnamed_addr #3 align 64 {
entry:
  %root_bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cur1 = getelementptr inbounds %struct.xchk_btree, ptr %bs, i32 0, i32 1
  %0 = ptrtoint ptr %cur1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur1, align 4
  %bc_nlevels = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %bc_nlevels to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bc_nlevels, align 8
  %conv = zext i8 %3 to i32
  %sub = add nsw i32 %conv, -1
  %bb_numrecs = getelementptr inbounds %struct.xfs_btree_block, ptr %block, i32 0, i32 2
  %4 = ptrtoint ptr %bb_numrecs to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %bb_numrecs, align 2
  %conv2 = zext i16 %5 to i32
  %bc_ops = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %bc_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bc_ops, align 8
  %get_minrecs = getelementptr inbounds %struct.xfs_btree_ops, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %get_minrecs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_minrecs, align 4
  %call = tail call i32 %9(ptr noundef %1, i32 noundef %level) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv2)
  %cmp.not = icmp ugt i32 %call, %conv2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %bc_flags = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %bc_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bc_flags, align 8
  %and = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end24_crit_edge, label %land.lhs.true

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end
  %12 = ptrtoint ptr %bc_nlevels to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bc_nlevels, align 8
  %conv5 = zext i8 %13 to i32
  %sub6 = add nsw i32 %conv5, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub6, i32 %level)
  %cmp7 = icmp eq i32 %sub6, %level
  br i1 %cmp7, label %if.then9, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then9:                                         ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %root_bp) #8
  %14 = ptrtoint ptr %root_bp to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %root_bp, align 4, !annotation !38
  %call10 = call ptr @xfs_btree_get_block(ptr noundef %1, i32 noundef %sub, ptr noundef nonnull %root_bp) #8
  %15 = ptrtoint ptr %bc_ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bc_ops, align 8
  %get_dmaxrecs = getelementptr inbounds %struct.xfs_btree_ops, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %get_dmaxrecs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %get_dmaxrecs, align 4
  %call12 = call i32 %18(ptr noundef %1, i32 noundef %sub) #8
  %19 = ptrtoint ptr %cur1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cur1, align 4
  %bc_btnum.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %bc_btnum.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bc_btnum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp.i = icmp eq i32 %22, 3
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then9.land.lhs.true15_crit_edge

if.then9.land.lhs.true15_crit_edge:               ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true15

land.lhs.true.i:                                  ; preds = %if.then9
  %23 = getelementptr inbounds %struct.xfs_btree_cur, ptr %20, i32 0, i32 10
  %whichfork.i = getelementptr inbounds %struct.xfs_btree_cur_ino, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %whichfork.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %whichfork.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp2.i = icmp eq i8 %25, 0
  br i1 %cmp2.i, label %land.lhs.true4.i, label %land.lhs.true.i.land.lhs.true15_crit_edge

land.lhs.true.i.land.lhs.true15_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true15

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %26 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bs, align 8
  %ip.i = getelementptr inbounds %struct.xfs_scrub, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %ip.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ip.i, align 4
  %i_forkoff.i = getelementptr inbounds %struct.xfs_inode, ptr %29, i32 0, i32 23
  %30 = ptrtoint ptr %i_forkoff.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %i_forkoff.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp6.not.i = icmp eq i8 %31, 0
  br i1 %cmp6.not.i, label %land.lhs.true4.i.land.lhs.true15_crit_edge, label %land.lhs.true4.i.if.end23_crit_edge

land.lhs.true4.i.if.end23_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

land.lhs.true4.i.land.lhs.true15_crit_edge:       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true15

land.lhs.true15:                                  ; preds = %land.lhs.true4.i.land.lhs.true15_crit_edge, %land.lhs.true.i.land.lhs.true15_crit_edge, %if.then9.land.lhs.true15_crit_edge
  %bb_numrecs16 = getelementptr inbounds %struct.xfs_btree_block, ptr %call10, i32 0, i32 2
  %32 = ptrtoint ptr %bb_numrecs16 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %bb_numrecs16, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %33)
  %cmp18.not = icmp eq i16 %33, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call12, i32 %conv2)
  %cmp20.not = icmp ult i32 %call12, %conv2
  %or.cond = select i1 %cmp18.not, i1 %cmp20.not, i1 false
  br i1 %or.cond, label %land.lhs.true15.if.end23_crit_edge, label %if.then22

land.lhs.true15.if.end23_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then22:                                        ; preds = %land.lhs.true15
  %34 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bs, align 8
  %36 = call ptr @llvm.returnaddress(i32 0) #8
  %sm.i.i = getelementptr inbounds %struct.xfs_scrub, ptr %35, i32 0, i32 1
  %37 = ptrtoint ptr %sm.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sm.i.i, align 4
  %sm_flags.i.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %sm_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sm_flags.i.i, align 4
  %or.i.i = or i32 %40, 2
  store i32 %or.i.i, ptr %sm_flags.i.i, align 4
  %41 = ptrtoint ptr %bc_flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bc_flags, align 8
  %and.i.i = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xchk_ifork_btree_error(ptr noundef %35, ptr noundef %1, i32 noundef %level, ptr noundef %36) #8
  br label %if.end23

if.else.i.i:                                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xchk_btree_error(ptr noundef %35, ptr noundef %1, i32 noundef %level, ptr noundef %36) #8
  br label %if.end23

if.end23:                                         ; preds = %if.else.i.i, %if.then.i.i, %land.lhs.true15.if.end23_crit_edge, %land.lhs.true4.i.if.end23_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %root_bp) #8
  br label %cleanup

if.end24:                                         ; preds = %land.lhs.true.if.end24_crit_edge, %if.end.if.end24_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %level)
  %cmp25 = icmp ugt i32 %sub, %level
  br i1 %cmp25, label %if.then27, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then27:                                        ; preds = %if.end24
  %43 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bs, align 8
  %45 = tail call ptr @llvm.returnaddress(i32 0) #8
  %sm.i.i51 = getelementptr inbounds %struct.xfs_scrub, ptr %44, i32 0, i32 1
  %46 = ptrtoint ptr %sm.i.i51 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sm.i.i51, align 4
  %sm_flags.i.i52 = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %sm_flags.i.i52 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sm_flags.i.i52, align 4
  %or.i.i53 = or i32 %49, 2
  store i32 %or.i.i53, ptr %sm_flags.i.i52, align 4
  %50 = ptrtoint ptr %bc_flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bc_flags, align 8
  %and.i.i55 = and i32 %51, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i55)
  %tobool.not.i.i56 = icmp eq i32 %and.i.i55, 0
  br i1 %tobool.not.i.i56, label %if.else.i.i58, label %if.then.i.i57

if.then.i.i57:                                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_xchk_ifork_btree_error(ptr noundef %44, ptr noundef %1, i32 noundef %level, ptr noundef %45) #8
  br label %cleanup

if.else.i.i58:                                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_xchk_btree_error(ptr noundef %44, ptr noundef %1, i32 noundef %level, ptr noundef %45) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else.i.i58, %if.then.i.i57, %if.end24.cleanup_crit_edge, %if.end23, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xchk_btree_check_owner(ptr noundef %bs, i32 noundef %level, ptr noundef readonly %bp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cur1 = getelementptr inbounds %struct.xchk_btree, ptr %bs, i32 0, i32 1
  %0 = ptrtoint ptr %cur1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur1, align 4
  %cmp = icmp eq ptr %bp, null
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %bc_flags = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %bc_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bc_flags, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then2, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2:                                         ; preds = %if.then
  %4 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bs, align 8
  %6 = tail call ptr @llvm.returnaddress(i32 0) #8
  %sm.i.i = getelementptr inbounds %struct.xfs_scrub, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %sm.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sm.i.i, align 4
  %sm_flags.i.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %sm_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sm_flags.i.i, align 4
  %or.i.i = or i32 %10, 2
  store i32 %or.i.i, ptr %sm_flags.i.i, align 4
  %11 = ptrtoint ptr %bc_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bc_flags, align 8
  %and.i.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_xchk_ifork_btree_error(ptr noundef %5, ptr noundef %1, i32 noundef %level, ptr noundef %6) #8
  br label %cleanup

if.else.i.i:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_xchk_btree_error(ptr noundef %5, ptr noundef %1, i32 noundef %level, ptr noundef %6) #8
  br label %cleanup

if.end4:                                          ; preds = %entry
  %bc_btnum = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %bc_btnum to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bc_btnum, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %14, label %if.end14 [
    i32 0, label %if.end4.if.then8_crit_edge
    i32 2, label %if.end4.if.then8_crit_edge32
  ]

if.end4.if.then8_crit_edge32:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

if.end4.if.then8_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

if.then8:                                         ; preds = %if.end4.if.then8_crit_edge, %if.end4.if.then8_crit_edge32
  %call = tail call ptr @kmem_alloc(i32 noundef 24, i32 noundef 8) #8
  %tobool9.not = icmp eq ptr %call, null
  br i1 %tobool9.not, label %if.then8.cleanup_crit_edge, label %if.end11

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.then8
  %level12 = getelementptr inbounds %struct.check_owner, ptr %call, i32 0, i32 2
  %16 = ptrtoint ptr %level12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %level, ptr %level12, align 8
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 24
  %17 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %b_maps.i, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %18, align 8
  %daddr = getelementptr inbounds %struct.check_owner, ptr %call, i32 0, i32 1
  %21 = ptrtoint ptr %daddr to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %daddr, align 8
  %to_check = getelementptr inbounds %struct.xchk_btree, ptr %bs, i32 0, i32 6
  %prev.i = getelementptr inbounds %struct.xchk_btree, ptr %bs, i32 0, i32 6, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call, ptr noundef %23, ptr noundef %to_check) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call, ptr %prev.i, align 4
  %25 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %to_check, ptr %call, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %26 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %call, ptr %23, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %b_maps.i31 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 24
  %28 = ptrtoint ptr %b_maps.i31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %b_maps.i31, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %29, align 8
  %call16 = tail call fastcc i32 @xchk_btree_check_block_owner(ptr noundef %bs, i32 noundef %level, i64 noundef %31)
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.i.i, %if.end11.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.else.i.i, %if.then.i.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end14 ], [ 0, %if.then.cleanup_crit_edge ], [ -12, %if.then8.cleanup_crit_edge ], [ 0, %if.then.i.i ], [ 0, %if.else.i.i ], [ 0, %if.end11.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xchk_btree_block_check_siblings(ptr nocapture noundef readonly %bs, ptr noundef %block) unnamed_addr #3 align 64 {
entry:
  %leftsib = alloca %union.xfs_btree_ptr, align 8
  %rightsib = alloca %union.xfs_btree_ptr, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cur1 = getelementptr inbounds %struct.xchk_btree, ptr %bs, i32 0, i32 1
  %0 = ptrtoint ptr %cur1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %leftsib) #8
  %2 = ptrtoint ptr %leftsib to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %leftsib, align 8, !annotation !38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rightsib) #8
  %3 = ptrtoint ptr %rightsib to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %rightsib, align 8, !annotation !38
  call void @xfs_btree_get_sibling(ptr noundef %1, ptr noundef %block, ptr noundef nonnull %leftsib, i32 noundef 8) #8
  call void @xfs_btree_get_sibling(ptr noundef %1, ptr noundef %block, ptr noundef nonnull %rightsib, i32 noundef 16) #8
  %bb_level.i = getelementptr inbounds %struct.xfs_btree_block, ptr %block, i32 0, i32 1
  %4 = ptrtoint ptr %bb_level.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %bb_level.i, align 4
  %conv.i = zext i16 %5 to i32
  %bc_nlevels = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %bc_nlevels to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bc_nlevels, align 8
  %conv = zext i8 %7 to i32
  %sub = add nsw i32 %conv, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv.i)
  %cmp = icmp eq i32 %sub, %conv.i
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %call3 = call zeroext i1 @xfs_btree_ptr_is_null(ptr noundef %1, ptr noundef nonnull %leftsib) #8
  br i1 %call3, label %lor.lhs.false, label %if.then.if.then5_crit_edge

if.then.if.then5_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

lor.lhs.false:                                    ; preds = %if.then
  %call4 = call zeroext i1 @xfs_btree_ptr_is_null(ptr noundef %1, ptr noundef nonnull %rightsib) #8
  br i1 %call4, label %lor.lhs.false.out_crit_edge, label %lor.lhs.false.if.then5_crit_edge

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %if.then.if.then5_crit_edge
  %8 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bs, align 8
  %10 = call ptr @llvm.returnaddress(i32 0) #8
  %sm.i.i = getelementptr inbounds %struct.xfs_scrub, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %sm.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sm.i.i, align 4
  %sm_flags.i.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %sm_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sm_flags.i.i, align 4
  %or.i.i = or i32 %14, 2
  store i32 %or.i.i, ptr %sm_flags.i.i, align 4
  %bc_flags.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %bc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bc_flags.i.i, align 8
  %and.i.i = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xchk_ifork_btree_error(ptr noundef %9, ptr noundef %1, i32 noundef %conv.i, ptr noundef %10) #8
  br label %out

if.else.i.i:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xchk_btree_error(ptr noundef %9, ptr noundef %1, i32 noundef %conv.i, ptr noundef %10) #8
  br label %out

if.end6:                                          ; preds = %entry
  %call7 = call fastcc i32 @xchk_btree_block_check_sibling(ptr noundef %bs, i32 noundef %conv.i, i32 noundef -1, ptr noundef nonnull %leftsib)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %call10 = call fastcc i32 @xchk_btree_block_check_sibling(ptr noundef %bs, i32 noundef %conv.i, i32 noundef 1, ptr noundef nonnull %rightsib)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.out_crit_edge, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %if.end9.out_crit_edge, %if.else.i.i, %if.then.i.i, %lor.lhs.false.out_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ %call7, %if.end6.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rightsib) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %leftsib) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_btree_get_sibling(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_btree_ptr_is_null(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xchk_btree_block_check_sibling(ptr nocapture noundef readonly %bs, i32 noundef %level, i32 noundef %direction, ptr noundef %sibling) unnamed_addr #3 align 64 {
entry:
  %pbp = alloca ptr, align 4
  %ncur = alloca ptr, align 4
  %success = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cur1 = getelementptr inbounds %struct.xchk_btree, ptr %bs, i32 0, i32 1
  %0 = ptrtoint ptr %cur1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pbp) #8
  %2 = ptrtoint ptr %pbp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %pbp, align 4, !annotation !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ncur) #8
  %3 = ptrtoint ptr %ncur to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %ncur, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %success) #8
  %4 = ptrtoint ptr %success to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %success, align 4, !annotation !38
  %call = call i32 @xfs_btree_dup_cursor(ptr noundef %1, ptr noundef nonnull %ncur) #8
  %5 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bs, align 8
  %add = add i32 %level, 1
  %7 = call ptr @llvm.returnaddress(i32 0) #8
  %8 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %call, label %entry.sw.default.i.i_crit_edge [
    i32 0, label %lor.lhs.false
    i32 -35, label %sw.bb.i.i
    i32 -74, label %entry.sw.bb1.i.i_crit_edge
    i32 -117, label %entry.sw.bb1.i.i_crit_edge125
  ]

entry.sw.bb1.i.i_crit_edge125:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i.i

entry.sw.bb1.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i.i

entry.sw.default.i.i_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default.i.i

sw.bb.i.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ip.i.i = getelementptr inbounds %struct.xfs_scrub, ptr %6, i32 0, i32 5
  %9 = ptrtoint ptr %ip.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ip.i.i, align 4
  %sm.i.i = getelementptr inbounds %struct.xfs_scrub, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %sm.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sm.i.i, align 4
  call fastcc void @trace_xchk_deadlock_retry(ptr noundef %10, ptr noundef %12, i32 noundef -35) #8
  br label %cleanup

sw.bb1.i.i:                                       ; preds = %entry.sw.bb1.i.i_crit_edge, %entry.sw.bb1.i.i_crit_edge125
  %sm2.i.i = getelementptr inbounds %struct.xfs_scrub, ptr %6, i32 0, i32 1
  %13 = ptrtoint ptr %sm2.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sm2.i.i, align 4
  %sm_flags.i.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %sm_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sm_flags.i.i, align 4
  %or.i.i = or i32 %16, 2
  store i32 %or.i.i, ptr %sm_flags.i.i, align 4
  br label %sw.default.i.i

sw.default.i.i:                                   ; preds = %sw.bb1.i.i, %entry.sw.default.i.i_crit_edge
  %error.0 = phi i32 [ 0, %sw.bb1.i.i ], [ %call, %entry.sw.default.i.i_crit_edge ]
  %bc_flags.i.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %bc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bc_flags.i.i, align 8
  %and.i.i = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xchk_ifork_btree_op_error(ptr noundef %6, ptr noundef %1, i32 noundef %add, i32 noundef %error.0, ptr noundef %7) #8
  br label %cleanup

if.else.i.i:                                      ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xchk_btree_op_error(ptr noundef %6, ptr noundef %1, i32 noundef %add, i32 noundef %error.0, ptr noundef %7) #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %19 = ptrtoint ptr %ncur to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ncur, align 4
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call zeroext i1 @xfs_btree_ptr_is_null(ptr noundef %1, ptr noundef %sibling) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %direction)
  %cmp = icmp sgt i32 %direction, 0
  %21 = ptrtoint ptr %ncur to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ncur, align 4
  br i1 %call3, label %if.then4, label %if.end16

if.then4:                                         ; preds = %if.end
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = call i32 @xfs_btree_increment(ptr noundef %22, i32 noundef %add, ptr noundef nonnull %success) #8
  br label %if.end10

if.else:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = call i32 @xfs_btree_decrement(ptr noundef %22, i32 noundef %add, ptr noundef nonnull %success) #8
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then5
  %storemerge86 = phi i32 [ %call9, %if.else ], [ %call7, %if.then5 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge86)
  %cmp11 = icmp eq i32 %storemerge86, 0
  br i1 %cmp11, label %land.lhs.true, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true:                                    ; preds = %if.end10
  %23 = ptrtoint ptr %success to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %success, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool12.not = icmp eq i32 %24, 0
  br i1 %tobool12.not, label %land.lhs.true.out_crit_edge, label %if.then13

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then13:                                        ; preds = %land.lhs.true
  %25 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bs, align 8
  %sm.i.i87 = getelementptr inbounds %struct.xfs_scrub, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %sm.i.i87 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sm.i.i87, align 4
  %sm_flags.i.i88 = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %sm_flags.i.i88 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sm_flags.i.i88, align 4
  %or.i.i89 = or i32 %30, 2
  store i32 %or.i.i89, ptr %sm_flags.i.i88, align 4
  %bc_flags.i.i90 = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %bc_flags.i.i90 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bc_flags.i.i90, align 8
  %and.i.i91 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i91)
  %tobool.not.i.i92 = icmp eq i32 %and.i.i91, 0
  br i1 %tobool.not.i.i92, label %if.else.i.i93, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xchk_ifork_btree_error(ptr noundef %26, ptr noundef %1, i32 noundef %level, ptr noundef %7) #8
  br label %out

if.else.i.i93:                                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xchk_btree_error(ptr noundef %26, ptr noundef %1, i32 noundef %level, ptr noundef %7) #8
  br label %out

if.end16:                                         ; preds = %if.end
  br i1 %cmp, label %if.then18, label %if.else21

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %call20 = call i32 @xfs_btree_increment(ptr noundef %22, i32 noundef %add, ptr noundef nonnull %success) #8
  br label %if.end24

if.else21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = call i32 @xfs_btree_decrement(ptr noundef %22, i32 noundef %add, ptr noundef nonnull %success) #8
  br label %if.end24

if.end24:                                         ; preds = %if.else21, %if.then18
  %storemerge = phi i32 [ %call23, %if.else21 ], [ %call20, %if.then18 ]
  %33 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bs, align 8
  %35 = zext i32 %storemerge to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %storemerge, label %if.end24.sw.default.i.i106_crit_edge [
    i32 0, label %if.end29
    i32 -35, label %sw.bb.i.i98
    i32 -74, label %if.end24.sw.bb1.i.i102_crit_edge
    i32 -117, label %if.end24.sw.bb1.i.i102_crit_edge126
  ]

if.end24.sw.bb1.i.i102_crit_edge126:              ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i.i102

if.end24.sw.bb1.i.i102_crit_edge:                 ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i.i102

if.end24.sw.default.i.i106_crit_edge:             ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default.i.i106

sw.bb.i.i98:                                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %ip.i.i96 = getelementptr inbounds %struct.xfs_scrub, ptr %34, i32 0, i32 5
  %36 = ptrtoint ptr %ip.i.i96 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ip.i.i96, align 4
  %sm.i.i97 = getelementptr inbounds %struct.xfs_scrub, ptr %34, i32 0, i32 1
  %38 = ptrtoint ptr %sm.i.i97 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sm.i.i97, align 4
  call fastcc void @trace_xchk_deadlock_retry(ptr noundef %37, ptr noundef %39, i32 noundef -35) #8
  br label %out

sw.bb1.i.i102:                                    ; preds = %if.end24.sw.bb1.i.i102_crit_edge, %if.end24.sw.bb1.i.i102_crit_edge126
  %sm2.i.i99 = getelementptr inbounds %struct.xfs_scrub, ptr %34, i32 0, i32 1
  %40 = ptrtoint ptr %sm2.i.i99 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sm2.i.i99, align 4
  %sm_flags.i.i100 = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %sm_flags.i.i100 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sm_flags.i.i100, align 4
  %or.i.i101 = or i32 %43, 2
  store i32 %or.i.i101, ptr %sm_flags.i.i100, align 4
  br label %sw.default.i.i106

sw.default.i.i106:                                ; preds = %sw.bb1.i.i102, %if.end24.sw.default.i.i106_crit_edge
  %error.2 = phi i32 [ 0, %sw.bb1.i.i102 ], [ %storemerge, %if.end24.sw.default.i.i106_crit_edge ]
  %bc_flags.i.i103 = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 4
  %44 = ptrtoint ptr %bc_flags.i.i103 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bc_flags.i.i103, align 8
  %and.i.i104 = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i104)
  %tobool.not.i.i105 = icmp eq i32 %and.i.i104, 0
  br i1 %tobool.not.i.i105, label %if.else.i.i108, label %if.then3.i.i107

if.then3.i.i107:                                  ; preds = %sw.default.i.i106
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xchk_ifork_btree_op_error(ptr noundef %34, ptr noundef %1, i32 noundef %add, i32 noundef %error.2, ptr noundef %7) #8
  br label %out

if.else.i.i108:                                   ; preds = %sw.default.i.i106
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xchk_btree_op_error(ptr noundef %34, ptr noundef %1, i32 noundef %add, i32 noundef %error.2, ptr noundef %7) #8
  br label %out

if.end29:                                         ; preds = %if.end24
  %46 = ptrtoint ptr %success to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %success, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool30.not = icmp eq i32 %47, 0
  br i1 %tobool30.not, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.end29
  %48 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bs, align 8
  %sm.i.i110 = getelementptr inbounds %struct.xfs_scrub, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %sm.i.i110 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sm.i.i110, align 4
  %sm_flags.i.i111 = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %sm_flags.i.i111 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sm_flags.i.i111, align 4
  %or.i.i112 = or i32 %53, 2
  store i32 %or.i.i112, ptr %sm_flags.i.i111, align 4
  %bc_flags.i.i113 = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 4
  %54 = ptrtoint ptr %bc_flags.i.i113 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bc_flags.i.i113, align 8
  %and.i.i114 = and i32 %55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i114)
  %tobool.not.i.i115 = icmp eq i32 %and.i.i114, 0
  br i1 %tobool.not.i.i115, label %if.else.i.i117, label %if.then.i.i116

if.then.i.i116:                                   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xchk_ifork_btree_error(ptr noundef %49, ptr noundef %1, i32 noundef %add, ptr noundef %7) #8
  br label %out

if.else.i.i117:                                   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xchk_btree_error(ptr noundef %49, ptr noundef %1, i32 noundef %add, ptr noundef %7) #8
  br label %out

if.end34:                                         ; preds = %if.end29
  %56 = ptrtoint ptr %ncur to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ncur, align 4
  %call36 = call ptr @xfs_btree_get_block(ptr noundef %57, i32 noundef %add, ptr noundef nonnull %pbp) #8
  %58 = ptrtoint ptr %ncur to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ncur, align 4
  %ptr = getelementptr %struct.xfs_btree_cur, ptr %59, i32 0, i32 11, i32 %add, i32 1
  %60 = ptrtoint ptr %ptr to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %ptr, align 4
  %conv = zext i16 %61 to i32
  %call38 = call ptr @xfs_btree_ptr_addr(ptr noundef %59, i32 noundef %conv, ptr noundef %call36) #8
  %call40 = call fastcc zeroext i1 @xchk_btree_ptr_ok(ptr noundef %bs, i32 noundef %add, ptr noundef %call38)
  br i1 %call40, label %if.end42, label %if.end34.out_crit_edge

if.end34.out_crit_edge:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end42:                                         ; preds = %if.end34
  %62 = ptrtoint ptr %pbp to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pbp, align 4
  %tobool43.not = icmp eq ptr %63, null
  br i1 %tobool43.not, label %if.end42.if.end46_crit_edge, label %if.then44

if.end42.if.end46_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then44:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bs, align 8
  call void @xchk_buffer_recheck(ptr noundef %65, ptr noundef nonnull %63) #8
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.end42.if.end46_crit_edge
  %call47 = call i64 @xfs_btree_diff_two_ptrs(ptr noundef %1, ptr noundef %call38, ptr noundef %sibling) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call47)
  %tobool48.not = icmp eq i64 %call47, 0
  br i1 %tobool48.not, label %if.end46.out_crit_edge, label %if.then49

if.end46.out_crit_edge:                           ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bs, align 8
  call void @xchk_btree_set_corrupt(ptr noundef %67, ptr noundef %1, i32 noundef %level)
  br label %out

out:                                              ; preds = %if.then49, %if.end46.out_crit_edge, %if.end34.out_crit_edge, %if.else.i.i117, %if.then.i.i116, %if.else.i.i108, %if.then3.i.i107, %sw.bb.i.i98, %if.else.i.i93, %if.then.i.i, %land.lhs.true.out_crit_edge, %if.end10.out_crit_edge
  %error.4 = phi i32 [ 0, %if.end46.out_crit_edge ], [ 0, %if.then49 ], [ 0, %if.end34.out_crit_edge ], [ 0, %if.else.i.i93 ], [ 0, %if.then.i.i ], [ 0, %land.lhs.true.out_crit_edge ], [ 0, %if.end10.out_crit_edge ], [ 0, %if.then.i.i116 ], [ 0, %if.else.i.i117 ], [ -35, %sw.bb.i.i98 ], [ %error.2, %if.then3.i.i107 ], [ %error.2, %if.else.i.i108 ]
  %68 = ptrtoint ptr %ncur to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ncur, align 4
  call void @xfs_btree_del_cursor(ptr noundef %69, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %lor.lhs.false.cleanup_crit_edge, %if.else.i.i, %if.then3.i.i, %sw.bb.i.i
  %error.5 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %error.4, %out ], [ -35, %sw.bb.i.i ], [ %error.0, %if.then3.i.i ], [ %error.0, %if.else.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %success) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ncur) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbp) #8
  ret i32 %error.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_dup_cursor(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_increment(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_decrement(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @xfs_btree_diff_two_ptrs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_btree_del_cursor(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_btree_get_keys(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_btree_key_addr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_btree_high_key_from_key(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_btree_high_key_addr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xchk_btree_rec(ptr noundef %sc, ptr noundef %cur) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_btree_rec, i32 0, i32 1), ptr blockaddress(@trace_xchk_btree_rec, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !40

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !28) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !39

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !28) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !53
  %call42 = tail call i32 @__traceiter_xchk_btree_rec(ptr noundef null, ptr noundef %sc, ptr noundef %cur, i32 noundef 0) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !54
  %13 = tail call i32 @llvm.read_register.i32(metadata !28) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !28) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !39

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !28) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_btree_rec, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_btree_rec, i32 0, i32 7), align 4
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
  %.b1 = load i1, ptr @trace_xchk_btree_rec.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xchk_btree_rec.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 532, ptr noundef nonnull @.str.1) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !44
  %31 = tail call i32 @llvm.read_register.i32(metadata !28) #8
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
declare dso_local i32 @__traceiter_xchk_btree_rec(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xchk_btree_key(ptr noundef %sc, ptr noundef %cur, i32 noundef %level) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_btree_key, i32 0, i32 1), ptr blockaddress(@trace_xchk_btree_key, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !40

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !28) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !39

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !28) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !55
  %call42 = tail call i32 @__traceiter_xchk_btree_key(ptr noundef null, ptr noundef %sc, ptr noundef %cur, i32 noundef %level) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !56
  %13 = tail call i32 @llvm.read_register.i32(metadata !28) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !28) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !39

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !28) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_btree_key, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_btree_key, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xchk_btree_key.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xchk_btree_key.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 533, ptr noundef nonnull @.str.1) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !44
  %31 = tail call i32 @llvm.read_register.i32(metadata !28) #8
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
declare dso_local i32 @__traceiter_xchk_btree_key(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_xref_is_used_space(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_xref_is_owned_by(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_ag_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_ag_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7, !8, !10, !11, !13, !14, !16, !17, !19, !20, !22, !23, !25, !27}
!llvm.named.register.sp = !{!28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../fs/xfs/scrub/trace.h", i32 138, i32 1}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../fs/xfs/scrub/trace.h", i32 367, i32 1}
!10 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../fs/xfs/scrub/trace.h", i32 327, i32 1}
!13 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../fs/xfs/scrub/trace.h", i32 448, i32 1}
!16 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../fs/xfs/scrub/trace.h", i32 412, i32 1}
!19 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../fs/xfs/scrub/trace.h", i32 532, i32 1}
!22 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/xfs/scrub/common.h", i32 24, i32 2}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../fs/xfs/scrub/trace.h", i32 533, i32 1}
!27 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!28 = !{!"sp"}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"auto-init"}
!39 = !{!"branch_weights", i32 2000, i32 1}
!40 = !{i64 2148262742, i64 2148262747, i64 2148262760, i64 2148262804, i64 2148262838, i64 2148262859}
!41 = !{i64 2155809888}
!42 = !{i64 2155810115}
!43 = !{i64 2149964835}
!44 = !{i64 2149965871}
!45 = !{i64 2156083764}
!46 = !{i64 2156084035}
!47 = !{i64 2156061630}
!48 = !{i64 2156061889}
!49 = !{i64 2156119104}
!50 = !{i64 2156119355}
!51 = !{i64 2156101602}
!52 = !{i64 2156101841}
!53 = !{i64 2156136547}
!54 = !{i64 2156136766}
!55 = !{i64 2156157531}
!56 = !{i64 2156157750}
