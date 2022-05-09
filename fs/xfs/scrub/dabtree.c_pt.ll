; ModuleID = '/llk/IR_all_yes/fs/xfs/scrub/dabtree.c_pt.bc'
source_filename = "../fs/xfs/scrub/dabtree.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.xfs_buf_ops = type { ptr, %union.anon.87, ptr, ptr, ptr }
%union.anon.87 = type { [2 x i32] }
%struct.xchk_da_btree = type { %struct.xfs_da_args, [5 x i32], [5 x i32], ptr, ptr, ptr, i32, i32, i32 }
%struct.xfs_da_args = type { ptr, ptr, i32, i8, ptr, i32, i32, i32, i32, i64, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xfs_scrub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.xchk_ag }
%struct.xchk_ag = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xfs_scrub_metadata = type { i32, i32, i64, i32, i32, [5 x i64] }
%struct.xfs_da_state = type { ptr, ptr, %struct.xfs_da_state_path, %struct.xfs_da_state_path, i8, i8, i8, %struct.xfs_da_state_blk }
%struct.xfs_da_state_path = type { i32, [5 x %struct.xfs_da_state_blk] }
%struct.xfs_da_state_blk = type { ptr, i32, i64, i32, i32, i32 }
%struct.xfs_da_geometry = type { i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xfs_da3_icnode_hdr = type { i32, i32, i16, i16, i16, ptr }
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
%struct.xfs_da_node_entry = type { i32, i32 }
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
%struct.xfs_da_blkinfo = type { i32, i32, i16, i16 }
%struct.xfs_da3_blkinfo = type { %struct.xfs_da_blkinfo, i32, i64, i64, %struct.uuid_t, i64 }

@__tracepoint_xchk_deadlock_retry = external dso_local global %struct.tracepoint, align 4
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/xfs/scrub/trace.h\00", [43 x i8] zeroinitializer }, align 32
@trace_xchk_deadlock_retry.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xchk_file_op_error = external dso_local global %struct.tracepoint, align 4
@trace_xchk_file_op_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xchk_fblock_error = external dso_local global %struct.tracepoint, align 4
@trace_xchk_fblock_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"blk->magic == XFS_DA_NODE_MAGIC\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/xfs/scrub/dabtree.c\00", [41 x i8] zeroinitializer }, align 32
@xchk_da_btree_buf_ops = internal constant { %struct.xfs_buf_ops, [40 x i8] } { %struct.xfs_buf_ops { ptr @.str.5, %union.anon.87 zeroinitializer, ptr @xchk_da_btree_read_verify, ptr @xchk_da_btree_write_verify, ptr @xchk_da_btree_verify }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xchk_da_btree\00", [18 x i8] zeroinitializer }, align 32
@xfs_dir3_leaf1_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@xfs_da3_node_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/xfs/scrub/common.h\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4294967179, i64 4294967222, i64 4294967261]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.8 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967179, i64 4294967222, i64 4294967261]
@__sancov_gen_cov_switch_values.9 = internal global [10 x i64] [i64 8, i64 32, i64 15342, i64 15857, i64 15871, i64 16062, i64 54001, i64 54015, i64 64494, i64 65214]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 16, i64 15857, i64 54001]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 16, i64 15857, i64 54001]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 16, i64 15857, i64 54001]
@__sancov_gen_cov_switch_values.13 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967179, i64 4294967222, i64 4294967261]
@___asan_gen_.18 = private unnamed_addr constant [24 x i8] c"../fs/xfs/scrub/trace.h\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 138, i32 1 }
@___asan_gen_.21 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 108, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 88, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [22 x i8] c"xchk_da_btree_buf_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 207, i32 33 }
@___asan_gen_.33 = private constant [26 x i8] c"../fs/xfs/scrub/dabtree.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 208, i32 10 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [25 x i8] c"../fs/xfs/scrub/common.h\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 24, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @xchk_da_btree_buf_ops, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xchk_da_btree_buf_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @xchk_da_process_error(ptr nocapture noundef readonly %ds, i32 noundef %level, ptr nocapture noundef %error) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sc1 = getelementptr inbounds %struct.xchk_da_btree, ptr %ds, i32 0, i32 4
  %0 = ptrtoint ptr %sc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc1, align 4
  %2 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end.sw.default_crit_edge [
    i32 -35, label %sw.bb
    i32 -74, label %if.end.sw.bb2_crit_edge
    i32 -117, label %if.end.sw.bb2_crit_edge15
  ]

if.end.sw.bb2_crit_edge15:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

if.end.sw.bb2_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

if.end.sw.default_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ip = getelementptr inbounds %struct.xfs_scrub, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ip, align 4
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sm, align 4
  tail call fastcc void @trace_xchk_deadlock_retry(ptr noundef %6, ptr noundef %8, i32 noundef -35)
  br label %cleanup

sw.bb2:                                           ; preds = %if.end.sw.bb2_crit_edge, %if.end.sw.bb2_crit_edge15
  %sm3 = getelementptr inbounds %struct.xfs_scrub, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %sm3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sm3, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sm_flags, align 4
  %or = or i32 %12, 2
  store i32 %or, ptr %sm_flags, align 4
  %13 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %error, align 4
  br label %sw.default

sw.default:                                       ; preds = %sw.bb2, %if.end.sw.default_crit_edge
  %whichfork = getelementptr inbounds %struct.xfs_da_args, ptr %ds, i32 0, i32 13
  %14 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %whichfork, align 4
  %16 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ds, align 8
  %state = getelementptr inbounds %struct.xchk_da_btree, ptr %ds, i32 0, i32 3
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state, align 8
  %blkno = getelementptr %struct.xfs_da_state, ptr %19, i32 0, i32 2, i32 1, i32 %level, i32 1
  %20 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %blkno, align 4
  %blklog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %17, i32 0, i32 3
  %22 = ptrtoint ptr %blklog.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %blklog.i, align 1
  %conv.i = zext i8 %23 to i32
  %fsblog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %17, i32 0, i32 2
  %24 = ptrtoint ptr %fsblog.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %fsblog.i, align 4
  %conv1.i = zext i8 %25 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %shr.i = lshr i32 %21, %sub.i
  %conv = zext i32 %shr.i to i64
  %26 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %error, align 4
  %28 = tail call ptr @llvm.returnaddress(i32 0)
  tail call fastcc void @trace_xchk_file_op_error(ptr noundef %1, i32 noundef %15, i64 noundef %conv, i32 noundef %27, ptr noundef %28)
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb, %entry.cleanup_crit_edge
  ret i1 %cmp
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xchk_deadlock_retry(ptr noundef %ip, ptr noundef %sm, i32 noundef %error) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_deadlock_retry, i32 0, i32 1), ptr blockaddress(@trace_xchk_deadlock_retry, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !33

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !23) #7
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !34

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !23) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !35
  %call42 = tail call i32 @__traceiter_xchk_deadlock_retry(ptr noundef null, ptr noundef %ip, ptr noundef %sm, i32 noundef %error) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !36
  %13 = tail call i32 @llvm.read_register.i32(metadata !23) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !23) #7
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !34

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !23) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_deadlock_retry, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_deadlock_retry, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xchk_deadlock_retry.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_xchk_deadlock_retry.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 138, ptr noundef nonnull @.str.1) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !38
  %31 = tail call i32 @llvm.read_register.i32(metadata !23) #7
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
define internal fastcc void @trace_xchk_file_op_error(ptr noundef %sc, i32 noundef %whichfork, i64 noundef %offset, i32 noundef %error, ptr noundef %ret_ip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_file_op_error, i32 0, i32 1), ptr blockaddress(@trace_xchk_file_op_error, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !33

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !23) #7
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !34

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !23) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !39
  %call42 = tail call i32 @__traceiter_xchk_file_op_error(ptr noundef null, ptr noundef %sc, i32 noundef %whichfork, i64 noundef %offset, i32 noundef %error, ptr noundef %ret_ip) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !40
  %13 = tail call i32 @llvm.read_register.i32(metadata !23) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !23) #7
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !34

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !23) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_file_op_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_file_op_error, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xchk_file_op_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_xchk_file_op_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 201, ptr noundef nonnull @.str.1) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !38
  %31 = tail call i32 @llvm.read_register.i32(metadata !23) #7
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
declare ptr @llvm.returnaddress(i32 immarg) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xchk_da_set_corrupt(ptr nocapture noundef readonly %ds, i32 noundef %level) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sc1 = getelementptr inbounds %struct.xchk_da_btree, ptr %ds, i32 0, i32 4
  %0 = ptrtoint ptr %sc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc1, align 4
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sm, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sm_flags, align 4
  %or = or i32 %5, 2
  store i32 %or, ptr %sm_flags, align 4
  %whichfork = getelementptr inbounds %struct.xfs_da_args, ptr %ds, i32 0, i32 13
  %6 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %whichfork, align 4
  %8 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ds, align 8
  %state = getelementptr inbounds %struct.xchk_da_btree, ptr %ds, i32 0, i32 3
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state, align 8
  %blkno = getelementptr %struct.xfs_da_state, ptr %11, i32 0, i32 2, i32 1, i32 %level, i32 1
  %12 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %blkno, align 4
  %blklog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %9, i32 0, i32 3
  %14 = ptrtoint ptr %blklog.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %blklog.i, align 1
  %conv.i = zext i8 %15 to i32
  %fsblog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %9, i32 0, i32 2
  %16 = ptrtoint ptr %fsblog.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %fsblog.i, align 4
  %conv1.i = zext i8 %17 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %shr.i = lshr i32 %13, %sub.i
  %conv = zext i32 %shr.i to i64
  %18 = tail call ptr @llvm.returnaddress(i32 0)
  tail call fastcc void @trace_xchk_fblock_error(ptr noundef %1, i32 noundef %7, i64 noundef %conv, ptr noundef %18)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xchk_fblock_error(ptr noundef %sc, i32 noundef %whichfork, i64 noundef %offset, ptr noundef %ret_ip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_fblock_error, i32 0, i32 1), ptr blockaddress(@trace_xchk_fblock_error, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !33

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !23) #7
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !34

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !23) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !41
  %call42 = tail call i32 @__traceiter_xchk_fblock_error(ptr noundef null, ptr noundef %sc, i32 noundef %whichfork, i64 noundef %offset, ptr noundef %ret_ip) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !42
  %13 = tail call i32 @llvm.read_register.i32(metadata !23) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !23) #7
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !34

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !23) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_fblock_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_fblock_error, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xchk_fblock_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_xchk_fblock_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 305, ptr noundef nonnull @.str.1) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !38
  %31 = tail call i32 @llvm.read_register.i32(metadata !23) #7
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
define dso_local i32 @xchk_da_btree_hash(ptr nocapture noundef %ds, i32 noundef %level, ptr nocapture noundef readonly %hashp) local_unnamed_addr #0 align 64 {
entry:
  %hdr.i = alloca %struct.xfs_da3_icnode_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hashp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hashp, align 4
  %arrayidx = getelementptr %struct.xchk_da_btree, ptr %ds, i32 0, i32 1, i32 %level
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sc1.i = getelementptr inbounds %struct.xchk_da_btree, ptr %ds, i32 0, i32 4
  %4 = ptrtoint ptr %sc1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sc1.i, align 4
  %sm.i = getelementptr inbounds %struct.xfs_scrub, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %sm.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sm.i, align 4
  %sm_flags.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %sm_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sm_flags.i, align 4
  %or.i = or i32 %9, 2
  store i32 %or.i, ptr %sm_flags.i, align 4
  %whichfork.i = getelementptr inbounds %struct.xfs_da_args, ptr %ds, i32 0, i32 13
  %10 = ptrtoint ptr %whichfork.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %whichfork.i, align 4
  %12 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ds, align 8
  %state.i = getelementptr inbounds %struct.xchk_da_btree, ptr %ds, i32 0, i32 3
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %state.i, align 8
  %blkno.i = getelementptr %struct.xfs_da_state, ptr %15, i32 0, i32 2, i32 1, i32 %level, i32 1
  %16 = ptrtoint ptr %blkno.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %blkno.i, align 4
  %blklog.i.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %13, i32 0, i32 3
  %18 = ptrtoint ptr %blklog.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %blklog.i.i, align 1
  %conv.i.i = zext i8 %19 to i32
  %fsblog.i.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %13, i32 0, i32 2
  %20 = ptrtoint ptr %fsblog.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %fsblog.i.i, align 4
  %conv1.i.i = zext i8 %21 to i32
  %sub.i.i = sub nsw i32 %conv.i.i, %conv1.i.i
  %shr.i.i = lshr i32 %17, %sub.i.i
  %conv.i = zext i32 %shr.i.i to i64
  %22 = tail call ptr @llvm.returnaddress(i32 0) #7
  tail call fastcc void @trace_xchk_fblock_error(ptr noundef %5, i32 noundef %11, i64 noundef %conv.i, ptr noundef %22) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %1, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %cmp4 = icmp eq i32 %level, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %sub = add i32 %level, -1
  %state.i23 = getelementptr inbounds %struct.xchk_da_btree, ptr %ds, i32 0, i32 3
  %24 = ptrtoint ptr %state.i23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %state.i23, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %hdr.i) #7
  %26 = call ptr @memset(ptr %hdr.i, i32 255, i32 20)
  %magic.i = getelementptr %struct.xfs_da_state, ptr %25, i32 0, i32 2, i32 1, i32 %sub, i32 5
  %27 = ptrtoint ptr %magic.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %magic.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65214, i32 %28)
  %cmp.i = icmp eq i32 %28, 65214
  br i1 %cmp.i, label %if.end6.xchk_da_btree_node_entry.exit_crit_edge, label %cond.false.i, !prof !34

