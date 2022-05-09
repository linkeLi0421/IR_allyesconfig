; ModuleID = '/llk/IR_all_yes/block/blk-iolatency.c_pt.bc'
source_filename = "../block/blk-iolatency.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rq_qos_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.blkcg_policy = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.blkcg = type { %struct.cgroup_subsys_state, %struct.spinlock, %struct.refcount_struct, %struct.xarray, ptr, %struct.hlist_head, [6 x ptr], %struct.list_head, [129 x i8], %struct.list_head }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.cftype = type { [64 x i8], i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key }
%struct.rq_qos = type { ptr, ptr, i32, ptr, ptr }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.blk_iolatency = type { %struct.rq_qos, %struct.timer_list, %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.blkcg_gq = type { ptr, %struct.list_head, %struct.hlist_node, ptr, ptr, %struct.percpu_ref, i8, ptr, %struct.blkg_iostat_set, [6 x ptr], %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, i64, i32, %struct.callback_head }
%struct.blkg_iostat_set = type { %struct.u64_stats_sync, %struct.blkg_iostat, %struct.blkg_iostat }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.blkg_iostat = type { [3 x i64], [3 x i64] }
%struct.atomic64_t = type { i64 }
%struct.iolatency_grp = type { %struct.blkg_policy_data, ptr, %struct.latency_stat, ptr, %struct.rq_depth, %struct.rq_wait, %struct.atomic64_t, %struct.atomic_t, i64, i64, i64, i64, i8, %struct.child_latency_info }
%struct.blkg_policy_data = type { ptr, i32 }
%struct.latency_stat = type { %union.anon.92 }
%union.anon.92 = type { %struct.blk_rq_stat }
%struct.blk_rq_stat = type { i64, i64, i64, i32, i64 }
%struct.rq_depth = type { i32, i32, i8, i32, i32 }
%struct.rq_wait = type { %struct.wait_queue_head, %struct.atomic_t }
%struct.child_latency_info = type { %struct.spinlock, i64, i64, i64, ptr, %struct.atomic_t }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.41, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.41 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cgroup = type { %struct.cgroup_subsys_state, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.cgroup_file, %struct.cgroup_file, i16, i16, i16, i16, [14 x ptr], ptr, %struct.list_head, [14 x %struct.list_head], ptr, ptr, ptr, %struct.list_head, %struct.cgroup_base_stat, %struct.cgroup_base_stat, %struct.prev_cputime, %struct.list_head, %struct.mutex, %struct.wait_queue_head, %struct.work_struct, %struct.psi_group, %struct.cgroup_bpf, %struct.atomic_t, %struct.cgroup_freezer_state, [0 x i64] }
%struct.cgroup_file = type { ptr, i32, %struct.timer_list }
%struct.cgroup_base_stat = type { %struct.task_cputime }
%struct.task_cputime = type { i64, i64, i64 }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.psi_group = type { %struct.mutex, ptr, [6 x i64], i64, i64, %struct.delayed_work, [2 x [6 x i64]], [6 x [3 x i32]], ptr, %struct.timer_list, %struct.wait_queue_head, %struct.atomic_t, %struct.mutex, %struct.list_head, [6 x i32], i32, i64, [6 x i64], i64, i64 }
%struct.cgroup_bpf = type { [23 x ptr], [23 x %struct.list_head], [23 x i32], %struct.list_head, ptr, %struct.percpu_ref, %struct.work_struct }
%struct.cgroup_freezer_state = type { i8, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.58, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.21 }
%struct.llist_node = type { ptr }
%union.anon.21 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.23 }
%union.anon.23 = type { %struct.anon.24 }
%struct.anon.24 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.58 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.percentile_stats = type { i64, i64 }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.lockdep_map, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon.62, ptr, i64, i16, i16, ptr }
%union.anon.62 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { ptr, ptr, i64, ptr }
%struct.blkg_conf_ctx = type { ptr, ptr, ptr }

@blkcg_iolatency_ops = internal global { %struct.rq_qos_ops, [52 x i8] } { %struct.rq_qos_ops { ptr @blkcg_iolatency_throttle, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @blkcg_iolatency_done_bio, ptr null, ptr null, ptr @blkcg_iolatency_exit, ptr null }, [52 x i8] zeroinitializer }, align 32
@blkcg_policy_iolatency = internal global { %struct.blkcg_policy, [40 x i8] } { %struct.blkcg_policy { i32 0, ptr @iolatency_files, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iolatency_pd_alloc, ptr @iolatency_pd_init, ptr null, ptr @iolatency_pd_offline, ptr @iolatency_pd_free, ptr null, ptr @iolatency_pd_stat }, [40 x i8] zeroinitializer }, align 32
@blk_iolatency_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&blkiolat->timer)\00", [45 x i8] zeroinitializer }, align 32
@__initcall__kmod_blk_iolatency__373_1057_iolatency_init6 = internal global ptr @iolatency_init, section ".initcall6.init", align 4
@__exitcall_iolatency_exit = internal global ptr @iolatency_exit, section ".exitcall.exit", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@blkcg_use_delay.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/blk-cgroup.h\00", [37 x i8] zeroinitializer }, align 32
@blkcg_unuse_delay.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@blkcg_iolatency_done_bio.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"block/blk-iolatency.c\00", [42 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@iolatency_exp_factors = internal constant { [5 x i64], [56 x i8] } { [5 x i64] [i64 2045, i64 2039, i64 2031, i64 2023, i64 2014], [56 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@blkcg_root = external dso_local global %struct.blkcg, align 8
@__blkg_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@iolatency_files = internal global { [2 x %struct.cftype], [80 x i8] } { [2 x %struct.cftype] [%struct.cftype { [64 x i8] c"latency\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 2, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iolatency_print_limit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iolatency_set_limit, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype zeroinitializer], [80 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s target=%llu\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%15[^=]=%20s\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"target\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"max\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%llu\00", [27 x i8] zeroinitializer }, align 32
@iolatency_set_limit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@iolatency_pd_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&iolat->child_lat.lock\00", [41 x i8] zeroinitializer }, align 32
@rq_wait_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&rq_wait->wait\00", [17 x i8] zeroinitializer }, align 32
@blkcg_debug_stats = external dso_local local_unnamed_addr global i8, align 1
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c" depth=max avg_lat=%llu win=%llu\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c" depth=%u avg_lat=%llu win=%llu\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c" missed=%llu total=%llu depth=max\00", [62 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c" missed=%llu total=%llu depth=%u\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967295]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967295]
@___asan_gen_.21 = private unnamed_addr constant [20 x i8] c"blkcg_iolatency_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 652, i32 26 }
@___asan_gen_.24 = private unnamed_addr constant [23 x i8] c"blkcg_policy_iolatency\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1038, i32 28 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 743, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 536, i32 6 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 622, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [22 x i8] c"iolatency_exp_factors\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 170, i32 18 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 695, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [30 x i8] c"../include/linux/blk-cgroup.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 340, i32 9 }
@___asan_gen_.52 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 723, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [16 x i8] c"iolatency_files\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1028, i32 22 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 881, i32 17 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 810, i32 27 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 814, i32 19 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 817, i32 20 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 820, i32 21 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 822, i32 25 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 983, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [22 x i8] c"../block/blk-rq-qos.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 86, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 935, i32 17 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 938, i32 17 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 909, i32 17 }
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [25 x i8] c"../block/blk-iolatency.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 913, i32 17 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__exitcall_iolatency_exit, ptr @__initcall__kmod_blk_iolatency__373_1057_iolatency_init6, ptr @iolatency_exit, ptr @blkcg_iolatency_ops, ptr @blkcg_policy_iolatency, ptr @blk_iolatency_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @iolatency_exp_factors, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @iolatency_files, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @iolatency_pd_init.__key, ptr @.str.13, ptr @rq_wait_init.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blkcg_iolatency_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blkcg_policy_iolatency to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_iolatency_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iolatency_exp_factors to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iolatency_files to i32), i32 304, i32 384, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iolatency_pd_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rq_wait_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blk_iolatency_init(ptr noundef %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 72) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.rq_qos, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %id, align 8
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @blkcg_iolatency_ops, ptr %call7.i.i, align 8
  %q2 = getelementptr inbounds %struct.rq_qos, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %q2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %q, ptr %q2, align 4
  tail call void @blk_mq_freeze_queue(ptr noundef %q) #13
  %queue_lock.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 14
  tail call void @_raw_spin_lock_irq(ptr noundef %queue_lock.i) #13
  %rq_qos.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 4
  %4 = ptrtoint ptr %rq_qos.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rq_qos.i, align 4
  %next.i = getelementptr inbounds %struct.rq_qos, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %next.i, align 4
  store ptr %call7.i.i, ptr %rq_qos.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %queue_lock.i) #13
  tail call void @blk_mq_unfreeze_queue(ptr noundef %q) #13
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call7.i.i, align 8
  %debugfs_attrs.i = getelementptr inbounds %struct.rq_qos_ops, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %debugfs_attrs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %debugfs_attrs.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.rq_qos_add.exit_crit_edge, label %if.then.i

if.end.rq_qos_add.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rq_qos_add.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @blk_mq_debugfs_register_rqos(ptr noundef nonnull %call7.i.i) #13
  br label %rq_qos_add.exit

rq_qos_add.exit:                                  ; preds = %if.then.i, %if.end.rq_qos_add.exit_crit_edge
  %call3 = tail call i32 @blkcg_activate_policy(ptr noundef %q, ptr noundef nonnull @blkcg_policy_iolatency) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.body, label %if.then5

if.then5:                                         ; preds = %rq_qos_add.exit
  tail call void @blk_mq_freeze_queue(ptr noundef %q) #13
  tail call void @_raw_spin_lock_irq(ptr noundef %queue_lock.i) #13
  %11 = ptrtoint ptr %rq_qos.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rq_qos.i, align 4
  %tobool.not13.i = icmp eq ptr %12, null
  br i1 %tobool.not13.i, label %if.then5.rq_qos_del.exit_crit_edge, label %for.body.i.preheader

if.then5.rq_qos_del.exit_crit_edge:               ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %rq_qos_del.exit

for.body.i.preheader:                             ; preds = %if.then5
  %cmp.i26 = icmp eq ptr %12, %call7.i.i
  br i1 %cmp.i26, label %for.body.i.preheader.if.then.i24_crit_edge, label %for.body.i.preheader.for.cond.i_crit_edge

for.body.i.preheader.for.cond.i_crit_edge:        ; preds = %for.body.i.preheader
  br label %for.cond.i

for.body.i.preheader.if.then.i24_crit_edge:       ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i24

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.i.preheader.for.cond.i_crit_edge
  %13 = phi ptr [ %15, %for.body.i.for.cond.i_crit_edge ], [ %12, %for.body.i.preheader.for.cond.i_crit_edge ]
  %next1.i = getelementptr inbounds %struct.rq_qos, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %next1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %next1.i, align 4
  %tobool.not.i22 = icmp eq ptr %15, null
  br i1 %tobool.not.i22, label %for.cond.i.rq_qos_del.exit_crit_edge, label %for.body.i

for.cond.i.rq_qos_del.exit_crit_edge:             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rq_qos_del.exit

for.body.i:                                       ; preds = %for.cond.i
  %cmp.i = icmp eq ptr %15, %call7.i.i
  br i1 %cmp.i, label %if.then.i24.loopexit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

if.then.i24.loopexit:                             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %next1.i.le = getelementptr inbounds %struct.rq_qos, ptr %13, i32 0, i32 3
  br label %if.then.i24

if.then.i24:                                      ; preds = %if.then.i24.loopexit, %for.body.i.preheader.if.then.i24_crit_edge
  %cur.014.i.lcssa = phi ptr [ %rq_qos.i, %for.body.i.preheader.if.then.i24_crit_edge ], [ %next1.i.le, %if.then.i24.loopexit ]
  %16 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %next.i, align 4
  %18 = ptrtoint ptr %cur.014.i.lcssa to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %cur.014.i.lcssa, align 4
  br label %rq_qos_del.exit

rq_qos_del.exit:                                  ; preds = %if.then.i24, %for.cond.i.rq_qos_del.exit_crit_edge, %if.then5.rq_qos_del.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %queue_lock.i) #13
  tail call void @blk_mq_unfreeze_queue(ptr noundef %q) #13
  tail call void @blk_mq_debugfs_unregister_rqos(ptr noundef nonnull %call7.i.i) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

do.body:                                          ; preds = %rq_qos_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  %timer = getelementptr inbounds %struct.blk_iolatency, ptr %call7.i.i, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @blkiolatency_timer_fn, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @blk_iolatency_init.__key) #13
  br label %cleanup

cleanup:                                          ; preds = %do.body, %rq_qos_del.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %rq_qos_del.exit ], [ 0, %do.body ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkcg_activate_policy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blkiolatency_timer_fn(ptr nocapture noundef readonly %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !71
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %q = getelementptr i8, ptr %t, i32 -16
  %4 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %q, align 4
  %root_blkg = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 35
  %6 = ptrtoint ptr %root_blkg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %root_blkg, align 8
  %blkcg = getelementptr inbounds %struct.blkcg_gq, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %blkcg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %blkcg, align 4
  %call2 = tail call ptr @css_next_descendant_pre(ptr noundef null, ptr noundef %9) #13
  %tobool.not90 = icmp eq ptr %call2, null
  br i1 %tobool.not90, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %pos_css.091 = phi ptr [ %call53, %for.inc.for.body_crit_edge ], [ %call2, %rcu_read_lock.exit.for.body_crit_edge ]
  %10 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %q, align 4
  %root_blkg6 = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 35
  %12 = ptrtoint ptr %root_blkg6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %root_blkg6, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %cmp.i = icmp eq ptr %pos_css.091, @blkcg_root
  br i1 %cmp.i, label %if.then.i70, label %if.end.i

if.then.i70:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %root_blkg.i = getelementptr inbounds %struct.request_queue, ptr %15, i32 0, i32 35
  %16 = ptrtoint ptr %root_blkg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %root_blkg.i, align 8
  br label %__blkg_lookup.exit

if.end.i:                                         ; preds = %for.body
  %blkg_hint.i = getelementptr inbounds %struct.blkcg, ptr %pos_css.091, i32 0, i32 4
  %18 = ptrtoint ptr %blkg_hint.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %blkg_hint.i, align 4
  %call.i71 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %tobool.not.i72 = icmp eq i32 %call.i71, 0
  br i1 %tobool.not.i72, label %land.lhs.true.i73, label %if.end.i.do.end9.i_crit_edge

if.end.i.do.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9.i

land.lhs.true.i73:                                ; preds = %if.end.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i73.do.end9.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i73.do.end9.i_crit_edge:            ; preds = %land.lhs.true.i73
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i73
  %.b1.i = load i1, ptr @__blkg_lookup.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true4.i.do.end9.i_crit_edge, label %if.then6.i

land.lhs.true4.i.do.end9.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9.i

if.then6.i:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__blkg_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 340, ptr noundef nonnull @.str.5) #13
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then6.i, %land.lhs.true4.i.do.end9.i_crit_edge, %land.lhs.true.i73.do.end9.i_crit_edge, %if.end.i.do.end9.i_crit_edge
  %tobool11.not.i = icmp eq ptr %19, null
  br i1 %tobool11.not.i, label %do.end9.i.if.end16.i_crit_edge, label %land.lhs.true12.i

do.end9.i.if.end16.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16.i

land.lhs.true12.i:                                ; preds = %do.end9.i
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %cmp14.i = icmp eq ptr %21, %15
  br i1 %cmp14.i, label %land.lhs.true12.i.land.rhs.i_crit_edge, label %land.lhs.true12.i.if.end16.i_crit_edge

land.lhs.true12.i.if.end16.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16.i

land.lhs.true12.i.land.rhs.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i

if.end16.i:                                       ; preds = %land.lhs.true12.i.if.end16.i_crit_edge, %do.end9.i.if.end16.i_crit_edge
  %call18.i = tail call ptr @blkg_lookup_slowpath(ptr noundef nonnull %pos_css.091, ptr noundef %15, i1 noundef zeroext false) #13
  br label %__blkg_lookup.exit

__blkg_lookup.exit:                               ; preds = %if.end16.i, %if.then.i70
  %retval.0.i = phi ptr [ %17, %if.then.i70 ], [ %call18.i, %if.end16.i ]
  %tobool9.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool9.not, label %__blkg_lookup.exit.for.inc_crit_edge, label %__blkg_lookup.exit.land.rhs.i_crit_edge

__blkg_lookup.exit.land.rhs.i_crit_edge:          ; preds = %__blkg_lookup.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i

__blkg_lookup.exit.for.inc_crit_edge:             ; preds = %__blkg_lookup.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.rhs.i:                                       ; preds = %__blkg_lookup.exit.land.rhs.i_crit_edge, %land.lhs.true12.i.land.rhs.i_crit_edge
  %retval.0.i89 = phi ptr [ %retval.0.i, %__blkg_lookup.exit.land.rhs.i_crit_edge ], [ %19, %land.lhs.true12.i.land.rhs.i_crit_edge ]
  %refcnt.i = getelementptr inbounds %struct.blkcg_gq, ptr %retval.0.i89, i32 0, i32 5
  %22 = tail call i32 @llvm.read_register.i32(metadata !61) #13
  %and.i.i.i.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %25, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !71
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i.i.i, label %land.rhs.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

land.rhs.i.rcu_read_lock.exit.i.i.i_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %land.rhs.i
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b4.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i, label %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #13
  br label %rcu_read_lock.exit.i.i.i

rcu_read_lock.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %land.rhs.i.rcu_read_lock.exit.i.i.i_crit_edge
  %26 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %refcnt.i, align 4
  %and.i.i.i.i = and i32 %27, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i1.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i1.i.i.i, label %do.body1.i.i.i, label %if.else.i.i.i, !prof !72

do.body1.i.i.i:                                   ; preds = %rcu_read_lock.exit.i.i.i
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !73
  %29 = tail call i32 @llvm.read_register.i32(metadata !61) #13
  %and.i2.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i2.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %32
  %33 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i75 = add i32 %34, %27
  %35 = inttoptr i32 %add.i.i.i75 to ptr
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %add15.i.i.i = add i32 %37, 1
  store i32 %add15.i.i.i, ptr %35, align 4
  %38 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !74
  %and.i.i.i.i.i76 = and i32 %38, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i76)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i.i76, 0
  br i1 %tobool.not.i.i.i, label %if.then29.i.i.i, label %do.body1.i.i.i.do.end31.i.i.i_crit_edge, !prof !75

do.body1.i.i.i.do.end31.i.i.i_crit_edge:          ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end31.i.i.i

if.then29.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end31.i.i.i

do.end31.i.i.i:                                   ; preds = %if.then29.i.i.i, %do.body1.i.i.i.do.end31.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %28) #13, !srcloc !76
  br label %if.end39.i.i.i

if.else.i.i.i:                                    ; preds = %rcu_read_lock.exit.i.i.i
  %data.i.i.i = getelementptr inbounds %struct.blkcg_gq, ptr %retval.0.i89, i32 0, i32 5, i32 1
  %39 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %40, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr %40, i32 1, i32 3, i32 1) #13
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %40, ptr %40, i32 0, i32 1, ptr elementtype(i32) %40) #13, !srcloc !78
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i, label %if.else.i.i.i.atomic_long_add_unless.exit.i.i.i_crit_edge, label %do.end11.i.i.i.i.i.i.i

if.else.i.i.i.atomic_long_add_unless.exit.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %atomic_long_add_unless.exit.i.i.i

do.end11.i.i.i.i.i.i.i:                           ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !79
  br label %atomic_long_add_unless.exit.i.i.i

atomic_long_add_unless.exit.i.i.i:                ; preds = %do.end11.i.i.i.i.i.i.i, %if.else.i.i.i.atomic_long_add_unless.exit.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp ne i32 %asmresult.i.i.i.i.i.i.i, 0
  br label %if.end39.i.i.i

if.end39.i.i.i:                                   ; preds = %atomic_long_add_unless.exit.i.i.i, %do.end31.i.i.i
  %ret.0.off0.i.i.i = phi i1 [ true, %do.end31.i.i.i ], [ %cmp.i.i.i.i.i.i, %atomic_long_add_unless.exit.i.i.i ]
  %call.i3.i.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i3.i.i.i, label %if.end39.i.i.i.blkg_tryget.exit_crit_edge, label %land.lhs.true.i6.i.i.i