if.end6.xchk_da_btree_node_entry.exit_crit_edge:  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_da_btree_node_entry.exit

cond.false.i:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 88) #7
  br label %xchk_da_btree_node_entry.exit

xchk_da_btree_node_entry.exit:                    ; preds = %cond.false.i, %if.end6.xchk_da_btree_node_entry.exit_crit_edge
  %arrayidx.i = getelementptr %struct.xfs_da_state, ptr %25, i32 0, i32 2, i32 1, i32 %sub
  %sc.i = getelementptr inbounds %struct.xchk_da_btree, ptr %ds, i32 0, i32 4
  %29 = ptrtoint ptr %sc.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sc.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i, align 8
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %34, i32 0, i32 16
  %35 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %b_addr.i, align 4
  call void @xfs_da3_node_hdr_from_disk(ptr noundef %32, ptr noundef nonnull %hdr.i, ptr noundef %36) #7
  %btree.i = getelementptr inbounds %struct.xfs_da3_icnode_hdr, ptr %hdr.i, i32 0, i32 5
  %37 = ptrtoint ptr %btree.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %btree.i, align 4
  %index.i = getelementptr %struct.xfs_da_state, ptr %25, i32 0, i32 2, i32 1, i32 %sub, i32 3
  %39 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %index.i, align 8
  %add.ptr.i = getelementptr %struct.xfs_da_node_entry, ptr %38, i32 %40
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %hdr.i) #7
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %1)
  %cmp7 = icmp ult i32 %42, %1
  br i1 %cmp7, label %if.then8, label %xchk_da_btree_node_entry.exit.cleanup_crit_edge

xchk_da_btree_node_entry.exit.cleanup_crit_edge:  ; preds = %xchk_da_btree_node_entry.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8:                                         ; preds = %xchk_da_btree_node_entry.exit
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %sc.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sc.i, align 4
  %sm.i25 = getelementptr inbounds %struct.xfs_scrub, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %sm.i25 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sm.i25, align 4
  %sm_flags.i26 = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %sm_flags.i26 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sm_flags.i26, align 4
  %or.i27 = or i32 %48, 2
  store i32 %or.i27, ptr %sm_flags.i26, align 4
  %whichfork.i28 = getelementptr inbounds %struct.xfs_da_args, ptr %ds, i32 0, i32 13
  %49 = ptrtoint ptr %whichfork.i28 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %whichfork.i28, align 4
  %51 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ds, align 8
  %53 = ptrtoint ptr %state.i23 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %state.i23, align 8
  %blkno.i30 = getelementptr %struct.xfs_da_state, ptr %54, i32 0, i32 2, i32 1, i32 %level, i32 1
  %55 = ptrtoint ptr %blkno.i30 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %blkno.i30, align 4
  %blklog.i.i31 = getelementptr inbounds %struct.xfs_da_geometry, ptr %52, i32 0, i32 3
  %57 = ptrtoint ptr %blklog.i.i31 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %blklog.i.i31, align 1
  %conv.i.i32 = zext i8 %58 to i32
  %fsblog.i.i33 = getelementptr inbounds %struct.xfs_da_geometry, ptr %52, i32 0, i32 2
  %59 = ptrtoint ptr %fsblog.i.i33 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %fsblog.i.i33, align 4
  %conv1.i.i34 = zext i8 %60 to i32
  %sub.i.i35 = sub nsw i32 %conv.i.i32, %conv1.i.i34
  %shr.i.i36 = lshr i32 %56, %sub.i.i35
  %conv.i37 = zext i32 %shr.i.i36 to i64
  %61 = call ptr @llvm.returnaddress(i32 0) #7
  call fastcc void @trace_xchk_fblock_error(ptr noundef %44, i32 noundef %50, i64 noundef %conv.i37, ptr noundef %61) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %xchk_da_btree_node_entry.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xchk_da_btree(ptr noundef %sc, i32 noundef %whichfork, ptr nocapture noundef readonly %scrub_fn, ptr noundef %private) local_unnamed_addr #0 align 64 {
entry:
  %hdr.i = alloca %struct.xfs_da3_icnode_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc, align 4
  %2 = zext i32 %whichfork to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %whichfork, label %cond.false5 [
    i32 0, label %cond.true
    i32 1, label %cond.true3
  ]

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ip = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 5
  %3 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ip, align 4
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %4, i32 0, i32 8
  br label %cond.end7

cond.true3:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ip4 = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 5
  %5 = ptrtoint ptr %ip4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ip4, align 4
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_afp, align 8
  br label %cond.end7

cond.false5:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ip6 = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 5
  %9 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ip6, align 4
  %i_cowfp = getelementptr inbounds %struct.xfs_inode, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %i_cowfp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_cowfp, align 4
  br label %cond.end7

cond.end7:                                        ; preds = %cond.false5, %cond.true3, %cond.true
  %cond8 = phi ptr [ %i_df, %cond.true ], [ %8, %cond.true3 ], [ %12, %cond.false5 ]
  %if_format.i = getelementptr inbounds %struct.xfs_ifork, ptr %cond8, i32 0, i32 6
  %13 = ptrtoint ptr %if_format.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %if_format.i, align 2
  %15 = and i8 %14, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %16 = icmp eq i8 %15, 2
  br i1 %16, label %if.end, label %cond.end7.cleanup_crit_edge

cond.end7.cleanup_crit_edge:                      ; preds = %cond.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %cond.end7
  %call.i = tail call ptr @kmem_alloc(i32 noundef 176, i32 noundef 28) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %ip12 = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 5
  %17 = ptrtoint ptr %ip12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ip12, align 4
  %dp = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 10
  %19 = ptrtoint ptr %dp to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %dp, align 8
  %whichfork14 = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 13
  %20 = ptrtoint ptr %whichfork14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %whichfork, ptr %whichfork14, align 4
  %tp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %21 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tp, align 4
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 11
  %23 = ptrtoint ptr %trans to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %trans, align 4
  %op_flags = getelementptr inbounds %struct.xfs_da_args, ptr %call.i, i32 0, i32 24
  %24 = ptrtoint ptr %op_flags to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 8, ptr %op_flags, align 8
  %call18 = tail call ptr @xfs_da_state_alloc(ptr noundef nonnull %call.i) #7
  %state = getelementptr inbounds %struct.xchk_da_btree, ptr %call.i, i32 0, i32 3
  %25 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call18, ptr %state, align 8
  %sc19 = getelementptr inbounds %struct.xchk_da_btree, ptr %call.i, i32 0, i32 4
  %26 = ptrtoint ptr %sc19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %sc, ptr %sc19, align 4
  %private20 = getelementptr inbounds %struct.xchk_da_btree, ptr %call.i, i32 0, i32 5
  %27 = ptrtoint ptr %private20 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %private, ptr %private20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %whichfork)
  %cmp21 = icmp eq i32 %whichfork, 1
  br i1 %cmp21, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %m_attr_geo = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 7
  %28 = ptrtoint ptr %m_attr_geo to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %m_attr_geo, align 32
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %call.i, align 8
  %lowest = getelementptr inbounds %struct.xchk_da_btree, ptr %call.i, i32 0, i32 6
  %31 = ptrtoint ptr %lowest to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %lowest, align 4
  br label %if.end32

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %m_dir_geo = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 6
  %32 = ptrtoint ptr %m_dir_geo to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %m_dir_geo, align 4
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %call.i, align 8
  %leafblk = getelementptr inbounds %struct.xfs_da_geometry, ptr %33, i32 0, i32 10
  %35 = ptrtoint ptr %leafblk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %leafblk, align 4
  %lowest28 = getelementptr inbounds %struct.xchk_da_btree, ptr %call.i, i32 0, i32 6
  %37 = ptrtoint ptr %lowest28 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %lowest28, align 4
  %freeblk = getelementptr inbounds %struct.xfs_da_geometry, ptr %33, i32 0, i32 13
  %38 = ptrtoint ptr %freeblk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %freeblk, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then22
  %.sink = phi i32 [ 0, %if.then22 ], [ %39, %if.else ]
  %40 = getelementptr inbounds %struct.xchk_da_btree, ptr %call.i, i32 0, i32 7
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %.sink, ptr %40, align 8
  %lowest33 = getelementptr inbounds %struct.xchk_da_btree, ptr %call.i, i32 0, i32 6
  %42 = ptrtoint ptr %lowest33 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %lowest33, align 4
  %44 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %state, align 8
  %blk = getelementptr inbounds %struct.xfs_da_state, ptr %45, i32 0, i32 2, i32 1
  %call35 = tail call fastcc i32 @xchk_da_btree_block(ptr noundef nonnull %call.i, i32 noundef 0, i32 noundef %43)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end32.out_state_crit_edge

if.end32.out_state_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_state

if.end38:                                         ; preds = %if.end32
  %46 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %blk, align 8
  %cmp39 = icmp eq ptr %47, null
  br i1 %cmp39, label %if.end38.out_state_crit_edge, label %if.end41

if.end38.out_state_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_state

if.end41:                                         ; preds = %if.end38
  %index = getelementptr inbounds %struct.xfs_da_state, ptr %45, i32 0, i32 2, i32 1, i32 0, i32 3
  %48 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %index, align 8
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %tree_level = getelementptr inbounds %struct.xchk_da_btree, ptr %call.i, i32 0, i32 8
  %btree.i = getelementptr inbounds %struct.xfs_da3_icnode_hdr, ptr %hdr.i, i32 0, i32 5
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.outer.backedge.while.body.lr.ph_crit_edge, %if.end41
  %level.0.ph232 = phi i32 [ 0, %if.end41 ], [ %level.0.ph.be, %while.cond.outer.backedge.while.body.lr.ph_crit_edge ]
  %magic = getelementptr %struct.xfs_da_state_blk, ptr %blk, i32 %level.0.ph232, i32 5
  %index49 = getelementptr %struct.xfs_da_state_blk, ptr %blk, i32 %level.0.ph232, i32 3
  %arrayidx50 = getelementptr %struct.xchk_da_btree, ptr %call.i, i32 0, i32 2, i32 %level.0.ph232
  %49 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %magic, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65214, i32 %50)
  %cmp46.not249 = icmp eq i32 %50, 65214
  %51 = ptrtoint ptr %index49 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %index49, align 8
  %53 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx50, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp76.not250 = icmp slt i32 %52, %54
  br i1 %cmp46.not249, label %while.body.lr.ph.if.end71_crit_edge, label %while.body.lr.ph.if.then47_crit_edge

while.body.lr.ph.if.then47_crit_edge:             ; preds = %while.body.lr.ph
  br label %if.then47

while.body.lr.ph.if.end71_crit_edge:              ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.then47:                                        ; preds = %if.end67.if.then47_crit_edge, %while.body.lr.ph.if.then47_crit_edge
  %cmp76.not251 = phi i1 [ %cmp76.not, %if.end67.if.then47_crit_edge ], [ %cmp76.not250, %while.body.lr.ph.if.then47_crit_edge ]
  br i1 %cmp76.not251, label %if.end59, label %if.then52

if.then52:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level.0.ph232)
  %cmp53 = icmp sgt i32 %level.0.ph232, 0
  %sub = add i32 %level.0.ph232, -1
  br i1 %cmp53, label %if.then54, label %if.then52.if.end57_crit_edge

if.then52.if.end57_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then54:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  %index56 = getelementptr %struct.xfs_da_state_blk, ptr %blk, i32 %sub, i32 3
  %55 = ptrtoint ptr %index56 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %index56, align 8
  %inc = add i32 %56, 1
  store i32 %inc, ptr %index56, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %if.then52.if.end57_crit_edge
  %57 = ptrtoint ptr %tree_level to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tree_level, align 4
  %inc58 = add i32 %58, 1
  store i32 %inc58, ptr %tree_level, align 4
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %if.end109, %if.end84, %if.end57
  %level.0.ph.be = phi i32 [ %inc94, %if.end109 ], [ %dec87.pre-phi, %if.end84 ], [ %sub, %if.end57 ]
  %59 = icmp ult i32 %level.0.ph.be, 5
  br i1 %59, label %while.cond.outer.backedge.while.body.lr.ph_crit_edge, label %while.cond.outer.backedge.out_crit_edge

while.cond.outer.backedge.out_crit_edge:          ; preds = %while.cond.outer.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

while.cond.outer.backedge.while.body.lr.ph_crit_edge: ; preds = %while.cond.outer.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph

if.end59:                                         ; preds = %if.then47
  %call60 = call i32 %scrub_fn(ptr noundef nonnull %call.i, i32 noundef %level.0.ph232) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.end59.out_crit_edge

if.end59.out_crit_edge:                           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end63:                                         ; preds = %if.end59
  call void @__might_resched(ptr noundef nonnull @.str.6, i32 noundef 24, i32 noundef 0) #7
  %call.i.i = call i32 @__cond_resched() #7
  %60 = call i32 @llvm.read_register.i32(metadata !23) #7
  %and.i.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %stack.i.i.i.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %65, align 4
  %and1.i.i.i.i.i.i = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end63.lor.lhs.false_crit_edge, label %fatal_signal_pending.exit.i

if.end63.lor.lhs.false_crit_edge:                 ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

fatal_signal_pending.exit.i:                      ; preds = %if.end63
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 116, i32 1
  %68 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %signal.i.i.i, align 4
  %70 = and i32 %69, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i = icmp eq i32 %70, 0
  br i1 %tobool.not.i, label %fatal_signal_pending.exit.i.lor.lhs.false_crit_edge, label %fatal_signal_pending.exit.i.out_crit_edge

fatal_signal_pending.exit.i.out_crit_edge:        ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

fatal_signal_pending.exit.i.lor.lhs.false_crit_edge: ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %fatal_signal_pending.exit.i.lor.lhs.false_crit_edge, %if.end63.lor.lhs.false_crit_edge
  %71 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %sm, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %sm_flags, align 4
  %and = and i32 %74, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool65.not = icmp eq i32 %and, 0
  br i1 %tobool65.not, label %if.end67, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end67:                                         ; preds = %lor.lhs.false
  %75 = ptrtoint ptr %index49 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %index49, align 8
  %inc70 = add i32 %76, 1
  store i32 %inc70, ptr %index49, align 8
  %77 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %magic, align 8
  %cmp46.not = icmp eq i32 %78, 65214
  %79 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx50, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc70, i32 %80)
  %cmp76.not = icmp slt i32 %inc70, %80
  br i1 %cmp46.not, label %if.end67.if.end71_crit_edge, label %if.end67.if.then47_crit_edge

if.end67.if.then47_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then47

if.end67.if.end71_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.end71:                                         ; preds = %if.end67.if.end71_crit_edge, %while.body.lr.ph.if.end71_crit_edge
  %cmp76.not.lcssa = phi i1 [ %cmp76.not250, %while.body.lr.ph.if.end71_crit_edge ], [ %cmp76.not, %if.end67.if.end71_crit_edge ]
  br i1 %cmp76.not.lcssa, label %if.end88, label %if.then77

if.then77:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level.0.ph232)
  %cmp78.not = icmp eq i32 %level.0.ph232, 0
  br i1 %cmp78.not, label %if.then77.if.end84_crit_edge, label %if.then79

if.then77.if.end84_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.then79:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  %sub80 = add nsw i32 %level.0.ph232, -1
  %index82 = getelementptr %struct.xfs_da_state_blk, ptr %blk, i32 %sub80, i32 3
  %81 = ptrtoint ptr %index82 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %index82, align 8
  %inc83 = add i32 %82, 1
  store i32 %inc83, ptr %index82, align 8
  br label %if.end84

if.end84:                                         ; preds = %if.then79, %if.then77.if.end84_crit_edge
  %dec87.pre-phi = phi i32 [ %sub80, %if.then79 ], [ -1, %if.then77.if.end84_crit_edge ]
  %83 = ptrtoint ptr %tree_level to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tree_level, align 4
  %inc86 = add i32 %84, 1
  store i32 %inc86, ptr %tree_level, align 4
  br label %while.cond.outer.backedge

if.end88:                                         ; preds = %if.end71
  %85 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %state, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %hdr.i) #7
  %87 = call ptr @memset(ptr %hdr.i, i32 255, i32 20)
  %magic.i = getelementptr %struct.xfs_da_state, ptr %86, i32 0, i32 2, i32 1, i32 %level.0.ph232, i32 5
  %88 = ptrtoint ptr %magic.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %magic.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65214, i32 %89)
  %cmp.i219 = icmp eq i32 %89, 65214
  br i1 %cmp.i219, label %if.end88.xchk_da_btree_node_entry.exit_crit_edge, label %cond.false.i, !prof !34

if.end88.xchk_da_btree_node_entry.exit_crit_edge: ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_da_btree_node_entry.exit

cond.false.i:                                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 88) #7
  br label %xchk_da_btree_node_entry.exit

xchk_da_btree_node_entry.exit:                    ; preds = %cond.false.i, %if.end88.xchk_da_btree_node_entry.exit_crit_edge
  %arrayidx.i = getelementptr %struct.xfs_da_state, ptr %86, i32 0, i32 2, i32 1, i32 %level.0.ph232
  %90 = ptrtoint ptr %sc19 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %sc19, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  %94 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx.i, align 8
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %95, i32 0, i32 16
  %96 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %b_addr.i, align 4
  call void @xfs_da3_node_hdr_from_disk(ptr noundef %93, ptr noundef nonnull %hdr.i, ptr noundef %97) #7
  %98 = ptrtoint ptr %btree.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %btree.i, align 4
  %index.i = getelementptr %struct.xfs_da_state, ptr %86, i32 0, i32 2, i32 1, i32 %level.0.ph232, i32 3
  %100 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %index.i, align 8
  %add.ptr.i = getelementptr %struct.xfs_da_node_entry, ptr %99, i32 %101
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %hdr.i) #7
  %call90 = call i32 @xchk_da_btree_hash(ptr noundef nonnull %call.i, i32 noundef %level.0.ph232, ptr noundef %add.ptr.i)
  %inc94 = add nuw nsw i32 %level.0.ph232, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %level.0.ph232)
  %cmp95 = icmp ugt i32 %level.0.ph232, 3
  br i1 %cmp95, label %if.then96, label %if.end98

if.then96:                                        ; preds = %xchk_da_btree_node_entry.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @xchk_da_set_corrupt(ptr noundef nonnull %call.i, i32 noundef %level.0.ph232)
  br label %out

if.end98:                                         ; preds = %xchk_da_btree_node_entry.exit
  %before = getelementptr %struct.xfs_da_node_entry, ptr %99, i32 %101, i32 1
  %102 = ptrtoint ptr %before to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %before, align 4
  %104 = ptrtoint ptr %tree_level to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %tree_level, align 4
  %dec100 = add i32 %105, -1
  store i32 %dec100, ptr %tree_level, align 4
  %call101 = call fastcc i32 @xchk_da_btree_block(ptr noundef nonnull %call.i, i32 noundef %inc94, i32 noundef %103)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end104, label %if.end98.out_crit_edge

if.end98.out_crit_edge:                           ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end104:                                        ; preds = %if.end98
  %arrayidx105 = getelementptr %struct.xfs_da_state_blk, ptr %blk, i32 %inc94
  %106 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx105, align 8
  %cmp107 = icmp eq ptr %107, null
  br i1 %cmp107, label %if.end104.out_crit_edge, label %if.end109

if.end104.out_crit_edge:                          ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end109:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  %index111 = getelementptr %struct.xfs_da_state_blk, ptr %blk, i32 %inc94, i32 3
  %108 = ptrtoint ptr %index111 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %index111, align 8
  br label %while.cond.outer.backedge

out:                                              ; preds = %if.end104.out_crit_edge, %if.end98.out_crit_edge, %if.then96, %lor.lhs.false.out_crit_edge, %fatal_signal_pending.exit.i.out_crit_edge, %if.end59.out_crit_edge, %while.cond.outer.backedge.out_crit_edge
  %error.2 = phi i32 [ 0, %if.then96 ], [ 0, %lor.lhs.false.out_crit_edge ], [ %call60, %if.end59.out_crit_edge ], [ -11, %fatal_signal_pending.exit.i.out_crit_edge ], [ 0, %while.cond.outer.backedge.out_crit_edge ], [ 0, %if.end104.out_crit_edge ], [ %call101, %if.end98.out_crit_edge ]
  %109 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %blk, align 8
  %cmp115 = icmp eq ptr %110, null
  br i1 %cmp115, label %out.for.inc_crit_edge, label %if.end117