if.end39.i.i.i.blkg_tryget.exit_crit_edge:        ; preds = %if.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %blkg_tryget.exit

land.lhs.true.i6.i.i.i:                           ; preds = %if.end39.i.i.i
  %call1.i4.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i.i)
  %tobool.not.i5.i.i.i = icmp eq i32 %call1.i4.i.i.i, 0
  br i1 %tobool.not.i5.i.i.i, label %land.lhs.true.i6.i.i.i.blkg_tryget.exit_crit_edge, label %land.lhs.true2.i8.i.i.i

land.lhs.true.i6.i.i.i.blkg_tryget.exit_crit_edge: ; preds = %land.lhs.true.i6.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %blkg_tryget.exit

land.lhs.true2.i8.i.i.i:                          ; preds = %land.lhs.true.i6.i.i.i
  %.b4.i7.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i.i, label %land.lhs.true2.i8.i.i.i.blkg_tryget.exit_crit_edge, label %if.then.i9.i.i.i

land.lhs.true2.i8.i.i.i.blkg_tryget.exit_crit_edge: ; preds = %land.lhs.true2.i8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %blkg_tryget.exit

if.then.i9.i.i.i:                                 ; preds = %land.lhs.true2.i8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.6) #13
  br label %blkg_tryget.exit

blkg_tryget.exit:                                 ; preds = %if.then.i9.i.i.i, %land.lhs.true2.i8.i.i.i.blkg_tryget.exit_crit_edge, %land.lhs.true.i6.i.i.i.blkg_tryget.exit_crit_edge, %if.end39.i.i.i.blkg_tryget.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !80
  %42 = tail call i32 @llvm.read_register.i32(metadata !61) #13
  %and.i.i.i.i.i10.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i10.i.i.i to ptr
  %preempt_count.i.i.i.i11.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %45, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br i1 %ret.0.off0.i.i.i, label %blkg_to_lat.exit, label %blkg_tryget.exit.for.inc_crit_edge

blkg_tryget.exit.for.inc_crit_edge:               ; preds = %blkg_tryget.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

blkg_to_lat.exit:                                 ; preds = %blkg_tryget.exit
  %46 = load i32, ptr @blkcg_policy_iolatency, align 4
  %arrayidx.i.i = getelementptr %struct.blkcg_gq, ptr %retval.0.i89, i32 0, i32 9, i32 %46
  %47 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool13.not = icmp eq ptr %48, null
  br i1 %tobool13.not, label %blkg_to_lat.exit.next_crit_edge, label %if.end15

blkg_to_lat.exit.next_crit_edge:                  ; preds = %blkg_to_lat.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %next

if.end15:                                         ; preds = %blkg_to_lat.exit
  %child_lat = getelementptr inbounds %struct.iolatency_grp, ptr %48, i32 0, i32 13
  %scale_cookie = getelementptr inbounds %struct.iolatency_grp, ptr %48, i32 0, i32 13, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %scale_cookie, i32 noundef 4) #13
  %49 = ptrtoint ptr %scale_cookie to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %scale_cookie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999, i32 %50)
  %cmp = icmp ugt i32 %50, 999999
  br i1 %cmp, label %if.end15.next_crit_edge, label %do.body20

if.end15.next_crit_edge:                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %next

do.body20:                                        ; preds = %if.end15
  %call25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %child_lat) #13
  %last_scale_event = getelementptr inbounds %struct.iolatency_grp, ptr %48, i32 0, i32 13, i32 1
  %51 = ptrtoint ptr %last_scale_event to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %last_scale_event, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call, i64 %52)
  %cmp28.not = icmp ugt i64 %call, %52
  br i1 %cmp28.not, label %if.end31, label %do.body20.next_lock_crit_edge

do.body20.next_lock_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #15
  br label %next_lock

if.end31:                                         ; preds = %do.body20
  %scale_grp = getelementptr inbounds %struct.iolatency_grp, ptr %48, i32 0, i32 13, i32 4
  %53 = ptrtoint ptr %scale_grp to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %scale_grp, align 8
  %cmp32 = icmp eq ptr %54, null
  br i1 %cmp32, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end31
  %blkiolat35 = getelementptr inbounds %struct.iolatency_grp, ptr %48, i32 0, i32 3
  %55 = ptrtoint ptr %blkiolat35 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %blkiolat35, align 8
  %q.i = getelementptr inbounds %struct.rq_qos, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %q.i, align 4
  %nr_requests.i = getelementptr inbounds %struct.request_queue, ptr %58, i32 0, i32 21
  %59 = ptrtoint ptr %nr_requests.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nr_requests.i, align 8
  %cond.i.i77 = lshr i32 %60, 4
  %61 = tail call i32 @llvm.umax.i32(i32 %cond.i.i77, i32 1) #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %scale_cookie, i32 noundef 4) #13
  %62 = ptrtoint ptr %scale_cookie to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %scale_cookie, align 4
  %add.i = add i32 %61, %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %add.i)
  %cmp4.i = icmp ugt i32 %add.i, 1000000
  br i1 %cmp4.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i40.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %scale_cookie, i32 noundef 4) #13
  %64 = ptrtoint ptr %scale_cookie to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile i32 1000000, ptr %scale_cookie, align 4
  br label %next_lock

if.else.i:                                        ; preds = %if.then34
  %65 = tail call i32 @llvm.usub.sat.i32(i32 1000000, i32 %63) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %60)
  %cmp7.i = icmp ugt i32 %65, %60
  %call.i.i41.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %scale_cookie, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %scale_cookie, i32 1, i32 3, i32 1) #13
  br i1 %cmp7.i, label %if.then8.i, label %if.else10.i

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %66 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %scale_cookie, ptr %scale_cookie, i32 1, ptr elementtype(i32) %scale_cookie) #13, !srcloc !81
  br label %next_lock

if.else10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %67 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %scale_cookie, ptr %scale_cookie, i32 %61, ptr elementtype(i32) %scale_cookie) #13, !srcloc !81
  br label %next_lock

if.end36:                                         ; preds = %if.end31
  %sub = sub i64 %call, %52
  call void @__sanitizer_cov_trace_const_cmp8(i64 4999999999, i64 %sub)
  %cmp38 = icmp ugt i64 %sub, 4999999999
  br i1 %cmp38, label %if.then40, label %if.end36.next_lock_crit_edge

if.end36.next_lock_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %next_lock

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  %68 = ptrtoint ptr %scale_grp to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %scale_grp, align 8
  br label %next_lock

next_lock:                                        ; preds = %if.then40, %if.end36.next_lock_crit_edge, %if.else10.i, %if.then8.i, %if.then5.i, %do.body20.next_lock_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %child_lat, i32 noundef %call25) #13
  br label %next

next:                                             ; preds = %next_lock, %if.end15.next_crit_edge, %blkg_to_lat.exit.next_crit_edge
  tail call fastcc void @blkg_put(ptr noundef nonnull %retval.0.i89)
  br label %for.inc

for.inc:                                          ; preds = %next, %blkg_tryget.exit.for.inc_crit_edge, %__blkg_lookup.exit.for.inc_crit_edge
  %69 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %q, align 4
  %root_blkg50 = getelementptr inbounds %struct.request_queue, ptr %70, i32 0, i32 35
  %71 = ptrtoint ptr %root_blkg50 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %root_blkg50, align 8
  %blkcg51 = getelementptr inbounds %struct.blkcg_gq, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %blkcg51 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %blkcg51, align 4
  %call53 = tail call ptr @css_next_descendant_pre(ptr noundef nonnull %pos_css.091, ptr noundef %74) #13
  %tobool.not = icmp eq ptr %call53, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i78 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i78, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i81

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i81:                                ; preds = %for.end
  %call1.i79 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i79)
  %tobool.not.i80 = icmp eq i32 %call1.i79, 0
  br i1 %tobool.not.i80, label %land.lhs.true.i81.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i83

land.lhs.true.i81.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i81
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i83:                               ; preds = %land.lhs.true.i81
  %.b4.i82 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i82, label %land.lhs.true2.i83.rcu_read_unlock.exit_crit_edge, label %if.then.i84

land.lhs.true2.i83.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i83
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i84:                                      ; preds = %land.lhs.true2.i83
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.6) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i84, %land.lhs.true2.i83.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i81.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !80
  %75 = tail call i32 @llvm.read_register.i32(metadata !61) #13
  %and.i.i.i.i.i85 = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i.i.i.i85 to ptr
  %preempt_count.i.i.i.i86 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %preempt_count.i.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %preempt_count.i.i.i.i86, align 4
  %sub.i.i.i = add i32 %78, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i86, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @iolatency_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @blkcg_policy_unregister(ptr noundef nonnull @blkcg_policy_iolatency) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkcg_policy_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @iolatency_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @blkcg_policy_register(ptr noundef nonnull @blkcg_policy_iolatency) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blkcg_iolatency_throttle(ptr noundef %rqos, ptr nocapture noundef readonly %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_blkg = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 12
  %0 = ptrtoint ptr %bi_blkg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_blkg, align 8
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %2 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bi_opf.i, align 8
  %4 = and i32 %3, 67112960
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i.not = icmp eq i32 %4, 0
  %enabled.i = getelementptr inbounds %struct.blk_iolatency, ptr %rqos, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %enabled.i, i32 noundef 4) #13
  %5 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i34 = icmp sgt i32 %6, 0
  br i1 %cmp.i34, label %while.cond.preheader, label %entry.cleanup18_crit_edge

entry.cleanup18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup18

while.cond.preheader:                             ; preds = %entry
  %tobool.not75 = icmp eq ptr %1, null
  br i1 %tobool.not75, label %while.cond.preheader.while.end_crit_edge, label %land.rhs.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %q.i = getelementptr inbounds %struct.rq_qos, ptr %rqos, i32 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %cleanup.land.rhs_crit_edge, %land.rhs.lr.ph
  %blkg.076 = phi ptr [ %1, %land.rhs.lr.ph ], [ %blkg.1, %cleanup.land.rhs_crit_edge ]
  %parent = getelementptr inbounds %struct.blkcg_gq, ptr %blkg.076, i32 0, i32 4
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 8
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %land.rhs.while.end_crit_edge, label %blkg_to_lat.exit

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

blkg_to_lat.exit:                                 ; preds = %land.rhs
  %9 = load i32, ptr @blkcg_policy_iolatency, align 4
  %arrayidx.i.i = getelementptr %struct.blkcg_gq, ptr %blkg.076, i32 0, i32 9, i32 %9
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %blkg_to_lat.exit.cleanup_crit_edge, label %lat_to_blkg.exit.thread.i

blkg_to_lat.exit.cleanup_crit_edge:               ; preds = %blkg_to_lat.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lat_to_blkg.exit.thread.i:                        ; preds = %blkg_to_lat.exit
  %scale_cookie.i = getelementptr inbounds %struct.iolatency_grp, ptr %11, i32 0, i32 7
  %call.i.i.i35 = tail call zeroext i1 @__kasan_check_read(ptr noundef %scale_cookie.i, i32 noundef 4) #13
  %12 = ptrtoint ptr %scale_cookie.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %scale_cookie.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %parent2109.i = getelementptr inbounds %struct.blkcg_gq, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %parent2109.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent2109.i, align 8
  %cmp110.i = icmp eq ptr %17, null
  br i1 %cmp110.i, label %lat_to_blkg.exit.thread.i.lat_to_blkg.exit.i41_crit_edge, label %lat_to_blkg.exit96.i

lat_to_blkg.exit.thread.i.lat_to_blkg.exit.i41_crit_edge: ; preds = %lat_to_blkg.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lat_to_blkg.exit.i41

lat_to_blkg.exit96.i:                             ; preds = %lat_to_blkg.exit.thread.i
  %18 = ptrtoint ptr %parent2109.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent2109.i, align 8
  %tobool.not.i.i97.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i97.i, label %lat_to_blkg.exit96.i.lat_to_blkg.exit.i41_crit_edge, label %blkg_to_lat.exit.i

lat_to_blkg.exit96.i.lat_to_blkg.exit.i41_crit_edge: ; preds = %lat_to_blkg.exit96.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lat_to_blkg.exit.i41

blkg_to_lat.exit.i:                               ; preds = %lat_to_blkg.exit96.i
  %20 = load i32, ptr @blkcg_policy_iolatency, align 4
  %arrayidx.i.i.i = getelementptr %struct.blkcg_gq, ptr %19, i32 0, i32 9, i32 %20
  %21 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %blkg_to_lat.exit.i.lat_to_blkg.exit.i41_crit_edge, label %if.end7.i

blkg_to_lat.exit.i.lat_to_blkg.exit.i41_crit_edge: ; preds = %blkg_to_lat.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lat_to_blkg.exit.i41

if.end7.i:                                        ; preds = %blkg_to_lat.exit.i
  %scale_cookie8.i = getelementptr inbounds %struct.iolatency_grp, ptr %22, i32 0, i32 13, i32 5
  %call.i.i91.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %scale_cookie8.i, i32 noundef 4) #13
  %23 = ptrtoint ptr %scale_cookie8.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %scale_cookie8.i, align 4
  %scale_lat10.i = getelementptr inbounds %struct.iolatency_grp, ptr %22, i32 0, i32 13, i32 2
  %25 = ptrtoint ptr %scale_lat10.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load volatile i64, ptr %scale_lat10.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %13)
  %cmp11.i = icmp ult i32 %24, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %13)
  %.not.i = icmp eq i32 %24, %13
  br i1 %.not.i, label %if.end7.i.lat_to_blkg.exit.i41_crit_edge, label %if.end17.i

if.end7.i.lat_to_blkg.exit.i41_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lat_to_blkg.exit.i41

if.end17.i:                                       ; preds = %if.end7.i
  %call.i.i92.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %scale_cookie.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr %scale_cookie.i, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end17.i
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %scale_cookie.i, ptr %scale_cookie.i, i32 %13, i32 %24, ptr elementtype(i32) %scale_cookie.i) #13, !srcloc !83
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %27, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %atomic_cmpxchg.exit.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i

atomic_cmpxchg.exit.i:                            ; preds = %do.body.i.i.i.i
  %28 = xor i1 %cmp11.i, true
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %27, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !84
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult3.i.i.i.i, i32 %13)
  %cmp20.not.i = icmp eq i32 %asmresult3.i.i.i.i, %13
  br i1 %cmp20.not.i, label %if.end22.i, label %atomic_cmpxchg.exit.i.lat_to_blkg.exit.i41_crit_edge

atomic_cmpxchg.exit.i.lat_to_blkg.exit.i41_crit_edge: ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lat_to_blkg.exit.i41

if.end22.i:                                       ; preds = %atomic_cmpxchg.exit.i
  br i1 %cmp11.i, label %land.lhs.true.i, label %if.end38.thread.i

if.end38.thread.i:                                ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  %rq_depth113.i = getelementptr inbounds %struct.iolatency_grp, ptr %11, i32 0, i32 4
  br label %if.end44.i

land.lhs.true.i:                                  ; preds = %if.end22.i
  %min_lat_nsec.i = getelementptr inbounds %struct.iolatency_grp, ptr %11, i32 0, i32 8
  %29 = ptrtoint ptr %min_lat_nsec.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %min_lat_nsec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %30)
  %tobool24.not.i = icmp eq i64 %30, 0
  br i1 %tobool24.not.i, label %land.lhs.true.i.if.end38.i_crit_edge, label %if.then25.i

land.lhs.true.i.if.end38.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38.i

if.then25.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %26)
  %tobool26.not.i = icmp ne i64 %26, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %26)
  %cmp28.not.i = icmp ugt i64 %30, %26
  %or.cond.i = select i1 %tobool26.not.i, i1 %cmp28.not.i, i1 false
  br i1 %or.cond.i, label %if.end30.i, label %if.then25.i.lat_to_blkg.exit.i41_crit_edge

if.then25.i.lat_to_blkg.exit.i41_crit_edge:       ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lat_to_blkg.exit.i41

if.end30.i:                                       ; preds = %if.then25.i
  %nr_samples.i = getelementptr inbounds %struct.iolatency_grp, ptr %22, i32 0, i32 13, i32 3
  %31 = ptrtoint ptr %nr_samples.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %nr_samples.i, align 8
  %mul.i = mul i64 %32, 5
  %call31.i = tail call i64 @div64_u64(i64 noundef %mul.i, i64 noundef 100) #13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call31.i)
  %cmp33.i = icmp eq i64 %call31.i, 0
  %.call31.i = select i1 %cmp33.i, i64 1, i64 %call31.i
  %nr_samples34.i = getelementptr inbounds %struct.iolatency_grp, ptr %11, i32 0, i32 11
  %33 = ptrtoint ptr %nr_samples34.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %nr_samples34.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %.call31.i)
  %cmp35.not.i = icmp ugt i64 %34, %.call31.i
  br i1 %cmp35.not.i, label %if.end30.i.if.end38.i_crit_edge, label %if.end30.i.lat_to_blkg.exit.i41_crit_edge

if.end30.i.lat_to_blkg.exit.i41_crit_edge:        ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lat_to_blkg.exit.i41

if.end30.i.if.end38.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.end30.i.if.end38.i_crit_edge, %land.lhs.true.i.if.end38.i_crit_edge
  %rq_depth.i = getelementptr inbounds %struct.iolatency_grp, ptr %11, i32 0, i32 4
  %35 = ptrtoint ptr %rq_depth.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rq_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp39.i = icmp ne i32 %36, 1
  %brmerge.i = select i1 %cmp39.i, i1 true, i1 %28
  br i1 %brmerge.i, label %if.end38.i.if.end44.i_crit_edge, label %lat_to_blkg.exit103.i

if.end38.i.if.end44.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44.i

lat_to_blkg.exit103.i:                            ; preds = %if.end38.i
  %37 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %11, align 4
  %use_delay.i.i = getelementptr inbounds %struct.blkcg_gq, ptr %38, i32 0, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %use_delay.i.i, i32 noundef 4) #13
  %39 = ptrtoint ptr %use_delay.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %use_delay.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i.i = icmp slt i32 %40, 0
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end37.critedge.i.i

land.rhs.i.i:                                     ; preds = %lat_to_blkg.exit103.i
  %.b47.i.i = load i1, ptr @blkcg_use_delay.__already_done, align 1
  br i1 %.b47.i.i, label %land.rhs.i.i.lat_to_blkg.exit.i41_crit_edge, label %if.then.i.i, !prof !72

land.rhs.i.i.lat_to_blkg.exit.i41_crit_edge:      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lat_to_blkg.exit.i41

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @blkcg_use_delay.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 536, i32 noundef 9, ptr noundef null) #13
  br label %lat_to_blkg.exit.i41

if.end37.critedge.i.i:                            ; preds = %lat_to_blkg.exit103.i
  %call.i.i49.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_delay.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr %use_delay.i.i, i32 1, i32 3, i32 1) #13
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_delay.i.i, ptr %use_delay.i.i, i32 1, ptr elementtype(i32) %use_delay.i.i) #13, !srcloc !86
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %41, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !87
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i)
  %cmp40.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 1
  br i1 %cmp40.i.i, label %if.then41.i.i, label %if.end37.critedge.i.i.lat_to_blkg.exit.i41_crit_edge

if.end37.critedge.i.i.lat_to_blkg.exit.i41_crit_edge: ; preds = %if.end37.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lat_to_blkg.exit.i41

if.then41.i.i:                                    ; preds = %if.end37.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %blkcg.i.i = getelementptr inbounds %struct.blkcg_gq, ptr %38, i32 0, i32 3
  %42 = ptrtoint ptr %blkcg.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %blkcg.i.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 8
  %congestion_count.i.i = getelementptr inbounds %struct.cgroup, ptr %45, i32 0, i32 35
  %call.i.i50.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %congestion_count.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %congestion_count.i.i, i32 1, i32 3, i32 1) #13
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %congestion_count.i.i, ptr %congestion_count.i.i, i32 1, ptr elementtype(i32) %congestion_count.i.i) #13, !srcloc !81
  br label %lat_to_blkg.exit.i41

if.end44.i:                                       ; preds = %if.end38.i.if.end44.i_crit_edge, %if.end38.thread.i
  %rq_depth117.i = phi ptr [ %rq_depth113.i, %if.end38.thread.i ], [ %rq_depth.i, %if.end38.i.if.end44.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %24)
  %cmp45.i = icmp eq i32 %24, 1000000
  br i1 %cmp45.i, label %lat_to_blkg.exit107.i, label %if.end50.i