out.for.inc_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end117:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  %111 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %tp, align 4
  call void @xfs_trans_brelse(ptr noundef %112, ptr noundef nonnull %110) #7
  %113 = ptrtoint ptr %blk to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr null, ptr %blk, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end117, %out.for.inc_crit_edge
  %arrayidx113.1 = getelementptr %struct.xfs_da_state, ptr %45, i32 0, i32 2, i32 1, i32 1
  %114 = ptrtoint ptr %arrayidx113.1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx113.1, align 8
  %cmp115.1 = icmp eq ptr %115, null
  br i1 %cmp115.1, label %for.inc.for.inc.1_crit_edge, label %if.end117.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.end117.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %116 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %tp, align 4
  call void @xfs_trans_brelse(ptr noundef %117, ptr noundef nonnull %115) #7
  %118 = ptrtoint ptr %arrayidx113.1 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %arrayidx113.1, align 8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end117.1, %for.inc.for.inc.1_crit_edge
  %arrayidx113.2 = getelementptr %struct.xfs_da_state, ptr %45, i32 0, i32 2, i32 1, i32 2
  %119 = ptrtoint ptr %arrayidx113.2 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx113.2, align 8
  %cmp115.2 = icmp eq ptr %120, null
  br i1 %cmp115.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end117.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.end117.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %121 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %tp, align 4
  call void @xfs_trans_brelse(ptr noundef %122, ptr noundef nonnull %120) #7
  %123 = ptrtoint ptr %arrayidx113.2 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr null, ptr %arrayidx113.2, align 8
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end117.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx113.3 = getelementptr %struct.xfs_da_state, ptr %45, i32 0, i32 2, i32 1, i32 3
  %124 = ptrtoint ptr %arrayidx113.3 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx113.3, align 8
  %cmp115.3 = icmp eq ptr %125, null
  br i1 %cmp115.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end117.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.end117.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %126 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %tp, align 4
  call void @xfs_trans_brelse(ptr noundef %127, ptr noundef nonnull %125) #7
  %128 = ptrtoint ptr %arrayidx113.3 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr null, ptr %arrayidx113.3, align 8
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end117.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx113.4 = getelementptr %struct.xfs_da_state, ptr %45, i32 0, i32 2, i32 1, i32 4
  %129 = ptrtoint ptr %arrayidx113.4 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx113.4, align 8
  %cmp115.4 = icmp eq ptr %130, null
  br i1 %cmp115.4, label %for.inc.3.out_state_crit_edge, label %if.end117.4

for.inc.3.out_state_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_state

if.end117.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  %131 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %tp, align 4
  call void @xfs_trans_brelse(ptr noundef %132, ptr noundef nonnull %130) #7
  %133 = ptrtoint ptr %arrayidx113.4 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr null, ptr %arrayidx113.4, align 8
  br label %out_state

out_state:                                        ; preds = %if.end117.4, %for.inc.3.out_state_crit_edge, %if.end38.out_state_crit_edge, %if.end32.out_state_crit_edge
  %error.3 = phi i32 [ 0, %if.end38.out_state_crit_edge ], [ %call35, %if.end32.out_state_crit_edge ], [ %error.2, %if.end117.4 ], [ %error.2, %for.inc.3.out_state_crit_edge ]
  %134 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %state, align 8
  call void @xfs_da_state_free(ptr noundef %135) #7
  call void @kvfree(ptr noundef %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out_state, %if.end.cleanup_crit_edge, %cond.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.3, %out_state ], [ 0, %cond.end7.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_da_state_alloc(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xchk_da_btree_block(ptr noundef %ds, i32 noundef %level, i32 noundef %blkno) unnamed_addr #5 align 64 {
entry:
  %hdr.i = alloca %struct.xfs_da3_icnode_hdr, align 4
  %nodehdr = alloca %struct.xfs_da3_icnode_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dp = getelementptr inbounds %struct.xfs_da_args, ptr %ds, i32 0, i32 10
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %nodehdr) #7
  %2 = call ptr @memset(ptr %nodehdr, i32 255, i32 20)
  %state = getelementptr inbounds %struct.xchk_da_btree, ptr %ds, i32 0, i32 3
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state, align 8
  %path = getelementptr inbounds %struct.xfs_da_state, ptr %4, i32 0, i32 2
  %arrayidx = getelementptr %struct.xfs_da_state, ptr %4, i32 0, i32 2, i32 1, i32 %level
  %add = add i32 %level, 1
  %5 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %path, align 8
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %ds, i32 0, i32 11
  %8 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trans, align 4
  tail call void @xfs_trans_brelse(ptr noundef %9, ptr noundef nonnull %7) #7
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %blkno8 = getelementptr %struct.xfs_da_state, ptr %4, i32 0, i32 2, i32 1, i32 %level, i32 1
  %11 = ptrtoint ptr %blkno8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %blkno, ptr %blkno8, align 4
  %call = tail call fastcc zeroext i1 @xchk_da_btree_ptr_ok(ptr noundef %ds, i32 noundef %level, i32 noundef %blkno)
  br i1 %call, label %if.end10, label %if.end.out_nobuf_crit_edge

if.end.out_nobuf_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_nobuf

if.end10:                                         ; preds = %if.end
  %trans11 = getelementptr inbounds %struct.xfs_da_args, ptr %ds, i32 0, i32 11
  %12 = ptrtoint ptr %trans11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %trans11, align 4
  %14 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dp, align 8
  %16 = ptrtoint ptr %blkno8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %blkno8, align 4
  %whichfork = getelementptr inbounds %struct.xfs_da_args, ptr %ds, i32 0, i32 13
  %18 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %whichfork, align 4
  %call15 = tail call i32 @xfs_da_read_buf(ptr noundef %13, ptr noundef %15, i32 noundef %17, i32 noundef 1, ptr noundef %arrayidx, i32 noundef %19, ptr noundef nonnull @xchk_da_btree_buf_ops) #7
  %sc1.i = getelementptr inbounds %struct.xchk_da_btree, ptr %ds, i32 0, i32 4
  %20 = ptrtoint ptr %sc1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sc1.i, align 4
  %22 = zext i32 %call15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %call15, label %if.end10.sw.default.i_crit_edge [
    i32 0, label %if.end18
    i32 -35, label %sw.bb.i
    i32 -74, label %if.end10.sw.bb2.i_crit_edge
    i32 -117, label %if.end10.sw.bb2.i_crit_edge308
  ]

if.end10.sw.bb2.i_crit_edge308:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

if.end10.sw.bb2.i_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

if.end10.sw.default.i_crit_edge:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default.i

sw.bb.i:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %ip.i = getelementptr inbounds %struct.xfs_scrub, ptr %21, i32 0, i32 5
  %23 = ptrtoint ptr %ip.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ip.i, align 4
  %sm.i = getelementptr inbounds %struct.xfs_scrub, ptr %21, i32 0, i32 1
  %25 = ptrtoint ptr %sm.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sm.i, align 4
  tail call fastcc void @trace_xchk_deadlock_retry(ptr noundef %24, ptr noundef %26, i32 noundef -35) #7
  br label %out_nobuf

sw.bb2.i:                                         ; preds = %if.end10.sw.bb2.i_crit_edge, %if.end10.sw.bb2.i_crit_edge308
  %sm3.i = getelementptr inbounds %struct.xfs_scrub, ptr %21, i32 0, i32 1
  %27 = ptrtoint ptr %sm3.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sm3.i, align 4
  %sm_flags.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %sm_flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sm_flags.i, align 4
  %or.i = or i32 %30, 2
  store i32 %or.i, ptr %sm_flags.i, align 4
  br label %sw.default.i

sw.default.i:                                     ; preds = %sw.bb2.i, %if.end10.sw.default.i_crit_edge
  %error.0 = phi i32 [ 0, %sw.bb2.i ], [ %call15, %if.end10.sw.default.i_crit_edge ]
  %31 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %whichfork, align 4
  %33 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ds, align 8
  %35 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %state, align 8
  %blkno.i = getelementptr %struct.xfs_da_state, ptr %36, i32 0, i32 2, i32 1, i32 %level, i32 1
  %37 = ptrtoint ptr %blkno.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %blkno.i, align 4
  %blklog.i.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %34, i32 0, i32 3
  %39 = ptrtoint ptr %blklog.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %blklog.i.i, align 1
  %conv.i.i = zext i8 %40 to i32
  %fsblog.i.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %34, i32 0, i32 2
  %41 = ptrtoint ptr %fsblog.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %fsblog.i.i, align 4
  %conv1.i.i = zext i8 %42 to i32
  %sub.i.i = sub nsw i32 %conv.i.i, %conv1.i.i
  %shr.i.i = lshr i32 %38, %sub.i.i
  %conv.i = zext i32 %shr.i.i to i64
  %43 = tail call ptr @llvm.returnaddress(i32 0) #7
  tail call fastcc void @trace_xchk_file_op_error(ptr noundef %21, i32 noundef %32, i64 noundef %conv.i, i32 noundef %error.0, ptr noundef %43) #7
  br label %out_nobuf

if.end18:                                         ; preds = %if.end10
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx, align 8
  %tobool20.not = icmp eq ptr %45, null
  br i1 %tobool20.not, label %if.end18.if.end23_crit_edge, label %if.then21

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %sc1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sc1.i, align 4
  tail call void @xchk_buffer_recheck(ptr noundef %47, ptr noundef nonnull %45) #7
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end18.if.end23_crit_edge
  %48 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %whichfork, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %cmp26 = icmp eq i32 %level, 0
  %50 = or i32 %49, %level
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %51 = icmp eq i32 %50, 0
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx, align 8
  %cmp29 = icmp eq ptr %53, null
  br i1 %51, label %land.lhs.true27, label %if.end31

land.lhs.true27:                                  ; preds = %if.end23
  br i1 %cmp29, label %land.lhs.true27.out_nobuf_crit_edge, label %land.lhs.true27.if.end35_crit_edge

land.lhs.true27.if.end35_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

land.lhs.true27.out_nobuf_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_nobuf

if.end31:                                         ; preds = %if.end23
  br i1 %cmp29, label %if.then34, label %if.end31.if.end35_crit_edge

if.end31.if.end35_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %sc1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sc1.i, align 4
  %sm.i253 = getelementptr inbounds %struct.xfs_scrub, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %sm.i253 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sm.i253, align 4
  %sm_flags.i254 = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %sm_flags.i254 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sm_flags.i254, align 4
  %or.i255 = or i32 %59, 2
  store i32 %or.i255, ptr %sm_flags.i254, align 4
  %60 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %whichfork, align 4
  %62 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ds, align 8
  %64 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %state, align 8
  %blkno.i258 = getelementptr %struct.xfs_da_state, ptr %65, i32 0, i32 2, i32 1, i32 %level, i32 1
  %66 = ptrtoint ptr %blkno.i258 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %blkno.i258, align 4
  %blklog.i.i259 = getelementptr inbounds %struct.xfs_da_geometry, ptr %63, i32 0, i32 3
  %68 = ptrtoint ptr %blklog.i.i259 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %blklog.i.i259, align 1
  %conv.i.i260 = zext i8 %69 to i32
  %fsblog.i.i261 = getelementptr inbounds %struct.xfs_da_geometry, ptr %63, i32 0, i32 2
  %70 = ptrtoint ptr %fsblog.i.i261 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %fsblog.i.i261, align 4
  %conv1.i.i262 = zext i8 %71 to i32
  %sub.i.i263 = sub nsw i32 %conv.i.i260, %conv1.i.i262
  %shr.i.i264 = lshr i32 %67, %sub.i.i263
  %conv.i265 = zext i32 %shr.i.i264 to i64
  %72 = tail call ptr @llvm.returnaddress(i32 0) #7
  tail call fastcc void @trace_xchk_fblock_error(ptr noundef %55, i32 noundef %61, i64 noundef %conv.i265, ptr noundef %72) #7
  br label %out_nobuf

if.end35:                                         ; preds = %if.end31.if.end35_crit_edge, %land.lhs.true27.if.end35_crit_edge
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %53, i32 0, i32 16
  %73 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %b_addr, align 4
  %magic = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %magic, align 8
  %conv = zext i16 %76 to i32
  %magic37 = getelementptr %struct.xfs_da_state, ptr %4, i32 0, i32 2, i32 1, i32 %level, i32 5
  %77 = ptrtoint ptr %magic37 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv, ptr %magic37, align 8
  %arrayidx38 = getelementptr %struct.xchk_da_btree, ptr %ds, i32 0, i32 2, i32 %level
  %78 = ptrtoint ptr %sc1.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sc1.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %81, i32 0, i32 61
  %82 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %83, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end35.if.end47_crit_edge, label %land.lhs.true42

if.end35.if.end47_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

land.lhs.true42:                                  ; preds = %if.end35
  %pad = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %74, i32 0, i32 3
  %84 = ptrtoint ptr %pad to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %pad, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %tobool45.not = icmp eq i16 %85, 0
  br i1 %tobool45.not, label %land.lhs.true42.if.end47_crit_edge, label %if.then46

land.lhs.true42.if.end47_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then46:                                        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #9
  %sm.i267 = getelementptr inbounds %struct.xfs_scrub, ptr %79, i32 0, i32 1
  %86 = ptrtoint ptr %sm.i267 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %sm.i267, align 4
  %sm_flags.i268 = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %sm_flags.i268 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %sm_flags.i268, align 4
  %or.i269 = or i32 %89, 2
  store i32 %or.i269, ptr %sm_flags.i268, align 4
  %90 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %whichfork, align 4
  %92 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ds, align 8
  %94 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %state, align 8
  %blkno.i272 = getelementptr %struct.xfs_da_state, ptr %95, i32 0, i32 2, i32 1, i32 %level, i32 1
  %96 = ptrtoint ptr %blkno.i272 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %blkno.i272, align 4
  %blklog.i.i273 = getelementptr inbounds %struct.xfs_da_geometry, ptr %93, i32 0, i32 3
  %98 = ptrtoint ptr %blklog.i.i273 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %blklog.i.i273, align 1
  %conv.i.i274 = zext i8 %99 to i32
  %fsblog.i.i275 = getelementptr inbounds %struct.xfs_da_geometry, ptr %93, i32 0, i32 2
  %100 = ptrtoint ptr %fsblog.i.i275 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %fsblog.i.i275, align 4
  %conv1.i.i276 = zext i8 %101 to i32
  %sub.i.i277 = sub nsw i32 %conv.i.i274, %conv1.i.i276
  %shr.i.i278 = lshr i32 %97, %sub.i.i277
  %conv.i279 = zext i32 %shr.i.i278 to i64
  %102 = tail call ptr @llvm.returnaddress(i32 0) #7
  tail call fastcc void @trace_xchk_fblock_error(ptr noundef %79, i32 noundef %91, i64 noundef %conv.i279, ptr noundef %102) #7
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %land.lhs.true42.if.end47_crit_edge, %if.end35.if.end47_crit_edge
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %1, align 8
  %m_features.i280 = getelementptr inbounds %struct.xfs_mount, ptr %104, i32 0, i32 61
  %105 = ptrtoint ptr %m_features.i280 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %m_features.i280, align 8
  %and.i281 = and i64 %106, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i281)
  %tobool.i282.not = icmp eq i64 %and.i281, 0
  br i1 %tobool.i282.not, label %if.end47.if.end55_crit_edge, label %if.then49