lat_to_blkg.exit107.i:                            ; preds = %if.end44.i
  %47 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %11, align 4
  %use_delay.i = getelementptr inbounds %struct.blkcg_gq, ptr %48, i32 0, i32 13
  %call.i.i.i61 = tail call zeroext i1 @__kasan_check_read(ptr noundef %use_delay.i, i32 noundef 4) #13
  %49 = ptrtoint ptr %use_delay.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %use_delay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i62 = icmp eq i32 %50, 0
  br i1 %tobool.not.i62, label %lat_to_blkg.exit107.i.blkcg_clear_delay.exit_crit_edge, label %land.lhs.true.i63

lat_to_blkg.exit107.i.blkcg_clear_delay.exit_crit_edge: ; preds = %lat_to_blkg.exit107.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %blkcg_clear_delay.exit

land.lhs.true.i63:                                ; preds = %lat_to_blkg.exit107.i
  %call.i.i7.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_delay.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr %use_delay.i, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i66

do.body.i.i.i.i66:                                ; preds = %do.body.i.i.i.i66.do.body.i.i.i.i66_crit_edge, %land.lhs.true.i63
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %use_delay.i, ptr %use_delay.i, i32 %50, i32 0, ptr elementtype(i32) %use_delay.i) #13, !srcloc !83
  %asmresult.i.i.i.i64 = extractvalue { i32, i32 } %51, 0
  %tobool.not.i.i.i.i65 = icmp eq i32 %asmresult.i.i.i.i64, 0
  br i1 %tobool.not.i.i.i.i65, label %atomic_cmpxchg.exit.i69, label %do.body.i.i.i.i66.do.body.i.i.i.i66_crit_edge

do.body.i.i.i.i66.do.body.i.i.i.i66_crit_edge:    ; preds = %do.body.i.i.i.i66
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i66

atomic_cmpxchg.exit.i69:                          ; preds = %do.body.i.i.i.i66
  %asmresult3.i.i.i.i67 = extractvalue { i32, i32 } %51, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !84
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult3.i.i.i.i67, i32 %50)
  %cmp.i68 = icmp eq i32 %asmresult3.i.i.i.i67, %50
  br i1 %cmp.i68, label %if.then.i70, label %atomic_cmpxchg.exit.i69.blkcg_clear_delay.exit_crit_edge

atomic_cmpxchg.exit.i69.blkcg_clear_delay.exit_crit_edge: ; preds = %atomic_cmpxchg.exit.i69
  call void @__sanitizer_cov_trace_pc() #15
  br label %blkcg_clear_delay.exit

if.then.i70:                                      ; preds = %atomic_cmpxchg.exit.i69
  call void @__sanitizer_cov_trace_pc() #15
  %blkcg.i = getelementptr inbounds %struct.blkcg_gq, ptr %48, i32 0, i32 3
  %52 = ptrtoint ptr %blkcg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %blkcg.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 8
  %congestion_count.i = getelementptr inbounds %struct.cgroup, ptr %55, i32 0, i32 35
  %call.i.i8.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %congestion_count.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %congestion_count.i, i32 1, i32 3, i32 1) #13
  %56 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %congestion_count.i, ptr %congestion_count.i, i32 1, ptr elementtype(i32) %congestion_count.i) #13, !srcloc !88
  br label %blkcg_clear_delay.exit

blkcg_clear_delay.exit:                           ; preds = %if.then.i70, %atomic_cmpxchg.exit.i69.blkcg_clear_delay.exit_crit_edge, %lat_to_blkg.exit107.i.blkcg_clear_delay.exit_crit_edge
  %57 = ptrtoint ptr %rq_depth117.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %rq_depth117.i, align 4
  %rq_wait.i = getelementptr inbounds %struct.iolatency_grp, ptr %11, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %rq_wait.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #13
  br label %lat_to_blkg.exit.i41

if.end50.i:                                       ; preds = %if.end44.i
  %blkiolat.i = getelementptr inbounds %struct.iolatency_grp, ptr %11, i32 0, i32 3
  %58 = ptrtoint ptr %blkiolat.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %blkiolat.i, align 8
  %q.i44 = getelementptr inbounds %struct.rq_qos, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %q.i44 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %q.i44, align 4
  %nr_requests.i = getelementptr inbounds %struct.request_queue, ptr %61, i32 0, i32 21
  %62 = ptrtoint ptr %nr_requests.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nr_requests.i, align 8
  %cond.v.i.i = select i1 %cmp11.i, i32 2, i32 4
  %cond.i.i45 = lshr i32 %63, %cond.v.i.i
  %64 = tail call i32 @llvm.umax.i32(i32 %cond.i.i45, i32 1) #13
  %rq_depth.i46 = getelementptr inbounds %struct.iolatency_grp, ptr %11, i32 0, i32 4
  %65 = ptrtoint ptr %rq_depth.i46 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rq_depth.i46, align 4
  %67 = tail call i32 @llvm.umin.i32(i32 %66, i32 %63) #13
  br i1 %cmp11.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp3.i = icmp eq i32 %67, 1
  br i1 %cmp3.i, label %lat_to_blkg.exit.i54, label %if.end8.i

lat_to_blkg.exit.i54:                             ; preds = %if.then2.i
  %68 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %11, align 4
  %use_delay.i.i51 = getelementptr inbounds %struct.blkcg_gq, ptr %69, i32 0, i32 13
  %call.i.i.i.i52 = tail call zeroext i1 @__kasan_check_read(ptr noundef %use_delay.i.i51, i32 noundef 4) #13
  %70 = ptrtoint ptr %use_delay.i.i51 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %use_delay.i.i51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp.i.i53 = icmp slt i32 %71, 0
  br i1 %cmp.i.i53, label %land.rhs.i.i55, label %if.end37.i.i

land.rhs.i.i55:                                   ; preds = %lat_to_blkg.exit.i54
  %.b66.i.i = load i1, ptr @blkcg_unuse_delay.__already_done, align 1
  br i1 %.b66.i.i, label %land.rhs.i.i55.blkcg_unuse_delay.exit.i_crit_edge, label %if.then.i.i56, !prof !72

land.rhs.i.i55.blkcg_unuse_delay.exit.i_crit_edge: ; preds = %land.rhs.i.i55
  call void @__sanitizer_cov_trace_pc() #15
  br label %blkcg_unuse_delay.exit.i

if.then.i.i56:                                    ; preds = %land.rhs.i.i55
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @blkcg_unuse_delay.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 546, i32 noundef 9, ptr noundef null) #13
  br label %blkcg_unuse_delay.exit.i

if.end37.i.i:                                     ; preds = %lat_to_blkg.exit.i54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp38.i.i = icmp eq i32 %71, 0
  br i1 %cmp38.i.i, label %if.end37.i.i.blkcg_unuse_delay.exit.i_crit_edge, label %if.end37.i.i.while.cond.i.i_crit_edge

if.end37.i.i.while.cond.i.i_crit_edge:            ; preds = %if.end37.i.i
  br label %while.cond.i.i

if.end37.i.i.blkcg_unuse_delay.exit.i_crit_edge:  ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %blkcg_unuse_delay.exit.i

while.cond.i.i:                                   ; preds = %atomic_cmpxchg.exit.i.i.while.cond.i.i_crit_edge, %if.end37.i.i.while.cond.i.i_crit_edge
  %old.0.i.i = phi i32 [ %asmresult3.i.i.i.i.i, %atomic_cmpxchg.exit.i.i.while.cond.i.i_crit_edge ], [ %71, %if.end37.i.i.while.cond.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %old.0.i.i)
  %tobool41.not.i.i = icmp eq i32 %old.0.i.i, 0
  br i1 %tobool41.not.i.i, label %while.cond.i.i.blkcg_unuse_delay.exit.i_crit_edge, label %while.body.i.i

while.cond.i.i.blkcg_unuse_delay.exit.i_crit_edge: ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %blkcg_unuse_delay.exit.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %sub.i.i = add i32 %old.0.i.i, -1
  %call.i.i68.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_delay.i.i51, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr %use_delay.i.i51, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %while.body.i.i
  %72 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %use_delay.i.i51, ptr %use_delay.i.i51, i32 %old.0.i.i, i32 %sub.i.i, ptr elementtype(i32) %use_delay.i.i51) #13, !srcloc !83
  %asmresult.i.i.i.i.i57 = extractvalue { i32, i32 } %72, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i57, 0
  br i1 %tobool.not.i.i.i.i.i, label %atomic_cmpxchg.exit.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i

atomic_cmpxchg.exit.i.i:                          ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %72, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !84
  %cmp44.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %old.0.i.i
  br i1 %cmp44.i.i, label %while.end.i.i, label %atomic_cmpxchg.exit.i.i.while.cond.i.i_crit_edge

atomic_cmpxchg.exit.i.i.while.cond.i.i_crit_edge: ; preds = %atomic_cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.i

while.end.i.i:                                    ; preds = %atomic_cmpxchg.exit.i.i
  %73 = zext i32 %old.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values)
  switch i32 %old.0.i.i, label %while.end.i.i.lat_to_blkg.exit.i41_crit_edge [
    i32 0, label %while.end.i.i.blkcg_unuse_delay.exit.i_crit_edge
    i32 1, label %if.then51.i.i
  ]

while.end.i.i.blkcg_unuse_delay.exit.i_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %blkcg_unuse_delay.exit.i

while.end.i.i.lat_to_blkg.exit.i41_crit_edge:     ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lat_to_blkg.exit.i41

if.then51.i.i:                                    ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %blkcg.i.i58 = getelementptr inbounds %struct.blkcg_gq, ptr %69, i32 0, i32 3
  %74 = ptrtoint ptr %blkcg.i.i58 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %blkcg.i.i58, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 8
  %congestion_count.i.i59 = getelementptr inbounds %struct.cgroup, ptr %77, i32 0, i32 35
  %call.i.i69.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %congestion_count.i.i59, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %congestion_count.i.i59, i32 1, i32 3, i32 1) #13
  %78 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %congestion_count.i.i59, ptr %congestion_count.i.i59, i32 1, ptr elementtype(i32) %congestion_count.i.i59) #13, !srcloc !88
  br label %lat_to_blkg.exit.i41

blkcg_unuse_delay.exit.i:                         ; preds = %while.end.i.i.blkcg_unuse_delay.exit.i_crit_edge, %while.cond.i.i.blkcg_unuse_delay.exit.i_crit_edge, %if.end37.i.i.blkcg_unuse_delay.exit.i_crit_edge, %if.then.i.i56, %land.rhs.i.i55.blkcg_unuse_delay.exit.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %66)
  %cmp9.i = icmp ugt i32 %63, %66
  br i1 %cmp9.i, label %blkcg_unuse_delay.exit.i.if.then10.i_crit_edge, label %blkcg_unuse_delay.exit.i.lat_to_blkg.exit.i41_crit_edge

blkcg_unuse_delay.exit.i.lat_to_blkg.exit.i41_crit_edge: ; preds = %blkcg_unuse_delay.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lat_to_blkg.exit.i41

blkcg_unuse_delay.exit.i.if.then10.i_crit_edge:   ; preds = %blkcg_unuse_delay.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10.i

if.end8.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %66)
  %cmp9.old.i = icmp ugt i32 %63, %66
  br i1 %cmp9.old.i, label %if.end8.i.if.then10.i_crit_edge, label %if.end8.i.lat_to_blkg.exit.i41_crit_edge

if.end8.i.lat_to_blkg.exit.i41_crit_edge:         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lat_to_blkg.exit.i41

if.end8.i.if.then10.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10.i

if.then10.i:                                      ; preds = %if.end8.i.if.then10.i_crit_edge, %blkcg_unuse_delay.exit.i.if.then10.i_crit_edge
  %add.i = add i32 %67, %64
  %79 = tail call i32 @llvm.umin.i32(i32 %add.i, i32 %63) #13
  %80 = ptrtoint ptr %rq_depth.i46 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %rq_depth.i46, align 4
  %rq_wait.i60 = getelementptr inbounds %struct.iolatency_grp, ptr %11, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %rq_wait.i60, i32 noundef 3, i32 noundef 0, ptr noundef null) #13
  br label %lat_to_blkg.exit.i41

if.else.i:                                        ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %67)
  %cmp16.i = icmp ugt i32 %67, 3
  %shr.i = lshr i32 %67, 1
  %cond20.i = select i1 %cmp16.i, i32 %shr.i, i32 1
  %81 = ptrtoint ptr %rq_depth.i46 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %cond20.i, ptr %rq_depth.i46, align 4
  br label %lat_to_blkg.exit.i41

lat_to_blkg.exit.i41:                             ; preds = %if.else.i, %if.then10.i, %if.end8.i.lat_to_blkg.exit.i41_crit_edge, %blkcg_unuse_delay.exit.i.lat_to_blkg.exit.i41_crit_edge, %if.then51.i.i, %while.end.i.i.lat_to_blkg.exit.i41_crit_edge, %blkcg_clear_delay.exit, %if.then41.i.i, %if.end37.critedge.i.i.lat_to_blkg.exit.i41_crit_edge, %if.then.i.i, %land.rhs.i.i.lat_to_blkg.exit.i41_crit_edge, %if.end30.i.lat_to_blkg.exit.i41_crit_edge, %if.then25.i.lat_to_blkg.exit.i41_crit_edge, %atomic_cmpxchg.exit.i.lat_to_blkg.exit.i41_crit_edge, %if.end7.i.lat_to_blkg.exit.i41_crit_edge, %blkg_to_lat.exit.i.lat_to_blkg.exit.i41_crit_edge, %lat_to_blkg.exit96.i.lat_to_blkg.exit.i41_crit_edge, %lat_to_blkg.exit.thread.i.lat_to_blkg.exit.i41_crit_edge
  %82 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %bi_opf.i, align 8
  %rq_wait.i37 = getelementptr inbounds %struct.iolatency_grp, ptr %11, i32 0, i32 5
  %84 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %11, align 4
  %use_delay2.i = getelementptr inbounds %struct.blkcg_gq, ptr %85, i32 0, i32 13
  %call.i.i.i39 = tail call zeroext i1 @__kasan_check_read(ptr noundef %use_delay2.i, i32 noundef 4) #13
  %86 = ptrtoint ptr %use_delay2.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %use_delay2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.not.i40 = icmp eq i32 %87, 0
  br i1 %tobool.not.i40, label %lat_to_blkg.exit.i41.if.end.i_crit_edge, label %if.then.i

lat_to_blkg.exit.i41.if.end.i_crit_edge:          ; preds = %lat_to_blkg.exit.i41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %lat_to_blkg.exit.i41
  call void @__sanitizer_cov_trace_pc() #15
  %88 = and i32 %83, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp = icmp ne i32 %88, 0
  %89 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %q.i, align 4
  tail call void @blkcg_schedule_throttle(ptr noundef %90, i1 noundef zeroext %cmp) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lat_to_blkg.exit.i41.if.end.i_crit_edge
  br i1 %cmp.i.not, label %lor.lhs.false.i, label %if.end.i.if.then9.i_crit_edge

if.end.i.if.then9.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %91 = tail call i32 @llvm.read_register.i32(metadata !61) #13
  %and.i.i = and i32 %91, -16384
  %92 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %task.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %stack.i.i.i.i, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %96, align 4
  %and1.i.i.i.i.i.i = and i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i.i42 = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i42, label %lor.lhs.false.i.if.end10.i_crit_edge, label %fatal_signal_pending.exit.i

lor.lhs.false.i.if.end10.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i

fatal_signal_pending.exit.i:                      ; preds = %lor.lhs.false.i
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %94, i32 0, i32 116, i32 1
  %99 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %signal.i.i.i, align 4
  %101 = and i32 %100, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool8.not.i = icmp eq i32 %101, 0
  br i1 %tobool8.not.i, label %fatal_signal_pending.exit.i.if.end10.i_crit_edge, label %fatal_signal_pending.exit.i.if.then9.i_crit_edge

fatal_signal_pending.exit.i.if.then9.i_crit_edge: ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i

fatal_signal_pending.exit.i.if.end10.i_crit_edge: ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i

if.then9.i:                                       ; preds = %fatal_signal_pending.exit.i.if.then9.i_crit_edge, %if.end.i.if.then9.i_crit_edge
  %inflight.i = getelementptr inbounds %struct.iolatency_grp, ptr %11, i32 0, i32 5, i32 1
  %call.i.i15.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %inflight.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %inflight.i, i32 1, i32 3, i32 1) #13
  %102 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inflight.i, ptr %inflight.i, i32 1, ptr elementtype(i32) %inflight.i) #13, !srcloc !81
  br label %cleanup

if.end10.i:                                       ; preds = %fatal_signal_pending.exit.i.if.end10.i_crit_edge, %lor.lhs.false.i.if.end10.i_crit_edge
  tail call void @rq_qos_wait(ptr noundef %rq_wait.i37, ptr noundef nonnull %11, ptr noundef nonnull @iolat_acquire_inflight, ptr noundef nonnull @iolat_cleanup_cb) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end10.i, %if.then9.i, %blkg_to_lat.exit.cleanup_crit_edge
  %103 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %103)
  %blkg.1 = load ptr, ptr %parent, align 8
  %tobool.not = icmp eq ptr %blkg.1, null
  br i1 %tobool.not, label %cleanup.while.end_crit_edge, label %cleanup.land.rhs_crit_edge

cleanup.land.rhs_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %land.rhs.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %pprev.i.i = getelementptr inbounds %struct.blk_iolatency, ptr %rqos, i32 0, i32 1, i32 0, i32 1
  %104 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i43.not = icmp eq ptr %105, null
  br i1 %tobool.not.i.i43.not, label %if.then14, label %while.end.cleanup18_crit_edge

while.end.cleanup18_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup18

if.then14:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %timer = getelementptr inbounds %struct.blk_iolatency, ptr %rqos, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %106 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %106, 100
  %call16 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #13
  br label %cleanup18

cleanup18:                                        ; preds = %if.then14, %while.end.cleanup18_crit_edge, %entry.cleanup18_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blkcg_iolatency_done_bio(ptr nocapture noundef readnone %rqos, ptr nocapture noundef readonly %bio) #0 align 64 {
entry:
  %stat.i = alloca %struct.latency_stat, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %0 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bi_opf.i, align 8
  %2 = and i32 %1, 67112960
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i.not = icmp eq i32 %2, 0
  %bi_blkg = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 12
  %3 = ptrtoint ptr %bi_blkg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bi_blkg, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %bi_flags.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %5 = ptrtoint ptr %bi_flags.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %bi_flags.i, align 4
  %7 = and i16 %6, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp.i125.not = icmp eq i16 %7, 0
  br i1 %cmp.i125.not, label %lor.lhs.false.cleanup_crit_edge, label %blkg_to_lat.exit

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

blkg_to_lat.exit:                                 ; preds = %lor.lhs.false
  %8 = load i32, ptr @blkcg_policy_iolatency, align 4
  %arrayidx.i.i = getelementptr %struct.blkcg_gq, ptr %4, i32 0, i32 9, i32 %8
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %blkg_to_lat.exit.cleanup_crit_edge, label %if.end6

blkg_to_lat.exit.cleanup_crit_edge:               ; preds = %blkg_to_lat.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %blkg_to_lat.exit
  %blkiolat = getelementptr inbounds %struct.iolatency_grp, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %blkiolat to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %blkiolat, align 8
  %enabled.i = getelementptr inbounds %struct.blk_iolatency, ptr %12, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %enabled.i, i32 noundef 4) #13
  %13 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i126 = icmp sgt i32 %14, 0
  br i1 %cmp.i126, label %land.rhs.lr.ph, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.rhs.lr.ph:                                   ; preds = %if.end6
  %call12 = tail call i64 @ktime_get() #13
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %bi_issue = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 13
  %and.i.i = and i64 %call12, 2251799813685247
  %missed2.i.i = getelementptr inbounds %struct.percentile_stats, ptr %stat.i, i32 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %while.cond.backedge.land.rhs_crit_edge, %land.rhs.lr.ph
  %blkg.0155 = phi ptr [ %4, %land.rhs.lr.ph ], [ %blkg.0.be, %while.cond.backedge.land.rhs_crit_edge ]
  %parent = getelementptr inbounds %struct.blkcg_gq, ptr %blkg.0155, i32 0, i32 4
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent, align 8
  %tobool15.not = icmp eq ptr %16, null
  br i1 %tobool15.not, label %land.rhs.cleanup_crit_edge, label %blkg_to_lat.exit131

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