if.end47.if.end55_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then49:                                        ; preds = %if.end47
  %owner50 = getelementptr inbounds %struct.xfs_da3_blkinfo, ptr %74, i32 0, i32 5
  %107 = ptrtoint ptr %owner50 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %owner50, align 8
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 4
  %109 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %108, i64 %110)
  %cmp51.not = icmp eq i64 %108, %110
  br i1 %cmp51.not, label %if.then49.if.end55_crit_edge, label %if.then53

if.then49.if.end55_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then53:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  %111 = ptrtoint ptr %sc1.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %sc1.i, align 4
  %sm.i284 = getelementptr inbounds %struct.xfs_scrub, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %sm.i284 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %sm.i284, align 4
  %sm_flags.i285 = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %sm_flags.i285 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %sm_flags.i285, align 4
  %or.i286 = or i32 %116, 2
  store i32 %or.i286, ptr %sm_flags.i285, align 4
  %117 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %whichfork, align 4
  %119 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ds, align 8
  %121 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %state, align 8
  %blkno.i289 = getelementptr %struct.xfs_da_state, ptr %122, i32 0, i32 2, i32 1, i32 %level, i32 1
  %123 = ptrtoint ptr %blkno.i289 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %blkno.i289, align 4
  %blklog.i.i290 = getelementptr inbounds %struct.xfs_da_geometry, ptr %120, i32 0, i32 3
  %125 = ptrtoint ptr %blklog.i.i290 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %blklog.i.i290, align 1
  %conv.i.i291 = zext i8 %126 to i32
  %fsblog.i.i292 = getelementptr inbounds %struct.xfs_da_geometry, ptr %120, i32 0, i32 2
  %127 = ptrtoint ptr %fsblog.i.i292 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %fsblog.i.i292, align 4
  %conv1.i.i293 = zext i8 %128 to i32
  %sub.i.i294 = sub nsw i32 %conv.i.i291, %conv1.i.i293
  %shr.i.i295 = lshr i32 %124, %sub.i.i294
  %conv.i296 = zext i32 %shr.i.i295 to i64
  %129 = tail call ptr @llvm.returnaddress(i32 0) #7
  tail call fastcc void @trace_xchk_fblock_error(ptr noundef %112, i32 noundef %118, i64 noundef %conv.i296, ptr noundef %129) #7
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.then49.if.end55_crit_edge, %if.end47.if.end55_crit_edge
  %call57 = tail call fastcc i32 @xchk_da_btree_block_check_siblings(ptr noundef %ds, i32 noundef %level, ptr noundef %74)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end55.cleanup143_crit_edge

if.end55.cleanup143_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup143

if.end60:                                         ; preds = %if.end55
  %130 = ptrtoint ptr %magic37 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %magic37, align 8
  %132 = zext i32 %131 to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %131, label %sw.default [
    i32 64494, label %if.end60.sw.bb_crit_edge
    i32 15342, label %if.end60.sw.bb_crit_edge309
    i32 54015, label %if.end60.sw.bb71_crit_edge
    i32 15871, label %if.end60.sw.bb71_crit_edge310
    i32 54001, label %if.end60.sw.bb83_crit_edge
    i32 15857, label %if.end60.sw.bb83_crit_edge311
    i32 65214, label %if.end60.sw.bb95_crit_edge
    i32 16062, label %if.end60.sw.bb95_crit_edge312
  ]

if.end60.sw.bb95_crit_edge312:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb95

if.end60.sw.bb95_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb95

if.end60.sw.bb83_crit_edge311:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb83

if.end60.sw.bb83_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb83

if.end60.sw.bb71_crit_edge310:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb71

if.end60.sw.bb71_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb71

if.end60.sw.bb_crit_edge309:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end60.sw.bb_crit_edge:                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %if.end60.sw.bb_crit_edge, %if.end60.sw.bb_crit_edge309
  %133 = ptrtoint ptr %trans11 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %trans11, align 4
  %135 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx, align 8
  tail call void @xfs_trans_buf_set_type(ptr noundef %134, ptr noundef %136, i32 noundef 16) #7
  %137 = ptrtoint ptr %magic37 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 64494, ptr %magic37, align 8
  %138 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx, align 8
  %call66 = tail call i32 @xfs_attr_leaf_lasthash(ptr noundef %139, ptr noundef %arrayidx38) #7
  %hashval = getelementptr %struct.xfs_da_state, ptr %4, i32 0, i32 2, i32 1, i32 %level, i32 4
  %140 = ptrtoint ptr %hashval to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %call66, ptr %hashval, align 4
  %tree_level = getelementptr inbounds %struct.xchk_da_btree, ptr %ds, i32 0, i32 8
  %141 = ptrtoint ptr %tree_level to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %tree_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %cmp67.not = icmp eq i32 %142, 0
  br i1 %cmp67.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.sw.epilog.sink.split_crit_edge

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb71:                                          ; preds = %if.end60.sw.bb71_crit_edge, %if.end60.sw.bb71_crit_edge310
  %143 = ptrtoint ptr %trans11 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %trans11, align 4
  %145 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %arrayidx, align 8
  tail call void @xfs_trans_buf_set_type(ptr noundef %144, ptr noundef %146, i32 noundef 14) #7
  %147 = ptrtoint ptr %magic37 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 54015, ptr %magic37, align 8
  %148 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx, align 8
  %call76 = tail call i32 @xfs_dir2_leaf_lasthash(ptr noundef %1, ptr noundef %149, ptr noundef %arrayidx38) #7
  %hashval77 = getelementptr %struct.xfs_da_state, ptr %4, i32 0, i32 2, i32 1, i32 %level, i32 4
  %150 = ptrtoint ptr %hashval77 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %call76, ptr %hashval77, align 4
  %tree_level78 = getelementptr inbounds %struct.xchk_da_btree, ptr %ds, i32 0, i32 8
  %151 = ptrtoint ptr %tree_level78 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %tree_level78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %cmp79.not = icmp eq i32 %152, 0
  br i1 %cmp79.not, label %sw.bb71.sw.epilog_crit_edge, label %sw.bb71.sw.epilog.sink.split_crit_edge

sw.bb71.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.bb71.sw.epilog_crit_edge:                      ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb83:                                          ; preds = %if.end60.sw.bb83_crit_edge, %if.end60.sw.bb83_crit_edge311
  %153 = ptrtoint ptr %trans11 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %trans11, align 4
  %155 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %arrayidx, align 8
  tail call void @xfs_trans_buf_set_type(ptr noundef %154, ptr noundef %156, i32 noundef 13) #7
  %157 = ptrtoint ptr %magic37 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 54001, ptr %magic37, align 8
  %158 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx, align 8
  %call88 = tail call i32 @xfs_dir2_leaf_lasthash(ptr noundef %1, ptr noundef %159, ptr noundef %arrayidx38) #7
  %hashval89 = getelementptr %struct.xfs_da_state, ptr %4, i32 0, i32 2, i32 1, i32 %level, i32 4
  %160 = ptrtoint ptr %hashval89 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %call88, ptr %hashval89, align 4
  %tree_level90 = getelementptr inbounds %struct.xchk_da_btree, ptr %ds, i32 0, i32 8
  %161 = ptrtoint ptr %tree_level90 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %tree_level90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %cmp91.not = icmp eq i32 %162, 0
  br i1 %cmp91.not, label %sw.bb83.sw.epilog_crit_edge, label %sw.bb83.sw.epilog.sink.split_crit_edge