blkg_to_lat.exit131:                              ; preds = %land.rhs
  %17 = load i32, ptr @blkcg_policy_iolatency, align 4
  %arrayidx.i.i128 = getelementptr %struct.blkcg_gq, ptr %blkg.0155, i32 0, i32 9, i32 %17
  %18 = ptrtoint ptr %arrayidx.i.i128 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i128, align 4
  %tobool17.not = icmp eq ptr %19, null
  br i1 %tobool17.not, label %blkg_to_lat.exit131.while.cond.backedge_crit_edge, label %if.end20

blkg_to_lat.exit131.while.cond.backedge_crit_edge: ; preds = %blkg_to_lat.exit131
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge

if.end20:                                         ; preds = %blkg_to_lat.exit131
  %rq_wait = getelementptr inbounds %struct.iolatency_grp, ptr %19, i32 0, i32 5
  %inflight21 = getelementptr inbounds %struct.iolatency_grp, ptr %19, i32 0, i32 5, i32 1
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %inflight21, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !89
  call void @llvm.prefetch.p0(ptr %inflight21, i32 1, i32 3, i32 1) #13
  %20 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inflight21, ptr %inflight21, i32 1, ptr elementtype(i32) %inflight21) #13, !srcloc !90
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %20, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp = icmp slt i32 %asmresult.i.i.i.i, 0
  br i1 %cmp, label %land.rhs26, label %if.end20.if.end55_crit_edge

if.end20.if.end55_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

land.rhs26:                                       ; preds = %if.end20
  %.b121 = load i1, ptr @blkcg_iolatency_done_bio.__already_done, align 1
  br i1 %.b121, label %land.rhs26.if.end55_crit_edge, label %if.then33, !prof !72

land.rhs26.if.end55_crit_edge:                    ; preds = %land.rhs26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

if.then33:                                        ; preds = %land.rhs26
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @blkcg_iolatency_done_bio.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 622, i32 noundef 9, ptr noundef null) #13
  br label %if.end55

if.end55:                                         ; preds = %if.then33, %land.rhs26.if.end55_crit_edge, %if.end20.if.end55_crit_edge
  %min_lat_nsec = getelementptr inbounds %struct.iolatency_grp, ptr %19, i32 0, i32 8
  %21 = ptrtoint ptr %min_lat_nsec to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %min_lat_nsec, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %tobool63.not = icmp eq i64 %22, 0
  br i1 %tobool63.not, label %if.end55.if.end83_crit_edge, label %land.lhs.true

if.end55.if.end83_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83

land.lhs.true:                                    ; preds = %if.end55
  %23 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %24)
  %cmp64.not = icmp eq i8 %24, 12
  br i1 %cmp64.not, label %land.lhs.true.if.end83_crit_edge, label %if.then66

land.lhs.true.if.end83_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83

if.then66:                                        ; preds = %land.lhs.true
  %25 = ptrtoint ptr %bi_issue to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %bi_issue, align 8
  %and.i.i.i = and i64 %26, 2251799813685247
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i, i64 %and.i.i.i)
  %cmp.not.i = icmp ugt i64 %and.i.i, %and.i.i.i
  br i1 %cmp.not.i, label %if.end.i, label %if.then66.iolatency_record_time.exit_crit_edge

if.then66.iolatency_record_time.exit_crit_edge:   ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #15
  br label %iolatency_record_time.exit

if.end.i:                                         ; preds = %if.then66
  %sub.i = sub nsw i64 %and.i.i, %and.i.i.i
  br i1 %cmp.i.not, label %if.end.i.if.end12.i_crit_edge, label %land.rhs.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12.i

land.rhs.i:                                       ; preds = %if.end.i
  %rq_depth.i = getelementptr inbounds %struct.iolatency_grp, ptr %19, i32 0, i32 4
  %27 = ptrtoint ptr %rq_depth.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rq_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %cmp2.not.i = icmp eq i32 %28, -1
  br i1 %cmp2.not.i, label %land.rhs.i.if.end12.i_crit_edge, label %if.then5.i, !prof !72

land.rhs.i.if.end12.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12.i

if.then5.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %sub.i)
  %cmp7.i = icmp ugt i64 %22, %sub.i
  br i1 %cmp7.i, label %lat_to_blkg.exit.i, label %if.then5.i.iolatency_record_time.exit_crit_edge

if.then5.i.iolatency_record_time.exit_crit_edge:  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iolatency_record_time.exit

lat_to_blkg.exit.i:                               ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %19, align 4
  %sub10.i = sub i64 %22, %sub.i
  call void @blkcg_add_delay(ptr noundef %30, i64 noundef %and.i.i, i64 noundef %sub10.i) #13
  br label %iolatency_record_time.exit

if.end12.i:                                       ; preds = %land.rhs.i.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge
  %31 = call i32 @llvm.read_register.i32(metadata !61) #13
  %and.i.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %34, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !92
  %stats.i.i = getelementptr inbounds %struct.iolatency_grp, ptr %19, i32 0, i32 1
  %35 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %stats.i.i, align 8
  %37 = ptrtoint ptr %36 to i32
  %38 = call i32 @llvm.read_register.i32(metadata !61) #13
  %and.i.i24.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i24.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i132 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %41
  %42 = ptrtoint ptr %arrayidx.i.i132 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i.i132, align 4
  %add.i.i = add i32 %43, %37
  %44 = inttoptr i32 %add.i.i to ptr
  %ssd.i.i = getelementptr inbounds %struct.iolatency_grp, ptr %19, i32 0, i32 12
  %45 = ptrtoint ptr %ssd.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ssd.i.i, align 8, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i.i133 = icmp eq i8 %46, 0
  br i1 %tobool.not.i.i133, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end12.i
  %47 = ptrtoint ptr %min_lat_nsec to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %min_lat_nsec, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %48, i64 %sub.i)
  %cmp.not.i.i = icmp ugt i64 %48, %sub.i
  br i1 %cmp.not.i.i, label %if.then.i.i.if.end.i.i_crit_edge, label %if.then6.i.i

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.then6.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %missed.i.i = getelementptr inbounds %struct.percentile_stats, ptr %44, i32 0, i32 1
  %49 = ptrtoint ptr %missed.i.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %missed.i.i, align 8
  %inc.i.i = add i64 %50, 1
  store i64 %inc.i.i, ptr %missed.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then6.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %51 = ptrtoint ptr %44 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %44, align 8
  %inc7.i.i = add i64 %52, 1
  store i64 %inc7.i.i, ptr %44, align 8
  br label %latency_stat_record_time.exit.i

if.else.i.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @blk_rq_stat_add(ptr noundef %44, i64 noundef %sub.i) #13
  br label %latency_stat_record_time.exit.i

latency_stat_record_time.exit.i:                  ; preds = %if.else.i.i, %if.end.i.i
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !94
  %53 = call i32 @llvm.read_register.i32(metadata !61) #13
  %and.i.i.i21.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i21.i.i to ptr
  %preempt_count.i.i22.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i22.i.i, align 4
  %sub.i.i.i = add i32 %56, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i22.i.i, align 4
  br label %iolatency_record_time.exit

iolatency_record_time.exit:                       ; preds = %latency_stat_record_time.exit.i, %lat_to_blkg.exit.i, %if.then5.i.iolatency_record_time.exit_crit_edge, %if.then66.iolatency_record_time.exit_crit_edge
  %window_start68 = getelementptr inbounds %struct.iolatency_grp, ptr %19, i32 0, i32 6
  %call.i.i122 = call zeroext i1 @__kasan_check_read(ptr noundef %window_start68, i32 noundef 8) #13
  %call.i = call i64 @generic_atomic64_read(ptr noundef %window_start68) #13
  call void @__sanitizer_cov_trace_cmp8(i64 %call12, i64 %call.i)
  %cmp70 = icmp ugt i64 %call12, %call.i
  br i1 %cmp70, label %land.lhs.true72, label %iolatency_record_time.exit.if.end83_crit_edge

iolatency_record_time.exit.if.end83_crit_edge:    ; preds = %iolatency_record_time.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83

land.lhs.true72:                                  ; preds = %iolatency_record_time.exit
  %sub = sub i64 %call12, %call.i
  %cur_win_nsec = getelementptr inbounds %struct.iolatency_grp, ptr %19, i32 0, i32 9
  %57 = ptrtoint ptr %cur_win_nsec to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %cur_win_nsec, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %58)
  %cmp73.not = icmp ult i64 %sub, %58
  br i1 %cmp73.not, label %land.lhs.true72.if.end83_crit_edge, label %if.then75

land.lhs.true72.if.end83_crit_edge:               ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83

if.then75:                                        ; preds = %land.lhs.true72
  %call.i.i123 = call zeroext i1 @__kasan_check_write(ptr noundef %window_start68, i32 noundef 8) #13
  %call.i124 = call i64 @generic_atomic64_cmpxchg(ptr noundef %window_start68, i64 noundef %call.i, i64 noundef %call12) #13
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i124, i64 %call.i)
  %cmp78 = icmp eq i64 %call.i124, %call.i
  br i1 %cmp78, label %lat_to_blkg.exit.i139, label %if.then75.if.end83_crit_edge

if.then75.if.end83_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83

lat_to_blkg.exit.i139:                            ; preds = %if.then75
  %59 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %stat.i) #13
  %61 = call ptr @memset(ptr %stat.i, i32 255, i32 40)
  %ssd.i.i137 = getelementptr inbounds %struct.iolatency_grp, ptr %19, i32 0, i32 12
  %62 = ptrtoint ptr %ssd.i.i137 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %ssd.i.i137, align 8, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i.i138 = icmp eq i8 %63, 0
  br i1 %tobool.not.i.i138, label %if.else.i.i141, label %if.then.i.i140

if.then.i.i140:                                   ; preds = %lat_to_blkg.exit.i139
  call void @__sanitizer_cov_trace_pc() #15
  %64 = call ptr @memset(ptr %stat.i, i32 0, i32 16)
  br label %latency_stat_init.exit.i

if.else.i.i141:                                   ; preds = %lat_to_blkg.exit.i139
  call void @__sanitizer_cov_trace_pc() #15
  call void @blk_rq_stat_init(ptr noundef nonnull %stat.i) #13
  br label %latency_stat_init.exit.i

latency_stat_init.exit.i:                         ; preds = %if.else.i.i141, %if.then.i.i140
  %65 = call i32 @llvm.read_register.i32(metadata !61) #13
  %and.i.i.i.i = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i142 = add i32 %68, 1
  store volatile i32 %add.i.i142, ptr %preempt_count.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !95
  %call1241.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %69 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1241.i, i32 %69)
  %cmp242.i = icmp ult i32 %call1241.i, %69
  br i1 %cmp242.i, label %for.body.lr.ph.i, label %latency_stat_init.exit.i.do.body6.i_crit_edge

latency_stat_init.exit.i.do.body6.i_crit_edge:    ; preds = %latency_stat_init.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body6.i

for.body.lr.ph.i:                                 ; preds = %latency_stat_init.exit.i
  %stats.i = getelementptr inbounds %struct.iolatency_grp, ptr %19, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %latency_stat_init.exit163.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %call1243.i = phi i32 [ %call1241.i, %for.body.lr.ph.i ], [ %call1.i, %latency_stat_init.exit163.i.for.body.i_crit_edge ]
  %70 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %stats.i, align 8
  %72 = ptrtoint ptr %71 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call1243.i
  %73 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %74, %72
  %75 = inttoptr i32 %add.i to ptr
  %76 = ptrtoint ptr %ssd.i.i137 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %ssd.i.i137, align 8, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool.not.i155.i = icmp eq i8 %77, 0
  br i1 %tobool.not.i155.i, label %if.else.i158.i, label %if.then.i157.i

if.then.i157.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %78 = ptrtoint ptr %75 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %75, align 8
  %80 = ptrtoint ptr %stat.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %stat.i, align 8
  %add.i156.i = add i64 %81, %79
  store i64 %add.i156.i, ptr %stat.i, align 8
  %missed.i.i143 = getelementptr inbounds %struct.percentile_stats, ptr %75, i32 0, i32 1
  %82 = ptrtoint ptr %missed.i.i143 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %missed.i.i143, align 8
  %84 = ptrtoint ptr %missed2.i.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %missed2.i.i, align 8
  %add3.i.i = add i64 %85, %83
  store i64 %add3.i.i, ptr %missed2.i.i, align 8
  br label %latency_stat_sum.exit.i

if.else.i158.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @blk_rq_stat_sum(ptr noundef nonnull %stat.i, ptr noundef %75) #13
  br label %latency_stat_sum.exit.i

latency_stat_sum.exit.i:                          ; preds = %if.else.i158.i, %if.then.i157.i
  %86 = ptrtoint ptr %ssd.i.i137 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %ssd.i.i137, align 8, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool.not.i160.i = icmp eq i8 %87, 0
  br i1 %tobool.not.i160.i, label %if.else.i162.i, label %if.then.i161.i

if.then.i161.i:                                   ; preds = %latency_stat_sum.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %88 = call ptr @memset(ptr %75, i32 0, i32 16)
  br label %latency_stat_init.exit163.i

if.else.i162.i:                                   ; preds = %latency_stat_sum.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @blk_rq_stat_init(ptr noundef %75) #13
  br label %latency_stat_init.exit163.i

latency_stat_init.exit163.i:                      ; preds = %if.else.i162.i, %if.then.i161.i
  %call1.i = call i32 @cpumask_next(i32 noundef %call1243.i, ptr noundef nonnull @__cpu_online_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %89 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i144 = icmp ult i32 %call1.i, %89
  br i1 %cmp.i144, label %latency_stat_init.exit163.i.for.body.i_crit_edge, label %latency_stat_init.exit163.i.do.body6.i_crit_edge

latency_stat_init.exit163.i.do.body6.i_crit_edge: ; preds = %latency_stat_init.exit163.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body6.i

latency_stat_init.exit163.i.for.body.i_crit_edge: ; preds = %latency_stat_init.exit163.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

do.body6.i:                                       ; preds = %latency_stat_init.exit163.i.do.body6.i_crit_edge, %latency_stat_init.exit.i.do.body6.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !96
  %90 = call i32 @llvm.read_register.i32(metadata !61) #13
  %and.i.i.i152.i = and i32 %90, -16384
  %91 = inttoptr i32 %and.i.i.i152.i to ptr
  %preempt_count.i.i153.i = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %preempt_count.i.i153.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %preempt_count.i.i153.i, align 4
  %sub.i.i = add i32 %93, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i153.i, align 4
  %parent9.i = getelementptr inbounds %struct.blkcg_gq, ptr %60, i32 0, i32 4
  %94 = ptrtoint ptr %parent9.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %parent9.i, align 8
  %tobool.not.i.i164.i = icmp eq ptr %95, null
  br i1 %tobool.not.i.i164.i, label %do.body6.i.iolatency_check_latencies.exit_crit_edge, label %blkg_to_lat.exit.i

do.body6.i.iolatency_check_latencies.exit_crit_edge: ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iolatency_check_latencies.exit

blkg_to_lat.exit.i:                               ; preds = %do.body6.i
  %96 = load i32, ptr @blkcg_policy_iolatency, align 4
  %arrayidx.i.i.i = getelementptr %struct.blkcg_gq, ptr %95, i32 0, i32 9, i32 %96
  %97 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i = icmp eq ptr %98, null
  br i1 %tobool.not.i, label %blkg_to_lat.exit.i.iolatency_check_latencies.exit_crit_edge, label %if.end.i145

blkg_to_lat.exit.i.iolatency_check_latencies.exit_crit_edge: ; preds = %blkg_to_lat.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iolatency_check_latencies.exit

if.end.i145:                                      ; preds = %blkg_to_lat.exit.i
  %child_lat.i = getelementptr inbounds %struct.iolatency_grp, ptr %98, i32 0, i32 13
  %99 = ptrtoint ptr %ssd.i.i137 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %ssd.i.i137, align 8, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool.not.i168.i = icmp eq i8 %100, 0
  br i1 %tobool.not.i168.i, label %iolat_update_total_lat_avg.exit.i, label %iolat_update_total_lat_avg.exit.thread.i

iolat_update_total_lat_avg.exit.thread.i:         ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #15
  %101 = ptrtoint ptr %stat.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %stat.i, align 8
  br label %if.then.i173.i

iolat_update_total_lat_avg.exit.i:                ; preds = %if.end.i145
  %103 = ptrtoint ptr %cur_win_nsec to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %cur_win_nsec, align 8
  %call.i.i146 = call i64 @div64_u64(i64 noundef %104, i64 noundef 250000000) #13
  %conv.i.i = trunc i64 %call.i.i146 to i32
  %105 = call i32 @llvm.smin.i32(i32 %conv.i.i, i32 4) #13
  %lat_avg.i.i = getelementptr inbounds %struct.iolatency_grp, ptr %19, i32 0, i32 10
  %106 = ptrtoint ptr %lat_avg.i.i to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %lat_avg.i.i, align 8
  %conv2.i.i = trunc i64 %107 to i32
  %arrayidx.i.i147 = getelementptr [5 x i64], ptr @iolatency_exp_factors, i32 0, i32 %105
  %108 = ptrtoint ptr %arrayidx.i.i147 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %arrayidx.i.i147, align 8
  %conv3.i.i = trunc i64 %109 to i32
  %110 = ptrtoint ptr %stat.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %stat.i, align 8
  %conv4.i.i = trunc i64 %111 to i32
  %mul.i.i.i = mul i32 %conv3.i.i, %conv2.i.i
  %sub.i.i.i148 = sub i32 2048, %conv3.i.i
  %mul1.i.i.i = mul i32 %sub.i.i.i148, %conv4.i.i
  %add.i.i.i149 = add i32 %mul1.i.i.i, %mul.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4.i.i, i32 %conv2.i.i)
  %cmp.not.i.i.i = icmp ult i32 %conv4.i.i, %conv2.i.i
  %add2.i.i.i = add i32 %add.i.i.i149, 2047
  %spec.select.i.i.i = select i1 %cmp.not.i.i.i, i32 %add.i.i.i149, i32 %add2.i.i.i
  %div7.i.i.i = lshr i32 %spec.select.i.i.i, 11
  %conv6.i.i = zext i32 %div7.i.i.i to i64
  %112 = ptrtoint ptr %lat_avg.i.i to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %conv6.i.i, ptr %lat_avg.i.i, align 8
  %113 = ptrtoint ptr %ssd.i.i137 to i32
  call void @__asan_load1_noabort(i32 %113)
  %.pr.i = load i8, ptr %ssd.i.i137, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %tobool.not.i170.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool.not.i170.i, label %latency_sum_ok.exit.i, label %iolat_update_total_lat_avg.exit.i.if.then.i173.i_crit_edge

iolat_update_total_lat_avg.exit.i.if.then.i173.i_crit_edge: ; preds = %iolat_update_total_lat_avg.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i173.i

if.then.i173.i:                                   ; preds = %iolat_update_total_lat_avg.exit.i.if.then.i173.i_crit_edge, %iolat_update_total_lat_avg.exit.thread.i
  %114 = phi i64 [ %102, %iolat_update_total_lat_avg.exit.thread.i ], [ %111, %iolat_update_total_lat_avg.exit.i.if.then.i173.i_crit_edge ]
  %call.i171.i = call i64 @div64_u64(i64 noundef %114, i64 noundef 10) #13
  %115 = call i64 @llvm.umax.i64(i64 %call.i171.i, i64 1) #13
  %116 = ptrtoint ptr %missed2.i.i to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %missed2.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %117, i64 %115)
  %cmp1.i.i = icmp ult i64 %117, %115
  br i1 %cmp1.i.i, label %if.then.i173.i.land.lhs.true.i_crit_edge, label %if.then.i173.i.do.body17.i_crit_edge

if.then.i173.i.do.body17.i_crit_edge:             ; preds = %if.then.i173.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body17.i

if.then.i173.i.land.lhs.true.i_crit_edge:         ; preds = %if.then.i173.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i

latency_sum_ok.exit.i:                            ; preds = %iolat_update_total_lat_avg.exit.i
  %118 = ptrtoint ptr %min_lat_nsec to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %min_lat_nsec, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %111, i64 %119)
  %cmp2.i.not.i = icmp ugt i64 %111, %119
  br i1 %cmp2.i.not.i, label %latency_sum_ok.exit.i.do.body17.i_crit_edge, label %latency_sum_ok.exit.i.land.lhs.true.i_crit_edge