sw.bb83.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.bb83.sw.epilog_crit_edge:                      ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb95:                                          ; preds = %if.end60.sw.bb95_crit_edge, %if.end60.sw.bb95_crit_edge312
  %163 = ptrtoint ptr %trans11 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %trans11, align 4
  %165 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %arrayidx, align 8
  tail call void @xfs_trans_buf_set_type(ptr noundef %164, ptr noundef %166, i32 noundef 15) #7
  %167 = ptrtoint ptr %magic37 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 65214, ptr %magic37, align 8
  %168 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx, align 8
  %b_addr100 = getelementptr inbounds %struct.xfs_buf, ptr %169, i32 0, i32 16
  %170 = ptrtoint ptr %b_addr100 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %b_addr100, align 4
  %172 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %1, align 8
  call void @xfs_da3_node_hdr_from_disk(ptr noundef %173, ptr noundef nonnull %nodehdr, ptr noundef %171) #7
  %btree102 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, ptr %nodehdr, i32 0, i32 5
  %174 = ptrtoint ptr %btree102 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %btree102, align 4
  %count = getelementptr inbounds %struct.xfs_da3_icnode_hdr, ptr %nodehdr, i32 0, i32 3
  %176 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %count, align 2
  %conv103 = zext i16 %177 to i32
  %178 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %conv103, ptr %arrayidx38, align 4
  %sub = add nsw i32 %conv103, -1
  %arrayidx104 = getelementptr %struct.xfs_da_node_entry, ptr %175, i32 %sub
  %179 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %arrayidx104, align 4
  %hashval106 = getelementptr %struct.xfs_da_state, ptr %4, i32 0, i32 2, i32 1, i32 %level, i32 4
  %181 = ptrtoint ptr %hashval106 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %180, ptr %hashval106, align 4
  br i1 %cmp26, label %if.then109, label %if.else

if.then109:                                       ; preds = %sw.bb95
  %level110 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, ptr %nodehdr, i32 0, i32 4
  %182 = ptrtoint ptr %level110 to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %level110, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %183)
  %cmp112 = icmp ugt i16 %183, 4
  br i1 %cmp112, label %if.then114, label %sw.epilog.thread

if.then114:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #9
  call void @xchk_da_set_corrupt(ptr noundef %ds, i32 noundef 0)
  br label %out_freebp

sw.epilog.thread:                                 ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #9
  %conv111 = zext i16 %183 to i32
  %tree_level118 = getelementptr inbounds %struct.xchk_da_btree, ptr %ds, i32 0, i32 8
  %184 = ptrtoint ptr %tree_level118 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %conv111, ptr %tree_level118, align 4
  br label %cleanup143

if.else:                                          ; preds = %sw.bb95
  %tree_level119 = getelementptr inbounds %struct.xchk_da_btree, ptr %ds, i32 0, i32 8
  %185 = ptrtoint ptr %tree_level119 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %tree_level119, align 4
  %level120 = getelementptr inbounds %struct.xfs_da3_icnode_hdr, ptr %nodehdr, i32 0, i32 4
  %187 = ptrtoint ptr %level120 to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %level120, align 4
  %conv121 = zext i16 %188 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %186, i32 %conv121)
  %cmp122.not = icmp eq i32 %186, %conv121
  br i1 %cmp122.not, label %if.else.sw.epilog_crit_edge, label %if.then124

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then124:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @xchk_da_set_corrupt(ptr noundef %ds, i32 noundef %level)
  br label %out_freebp

sw.default:                                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @xchk_da_set_corrupt(ptr noundef %ds, i32 noundef %level)
  br label %out_freebp

sw.epilog.sink.split:                             ; preds = %sw.bb83.sw.epilog.sink.split_crit_edge, %sw.bb71.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  tail call void @xchk_da_set_corrupt(ptr noundef %ds, i32 noundef %level)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.else.sw.epilog_crit_edge, %sw.bb83.sw.epilog_crit_edge, %sw.bb71.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %cmp127 = icmp sgt i32 %level, 0
  br i1 %cmp127, label %if.then129, label %sw.epilog.cleanup143_crit_edge

sw.epilog.cleanup143_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup143

if.then129:                                       ; preds = %sw.epilog
  %sub130 = add nsw i32 %level, -1
  %189 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %state, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %hdr.i) #7
  %191 = call ptr @memset(ptr %hdr.i, i32 255, i32 20)
  %magic.i = getelementptr %struct.xfs_da_state, ptr %190, i32 0, i32 2, i32 1, i32 %sub130, i32 5
  %192 = ptrtoint ptr %magic.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %magic.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65214, i32 %193)
  %cmp.i298 = icmp eq i32 %193, 65214
  br i1 %cmp.i298, label %if.then129.xchk_da_btree_node_entry.exit_crit_edge, label %cond.false.i, !prof !34

if.then129.xchk_da_btree_node_entry.exit_crit_edge: ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_da_btree_node_entry.exit

cond.false.i:                                     ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #9
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 88) #7
  br label %xchk_da_btree_node_entry.exit

xchk_da_btree_node_entry.exit:                    ; preds = %cond.false.i, %if.then129.xchk_da_btree_node_entry.exit_crit_edge
  %arrayidx.i = getelementptr %struct.xfs_da_state, ptr %190, i32 0, i32 2, i32 1, i32 %sub130
  %194 = ptrtoint ptr %sc1.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %sc1.i, align 4
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %195, align 4
  %198 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %arrayidx.i, align 8
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %199, i32 0, i32 16
  %200 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %b_addr.i, align 4
  call void @xfs_da3_node_hdr_from_disk(ptr noundef %197, ptr noundef nonnull %hdr.i, ptr noundef %201) #7
  %btree.i = getelementptr inbounds %struct.xfs_da3_icnode_hdr, ptr %hdr.i, i32 0, i32 5
  %202 = ptrtoint ptr %btree.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %btree.i, align 4
  %index.i = getelementptr %struct.xfs_da_state, ptr %190, i32 0, i32 2, i32 1, i32 %sub130, i32 3
  %204 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %index.i, align 8
  %add.ptr.i = getelementptr %struct.xfs_da_node_entry, ptr %203, i32 %205
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %hdr.i) #7
  %206 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %add.ptr.i, align 4
  %hashval133 = getelementptr %struct.xfs_da_state, ptr %4, i32 0, i32 2, i32 1, i32 %level, i32 4
  %208 = ptrtoint ptr %hashval133 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %hashval133, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %207, i32 %209)
  %cmp134.not = icmp eq i32 %207, %209
  br i1 %cmp134.not, label %xchk_da_btree_node_entry.exit.cleanup143_crit_edge, label %cleanup

xchk_da_btree_node_entry.exit.cleanup143_crit_edge: ; preds = %xchk_da_btree_node_entry.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup143

cleanup:                                          ; preds = %xchk_da_btree_node_entry.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @xchk_da_set_corrupt(ptr noundef %ds, i32 noundef %level)
  br label %out_freebp

out_freebp:                                       ; preds = %cleanup, %sw.default, %if.then124, %if.then114
  %210 = ptrtoint ptr %trans11 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %trans11, align 4
  %212 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %arrayidx, align 8
  call void @xfs_trans_brelse(ptr noundef %211, ptr noundef %213) #7
  %214 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr null, ptr %arrayidx, align 8
  br label %out_nobuf

out_nobuf:                                        ; preds = %out_freebp, %if.then34, %land.lhs.true27.out_nobuf_crit_edge, %sw.default.i, %sw.bb.i, %if.end.out_nobuf_crit_edge
  %error.2 = phi i32 [ 0, %land.lhs.true27.out_nobuf_crit_edge ], [ 0, %if.then34 ], [ 0, %out_freebp ], [ 0, %if.end.out_nobuf_crit_edge ], [ -35, %sw.bb.i ], [ %error.0, %sw.default.i ]
  %215 = ptrtoint ptr %blkno8 to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 0, ptr %blkno8, align 4
  br label %cleanup143