latency_sum_ok.exit.i.land.lhs.true.i_crit_edge:  ; preds = %latency_sum_ok.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i

latency_sum_ok.exit.i.do.body17.i_crit_edge:      ; preds = %latency_sum_ok.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body17.i

land.lhs.true.i:                                  ; preds = %latency_sum_ok.exit.i.land.lhs.true.i_crit_edge, %if.then.i173.i.land.lhs.true.i_crit_edge
  %scale_cookie.i = getelementptr inbounds %struct.iolatency_grp, ptr %98, i32 0, i32 13, i32 5
  %call.i.i.i151 = call zeroext i1 @__kasan_check_read(ptr noundef %scale_cookie.i, i32 noundef 4) #13
  %120 = ptrtoint ptr %scale_cookie.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %scale_cookie.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %121)
  %cmp13.i = icmp eq i32 %121, 1000000
  br i1 %cmp13.i, label %land.lhs.true.i.iolatency_check_latencies.exit_crit_edge, label %land.lhs.true.i.do.body17.i_crit_edge

land.lhs.true.i.do.body17.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body17.i

land.lhs.true.i.iolatency_check_latencies.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iolatency_check_latencies.exit

do.body17.i:                                      ; preds = %land.lhs.true.i.do.body17.i_crit_edge, %latency_sum_ok.exit.i.do.body17.i_crit_edge, %if.then.i173.i.do.body17.i_crit_edge
  %call21.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %child_lat.i) #13
  %cur_stat.i = getelementptr inbounds %struct.iolatency_grp, ptr %19, i32 0, i32 2
  %122 = ptrtoint ptr %ssd.i.i137 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %ssd.i.i137, align 8, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool.not.i176.i = icmp eq i8 %123, 0
  br i1 %tobool.not.i176.i, label %if.else.i182.i, label %if.then.i181.i

if.then.i181.i:                                   ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #15
  %124 = ptrtoint ptr %stat.i to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %stat.i, align 8
  %126 = ptrtoint ptr %cur_stat.i to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %cur_stat.i, align 8
  %add.i177.i = add i64 %127, %125
  store i64 %add.i177.i, ptr %cur_stat.i, align 8
  %128 = ptrtoint ptr %missed2.i.i to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %missed2.i.i, align 8
  %missed2.i179.i = getelementptr inbounds %struct.iolatency_grp, ptr %19, i32 0, i32 2, i32 0, i32 0, i32 1
  %130 = ptrtoint ptr %missed2.i179.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %missed2.i179.i, align 8
  %add3.i180.i = add i64 %131, %129
  store i64 %add3.i180.i, ptr %missed2.i179.i, align 8
  br label %latency_stat_sum.exit184.i

if.else.i182.i:                                   ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @blk_rq_stat_sum(ptr noundef %cur_stat.i, ptr noundef nonnull %stat.i) #13
  br label %latency_stat_sum.exit184.i

latency_stat_sum.exit184.i:                       ; preds = %if.else.i182.i, %if.then.i181.i
  %nr_samples.i = getelementptr inbounds %struct.iolatency_grp, ptr %19, i32 0, i32 11
  %132 = ptrtoint ptr %nr_samples.i to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %nr_samples.i, align 8
  %nr_samples26.i = getelementptr inbounds %struct.iolatency_grp, ptr %98, i32 0, i32 13, i32 3
  %134 = ptrtoint ptr %nr_samples26.i to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %nr_samples26.i, align 8
  %sub.i152 = sub i64 %135, %133
  store i64 %sub.i152, ptr %nr_samples26.i, align 8
  %136 = ptrtoint ptr %ssd.i.i137 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %ssd.i.i137, align 8, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool.not.i186.i = icmp eq i8 %137, 0
  br i1 %tobool.not.i186.i, label %if.end.i189.i, label %if.then.i187.i

if.then.i187.i:                                   ; preds = %latency_stat_sum.exit184.i
  call void @__sanitizer_cov_trace_pc() #15
  %138 = ptrtoint ptr %cur_stat.i to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %cur_stat.i, align 8
  br label %latency_stat_samples.exit.i

if.end.i189.i:                                    ; preds = %latency_stat_sum.exit184.i
  call void @__sanitizer_cov_trace_pc() #15
  %nr_samples.i.i = getelementptr inbounds %struct.iolatency_grp, ptr %19, i32 0, i32 2, i32 0, i32 0, i32 3
  %140 = ptrtoint ptr %nr_samples.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %nr_samples.i.i, align 8
  %conv.i188.i = zext i32 %141 to i64
  br label %latency_stat_samples.exit.i

latency_stat_samples.exit.i:                      ; preds = %if.end.i189.i, %if.then.i187.i
  %retval.0.i190.i = phi i64 [ %139, %if.then.i187.i ], [ %conv.i188.i, %if.end.i189.i ]
  %add30.i = add i64 %retval.0.i190.i, %sub.i152
  %142 = ptrtoint ptr %nr_samples26.i to i32
  call void @__asan_store8_noabort(i32 %142)
  store i64 %add30.i, ptr %nr_samples26.i, align 8
  %143 = ptrtoint ptr %ssd.i.i137 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %ssd.i.i137, align 8, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool.not.i192.i = icmp eq i8 %144, 0
  br i1 %tobool.not.i192.i, label %if.end.i196.i, label %if.then.i193.i

if.then.i193.i:                                   ; preds = %latency_stat_samples.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %145 = ptrtoint ptr %cur_stat.i to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %cur_stat.i, align 8
  br label %latency_stat_samples.exit198.i

if.end.i196.i:                                    ; preds = %latency_stat_samples.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %nr_samples.i194.i = getelementptr inbounds %struct.iolatency_grp, ptr %19, i32 0, i32 2, i32 0, i32 0, i32 3
  %147 = ptrtoint ptr %nr_samples.i194.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %nr_samples.i194.i, align 8
  %conv.i195.i = zext i32 %148 to i64
  br label %latency_stat_samples.exit198.i

latency_stat_samples.exit198.i:                   ; preds = %if.end.i196.i, %if.then.i193.i
  %retval.0.i197.i = phi i64 [ %146, %if.then.i193.i ], [ %conv.i195.i, %if.end.i196.i ]
  %149 = ptrtoint ptr %nr_samples.i to i32
  call void @__asan_store8_noabort(i32 %149)
  store i64 %retval.0.i197.i, ptr %nr_samples.i, align 8
  %last_scale_event.i = getelementptr inbounds %struct.iolatency_grp, ptr %98, i32 0, i32 13, i32 1
  %150 = ptrtoint ptr %last_scale_event.i to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %last_scale_event.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call12, i64 %151)
  %cmp34.not.i = icmp ule i64 %call12, %151
  %sub37.i = sub i64 %call12, %151
  call void @__sanitizer_cov_trace_const_cmp8(i64 500000000, i64 %sub37.i)
  %cmp38.i = icmp ult i64 %sub37.i, 500000000
  %or.cond.i = or i1 %cmp34.not.i, %cmp38.i
  br i1 %or.cond.i, label %latency_stat_samples.exit198.i.out.i_crit_edge, label %if.end41.i

latency_stat_samples.exit198.i.out.i_crit_edge:   ; preds = %latency_stat_samples.exit198.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

if.end41.i:                                       ; preds = %latency_stat_samples.exit198.i
  %152 = ptrtoint ptr %cur_stat.i to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %cur_stat.i, align 8
  br i1 %tobool.not.i192.i, label %latency_sum_ok.exit209.i, label %if.then.i204.i

if.then.i204.i:                                   ; preds = %if.end41.i
  %call.i201.i = call i64 @div64_u64(i64 noundef %153, i64 noundef 10) #13
  %154 = call i64 @llvm.umax.i64(i64 %call.i201.i, i64 1) #13
  %missed.i202.i = getelementptr inbounds %struct.iolatency_grp, ptr %19, i32 0, i32 2, i32 0, i32 0, i32 1
  %155 = ptrtoint ptr %missed.i202.i to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %missed.i202.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %156, i64 %154)
  %cmp1.i203.i = icmp ult i64 %156, %154
  br i1 %cmp1.i203.i, label %if.then.i204.i.land.lhs.true45.i_crit_edge, label %if.then.i204.i.if.else.i_crit_edge

if.then.i204.i.if.else.i_crit_edge:               ; preds = %if.then.i204.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.then.i204.i.land.lhs.true45.i_crit_edge:       ; preds = %if.then.i204.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true45.i

latency_sum_ok.exit209.i:                         ; preds = %if.end41.i
  %157 = ptrtoint ptr %min_lat_nsec to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %min_lat_nsec, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %153, i64 %158)
  %cmp2.i206.not.i = icmp ugt i64 %153, %158
  br i1 %cmp2.i206.not.i, label %latency_sum_ok.exit209.i.if.else.i_crit_edge, label %latency_sum_ok.exit209.i.land.lhs.true45.i_crit_edge

latency_sum_ok.exit209.i.land.lhs.true45.i_crit_edge: ; preds = %latency_sum_ok.exit209.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true45.i

latency_sum_ok.exit209.i.if.else.i_crit_edge:     ; preds = %latency_sum_ok.exit209.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

land.lhs.true45.i:                                ; preds = %latency_sum_ok.exit209.i.land.lhs.true45.i_crit_edge, %if.then.i204.i.land.lhs.true45.i_crit_edge
  %159 = ptrtoint ptr %ssd.i.i137 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %ssd.i.i137, align 8, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool.not.i211.i = icmp eq i8 %160, 0
  %161 = ptrtoint ptr %stat.i to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %stat.i, align 8
  br i1 %tobool.not.i211.i, label %latency_sum_ok.exit220.i, label %if.then.i215.i

if.then.i215.i:                                   ; preds = %land.lhs.true45.i
  %call.i212.i = call i64 @div64_u64(i64 noundef %162, i64 noundef 10) #13
  %163 = call i64 @llvm.umax.i64(i64 %call.i212.i, i64 1) #13
  %164 = ptrtoint ptr %missed2.i.i to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %missed2.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %165, i64 %163)
  %cmp1.i214.i = icmp ult i64 %165, %163
  br i1 %cmp1.i214.i, label %if.then.i215.i.if.then48.i_crit_edge, label %if.then.i215.i.if.else.i_crit_edge

if.then.i215.i.if.else.i_crit_edge:               ; preds = %if.then.i215.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.then.i215.i.if.then48.i_crit_edge:             ; preds = %if.then.i215.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then48.i

latency_sum_ok.exit220.i:                         ; preds = %land.lhs.true45.i
  %166 = ptrtoint ptr %min_lat_nsec to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %min_lat_nsec, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %162, i64 %167)
  %cmp2.i217.not.i = icmp ugt i64 %162, %167
  br i1 %cmp2.i217.not.i, label %latency_sum_ok.exit220.i.if.else.i_crit_edge, label %latency_sum_ok.exit220.i.if.then48.i_crit_edge

latency_sum_ok.exit220.i.if.then48.i_crit_edge:   ; preds = %latency_sum_ok.exit220.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then48.i

latency_sum_ok.exit220.i.if.else.i_crit_edge:     ; preds = %latency_sum_ok.exit220.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.then48.i:                                      ; preds = %latency_sum_ok.exit220.i.if.then48.i_crit_edge, %if.then.i215.i.if.then48.i_crit_edge
  %168 = ptrtoint ptr %ssd.i.i137 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %ssd.i.i137, align 8, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool.not.i222.i = icmp eq i8 %169, 0
  br i1 %tobool.not.i222.i, label %if.end.i226.i, label %if.then.i223.i

if.then.i223.i:                                   ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #15
  %170 = ptrtoint ptr %cur_stat.i to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %cur_stat.i, align 8
  br label %latency_stat_samples.exit228.i

if.end.i226.i:                                    ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #15
  %nr_samples.i224.i = getelementptr inbounds %struct.iolatency_grp, ptr %19, i32 0, i32 2, i32 0, i32 0, i32 3
  %172 = ptrtoint ptr %nr_samples.i224.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %nr_samples.i224.i, align 8
  %conv.i225.i = zext i32 %173 to i64
  br label %latency_stat_samples.exit228.i

latency_stat_samples.exit228.i:                   ; preds = %if.end.i226.i, %if.then.i223.i
  %retval.0.i227.i = phi i64 [ %171, %if.then.i223.i ], [ %conv.i225.i, %if.end.i226.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 5, i64 %retval.0.i227.i)
  %cmp51.i = icmp ult i64 %retval.0.i227.i, 5
  br i1 %cmp51.i, label %latency_stat_samples.exit228.i.out.i_crit_edge, label %if.end54.i

latency_stat_samples.exit228.i.out.i_crit_edge:   ; preds = %latency_stat_samples.exit228.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

if.end54.i:                                       ; preds = %latency_stat_samples.exit228.i
  %scale_grp.i = getelementptr inbounds %struct.iolatency_grp, ptr %98, i32 0, i32 13, i32 4
  %174 = ptrtoint ptr %scale_grp.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %scale_grp.i, align 8
  %cmp55.i = icmp eq ptr %175, %19
  br i1 %cmp55.i, label %if.then57.i, label %if.end54.i.if.end91.i_crit_edge

if.end54.i.if.end91.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end91.i

if.then57.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #15
  %176 = ptrtoint ptr %last_scale_event.i to i32
  call void @__asan_store8_noabort(i32 %176)
  store i64 %call12, ptr %last_scale_event.i, align 8
  %blkiolat.i = getelementptr inbounds %struct.iolatency_grp, ptr %19, i32 0, i32 3
  %177 = ptrtoint ptr %blkiolat.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %blkiolat.i, align 8
  call fastcc void @scale_cookie_change(ptr noundef %178, ptr noundef %child_lat.i, i1 noundef zeroext true) #13
  br label %if.end91.i

if.else.i:                                        ; preds = %latency_sum_ok.exit220.i.if.else.i_crit_edge, %if.then.i215.i.if.else.i_crit_edge, %latency_sum_ok.exit209.i.if.else.i_crit_edge, %if.then.i204.i.if.else.i_crit_edge
  %scale_lat.i = getelementptr inbounds %struct.iolatency_grp, ptr %98, i32 0, i32 13, i32 2
  %179 = ptrtoint ptr %scale_lat.i to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %scale_lat.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %180)
  %cmp60.i = icmp eq i64 %180, 0
  br i1 %cmp60.i, label %if.else.i.if.then66.i_crit_edge, label %lor.lhs.false62.i

if.else.i.if.then66.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then66.i

lor.lhs.false62.i:                                ; preds = %if.else.i
  %181 = ptrtoint ptr %min_lat_nsec to i32
  call void @__asan_load8_noabort(i32 %181)
  %182 = load i64, ptr %min_lat_nsec, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %180, i64 %182)
  %cmp64.not.i = icmp ult i64 %180, %182
  br i1 %cmp64.not.i, label %lor.lhs.false62.i.if.end91.i_crit_edge, label %lor.lhs.false62.i.if.then66.i_crit_edge

lor.lhs.false62.i.if.then66.i_crit_edge:          ; preds = %lor.lhs.false62.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then66.i

lor.lhs.false62.i.if.end91.i_crit_edge:           ; preds = %lor.lhs.false62.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end91.i

if.then66.i:                                      ; preds = %lor.lhs.false62.i.if.then66.i_crit_edge, %if.else.i.if.then66.i_crit_edge
  %183 = ptrtoint ptr %last_scale_event.i to i32
  call void @__asan_store8_noabort(i32 %183)
  store i64 %call12, ptr %last_scale_event.i, align 8
  %scale_grp68.i = getelementptr inbounds %struct.iolatency_grp, ptr %98, i32 0, i32 13, i32 4
  %184 = ptrtoint ptr %scale_grp68.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %scale_grp68.i, align 8
  %tobool69.not.i = icmp eq ptr %185, null
  br i1 %tobool69.not.i, label %if.then66.i.do.body80.i_crit_edge, label %lor.lhs.false70.i

if.then66.i.do.body80.i_crit_edge:                ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body80.i

lor.lhs.false70.i:                                ; preds = %if.then66.i
  %186 = ptrtoint ptr %min_lat_nsec to i32
  call void @__asan_load8_noabort(i32 %186)
  %187 = load i64, ptr %min_lat_nsec, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %180, i64 %187)
  %cmp73.i = icmp ugt i64 %180, %187
  br i1 %cmp73.i, label %lor.lhs.false70.i.do.body80.i_crit_edge, label %lor.lhs.false70.i.if.end88.i_crit_edge

lor.lhs.false70.i.if.end88.i_crit_edge:           ; preds = %lor.lhs.false70.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88.i

lor.lhs.false70.i.do.body80.i_crit_edge:          ; preds = %lor.lhs.false70.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body80.i

do.body80.i:                                      ; preds = %lor.lhs.false70.i.do.body80.i_crit_edge, %if.then66.i.do.body80.i_crit_edge
  %188 = ptrtoint ptr %min_lat_nsec to i32
  call void @__asan_load8_noabort(i32 %188)
  %189 = load i64, ptr %min_lat_nsec, align 8
  %190 = ptrtoint ptr %scale_lat.i to i32
  call void @__asan_store8_noabort(i32 %190)
  store volatile i64 %189, ptr %scale_lat.i, align 8
  %191 = ptrtoint ptr %scale_grp68.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %19, ptr %scale_grp68.i, align 8
  br label %if.end88.i

if.end88.i:                                       ; preds = %do.body80.i, %lor.lhs.false70.i.if.end88.i_crit_edge
  %blkiolat89.i = getelementptr inbounds %struct.iolatency_grp, ptr %19, i32 0, i32 3
  %192 = ptrtoint ptr %blkiolat89.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %blkiolat89.i, align 8
  %q.i.i = getelementptr inbounds %struct.rq_qos, ptr %193, i32 0, i32 1
  %194 = ptrtoint ptr %q.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %q.i.i, align 4
  %nr_requests.i.i = getelementptr inbounds %struct.request_queue, ptr %195, i32 0, i32 21
  %196 = ptrtoint ptr %nr_requests.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %nr_requests.i.i, align 8
  %scale_cookie.i.i = getelementptr inbounds %struct.iolatency_grp, ptr %98, i32 0, i32 13, i32 5
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %scale_cookie.i.i, i32 noundef 4) #13
  %198 = ptrtoint ptr %scale_cookie.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load volatile i32, ptr %scale_cookie.i.i, align 4
  %200 = call i32 @llvm.usub.sat.i32(i32 1000000, i32 %199) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %200, i32 %197)
  %cmp15.i.i = icmp ugt i32 %200, %197
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.else21.i.i

if.then16.i.i:                                    ; preds = %if.end88.i
  %shl.i.i = shl i32 %197, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %200, i32 %shl.i.i)
  %cmp17.i.i = icmp ult i32 %200, %shl.i.i
  br i1 %cmp17.i.i, label %if.then18.i.i, label %if.then16.i.i.if.end91.i_crit_edge

if.then16.i.i.if.end91.i_crit_edge:               ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end91.i

if.then18.i.i:                                    ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i43.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %scale_cookie.i.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %scale_cookie.i.i, i32 1, i32 3, i32 1) #13
  %201 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %scale_cookie.i.i, ptr %scale_cookie.i.i, i32 1, ptr elementtype(i32) %scale_cookie.i.i) #13, !srcloc !88
  br label %if.end91.i

if.else21.i.i:                                    ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #15
  %cond.i.i229.i = lshr i32 %197, 2
  %202 = call i32 @llvm.umax.i32(i32 %cond.i.i229.i, i32 1) #13
  %call.i.i44.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %scale_cookie.i.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %scale_cookie.i.i, i32 1, i32 3, i32 1) #13
  %203 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %scale_cookie.i.i, ptr %scale_cookie.i.i, i32 %202, ptr elementtype(i32) %scale_cookie.i.i) #13, !srcloc !88
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.else21.i.i, %if.then18.i.i, %if.then16.i.i.if.end91.i_crit_edge, %lor.lhs.false62.i.if.end91.i_crit_edge, %if.then57.i, %if.end54.i.if.end91.i_crit_edge
  %204 = ptrtoint ptr %ssd.i.i137 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %ssd.i.i137, align 8, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %205)
  %tobool.not.i231.i = icmp eq i8 %205, 0
  br i1 %tobool.not.i231.i, label %if.else.i233.i, label %if.then.i232.i