cleanup143:                                       ; preds = %out_nobuf, %xchk_da_btree_node_entry.exit.cleanup143_crit_edge, %sw.epilog.cleanup143_crit_edge, %sw.epilog.thread, %if.end55.cleanup143_crit_edge
  %retval.0 = phi i32 [ %error.2, %out_nobuf ], [ 0, %sw.epilog.thread ], [ 0, %sw.epilog.cleanup143_crit_edge ], [ %call57, %if.end55.cleanup143_crit_edge ], [ 0, %xchk_da_btree_node_entry.exit.cleanup143_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %nodehdr) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_brelse(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_da_state_free(ptr noundef) local_unnamed_addr #4

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
declare dso_local i32 @__traceiter_xchk_file_op_error(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xchk_fblock_error(ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_da3_node_hdr_from_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_alloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @xchk_da_btree_ptr_ok(ptr nocapture noundef readonly %ds, i32 noundef %level, i32 noundef %blkno) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lowest = getelementptr inbounds %struct.xchk_da_btree, ptr %ds, i32 0, i32 6
  %0 = ptrtoint ptr %lowest to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lowest, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %blkno)
  %cmp = icmp ugt i32 %1, %blkno
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %highest = getelementptr inbounds %struct.xchk_da_btree, ptr %ds, i32 0, i32 7
  %2 = ptrtoint ptr %highest to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %highest, align 8
  %4 = add i32 %3, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %blkno)
  %.not = icmp ult i32 %4, %blkno
  br i1 %.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %sc1.i = getelementptr inbounds %struct.xchk_da_btree, ptr %ds, i32 0, i32 4
  %5 = ptrtoint ptr %sc1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sc1.i, align 4
  %sm.i = getelementptr inbounds %struct.xfs_scrub, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %sm.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sm.i, align 4
  %sm_flags.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %sm_flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sm_flags.i, align 4
  %or.i = or i32 %10, 2
  store i32 %or.i, ptr %sm_flags.i, align 4
  %whichfork.i = getelementptr inbounds %struct.xfs_da_args, ptr %ds, i32 0, i32 13
  %11 = ptrtoint ptr %whichfork.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %whichfork.i, align 4
  %13 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ds, align 8
  %state.i = getelementptr inbounds %struct.xchk_da_btree, ptr %ds, i32 0, i32 3
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %state.i, align 8
  %blkno.i = getelementptr %struct.xfs_da_state, ptr %16, i32 0, i32 2, i32 1, i32 %level, i32 1
  %17 = ptrtoint ptr %blkno.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %blkno.i, align 4
  %blklog.i.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %14, i32 0, i32 3
  %19 = ptrtoint ptr %blklog.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %blklog.i.i, align 1
  %conv.i.i = zext i8 %20 to i32
  %fsblog.i.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %14, i32 0, i32 2
  %21 = ptrtoint ptr %fsblog.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %fsblog.i.i, align 4
  %conv1.i.i = zext i8 %22 to i32
  %sub.i.i = sub nsw i32 %conv.i.i, %conv1.i.i
  %shr.i.i = lshr i32 %18, %sub.i.i
  %conv.i = zext i32 %shr.i.i to i64
  %23 = tail call ptr @llvm.returnaddress(i32 0) #7
  tail call fastcc void @trace_xchk_fblock_error(ptr noundef %6, i32 noundef %12, i64 noundef %conv.i, ptr noundef %23) #7
  br label %return

return:                                           ; preds = %if.then, %lor.lhs.false.return_crit_edge
  %retval.0 = phi i1 [ false, %if.then ], [ true, %lor.lhs.false.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_da_read_buf(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_buffer_recheck(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xchk_da_btree_block_check_siblings(ptr nocapture noundef readonly %ds, i32 noundef %level, ptr nocapture noundef readonly %hdr) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hdr, align 4
  %back2 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %hdr, i32 0, i32 1
  %2 = ptrtoint ptr %back2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %back2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %cmp = icmp eq i32 %level, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp3.not = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp4.not = icmp eq i32 %3, 0
  %or.cond = select i1 %cmp3.not, i1 %cmp4.not, i1 false
  br i1 %or.cond, label %if.then.cleanup_crit_edge, label %if.then5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %sc1.i = getelementptr inbounds %struct.xchk_da_btree, ptr %ds, i32 0, i32 4
  %4 = ptrtoint ptr %sc1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sc1.i, align 4
  %sm.i = getelementptr inbounds %struct.xfs_scrub, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %sm.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sm.i, align 4
  %sm_flags.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %sm_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sm_flags.i, align 4
  %or.i = or i32 %9, 2
  store i32 %or.i, ptr %sm_flags.i, align 4
  %whichfork.i = getelementptr inbounds %struct.xfs_da_args, ptr %ds, i32 0, i32 13
  %10 = ptrtoint ptr %whichfork.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %whichfork.i, align 4
  %12 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ds, align 8
  %state.i = getelementptr inbounds %struct.xchk_da_btree, ptr %ds, i32 0, i32 3
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %state.i, align 8
  %blkno.i = getelementptr %struct.xfs_da_state, ptr %15, i32 0, i32 2, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %blkno.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %blkno.i, align 4
  %blklog.i.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %13, i32 0, i32 3
  %18 = ptrtoint ptr %blklog.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %blklog.i.i, align 1
  %conv.i.i = zext i8 %19 to i32
  %fsblog.i.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %13, i32 0, i32 2
  %20 = ptrtoint ptr %fsblog.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %fsblog.i.i, align 4
  %conv1.i.i = zext i8 %21 to i32
  %sub.i.i = sub nsw i32 %conv.i.i, %conv1.i.i
  %shr.i.i = lshr i32 %17, %sub.i.i
  %conv.i = zext i32 %shr.i.i to i64
  %22 = tail call ptr @llvm.returnaddress(i32 0) #7
  tail call fastcc void @trace_xchk_fblock_error(ptr noundef %5, i32 noundef %11, i64 noundef %conv.i, ptr noundef %22) #7
  br label %cleanup

if.end6:                                          ; preds = %entry
  %call = tail call fastcc i32 @xchk_da_btree_block_check_sibling(ptr noundef %ds, i32 noundef %level, i32 noundef 0, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end8, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end8:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call fastcc i32 @xchk_da_btree_block_check_sibling(ptr noundef %ds, i32 noundef %level, i32 noundef 1, i32 noundef %1)
  br label %out

out:                                              ; preds = %if.end8, %if.end6.out_crit_edge
  %error.0 = phi i32 [ %call, %if.end6.out_crit_edge ], [ %call9, %if.end8 ]
  %state = getelementptr inbounds %struct.xchk_da_btree, ptr %ds, i32 0, i32 3
  %23 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %state, align 8
  %altpath = getelementptr inbounds %struct.xfs_da_state, ptr %24, i32 0, i32 3
  %25 = call ptr @memset(ptr %altpath, i32 0, i32 168)
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then5, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.then5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_buf_set_type(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_attr_leaf_lasthash(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_leaf_lasthash(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xchk_da_btree_read_verify(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %magic = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %magic, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %3, label %sw.default [
    i16 -11535, label %entry.cleanup_crit_edge
    i16 15857, label %entry.cleanup_crit_edge12
  ]

entry.cleanup_crit_edge12:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge12
  %xfs_da3_node_buf_ops.sink = phi ptr [ @xfs_da3_node_buf_ops, %sw.default ], [ @xfs_dir3_leaf1_buf_ops, %entry.cleanup_crit_edge ], [ @xfs_dir3_leaf1_buf_ops, %entry.cleanup_crit_edge12 ]
  %.sink11 = phi ptr [ getelementptr inbounds (%struct.xfs_buf_ops, ptr @xfs_da3_node_buf_ops, i32 0, i32 2), %sw.default ], [ getelementptr inbounds (%struct.xfs_buf_ops, ptr @xfs_dir3_leaf1_buf_ops, i32 0, i32 2), %entry.cleanup_crit_edge ], [ getelementptr inbounds (%struct.xfs_buf_ops, ptr @xfs_dir3_leaf1_buf_ops, i32 0, i32 2), %entry.cleanup_crit_edge12 ]
  %b_ops2 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %5 = ptrtoint ptr %b_ops2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %xfs_da3_node_buf_ops.sink, ptr %b_ops2, align 4
  %6 = ptrtoint ptr %.sink11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %.sink11, align 4
  tail call void %7(ptr noundef %bp) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xchk_da_btree_write_verify(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %magic = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %magic, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.11)
  switch i16 %3, label %sw.default [
    i16 -11535, label %entry.cleanup_crit_edge
    i16 15857, label %entry.cleanup_crit_edge12
  ]

entry.cleanup_crit_edge12:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge12
  %xfs_da3_node_buf_ops.sink = phi ptr [ @xfs_da3_node_buf_ops, %sw.default ], [ @xfs_dir3_leaf1_buf_ops, %entry.cleanup_crit_edge ], [ @xfs_dir3_leaf1_buf_ops, %entry.cleanup_crit_edge12 ]
  %.sink11 = phi ptr [ getelementptr inbounds (%struct.xfs_buf_ops, ptr @xfs_da3_node_buf_ops, i32 0, i32 3), %sw.default ], [ getelementptr inbounds (%struct.xfs_buf_ops, ptr @xfs_dir3_leaf1_buf_ops, i32 0, i32 3), %entry.cleanup_crit_edge ], [ getelementptr inbounds (%struct.xfs_buf_ops, ptr @xfs_dir3_leaf1_buf_ops, i32 0, i32 3), %entry.cleanup_crit_edge12 ]
  %b_ops2 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %5 = ptrtoint ptr %b_ops2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %xfs_da3_node_buf_ops.sink, ptr %b_ops2, align 4
  %6 = ptrtoint ptr %.sink11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %.sink11, align 4
  tail call void %7(ptr noundef %bp) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xchk_da_btree_verify(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %magic = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %magic, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.12)
  switch i16 %3, label %sw.default [
    i16 -11535, label %entry.cleanup_crit_edge
    i16 15857, label %entry.cleanup_crit_edge13
  ]

entry.cleanup_crit_edge13:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge13
  %xfs_da3_node_buf_ops.sink = phi ptr [ @xfs_da3_node_buf_ops, %sw.default ], [ @xfs_dir3_leaf1_buf_ops, %entry.cleanup_crit_edge ], [ @xfs_dir3_leaf1_buf_ops, %entry.cleanup_crit_edge13 ]
  %.sink12 = phi ptr [ getelementptr inbounds (%struct.xfs_buf_ops, ptr @xfs_da3_node_buf_ops, i32 0, i32 4), %sw.default ], [ getelementptr inbounds (%struct.xfs_buf_ops, ptr @xfs_dir3_leaf1_buf_ops, i32 0, i32 4), %entry.cleanup_crit_edge ], [ getelementptr inbounds (%struct.xfs_buf_ops, ptr @xfs_dir3_leaf1_buf_ops, i32 0, i32 4), %entry.cleanup_crit_edge13 ]
  %b_ops2 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %5 = ptrtoint ptr %b_ops2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %xfs_da3_node_buf_ops.sink, ptr %b_ops2, align 4
  %6 = ptrtoint ptr %.sink12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %.sink12, align 4
  %call5 = tail call ptr %7(ptr noundef %bp) #7
  ret ptr %call5
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xchk_da_btree_block_check_sibling(ptr nocapture noundef readonly %ds, i32 noundef %level, i32 noundef %direction, i32 noundef %sibling) unnamed_addr #5 align 64 {
entry:
  %retval4 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.xchk_da_btree, ptr %ds, i32 0, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 8
  %path1 = getelementptr inbounds %struct.xfs_da_state, ptr %1, i32 0, i32 2
  %altpath3 = getelementptr inbounds %struct.xfs_da_state, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval4) #7
  %2 = ptrtoint ptr %retval4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %retval4, align 4, !annotation !43
  %3 = call ptr @memcpy(ptr %altpath3, ptr %path1, i32 168)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sibling)
  %cmp = icmp eq i32 %sibling, 0
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state, align 8
  %call = call i32 @xfs_da3_path_shift(ptr noundef %5, ptr noundef %altpath3, i32 noundef %direction, i32 noundef 0, ptr noundef nonnull %retval4) #7
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6 = icmp eq i32 %call, 0
  br i1 %cmp6, label %land.lhs.true, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

land.lhs.true:                                    ; preds = %if.then
  %6 = ptrtoint ptr %retval4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %retval4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7 = icmp eq i32 %7, 0
  br i1 %cmp7, label %if.then8, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %sc1.i = getelementptr inbounds %struct.xchk_da_btree, ptr %ds, i32 0, i32 4
  %8 = ptrtoint ptr %sc1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sc1.i, align 4
  %sm.i = getelementptr inbounds %struct.xfs_scrub, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %sm.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sm.i, align 4
  %sm_flags.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %sm_flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sm_flags.i, align 4
  %or.i = or i32 %13, 2
  store i32 %or.i, ptr %sm_flags.i, align 4
  %whichfork.i = getelementptr inbounds %struct.xfs_da_args, ptr %ds, i32 0, i32 13
  %14 = ptrtoint ptr %whichfork.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %whichfork.i, align 4
  %16 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ds, align 8
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state, align 8
  %blkno.i = getelementptr %struct.xfs_da_state, ptr %19, i32 0, i32 2, i32 1, i32 %level, i32 1
  %20 = ptrtoint ptr %blkno.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %blkno.i, align 4
  %blklog.i.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %17, i32 0, i32 3
  %22 = ptrtoint ptr %blklog.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %blklog.i.i, align 1
  %conv.i.i = zext i8 %23 to i32
  %fsblog.i.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %17, i32 0, i32 2
  %24 = ptrtoint ptr %fsblog.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %fsblog.i.i, align 4
  %conv1.i.i = zext i8 %25 to i32
  %sub.i.i = sub nsw i32 %conv.i.i, %conv1.i.i
  %shr.i.i = lshr i32 %21, %sub.i.i
  %conv.i = zext i32 %shr.i.i to i64
  %26 = call ptr @llvm.returnaddress(i32 0) #7
  call fastcc void @trace_xchk_fblock_error(ptr noundef %9, i32 noundef %15, i64 noundef %conv.i, ptr noundef %26) #7
  br label %out

if.end9:                                          ; preds = %entry
  %sc1.i88 = getelementptr inbounds %struct.xchk_da_btree, ptr %ds, i32 0, i32 4
  %27 = ptrtoint ptr %sc1.i88 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sc1.i88, align 4
  %29 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %call, label %if.end9.sw.default.i_crit_edge [
    i32 0, label %if.end14
    i32 -35, label %sw.bb.i
    i32 -74, label %if.end9.sw.bb2.i_crit_edge
    i32 -117, label %if.end9.sw.bb2.i_crit_edge137
  ]

if.end9.sw.bb2.i_crit_edge137:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

if.end9.sw.bb2.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

if.end9.sw.default.i_crit_edge:                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default.i

sw.bb.i:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %ip.i = getelementptr inbounds %struct.xfs_scrub, ptr %28, i32 0, i32 5
  %30 = ptrtoint ptr %ip.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ip.i, align 4
  %sm.i89 = getelementptr inbounds %struct.xfs_scrub, ptr %28, i32 0, i32 1
  %32 = ptrtoint ptr %sm.i89 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sm.i89, align 4
  call fastcc void @trace_xchk_deadlock_retry(ptr noundef %31, ptr noundef %33, i32 noundef -35) #7
  br label %out

sw.bb2.i:                                         ; preds = %if.end9.sw.bb2.i_crit_edge, %if.end9.sw.bb2.i_crit_edge137
  %sm3.i = getelementptr inbounds %struct.xfs_scrub, ptr %28, i32 0, i32 1
  %34 = ptrtoint ptr %sm3.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sm3.i, align 4
  %sm_flags.i90 = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %sm_flags.i90 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sm_flags.i90, align 4
  %or.i91 = or i32 %37, 2
  store i32 %or.i91, ptr %sm_flags.i90, align 4
  br label %sw.default.i

sw.default.i:                                     ; preds = %sw.bb2.i, %if.end9.sw.default.i_crit_edge
  %error.0 = phi i32 [ 0, %sw.bb2.i ], [ %call, %if.end9.sw.default.i_crit_edge ]
  %whichfork.i92 = getelementptr inbounds %struct.xfs_da_args, ptr %ds, i32 0, i32 13
  %38 = ptrtoint ptr %whichfork.i92 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %whichfork.i92, align 4
  %40 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ds, align 8
  %42 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %state, align 8
  %blkno.i94 = getelementptr %struct.xfs_da_state, ptr %43, i32 0, i32 2, i32 1, i32 %level, i32 1
  %44 = ptrtoint ptr %blkno.i94 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %blkno.i94, align 4
  %blklog.i.i95 = getelementptr inbounds %struct.xfs_da_geometry, ptr %41, i32 0, i32 3
  %46 = ptrtoint ptr %blklog.i.i95 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %blklog.i.i95, align 1
  %conv.i.i96 = zext i8 %47 to i32
  %fsblog.i.i97 = getelementptr inbounds %struct.xfs_da_geometry, ptr %41, i32 0, i32 2
  %48 = ptrtoint ptr %fsblog.i.i97 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %fsblog.i.i97, align 4
  %conv1.i.i98 = zext i8 %49 to i32
  %sub.i.i99 = sub nsw i32 %conv.i.i96, %conv1.i.i98
  %shr.i.i100 = lshr i32 %45, %sub.i.i99
  %conv.i101 = zext i32 %shr.i.i100 to i64
  %50 = call ptr @llvm.returnaddress(i32 0) #7
  call fastcc void @trace_xchk_file_op_error(ptr noundef %28, i32 noundef %39, i64 noundef %conv.i101, i32 noundef %error.0, ptr noundef %50) #7
  br label %out

if.end14:                                         ; preds = %if.end9
  %51 = ptrtoint ptr %retval4 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %retval4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not = icmp eq i32 %52, 0
  br i1 %tobool.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %sc1.i88 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sc1.i88, align 4
  %sm.i103 = getelementptr inbounds %struct.xfs_scrub, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %sm.i103 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sm.i103, align 4
  %sm_flags.i104 = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %sm_flags.i104 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sm_flags.i104, align 4
  %or.i105 = or i32 %58, 2
  store i32 %or.i105, ptr %sm_flags.i104, align 4
  %whichfork.i106 = getelementptr inbounds %struct.xfs_da_args, ptr %ds, i32 0, i32 13
  %59 = ptrtoint ptr %whichfork.i106 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %whichfork.i106, align 4
  %61 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ds, align 8
  %63 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %state, align 8
  %blkno.i108 = getelementptr %struct.xfs_da_state, ptr %64, i32 0, i32 2, i32 1, i32 %level, i32 1
  %65 = ptrtoint ptr %blkno.i108 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %blkno.i108, align 4
  %blklog.i.i109 = getelementptr inbounds %struct.xfs_da_geometry, ptr %62, i32 0, i32 3
  %67 = ptrtoint ptr %blklog.i.i109 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %blklog.i.i109, align 1
  %conv.i.i110 = zext i8 %68 to i32
  %fsblog.i.i111 = getelementptr inbounds %struct.xfs_da_geometry, ptr %62, i32 0, i32 2
  %69 = ptrtoint ptr %fsblog.i.i111 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %fsblog.i.i111, align 4
  %conv1.i.i112 = zext i8 %70 to i32
  %sub.i.i113 = sub nsw i32 %conv.i.i110, %conv1.i.i112
  %shr.i.i114 = lshr i32 %66, %sub.i.i113
  %conv.i115 = zext i32 %shr.i.i114 to i64
  %71 = call ptr @llvm.returnaddress(i32 0) #7
  call fastcc void @trace_xchk_fblock_error(ptr noundef %54, i32 noundef %60, i64 noundef %conv.i115, ptr noundef %71) #7
  br label %out

if.end16:                                         ; preds = %if.end14
  %arrayidx = getelementptr %struct.xfs_da_state, ptr %1, i32 0, i32 3, i32 1, i32 %level
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx, align 8
  %tobool17.not = icmp eq ptr %73, null
  br i1 %tobool17.not, label %if.end16.if.end22_crit_edge, label %if.then18

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %sc1.i88 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sc1.i88, align 4
  call void @xchk_buffer_recheck(ptr noundef %75, ptr noundef nonnull %73) #7
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end16.if.end22_crit_edge
  %blkno = getelementptr %struct.xfs_da_state, ptr %1, i32 0, i32 3, i32 1, i32 %level, i32 1
  %76 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %blkno, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %sibling)
  %cmp25.not = icmp eq i32 %77, %sibling
  br i1 %cmp25.not, label %if.end22.out_crit_edge, label %if.then26

if.end22.out_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %sc1.i88 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sc1.i88, align 4
  %sm.i117 = getelementptr inbounds %struct.xfs_scrub, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %sm.i117 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sm.i117, align 4
  %sm_flags.i118 = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %sm_flags.i118 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %sm_flags.i118, align 4
  %or.i119 = or i32 %83, 2
  store i32 %or.i119, ptr %sm_flags.i118, align 4
  %whichfork.i120 = getelementptr inbounds %struct.xfs_da_args, ptr %ds, i32 0, i32 13
  %84 = ptrtoint ptr %whichfork.i120 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %whichfork.i120, align 4
  %86 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ds, align 8
  %88 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %state, align 8
  %blkno.i122 = getelementptr %struct.xfs_da_state, ptr %89, i32 0, i32 2, i32 1, i32 %level, i32 1
  %90 = ptrtoint ptr %blkno.i122 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %blkno.i122, align 4
  %blklog.i.i123 = getelementptr inbounds %struct.xfs_da_geometry, ptr %87, i32 0, i32 3
  %92 = ptrtoint ptr %blklog.i.i123 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %blklog.i.i123, align 1
  %conv.i.i124 = zext i8 %93 to i32
  %fsblog.i.i125 = getelementptr inbounds %struct.xfs_da_geometry, ptr %87, i32 0, i32 2
  %94 = ptrtoint ptr %fsblog.i.i125 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %fsblog.i.i125, align 4
  %conv1.i.i126 = zext i8 %95 to i32
  %sub.i.i127 = sub nsw i32 %conv.i.i124, %conv1.i.i126
  %shr.i.i128 = lshr i32 %91, %sub.i.i127
  %conv.i129 = zext i32 %shr.i.i128 to i64
  %96 = call ptr @llvm.returnaddress(i32 0) #7
  call fastcc void @trace_xchk_fblock_error(ptr noundef %79, i32 noundef %85, i64 noundef %conv.i129, ptr noundef %96) #7
  br label %out

out:                                              ; preds = %if.then26, %if.end22.out_crit_edge, %if.then15, %sw.default.i, %sw.bb.i, %if.then8, %land.lhs.true.out_crit_edge, %if.then.out_crit_edge
  %error.2 = phi i32 [ 0, %if.end22.out_crit_edge ], [ 0, %if.then26 ], [ 0, %if.then15 ], [ 0, %if.then8 ], [ 0, %land.lhs.true.out_crit_edge ], [ 0, %if.then.out_crit_edge ], [ -35, %sw.bb.i ], [ %error.0, %sw.default.i ]
  %97 = ptrtoint ptr %altpath3 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %altpath3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp28133 = icmp sgt i32 %98, 0
  br i1 %cmp28133, label %for.body.lr.ph, label %out.for.end_crit_edge

out.for.end_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %out
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %ds, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %plevel.0134 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx30 = getelementptr %struct.xfs_da_state, ptr %1, i32 0, i32 3, i32 1, i32 %plevel.0134
  %99 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx30, align 8
  %cmp32 = icmp eq ptr %100, null
  br i1 %cmp32, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %101 = ptrtoint ptr %path1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %path1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %plevel.0134, i32 %102)
  %cmp34 = icmp slt i32 %plevel.0134, %102
  br i1 %cmp34, label %land.lhs.true35, label %lor.lhs.false.if.end44_crit_edge

lor.lhs.false.if.end44_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

land.lhs.true35:                                  ; preds = %lor.lhs.false
  %arrayidx40 = getelementptr %struct.xfs_da_state, ptr %1, i32 0, i32 2, i32 1, i32 %plevel.0134
  %103 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx40, align 8
  %cmp42 = icmp eq ptr %100, %104
  br i1 %cmp42, label %land.lhs.true35.for.inc_crit_edge, label %land.lhs.true35.if.end44_crit_edge

land.lhs.true35.if.end44_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

land.lhs.true35.for.inc_crit_edge:                ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end44:                                         ; preds = %land.lhs.true35.if.end44_crit_edge, %lor.lhs.false.if.end44_crit_edge
  %105 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %trans, align 4
  call void @xfs_trans_brelse(ptr noundef %106, ptr noundef nonnull %100) #7
  %107 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr null, ptr %arrayidx30, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end44, %land.lhs.true35.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %plevel.0134, 1
  %108 = ptrtoint ptr %altpath3 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %altpath3, align 8
  %cmp28 = icmp slt i32 %inc, %109
  br i1 %cmp28, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %out.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval4) #7
  ret i32 %error.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_da3_path_shift(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7, !8, !10, !11, !13, !14, !16, !17, !19, !21}
!llvm.named.register.sp = !{!23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../fs/xfs/scrub/trace.h", i32 138, i32 1}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../fs/xfs/scrub/trace.h", i32 171, i32 1}
!10 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../fs/xfs/scrub/trace.h", i32 305, i32 1}
!13 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/xfs/scrub/dabtree.c", i32 88, i32 2}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/scrub/dabtree.c", i32 208, i32 10}
!19 = !{ptr @xchk_da_btree_buf_ops, !20, !"xchk_da_btree_buf_ops", i1 false, i1 false}
!20 = !{!"../fs/xfs/scrub/dabtree.c", i32 207, i32 33}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/xfs/scrub/common.h", i32 24, i32 2}
!23 = !{!"sp"}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 2148257532, i64 2148257537, i64 2148257550, i64 2148257594, i64 2148257628, i64 2148257649}
!34 = !{!"branch_weights", i32 2000, i32 1}
!35 = !{i64 2155886999}
!36 = !{i64 2155887226}
!37 = !{i64 2149959625}
!38 = !{i64 2149960661}
!39 = !{i64 2155959339}
!40 = !{i64 2155959610}
!41 = !{i64 2156086817}
!42 = !{i64 2156087072}
!43 = !{!"auto-init"}