if.then.i232.i:                                   ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #15
  %206 = call ptr @memset(ptr %cur_stat.i, i32 0, i32 16)
  br label %out.i

if.else.i233.i:                                   ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @blk_rq_stat_init(ptr noundef %cur_stat.i) #13
  br label %out.i

out.i:                                            ; preds = %if.else.i233.i, %if.then.i232.i, %latency_stat_samples.exit228.i.out.i_crit_edge, %latency_stat_samples.exit198.i.out.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %child_lat.i, i32 noundef %call21.i) #13
  br label %iolatency_check_latencies.exit

iolatency_check_latencies.exit:                   ; preds = %out.i, %land.lhs.true.i.iolatency_check_latencies.exit_crit_edge, %blkg_to_lat.exit.i.iolatency_check_latencies.exit_crit_edge, %do.body6.i.iolatency_check_latencies.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %stat.i) #13
  br label %if.end83

if.end83:                                         ; preds = %iolatency_check_latencies.exit, %if.then75.if.end83_crit_edge, %land.lhs.true72.if.end83_crit_edge, %iolatency_record_time.exit.if.end83_crit_edge, %land.lhs.true.if.end83_crit_edge, %if.end55.if.end83_crit_edge
  call void @__wake_up(ptr noundef %rq_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  %207 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %parent, align 8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end83, %blkg_to_lat.exit131.while.cond.backedge_crit_edge
  %blkg.0.be = phi ptr [ %208, %if.end83 ], [ %16, %blkg_to_lat.exit131.while.cond.backedge_crit_edge ]
  %tobool14.not = icmp eq ptr %blkg.0.be, null
  br i1 %tobool14.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.land.rhs_crit_edge

while.cond.backedge.land.rhs_crit_edge:           ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %while.cond.backedge.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %blkg_to_lat.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blkcg_iolatency_exit(ptr noundef %rqos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %timer = getelementptr inbounds %struct.blk_iolatency, ptr %rqos, i32 0, i32 1
  %call1 = tail call i32 @del_timer_sync(ptr noundef %timer) #13
  %q = getelementptr inbounds %struct.rq_qos, ptr %rqos, i32 0, i32 1
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q, align 4
  tail call void @blkcg_deactivate_policy(ptr noundef %1, ptr noundef nonnull @blkcg_policy_iolatency) #13
  tail call void @kfree(ptr noundef %rqos) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkcg_schedule_throttle(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rq_qos_wait(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @iolat_acquire_inflight(ptr noundef %rqw, ptr nocapture noundef readonly %private_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_depth = getelementptr inbounds %struct.iolatency_grp, ptr %private_data, i32 0, i32 4
  %0 = ptrtoint ptr %rq_depth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rq_depth, align 4
  %call = tail call zeroext i1 @rq_wait_inc_below(ptr noundef %rqw, i32 noundef %1) #13
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iolat_cleanup_cb(ptr noundef %rqw, ptr nocapture noundef readnone %private_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %inflight = getelementptr inbounds %struct.rq_wait, ptr %rqw, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %inflight, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %inflight, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inflight, ptr %inflight, i32 1, ptr elementtype(i32) %inflight) #13, !srcloc !88
  tail call void @__wake_up(ptr noundef %rqw, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rq_wait_inc_below(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkcg_add_delay(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_rq_stat_add(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scale_cookie_change(ptr nocapture noundef readonly %blkiolat, ptr noundef %lat_info, i1 noundef zeroext %up) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %q = getelementptr inbounds %struct.rq_qos, ptr %blkiolat, i32 0, i32 1
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q, align 4
  %nr_requests = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %nr_requests to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_requests, align 8
  %cond.v.i = select i1 %up, i32 4, i32 2
  %cond.i = lshr i32 %3, %cond.v.i
  %4 = tail call i32 @llvm.umax.i32(i32 %cond.i, i32 1) #13
  %scale_cookie = getelementptr inbounds %struct.child_latency_info, ptr %lat_info, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %scale_cookie, i32 noundef 4) #13
  %5 = ptrtoint ptr %scale_cookie to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %scale_cookie, align 4
  %shl = shl i32 %3, 1
  %7 = tail call i32 @llvm.usub.sat.i32(i32 1000000, i32 %6)
  br i1 %up, label %if.then3, label %if.else14

if.then3:                                         ; preds = %entry
  %add = add i32 %4, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %add)
  %cmp4 = icmp ugt i32 %add, 1000000
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i40 = tail call zeroext i1 @__kasan_check_write(ptr noundef %scale_cookie, i32 noundef 4) #13
  %8 = ptrtoint ptr %scale_cookie to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 1000000, ptr %scale_cookie, align 4
  br label %if.end24

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp7 = icmp ugt i32 %7, %3
  %call.i.i41 = tail call zeroext i1 @__kasan_check_write(ptr noundef %scale_cookie, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %scale_cookie, i32 1, i32 3, i32 1) #13
  br i1 %cmp7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %scale_cookie, ptr %scale_cookie, i32 1, ptr elementtype(i32) %scale_cookie) #13, !srcloc !81
  br label %if.end24

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %scale_cookie, ptr %scale_cookie, i32 %4, ptr elementtype(i32) %scale_cookie) #13, !srcloc !81
  br label %if.end24

if.else14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp15 = icmp ugt i32 %7, %3
  br i1 %cmp15, label %if.then16, label %if.else21

if.then16:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %shl)
  %cmp17 = icmp ult i32 %7, %shl
  br i1 %cmp17, label %if.then18, label %if.then16.if.end24_crit_edge

if.then16.if.end24_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then18:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i43 = tail call zeroext i1 @__kasan_check_write(ptr noundef %scale_cookie, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %scale_cookie, i32 1, i32 3, i32 1) #13
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %scale_cookie, ptr %scale_cookie, i32 1, ptr elementtype(i32) %scale_cookie) #13, !srcloc !88
  br label %if.end24

if.else21:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i44 = tail call zeroext i1 @__kasan_check_write(ptr noundef %scale_cookie, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %scale_cookie, i32 1, i32 3, i32 1) #13
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %scale_cookie, ptr %scale_cookie, i32 %4, ptr elementtype(i32) %scale_cookie) #13, !srcloc !88
  br label %if.end24

if.end24:                                         ; preds = %if.else21, %if.then18, %if.then16.if.end24_crit_edge, %if.else10, %if.then8, %if.then5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_rq_stat_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_rq_stat_sum(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkcg_deactivate_policy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_freeze_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unfreeze_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_debugfs_register_rqos(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_debugfs_unregister_rqos(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @css_next_descendant_pre(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @blkg_put(ptr noundef %blkg) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %refcnt = getelementptr inbounds %struct.blkcg_gq, ptr %blkg, i32 0, i32 5
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #13
  %and.i.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !71
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i.i, label %entry.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

entry.rcu_read_lock.exit.i.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #13
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %entry.rcu_read_lock.exit.i.i_crit_edge
  %4 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %refcnt, align 4
  %and.i.i.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i1.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i1.i.i, label %do.body1.i.i, label %if.else.i.i, !prof !72

do.body1.i.i:                                     ; preds = %rcu_read_lock.exit.i.i
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !73
  %7 = tail call i32 @llvm.read_register.i32(metadata !61) #13
  %and.i2.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i2.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %12, %5
  %13 = inttoptr i32 %add.i.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add15.i.i = add i32 %15, -1
  store i32 %add15.i.i, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !74
  %and.i.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then29.i.i, label %do.body1.i.i.do.end31.i.i_crit_edge, !prof !75

do.body1.i.i.do.end31.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end31.i.i

if.then29.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end31.i.i

do.end31.i.i:                                     ; preds = %if.then29.i.i, %do.body1.i.i.do.end31.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #13, !srcloc !76
  br label %if.end48.i.i

if.else.i.i:                                      ; preds = %rcu_read_lock.exit.i.i
  %data.i.i = getelementptr inbounds %struct.blkcg_gq, ptr %blkg, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %18, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !89
  tail call void @llvm.prefetch.p0(ptr %18, i32 1, i32 3, i32 1) #13
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #13, !srcloc !90
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %if.then45.i.i, label %if.else.i.i.if.end48.i.i_crit_edge, !prof !75

if.else.i.i.if.end48.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48.i.i

if.then45.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i, align 4
  %release.i.i = getelementptr inbounds %struct.percpu_ref_data, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %release.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %release.i.i, align 4
  tail call void %23(ptr noundef %refcnt) #13
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.then45.i.i, %if.else.i.i.if.end48.i.i_crit_edge, %do.end31.i.i
  %call.i3.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i3.i.i, label %if.end48.i.i.percpu_ref_put.exit_crit_edge, label %land.lhs.true.i6.i.i

if.end48.i.i.percpu_ref_put.exit_crit_edge:       ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %percpu_ref_put.exit

land.lhs.true.i6.i.i:                             ; preds = %if.end48.i.i
  %call1.i4.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %call1.i4.i.i, 0
  br i1 %tobool.not.i5.i.i, label %land.lhs.true.i6.i.i.percpu_ref_put.exit_crit_edge, label %land.lhs.true2.i8.i.i

land.lhs.true.i6.i.i.percpu_ref_put.exit_crit_edge: ; preds = %land.lhs.true.i6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %percpu_ref_put.exit

land.lhs.true2.i8.i.i:                            ; preds = %land.lhs.true.i6.i.i
  %.b4.i7.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i, label %land.lhs.true2.i8.i.i.percpu_ref_put.exit_crit_edge, label %if.then.i9.i.i

land.lhs.true2.i8.i.i.percpu_ref_put.exit_crit_edge: ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %percpu_ref_put.exit

if.then.i9.i.i:                                   ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.6) #13
  br label %percpu_ref_put.exit

percpu_ref_put.exit:                              ; preds = %if.then.i9.i.i, %land.lhs.true2.i8.i.i.percpu_ref_put.exit_crit_edge, %land.lhs.true.i6.i.i.percpu_ref_put.exit_crit_edge, %if.end48.i.i.percpu_ref_put.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !80
  %24 = tail call i32 @llvm.read_register.i32(metadata !61) #13
  %and.i.i.i.i.i10.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i10.i.i to ptr
  %preempt_count.i.i.i.i11.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i, align 4
  %sub.i.i.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blkg_lookup_slowpath(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @iolatency_pd_alloc(i32 noundef %gfp, ptr nocapture noundef readnone %q, ptr nocapture noundef readnone %blkcg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.kzalloc_node.exit_crit_edge, label %if.end.i.i.i, !prof !72

entry.kzalloc_node.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %kzalloc_node.exit

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc_node.exit_crit_edge

if.end.i.i.i.kzalloc_node.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kzalloc_node.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %and6.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc_node.exit

kzalloc_node.exit:                                ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc_node.exit_crit_edge, %entry.kzalloc_node.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %entry.kzalloc_node.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc_node.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %gfp, 256
  %arrayidx3.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 9
  %0 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx3.i.i, align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 272) #16
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %kzalloc_node.exit.cleanup_crit_edge, label %if.end

kzalloc_node.exit.cleanup_crit_edge:              ; preds = %kzalloc_node.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %kzalloc_node.exit
  %call1 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 40, i32 noundef 8, i32 noundef %gfp) #18
  %stats = getelementptr inbounds %struct.iolatency_grp, ptr %call.i.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %stats, align 8
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call.i.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %kzalloc_node.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then4 ], [ null, %kzalloc_node.exit.cleanup_crit_edge ], [ %call.i.i.i, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iolatency_pd_init(ptr noundef %pd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %pd, null
  br i1 %tobool.not.i.i, label %entry.lat_to_blkg.exit_crit_edge, label %cond.true.i.i

entry.lat_to_blkg.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %lat_to_blkg.exit

cond.true.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  br label %lat_to_blkg.exit

lat_to_blkg.exit:                                 ; preds = %cond.true.i.i, %entry.lat_to_blkg.exit_crit_edge
  %cond.i.i = phi ptr [ %1, %cond.true.i.i ], [ null, %entry.lat_to_blkg.exit_crit_edge ]
  %2 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cond.i.i, align 8
  %rq_qos.i.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %rq_qos.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %rqos.01.i.i = load ptr, ptr %rq_qos.i.i, align 4
  %tobool.not2.i.i = icmp eq ptr %rqos.01.i.i, null
  br i1 %tobool.not2.i.i, label %lat_to_blkg.exit.blkcg_rq_qos.exit_crit_edge, label %lat_to_blkg.exit.for.body.i.i_crit_edge

lat_to_blkg.exit.for.body.i.i_crit_edge:          ; preds = %lat_to_blkg.exit
  br label %for.body.i.i

lat_to_blkg.exit.blkcg_rq_qos.exit_crit_edge:     ; preds = %lat_to_blkg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %blkcg_rq_qos.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %lat_to_blkg.exit.for.body.i.i_crit_edge
  %rqos.03.i.i = phi ptr [ %rqos.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %rqos.01.i.i, %lat_to_blkg.exit.for.body.i.i_crit_edge ]
  %id1.i.i = getelementptr inbounds %struct.rq_qos, ptr %rqos.03.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %id1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i.i = icmp eq i32 %6, 1
  br i1 %cmp.i.i, label %for.body.i.i.blkcg_rq_qos.exit_crit_edge, label %for.inc.i.i

for.body.i.i.blkcg_rq_qos.exit_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %blkcg_rq_qos.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %next.i.i = getelementptr inbounds %struct.rq_qos, ptr %rqos.03.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %rqos.0.i.i = load ptr, ptr %next.i.i, align 4
  %tobool.not.i.i66 = icmp eq ptr %rqos.0.i.i, null
  br i1 %tobool.not.i.i66, label %for.inc.i.i.blkcg_rq_qos.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.inc.i.i.blkcg_rq_qos.exit_crit_edge:          ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %blkcg_rq_qos.exit

blkcg_rq_qos.exit:                                ; preds = %for.inc.i.i.blkcg_rq_qos.exit_crit_edge, %for.body.i.i.blkcg_rq_qos.exit_crit_edge, %lat_to_blkg.exit.blkcg_rq_qos.exit_crit_edge
  %rqos.0.lcssa.i.i = phi ptr [ null, %lat_to_blkg.exit.blkcg_rq_qos.exit_crit_edge ], [ %rqos.03.i.i, %for.body.i.i.blkcg_rq_qos.exit_crit_edge ], [ null, %for.inc.i.i.blkcg_rq_qos.exit_crit_edge ]
  %call4 = tail call i64 @ktime_get() #13
  %8 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cond.i.i, align 8
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %queue_flags, align 4
  %12 = trunc i32 %11 to i8
  %13 = lshr i8 %12, 6
  %14 = and i8 %13, 1
  %15 = getelementptr inbounds %struct.iolatency_grp, ptr %pd, i32 0, i32 12
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %14, ptr %15, align 8
  %call976 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call976, i32 %17)
  %cmp77 = icmp ult i32 %call976, %17
  br i1 %cmp77, label %for.body.lr.ph, label %blkcg_rq_qos.exit.for.end_crit_edge

blkcg_rq_qos.exit.for.end_crit_edge:              ; preds = %blkcg_rq_qos.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %blkcg_rq_qos.exit
  %stats = getelementptr inbounds %struct.iolatency_grp, ptr %pd, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %latency_stat_init.exit.for.body_crit_edge, %for.body.lr.ph
  %call978 = phi i32 [ %call976, %for.body.lr.ph ], [ %call9, %latency_stat_init.exit.for.body_crit_edge ]
  %18 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stats, align 8
  %20 = ptrtoint ptr %19 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call978
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %add = add i32 %22, %20
  %23 = inttoptr i32 %add to ptr
  %24 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %15, align 8, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %26 = call ptr @memset(ptr %23, i32 0, i32 16)
  br label %latency_stat_init.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @blk_rq_stat_init(ptr noundef %23) #13
  br label %latency_stat_init.exit

latency_stat_init.exit:                           ; preds = %if.else.i, %if.then.i
  %call9 = tail call i32 @cpumask_next(i32 noundef %call978, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %27 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call9, %27
  br i1 %cmp, label %latency_stat_init.exit.for.body_crit_edge, label %for.endthread-pre-split

latency_stat_init.exit.for.body_crit_edge:        ; preds = %latency_stat_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.endthread-pre-split:                          ; preds = %latency_stat_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %28)
  %.pr = load i8, ptr %15, align 8
  br label %for.end

for.end:                                          ; preds = %for.endthread-pre-split, %blkcg_rq_qos.exit.for.end_crit_edge
  %29 = phi i8 [ %.pr, %for.endthread-pre-split ], [ %14, %blkcg_rq_qos.exit.for.end_crit_edge ]
  %cur_stat = getelementptr inbounds %struct.iolatency_grp, ptr %pd, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i68 = icmp eq i8 %29, 0
  br i1 %tobool.not.i68, label %if.else.i70, label %if.then.i69

if.then.i69:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %30 = call ptr @memset(ptr %cur_stat, i32 0, i32 16)
  br label %latency_stat_init.exit71

if.else.i70:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @blk_rq_stat_init(ptr noundef %cur_stat) #13
  br label %latency_stat_init.exit71

latency_stat_init.exit71:                         ; preds = %if.else.i70, %if.then.i69
  %rq_wait = getelementptr inbounds %struct.iolatency_grp, ptr %pd, i32 0, i32 5
  %inflight.i = getelementptr inbounds %struct.iolatency_grp, ptr %pd, i32 0, i32 5, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %inflight.i, i32 noundef 4) #13
  %31 = ptrtoint ptr %inflight.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 0, ptr %inflight.i, align 4
  tail call void @__init_waitqueue_head(ptr noundef %rq_wait, ptr noundef nonnull @.str.14, ptr noundef nonnull @rq_wait_init.__key) #13
  %child_lat = getelementptr inbounds %struct.iolatency_grp, ptr %pd, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %child_lat, ptr noundef nonnull @.str.13, ptr noundef nonnull @iolatency_pd_init.__key, i16 noundef signext 3) #13
  %32 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cond.i.i, align 8
  %nr_requests = getelementptr inbounds %struct.request_queue, ptr %33, i32 0, i32 21
  %34 = ptrtoint ptr %nr_requests to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nr_requests, align 8
  %rq_depth = getelementptr inbounds %struct.iolatency_grp, ptr %pd, i32 0, i32 4
  %queue_depth = getelementptr inbounds %struct.iolatency_grp, ptr %pd, i32 0, i32 4, i32 3
  %36 = ptrtoint ptr %queue_depth to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %queue_depth, align 4
  %37 = ptrtoint ptr %rq_depth to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %rq_depth, align 4
  %default_depth = getelementptr inbounds %struct.iolatency_grp, ptr %pd, i32 0, i32 4, i32 4
  %38 = ptrtoint ptr %default_depth to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %35, ptr %default_depth, align 4
  %blkiolat20 = getelementptr inbounds %struct.iolatency_grp, ptr %pd, i32 0, i32 3
  %39 = ptrtoint ptr %blkiolat20 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %rqos.0.lcssa.i.i, ptr %blkiolat20, align 8
  %cur_win_nsec = getelementptr inbounds %struct.iolatency_grp, ptr %pd, i32 0, i32 9
  %40 = ptrtoint ptr %cur_win_nsec to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 100000000, ptr %cur_win_nsec, align 8
  %window_start = getelementptr inbounds %struct.iolatency_grp, ptr %pd, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %window_start, i32 noundef 8) #13
  tail call void @generic_atomic64_set(ptr noundef %window_start, i64 noundef %call4) #13
  %parent = getelementptr inbounds %struct.blkcg_gq, ptr %cond.i.i, i32 0, i32 4
  %41 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %parent, align 8
  %tobool21.not = icmp eq ptr %42, null
  br i1 %tobool21.not, label %latency_stat_init.exit71.if.else32_crit_edge, label %blkg_to_pd.exit

latency_stat_init.exit71.if.else32_crit_edge:     ; preds = %latency_stat_init.exit71
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else32

blkg_to_pd.exit:                                  ; preds = %latency_stat_init.exit71
  %43 = load i32, ptr @blkcg_policy_iolatency, align 4
  %arrayidx.i = getelementptr %struct.blkcg_gq, ptr %42, i32 0, i32 9, i32 %43
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i, align 4
  %tobool24.not = icmp eq ptr %45, null
  br i1 %tobool24.not, label %blkg_to_pd.exit.if.else32_crit_edge, label %blkg_to_lat.exit

blkg_to_pd.exit.if.else32_crit_edge:              ; preds = %blkg_to_pd.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else32

blkg_to_lat.exit:                                 ; preds = %blkg_to_pd.exit
  call void @__sanitizer_cov_trace_pc() #15
  %46 = load i32, ptr @blkcg_policy_iolatency, align 4
  %arrayidx.i.i = getelementptr %struct.blkcg_gq, ptr %42, i32 0, i32 9, i32 %46
  %47 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i.i, align 4
  %scale_cookie = getelementptr inbounds %struct.iolatency_grp, ptr %pd, i32 0, i32 7
  %scale_cookie30 = getelementptr inbounds %struct.iolatency_grp, ptr %48, i32 0, i32 13, i32 5
  %call.i.i62 = tail call zeroext i1 @__kasan_check_read(ptr noundef %scale_cookie30, i32 noundef 4) #13
  %49 = ptrtoint ptr %scale_cookie30 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %scale_cookie30, align 4
  %call.i.i63 = tail call zeroext i1 @__kasan_check_write(ptr noundef %scale_cookie, i32 noundef 4) #13
  %51 = ptrtoint ptr %scale_cookie to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 %50, ptr %scale_cookie, align 4
  br label %if.end34

if.else32:                                        ; preds = %blkg_to_pd.exit.if.else32_crit_edge, %latency_stat_init.exit71.if.else32_crit_edge
  %scale_cookie33 = getelementptr inbounds %struct.iolatency_grp, ptr %pd, i32 0, i32 7
  %call.i.i64 = tail call zeroext i1 @__kasan_check_write(ptr noundef %scale_cookie33, i32 noundef 4) #13
  %52 = ptrtoint ptr %scale_cookie33 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 1000000, ptr %scale_cookie33, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.else32, %blkg_to_lat.exit
  %scale_cookie36 = getelementptr inbounds %struct.iolatency_grp, ptr %pd, i32 0, i32 13, i32 5
  %call.i.i65 = tail call zeroext i1 @__kasan_check_write(ptr noundef %scale_cookie36, i32 noundef 4) #13
  %53 = ptrtoint ptr %scale_cookie36 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 1000000, ptr %scale_cookie36, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iolatency_pd_offline(ptr noundef readonly %pd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %pd, null
  br i1 %tobool.not.i.i, label %entry.lat_to_blkg.exit_crit_edge, label %cond.true.i.i

entry.lat_to_blkg.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %lat_to_blkg.exit

cond.true.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  br label %lat_to_blkg.exit

lat_to_blkg.exit:                                 ; preds = %cond.true.i.i, %entry.lat_to_blkg.exit_crit_edge
  %cond.i.i = phi ptr [ %1, %cond.true.i.i ], [ null, %entry.lat_to_blkg.exit_crit_edge ]
  %blkiolat2 = getelementptr inbounds %struct.iolatency_grp, ptr %pd, i32 0, i32 3
  %2 = ptrtoint ptr %blkiolat2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %blkiolat2, align 8
  %call3 = tail call fastcc i32 @iolatency_set_min_lat_nsec(ptr noundef %cond.i.i, i64 noundef 0)
  %4 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %call3, label %lat_to_blkg.exit.if.end7_crit_edge [
    i32 1, label %if.then
    i32 -1, label %if.then5
  ]

lat_to_blkg.exit.if.end7_crit_edge:               ; preds = %lat_to_blkg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then:                                          ; preds = %lat_to_blkg.exit
  call void @__sanitizer_cov_trace_pc() #15
  %enabled = getelementptr inbounds %struct.blk_iolatency, ptr %3, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %enabled, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %enabled, i32 1, i32 3, i32 1) #13
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %enabled, ptr %enabled, i32 1, ptr elementtype(i32) %enabled) #13, !srcloc !81
  br label %if.end7

if.then5:                                         ; preds = %lat_to_blkg.exit
  call void @__sanitizer_cov_trace_pc() #15
  %enabled6 = getelementptr inbounds %struct.blk_iolatency, ptr %3, i32 0, i32 2
  %call.i.i12 = tail call zeroext i1 @__kasan_check_write(ptr noundef %enabled6, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %enabled6, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %enabled6, ptr %enabled6, i32 1, ptr elementtype(i32) %enabled6) #13, !srcloc !88
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then, %lat_to_blkg.exit.if.end7_crit_edge
  %parent.i = getelementptr inbounds %struct.blkcg_gq, ptr %cond.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end7.iolatency_clear_scaling.exit_crit_edge, label %blkg_to_lat.exit.i

if.end7.iolatency_clear_scaling.exit_crit_edge:   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %iolatency_clear_scaling.exit

blkg_to_lat.exit.i:                               ; preds = %if.end7
  %9 = load i32, ptr @blkcg_policy_iolatency, align 4
  %arrayidx.i.i.i = getelementptr %struct.blkcg_gq, ptr %8, i32 0, i32 9, i32 %9
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool2.not.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i, label %blkg_to_lat.exit.i.iolatency_clear_scaling.exit_crit_edge, label %if.end.i

blkg_to_lat.exit.i.iolatency_clear_scaling.exit_crit_edge: ; preds = %blkg_to_lat.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iolatency_clear_scaling.exit

if.end.i:                                         ; preds = %blkg_to_lat.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %child_lat.i = getelementptr inbounds %struct.iolatency_grp, ptr %11, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %child_lat.i) #13
  %scale_cookie.i = getelementptr inbounds %struct.iolatency_grp, ptr %11, i32 0, i32 13, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %scale_cookie.i, i32 noundef 4) #13
  %12 = ptrtoint ptr %scale_cookie.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 1000000, ptr %scale_cookie.i, align 4
  %last_scale_event.i = getelementptr inbounds %struct.iolatency_grp, ptr %11, i32 0, i32 13, i32 1
  %scale_grp.i = getelementptr inbounds %struct.iolatency_grp, ptr %11, i32 0, i32 13, i32 4
  %13 = ptrtoint ptr %scale_grp.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %scale_grp.i, align 8
  %14 = call ptr @memset(ptr %last_scale_event.i, i32 0, i32 16)
  tail call void @_raw_spin_unlock(ptr noundef %child_lat.i) #13
  br label %iolatency_clear_scaling.exit

iolatency_clear_scaling.exit:                     ; preds = %if.end.i, %blkg_to_lat.exit.i.iolatency_clear_scaling.exit_crit_edge, %if.end7.iolatency_clear_scaling.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iolatency_pd_free(ptr noundef %pd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %stats = getelementptr inbounds %struct.iolatency_grp, ptr %pd, i32 0, i32 1
  %0 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats, align 8
  tail call void @free_percpu(ptr noundef %1) #13
  tail call void @kfree(ptr noundef %pd) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @iolatency_pd_stat(ptr nocapture noundef readonly %pd, ptr noundef %s) #0 align 64 {
entry:
  %stat.i = alloca %struct.latency_stat, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @blkcg_debug_stats to i32))
  %0 = load i8, ptr @blkcg_debug_stats, align 1, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %ssd = getelementptr inbounds %struct.iolatency_grp, ptr %pd, i32 0, i32 12
  %1 = ptrtoint ptr %ssd to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ssd, align 8, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %if.end4, label %latency_stat_init.exit.i

latency_stat_init.exit.i:                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %stat.i) #13
  %3 = getelementptr inbounds i8, ptr %stat.i, i32 16
  %4 = call ptr @memset(ptr %3, i32 255, i32 24)
  %5 = call ptr @memset(ptr %stat.i, i32 0, i32 16)
  %6 = tail call i32 @llvm.read_register.i32(metadata !61) #13
  %and.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %9, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !97
  %call8.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i, i32 %10)
  %cmp10.i = icmp ult i32 %call8.i, %10
  br i1 %cmp10.i, label %for.body.lr.ph.i, label %latency_stat_init.exit.i.do.body6.i_crit_edge

latency_stat_init.exit.i.do.body6.i_crit_edge:    ; preds = %latency_stat_init.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body6.i

for.body.lr.ph.i:                                 ; preds = %latency_stat_init.exit.i
  %stats.i = getelementptr inbounds %struct.iolatency_grp, ptr %pd, i32 0, i32 1
  %missed2.i.i = getelementptr inbounds %struct.percentile_stats, ptr %stat.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %latency_stat_sum.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %call11.i = phi i32 [ %call8.i, %for.body.lr.ph.i ], [ %call.i, %latency_stat_sum.exit.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stats.i, align 8
  %13 = ptrtoint ptr %12 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call11.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %15, %13
  %16 = inttoptr i32 %add.i to ptr
  %17 = ptrtoint ptr %ssd to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ssd, align 8, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i4.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i4.i, label %if.else.i7.i, label %if.then.i6.i

if.then.i6.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %16, align 8
  %21 = ptrtoint ptr %stat.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %stat.i, align 8
  %add.i5.i = add i64 %22, %20
  store i64 %add.i5.i, ptr %stat.i, align 8
  %missed.i.i = getelementptr inbounds %struct.percentile_stats, ptr %16, i32 0, i32 1
  %23 = ptrtoint ptr %missed.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %missed.i.i, align 8
  %25 = ptrtoint ptr %missed2.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %missed2.i.i, align 8
  %add3.i.i = add i64 %26, %24
  store i64 %add3.i.i, ptr %missed2.i.i, align 8
  br label %latency_stat_sum.exit.i

if.else.i7.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @blk_rq_stat_sum(ptr noundef nonnull %stat.i, ptr noundef %16) #13
  br label %latency_stat_sum.exit.i

latency_stat_sum.exit.i:                          ; preds = %if.else.i7.i, %if.then.i6.i
  %call.i = call i32 @cpumask_next(i32 noundef %call11.i, ptr noundef nonnull @__cpu_online_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %27 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call.i, %27
  br i1 %cmp.i, label %latency_stat_sum.exit.i.for.body.i_crit_edge, label %latency_stat_sum.exit.i.do.body6.i_crit_edge

latency_stat_sum.exit.i.do.body6.i_crit_edge:     ; preds = %latency_stat_sum.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body6.i

latency_stat_sum.exit.i.for.body.i_crit_edge:     ; preds = %latency_stat_sum.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

do.body6.i:                                       ; preds = %latency_stat_sum.exit.i.do.body6.i_crit_edge, %latency_stat_init.exit.i.do.body6.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !98
  %28 = call i32 @llvm.read_register.i32(metadata !61) #13
  %and.i.i.i1.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  %rq_depth.i = getelementptr inbounds %struct.iolatency_grp, ptr %pd, i32 0, i32 4
  %32 = ptrtoint ptr %rq_depth.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rq_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp9.i = icmp eq i32 %33, -1
  %missed.i = getelementptr inbounds %struct.percentile_stats, ptr %stat.i, i32 0, i32 1
  %34 = ptrtoint ptr %missed.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %missed.i, align 8
  %36 = ptrtoint ptr %stat.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %stat.i, align 8
  br i1 %cmp9.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.17, i64 noundef %35, i64 noundef %37) #13
  br label %iolatency_ssd_stat.exit

if.else.i:                                        ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.18, i64 noundef %35, i64 noundef %37, i32 noundef %33) #13
  br label %iolatency_ssd_stat.exit

iolatency_ssd_stat.exit:                          ; preds = %if.else.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %stat.i) #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %lat_avg = getelementptr inbounds %struct.iolatency_grp, ptr %pd, i32 0, i32 10
  %38 = ptrtoint ptr %lat_avg to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %lat_avg, align 8
  %call5 = tail call i64 @div64_u64(i64 noundef %39, i64 noundef 1000) #13
  %cur_win_nsec = getelementptr inbounds %struct.iolatency_grp, ptr %pd, i32 0, i32 9
  %40 = ptrtoint ptr %cur_win_nsec to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %cur_win_nsec, align 8
  %call6 = tail call i64 @div64_u64(i64 noundef %41, i64 noundef 1000000) #13
  %rq_depth = getelementptr inbounds %struct.iolatency_grp, ptr %pd, i32 0, i32 4
  %42 = ptrtoint ptr %rq_depth to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rq_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %cmp = icmp eq i32 %43, -1
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.15, i64 noundef %call5, i64 noundef %call6) #13
  br label %cleanup

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.16, i32 noundef %43, i64 noundef %call5, i64 noundef %call6) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then7, %iolatency_ssd_stat.exit, %entry.cleanup_crit_edge
  %44 = xor i1 %tobool.not, true
  ret i1 %44
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iolatency_print_limit(ptr noundef %sf, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %call.i = tail call ptr @of_css(ptr noundef %1) #13
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %priv.i.i = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i.i, align 8
  %private = getelementptr inbounds %struct.cftype, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %private, align 4
  tail call void @blkcg_print_blkgs(ptr noundef %sf, ptr noundef %call.i, ptr noundef nonnull @iolatency_prfill_limit, ptr noundef nonnull @blkcg_policy_iolatency, i32 noundef %9, i1 noundef zeroext false) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iolatency_set_limit(ptr noundef %of, ptr noundef %buf, i32 noundef %nbytes, i64 noundef %off) #0 align 64 {
entry:
  %ctx = alloca %struct.blkg_conf_ctx, align 4
  %p = alloca ptr, align 4
  %key = alloca [16 x i8], align 1
  %val = alloca [21 x i8], align 1
  %v = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_css(ptr noundef %of) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ctx) #13
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ctx, align 4, !annotation !99
  %1 = getelementptr inbounds %struct.blkg_conf_ctx, ptr %ctx, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !99
  %3 = getelementptr inbounds %struct.blkg_conf_ctx, ptr %ctx, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !99
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #13
  %5 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %p, align 4, !annotation !99
  %call2 = call i32 @blkg_conf_prep(ptr noundef %call, ptr noundef nonnull @blkcg_policy_iolatency, ptr noundef %buf, ptr noundef nonnull %ctx) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup99_crit_edge

entry.cleanup99_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup99

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.blkg_to_lat.exit_crit_edge, label %cond.true.i.i

if.end.blkg_to_lat.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %blkg_to_lat.exit

cond.true.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %8 = load i32, ptr @blkcg_policy_iolatency, align 4
  %arrayidx.i.i = getelementptr %struct.blkcg_gq, ptr %7, i32 0, i32 9, i32 %8
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i, align 4
  br label %blkg_to_lat.exit

blkg_to_lat.exit:                                 ; preds = %cond.true.i.i, %if.end.blkg_to_lat.exit_crit_edge
  %cond.i.i = phi ptr [ %10, %cond.true.i.i ], [ null, %if.end.blkg_to_lat.exit_crit_edge ]
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %13 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %p, align 4
  %call5145 = call ptr @strsep(ptr noundef nonnull %p, ptr noundef nonnull @.str.8) #13
  %tobool6.not146 = icmp eq ptr %call5145, null
  br i1 %tobool6.not146, label %blkg_to_lat.exit.while.end_crit_edge, label %blkg_to_lat.exit.while.body_crit_edge

blkg_to_lat.exit.while.body_crit_edge:            ; preds = %blkg_to_lat.exit
  br label %while.body

blkg_to_lat.exit.while.end_crit_edge:             ; preds = %blkg_to_lat.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %cleanup28.while.body_crit_edge, %blkg_to_lat.exit.while.body_crit_edge
  %call5147 = phi ptr [ %call5, %cleanup28.while.body_crit_edge ], [ %call5145, %blkg_to_lat.exit.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key) #13
  %14 = call ptr @memset(ptr %key, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %val) #13
  %15 = call ptr @memset(ptr %val, i32 255, i32 21)
  %call8 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %call5147, ptr noundef nonnull @.str.9, ptr noundef nonnull %key, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call8)
  %cmp.not = icmp eq i32 %call8, 2
  br i1 %cmp.not, label %if.end10, label %while.body.cleanup28.thread_crit_edge

while.body.cleanup28.thread_crit_edge:            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup28.thread

if.end10:                                         ; preds = %while.body
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %key, ptr noundef nonnull dereferenceable(7) @.str.10, i32 7) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool13.not = icmp eq i32 %bcmp, 0
  br i1 %tobool13.not, label %if.then14, label %if.end10.cleanup28.thread_crit_edge

if.end10.cleanup28.thread_crit_edge:              ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup28.thread

if.then14:                                        ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v) #13
  %16 = ptrtoint ptr %v to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 -1, ptr %v, align 8, !annotation !99
  %bcmp130 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %val, ptr noundef nonnull dereferenceable(4) @.str.11, i32 4) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp130)
  %tobool17.not = icmp eq i32 %bcmp130, 0
  br i1 %tobool17.not, label %if.then14.cleanup28_crit_edge, label %if.else

if.then14.cleanup28_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup28

if.else:                                          ; preds = %if.then14
  %call20 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %val, ptr noundef nonnull @.str.12, ptr noundef nonnull %v)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call20)
  %cmp21 = icmp eq i32 %call20, 1
  br i1 %cmp21, label %if.then22, label %cleanup28.thread140

cleanup28.thread140:                              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v) #13
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %val) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key) #13
  br label %out

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %v to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %v, align 8
  %mul = mul i64 %18, 1000
  br label %cleanup28

cleanup28.thread:                                 ; preds = %if.end10.cleanup28.thread_crit_edge, %while.body.cleanup28.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %val) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key) #13
  br label %out

cleanup28:                                        ; preds = %if.then22, %if.then14.cleanup28_crit_edge
  %lat_val.2 = phi i64 [ %mul, %if.then22 ], [ 0, %if.then14.cleanup28_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v) #13
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %val) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key) #13
  %call5 = call ptr @strsep(ptr noundef nonnull %p, ptr noundef nonnull @.str.8) #13
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %cleanup28.while.end_crit_edge, label %cleanup28.while.body_crit_edge

cleanup28.while.body_crit_edge:                   ; preds = %cleanup28
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

cleanup28.while.end_crit_edge:                    ; preds = %cleanup28
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %cleanup28.while.end_crit_edge, %blkg_to_lat.exit.while.end_crit_edge
  %lat_val.0.lcssa = phi i64 [ 0, %blkg_to_lat.exit.while.end_crit_edge ], [ %lat_val.2, %cleanup28.while.end_crit_edge ]
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %min_lat_nsec = getelementptr inbounds %struct.iolatency_grp, ptr %cond.i.i, i32 0, i32 8
  %21 = ptrtoint ptr %min_lat_nsec to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %min_lat_nsec, align 8
  %call33 = call fastcc i32 @iolatency_set_min_lat_nsec(ptr noundef %20, i64 noundef %lat_val.0.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %while.end.if.end39_crit_edge, label %if.then35

while.end.if.end39_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then35:                                        ; preds = %while.end
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 8
  %call36 = call zeroext i1 @blk_get_queue(ptr noundef %24) #13
  br i1 %call36, label %if.end38, label %if.then35.out_crit_edge

if.then35.out_crit_edge:                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end38:                                         ; preds = %if.then35
  %refcnt.i = getelementptr inbounds %struct.blkcg_gq, ptr %20, i32 0, i32 5
  %25 = call i32 @llvm.read_register.i32(metadata !61) #13
  %and.i.i.i.i.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %28, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !71
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i.i.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i.i.i, label %if.end38.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end38.rcu_read_lock.exit.i.i.i_crit_edge:      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end38
  %call1.i.i.i.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b4.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i, label %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #13
  br label %rcu_read_lock.exit.i.i.i

rcu_read_lock.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %if.end38.rcu_read_lock.exit.i.i.i_crit_edge
  %29 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %refcnt.i, align 4
  %and.i.i.i.i = and i32 %30, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i1.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i1.i.i.i, label %do.body1.i.i.i, label %if.else.i.i.i, !prof !72

do.body1.i.i.i:                                   ; preds = %rcu_read_lock.exit.i.i.i
  %31 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !73
  %32 = call i32 @llvm.read_register.i32(metadata !61) #13
  %and.i2.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i2.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %37, %30
  %38 = inttoptr i32 %add.i.i.i to ptr
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %add15.i.i.i = add i32 %40, 1
  store i32 %add15.i.i.i, ptr %38, align 4
  %41 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !74
  %and.i.i.i.i.i = and i32 %41, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then29.i.i.i, label %do.body1.i.i.i.do.end31.i.i.i_crit_edge, !prof !75

do.body1.i.i.i.do.end31.i.i.i_crit_edge:          ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end31.i.i.i

if.then29.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @warn_bogus_irq_restore() #13
  br label %do.end31.i.i.i

do.end31.i.i.i:                                   ; preds = %if.then29.i.i.i, %do.body1.i.i.i.do.end31.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %31) #13, !srcloc !76
  br label %if.end38.i.i.i

if.else.i.i.i:                                    ; preds = %rcu_read_lock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %data.i.i.i = getelementptr inbounds %struct.blkcg_gq, ptr %20, i32 0, i32 5, i32 1
  %42 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %43, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %43, i32 1, i32 3, i32 1) #13
  %44 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 1, ptr elementtype(i32) %43) #13, !srcloc !81
  br label %if.end38.i.i.i

if.end38.i.i.i:                                   ; preds = %if.else.i.i.i, %do.end31.i.i.i
  %call.i3.i.i.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i3.i.i.i, label %if.end38.i.i.i.blkg_get.exit_crit_edge, label %land.lhs.true.i6.i.i.i

if.end38.i.i.i.blkg_get.exit_crit_edge:           ; preds = %if.end38.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %blkg_get.exit

land.lhs.true.i6.i.i.i:                           ; preds = %if.end38.i.i.i
  %call1.i4.i.i.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i.i)
  %tobool.not.i5.i.i.i = icmp eq i32 %call1.i4.i.i.i, 0
  br i1 %tobool.not.i5.i.i.i, label %land.lhs.true.i6.i.i.i.blkg_get.exit_crit_edge, label %land.lhs.true2.i8.i.i.i

land.lhs.true.i6.i.i.i.blkg_get.exit_crit_edge:   ; preds = %land.lhs.true.i6.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %blkg_get.exit

land.lhs.true2.i8.i.i.i:                          ; preds = %land.lhs.true.i6.i.i.i
  %.b4.i7.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i.i, label %land.lhs.true2.i8.i.i.i.blkg_get.exit_crit_edge, label %if.then.i9.i.i.i

land.lhs.true2.i8.i.i.i.blkg_get.exit_crit_edge:  ; preds = %land.lhs.true2.i8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %blkg_get.exit

if.then.i9.i.i.i:                                 ; preds = %land.lhs.true2.i8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.6) #13
  br label %blkg_get.exit

blkg_get.exit:                                    ; preds = %if.then.i9.i.i.i, %land.lhs.true2.i8.i.i.i.blkg_get.exit_crit_edge, %land.lhs.true.i6.i.i.i.blkg_get.exit_crit_edge, %if.end38.i.i.i.blkg_get.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !80
  %45 = call i32 @llvm.read_register.i32(metadata !61) #13
  %and.i.i.i.i.i10.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i10.i.i.i to ptr
  %preempt_count.i.i.i.i11.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %48, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i.i, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %if.end39

if.end39:                                         ; preds = %blkg_get.exit, %while.end.if.end39_crit_edge
  %49 = ptrtoint ptr %min_lat_nsec to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %min_lat_nsec, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %50)
  %cmp41.not = icmp eq i64 %22, %50
  br i1 %cmp41.not, label %if.end39.out_crit_edge, label %if.then42

if.end39.out_crit_edge:                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then42:                                        ; preds = %if.end39
  %parent.i = getelementptr inbounds %struct.blkcg_gq, ptr %20, i32 0, i32 4
  %51 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %parent.i, align 8
  %tobool.not.i = icmp eq ptr %52, null
  br i1 %tobool.not.i, label %if.then42.out_crit_edge, label %blkg_to_lat.exit.i

if.then42.out_crit_edge:                          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

blkg_to_lat.exit.i:                               ; preds = %if.then42
  %53 = load i32, ptr @blkcg_policy_iolatency, align 4
  %arrayidx.i.i.i132 = getelementptr %struct.blkcg_gq, ptr %52, i32 0, i32 9, i32 %53
  %54 = ptrtoint ptr %arrayidx.i.i.i132 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i.i.i132, align 4
  %tobool2.not.i = icmp eq ptr %55, null
  br i1 %tobool2.not.i, label %blkg_to_lat.exit.i.out_crit_edge, label %if.end.i

blkg_to_lat.exit.i.out_crit_edge:                 ; preds = %blkg_to_lat.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i:                                         ; preds = %blkg_to_lat.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %child_lat.i = getelementptr inbounds %struct.iolatency_grp, ptr %55, i32 0, i32 13
  call void @_raw_spin_lock(ptr noundef %child_lat.i) #13
  %scale_cookie.i = getelementptr inbounds %struct.iolatency_grp, ptr %55, i32 0, i32 13, i32 5
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %scale_cookie.i, i32 noundef 4) #13
  %56 = ptrtoint ptr %scale_cookie.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile i32 1000000, ptr %scale_cookie.i, align 4
  %last_scale_event.i = getelementptr inbounds %struct.iolatency_grp, ptr %55, i32 0, i32 13, i32 1
  %scale_grp.i = getelementptr inbounds %struct.iolatency_grp, ptr %55, i32 0, i32 13, i32 4
  %57 = ptrtoint ptr %scale_grp.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %scale_grp.i, align 8
  %58 = call ptr @memset(ptr %last_scale_event.i, i32 0, i32 16)
  call void @_raw_spin_unlock(ptr noundef %child_lat.i) #13
  br label %out

out:                                              ; preds = %if.end.i, %blkg_to_lat.exit.i.out_crit_edge, %if.then42.out_crit_edge, %if.end39.out_crit_edge, %if.then35.out_crit_edge, %cleanup28.thread, %cleanup28.thread140
  %cmp44 = phi i1 [ false, %if.then35.out_crit_edge ], [ true, %if.end39.out_crit_edge ], [ false, %cleanup28.thread ], [ false, %cleanup28.thread140 ], [ true, %if.then42.out_crit_edge ], [ true, %blkg_to_lat.exit.i.out_crit_edge ], [ true, %if.end.i ]
  %ret.0 = phi i32 [ -19, %if.then35.out_crit_edge ], [ 0, %if.end39.out_crit_edge ], [ -22, %cleanup28.thread ], [ -22, %cleanup28.thread140 ], [ 0, %if.then42.out_crit_edge ], [ 0, %blkg_to_lat.exit.i.out_crit_edge ], [ 0, %if.end.i ]
  %enable.0 = phi i32 [ %call33, %if.then35.out_crit_edge ], [ %call33, %if.end39.out_crit_edge ], [ 0, %cleanup28.thread ], [ 0, %cleanup28.thread140 ], [ %call33, %if.then42.out_crit_edge ], [ %call33, %blkg_to_lat.exit.i.out_crit_edge ], [ %call33, %if.end.i ]
  %blkg.0 = phi ptr [ %20, %if.then35.out_crit_edge ], [ %20, %if.end39.out_crit_edge ], [ inttoptr (i32 -1 to ptr), %cleanup28.thread ], [ inttoptr (i32 -1 to ptr), %cleanup28.thread140 ], [ %20, %if.then42.out_crit_edge ], [ %20, %blkg_to_lat.exit.i.out_crit_edge ], [ %20, %if.end.i ]
  call void @blkg_conf_finish(ptr noundef nonnull %ctx) #13
  %cmp44.not = xor i1 %cmp44, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable.0)
  %tobool45.not = icmp eq i32 %enable.0, 0
  %or.cond = select i1 %cmp44.not, i1 true, i1 %tobool45.not
  br i1 %or.cond, label %out.if.end97_crit_edge, label %if.then46

out.if.end97_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end97

if.then46:                                        ; preds = %out
  %tobool.not.i.i133 = icmp eq ptr %blkg.0, null
  br i1 %tobool.not.i.i133, label %if.then46.blkg_to_lat.exit137_crit_edge, label %cond.true.i.i135

if.then46.blkg_to_lat.exit137_crit_edge:          ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  br label %blkg_to_lat.exit137

cond.true.i.i135:                                 ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  %59 = load i32, ptr @blkcg_policy_iolatency, align 4
  %arrayidx.i.i134 = getelementptr %struct.blkcg_gq, ptr %blkg.0, i32 0, i32 9, i32 %59
  %60 = ptrtoint ptr %arrayidx.i.i134 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i.i134, align 4
  br label %blkg_to_lat.exit137

blkg_to_lat.exit137:                              ; preds = %cond.true.i.i135, %if.then46.blkg_to_lat.exit137_crit_edge
  %cond.i.i136 = phi ptr [ %61, %cond.true.i.i135 ], [ null, %if.then46.blkg_to_lat.exit137_crit_edge ]
  %blkiolat48 = getelementptr inbounds %struct.iolatency_grp, ptr %cond.i.i136, i32 0, i32 3
  %62 = ptrtoint ptr %blkiolat48 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %blkiolat48, align 8
  %64 = ptrtoint ptr %blkg.0 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %blkg.0, align 8
  call void @blk_mq_freeze_queue(ptr noundef %65) #13
  %66 = zext i32 %enable.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %enable.0, label %land.end [
    i32 1, label %if.then51
    i32 -1, label %if.then54
  ]

if.then51:                                        ; preds = %blkg_to_lat.exit137
  call void @__sanitizer_cov_trace_pc() #15
  %enabled = getelementptr inbounds %struct.blk_iolatency, ptr %63, i32 0, i32 2
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %enabled, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %enabled, i32 1, i32 3, i32 1) #13
  %67 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %enabled, ptr %enabled, i32 1, ptr elementtype(i32) %enabled) #13, !srcloc !81
  br label %if.end94

if.then54:                                        ; preds = %blkg_to_lat.exit137
  call void @__sanitizer_cov_trace_pc() #15
  %enabled55 = getelementptr inbounds %struct.blk_iolatency, ptr %63, i32 0, i32 2
  %call.i.i131 = call zeroext i1 @__kasan_check_write(ptr noundef %enabled55, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %enabled55, i32 1, i32 3, i32 1) #13
  %68 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %enabled55, ptr %enabled55, i32 1, ptr elementtype(i32) %enabled55) #13, !srcloc !88
  br label %if.end94

land.end:                                         ; preds = %blkg_to_lat.exit137
  %.b129 = load i1, ptr @iolatency_set_limit.__already_done, align 1
  br i1 %.b129, label %land.end.if.end94_crit_edge, label %if.then62, !prof !72

land.end.if.end94_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end94

if.then62:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @iolatency_set_limit.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 863, i32 noundef 9, ptr noundef null) #13
  br label %if.end94

if.end94:                                         ; preds = %if.then62, %land.end.if.end94_crit_edge, %if.then54, %if.then51
  %69 = ptrtoint ptr %blkg.0 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %blkg.0, align 8
  call void @blk_mq_unfreeze_queue(ptr noundef %70) #13
  call fastcc void @blkg_put(ptr noundef %blkg.0)
  %71 = ptrtoint ptr %blkg.0 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %blkg.0, align 8
  call void @blk_put_queue(ptr noundef %72) #13
  br label %if.end97

if.end97:                                         ; preds = %if.end94, %out.if.end97_crit_edge
  %spec.select = select i1 %cmp44, i32 %nbytes, i32 %ret.0
  br label %cleanup99

cleanup99:                                        ; preds = %if.end97, %entry.cleanup99_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end97 ], [ %call2, %entry.cleanup99_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ctx) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkcg_print_blkgs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @iolatency_prfill_limit(ptr noundef %sf, ptr nocapture noundef readonly %pd, i32 noundef %off) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  %call1 = tail call ptr @blkg_dev_name(ptr noundef %1) #13
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %min_lat_nsec = getelementptr inbounds %struct.iolatency_grp, ptr %pd, i32 0, i32 8
  %2 = ptrtoint ptr %min_lat_nsec to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %min_lat_nsec, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool2.not = icmp eq i64 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %4 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %3, i32 0) #20, !srcloc !100
  %asmresult.i.i.i = extractvalue { i64, i32 } %4, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %4, 1
  %5 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %3, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #20, !srcloc !101
  %asmresult10.i.i.i = extractvalue { i64, i32 } %5, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.7, ptr noundef nonnull %call1, i64 noundef %div1581.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i64 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_css(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blkg_dev_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkg_conf_prep(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iolatency_set_min_lat_nsec(ptr noundef %blkg, i64 noundef %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %blkg, null
  br i1 %tobool.not.i.i, label %entry.blkg_to_lat.exit_crit_edge, label %cond.true.i.i

entry.blkg_to_lat.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %blkg_to_lat.exit

cond.true.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = load i32, ptr @blkcg_policy_iolatency, align 4
  %arrayidx.i.i = getelementptr %struct.blkcg_gq, ptr %blkg, i32 0, i32 9, i32 %0
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i.i, align 4
  br label %blkg_to_lat.exit

blkg_to_lat.exit:                                 ; preds = %cond.true.i.i, %entry.blkg_to_lat.exit_crit_edge
  %cond.i.i = phi ptr [ %2, %cond.true.i.i ], [ null, %entry.blkg_to_lat.exit_crit_edge ]
  %min_lat_nsec = getelementptr inbounds %struct.iolatency_grp, ptr %cond.i.i, i32 0, i32 8
  %3 = ptrtoint ptr %min_lat_nsec to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %min_lat_nsec, align 8
  store i64 %val, ptr %min_lat_nsec, align 8
  %shl = shl i64 %val, 4
  %5 = tail call i64 @llvm.umax.i64(i64 %shl, i64 100000000)
  %cur_win_nsec = getelementptr inbounds %struct.iolatency_grp, ptr %cond.i.i, i32 0, i32 9
  %6 = tail call i64 @llvm.umin.i64(i64 %5, i64 1000000000)
  %7 = ptrtoint ptr %cur_win_nsec to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %cur_win_nsec, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool.not = icmp ne i64 %4, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %val)
  %tobool10.not = icmp eq i64 %val, 0
  %or.cond = or i1 %tobool10.not, %tobool.not
  br i1 %or.cond, label %if.end, label %blkg_to_lat.exit.cleanup_crit_edge

blkg_to_lat.exit.cleanup_crit_edge:               ; preds = %blkg_to_lat.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %blkg_to_lat.exit
  %or.cond31 = and i1 %tobool10.not, %tobool.not
  br i1 %or.cond31, label %if.then14, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then14:                                        ; preds = %if.end
  %use_delay.i = getelementptr inbounds %struct.blkcg_gq, ptr %blkg, i32 0, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %use_delay.i, i32 noundef 4) #13
  %8 = ptrtoint ptr %use_delay.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %use_delay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.then14.cleanup_crit_edge, label %land.lhs.true.i

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.then14
  %call.i.i7.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_delay.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr %use_delay.i, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %land.lhs.true.i
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %use_delay.i, ptr %use_delay.i, i32 %9, i32 0, ptr elementtype(i32) %use_delay.i) #13, !srcloc !83
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %10, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %atomic_cmpxchg.exit.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i

atomic_cmpxchg.exit.i:                            ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %10, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !84
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult3.i.i.i.i, i32 %9)
  %cmp.i = icmp eq i32 %asmresult3.i.i.i.i, %9
  br i1 %cmp.i, label %if.then.i, label %atomic_cmpxchg.exit.i.cleanup_crit_edge

atomic_cmpxchg.exit.i.cleanup_crit_edge:          ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %blkcg.i = getelementptr inbounds %struct.blkcg_gq, ptr %blkg, i32 0, i32 3
  %11 = ptrtoint ptr %blkcg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %blkcg.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %congestion_count.i = getelementptr inbounds %struct.cgroup, ptr %14, i32 0, i32 35
  %call.i.i8.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %congestion_count.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %congestion_count.i, i32 1, i32 3, i32 1) #13
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %congestion_count.i, ptr %congestion_count.i, i32 1, ptr elementtype(i32) %congestion_count.i) #13, !srcloc !88
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %atomic_cmpxchg.exit.i.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %blkg_to_lat.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %blkg_to_lat.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -1, %if.then14.cleanup_crit_edge ], [ -1, %atomic_cmpxchg.exit.i.cleanup_crit_edge ], [ -1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_get_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkg_conf_finish(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_put_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkcg_policy_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind readonly willreturn }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nobuiltin }
attributes #20 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !17, !19, !21, !22, !23, !25, !26, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !50, !52, !53, !55, !57, !59}
!llvm.named.register.sp = !{!61}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @blk_iolatency_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../block/blk-iolatency.c", i32 743, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_blk_iolatency__373_1057_iolatency_init6, !4, !"__initcall__kmod_blk_iolatency__373_1057_iolatency_init6", i1 false, i1 false}
!4 = !{!"../block/blk-iolatency.c", i32 1057, i32 1}
!5 = !{ptr @__exitcall_iolatency_exit, !6, !"__exitcall_iolatency_exit", i1 false, i1 false}
!6 = !{!"../block/blk-iolatency.c", i32 1058, i32 1}
!7 = !{ptr @blkcg_iolatency_ops, !8, !"blkcg_iolatency_ops", i1 false, i1 false}
!8 = !{!"../block/blk-iolatency.c", i32 652, i32 26}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../include/linux/blk-cgroup.h", i32 536, i32 6}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../include/linux/blk-cgroup.h", i32 546, i32 6}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../block/blk-iolatency.c", i32 622, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @iolatency_exp_factors, !18, !"iolatency_exp_factors", i1 false, i1 false}
!18 = !{!"../block/blk-iolatency.c", i32 170, i32 18}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/blk-cgroup.h", i32 340, i32 9}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!28 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @blkcg_policy_iolatency, !30, !"blkcg_policy_iolatency", i1 false, i1 false}
!30 = !{!"../block/blk-iolatency.c", i32 1038, i32 28}
!31 = !{ptr @iolatency_files, !32, !"iolatency_files", i1 false, i1 false}
!32 = !{!"../block/blk-iolatency.c", i32 1028, i32 22}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../block/blk-iolatency.c", i32 881, i32 17}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../block/blk-iolatency.c", i32 810, i32 27}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../block/blk-iolatency.c", i32 814, i32 19}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../block/blk-iolatency.c", i32 817, i32 20}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../block/blk-iolatency.c", i32 820, i32 21}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../block/blk-iolatency.c", i32 822, i32 25}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../block/blk-iolatency.c", i32 863, i32 4}
!47 = !{ptr @iolatency_pd_init.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../block/blk-iolatency.c", i32 983, i32 2}
!49 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @rq_wait_init.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../block/blk-rq-qos.h", i32 86, i32 2}
!52 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../block/blk-iolatency.c", i32 935, i32 17}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../block/blk-iolatency.c", i32 938, i32 17}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../block/blk-iolatency.c", i32 909, i32 17}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../block/blk-iolatency.c", i32 913, i32 17}
!61 = !{!"sp"}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{i64 2149525374}
!72 = !{!"branch_weights", i32 2000, i32 1}
!73 = !{i64 628956, i64 629017}
!74 = !{i64 631688}
!75 = !{!"branch_weights", i32 1, i32 2000}
!76 = !{i64 631973}
!77 = !{i64 2148235894}
!78 = !{i64 720717, i64 720742, i64 720764, i64 720780, i64 720792, i64 720812, i64 720836, i64 720852, i64 720864}
!79 = !{i64 2148236082}
!80 = !{i64 2149525640}
!81 = !{i64 2148236475, i64 2148236501, i64 2148236530, i64 2148236564, i64 2148236595, i64 2148236618}
!82 = !{i64 2148338298}
!83 = !{i64 720211, i64 720235, i64 720256, i64 720273, i64 720290}
!84 = !{i64 2148338524}
!85 = !{i64 2148321886}
!86 = !{i64 2148237195, i64 2148237227, i64 2148237256, i64 2148237290, i64 2148237321, i64 2148237344}
!87 = !{i64 2148322115}
!88 = !{i64 2148238940, i64 2148238966, i64 2148238995, i64 2148239029, i64 2148239060, i64 2148239083}
!89 = !{i64 2148324927}
!90 = !{i64 2148239660, i64 2148239692, i64 2148239721, i64 2148239755, i64 2148239786, i64 2148239809}
!91 = !{i64 2148325156}
!92 = !{i64 2155781056}
!93 = !{i8 0, i8 2}
!94 = !{i64 2155782121}
!95 = !{i64 2155800146}
!96 = !{i64 2155801215}
!97 = !{i64 2155812558}
!98 = !{i64 2155813627}
!99 = !{!"auto-init"}
!100 = !{i64 1141465, i64 1141492, i64 1141514, i64 1141542}
!101 = !{i64 1141873, i64 1141900, i64 1141933, i64 1141954, i64 1141981, i64 1142007}
