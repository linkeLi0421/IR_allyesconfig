; ModuleID = '/llk/IR_all_yes/kernel/sched/rt.c_pt.bc'
source_filename = "../kernel/sched/rt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.rq = type { %struct.raw_spinlock, i32, i32, i32, [8 x i8], %struct.__call_single_data, i32, %struct.atomic_t, i32, i64, [24 x i8], [2 x %struct.uclamp_rq], i32, [76 x i8], %struct.cfs_rq, %struct.rt_rq, %struct.dl_rq, %struct.list_head, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i64, [88 x i8], i64, i64, i32, %struct.atomic_t, i64, i32, i32, ptr, ptr, i32, i32, ptr, i8, i8, i32, i32, i32, %struct.cpu_stop_work, i32, i32, %struct.list_head, [12 x i8], %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, i64, i64, i32, i64, i64, %struct.rcuwait, i64, i64, i64, i32, i32, %struct.__call_single_data, %struct.hrtimer, i64, %struct.sched_info, i64, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.cpu_stop_work, ptr, ptr, i32, i32, %struct.rb_root, i32, i32, i32, i32, i32, i32, i64, [80 x i8] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.uclamp_rq = type { i32, [5 x %struct.uclamp_bucket] }
%struct.uclamp_bucket = type { i32 }
%struct.cfs_rq = type { %struct.load_weight, i32, i32, i32, i32, i64, i64, i32, i64, i64, %struct.rb_root_cached, ptr, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg, i64, [120 x i8], %struct.anon.45, i32, i32, i32, i32, i64, ptr, ptr, i32, %struct.list_head, ptr, i32, i32, i64, i64, i64, i64, i32, i32, %struct.list_head, [24 x i8] }
%struct.load_weight = type { i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.anon.45 = type { %struct.raw_spinlock, i32, i32, i32, i32, [68 x i8] }
%struct.rt_rq = type { %struct.rt_prio_array, i32, i32, %struct.anon, i32, i32, i32, %struct.plist_head, i32, i32, i64, i64, %struct.raw_spinlock, i32, ptr, ptr }
%struct.rt_prio_array = type { [4 x i32], [100 x %struct.list_head] }
%struct.anon = type { i32, i32 }
%struct.plist_head = type { %struct.list_head }
%struct.dl_rq = type { %struct.rb_root_cached, i32, %struct.anon.136, i32, i32, %struct.rb_root_cached, i64, i64, i64, i64 }
%struct.anon.136 = type { i64, i64 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.rcuwait = type { ptr }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.44 }
%struct.llist_node = type { ptr }
%union.anon.44 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.cpu_stop_work = type { %struct.list_head, ptr, i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.rt_bandwidth = type { %struct.raw_spinlock, i64, i64, %struct.hrtimer, i32 }
%struct.sched_class = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.task_group = type { %struct.cgroup_subsys_state, ptr, ptr, i32, i32, [72 x i8], %struct.atomic_t, ptr, ptr, %struct.rt_bandwidth, %struct.callback_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.cfs_bandwidth, [2 x i32], [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [72 x i8] }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.cfs_bandwidth = type { %struct.raw_spinlock, i64, i64, i64, i64, i64, i64, i8, i8, i8, %struct.hrtimer, %struct.hrtimer, %struct.list_head, i32, i32, i32, i64, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.static_key = type { %struct.atomic_t, %union.anon.103 }
%union.anon.103 = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.108, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.47 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.108 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.root_domain = type { %struct.atomic_t, %struct.atomic_t, %struct.callback_head, ptr, ptr, i32, i32, ptr, %struct.atomic_t, %struct.dl_bw, %struct.cpudl, i64, %struct.irq_work, %struct.raw_spinlock, i32, i32, %struct.atomic_t, %struct.atomic_t, ptr, %struct.cpupri, i32, ptr }
%struct.dl_bw = type { %struct.raw_spinlock, i64, i64 }
%struct.cpudl = type { %struct.raw_spinlock, i32, ptr, ptr }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.cpupri = type { [101 x %struct.cpupri_vec], ptr }
%struct.cpupri_vec = type { %struct.atomic_t, ptr }
%struct.rq_flags = type { i32, %struct.pin_cookie, i32 }
%struct.pin_cookie = type { i32 }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.css_set = type { [14 x ptr], %struct.refcount_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, [14 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i8, %struct.callback_head }
%struct.sched_domain = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %union.anon.137, ptr, i32, [0 x i32] }
%union.anon.137 = type { %struct.callback_head }
%struct.rt_schedulable_data = type { ptr, i64, i64 }
%struct.css_task_iter = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }

@sched_rr_timeslice = dso_local global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@sysctl_sched_rr_timeslice = dso_local global { i32, [28 x i8] } { i32 100, [28 x i8] zeroinitializer }, align 32
@init_rt_bandwidth.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&rt_b->rt_runtime_lock\00", [41 x i8] zeroinitializer }, align 32
@init_rt_rq.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&rt_rq->rt_runtime_lock\00", [40 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@runqueues = external dso_local global %struct.rq, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@def_rt_bandwidth = dso_local global { %struct.rt_bandwidth, [40 x i8] } zeroinitializer, align 32
@local_cpu_mask = weak dso_local global ptr null, section ".data..percpu", align 4
@rt_sched_class = dso_local constant %struct.sched_class { i32 1, ptr @enqueue_task_rt, ptr @dequeue_task_rt, ptr @yield_task_rt, ptr null, ptr @check_preempt_curr_rt, ptr @pick_next_task_rt, ptr @put_prev_task_rt, ptr @set_next_task_rt, ptr @balance_rt, ptr @select_task_rq_rt, ptr @pick_task_rt, ptr null, ptr @task_woken_rt, ptr @set_cpus_allowed_common, ptr @rq_online_rt, ptr @rq_offline_rt, ptr @find_lock_lowest_rq, ptr @task_tick_rt, ptr null, ptr null, ptr @switched_from_rt, ptr @switched_to_rt, ptr @prio_changed_rt, ptr @get_rr_interval_rt, ptr @update_curr_rt, ptr null }, section "__rt_sched_class", align 4
@sched_rt_handler.mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @sched_rt_handler.mutex, i64 52), ptr getelementptr (i8, ptr @sched_rt_handler.mutex, i64 52) }, ptr @sched_rt_handler.mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mutex.wait_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mutex\00", [26 x i8] zeroinitializer }, align 32
@sysctl_sched_rt_period = external dso_local local_unnamed_addr global i32, align 4
@sysctl_sched_rt_runtime = external dso_local local_unnamed_addr global i32, align 4
@sched_rr_handler.mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @sched_rr_handler.mutex, i64 52), ptr getelementptr (i8, ptr @sched_rr_handler.mutex, i64 52) }, ptr @sched_rr_handler.mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@task_groups = external dso_local global %struct.list_head, align 4
@__pcpu_unique_rt_push_head = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@rt_push_head = weak dso_local global %struct.callback_head zeroinitializer, section ".data..percpu", align 4
@__pcpu_unique_rt_pull_head = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@rt_pull_head = weak dso_local global %struct.callback_head zeroinitializer, section ".data..percpu", align 4
@__pcpu_unique_local_cpu_mask = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@root_task_group = external dso_local global %struct.task_group, align 128
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@sched_feat_keys = external dso_local global [25 x %struct.static_key], align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kernel/sched/sched.h\00", [43 x i8] zeroinitializer }, align 32
@__tracepoint_sched_update_nr_running_tp = external dso_local global %struct.tracepoint, align 4
@cpufreq_update_util_data = external dso_local global ptr, section ".data..percpu", align 4
@cpufreq_update_util.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@assert_clock_updated.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"rq->clock_update_flags < RQCF_ACT_SKIP\00", [57 x i8] zeroinitializer }, align 32
@sched_schedstats = external dso_local global %struct.static_key_false, align 4
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kernel/sched/rt.c\00", [46 x i8] zeroinitializer }, align 32
@__dequeue_rt_entity.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__enqueue_rt_entity.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sched_asym_cpucapacity = external dso_local global %struct.static_key_false, align 4
@find_lowest_rq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@sched_domains_mutex = external dso_local global %struct.mutex, align 4
@check_schedstat_required.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@check_schedstat_required._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [154 x i8], [38 x i8] } { [154 x i8] c"Scheduler tracepoints stat_sleep, stat_iowait, stat_blocked and stat_runtime require the kernel parameter schedstats=enable or kernel.sched_schedstats=1\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"check_schedstat_required\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kernel/sched/stats.h\00", [43 x i8] zeroinitializer }, align 32
@check_schedstat_required._entry_ptr = internal global ptr @check_schedstat_required._entry, section ".printk_index", align 4
@__tracepoint_sched_stat_wait = external dso_local global %struct.tracepoint, align 4
@__tracepoint_sched_stat_sleep = external dso_local global %struct.tracepoint, align 4
@__tracepoint_sched_stat_iowait = external dso_local global %struct.tracepoint, align 4
@__tracepoint_sched_stat_blocked = external dso_local global %struct.tracepoint, align 4
@__tracepoint_sched_stat_runtime = external dso_local global %struct.tracepoint, align 4
@balance_push_callback = external dso_local global %struct.callback_head, align 4
@double_lock_balance.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@scheduler_running = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/sched.h\00", [35 x i8] zeroinitializer }, align 32
@trace_sched_stat_runtime.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@task_css_set.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cgroup_mutex = external dso_local global %struct.mutex, align 4
@css_set_lock = external dso_local global %struct.spinlock, align 4
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/cgroup.h\00", [41 x i8] zeroinitializer }, align 32
@sched_rt_runtime_exceeded.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@sched_rt_runtime_exceeded._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.7, i32 985, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sched: RT throttling activated\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sched_rt_runtime_exceeded\00", [38 x i8] zeroinitializer }, align 32
@sched_rt_runtime_exceeded._entry_ptr = internal global ptr @sched_rt_runtime_exceeded._entry, section ".printk_index", align 4
@rt_constraints_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @rt_constraints_mutex, i64 52), ptr getelementptr (i8, ptr @rt_constraints_mutex, i64 52) }, ptr @rt_constraints_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rt_constraints_mutex.wait_lock\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rt_constraints_mutex\00", [43 x i8] zeroinitializer }, align 32
@tg_rt_schedulable.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant [19 x i8] c"sched_rr_timeslice\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 10, i32 5 }
@___asan_gen_.25 = private unnamed_addr constant [26 x i8] c"sysctl_sched_rr_timeslice\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 11, i32 5 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 48, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 109, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"def_rt_bandwidth\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 17, i32 21 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 2935, i32 9 }
@___asan_gen_.52 = private unnamed_addr constant [6 x i8] c"mutex\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 2974, i32 9 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 1309, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 2835, i32 9 }
@___asan_gen_.62 = private unnamed_addr constant [24 x i8] c"../kernel/sched/sched.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 1459, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 123, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 108, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [24 x i8] c"../kernel/sched/stats.h\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 65, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [32 x i8] c"../include/trace/events/sched.h\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 517, i32 1 }
@___asan_gen_.86 = private unnamed_addr constant [26 x i8] c"../include/linux/cgroup.h\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 481, i32 9 }
@___asan_gen_.88 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 985, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant [21 x i8] c"rt_constraints_mutex\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 2672, i32 8 }
@___asan_gen_.107 = private constant [21 x i8] c"../kernel/sched/rt.c\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 2739, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 695, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 723, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @check_schedstat_required._entry, ptr @check_schedstat_required._entry_ptr, ptr @sched_rt_runtime_exceeded._entry, ptr @sched_rt_runtime_exceeded._entry_ptr, ptr @sched_rr_timeslice, ptr @sysctl_sched_rr_timeslice, ptr @init_rt_bandwidth.__key, ptr @.str, ptr @init_rt_rq.__key, ptr @.str.1, ptr @def_rt_bandwidth, ptr @sched_rt_handler.mutex, ptr @.str.2, ptr @.str.3, ptr @sched_rr_handler.mutex, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @rt_constraints_mutex, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_rr_timeslice to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_sched_rr_timeslice to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_rt_bandwidth.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_rt_rq.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @def_rt_bandwidth to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_rt_handler.mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_rr_handler.mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_schedstat_required._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 154, i32 192, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_rt_runtime_exceeded._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt_constraints_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @init_rt_bandwidth(ptr noundef %rt_b, i64 noundef %period, i64 noundef %runtime) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %rt_period = getelementptr inbounds %struct.rt_bandwidth, ptr %rt_b, i32 0, i32 1
  %0 = ptrtoint ptr %rt_period to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %period, ptr %rt_period, align 8
  %rt_runtime = getelementptr inbounds %struct.rt_bandwidth, ptr %rt_b, i32 0, i32 2
  %1 = ptrtoint ptr %rt_runtime to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %runtime, ptr %rt_runtime, align 8
  tail call void @__raw_spin_lock_init(ptr noundef %rt_b, ptr noundef nonnull @.str, ptr noundef nonnull @init_rt_bandwidth.__key, i16 noundef signext 2) #17
  %rt_period_timer = getelementptr inbounds %struct.rt_bandwidth, ptr %rt_b, i32 0, i32 3
  tail call void @hrtimer_init(ptr noundef %rt_period_timer, i32 noundef 1, i32 noundef 9) #17
  %function = getelementptr inbounds %struct.rt_bandwidth, ptr %rt_b, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @sched_rt_period_timer, ptr %function, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sched_rt_period_timer(ptr noundef %timer) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %timer, i32 -64
  tail call void @_raw_spin_lock(ptr noundef %add.ptr) #17
  %rt_period = getelementptr i8, ptr %timer, i32 -16
  %base.i = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 3
  %0 = ptrtoint ptr %rt_period to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %rt_period, align 8
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %get_time.i18 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %get_time.i18 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_time.i18, align 4
  %call.i19 = tail call i64 %5() #17
  %call1.i20 = tail call i64 @hrtimer_forward(ptr noundef %timer, i64 noundef %call.i19, i64 noundef %1) #17
  %conv21 = trunc i64 %call1.i20 to i32
  %tobool.not22 = icmp eq i32 %conv21, 0
  br i1 %tobool.not22, label %if.end6, label %if.end

if.end:                                           ; preds = %if.end, %entry
  %conv23 = phi i32 [ %conv, %if.end ], [ %conv21, %entry ]
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr) #17
  %call2 = tail call fastcc i32 @do_sched_rt_period_timer(ptr noundef %add.ptr, i32 noundef %conv23)
  tail call void @_raw_spin_lock(ptr noundef %add.ptr) #17
  %6 = ptrtoint ptr %rt_period to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rt_period, align 8
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %get_time.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %get_time.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_time.i, align 4
  %call.i = tail call i64 %11() #17
  %call1.i = tail call i64 @hrtimer_forward(ptr noundef %timer, i64 noundef %call.i, i64 noundef %7) #17
  %conv = trunc i64 %call1.i to i32
  %tobool.not = icmp eq i32 %conv, 0
  br i1 %tobool.not, label %for.end, label %if.end

for.end:                                          ; preds = %if.end
  %phi.cmp = icmp eq i32 %call2, 0
  br i1 %phi.cmp, label %if.end6, label %if.then5

if.then5:                                         ; preds = %for.end
  %rt_period_active = getelementptr i8, ptr %timer, i32 48
  %12 = ptrtoint ptr %rt_period_active to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %rt_period_active, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %for.end, %entry
  %idle.0.lcssa25 = phi i32 [ 0, %if.then5 ], [ 1, %for.end ], [ 1, %entry ]
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr) #17
  ret i32 %idle.0.lcssa25
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @init_rt_rq(ptr noundef %rt_rq) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.rt_prio_array, ptr %rt_rq, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %i.021 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %add.ptr = getelementptr %struct.list_head, ptr %queue, i32 %i.021
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %add.ptr, ptr %add.ptr, align 4
  %prev.i = getelementptr %struct.list_head, ptr %queue, i32 %i.021, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %add.ptr, ptr %prev.i, align 4
  %rem.i = and i32 %i.021, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %i.021, 5
  %add.ptr.i = getelementptr i32, ptr %rt_rq, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %3, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  %inc = add nuw nsw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %add.ptr.i20 = getelementptr i32, ptr %rt_rq, i32 3
  %4 = ptrtoint ptr %add.ptr.i20 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i20, align 4
  %or.i = or i32 %5, 16
  store i32 %or.i, ptr %add.ptr.i20, align 4
  %highest_prio = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 3
  %6 = ptrtoint ptr %highest_prio to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 99, ptr %highest_prio, align 8
  %next = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 99, ptr %next, align 4
  %rt_nr_migratory = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 4
  %8 = ptrtoint ptr %rt_nr_migratory to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %rt_nr_migratory, align 8
  %overloaded = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 6
  %9 = ptrtoint ptr %overloaded to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %overloaded, align 8
  %pushable_tasks = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 7
  %10 = ptrtoint ptr %pushable_tasks to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %pushable_tasks, ptr %pushable_tasks, align 4
  %prev.i.i = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 7, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %pushable_tasks, ptr %prev.i.i, align 4
  %rt_queued = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 8
  %12 = ptrtoint ptr %rt_queued to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %rt_queued, align 4
  %rt_time = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 10
  %rt_throttled = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 9
  %13 = ptrtoint ptr %rt_throttled to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %rt_throttled, align 8
  %rt_runtime_lock = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 12
  %14 = call ptr @memset(ptr %rt_time, i32 0, i32 16)
  tail call void @__raw_spin_lock_init(ptr noundef %rt_runtime_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_rt_rq.__key, i16 noundef signext 2) #17
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unregister_rt_sched_group(ptr noundef %tg) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %rt_se = getelementptr inbounds %struct.task_group, ptr %tg, i32 0, i32 7
  %0 = ptrtoint ptr %rt_se to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rt_se, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %rt_period_timer.i = getelementptr inbounds %struct.task_group, ptr %tg, i32 0, i32 9, i32 3
  %call.i = tail call i32 @hrtimer_cancel(ptr noundef %rt_period_timer.i) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_rt_sched_group(ptr nocapture noundef readonly %tg) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call18 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %cmp19 = icmp ult i32 %call18, %0
  br i1 %cmp19, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %rt_rq = getelementptr inbounds %struct.task_group, ptr %tg, i32 0, i32 8
  %rt_se = getelementptr inbounds %struct.task_group, ptr %tg, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %if.end6, %for.body.lr.ph
  %call20 = phi i32 [ %call18, %for.body.lr.ph ], [ %call, %if.end6 ]
  %1 = ptrtoint ptr %rt_rq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rt_rq, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr ptr, ptr %2, i32 %call20
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %4) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %5 = ptrtoint ptr %rt_se to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rt_se, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  %arrayidx5 = getelementptr ptr, ptr %6, i32 %call20
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx5, align 4
  tail call void @kfree(ptr noundef %8) #17
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end
  %call = tail call i32 @cpumask_next(i32 noundef %call20, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %9
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %if.end6, %entry
  %rt_rq7 = getelementptr inbounds %struct.task_group, ptr %tg, i32 0, i32 8
  %10 = ptrtoint ptr %rt_rq7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rt_rq7, align 8
  tail call void @kfree(ptr noundef %11) #17
  %rt_se8 = getelementptr inbounds %struct.task_group, ptr %tg, i32 0, i32 7
  %12 = ptrtoint ptr %rt_se8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rt_se8, align 4
  tail call void @kfree(ptr noundef %13) #17
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @init_tg_rt_entry(ptr noundef %tg, ptr noundef %rt_rq, ptr noundef %rt_se, i32 noundef %cpu, ptr noundef %parent) local_unnamed_addr #4 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @runqueues to i32)
  %2 = inttoptr i32 %add to ptr
  %highest_prio = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 3
  %3 = ptrtoint ptr %highest_prio to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 99, ptr %highest_prio, align 8
  %rt_nr_boosted = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 13
  %4 = ptrtoint ptr %rt_nr_boosted to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %rt_nr_boosted, align 4
  %rq2 = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 14
  %5 = ptrtoint ptr %rq2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %rq2, align 8
  %tg3 = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 15
  %6 = ptrtoint ptr %tg3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tg, ptr %tg3, align 4
  %rt_rq4 = getelementptr inbounds %struct.task_group, ptr %tg, i32 0, i32 8
  %7 = ptrtoint ptr %rt_rq4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rt_rq4, align 8
  %arrayidx5 = getelementptr ptr, ptr %8, i32 %cpu
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %rt_rq, ptr %arrayidx5, align 4
  %rt_se6 = getelementptr inbounds %struct.task_group, ptr %tg, i32 0, i32 7
  %10 = ptrtoint ptr %rt_se6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rt_se6, align 4
  %arrayidx7 = getelementptr ptr, ptr %11, i32 %cpu
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %rt_se, ptr %arrayidx7, align 4
  %tobool.not = icmp eq ptr %rt_se, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool8.not = icmp eq ptr %parent, null
  br i1 %tobool8.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  %rt = getelementptr inbounds %struct.rq, ptr %2, i32 0, i32 15
  br label %if.end12

if.else:                                          ; preds = %if.end
  %my_q = getelementptr inbounds %struct.sched_rt_entity, ptr %parent, i32 0, i32 9
  %13 = ptrtoint ptr %my_q to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %my_q, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then9
  %.sink = phi ptr [ %rt, %if.then9 ], [ %14, %if.else ]
  %15 = getelementptr inbounds %struct.sched_rt_entity, ptr %rt_se, i32 0, i32 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %.sink, ptr %15, align 4
  %my_q13 = getelementptr inbounds %struct.sched_rt_entity, ptr %rt_se, i32 0, i32 9
  %17 = ptrtoint ptr %my_q13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %rt_rq, ptr %my_q13, align 4
  %parent14 = getelementptr inbounds %struct.sched_rt_entity, ptr %rt_se, i32 0, i32 7
  %18 = ptrtoint ptr %parent14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %parent, ptr %parent14, align 4
  %19 = ptrtoint ptr %rt_se to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %rt_se, ptr %rt_se, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %rt_se, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %rt_se, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @alloc_rt_sched_group(ptr noundef %tg, ptr nocapture noundef readonly %parent) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %0, i32 4) #17
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !95

kcalloc.exit.thread:                              ; preds = %entry
  %rt_rq181 = getelementptr inbounds %struct.task_group, ptr %tg, i32 0, i32 8
  %3 = ptrtoint ptr %rt_rq181 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %rt_rq181, align 8
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %4 = extractvalue { i32, i1 } %1, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #20
  %rt_rq1 = getelementptr inbounds %struct.task_group, ptr %tg, i32 0, i32 8
  %5 = ptrtoint ptr %rt_rq1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8.i.i, ptr %rt_rq1, align 8
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.end7.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 4) #17
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %kcalloc.exit72.thread, label %if.end7.i.i70, !prof !95

kcalloc.exit72.thread:                            ; preds = %if.end
  %rt_se489 = getelementptr inbounds %struct.task_group, ptr %tg, i32 0, i32 7
  %9 = ptrtoint ptr %rt_se489 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %rt_se489, align 4
  br label %cleanup

if.end7.i.i70:                                    ; preds = %if.end
  %10 = extractvalue { i32, i1 } %7, 0
  %call8.i.i69 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #20
  %rt_se4 = getelementptr inbounds %struct.task_group, ptr %tg, i32 0, i32 7
  %11 = ptrtoint ptr %rt_se4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call8.i.i69, ptr %rt_se4, align 4
  %tobool6.not = icmp eq ptr %call8.i.i69, null
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end7.i.i70
  %rt_bandwidth = getelementptr inbounds %struct.task_group, ptr %tg, i32 0, i32 9
  %12 = load i64, ptr getelementptr inbounds (%struct.rt_bandwidth, ptr @def_rt_bandwidth, i32 0, i32 1), align 8
  %rt_period.i = getelementptr inbounds %struct.task_group, ptr %tg, i32 0, i32 9, i32 1
  %13 = ptrtoint ptr %rt_period.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %rt_period.i, align 8
  %rt_runtime.i = getelementptr inbounds %struct.task_group, ptr %tg, i32 0, i32 9, i32 2
  %14 = ptrtoint ptr %rt_runtime.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %rt_runtime.i, align 8
  tail call void @__raw_spin_lock_init(ptr noundef %rt_bandwidth, ptr noundef nonnull @.str, ptr noundef nonnull @init_rt_bandwidth.__key, i16 noundef signext 2) #17
  %rt_period_timer.i = getelementptr inbounds %struct.task_group, ptr %tg, i32 0, i32 9, i32 3
  tail call void @hrtimer_init(ptr noundef %rt_period_timer.i, i32 noundef 1, i32 noundef 9) #17
  %function.i = getelementptr inbounds %struct.task_group, ptr %tg, i32 0, i32 9, i32 3, i32 2
  %15 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @sched_rt_period_timer, ptr %function.i, align 8
  %call1096 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %cmp97 = icmp ult i32 %call1096, %16
  br i1 %cmp97, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %if.end8
  %rt_se21 = getelementptr inbounds %struct.task_group, ptr %parent, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %init_tg_rt_entry.exit, %for.body.lr.ph
  %call1098 = phi i32 [ %call1096, %for.body.lr.ph ], [ %call10, %init_tg_rt_entry.exit ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 936) #21
  %tobool12.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool12.not, label %cleanup, label %if.end14

if.end14:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call.i.i.i76 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 40) #21
  %tobool16.not = icmp eq ptr %call.i.i.i76, null
  br i1 %tobool16.not, label %err_free_rq, label %if.end18

if.end18:                                         ; preds = %if.end14
  %queue.i = getelementptr inbounds %struct.rt_prio_array, ptr %call.i.i.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %if.end18
  %i.021.i = phi i32 [ 0, %if.end18 ], [ %inc.i, %for.body.i ]
  %add.ptr.i = getelementptr %struct.list_head, ptr %queue.i, i32 %i.021.i
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %add.ptr.i, ptr %add.ptr.i, align 8
  %prev.i.i = getelementptr %struct.list_head, ptr %queue.i, i32 %i.021.i, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr.i, ptr %prev.i.i, align 4
  %rem.i.i = and i32 %i.021.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %i.021.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %call.i.i.i, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %22, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %if.end.i, label %for.body.i

if.end.i:                                         ; preds = %for.body.i
  %add.ptr.i20.i = getelementptr i32, ptr %call.i.i.i, i32 3
  %23 = ptrtoint ptr %add.ptr.i20.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i20.i, align 4
  %or.i.i = or i32 %24, 16
  store i32 %or.i.i, ptr %add.ptr.i20.i, align 4
  %highest_prio.i = getelementptr inbounds %struct.rt_rq, ptr %call.i.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %highest_prio.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 99, ptr %highest_prio.i, align 8
  %next.i = getelementptr inbounds %struct.rt_rq, ptr %call.i.i.i, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 99, ptr %next.i, align 4
  %rt_nr_migratory.i = getelementptr inbounds %struct.rt_rq, ptr %call.i.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %rt_nr_migratory.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %rt_nr_migratory.i, align 8
  %overloaded.i = getelementptr inbounds %struct.rt_rq, ptr %call.i.i.i, i32 0, i32 6
  %28 = ptrtoint ptr %overloaded.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %overloaded.i, align 8
  %pushable_tasks.i = getelementptr inbounds %struct.rt_rq, ptr %call.i.i.i, i32 0, i32 7
  %29 = ptrtoint ptr %pushable_tasks.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %pushable_tasks.i, ptr %pushable_tasks.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.rt_rq, ptr %call.i.i.i, i32 0, i32 7, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %pushable_tasks.i, ptr %prev.i.i.i, align 8
  %rt_queued.i = getelementptr inbounds %struct.rt_rq, ptr %call.i.i.i, i32 0, i32 8
  %31 = ptrtoint ptr %rt_queued.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %rt_queued.i, align 4
  %rt_time.i = getelementptr inbounds %struct.rt_rq, ptr %call.i.i.i, i32 0, i32 10
  %rt_throttled.i = getelementptr inbounds %struct.rt_rq, ptr %call.i.i.i, i32 0, i32 9
  %32 = ptrtoint ptr %rt_throttled.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %rt_throttled.i, align 8
  %rt_runtime_lock.i = getelementptr inbounds %struct.rt_rq, ptr %call.i.i.i, i32 0, i32 12
  %33 = call ptr @memset(ptr %rt_time.i, i32 0, i32 16)
  tail call void @__raw_spin_lock_init(ptr noundef %rt_runtime_lock.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_rt_rq.__key, i16 noundef signext 2) #17
  %34 = ptrtoint ptr %rt_runtime.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %rt_runtime.i, align 8
  %rt_runtime20 = getelementptr inbounds %struct.rt_rq, ptr %call.i.i.i, i32 0, i32 11
  %36 = ptrtoint ptr %rt_runtime20 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %rt_runtime20, align 8
  %37 = ptrtoint ptr %rt_se21 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rt_se21, align 4
  %arrayidx = getelementptr ptr, ptr %38, i32 %call1098
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call1098
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %42, ptrtoint (ptr @runqueues to i32)
  %43 = inttoptr i32 %add.i to ptr
  %44 = ptrtoint ptr %highest_prio.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 99, ptr %highest_prio.i, align 8
  %rt_nr_boosted.i = getelementptr inbounds %struct.rt_rq, ptr %call.i.i.i, i32 0, i32 13
  %45 = ptrtoint ptr %rt_nr_boosted.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %rt_nr_boosted.i, align 4
  %rq2.i = getelementptr inbounds %struct.rt_rq, ptr %call.i.i.i, i32 0, i32 14
  %46 = ptrtoint ptr %rq2.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %rq2.i, align 8
  %tg3.i = getelementptr inbounds %struct.rt_rq, ptr %call.i.i.i, i32 0, i32 15
  %47 = ptrtoint ptr %tg3.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %tg, ptr %tg3.i, align 4
  %48 = ptrtoint ptr %rt_rq1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rt_rq1, align 8
  %arrayidx5.i = getelementptr ptr, ptr %49, i32 %call1098
  %50 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i.i.i, ptr %arrayidx5.i, align 4
  %51 = ptrtoint ptr %rt_se4 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rt_se4, align 4
  %arrayidx7.i = getelementptr ptr, ptr %52, i32 %call1098
  %53 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i.i.i76, ptr %arrayidx7.i, align 4
  %tobool8.not.i = icmp eq ptr %40, null
  br i1 %tobool8.not.i, label %if.then9.i, label %if.else.i

if.then9.i:                                       ; preds = %if.end.i
  %rt.i = getelementptr inbounds %struct.rq, ptr %43, i32 0, i32 15
  br label %init_tg_rt_entry.exit

if.else.i:                                        ; preds = %if.end.i
  %my_q.i = getelementptr inbounds %struct.sched_rt_entity, ptr %40, i32 0, i32 9
  %54 = ptrtoint ptr %my_q.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %my_q.i, align 4
  br label %init_tg_rt_entry.exit

init_tg_rt_entry.exit:                            ; preds = %if.else.i, %if.then9.i
  %.sink.i = phi ptr [ %rt.i, %if.then9.i ], [ %55, %if.else.i ]
  %56 = getelementptr inbounds %struct.sched_rt_entity, ptr %call.i.i.i76, i32 0, i32 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %.sink.i, ptr %56, align 8
  %my_q13.i = getelementptr inbounds %struct.sched_rt_entity, ptr %call.i.i.i76, i32 0, i32 9
  %58 = ptrtoint ptr %my_q13.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i.i.i, ptr %my_q13.i, align 4
  %parent14.i = getelementptr inbounds %struct.sched_rt_entity, ptr %call.i.i.i76, i32 0, i32 7
  %59 = ptrtoint ptr %parent14.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %40, ptr %parent14.i, align 4
  %60 = ptrtoint ptr %call.i.i.i76 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %call.i.i.i76, ptr %call.i.i.i76, align 8
  %prev.i.i79 = getelementptr inbounds %struct.list_head, ptr %call.i.i.i76, i32 0, i32 1
  %61 = ptrtoint ptr %prev.i.i79 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call.i.i.i76, ptr %prev.i.i79, align 4
  %call10 = tail call i32 @cpumask_next(i32 noundef %call1098, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %62 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call10, %62
  br i1 %cmp, label %for.body, label %cleanup

err_free_rq:                                      ; preds = %if.end14
  tail call void @kfree(ptr noundef nonnull %call.i.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %err_free_rq, %init_tg_rt_entry.exit, %for.body, %if.end8, %if.end7.i.i70, %kcalloc.exit72.thread, %if.end7.i.i, %kcalloc.exit.thread
  %retval.0 = phi i32 [ 0, %if.end7.i.i70 ], [ 0, %if.end7.i.i ], [ 0, %err_free_rq ], [ 0, %kcalloc.exit.thread ], [ 0, %kcalloc.exit72.thread ], [ 1, %if.end8 ], [ 1, %init_tg_rt_entry.exit ], [ 0, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @sched_rt_bandwidth_account(ptr nocapture noundef readonly %rt_rq) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %tg.i = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 15
  %0 = ptrtoint ptr %tg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tg.i, align 4
  %rt_period_timer = getelementptr inbounds %struct.task_group, ptr %1, i32 0, i32 9, i32 3
  %call1 = tail call zeroext i1 @hrtimer_active(ptr noundef %rt_period_timer) #17
  br i1 %call1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %rt_time = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 10
  %2 = ptrtoint ptr %rt_time to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %rt_time, align 8
  %rt_runtime = getelementptr inbounds %struct.task_group, ptr %1, i32 0, i32 9, i32 2
  %4 = ptrtoint ptr %rt_runtime to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %rt_runtime, align 8
  %cmp = icmp ult i64 %3, %5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %6 = phi i1 [ true, %entry ], [ %cmp, %lor.rhs ]
  ret i1 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hrtimer_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rto_push_irq_work_func(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -168
  %0 = tail call i32 @llvm.read_register.i32(metadata !85) #17
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu3 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu3, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @runqueues to i32)
  %6 = inttoptr i32 %add to ptr
  %pushable_tasks.i = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 15, i32 7
  %7 = ptrtoint ptr %pushable_tasks.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %pushable_tasks.i, align 4
  %cmp.i.i.i.not = icmp eq ptr %8, %pushable_tasks.i
  br i1 %cmp.i.i.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @raw_spin_rq_lock_nested(ptr noundef %6, i32 noundef 0) #17
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %if.then
  %call5 = tail call fastcc i32 @push_rt_task(ptr noundef %6, i1 noundef zeroext true)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  tail call void @raw_spin_rq_unlock(ptr noundef %6) #17
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %rto_lock = getelementptr i8, ptr %work, i32 16
  tail call void @_raw_spin_lock(ptr noundef %rto_lock) #17
  %rto_cpu.i = getelementptr i8, ptr %work, i32 64
  %rto_mask.i = getelementptr i8, ptr %work, i32 76
  %9 = ptrtoint ptr %rto_cpu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rto_cpu.i, align 8
  %11 = ptrtoint ptr %rto_mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rto_mask.i, align 4
  %call18.i = tail call i32 @cpumask_next(i32 noundef %10, ptr noundef %12) #19
  %13 = ptrtoint ptr %rto_cpu.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call18.i, ptr %rto_cpu.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %cmp19.i = icmp ult i32 %call18.i, %14
  br i1 %cmp19.i, label %rto_next_cpu.exit, label %if.end.lr.ph.i

if.end.lr.ph.i:                                   ; preds = %if.end
  %rto_loop_next.i = getelementptr i8, ptr %work, i32 68
  %rto_loop.i = getelementptr i8, ptr %work, i32 60
  br label %if.end.i

if.end.i:                                         ; preds = %if.end6.i, %if.end.lr.ph.i
  %15 = ptrtoint ptr %rto_cpu.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %rto_cpu.i, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rto_loop_next.i, i32 noundef 4) #17
  %16 = ptrtoint ptr %rto_loop_next.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %rto_loop_next.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !96
  %18 = ptrtoint ptr %rto_loop.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rto_loop.i, align 4
  %cmp4.i = icmp eq i32 %19, %17
  br i1 %cmp4.i, label %rto_next_cpu.exit.thread, label %if.end6.i

rto_next_cpu.exit.thread:                         ; preds = %if.end.i
  tail call void @_raw_spin_unlock(ptr noundef %rto_lock) #17
  br label %if.then9

if.end6.i:                                        ; preds = %if.end.i
  %20 = ptrtoint ptr %rto_loop.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %17, ptr %rto_loop.i, align 4
  %21 = ptrtoint ptr %rto_cpu.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rto_cpu.i, align 8
  %23 = ptrtoint ptr %rto_mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rto_mask.i, align 4
  %call.i = tail call i32 @cpumask_next(i32 noundef %22, ptr noundef %24) #19
  %25 = ptrtoint ptr %rto_cpu.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call.i, ptr %rto_cpu.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %26 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call.i, %26
  br i1 %cmp.i, label %rto_next_cpu.exit, label %if.end.i

rto_next_cpu.exit:                                ; preds = %if.end6.i, %if.end
  %retval.0.i = phi i32 [ %call18.i, %if.end ], [ %call.i, %if.end6.i ]
  tail call void @_raw_spin_unlock(ptr noundef %rto_lock) #17
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %rto_next_cpu.exit, %rto_next_cpu.exit.thread
  tail call void @sched_put_rd(ptr noundef %add.ptr) #17
  br label %cleanup

if.end10:                                         ; preds = %rto_next_cpu.exit
  %call11 = tail call zeroext i1 @irq_work_queue_on(ptr noundef %work, i32 noundef %retval.0.i) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @push_rt_task(ptr noundef %rq, i1 noundef zeroext %pull) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %overloaded = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 15, i32 6
  %0 = ptrtoint ptr %overloaded to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %overloaded, align 8
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cleanup75, label %if.end

if.end:                                           ; preds = %entry
  %pushable_tasks.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 15, i32 7
  %2 = ptrtoint ptr %pushable_tasks.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %pushable_tasks.i.i, align 4
  %cmp.i.i.i.not.i = icmp eq ptr %3, %pushable_tasks.i.i
  br i1 %cmp.i.i.i.not.i, label %cleanup75, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %4 = ptrtoint ptr %pushable_tasks.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %pushable_tasks.i.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %5, %pushable_tasks.i.i
  br i1 %cmp.i.i.not.i, label %do.end.i, label %if.end17.i, !prof !95

do.end.i:                                         ; preds = %if.end.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1998, i32 noundef 9, ptr noundef null) #17
  br label %if.end17.i

if.end17.i:                                       ; preds = %do.end.i, %if.end.i
  %6 = ptrtoint ptr %pushable_tasks.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pushable_tasks.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 -1156
  %cpu.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 46
  %8 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu.i, align 4
  %stack.i.i = getelementptr i8, ptr %7, i32 -1152
  %10 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stack.i.i, align 4
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %cpu.i.i, align 4
  %cmp.not.i = icmp eq i32 %9, %13
  br i1 %cmp.not.i, label %do.body47.i, label %do.body38.i, !prof !97

do.body38.i:                                      ; preds = %if.end17.i
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/rt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2000, 0\0A.popsection", ""() #17, !srcloc !98
  unreachable

do.body47.i:                                      ; preds = %if.end17.i
  %curr.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 20
  %14 = ptrtoint ptr %curr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %curr.i.i, align 8
  %cmp.i.not.i = icmp eq ptr %15, %add.ptr.i
  br i1 %cmp.i.not.i, label %do.body57.i, label %do.body66.i, !prof !95

do.body57.i:                                      ; preds = %do.body47.i
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/rt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2001, 0\0A.popsection", ""() #17, !srcloc !99
  unreachable

do.body66.i:                                      ; preds = %do.body47.i
  %nr_cpus_allowed.i = getelementptr i8, ptr %7, i32 -124
  %16 = ptrtoint ptr %nr_cpus_allowed.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_cpus_allowed.i, align 8
  %cmp67.i = icmp slt i32 %17, 2
  br i1 %cmp67.i, label %do.body75.i, label %do.body84.i, !prof !95

do.body75.i:                                      ; preds = %do.body66.i
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/rt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2002, 0\0A.popsection", ""() #17, !srcloc !100
  unreachable

do.body84.i:                                      ; preds = %do.body66.i
  %on_rq.i.i = getelementptr i8, ptr %7, i32 -1104
  %18 = ptrtoint ptr %on_rq.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %on_rq.i.i, align 4
  %cmp.i136.not.i = icmp eq i32 %19, 1
  br i1 %cmp.i136.not.i, label %do.body105.i, label %do.body96.i, !prof !97

do.body96.i:                                      ; preds = %do.body84.i
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/rt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2004, 0\0A.popsection", ""() #17, !srcloc !101
  unreachable

do.body105.i:                                     ; preds = %do.body84.i
  %prio.i.i = getelementptr i8, ptr %7, i32 -1100
  %20 = ptrtoint ptr %prio.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %prio.i.i, align 8
  %cmp.i.i138.i = icmp sgt i32 %21, 99
  br i1 %cmp.i.i138.i, label %do.body117.i, label %pick_next_pushable_task.exit, !prof !95

do.body117.i:                                     ; preds = %do.body105.i
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/rt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2005, 0\0A.popsection", ""() #17, !srcloc !102
  unreachable

pick_next_pushable_task.exit:                     ; preds = %do.body105.i
  %tobool1.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool1.not, label %cleanup75, label %retry.preheader

retry.preheader:                                  ; preds = %pick_next_pushable_task.exit
  %migration_disabled.i185 = getelementptr i8, ptr %7, i32 -104
  %22 = ptrtoint ptr %migration_disabled.i185 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %migration_disabled.i185, align 4
  %tobool.i.not186 = icmp eq i16 %23, 0
  br i1 %tobool.i.not186, label %if.end23, label %if.then5

if.then5:                                         ; preds = %cleanup72, %retry.preheader
  br i1 %pull, label %lor.lhs.false, label %cleanup75

lor.lhs.false:                                    ; preds = %if.then5
  %push_busy = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 77
  %24 = ptrtoint ptr %push_busy to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %push_busy, align 4
  %tobool7.not = icmp eq i32 %25, 0
  br i1 %tobool7.not, label %if.end9, label %cleanup75

if.end9:                                          ; preds = %lor.lhs.false
  %26 = ptrtoint ptr %curr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %curr.i.i, align 8
  %call10 = tail call fastcc i32 @find_lowest_rq(ptr noundef %27)
  %cmp = icmp eq i32 %call10, -1
  br i1 %cmp, label %cleanup75, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %if.end9
  %28 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu.i, align 4
  %cmp13 = icmp eq i32 %call10, %29
  br i1 %cmp13, label %cleanup75, label %if.end15

if.end15:                                         ; preds = %lor.lhs.false11
  %call16 = tail call fastcc ptr @get_push_task(ptr noundef %rq)
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %cleanup75, label %if.then18

if.then18:                                        ; preds = %if.end15
  tail call void @raw_spin_rq_unlock(ptr noundef %rq) #17
  %30 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i, align 4
  %push_work = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 78
  %call20 = tail call zeroext i1 @stop_one_cpu_nowait(i32 noundef %31, ptr noundef nonnull @push_cpu_stop, ptr noundef nonnull %call16, ptr noundef %push_work) #17
  tail call void @raw_spin_rq_lock_nested(ptr noundef %rq, i32 noundef 0) #17
  br label %cleanup75

if.end23:                                         ; preds = %cleanup72, %retry.preheader
  %next_task.0187 = phi ptr [ %add.ptr.i119, %cleanup72 ], [ %add.ptr.i, %retry.preheader ]
  %32 = ptrtoint ptr %curr.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %curr.i.i, align 8
  %cmp25 = icmp eq ptr %next_task.0187, %33
  br i1 %cmp25, label %do.end, label %if.end49, !prof !95

do.end:                                           ; preds = %if.end23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 2057, i32 noundef 9, ptr noundef null) #17
  br label %cleanup75

if.end49:                                         ; preds = %if.end23
  %prio = getelementptr inbounds %struct.task_struct, ptr %next_task.0187, i32 0, i32 13
  %34 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %prio, align 8
  %prio51 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 13
  %36 = ptrtoint ptr %prio51 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %prio51, align 8
  %cmp52 = icmp slt i32 %35, %37
  br i1 %cmp52, label %if.then59, label %if.end60, !prof !95

if.then59:                                        ; preds = %if.end49
  tail call void @resched_curr(ptr noundef %rq) #17
  br label %cleanup75

if.end60:                                         ; preds = %if.end49
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %next_task.0187, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #17
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #17, !srcloc !103
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %38, 0
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end15.sink.split.i.i.i.i, label %if.else.i.i.i.i, !prof !95

if.else.i.i.i.i:                                  ; preds = %if.end60
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %39 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  %.not.i.i.i.i = icmp sgt i32 %39, -1
  br i1 %.not.i.i.i.i, label %get_task_struct.exit, label %if.end15.sink.split.i.i.i.i, !prof !97

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i, %if.end60
  %.sink.i.i.i.i = phi i32 [ 2, %if.end60 ], [ 1, %if.else.i.i.i.i ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #17
  br label %get_task_struct.exit

get_task_struct.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i
  %call62 = tail call ptr @find_lock_lowest_rq(ptr noundef nonnull %next_task.0187, ptr noundef %rq)
  %tobool63.not = icmp eq ptr %call62, null
  br i1 %tobool63.not, label %if.then64, label %if.end73

if.then64:                                        ; preds = %get_task_struct.exit
  %40 = ptrtoint ptr %pushable_tasks.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %pushable_tasks.i.i, align 4
  %cmp.i.i.i.not.i115 = icmp eq ptr %41, %pushable_tasks.i.i
  br i1 %cmp.i.i.i.not.i115, label %out, label %if.end.i117

if.end.i117:                                      ; preds = %if.then64
  %42 = ptrtoint ptr %pushable_tasks.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %pushable_tasks.i.i, align 4
  %cmp.i.i.not.i116 = icmp eq ptr %43, %pushable_tasks.i.i
  br i1 %cmp.i.i.not.i116, label %do.end.i118, label %if.end17.i124, !prof !95

do.end.i118:                                      ; preds = %if.end.i117
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1998, i32 noundef 9, ptr noundef null) #17
  br label %if.end17.i124

if.end17.i124:                                    ; preds = %do.end.i118, %if.end.i117
  %44 = ptrtoint ptr %pushable_tasks.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pushable_tasks.i.i, align 4
  %add.ptr.i119 = getelementptr i8, ptr %45, i32 -1156
  %46 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cpu.i, align 4
  %stack.i.i121 = getelementptr i8, ptr %45, i32 -1152
  %48 = ptrtoint ptr %stack.i.i121 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %stack.i.i121, align 4
  %cpu.i.i122 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %cpu.i.i122 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %cpu.i.i122, align 4
  %cmp.not.i123 = icmp eq i32 %47, %51
  br i1 %cmp.not.i123, label %do.body47.i128, label %do.body38.i125, !prof !97

do.body38.i125:                                   ; preds = %if.end17.i124
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/rt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2000, 0\0A.popsection", ""() #17, !srcloc !98
  unreachable

do.body47.i128:                                   ; preds = %if.end17.i124
  %52 = ptrtoint ptr %curr.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %curr.i.i, align 8
  %cmp.i.not.i127 = icmp eq ptr %53, %add.ptr.i119
  br i1 %cmp.i.not.i127, label %do.body57.i129, label %do.body66.i132, !prof !95

do.body57.i129:                                   ; preds = %do.body47.i128
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/rt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2001, 0\0A.popsection", ""() #17, !srcloc !99
  unreachable

do.body66.i132:                                   ; preds = %do.body47.i128
  %nr_cpus_allowed.i130 = getelementptr i8, ptr %45, i32 -124
  %54 = ptrtoint ptr %nr_cpus_allowed.i130 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nr_cpus_allowed.i130, align 8
  %cmp67.i131 = icmp slt i32 %55, 2
  br i1 %cmp67.i131, label %do.body75.i133, label %do.body84.i136, !prof !95

do.body75.i133:                                   ; preds = %do.body66.i132
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/rt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2002, 0\0A.popsection", ""() #17, !srcloc !100
  unreachable

do.body84.i136:                                   ; preds = %do.body66.i132
  %on_rq.i.i134 = getelementptr i8, ptr %45, i32 -1104
  %56 = ptrtoint ptr %on_rq.i.i134 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %on_rq.i.i134, align 4
  %cmp.i136.not.i135 = icmp eq i32 %57, 1
  br i1 %cmp.i136.not.i135, label %do.body105.i140, label %do.body96.i137, !prof !97

do.body96.i137:                                   ; preds = %do.body84.i136
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/rt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2004, 0\0A.popsection", ""() #17, !srcloc !101
  unreachable

do.body105.i140:                                  ; preds = %do.body84.i136
  %prio.i.i138 = getelementptr i8, ptr %45, i32 -1100
  %58 = ptrtoint ptr %prio.i.i138 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %prio.i.i138, align 8
  %cmp.i.i138.i139 = icmp sgt i32 %59, 99
  br i1 %cmp.i.i138.i139, label %do.body117.i141, label %pick_next_pushable_task.exit143, !prof !95

do.body117.i141:                                  ; preds = %do.body105.i140
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/rt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2005, 0\0A.popsection", ""() #17, !srcloc !102
  unreachable

pick_next_pushable_task.exit143:                  ; preds = %do.body105.i140
  %cmp66 = icmp eq ptr %add.ptr.i119, %next_task.0187
  %tobool69.not = icmp eq ptr %add.ptr.i119, null
  %or.cond = or i1 %cmp66, %tobool69.not
  br i1 %or.cond, label %out, label %if.end71

if.end71:                                         ; preds = %pick_next_pushable_task.exit143
  %call.i.i.i.i.i.i145 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #17
  %60 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #17, !srcloc !105
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %60, 0
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end71
  %.not.i.i.i.i146 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i146, label %cleanup72, label %if.then10.i.i.i.i, !prof !97

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #17
  br label %cleanup72

if.then.i:                                        ; preds = %if.end71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !106
  tail call void @__put_task_struct(ptr noundef nonnull %next_task.0187) #17
  br label %cleanup72

cleanup72:                                        ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i
  %migration_disabled.i = getelementptr i8, ptr %45, i32 -104
  %61 = ptrtoint ptr %migration_disabled.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %migration_disabled.i, align 4
  %tobool.i.not = icmp eq i16 %62, 0
  br i1 %tobool.i.not, label %if.end23, label %if.then5

if.end73:                                         ; preds = %get_task_struct.exit
  tail call void @deactivate_task(ptr noundef %rq, ptr noundef nonnull %next_task.0187, i32 noundef 0) #17
  %cpu74 = getelementptr inbounds %struct.rq, ptr %call62, i32 0, i32 46
  %63 = ptrtoint ptr %cpu74 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cpu74, align 4
  tail call void @set_task_cpu(ptr noundef nonnull %next_task.0187, i32 noundef %64) #17
  tail call void @activate_task(ptr noundef nonnull %call62, ptr noundef nonnull %next_task.0187, i32 noundef 0) #17
  tail call void @resched_curr(ptr noundef nonnull %call62) #17
  %core_enabled.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 81
  %65 = ptrtoint ptr %core_enabled.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %core_enabled.i.i, align 128
  %tobool.not.i.i = icmp eq i32 %66, 0
  br i1 %tobool.not.i.i, label %__rq_lockp.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end73
  %core.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 79
  %67 = ptrtoint ptr %core.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %core.i.i, align 8
  br label %__rq_lockp.exit.i

__rq_lockp.exit.i:                                ; preds = %if.then.i.i, %if.end73
  %retval.0.i.i = phi ptr [ %68, %if.then.i.i ], [ %rq, %if.end73 ]
  %core_enabled.i5.i = getelementptr inbounds %struct.rq, ptr %call62, i32 0, i32 81
  %69 = ptrtoint ptr %core_enabled.i5.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %core_enabled.i5.i, align 128
  %tobool.not.i6.i = icmp eq i32 %70, 0
  br i1 %tobool.not.i6.i, label %__rq_lockp.exit10.i, label %if.then.i8.i

if.then.i8.i:                                     ; preds = %__rq_lockp.exit.i
  %core.i7.i = getelementptr inbounds %struct.rq, ptr %call62, i32 0, i32 79
  %71 = ptrtoint ptr %core.i7.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %core.i7.i, align 8
  br label %__rq_lockp.exit10.i

__rq_lockp.exit10.i:                              ; preds = %if.then.i8.i, %__rq_lockp.exit.i
  %retval.0.i9.i = phi ptr [ %72, %if.then.i8.i ], [ %call62, %__rq_lockp.exit.i ]
  %cmp.not.i148 = icmp eq ptr %retval.0.i.i, %retval.0.i9.i
  br i1 %cmp.not.i148, label %if.end.i150, label %if.then.i149

if.then.i149:                                     ; preds = %__rq_lockp.exit10.i
  tail call void @raw_spin_rq_unlock(ptr noundef nonnull %call62) #17
  br label %if.end.i150

if.end.i150:                                      ; preds = %if.then.i149, %__rq_lockp.exit10.i
  %73 = ptrtoint ptr %core_enabled.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %core_enabled.i.i, align 128
  %tobool.not.i12.i = icmp eq i32 %74, 0
  br i1 %tobool.not.i12.i, label %double_unlock_balance.exit, label %if.then.i14.i

if.then.i14.i:                                    ; preds = %if.end.i150
  %core.i13.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 79
  %75 = ptrtoint ptr %core.i13.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %core.i13.i, align 8
  br label %double_unlock_balance.exit

double_unlock_balance.exit:                       ; preds = %if.then.i14.i, %if.end.i150
  %retval.0.i15.i = phi ptr [ %76, %if.then.i14.i ], [ %rq, %if.end.i150 ]
  %dep_map.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i15.i, i32 0, i32 4
  %77 = tail call ptr @llvm.returnaddress(i32 0) #17
  %78 = ptrtoint ptr %77 to i32
  %name.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i15.i, i32 0, i32 4, i32 2
  %79 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %name.i.i, align 4
  %81 = ptrtoint ptr %dep_map.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dep_map.i, align 4
  tail call void @lock_set_class(ptr noundef %dep_map.i, ptr noundef %80, ptr noundef %82, i32 noundef 0, i32 noundef %78) #17
  br label %out

out:                                              ; preds = %double_unlock_balance.exit, %pick_next_pushable_task.exit143, %if.then64
  %ret.0 = phi i32 [ 1, %double_unlock_balance.exit ], [ 0, %pick_next_pushable_task.exit143 ], [ 0, %if.then64 ]
  %call.i.i.i.i.i.i152 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #17
  %83 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #17, !srcloc !105
  %asmresult.i.i.i.i.i.i.i153 = extractvalue { i32, i32, i32 } %83, 0
  %cmp.i.i.i.i154 = icmp eq i32 %asmresult.i.i.i.i.i.i.i153, 1
  br i1 %cmp.i.i.i.i154, label %if.then.i158, label %if.end5.i.i.i.i156

if.end5.i.i.i.i156:                               ; preds = %out
  %.not.i.i.i.i155 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i153, 0
  br i1 %.not.i.i.i.i155, label %cleanup75, label %if.then10.i.i.i.i157, !prof !97

if.then10.i.i.i.i157:                             ; preds = %if.end5.i.i.i.i156
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #17
  br label %cleanup75

if.then.i158:                                     ; preds = %out
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !106
  tail call void @__put_task_struct(ptr noundef nonnull %next_task.0187) #17
  br label %cleanup75

cleanup75:                                        ; preds = %if.then.i158, %if.then10.i.i.i.i157, %if.end5.i.i.i.i156, %if.then59, %do.end, %if.then18, %if.end15, %lor.lhs.false11, %if.end9, %lor.lhs.false, %if.then5, %pick_next_pushable_task.exit, %if.end, %entry
  %retval.1 = phi i32 [ 0, %do.end ], [ 0, %if.then59 ], [ 0, %entry ], [ 0, %pick_next_pushable_task.exit ], [ 0, %if.end15 ], [ 0, %if.then18 ], [ 0, %if.end9 ], [ 0, %lor.lhs.false11 ], [ 0, %if.then5 ], [ 0, %lor.lhs.false ], [ %ret.0, %if.end5.i.i.i.i156 ], [ %ret.0, %if.then10.i.i.i.i157 ], [ %ret.0, %if.then.i158 ], [ 0, %if.end ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_spin_rq_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_put_rd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_work_queue_on(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @init_sched_rt_class() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call6 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %cmp7 = icmp ult i32 %call6, %0
  br i1 %cmp7, label %do.body, label %for.end

do.body:                                          ; preds = %do.body, %entry
  %call8 = phi i32 [ %call, %do.body ], [ %call6, %entry ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call8
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, ptrtoint (ptr @local_cpu_mask to i32)
  %3 = inttoptr i32 %add to ptr
  %call2 = tail call zeroext i1 @zalloc_cpumask_var_node(ptr noundef %3, i32 noundef 3264, i32 noundef 0) #17
  %call = tail call i32 @cpumask_next(i32 noundef %call8, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %4
  br i1 %cmp, label %do.body, label %for.end

for.end:                                          ; preds = %do.body, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zalloc_cpumask_var_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enqueue_task_rt(ptr noundef %rq, ptr noundef %p, i32 noundef %flags) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %rt = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 19
  %and = and i32 %flags, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %timeout = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 19, i32 1
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %timeout, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_schedstats, ptr blockaddress(@enqueue_task_rt, %check_schedstat_required.exit)) #17
          to label %if.end.i [label %check_schedstat_required.exit], !srcloc !107

if.end.i:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_stat_wait, i32 0, i32 1), ptr blockaddress(@enqueue_task_rt, %land.end.i)) #17
          to label %lor.lhs.false.i [label %land.end.i], !srcloc !107

lor.lhs.false.i:                                  ; preds = %if.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_stat_sleep, i32 0, i32 1), ptr blockaddress(@enqueue_task_rt, %land.end.i)) #17
          to label %lor.lhs.false5.i [label %land.end.i], !srcloc !107

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_stat_iowait, i32 0, i32 1), ptr blockaddress(@enqueue_task_rt, %land.end.i)) #17
          to label %lor.lhs.false7.i [label %land.end.i], !srcloc !107

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false5.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_stat_blocked, i32 0, i32 1), ptr blockaddress(@enqueue_task_rt, %land.end.i)) #17
          to label %lor.lhs.false9.i [label %land.end.i], !srcloc !107

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false7.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_stat_runtime, i32 0, i32 1), ptr blockaddress(@enqueue_task_rt, %land.end.i)) #17
          to label %check_schedstat_required.exit [label %land.end.i], !srcloc !107

land.end.i:                                       ; preds = %lor.lhs.false9.i, %lor.lhs.false7.i, %lor.lhs.false5.i, %lor.lhs.false.i, %if.end.i
  %.b35.i = load i1, ptr @check_schedstat_required.__already_done, align 1
  br i1 %.b35.i, label %check_schedstat_required.exit, label %if.then22.i, !prof !97

if.then22.i:                                      ; preds = %land.end.i
  store i1 true, ptr @check_schedstat_required.__already_done, align 1
  %call24.i = tail call i32 (ptr, ...) @_printk_deferred(ptr noundef nonnull @.str.9) #22
  br label %check_schedstat_required.exit

check_schedstat_required.exit:                    ; preds = %if.then22.i, %land.end.i, %lor.lhs.false9.i, %if.end
  %rt_rq.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 19, i32 8
  %1 = ptrtoint ptr %rt_rq.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rt_rq.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_schedstats, ptr blockaddress(@enqueue_task_rt, %if.end.i13)) #17
          to label %update_stats_wait_start_rt.exit [label %if.end.i13], !srcloc !107

if.end.i13:                                       ; preds = %check_schedstat_required.exit
  %my_q.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 19, i32 9
  %3 = ptrtoint ptr %my_q.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %my_q.i, align 4
  %tobool.not.i17.i = icmp ne ptr %4, null
  %stats.i.i = getelementptr %struct.task_struct, ptr %p, i32 0, i32 29
  %tobool8.not20.i = icmp eq ptr %stats.i.i, null
  %tobool8.not.i = or i1 %tobool8.not20.i, %tobool.not.i17.i
  br i1 %tobool8.not.i, label %update_stats_wait_start_rt.exit, label %if.end10.i

if.end10.i:                                       ; preds = %if.end.i13
  %rq.i.i = getelementptr inbounds %struct.rt_rq, ptr %2, i32 0, i32 14
  %5 = ptrtoint ptr %rq.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rq.i.i, align 8
  tail call void @__update_stats_wait_start(ptr noundef %6, ptr noundef %p, ptr noundef nonnull %stats.i.i) #17
  br label %update_stats_wait_start_rt.exit

update_stats_wait_start_rt.exit:                  ; preds = %if.end10.i, %if.end.i13, %check_schedstat_required.exit
  tail call fastcc void @enqueue_rt_entity(ptr noundef %rt, i32 noundef %flags)
  %curr.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 20
  %7 = ptrtoint ptr %curr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %curr.i, align 8
  %cmp.i.not = icmp eq ptr %8, %p
  br i1 %cmp.i.not, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %update_stats_wait_start_rt.exit
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 32
  %9 = ptrtoint ptr %nr_cpus_allowed to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_cpus_allowed, align 8
  %cmp = icmp sgt i32 %10, 1
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  %pushable_tasks.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 51
  %pushable_tasks1.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 15, i32 7
  tail call void @plist_del(ptr noundef %pushable_tasks.i, ptr noundef %pushable_tasks1.i) #17
  %prio.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 13
  %11 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %prio.i, align 8
  %13 = ptrtoint ptr %pushable_tasks.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %pushable_tasks.i, align 4
  %prio_list.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 51, i32 1
  %14 = ptrtoint ptr %prio_list.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %prio_list.i.i, ptr %prio_list.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 51, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %prio_list.i.i, ptr %prev.i.i.i, align 4
  %node_list.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 51, i32 2
  %16 = ptrtoint ptr %node_list.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %node_list.i.i, ptr %node_list.i.i, align 4
  %prev.i4.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 51, i32 2, i32 1
  %17 = ptrtoint ptr %prev.i4.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %node_list.i.i, ptr %prev.i4.i.i, align 4
  tail call void @plist_add(ptr noundef %pushable_tasks.i, ptr noundef %pushable_tasks1.i) #17
  %18 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %prio.i, align 8
  %next.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 15, i32 3, i32 1
  %20 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %next.i, align 4
  %cmp.i14 = icmp slt i32 %19, %21
  br i1 %cmp.i14, label %if.then.i, label %if.end4

if.then.i:                                        ; preds = %if.then3
  %22 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %19, ptr %next.i, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then.i, %if.then3, %land.lhs.true, %update_stats_wait_start_rt.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dequeue_task_rt(ptr noundef %rq, ptr noundef %p, i32 noundef %flags) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %rt = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 19
  tail call void @update_curr_rt(ptr noundef %rq)
  tail call fastcc void @dequeue_rt_entity(ptr noundef %rt, i32 noundef %flags)
  %pushable_tasks.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 51
  %pushable_tasks1.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 15, i32 7
  tail call void @plist_del(ptr noundef %pushable_tasks.i, ptr noundef %pushable_tasks1.i) #17
  %0 = ptrtoint ptr %pushable_tasks1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pushable_tasks1.i, align 4
  %cmp.i.i.i.not.i = icmp eq ptr %1, %pushable_tasks1.i
  br i1 %cmp.i.i.i.not.i, label %dequeue_pushable_task.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %pushable_tasks1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %pushable_tasks1.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %3, %pushable_tasks1.i
  br i1 %cmp.i.i.not.i, label %do.end.i, label %if.end.i, !prof !95

do.end.i:                                         ; preds = %if.then.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 405, i32 noundef 9, ptr noundef null) #17
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i
  %4 = ptrtoint ptr %pushable_tasks1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pushable_tasks1.i, align 4
  %prio.i = getelementptr i8, ptr %5, i32 -1100
  %6 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %prio.i, align 8
  br label %dequeue_pushable_task.exit

dequeue_pushable_task.exit:                       ; preds = %if.end.i, %entry
  %.sink.i = phi i32 [ %7, %if.end.i ], [ 99, %entry ]
  %next34.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 15, i32 3, i32 1
  %8 = ptrtoint ptr %next34.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink.i, ptr %next34.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @yield_task_rt(ptr nocapture noundef readonly %rq) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %curr = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 20
  %0 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %curr, align 8
  %rt.i = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19
  br label %for.body.i

for.body.i:                                       ; preds = %requeue_rt_entity.exit.i, %entry
  %rt_se.02.i = phi ptr [ %rt.i, %entry ], [ %22, %requeue_rt_entity.exit.i ]
  %on_rq.i.i.i = getelementptr inbounds %struct.sched_rt_entity, ptr %rt_se.02.i, i32 0, i32 4
  %2 = ptrtoint ptr %on_rq.i.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %on_rq.i.i.i, align 4
  %tobool.not.i.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i.i, label %requeue_rt_entity.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i
  %rt_rq.i.i = getelementptr inbounds %struct.sched_rt_entity, ptr %rt_se.02.i, i32 0, i32 8
  %4 = ptrtoint ptr %rt_rq.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rt_rq.i.i, align 4
  %queue1.i.i = getelementptr inbounds %struct.rt_prio_array, ptr %5, i32 0, i32 1
  %my_q.i.i.i.i = getelementptr inbounds %struct.sched_rt_entity, ptr %rt_se.02.i, i32 0, i32 9
  %6 = ptrtoint ptr %my_q.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %my_q.i.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %7, null
  %highest_prio.i.i.i = getelementptr inbounds %struct.rt_rq, ptr %7, i32 0, i32 3
  %prio.i.i.i = getelementptr i8, ptr %rt_se.02.i, i32 -328
  %retval.0.in.i.i.i = select i1 %tobool.not.i.i.i, ptr %prio.i.i.i, ptr %highest_prio.i.i.i
  %8 = ptrtoint ptr %retval.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %retval.0.i.i.i = load i32, ptr %retval.0.in.i.i.i, align 8
  %add.ptr.i.i = getelementptr %struct.list_head, ptr %queue1.i.i, i32 %retval.0.i.i.i
  %call.i.i11.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %rt_se.02.i) #17
  br i1 %call.i.i11.i.i, label %if.end.i.i14.i.i, label %__list_del_entry.exit.i16.i.i

if.end.i.i14.i.i:                                 ; preds = %if.then.i.i
  %prev.i.i12.i.i = getelementptr inbounds %struct.list_head, ptr %rt_se.02.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i12.i.i, align 4
  %11 = ptrtoint ptr %rt_se.02.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rt_se.02.i, align 4
  %prev1.i.i.i13.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i13.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %__list_del_entry.exit.i16.i.i

__list_del_entry.exit.i16.i.i:                    ; preds = %if.end.i.i14.i.i, %if.then.i.i
  %prev.i2.i.i.i = getelementptr %struct.list_head, ptr %queue1.i.i, i32 %retval.0.i.i.i, i32 1
  %15 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i2.i.i.i, align 4
  %call.i.i.i15.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %rt_se.02.i, ptr noundef %16, ptr noundef %add.ptr.i.i) #17
  br i1 %call.i.i.i15.i.i, label %if.end6.sink.split.i.i, label %requeue_rt_entity.exit.i

if.end6.sink.split.i.i:                           ; preds = %__list_del_entry.exit.i16.i.i
  %17 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %rt_se.02.i, ptr %prev.i2.i.i.i, align 4
  %18 = ptrtoint ptr %rt_se.02.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr.i.i, ptr %rt_se.02.i, align 4
  %prev3.i.i.i17.i.i = getelementptr inbounds %struct.list_head, ptr %rt_se.02.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i17.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i.i17.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %rt_se.02.i, ptr %16, align 4
  br label %requeue_rt_entity.exit.i

requeue_rt_entity.exit.i:                         ; preds = %if.end6.sink.split.i.i, %__list_del_entry.exit.i16.i.i, %for.body.i
  %parent.i = getelementptr inbounds %struct.sched_rt_entity, ptr %rt_se.02.i, i32 0, i32 7
  %21 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %requeue_task_rt.exit, label %for.body.i

requeue_task_rt.exit:                             ; preds = %requeue_rt_entity.exit.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @check_preempt_curr_rt(ptr noundef %rq, ptr noundef %p, i32 noundef %flags) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %prio = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 13
  %0 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prio, align 8
  %curr = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 20
  %2 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %curr, align 8
  %prio1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %prio1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prio1, align 8
  %cmp = icmp slt i32 %1, %5
  br i1 %cmp, label %if.end8.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %cmp5 = icmp eq i32 %1, %5
  br i1 %cmp5, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stack.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %10 = and i32 %9, 2
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %land.lhs.true
  %nr_cpus_allowed.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 32
  %11 = ptrtoint ptr %nr_cpus_allowed.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_cpus_allowed.i, align 8
  %cmp.i = icmp eq i32 %12, 1
  br i1 %cmp.i, label %if.end8, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then7
  %rd.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 35
  %13 = ptrtoint ptr %rd.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rd.i, align 8
  %cpupri.i = getelementptr inbounds %struct.root_domain, ptr %14, i32 0, i32 19
  %call.i = tail call i32 @cpupri_find(ptr noundef %cpupri.i, ptr noundef %3, ptr noundef null) #17
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end8, label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %nr_cpus_allowed2.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 32
  %15 = ptrtoint ptr %nr_cpus_allowed2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_cpus_allowed2.i, align 8
  %cmp3.not.i = icmp eq i32 %16, 1
  br i1 %cmp3.not.i, label %if.end9.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %17 = ptrtoint ptr %rd.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rd.i, align 8
  %cpupri5.i = getelementptr inbounds %struct.root_domain, ptr %18, i32 0, i32 19
  %call6.i = tail call i32 @cpupri_find(ptr noundef %cpupri5.i, ptr noundef %p, ptr noundef null) #17
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end8

if.end9.i:                                        ; preds = %land.lhs.true.i, %if.end.i
  %rt.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 19
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %requeue_rt_entity.exit.i.i, %if.end9.i
  %rt_se.02.i.i = phi ptr [ %rt.i.i, %if.end9.i ], [ %39, %requeue_rt_entity.exit.i.i ]
  %on_rq.i.i.i.i = getelementptr inbounds %struct.sched_rt_entity, ptr %rt_se.02.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %on_rq.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %on_rq.i.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq i16 %20, 0
  br i1 %tobool.not.i.i.i, label %requeue_rt_entity.exit.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i
  %rt_rq.i.i.i = getelementptr inbounds %struct.sched_rt_entity, ptr %rt_se.02.i.i, i32 0, i32 8
  %21 = ptrtoint ptr %rt_rq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rt_rq.i.i.i, align 4
  %queue1.i.i.i = getelementptr inbounds %struct.rt_prio_array, ptr %22, i32 0, i32 1
  %my_q.i.i.i.i.i = getelementptr inbounds %struct.sched_rt_entity, ptr %rt_se.02.i.i, i32 0, i32 9
  %23 = ptrtoint ptr %my_q.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %my_q.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %24, null
  %highest_prio.i.i.i.i = getelementptr inbounds %struct.rt_rq, ptr %24, i32 0, i32 3
  %prio.i.i.i.i = getelementptr i8, ptr %rt_se.02.i.i, i32 -328
  %retval.0.in.i.i.i.i = select i1 %tobool.not.i.i.i.i, ptr %prio.i.i.i.i, ptr %highest_prio.i.i.i.i
  %25 = ptrtoint ptr %retval.0.in.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %retval.0.i.i.i.i = load i32, ptr %retval.0.in.i.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr %struct.list_head, ptr %queue1.i.i.i, i32 %retval.0.i.i.i.i
  %call.i.i11.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %rt_se.02.i.i) #17
  br i1 %call.i.i11.i.i.i, label %if.end.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %rt_se.02.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %28 = ptrtoint ptr %rt_se.02.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rt_se.02.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %__list_del_entry.exit.i.i.i.i

__list_del_entry.exit.i.i.i.i:                    ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i
  %32 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i.i.i, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %rt_se.02.i.i, ptr noundef %add.ptr.i.i.i, ptr noundef %33) #17
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %requeue_rt_entity.exit.i.i

if.end.i.i.i.i.i.i:                               ; preds = %__list_del_entry.exit.i.i.i.i
  %prev1.i.i2.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %rt_se.02.i.i, ptr %prev1.i.i2.i.i.i.i, align 4
  %35 = ptrtoint ptr %rt_se.02.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %33, ptr %rt_se.02.i.i, align 4
  %prev3.i.i.i17.i.i.i = getelementptr inbounds %struct.list_head, ptr %rt_se.02.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %prev3.i.i.i17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr.i.i.i, ptr %prev3.i.i.i17.i.i.i, align 4
  %37 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %rt_se.02.i.i, ptr %add.ptr.i.i.i, align 4
  br label %requeue_rt_entity.exit.i.i

requeue_rt_entity.exit.i.i:                       ; preds = %if.end.i.i.i.i.i.i, %__list_del_entry.exit.i.i.i.i, %for.body.i.i
  %parent.i.i = getelementptr inbounds %struct.sched_rt_entity, ptr %rt_se.02.i.i, i32 0, i32 7
  %38 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %parent.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i, label %if.end8.sink.split, label %for.body.i.i

if.end8.sink.split:                               ; preds = %requeue_rt_entity.exit.i.i, %entry
  tail call void @resched_curr(ptr noundef %rq) #17
  br label %if.end8

if.end8:                                          ; preds = %if.end8.sink.split, %land.lhs.true.i, %lor.lhs.false.i, %if.then7, %land.lhs.true, %if.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pick_next_task_rt(ptr noundef %rq) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %rt_queued.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 15, i32 8
  %0 = ptrtoint ptr %rt_queued.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rt_queued.i.i, align 4
  %cmp.i.i = icmp sgt i32 %1, 0
  br i1 %cmp.i.i, label %if.end.i, label %if.end

if.end.i:                                         ; preds = %entry
  %rt.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 15
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.end10.i.i, %if.end.i
  %rt_rq.0.i.i = phi ptr [ %rt.i.i, %if.end.i ], [ %17, %do.end10.i.i ]
  %2 = ptrtoint ptr %rt_rq.0.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rt_rq.0.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %sched_find_first_bit.exit.thread.i.i.i

sched_find_first_bit.exit.thread.i.i.i:           ; preds = %do.body.i.i
  %4 = tail call i32 @llvm.cttz.i32(i32 %3, i1 true) #17, !range !108
  br label %pick_next_rt_entity.exit.i.i

if.end.i.i.i.i:                                   ; preds = %do.body.i.i
  %arrayidx2.i.i.i.i = getelementptr i32, ptr %rt_rq.0.i.i, i32 1
  %5 = ptrtoint ptr %arrayidx2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx2.i.i.i.i, align 4
  %tobool3.not.i.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool3.not.i.i.i.i, label %if.end7.i.i.i.i, label %if.then4.i.i.i.i

if.then4.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  %7 = tail call i32 @llvm.cttz.i32(i32 %6, i1 true) #17, !range !108
  %add.i.i.i.i = or i32 %7, 32
  br label %sched_find_first_bit.exit.i.i.i

if.end7.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  %arrayidx8.i.i.i.i = getelementptr i32, ptr %rt_rq.0.i.i, i32 2
  %8 = ptrtoint ptr %arrayidx8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx8.i.i.i.i, align 4
  %tobool9.not.i.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool9.not.i.i.i.i, label %if.end14.i.i.i.i, label %if.then10.i.i.i.i

if.then10.i.i.i.i:                                ; preds = %if.end7.i.i.i.i
  %10 = tail call i32 @llvm.cttz.i32(i32 %9, i1 true) #17, !range !108
  %add13.i.i.i.i = or i32 %10, 64
  br label %sched_find_first_bit.exit.i.i.i

if.end14.i.i.i.i:                                 ; preds = %if.end7.i.i.i.i
  %arrayidx15.i.i.i.i = getelementptr i32, ptr %rt_rq.0.i.i, i32 3
  %11 = ptrtoint ptr %arrayidx15.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx15.i.i.i.i, align 4
  %13 = tail call i32 @llvm.cttz.i32(i32 %12, i1 false) #17, !range !108
  %add17.i.i.i.i = add nuw nsw i32 %13, 96
  br label %sched_find_first_bit.exit.i.i.i

sched_find_first_bit.exit.i.i.i:                  ; preds = %if.end14.i.i.i.i, %if.then10.i.i.i.i, %if.then4.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %add.i.i.i.i, %if.then4.i.i.i.i ], [ %add13.i.i.i.i, %if.then10.i.i.i.i ], [ %add17.i.i.i.i, %if.end14.i.i.i.i ]
  %cmp.i.i.i = icmp sgt i32 %retval.0.i.i.i.i, 99
  br i1 %cmp.i.i.i, label %do.body2.i.i.i, label %pick_next_rt_entity.exit.i.i, !prof !95

do.body2.i.i.i:                                   ; preds = %sched_find_first_bit.exit.i.i.i
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/rt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1742, 0\0A.popsection", ""() #17, !srcloc !109
  unreachable

pick_next_rt_entity.exit.i.i:                     ; preds = %sched_find_first_bit.exit.i.i.i, %sched_find_first_bit.exit.thread.i.i.i
  %retval.0.i3.i.i.i = phi i32 [ %4, %sched_find_first_bit.exit.thread.i.i.i ], [ %retval.0.i.i.i.i, %sched_find_first_bit.exit.i.i.i ]
  %queue8.i.i.i = getelementptr inbounds %struct.rt_prio_array, ptr %rt_rq.0.i.i, i32 0, i32 1
  %add.ptr.i.i.i = getelementptr %struct.list_head, ptr %queue8.i.i.i, i32 %retval.0.i3.i.i.i
  %14 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %do.body5.i.i, label %do.end10.i.i, !prof !95

do.body5.i.i:                                     ; preds = %pick_next_rt_entity.exit.i.i
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/rt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1757, 0\0A.popsection", ""() #17, !srcloc !110
  unreachable

do.end10.i.i:                                     ; preds = %pick_next_rt_entity.exit.i.i
  %my_q.i.i.i = getelementptr inbounds %struct.sched_rt_entity, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %my_q.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %my_q.i.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %17, null
  br i1 %tobool13.not.i.i, label %pick_task_rt.exit, label %do.body.i.i

pick_task_rt.exit:                                ; preds = %do.end10.i.i
  %add.ptr.i21.i.i = getelementptr i8, ptr %15, i32 -384
  %tobool.not = icmp eq ptr %add.ptr.i21.i.i, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %pick_task_rt.exit
  tail call void @set_next_task_rt(ptr noundef %rq, ptr noundef nonnull %add.ptr.i21.i.i, i1 noundef zeroext true)
  br label %if.end

if.end:                                           ; preds = %if.then, %pick_task_rt.exit, %entry
  %retval.0.i6 = phi ptr [ %add.ptr.i21.i.i, %if.then ], [ null, %pick_task_rt.exit ], [ null, %entry ]
  ret ptr %retval.0.i6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @put_prev_task_rt(ptr noundef %rq, ptr noundef %p) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %on_rq.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 19, i32 4
  %0 = ptrtoint ptr %on_rq.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %on_rq.i, align 4
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_schedstats, ptr blockaddress(@put_prev_task_rt, %if.end.i)) #17
          to label %if.end [label %if.end.i], !srcloc !107

if.end.i:                                         ; preds = %if.then
  %my_q.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 19, i32 9
  %2 = ptrtoint ptr %my_q.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %my_q.i, align 4
  %tobool.not.i17.i = icmp ne ptr %3, null
  %stats.i.i = getelementptr %struct.task_struct, ptr %p, i32 0, i32 29
  %tobool8.not20.i = icmp eq ptr %stats.i.i, null
  %tobool8.not.i = or i1 %tobool8.not20.i, %tobool.not.i17.i
  br i1 %tobool8.not.i, label %if.end, label %if.end10.i

if.end10.i:                                       ; preds = %if.end.i
  %rq.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 15, i32 14
  %4 = ptrtoint ptr %rq.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rq.i.i, align 8
  tail call void @__update_stats_wait_start(ptr noundef %5, ptr noundef %p, ptr noundef nonnull %stats.i.i) #17
  br label %if.end

if.end:                                           ; preds = %if.end10.i, %if.end.i, %if.then, %entry
  tail call void @update_curr_rt(ptr noundef %rq)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i, label %lockdep_assert_rq_held.exit.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %if.end
  %core_enabled.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 81
  %7 = ptrtoint ptr %core_enabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %core_enabled.i.i.i, align 128
  %tobool.not.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i, label %__rq_lockp.exit.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  %core.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 79
  %9 = ptrtoint ptr %core.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %core.i.i.i, align 8
  br label %__rq_lockp.exit.i.i

__rq_lockp.exit.i.i:                              ; preds = %if.then.i.i.i, %land.rhs.i.i
  %retval.0.i.i.i = phi ptr [ %10, %if.then.i.i.i ], [ %rq, %land.rhs.i.i ]
  %dep_map.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i, i32 0, i32 4
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #17
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %lockdep_assert_rq_held.exit.i, !prof !95

do.end.i.i:                                       ; preds = %__rq_lockp.exit.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1309, i32 noundef 9, ptr noundef null) #17
  br label %lockdep_assert_rq_held.exit.i

lockdep_assert_rq_held.exit.i:                    ; preds = %do.end.i.i, %__rq_lockp.exit.i.i, %if.end
  %clock_update_flags.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 25
  %11 = ptrtoint ptr %clock_update_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %clock_update_flags.i.i, align 4
  %cmp.i.i = icmp ult i32 %12, 2
  br i1 %cmp.i.i, label %land.rhs.i4.i, label %rq_clock_pelt.exit

land.rhs.i4.i:                                    ; preds = %lockdep_assert_rq_held.exit.i
  %.b37.i.i = load i1, ptr @assert_clock_updated.__already_done, align 1
  br i1 %.b37.i.i, label %rq_clock_pelt.exit, label %if.then.i.i, !prof !97

if.then.i.i:                                      ; preds = %land.rhs.i4.i
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #17
  br label %rq_clock_pelt.exit

rq_clock_pelt.exit:                               ; preds = %if.then.i.i, %land.rhs.i4.i, %lockdep_assert_rq_held.exit.i
  %clock_pelt.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 29
  %13 = ptrtoint ptr %clock_pelt.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %clock_pelt.i, align 8
  %lost_idle_time.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 30
  %15 = ptrtoint ptr %lost_idle_time.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lost_idle_time.i, align 16
  %conv.i18 = zext i32 %16 to i64
  %sub.i = sub i64 %14, %conv.i18
  %call4 = tail call i32 @update_rt_rq_load_avg(i64 noundef %sub.i, ptr noundef %rq, i32 noundef 1) #17
  %17 = ptrtoint ptr %on_rq.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %on_rq.i, align 4
  %tobool7.not = icmp eq i16 %18, 0
  br i1 %tobool7.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %rq_clock_pelt.exit
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 32
  %19 = ptrtoint ptr %nr_cpus_allowed to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr_cpus_allowed, align 8
  %cmp = icmp sgt i32 %20, 1
  br i1 %cmp, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  %pushable_tasks.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 51
  %pushable_tasks1.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 15, i32 7
  tail call void @plist_del(ptr noundef %pushable_tasks.i, ptr noundef %pushable_tasks1.i) #17
  %prio.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 13
  %21 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %prio.i, align 8
  %23 = ptrtoint ptr %pushable_tasks.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %pushable_tasks.i, align 4
  %prio_list.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 51, i32 1
  %24 = ptrtoint ptr %prio_list.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %prio_list.i.i, ptr %prio_list.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 51, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %prio_list.i.i, ptr %prev.i.i.i, align 4
  %node_list.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 51, i32 2
  %26 = ptrtoint ptr %node_list.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %node_list.i.i, ptr %node_list.i.i, align 4
  %prev.i4.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 51, i32 2, i32 1
  %27 = ptrtoint ptr %prev.i4.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %node_list.i.i, ptr %prev.i4.i.i, align 4
  tail call void @plist_add(ptr noundef %pushable_tasks.i, ptr noundef %pushable_tasks1.i) #17
  %28 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %prio.i, align 8
  %next.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 15, i32 3, i32 1
  %30 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %next.i, align 4
  %cmp.i = icmp slt i32 %29, %31
  br i1 %cmp.i, label %if.then.i, label %if.end9

if.then.i:                                        ; preds = %if.then8
  %32 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %29, ptr %next.i, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then.i, %if.then8, %land.lhs.true, %rq_clock_pelt.exit
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_next_task_rt(ptr noundef %rq, ptr noundef %p, i1 noundef zeroext %first) #6 align 64 {
entry:
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i.i, label %lockdep_assert_rq_held.exit.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %entry
  %core_enabled.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 81
  %1 = ptrtoint ptr %core_enabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %core_enabled.i.i.i, align 128
  %tobool.not.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i, label %__rq_lockp.exit.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  %core.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 79
  %3 = ptrtoint ptr %core.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %core.i.i.i, align 8
  br label %__rq_lockp.exit.i.i

__rq_lockp.exit.i.i:                              ; preds = %if.then.i.i.i, %land.rhs.i.i
  %retval.0.i.i.i = phi ptr [ %4, %if.then.i.i.i ], [ %rq, %land.rhs.i.i ]
  %dep_map.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i, i32 0, i32 4
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #17
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %lockdep_assert_rq_held.exit.i, !prof !95

do.end.i.i:                                       ; preds = %__rq_lockp.exit.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1309, i32 noundef 9, ptr noundef null) #17
  br label %lockdep_assert_rq_held.exit.i

lockdep_assert_rq_held.exit.i:                    ; preds = %do.end.i.i, %__rq_lockp.exit.i.i, %entry
  %clock_update_flags.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 25
  %5 = ptrtoint ptr %clock_update_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %clock_update_flags.i.i, align 4
  %cmp.i.i = icmp ult i32 %6, 2
  br i1 %cmp.i.i, label %land.rhs.i3.i, label %rq_clock_task.exit

land.rhs.i3.i:                                    ; preds = %lockdep_assert_rq_held.exit.i
  %.b37.i.i = load i1, ptr @assert_clock_updated.__already_done, align 1
  br i1 %.b37.i.i, label %rq_clock_task.exit, label %if.then.i.i, !prof !97

if.then.i.i:                                      ; preds = %land.rhs.i3.i
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #17
  br label %rq_clock_task.exit

rq_clock_task.exit:                               ; preds = %if.then.i.i, %land.rhs.i3.i, %lockdep_assert_rq_held.exit.i
  %clock_task.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 28
  %7 = ptrtoint ptr %clock_task.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %clock_task.i, align 128
  %exec_start = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 18, i32 4
  %9 = ptrtoint ptr %exec_start to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %exec_start, align 32
  %on_rq.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 19, i32 4
  %10 = ptrtoint ptr %on_rq.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %on_rq.i, align 4
  %tobool.not = icmp eq i16 %11, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %rq_clock_task.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_schedstats, ptr blockaddress(@set_next_task_rt, %if.end.i)) #17
          to label %if.end [label %if.end.i], !srcloc !107

if.end.i:                                         ; preds = %if.then
  %my_q.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 19, i32 9
  %12 = ptrtoint ptr %my_q.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %my_q.i, align 4
  %tobool.not.i17.i = icmp ne ptr %13, null
  %stats.i.i = getelementptr %struct.task_struct, ptr %p, i32 0, i32 29
  %tobool8.not20.i = icmp eq ptr %stats.i.i, null
  %tobool8.not.i = or i1 %tobool8.not20.i, %tobool.not.i17.i
  br i1 %tobool8.not.i, label %if.end, label %if.end10.i

if.end10.i:                                       ; preds = %if.end.i
  %rq.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 15, i32 14
  %14 = ptrtoint ptr %rq.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rq.i.i, align 8
  tail call void @__update_stats_wait_end(ptr noundef %15, ptr noundef %p, ptr noundef nonnull %stats.i.i) #17
  br label %if.end

if.end:                                           ; preds = %if.end10.i, %if.end.i, %if.then, %rq_clock_task.exit
  %pushable_tasks.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 51
  %pushable_tasks1.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 15, i32 7
  tail call void @plist_del(ptr noundef %pushable_tasks.i, ptr noundef %pushable_tasks1.i) #17
  %16 = ptrtoint ptr %pushable_tasks1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %pushable_tasks1.i, align 4
  %cmp.i.i.i.not.i = icmp eq ptr %17, %pushable_tasks1.i
  br i1 %cmp.i.i.i.not.i, label %dequeue_pushable_task.exit, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %18 = ptrtoint ptr %pushable_tasks1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %pushable_tasks1.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %19, %pushable_tasks1.i
  br i1 %cmp.i.i.not.i, label %do.end.i, label %if.end.i21, !prof !95

do.end.i:                                         ; preds = %if.then.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 405, i32 noundef 9, ptr noundef null) #17
  br label %if.end.i21

if.end.i21:                                       ; preds = %do.end.i, %if.then.i
  %20 = ptrtoint ptr %pushable_tasks1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pushable_tasks1.i, align 4
  %prio.i = getelementptr i8, ptr %21, i32 -1100
  %22 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %prio.i, align 8
  br label %dequeue_pushable_task.exit

dequeue_pushable_task.exit:                       ; preds = %if.end.i21, %if.end
  %.sink.i = phi i32 [ %23, %if.end.i21 ], [ 99, %if.end ]
  %next34.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 15, i32 3, i32 1
  %24 = ptrtoint ptr %next34.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink.i, ptr %next34.i, align 4
  br i1 %first, label %if.end6, label %cleanup

if.end6:                                          ; preds = %dequeue_pushable_task.exit
  %curr = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 20
  %25 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %curr, align 8
  %sched_class = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 21
  %27 = ptrtoint ptr %sched_class to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sched_class, align 32
  %cmp.not = icmp eq ptr %28, @rt_sched_class
  br i1 %cmp.not, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %29 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i22 = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i22, label %lockdep_assert_rq_held.exit.i36, label %land.rhs.i.i25

land.rhs.i.i25:                                   ; preds = %if.then7
  %core_enabled.i.i.i23 = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 81
  %30 = ptrtoint ptr %core_enabled.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %core_enabled.i.i.i23, align 128
  %tobool.not.i.i.i24 = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i.i24, label %__rq_lockp.exit.i.i32, label %if.then.i.i.i27

if.then.i.i.i27:                                  ; preds = %land.rhs.i.i25
  %core.i.i.i26 = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 79
  %32 = ptrtoint ptr %core.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %core.i.i.i26, align 8
  br label %__rq_lockp.exit.i.i32

__rq_lockp.exit.i.i32:                            ; preds = %if.then.i.i.i27, %land.rhs.i.i25
  %retval.0.i.i.i28 = phi ptr [ %33, %if.then.i.i.i27 ], [ %rq, %land.rhs.i.i25 ]
  %dep_map.i.i29 = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i28, i32 0, i32 4
  %call.i.i.i30 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i29, i32 noundef -1) #17
  %cmp.not.i.i31 = icmp eq i32 %call.i.i.i30, 0
  br i1 %cmp.not.i.i31, label %do.end.i.i33, label %lockdep_assert_rq_held.exit.i36, !prof !95

do.end.i.i33:                                     ; preds = %__rq_lockp.exit.i.i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1309, i32 noundef 9, ptr noundef null) #17
  br label %lockdep_assert_rq_held.exit.i36

lockdep_assert_rq_held.exit.i36:                  ; preds = %do.end.i.i33, %__rq_lockp.exit.i.i32, %if.then7
  %34 = ptrtoint ptr %clock_update_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %clock_update_flags.i.i, align 4
  %cmp.i.i35 = icmp ult i32 %35, 2
  br i1 %cmp.i.i35, label %land.rhs.i4.i, label %rq_clock_pelt.exit

land.rhs.i4.i:                                    ; preds = %lockdep_assert_rq_held.exit.i36
  %.b37.i.i37 = load i1, ptr @assert_clock_updated.__already_done, align 1
  br i1 %.b37.i.i37, label %rq_clock_pelt.exit, label %if.then.i.i38, !prof !97

if.then.i.i38:                                    ; preds = %land.rhs.i4.i
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #17
  br label %rq_clock_pelt.exit

rq_clock_pelt.exit:                               ; preds = %if.then.i.i38, %land.rhs.i4.i, %lockdep_assert_rq_held.exit.i36
  %clock_pelt.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 29
  %36 = ptrtoint ptr %clock_pelt.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %clock_pelt.i, align 8
  %lost_idle_time.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 30
  %38 = ptrtoint ptr %lost_idle_time.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %lost_idle_time.i, align 16
  %conv.i39 = zext i32 %39 to i64
  %sub.i = sub i64 %37, %conv.i39
  %call9 = tail call i32 @update_rt_rq_load_avg(i64 noundef %sub.i, ptr noundef %rq, i32 noundef 0) #17
  br label %if.end10

if.end10:                                         ; preds = %rq_clock_pelt.exit, %if.end6
  %40 = ptrtoint ptr %pushable_tasks1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %pushable_tasks1.i, align 4
  %cmp.i.i.i.not.i40 = icmp eq ptr %41, %pushable_tasks1.i
  br i1 %cmp.i.i.i.not.i40, label %cleanup, label %if.end.i42

if.end.i42:                                       ; preds = %if.end10
  %cpu.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 46
  %42 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %43
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %45, ptrtoint (ptr @rt_push_head to i32)
  %46 = inttoptr i32 %add.i to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %47 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i.i41 = icmp eq i32 %47, 0
  br i1 %tobool.not.i.i.i41, label %lockdep_assert_rq_held.exit.i.i, label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end.i42
  %core_enabled.i.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 81
  %48 = ptrtoint ptr %core_enabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %core_enabled.i.i.i.i, align 128
  %tobool.not.i.i.i.i = icmp eq i32 %49, 0
  br i1 %tobool.not.i.i.i.i, label %__rq_lockp.exit.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i
  %core.i.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 79
  %50 = ptrtoint ptr %core.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %core.i.i.i.i, align 8
  br label %__rq_lockp.exit.i.i.i

__rq_lockp.exit.i.i.i:                            ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %51, %if.then.i.i.i.i ], [ %rq, %land.rhs.i.i.i ]
  %dep_map.i.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i.i, i32 0, i32 4
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #17
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %do.end.i.i.i, label %lockdep_assert_rq_held.exit.i.i, !prof !95

do.end.i.i.i:                                     ; preds = %__rq_lockp.exit.i.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1309, i32 noundef 9, ptr noundef null) #17
  br label %lockdep_assert_rq_held.exit.i.i

lockdep_assert_rq_held.exit.i.i:                  ; preds = %do.end.i.i.i, %__rq_lockp.exit.i.i.i, %if.end.i42
  %52 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %46, align 4
  %tobool.not.i.i43 = icmp eq ptr %53, null
  br i1 %tobool.not.i.i43, label %lor.rhs.i.i, label %cleanup, !prof !97

lor.rhs.i.i:                                      ; preds = %lockdep_assert_rq_held.exit.i.i
  %balance_callback.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 39
  %54 = ptrtoint ptr %balance_callback.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %balance_callback.i.i, align 8
  %cmp.i.i44 = icmp eq ptr %55, @balance_push_callback
  br i1 %cmp.i.i44, label %cleanup, label %if.end.i.i, !prof !95

if.end.i.i:                                       ; preds = %lor.rhs.i.i
  %func3.i.i = getelementptr inbounds %struct.callback_head, ptr %46, i32 0, i32 1
  %56 = ptrtoint ptr %func3.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @push_rt_tasks, ptr %func3.i.i, align 4
  %57 = ptrtoint ptr %balance_callback.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %balance_callback.i.i, align 8
  %59 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %46, align 4
  store ptr %46, ptr %balance_callback.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %lor.rhs.i.i, %lockdep_assert_rq_held.exit.i.i, %if.end10, %dequeue_pushable_task.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @balance_rt(ptr noundef %rq, ptr nocapture noundef readonly %p, ptr nocapture noundef %rf) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %on_rq.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 19, i32 4
  %0 = ptrtoint ptr %on_rq.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %on_rq.i, align 4
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %online.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 47
  %2 = ptrtoint ptr %online.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %online.i, align 8
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end, label %need_pull_rt_task.exit

need_pull_rt_task.exit:                           ; preds = %land.lhs.true
  %highest_prio.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 15, i32 3
  %4 = ptrtoint ptr %highest_prio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %highest_prio.i, align 8
  %prio.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 13
  %6 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %prio.i, align 8
  %cmp.i = icmp sgt i32 %5, %7
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %need_pull_rt_task.exit
  %clock_update_flags.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 25
  %8 = ptrtoint ptr %clock_update_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %clock_update_flags.i, align 4
  %cmp.i13 = icmp ugt i32 %9, 2
  br i1 %cmp.i13, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  %clock_update_flags1.i = getelementptr inbounds %struct.rq_flags, ptr %rf, i32 0, i32 2
  %10 = ptrtoint ptr %clock_update_flags1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %clock_update_flags1.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then
  %core_enabled.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 81
  %11 = ptrtoint ptr %core_enabled.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %core_enabled.i.i, align 128
  %tobool.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i, label %rq_unpin_lock.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %core.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 79
  %13 = ptrtoint ptr %core.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %core.i.i, align 8
  br label %rq_unpin_lock.exit

rq_unpin_lock.exit:                               ; preds = %if.then.i.i, %if.end.i
  %retval.0.i.i = phi ptr [ %14, %if.then.i.i ], [ %rq, %if.end.i ]
  %dep_map.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i, i32 0, i32 4
  %cookie.i = getelementptr inbounds %struct.rq_flags, ptr %rf, i32 0, i32 1
  %15 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack.i = load i32, ptr %cookie.i, align 4
  %16 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  tail call void @lock_unpin_lock(ptr noundef %dep_map.i, [1 x i32] %16) #17
  tail call void @pull_rt_task(ptr noundef %rq)
  %17 = ptrtoint ptr %core_enabled.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %core_enabled.i.i, align 128
  %tobool.not.i.i15 = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i15, label %rq_repin_lock.exit, label %if.then.i.i17

if.then.i.i17:                                    ; preds = %rq_unpin_lock.exit
  %core.i.i16 = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 79
  %19 = ptrtoint ptr %core.i.i16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %core.i.i16, align 8
  br label %rq_repin_lock.exit

rq_repin_lock.exit:                               ; preds = %if.then.i.i17, %rq_unpin_lock.exit
  %retval.0.i.i18 = phi ptr [ %20, %if.then.i.i17 ], [ %rq, %rq_unpin_lock.exit ]
  %dep_map.i19 = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i18, i32 0, i32 4
  %21 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack.i21 = load i32, ptr %cookie.i, align 4
  %22 = insertvalue [1 x i32] undef, i32 %.unpack.i21, 0
  tail call void @lock_repin_lock(ptr noundef %dep_map.i19, [1 x i32] %22) #17
  %clock_update_flags.i22 = getelementptr inbounds %struct.rq_flags, ptr %rf, i32 0, i32 2
  %23 = ptrtoint ptr %clock_update_flags.i22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %clock_update_flags.i22, align 4
  %25 = ptrtoint ptr %clock_update_flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %clock_update_flags.i, align 4
  %or.i = or i32 %26, %24
  store i32 %or.i, ptr %clock_update_flags.i, align 4
  br label %if.end

if.end:                                           ; preds = %rq_repin_lock.exit, %need_pull_rt_task.exit, %land.lhs.true, %entry
  %stop.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 22
  %27 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %stop.i, align 16
  %tobool.not.i24 = icmp eq ptr %28, null
  br i1 %tobool.not.i24, label %lor.lhs.false, label %sched_stop_runnable.exit

sched_stop_runnable.exit:                         ; preds = %if.end
  %on_rq.i.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 12
  %29 = ptrtoint ptr %on_rq.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %on_rq.i.i, align 4
  %cmp.i.i = icmp eq i32 %30, 1
  br i1 %cmp.i.i, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sched_stop_runnable.exit, %if.end
  %dl_nr_running.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 1
  %31 = ptrtoint ptr %dl_nr_running.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dl_nr_running.i, align 8
  %cmp.i26.not = icmp eq i32 %32, 0
  br i1 %cmp.i26.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false
  %rt_queued.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 15, i32 8
  %33 = ptrtoint ptr %rt_queued.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rt_queued.i, align 4
  %cmp.i27 = icmp sgt i32 %34, 0
  %phi.cast = zext i1 %cmp.i27 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %sched_stop_runnable.exit
  %35 = phi i32 [ 1, %lor.lhs.false ], [ 1, %sched_stop_runnable.exit ], [ %phi.cast, %lor.rhs ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @select_task_rq_rt(ptr noundef %p, i32 noundef %cpu, i32 noundef %flags) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 12
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup41, label %do.body

do.body:                                          ; preds = %entry
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @runqueues to i32)
  %2 = inttoptr i32 %add to ptr
  %3 = tail call i32 @llvm.read_register.i32(metadata !85) #17
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !111
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %rcu_read_lock.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %do.body
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %rcu_read_lock.exit, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %rcu_read_lock.exit, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true2.i
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i, %land.lhs.true.i, %do.body
  %curr6 = getelementptr inbounds %struct.rq, ptr %2, i32 0, i32 20
  %7 = ptrtoint ptr %curr6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %curr6, align 8
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %prio.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %prio.i, align 8
  %cmp.i.i = icmp sgt i32 %10, 99
  br i1 %cmp.i.i, label %lor.lhs.false, label %land.rhs, !prof !97

land.rhs:                                         ; preds = %land.lhs.true
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 32
  %11 = ptrtoint ptr %nr_cpus_allowed to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_cpus_allowed, align 8
  %cmp = icmp slt i32 %12, 2
  br i1 %cmp, label %if.then15.thread, label %land.end

land.end:                                         ; preds = %land.rhs
  %prio11 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 13
  %13 = ptrtoint ptr %prio11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %prio11, align 8
  %cmp12.not = icmp sgt i32 %10, %14
  br i1 %cmp12.not, label %lor.lhs.false, label %if.then15.thread

lor.lhs.false:                                    ; preds = %land.end, %land.lhs.true, %rcu_read_lock.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_asym_cpucapacity, ptr blockaddress(@select_task_rq_rt, %if.end.i)) #17
          to label %out_unlock [label %if.end.i], !srcloc !107

if.end.i:                                         ; preds = %lor.lhs.false
  %call3.i = tail call i32 @uclamp_eff_value(ptr noundef %p, i32 noundef 0) #17
  %call4.i = tail call i32 @uclamp_eff_value(ptr noundef %p, i32 noundef 1) #17
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %add.i.i = add i32 %16, ptrtoint (ptr @runqueues to i32)
  %17 = inttoptr i32 %add.i.i to ptr
  %cpu_capacity_orig.i.i = getelementptr inbounds %struct.rq, ptr %17, i32 0, i32 38
  %18 = ptrtoint ptr %cpu_capacity_orig.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu_capacity_orig.i.i, align 4
  %20 = tail call i32 @llvm.umin.i32(i32 %call3.i, i32 %call4.i) #17
  %cmp7.i.not = icmp ult i32 %19, %20
  br i1 %cmp7.i.not, label %if.then15, label %out_unlock

if.then15.thread:                                 ; preds = %land.end, %land.rhs
  %call1677 = tail call fastcc i32 @find_lowest_rq(ptr noundef %p)
  %cmp19.not78 = icmp eq i32 %call1677, -1
  br i1 %cmp19.not78, label %out_unlock, label %land.lhs.true25

if.then15:                                        ; preds = %if.end.i
  %call16 = tail call fastcc i32 @find_lowest_rq(ptr noundef %p)
  %cmp19.not = icmp eq i32 %call16, -1
  br i1 %cmp19.not, label %out_unlock, label %land.lhs.true20

land.lhs.true20:                                  ; preds = %if.then15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_asym_cpucapacity, ptr blockaddress(@select_task_rq_rt, %if.end.i64)) #17
          to label %land.lhs.true25 [label %if.end.i64], !srcloc !107

if.end.i64:                                       ; preds = %land.lhs.true20
  %call3.i58 = tail call i32 @uclamp_eff_value(ptr noundef %p, i32 noundef 0) #17
  %call4.i59 = tail call i32 @uclamp_eff_value(ptr noundef %p, i32 noundef 1) #17
  %arrayidx.i.i60 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call16
  %21 = ptrtoint ptr %arrayidx.i.i60 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i60, align 4
  %add.i.i61 = add i32 %22, ptrtoint (ptr @runqueues to i32)
  %23 = inttoptr i32 %add.i.i61 to ptr
  %cpu_capacity_orig.i.i62 = getelementptr inbounds %struct.rq, ptr %23, i32 0, i32 38
  %24 = ptrtoint ptr %cpu_capacity_orig.i.i62 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu_capacity_orig.i.i62, align 4
  %26 = tail call i32 @llvm.umin.i32(i32 %call3.i58, i32 %call4.i59) #17
  %cmp7.i63.not83 = icmp ult i32 %25, %26
  br i1 %cmp7.i63.not83, label %out_unlock, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %if.end.i64, %land.lhs.true20, %if.then15.thread
  %call168082 = phi i32 [ %call1677, %if.then15.thread ], [ %call16, %if.end.i64 ], [ %call16, %land.lhs.true20 ]
  %prio26 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 13
  %27 = ptrtoint ptr %prio26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %prio26, align 8
  %arrayidx34 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call168082
  %29 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx34, align 4
  %add35 = add i32 %30, ptrtoint (ptr @runqueues to i32)
  %31 = inttoptr i32 %add35 to ptr
  %highest_prio = getelementptr inbounds %struct.rq, ptr %31, i32 0, i32 15, i32 3
  %32 = ptrtoint ptr %highest_prio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %highest_prio, align 8
  %cmp37 = icmp slt i32 %28, %33
  %spec.select = select i1 %cmp37, i32 %call168082, i32 %cpu
  br label %out_unlock

out_unlock:                                       ; preds = %land.lhs.true25, %if.end.i64, %if.then15, %if.then15.thread, %if.end.i, %lor.lhs.false
  %cpu.addr.2 = phi i32 [ %cpu, %if.end.i ], [ %cpu, %lor.lhs.false ], [ %spec.select, %land.lhs.true25 ], [ %cpu, %if.end.i64 ], [ %cpu, %if.then15.thread ], [ %cpu, %if.then15 ]
  %call.i67 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i67, label %rcu_read_unlock.exit, label %land.lhs.true.i70

land.lhs.true.i70:                                ; preds = %out_unlock
  %call1.i68 = tail call i32 @debug_lockdep_rcu_enabled() #17
  %tobool.not.i69 = icmp eq i32 %call1.i68, 0
  br i1 %tobool.not.i69, label %rcu_read_unlock.exit, label %land.lhs.true2.i72

land.lhs.true2.i72:                               ; preds = %land.lhs.true.i70
  %.b4.i71 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i71, label %rcu_read_unlock.exit, label %if.then.i73

if.then.i73:                                      ; preds = %land.lhs.true2.i72
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i73, %land.lhs.true2.i72, %land.lhs.true.i70, %out_unlock
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !112
  %34 = tail call i32 @llvm.read_register.i32(metadata !85) #17
  %and.i.i.i.i.i74 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i74 to ptr
  %preempt_count.i.i.i.i75 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i75, align 4
  %sub.i.i.i = add i32 %37, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i75, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  br label %cleanup41

cleanup41:                                        ; preds = %rcu_read_unlock.exit, %entry
  %retval.0 = phi i32 [ %cpu.addr.2, %rcu_read_unlock.exit ], [ %cpu, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pick_task_rt(ptr nocapture noundef readonly %rq) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %rt_queued.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 15, i32 8
  %0 = ptrtoint ptr %rt_queued.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rt_queued.i, align 4
  %cmp.i = icmp sgt i32 %1, 0
  br i1 %cmp.i, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %rt.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 15
  br label %do.body.i

do.body.i:                                        ; preds = %do.end10.i, %if.end
  %rt_rq.0.i = phi ptr [ %rt.i, %if.end ], [ %17, %do.end10.i ]
  %2 = ptrtoint ptr %rt_rq.0.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rt_rq.0.i, align 4
  %tobool.not.i.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %sched_find_first_bit.exit.thread.i.i

sched_find_first_bit.exit.thread.i.i:             ; preds = %do.body.i
  %4 = tail call i32 @llvm.cttz.i32(i32 %3, i1 true) #17, !range !108
  br label %pick_next_rt_entity.exit.i

if.end.i.i.i:                                     ; preds = %do.body.i
  %arrayidx2.i.i.i = getelementptr i32, ptr %rt_rq.0.i, i32 1
  %5 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx2.i.i.i, align 4
  %tobool3.not.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool3.not.i.i.i, label %if.end7.i.i.i, label %if.then4.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  %7 = tail call i32 @llvm.cttz.i32(i32 %6, i1 true) #17, !range !108
  %add.i.i.i = or i32 %7, 32
  br label %sched_find_first_bit.exit.i.i

if.end7.i.i.i:                                    ; preds = %if.end.i.i.i
  %arrayidx8.i.i.i = getelementptr i32, ptr %rt_rq.0.i, i32 2
  %8 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx8.i.i.i, align 4
  %tobool9.not.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool9.not.i.i.i, label %if.end14.i.i.i, label %if.then10.i.i.i

if.then10.i.i.i:                                  ; preds = %if.end7.i.i.i
  %10 = tail call i32 @llvm.cttz.i32(i32 %9, i1 true) #17, !range !108
  %add13.i.i.i = or i32 %10, 64
  br label %sched_find_first_bit.exit.i.i

if.end14.i.i.i:                                   ; preds = %if.end7.i.i.i
  %arrayidx15.i.i.i = getelementptr i32, ptr %rt_rq.0.i, i32 3
  %11 = ptrtoint ptr %arrayidx15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx15.i.i.i, align 4
  %13 = tail call i32 @llvm.cttz.i32(i32 %12, i1 false) #17, !range !108
  %add17.i.i.i = add nuw nsw i32 %13, 96
  br label %sched_find_first_bit.exit.i.i

sched_find_first_bit.exit.i.i:                    ; preds = %if.end14.i.i.i, %if.then10.i.i.i, %if.then4.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then4.i.i.i ], [ %add13.i.i.i, %if.then10.i.i.i ], [ %add17.i.i.i, %if.end14.i.i.i ]
  %cmp.i.i = icmp sgt i32 %retval.0.i.i.i, 99
  br i1 %cmp.i.i, label %do.body2.i.i, label %pick_next_rt_entity.exit.i, !prof !95

do.body2.i.i:                                     ; preds = %sched_find_first_bit.exit.i.i
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/rt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1742, 0\0A.popsection", ""() #17, !srcloc !109
  unreachable

pick_next_rt_entity.exit.i:                       ; preds = %sched_find_first_bit.exit.i.i, %sched_find_first_bit.exit.thread.i.i
  %retval.0.i3.i.i = phi i32 [ %4, %sched_find_first_bit.exit.thread.i.i ], [ %retval.0.i.i.i, %sched_find_first_bit.exit.i.i ]
  %queue8.i.i = getelementptr inbounds %struct.rt_prio_array, ptr %rt_rq.0.i, i32 0, i32 1
  %add.ptr.i.i = getelementptr %struct.list_head, ptr %queue8.i.i, i32 %retval.0.i3.i.i
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %do.body5.i, label %do.end10.i, !prof !95

do.body5.i:                                       ; preds = %pick_next_rt_entity.exit.i
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/rt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1757, 0\0A.popsection", ""() #17, !srcloc !110
  unreachable

do.end10.i:                                       ; preds = %pick_next_rt_entity.exit.i
  %my_q.i.i = getelementptr inbounds %struct.sched_rt_entity, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %my_q.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %my_q.i.i, align 4
  %tobool13.not.i = icmp eq ptr %17, null
  br i1 %tobool13.not.i, label %_pick_next_task_rt.exit, label %do.body.i

_pick_next_task_rt.exit:                          ; preds = %do.end10.i
  %add.ptr.i21.i = getelementptr i8, ptr %15, i32 -384
  br label %cleanup

cleanup:                                          ; preds = %_pick_next_task_rt.exit, %entry
  %retval.0 = phi ptr [ %add.ptr.i21.i, %_pick_next_task_rt.exit ], [ null, %entry ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @task_woken_rt(ptr noundef %rq, ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %on_cpu.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 5
  %0 = ptrtoint ptr %on_cpu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %on_cpu.i, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %curr = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 20
  %2 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %curr, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stack.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %8 = and i32 %7, 2
  %tobool2.not = icmp eq i32 %8, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 32
  %9 = ptrtoint ptr %nr_cpus_allowed to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_cpus_allowed, align 8
  %cmp = icmp sgt i32 %10, 1
  br i1 %cmp, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true3
  %prio.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 13
  %11 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %prio.i, align 8
  %cmp.i.i = icmp sgt i32 %12, 99
  br i1 %cmp.i.i, label %if.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true4
  %nr_cpus_allowed12 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 32
  %13 = ptrtoint ptr %nr_cpus_allowed12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr_cpus_allowed12, align 8
  %cmp13 = icmp slt i32 %14, 2
  br i1 %cmp13, label %while.cond.i.preheader, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %prio15 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 13
  %15 = ptrtoint ptr %prio15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %prio15, align 8
  %cmp16.not = icmp sgt i32 %12, %16
  br i1 %cmp16.not, label %if.end, label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %lor.rhs, %land.rhs
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %while.cond.i.preheader
  %call.i = tail call fastcc i32 @push_rt_task(ptr noundef %rq, i1 noundef zeroext false) #17
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %while.cond.i

if.end:                                           ; preds = %while.cond.i, %lor.rhs, %land.lhs.true4, %land.lhs.true3, %land.lhs.true, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_cpus_allowed_common(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rq_online_rt(ptr nocapture noundef readonly %rq) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %overloaded = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 15, i32 6
  %0 = ptrtoint ptr %overloaded to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %overloaded, align 8
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %online.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 47
  %2 = ptrtoint ptr %online.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %online.i, align 8
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end, label %if.end.i

if.end.i:                                         ; preds = %if.then
  %cpu.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 46
  %4 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu.i, align 4
  %rd.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 35
  %6 = ptrtoint ptr %rd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rd.i, align 8
  %rto_mask.i = getelementptr inbounds %struct.root_domain, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %rto_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rto_mask.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i = icmp ugt i32 %10, %5
  br i1 %cmp.not.i.i.i.i, label %cpumask_set_cpu.exit.i, label %land.rhs.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %if.end.i
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %cpumask_set_cpu.exit.i, label %if.then.i.i.i.i, !prof !97

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpumask_set_cpu.exit.i

cpumask_set_cpu.exit.i:                           ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i, %if.end.i
  tail call void @_set_bit(i32 noundef %5, ptr noundef %9) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !113
  %11 = ptrtoint ptr %rd.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rd.i, align 8
  %rto_count.i = getelementptr inbounds %struct.root_domain, ptr %12, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rto_count.i, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %rto_count.i, i32 1, i32 3, i32 1) #17
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rto_count.i, ptr %rto_count.i, i32 1, ptr elementtype(i32) %rto_count.i) #17, !srcloc !114
  br label %if.end

if.end:                                           ; preds = %cpumask_set_cpu.exit.i, %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scheduler_running to i32))
  %14 = load i32, ptr @scheduler_running, align 4
  %tobool.not.i7 = icmp eq i32 %14, 0
  br i1 %tobool.not.i7, label %__enable_runtime.exit, label %for.cond.preheader.i, !prof !95

for.cond.preheader.i:                             ; preds = %if.end
  %cpu.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 46
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.backedge, %for.cond.preheader.i
  %tg.addr.0.i.i = phi ptr [ getelementptr (%struct.list_head, ptr @task_groups, i32 -50, i32 0), %for.cond.preheader.i ], [ %add.ptr.i.i, %do.body.i.i.backedge ]
  %list.i.i = getelementptr inbounds %struct.task_group, ptr %tg.addr.0.i.i, i32 0, i32 11
  %15 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %list.i.i, align 16
  %cmp.not.i.i = icmp eq ptr %16, @task_groups
  br i1 %cmp.not.i.i, label %__enable_runtime.exit, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %do.body.i.i
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 -400
  %autogroup.i.i.i = getelementptr i8, ptr %16, i32 28
  %17 = ptrtoint ptr %autogroup.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %autogroup.i.i.i, align 4
  %tobool.i.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.i.not.i.i, label %next_task_group.exit.i, label %do.body.i.i.backedge

do.body.i.i.backedge:                             ; preds = %for.body.i, %land.rhs.i.i
  br label %do.body.i.i

next_task_group.exit.i:                           ; preds = %land.rhs.i.i
  %tobool4.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool4.not.i, label %__enable_runtime.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %next_task_group.exit.i
  %rt_rq5.i = getelementptr i8, ptr %16, i32 -136
  %19 = ptrtoint ptr %rt_rq5.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rt_rq5.i, align 8
  %21 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %20, i32 %22
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %tobool7.not.i = icmp eq ptr %24, null
  br i1 %tobool7.not.i, label %__enable_runtime.exit, label %for.body.i

for.body.i:                                       ; preds = %land.rhs.i
  %tg.i.i = getelementptr inbounds %struct.rt_rq, ptr %24, i32 0, i32 15
  %25 = ptrtoint ptr %tg.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tg.i.i, align 4
  %rt_bandwidth.i.i = getelementptr inbounds %struct.task_group, ptr %26, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %rt_bandwidth.i.i) #17
  %rt_runtime_lock9.i = getelementptr inbounds %struct.rt_rq, ptr %24, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %rt_runtime_lock9.i) #17
  %rt_runtime.i = getelementptr inbounds %struct.task_group, ptr %26, i32 0, i32 9, i32 2
  %27 = ptrtoint ptr %rt_runtime.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %rt_runtime.i, align 8
  %rt_runtime10.i = getelementptr inbounds %struct.rt_rq, ptr %24, i32 0, i32 11
  %29 = ptrtoint ptr %rt_runtime10.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %rt_runtime10.i, align 8
  %rt_time.i = getelementptr inbounds %struct.rt_rq, ptr %24, i32 0, i32 10
  %30 = ptrtoint ptr %rt_time.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 0, ptr %rt_time.i, align 8
  %rt_throttled.i = getelementptr inbounds %struct.rt_rq, ptr %24, i32 0, i32 9
  %31 = ptrtoint ptr %rt_throttled.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %rt_throttled.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %rt_runtime_lock9.i) #17
  tail call void @_raw_spin_unlock(ptr noundef %rt_bandwidth.i.i) #17
  br label %do.body.i.i.backedge

__enable_runtime.exit:                            ; preds = %land.rhs.i, %next_task_group.exit.i, %do.body.i.i, %if.end
  %rd = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 35
  %32 = ptrtoint ptr %rd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rd, align 8
  %cpupri = getelementptr inbounds %struct.root_domain, ptr %33, i32 0, i32 19
  %cpu = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 46
  %34 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpu, align 4
  %highest_prio = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 15, i32 3
  %36 = ptrtoint ptr %highest_prio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %highest_prio, align 8
  tail call void @cpupri_set(ptr noundef %cpupri, i32 noundef %35, i32 noundef %37) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rq_offline_rt(ptr nocapture noundef readonly %rq) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %overloaded = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 15, i32 6
  %0 = ptrtoint ptr %overloaded to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %overloaded, align 8
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %online.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 47
  %2 = ptrtoint ptr %online.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %online.i, align 8
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end, label %if.end.i

if.end.i:                                         ; preds = %if.then
  %rd.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 35
  %4 = ptrtoint ptr %rd.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rd.i, align 8
  %rto_count.i = getelementptr inbounds %struct.root_domain, ptr %5, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rto_count.i, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %rto_count.i, i32 1, i32 3, i32 1) #17
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rto_count.i, ptr %rto_count.i, i32 1, ptr elementtype(i32) %rto_count.i) #17, !srcloc !115
  %cpu.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 46
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %9 = ptrtoint ptr %rd.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rd.i, align 8
  %rto_mask.i = getelementptr inbounds %struct.root_domain, ptr %10, i32 0, i32 18
  %11 = ptrtoint ptr %rto_mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rto_mask.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i = icmp ugt i32 %13, %8
  br i1 %cmp.not.i.i.i.i, label %cpumask_clear_cpu.exit.i, label %land.rhs.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %if.end.i
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %cpumask_clear_cpu.exit.i, label %if.then.i.i.i.i, !prof !97

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpumask_clear_cpu.exit.i

cpumask_clear_cpu.exit.i:                         ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i, %if.end.i
  tail call void @_clear_bit(i32 noundef %8, ptr noundef %12) #17
  br label %if.end

if.end:                                           ; preds = %cpumask_clear_cpu.exit.i, %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scheduler_running to i32))
  %14 = load i32, ptr @scheduler_running, align 4
  %tobool.not.i5 = icmp eq i32 %14, 0
  br i1 %tobool.not.i5, label %__disable_runtime.exit, label %for.cond.preheader.i, !prof !95

for.cond.preheader.i:                             ; preds = %if.end
  %rd1.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 35
  %15 = ptrtoint ptr %rd1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rd1.i, align 8
  %cpu.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 46
  %span.i = getelementptr inbounds %struct.root_domain, ptr %16, i32 0, i32 3
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.backedge, %for.cond.preheader.i
  %tg.addr.0.i.i = phi ptr [ getelementptr (%struct.list_head, ptr @task_groups, i32 -50, i32 0), %for.cond.preheader.i ], [ %add.ptr.i.i, %do.body.i.i.backedge ]
  %list.i.i = getelementptr inbounds %struct.task_group, ptr %tg.addr.0.i.i, i32 0, i32 11
  %17 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %list.i.i, align 16
  %cmp.not.i.i = icmp eq ptr %18, @task_groups
  br i1 %cmp.not.i.i, label %__disable_runtime.exit, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %do.body.i.i
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 -400
  %autogroup.i.i.i = getelementptr i8, ptr %18, i32 28
  %19 = ptrtoint ptr %autogroup.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %autogroup.i.i.i, align 4
  %tobool.i.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.i.not.i.i, label %next_task_group.exit.i, label %do.body.i.i.backedge

do.body.i.i.backedge:                             ; preds = %balanced.i, %land.rhs.i.i
  br label %do.body.i.i

next_task_group.exit.i:                           ; preds = %land.rhs.i.i
  %tobool5.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool5.not.i, label %__disable_runtime.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %next_task_group.exit.i
  %rt_rq6.i = getelementptr i8, ptr %18, i32 -136
  %21 = ptrtoint ptr %rt_rq6.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rt_rq6.i, align 8
  %23 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %22, i32 %24
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %tobool8.not.i = icmp eq ptr %26, null
  br i1 %tobool8.not.i, label %__disable_runtime.exit, label %for.body.i

for.body.i:                                       ; preds = %land.rhs.i
  %tg.i.i = getelementptr inbounds %struct.rt_rq, ptr %26, i32 0, i32 15
  %27 = ptrtoint ptr %tg.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tg.i.i, align 4
  %rt_bandwidth.i.i = getelementptr inbounds %struct.task_group, ptr %28, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %rt_bandwidth.i.i) #17
  %rt_runtime_lock10.i = getelementptr inbounds %struct.rt_rq, ptr %26, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %rt_runtime_lock10.i) #17
  %rt_runtime.i = getelementptr inbounds %struct.rt_rq, ptr %26, i32 0, i32 11
  %29 = ptrtoint ptr %rt_runtime.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %rt_runtime.i, align 8
  %cmp.i = icmp eq i64 %30, -1
  br i1 %cmp.i, label %balanced.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %rt_runtime12.i = getelementptr inbounds %struct.task_group, ptr %28, i32 0, i32 9, i32 2
  %31 = ptrtoint ptr %rt_runtime12.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %rt_runtime12.i, align 8
  %cmp13.i = icmp eq i64 %30, %32
  br i1 %cmp13.i, label %balanced.i, label %if.end15.i

if.end15.i:                                       ; preds = %lor.lhs.false.i
  tail call void @_raw_spin_unlock(ptr noundef %rt_runtime_lock10.i) #17
  %33 = ptrtoint ptr %rt_runtime12.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %rt_runtime12.i, align 8
  %35 = ptrtoint ptr %rt_runtime.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %rt_runtime.i, align 8
  %sub.i = sub i64 %34, %36
  %37 = ptrtoint ptr %span.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %span.i, align 8
  %call20129.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %38) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %39 = load i32, ptr @nr_cpu_ids, align 4
  %cmp21130.i = icmp ult i32 %call20129.i, %39
  br i1 %cmp21130.i, label %for.body22.lr.ph.i, label %for.end.i

for.body22.lr.ph.i:                               ; preds = %if.end15.i
  %rt_rq.i.i = getelementptr %struct.task_group, ptr %28, i32 0, i32 8
  br label %for.body22.i

for.body22.i:                                     ; preds = %cleanup.i, %for.body22.lr.ph.i
  %call20132.i = phi i32 [ %call20129.i, %for.body22.lr.ph.i ], [ %call20.i, %cleanup.i ]
  %want.0131.i = phi i64 [ %sub.i, %for.body22.lr.ph.i ], [ %want.2.i, %cleanup.i ]
  %40 = ptrtoint ptr %rt_rq.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rt_rq.i.i, align 8
  %arrayidx.i.i = getelementptr ptr, ptr %41, i32 %call20132.i
  %42 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp25.i = icmp eq ptr %43, %26
  br i1 %cmp25.i, label %cleanup.i, label %lor.lhs.false26.i

lor.lhs.false26.i:                                ; preds = %for.body22.i
  %rt_runtime27.i = getelementptr inbounds %struct.rt_rq, ptr %43, i32 0, i32 11
  %44 = ptrtoint ptr %rt_runtime27.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %rt_runtime27.i, align 8
  %cmp28.i = icmp eq i64 %45, -1
  br i1 %cmp28.i, label %cleanup.i, label %if.end30.i

if.end30.i:                                       ; preds = %lor.lhs.false26.i
  %rt_runtime_lock31.i = getelementptr inbounds %struct.rt_rq, ptr %43, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %rt_runtime_lock31.i) #17
  %cmp32.i = icmp sgt i64 %want.0131.i, 0
  %46 = ptrtoint ptr %rt_runtime27.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %rt_runtime27.i, align 8
  br i1 %cmp32.i, label %if.end43.i, label %if.end43.thread.i

if.end43.thread.i:                                ; preds = %if.end30.i
  %sub41.i = sub i64 %47, %want.0131.i
  %48 = ptrtoint ptr %rt_runtime27.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %sub41.i, ptr %rt_runtime27.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %rt_runtime_lock31.i) #17
  br label %for.end.thread.i

if.end43.i:                                       ; preds = %if.end30.i
  %49 = tail call i64 @llvm.smin.i64(i64 %47, i64 %want.0131.i) #17
  %sub38.i = sub i64 %47, %49
  %50 = ptrtoint ptr %rt_runtime27.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %sub38.i, ptr %rt_runtime27.i, align 8
  %sub39.i = sub i64 %want.0131.i, %49
  tail call void @_raw_spin_unlock(ptr noundef %rt_runtime_lock31.i) #17
  %tobool45.not.i = icmp eq i64 %sub39.i, 0
  br i1 %tobool45.not.i, label %for.end.thread.i, label %cleanup.i

for.end.thread.i:                                 ; preds = %if.end43.i, %if.end43.thread.i
  tail call void @_raw_spin_lock(ptr noundef %rt_runtime_lock10.i) #17
  br label %balanced.i

cleanup.i:                                        ; preds = %if.end43.i, %lor.lhs.false26.i, %for.body22.i
  %want.2.i = phi i64 [ %want.0131.i, %lor.lhs.false26.i ], [ %want.0131.i, %for.body22.i ], [ %sub39.i, %if.end43.i ]
  %51 = ptrtoint ptr %span.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %span.i, align 8
  %call20.i = tail call i32 @cpumask_next(i32 noundef %call20132.i, ptr noundef %52) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %53 = load i32, ptr @nr_cpu_ids, align 4
  %cmp21.i = icmp ult i32 %call20.i, %53
  br i1 %cmp21.i, label %for.body22.i, label %for.end.i

for.end.i:                                        ; preds = %cleanup.i, %if.end15.i
  %want.0.lcssa.i = phi i64 [ %sub.i, %if.end15.i ], [ %want.2.i, %cleanup.i ]
  tail call void @_raw_spin_lock(ptr noundef %rt_runtime_lock10.i) #17
  %tobool50.not.i = icmp eq i64 %want.0.lcssa.i, 0
  br i1 %tobool50.not.i, label %balanced.i, label %do.body58.i, !prof !97

do.body58.i:                                      ; preds = %for.end.i
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/rt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 810, 0\0A.popsection", ""() #17, !srcloc !116
  unreachable

balanced.i:                                       ; preds = %for.end.i, %for.end.thread.i, %lor.lhs.false.i, %for.body.i
  %54 = ptrtoint ptr %rt_runtime.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 -1, ptr %rt_runtime.i, align 8
  %rt_throttled.i = getelementptr inbounds %struct.rt_rq, ptr %26, i32 0, i32 9
  %55 = ptrtoint ptr %rt_throttled.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %rt_throttled.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %rt_runtime_lock10.i) #17
  tail call void @_raw_spin_unlock(ptr noundef %rt_bandwidth.i.i) #17
  tail call fastcc void @sched_rt_rq_enqueue(ptr noundef nonnull %26) #17
  br label %do.body.i.i.backedge

__disable_runtime.exit:                           ; preds = %land.rhs.i, %next_task_group.exit.i, %do.body.i.i, %if.end
  %rd = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 35
  %56 = ptrtoint ptr %rd to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rd, align 8
  %cpupri = getelementptr inbounds %struct.root_domain, ptr %57, i32 0, i32 19
  %cpu = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 46
  %58 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cpu, align 4
  tail call void @cpupri_set(ptr noundef %cpupri, i32 noundef %59, i32 noundef -1) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @find_lock_lowest_rq(ptr noundef %task, ptr noundef %rq) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu2 = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 46
  %prio = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 13
  %stack.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 1
  %cpus_mask = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 35
  %on_cpu.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 5
  %on_rq.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 12
  %core_enabled.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 81
  %core.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 79
  br label %for.body

for.body:                                         ; preds = %double_unlock_balance.exit, %entry
  %tries.079 = phi i32 [ 0, %entry ], [ %inc, %double_unlock_balance.exit ]
  %call = tail call fastcc i32 @find_lowest_rq(ptr noundef %task)
  %cmp1 = icmp eq i32 %call, -1
  br i1 %cmp1, label %for.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %0 = ptrtoint ptr %cpu2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu2, align 4
  %cmp3 = icmp eq i32 %call, %1
  br i1 %cmp3, label %for.end, label %do.body

do.body:                                          ; preds = %lor.lhs.false
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, ptrtoint (ptr @runqueues to i32)
  %4 = inttoptr i32 %add to ptr
  %highest_prio = getelementptr inbounds %struct.rq, ptr %4, i32 0, i32 15, i32 3
  %5 = ptrtoint ptr %highest_prio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %highest_prio, align 8
  %7 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %prio, align 8
  %cmp5.not = icmp sgt i32 %6, %8
  br i1 %cmp5.not, label %if.end7, label %for.end

if.end7:                                          ; preds = %do.body
  %call8 = tail call fastcc i32 @double_lock_balance(ptr noundef %rq, ptr noundef %4)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end38, label %do.body10

do.body10:                                        ; preds = %if.end7
  %9 = ptrtoint ptr %stack.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stack.i, align 4
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %cpu.i, align 4
  %arrayidx18 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx18, align 4
  %add19 = add i32 %14, ptrtoint (ptr @runqueues to i32)
  %15 = inttoptr i32 %add19 to ptr
  %cmp20.not = icmp eq ptr %15, %rq
  br i1 %cmp20.not, label %lor.lhs.false21, label %if.then36, !prof !97

lor.lhs.false21:                                  ; preds = %do.body10
  %cpu22 = getelementptr inbounds %struct.rq, ptr %4, i32 0, i32 46
  %16 = ptrtoint ptr %cpu22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu22, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %18 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i = icmp ugt i32 %18, %17
  br i1 %cmp.not.i.i.i, label %cpumask_test_cpu.exit, label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %lor.lhs.false21
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %cpumask_test_cpu.exit, label %if.then.i.i.i, !prof !97

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i, %lor.lhs.false21
  %div3.i.i = lshr i32 %17, 5
  %arrayidx.i.i = getelementptr i32, ptr %cpus_mask, i32 %div3.i.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %17, 31
  %21 = shl nuw i32 1, %and.i.i
  %22 = and i32 %20, %21
  %tobool24.not = icmp eq i32 %22, 0
  br i1 %tobool24.not, label %if.then36, label %lor.lhs.false25, !prof !95

lor.lhs.false25:                                  ; preds = %cpumask_test_cpu.exit
  %23 = ptrtoint ptr %on_cpu.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %on_cpu.i, align 4
  %tobool27.not = icmp eq i32 %24, 0
  br i1 %tobool27.not, label %lor.lhs.false28, label %if.then36, !prof !97

lor.lhs.false28:                                  ; preds = %lor.lhs.false25
  %25 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %prio, align 8
  %cmp.i.i = icmp sgt i32 %26, 99
  br i1 %cmp.i.i, label %if.then36, label %lor.rhs, !prof !95

lor.rhs:                                          ; preds = %lor.lhs.false28
  %27 = ptrtoint ptr %on_rq.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %on_rq.i, align 4
  %cmp.i.not = icmp eq i32 %28, 1
  br i1 %cmp.i.not, label %if.end38, label %if.then36, !prof !97

if.then36:                                        ; preds = %lor.rhs, %lor.lhs.false28, %lor.lhs.false25, %cpumask_test_cpu.exit, %do.body10
  %29 = inttoptr i32 %add to ptr
  tail call fastcc void @double_unlock_balance(ptr noundef %rq, ptr noundef %29)
  br label %for.end

if.end38:                                         ; preds = %lor.rhs, %if.end7
  %30 = ptrtoint ptr %highest_prio to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %highest_prio, align 8
  %32 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %prio, align 8
  %cmp43 = icmp sgt i32 %31, %33
  br i1 %cmp43, label %for.end.loopexit.split.loop.exit, label %if.end45

if.end45:                                         ; preds = %if.end38
  %34 = ptrtoint ptr %core_enabled.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %core_enabled.i.i, align 128
  %tobool.not.i.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i.i, label %__rq_lockp.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end45
  %36 = ptrtoint ptr %core.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %core.i.i, align 8
  br label %__rq_lockp.exit.i

__rq_lockp.exit.i:                                ; preds = %if.then.i.i, %if.end45
  %retval.0.i.i = phi ptr [ %37, %if.then.i.i ], [ %rq, %if.end45 ]
  %core_enabled.i5.i = getelementptr inbounds %struct.rq, ptr %4, i32 0, i32 81
  %38 = ptrtoint ptr %core_enabled.i5.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %core_enabled.i5.i, align 128
  %tobool.not.i6.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i6.i, label %__rq_lockp.exit10.i, label %if.then.i8.i

if.then.i8.i:                                     ; preds = %__rq_lockp.exit.i
  %core.i7.i = getelementptr inbounds %struct.rq, ptr %4, i32 0, i32 79
  %40 = ptrtoint ptr %core.i7.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %core.i7.i, align 8
  br label %__rq_lockp.exit10.i

__rq_lockp.exit10.i:                              ; preds = %if.then.i8.i, %__rq_lockp.exit.i
  %retval.0.i9.i = phi ptr [ %41, %if.then.i8.i ], [ %4, %__rq_lockp.exit.i ]
  %cmp.not.i = icmp eq ptr %retval.0.i.i, %retval.0.i9.i
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %__rq_lockp.exit10.i
  tail call void @raw_spin_rq_unlock(ptr noundef %4) #17
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %__rq_lockp.exit10.i
  %42 = ptrtoint ptr %core_enabled.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %core_enabled.i.i, align 128
  %tobool.not.i12.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i12.i, label %double_unlock_balance.exit, label %if.then.i14.i

if.then.i14.i:                                    ; preds = %if.end.i
  %44 = ptrtoint ptr %core.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %core.i.i, align 8
  br label %double_unlock_balance.exit

double_unlock_balance.exit:                       ; preds = %if.then.i14.i, %if.end.i
  %retval.0.i15.i = phi ptr [ %45, %if.then.i14.i ], [ %rq, %if.end.i ]
  %dep_map.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i15.i, i32 0, i32 4
  %46 = tail call ptr @llvm.returnaddress(i32 0) #17
  %47 = ptrtoint ptr %46 to i32
  %name.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i15.i, i32 0, i32 4, i32 2
  %48 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %name.i.i, align 4
  %50 = ptrtoint ptr %dep_map.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dep_map.i, align 4
  tail call void @lock_set_class(ptr noundef %dep_map.i, ptr noundef %49, ptr noundef %51, i32 noundef 0, i32 noundef %47) #17
  %inc = add nuw nsw i32 %tries.079, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %for.body

for.end.loopexit.split.loop.exit:                 ; preds = %if.end38
  %52 = inttoptr i32 %add to ptr
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit.split.loop.exit, %double_unlock_balance.exit, %if.then36, %do.body, %lor.lhs.false, %for.body
  %lowest_rq.1 = phi ptr [ null, %if.then36 ], [ %52, %for.end.loopexit.split.loop.exit ], [ null, %double_unlock_balance.exit ], [ null, %lor.lhs.false ], [ null, %for.body ], [ null, %do.body ]
  ret ptr %lowest_rq.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @task_tick_rt(ptr noundef %rq, ptr noundef %p, i32 noundef %queued) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %rt = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 19
  tail call void @update_curr_rt(ptr noundef %rq)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i.i, label %lockdep_assert_rq_held.exit.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %entry
  %core_enabled.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 81
  %1 = ptrtoint ptr %core_enabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %core_enabled.i.i.i, align 128
  %tobool.not.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i, label %__rq_lockp.exit.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  %core.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 79
  %3 = ptrtoint ptr %core.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %core.i.i.i, align 8
  br label %__rq_lockp.exit.i.i

__rq_lockp.exit.i.i:                              ; preds = %if.then.i.i.i, %land.rhs.i.i
  %retval.0.i.i.i = phi ptr [ %4, %if.then.i.i.i ], [ %rq, %land.rhs.i.i ]
  %dep_map.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i, i32 0, i32 4
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #17
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %lockdep_assert_rq_held.exit.i, !prof !95

do.end.i.i:                                       ; preds = %__rq_lockp.exit.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1309, i32 noundef 9, ptr noundef null) #17
  br label %lockdep_assert_rq_held.exit.i

lockdep_assert_rq_held.exit.i:                    ; preds = %do.end.i.i, %__rq_lockp.exit.i.i, %entry
  %clock_update_flags.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 25
  %5 = ptrtoint ptr %clock_update_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %clock_update_flags.i.i, align 4
  %cmp.i.i = icmp ult i32 %6, 2
  br i1 %cmp.i.i, label %land.rhs.i4.i, label %rq_clock_pelt.exit

land.rhs.i4.i:                                    ; preds = %lockdep_assert_rq_held.exit.i
  %.b37.i.i = load i1, ptr @assert_clock_updated.__already_done, align 1
  br i1 %.b37.i.i, label %rq_clock_pelt.exit, label %if.then.i.i, !prof !97

if.then.i.i:                                      ; preds = %land.rhs.i4.i
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #17
  br label %rq_clock_pelt.exit

rq_clock_pelt.exit:                               ; preds = %if.then.i.i, %land.rhs.i4.i, %lockdep_assert_rq_held.exit.i
  %clock_pelt.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 29
  %7 = ptrtoint ptr %clock_pelt.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %clock_pelt.i, align 8
  %lost_idle_time.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 30
  %9 = ptrtoint ptr %lost_idle_time.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lost_idle_time.i, align 16
  %conv.i = zext i32 %10 to i64
  %sub.i = sub i64 %8, %conv.i
  %call1 = tail call i32 @update_rt_rq_load_avg(i64 noundef %sub.i, ptr noundef %rq, i32 noundef 1) #17
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 111
  %11 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %12, i32 0, i32 51, i32 15
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx.i.i, align 8
  %rlim_max.i.i = getelementptr %struct.signal_struct, ptr %12, i32 0, i32 51, i32 15, i32 1
  %15 = ptrtoint ptr %rlim_max.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %rlim_max.i.i, align 4
  %cmp.not.i = icmp eq i32 %14, -1
  br i1 %cmp.not.i, label %watchdog.exit, label %if.then.i

if.then.i:                                        ; preds = %rq_clock_pelt.exit
  %watchdog_stamp.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 19, i32 2
  %17 = ptrtoint ptr %watchdog_stamp.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %watchdog_stamp.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %cmp2.not.i = icmp eq i32 %18, %19
  br i1 %cmp2.not.i, label %if.end.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.then.i
  %timeout.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 19, i32 1
  %20 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %timeout.i, align 8
  %inc.i = add i32 %21, 1
  store i32 %inc.i, ptr %timeout.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %23 = ptrtoint ptr %watchdog_stamp.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %watchdog_stamp.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %if.then.i
  %24 = tail call i32 @llvm.umin.i32(i32 %14, i32 %16) #17
  %sub.i25 = add i32 %24, 9999
  %div.i = udiv i32 %sub.i25, 10000
  %timeout9.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 19, i32 1
  %25 = ptrtoint ptr %timeout9.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %timeout9.i, align 8
  %cmp10.i = icmp ugt i32 %26, %div.i
  br i1 %cmp10.i, label %if.then11.i, label %watchdog.exit

if.then11.i:                                      ; preds = %if.end.i
  %sum_exec_runtime.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 18, i32 5
  %27 = ptrtoint ptr %sum_exec_runtime.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %sum_exec_runtime.i, align 8
  %arrayidx.i2.i = getelementptr %struct.task_struct, ptr %p, i32 0, i32 96, i32 0, i32 2
  %29 = ptrtoint ptr %arrayidx.i2.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %arrayidx.i2.i, align 8
  br label %watchdog.exit

watchdog.exit:                                    ; preds = %if.then11.i, %if.end.i, %rq_clock_pelt.exit
  %policy = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 31
  %30 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %policy, align 4
  %cmp.not = icmp eq i32 %31, 2
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %watchdog.exit
  %time_slice = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 19, i32 3
  %32 = ptrtoint ptr %time_slice to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %time_slice, align 16
  %dec = add i32 %33, -1
  store i32 %dec, ptr %time_slice, align 16
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %34 = load i32, ptr @sched_rr_timeslice, align 4
  %35 = ptrtoint ptr %time_slice to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %time_slice, align 16
  %tobool7.not30 = icmp eq ptr %rt, null
  br i1 %tobool7.not30, label %cleanup, label %for.body

for.body:                                         ; preds = %for.inc, %if.end4
  %rt_se.031 = phi ptr [ %62, %for.inc ], [ %rt, %if.end4 ]
  %prev = getelementptr inbounds %struct.list_head, ptr %rt_se.031, i32 0, i32 1
  %36 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev, align 4
  %38 = ptrtoint ptr %rt_se.031 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rt_se.031, align 4
  %cmp9.not = icmp eq ptr %37, %39
  br i1 %cmp9.not, label %for.inc, label %for.body.i

for.body.i:                                       ; preds = %requeue_rt_entity.exit.i, %for.body
  %rt_se.02.i = phi ptr [ %60, %requeue_rt_entity.exit.i ], [ %rt, %for.body ]
  %on_rq.i.i.i = getelementptr inbounds %struct.sched_rt_entity, ptr %rt_se.02.i, i32 0, i32 4
  %40 = ptrtoint ptr %on_rq.i.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %on_rq.i.i.i, align 4
  %tobool.not.i.i26 = icmp eq i16 %41, 0
  br i1 %tobool.not.i.i26, label %requeue_rt_entity.exit.i, label %if.then.i.i29

if.then.i.i29:                                    ; preds = %for.body.i
  %rt_rq.i.i = getelementptr inbounds %struct.sched_rt_entity, ptr %rt_se.02.i, i32 0, i32 8
  %42 = ptrtoint ptr %rt_rq.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rt_rq.i.i, align 4
  %queue1.i.i = getelementptr inbounds %struct.rt_prio_array, ptr %43, i32 0, i32 1
  %my_q.i.i.i.i = getelementptr inbounds %struct.sched_rt_entity, ptr %rt_se.02.i, i32 0, i32 9
  %44 = ptrtoint ptr %my_q.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %my_q.i.i.i.i, align 4
  %tobool.not.i.i.i27 = icmp eq ptr %45, null
  %highest_prio.i.i.i = getelementptr inbounds %struct.rt_rq, ptr %45, i32 0, i32 3
  %prio.i.i.i = getelementptr i8, ptr %rt_se.02.i, i32 -328
  %retval.0.in.i.i.i = select i1 %tobool.not.i.i.i27, ptr %prio.i.i.i, ptr %highest_prio.i.i.i
  %46 = ptrtoint ptr %retval.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %retval.0.i.i.i28 = load i32, ptr %retval.0.in.i.i.i, align 8
  %add.ptr.i.i = getelementptr %struct.list_head, ptr %queue1.i.i, i32 %retval.0.i.i.i28
  %call.i.i11.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %rt_se.02.i) #17
  br i1 %call.i.i11.i.i, label %if.end.i.i14.i.i, label %__list_del_entry.exit.i16.i.i

if.end.i.i14.i.i:                                 ; preds = %if.then.i.i29
  %prev.i.i12.i.i = getelementptr inbounds %struct.list_head, ptr %rt_se.02.i, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i12.i.i, align 4
  %49 = ptrtoint ptr %rt_se.02.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rt_se.02.i, align 4
  %prev1.i.i.i13.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev1.i.i.i13.i.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %50, ptr %48, align 4
  br label %__list_del_entry.exit.i16.i.i

__list_del_entry.exit.i16.i.i:                    ; preds = %if.end.i.i14.i.i, %if.then.i.i29
  %prev.i2.i.i.i = getelementptr %struct.list_head, ptr %queue1.i.i, i32 %retval.0.i.i.i28, i32 1
  %53 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i2.i.i.i, align 4
  %call.i.i.i15.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %rt_se.02.i, ptr noundef %54, ptr noundef %add.ptr.i.i) #17
  br i1 %call.i.i.i15.i.i, label %if.end6.sink.split.i.i, label %requeue_rt_entity.exit.i

if.end6.sink.split.i.i:                           ; preds = %__list_del_entry.exit.i16.i.i
  %55 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %rt_se.02.i, ptr %prev.i2.i.i.i, align 4
  %56 = ptrtoint ptr %rt_se.02.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %add.ptr.i.i, ptr %rt_se.02.i, align 4
  %prev3.i.i.i17.i.i = getelementptr inbounds %struct.list_head, ptr %rt_se.02.i, i32 0, i32 1
  %57 = ptrtoint ptr %prev3.i.i.i17.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev3.i.i.i17.i.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %rt_se.02.i, ptr %54, align 4
  br label %requeue_rt_entity.exit.i

requeue_rt_entity.exit.i:                         ; preds = %if.end6.sink.split.i.i, %__list_del_entry.exit.i16.i.i, %for.body.i
  %parent.i = getelementptr inbounds %struct.sched_rt_entity, ptr %rt_se.02.i, i32 0, i32 7
  %59 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %60, null
  br i1 %tobool.not.i, label %requeue_task_rt.exit, label %for.body.i

requeue_task_rt.exit:                             ; preds = %requeue_rt_entity.exit.i
  tail call void @resched_curr(ptr noundef %rq) #17
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %parent = getelementptr inbounds %struct.sched_rt_entity, ptr %rt_se.031, i32 0, i32 7
  %61 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %parent, align 4
  %tobool7.not = icmp eq ptr %62, null
  br i1 %tobool7.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %requeue_task_rt.exit, %if.end4, %if.end, %watchdog.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @switched_from_rt(ptr noundef %rq, ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %on_rq.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 12
  %0 = ptrtoint ptr %on_rq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %on_rq.i, align 4
  %cmp.i.not = icmp eq i32 %1, 1
  br i1 %cmp.i.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %rt_nr_running = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 15, i32 1
  %2 = ptrtoint ptr %rt_nr_running to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rt_nr_running, align 16
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %cpu.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 46
  %4 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %7, ptrtoint (ptr @rt_pull_head to i32)
  %8 = inttoptr i32 %add.i to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %9 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i.i, label %lockdep_assert_rq_held.exit.i.i, label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end
  %core_enabled.i.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 81
  %10 = ptrtoint ptr %core_enabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %core_enabled.i.i.i.i, align 128
  %tobool.not.i.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i.i.i, label %__rq_lockp.exit.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i
  %core.i.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 79
  %12 = ptrtoint ptr %core.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core.i.i.i.i, align 8
  br label %__rq_lockp.exit.i.i.i

__rq_lockp.exit.i.i.i:                            ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %13, %if.then.i.i.i.i ], [ %rq, %land.rhs.i.i.i ]
  %dep_map.i.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i.i, i32 0, i32 4
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #17
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %do.end.i.i.i, label %lockdep_assert_rq_held.exit.i.i, !prof !95

do.end.i.i.i:                                     ; preds = %__rq_lockp.exit.i.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1309, i32 noundef 9, ptr noundef null) #17
  br label %lockdep_assert_rq_held.exit.i.i

lockdep_assert_rq_held.exit.i.i:                  ; preds = %do.end.i.i.i, %__rq_lockp.exit.i.i.i, %if.end
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %8, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %lor.rhs.i.i, label %return, !prof !97

lor.rhs.i.i:                                      ; preds = %lockdep_assert_rq_held.exit.i.i
  %balance_callback.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 39
  %16 = ptrtoint ptr %balance_callback.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %balance_callback.i.i, align 8
  %cmp.i.i = icmp eq ptr %17, @balance_push_callback
  br i1 %cmp.i.i, label %return, label %if.end.i.i, !prof !95

if.end.i.i:                                       ; preds = %lor.rhs.i.i
  %func3.i.i = getelementptr inbounds %struct.callback_head, ptr %8, i32 0, i32 1
  %18 = ptrtoint ptr %func3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @pull_rt_task, ptr %func3.i.i, align 4
  %19 = ptrtoint ptr %balance_callback.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %balance_callback.i.i, align 8
  %21 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %8, align 4
  store ptr %8, ptr %balance_callback.i.i, align 8
  br label %return

return:                                           ; preds = %if.end.i.i, %lor.rhs.i.i, %lockdep_assert_rq_held.exit.i.i, %lor.lhs.false, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @switched_to_rt(ptr noundef %rq, ptr noundef readonly %p) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %curr.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 20
  %0 = ptrtoint ptr %curr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %curr.i, align 8
  %cmp.i.not = icmp eq ptr %1, %p
  br i1 %cmp.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %lockdep_assert_rq_held.exit.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %if.then
  %core_enabled.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 81
  %3 = ptrtoint ptr %core_enabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %core_enabled.i.i.i, align 128
  %tobool.not.i.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i.i, label %__rq_lockp.exit.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  %core.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 79
  %5 = ptrtoint ptr %core.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %core.i.i.i, align 8
  br label %__rq_lockp.exit.i.i

__rq_lockp.exit.i.i:                              ; preds = %if.then.i.i.i, %land.rhs.i.i
  %retval.0.i.i.i = phi ptr [ %6, %if.then.i.i.i ], [ %rq, %land.rhs.i.i ]
  %dep_map.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i, i32 0, i32 4
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #17
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %lockdep_assert_rq_held.exit.i, !prof !95

do.end.i.i:                                       ; preds = %__rq_lockp.exit.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1309, i32 noundef 9, ptr noundef null) #17
  br label %lockdep_assert_rq_held.exit.i

lockdep_assert_rq_held.exit.i:                    ; preds = %do.end.i.i, %__rq_lockp.exit.i.i, %if.then
  %clock_update_flags.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 25
  %7 = ptrtoint ptr %clock_update_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %clock_update_flags.i.i, align 4
  %cmp.i.i = icmp ult i32 %8, 2
  br i1 %cmp.i.i, label %land.rhs.i4.i, label %rq_clock_pelt.exit

land.rhs.i4.i:                                    ; preds = %lockdep_assert_rq_held.exit.i
  %.b37.i.i = load i1, ptr @assert_clock_updated.__already_done, align 1
  br i1 %.b37.i.i, label %rq_clock_pelt.exit, label %if.then.i.i, !prof !97

if.then.i.i:                                      ; preds = %land.rhs.i4.i
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #17
  br label %rq_clock_pelt.exit

rq_clock_pelt.exit:                               ; preds = %if.then.i.i, %land.rhs.i4.i, %lockdep_assert_rq_held.exit.i
  %clock_pelt.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 29
  %9 = ptrtoint ptr %clock_pelt.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %clock_pelt.i, align 8
  %lost_idle_time.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 30
  %11 = ptrtoint ptr %lost_idle_time.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lost_idle_time.i, align 16
  %conv.i27 = zext i32 %12 to i64
  %sub.i = sub i64 %10, %conv.i27
  %call2 = tail call i32 @update_rt_rq_load_avg(i64 noundef %sub.i, ptr noundef %rq, i32 noundef 0) #17
  br label %if.end16

if.end:                                           ; preds = %entry
  %on_rq.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 12
  %13 = ptrtoint ptr %on_rq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %on_rq.i, align 4
  %cmp.i28.not = icmp eq i32 %14, 1
  br i1 %cmp.i28.not, label %if.then5, label %if.end16

if.then5:                                         ; preds = %if.end
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 32
  %15 = ptrtoint ptr %nr_cpus_allowed to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_cpus_allowed, align 8
  %cmp = icmp sgt i32 %16, 1
  br i1 %cmp, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.then5
  %overloaded = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 15, i32 6
  %17 = ptrtoint ptr %overloaded to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %overloaded, align 8
  %tobool6.not = icmp eq i32 %18, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %land.lhs.true
  %pushable_tasks.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 15, i32 7
  %19 = ptrtoint ptr %pushable_tasks.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %pushable_tasks.i.i, align 4
  %cmp.i.i.i.not.i = icmp eq ptr %20, %pushable_tasks.i.i
  br i1 %cmp.i.i.i.not.i, label %if.end8, label %if.end.i

if.end.i:                                         ; preds = %if.then7
  %cpu.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 46
  %21 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %24, ptrtoint (ptr @rt_push_head to i32)
  %25 = inttoptr i32 %add.i to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %26 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i.i30 = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i.i30, label %lockdep_assert_rq_held.exit.i.i, label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end.i
  %core_enabled.i.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 81
  %27 = ptrtoint ptr %core_enabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %core_enabled.i.i.i.i, align 128
  %tobool.not.i.i.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i.i.i, label %__rq_lockp.exit.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i
  %core.i.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 79
  %29 = ptrtoint ptr %core.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %core.i.i.i.i, align 8
  br label %__rq_lockp.exit.i.i.i

__rq_lockp.exit.i.i.i:                            ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %30, %if.then.i.i.i.i ], [ %rq, %land.rhs.i.i.i ]
  %dep_map.i.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i.i, i32 0, i32 4
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #17
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %do.end.i.i.i, label %lockdep_assert_rq_held.exit.i.i, !prof !95

do.end.i.i.i:                                     ; preds = %__rq_lockp.exit.i.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1309, i32 noundef 9, ptr noundef null) #17
  br label %lockdep_assert_rq_held.exit.i.i

lockdep_assert_rq_held.exit.i.i:                  ; preds = %do.end.i.i.i, %__rq_lockp.exit.i.i.i, %if.end.i
  %31 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %25, align 4
  %tobool.not.i.i31 = icmp eq ptr %32, null
  br i1 %tobool.not.i.i31, label %lor.rhs.i.i, label %if.end8, !prof !97

lor.rhs.i.i:                                      ; preds = %lockdep_assert_rq_held.exit.i.i
  %balance_callback.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 39
  %33 = ptrtoint ptr %balance_callback.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %balance_callback.i.i, align 8
  %cmp.i.i32 = icmp eq ptr %34, @balance_push_callback
  br i1 %cmp.i.i32, label %if.end8, label %if.end.i.i, !prof !95

if.end.i.i:                                       ; preds = %lor.rhs.i.i
  %func3.i.i = getelementptr inbounds %struct.callback_head, ptr %25, i32 0, i32 1
  %35 = ptrtoint ptr %func3.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @push_rt_tasks, ptr %func3.i.i, align 4
  %36 = ptrtoint ptr %balance_callback.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %balance_callback.i.i, align 8
  %38 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %25, align 4
  store ptr %25, ptr %balance_callback.i.i, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.end.i.i, %lor.rhs.i.i, %lockdep_assert_rq_held.exit.i.i, %if.then7, %land.lhs.true, %if.then5
  %prio = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 13
  %39 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %prio, align 8
  %41 = ptrtoint ptr %curr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %curr.i, align 8
  %prio9 = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 13
  %43 = ptrtoint ptr %prio9 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %prio9, align 8
  %cmp10 = icmp slt i32 %40, %44
  br i1 %cmp10, label %land.lhs.true11, label %if.end16

land.lhs.true11:                                  ; preds = %if.end8
  %cpu.i33 = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 46
  %45 = ptrtoint ptr %cpu.i33 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cpu.i33, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %47 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i = icmp ugt i32 %47, %46
  br i1 %cmp.not.i.i.i.i, label %cpu_online.exit, label %land.rhs.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true11
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %cpu_online.exit, label %if.then.i.i.i.i34, !prof !97

if.then.i.i.i.i34:                                ; preds = %land.rhs.i.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i34, %land.rhs.i.i.i.i, %land.lhs.true11
  %div3.i.i.i = lshr i32 %46, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %48 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %46, 31
  %50 = shl nuw i32 1, %and.i.i.i
  %51 = and i32 %49, %50
  %tobool.i.not = icmp eq i32 %51, 0
  br i1 %tobool.i.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %cpu_online.exit
  tail call void @resched_curr(ptr noundef %rq) #17
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %cpu_online.exit, %if.end8, %if.end, %rq_clock_pelt.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prio_changed_rt(ptr noundef %rq, ptr noundef readonly %p, i32 noundef %oldprio) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %on_rq.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 12
  %0 = ptrtoint ptr %on_rq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %on_rq.i, align 4
  %cmp.i.not = icmp eq i32 %1, 1
  br i1 %cmp.i.not, label %if.end, label %if.end16

if.end:                                           ; preds = %entry
  %curr.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 20
  %2 = ptrtoint ptr %curr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %curr.i, align 8
  %cmp.i26.not = icmp eq ptr %3, %p
  %prio = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 13
  %4 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prio, align 8
  br i1 %cmp.i26.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %cmp = icmp sgt i32 %5, %oldprio
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then3
  %cpu.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 46
  %6 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %9, ptrtoint (ptr @rt_pull_head to i32)
  %10 = inttoptr i32 %add.i to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %11 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i.i, label %lockdep_assert_rq_held.exit.i.i, label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.then4
  %core_enabled.i.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 81
  %12 = ptrtoint ptr %core_enabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %core_enabled.i.i.i.i, align 128
  %tobool.not.i.i.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i.i.i, label %__rq_lockp.exit.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i
  %core.i.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 79
  %14 = ptrtoint ptr %core.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %core.i.i.i.i, align 8
  br label %__rq_lockp.exit.i.i.i

__rq_lockp.exit.i.i.i:                            ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %15, %if.then.i.i.i.i ], [ %rq, %land.rhs.i.i.i ]
  %dep_map.i.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i.i, i32 0, i32 4
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #17
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %do.end.i.i.i, label %lockdep_assert_rq_held.exit.i.i, !prof !95

do.end.i.i.i:                                     ; preds = %__rq_lockp.exit.i.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1309, i32 noundef 9, ptr noundef null) #17
  br label %lockdep_assert_rq_held.exit.i.i

lockdep_assert_rq_held.exit.i.i:                  ; preds = %do.end.i.i.i, %__rq_lockp.exit.i.i.i, %if.then4
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %10, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %lor.rhs.i.i, label %if.end5, !prof !97

lor.rhs.i.i:                                      ; preds = %lockdep_assert_rq_held.exit.i.i
  %balance_callback.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 39
  %18 = ptrtoint ptr %balance_callback.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %balance_callback.i.i, align 8
  %cmp.i.i = icmp eq ptr %19, @balance_push_callback
  br i1 %cmp.i.i, label %if.end5, label %if.end.i.i, !prof !95

if.end.i.i:                                       ; preds = %lor.rhs.i.i
  %func3.i.i = getelementptr inbounds %struct.callback_head, ptr %10, i32 0, i32 1
  %20 = ptrtoint ptr %func3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @pull_rt_task, ptr %func3.i.i, align 4
  %21 = ptrtoint ptr %balance_callback.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %balance_callback.i.i, align 8
  %23 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %10, align 4
  store ptr %10, ptr %balance_callback.i.i, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.end.i.i, %lor.rhs.i.i, %lockdep_assert_rq_held.exit.i.i, %if.then3
  %24 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %prio, align 8
  %highest_prio = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 15, i32 3
  %26 = ptrtoint ptr %highest_prio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %highest_prio, align 8
  %cmp7 = icmp sgt i32 %25, %27
  br i1 %cmp7, label %if.end16.sink.split, label %if.end16

if.else:                                          ; preds = %if.end
  %prio12 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 13
  %28 = ptrtoint ptr %prio12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %prio12, align 8
  %cmp13 = icmp slt i32 %5, %29
  br i1 %cmp13, label %if.end16.sink.split, label %if.end16

if.end16.sink.split:                              ; preds = %if.else, %if.end5
  tail call void @resched_curr(ptr noundef %rq) #17
  br label %if.end16

if.end16:                                         ; preds = %if.end16.sink.split, %if.else, %if.end5, %entry
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_rr_interval_rt(ptr nocapture noundef readnone %rq, ptr nocapture noundef readonly %task) #7 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %policy = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 31
  %0 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %policy, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %2 = load i32, ptr @sched_rr_timeslice, align 4
  br label %return

return:                                           ; preds = %if.then, %entry
  %retval.0 = phi i32 [ %2, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @update_curr_rt(ptr noundef %rq) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %curr1 = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 20
  %0 = ptrtoint ptr %curr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %curr1, align 8
  %rt = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19
  %sched_class = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %sched_class to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sched_class, align 32
  %cmp.not = icmp eq ptr %3, @rt_sched_class
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %lockdep_assert_rq_held.exit.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %if.end
  %core_enabled.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 81
  %5 = ptrtoint ptr %core_enabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %core_enabled.i.i.i, align 128
  %tobool.not.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i.i, label %__rq_lockp.exit.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  %core.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 79
  %7 = ptrtoint ptr %core.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %core.i.i.i, align 8
  br label %__rq_lockp.exit.i.i

__rq_lockp.exit.i.i:                              ; preds = %if.then.i.i.i, %land.rhs.i.i
  %retval.0.i.i.i = phi ptr [ %8, %if.then.i.i.i ], [ %rq, %land.rhs.i.i ]
  %dep_map.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i, i32 0, i32 4
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #17
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %lockdep_assert_rq_held.exit.i, !prof !95

do.end.i.i:                                       ; preds = %__rq_lockp.exit.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1309, i32 noundef 9, ptr noundef null) #17
  br label %lockdep_assert_rq_held.exit.i

lockdep_assert_rq_held.exit.i:                    ; preds = %do.end.i.i, %__rq_lockp.exit.i.i, %if.end
  %clock_update_flags.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 25
  %9 = ptrtoint ptr %clock_update_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %clock_update_flags.i.i, align 4
  %cmp.i.i = icmp ult i32 %10, 2
  br i1 %cmp.i.i, label %land.rhs.i3.i, label %rq_clock_task.exit

land.rhs.i3.i:                                    ; preds = %lockdep_assert_rq_held.exit.i
  %.b37.i.i = load i1, ptr @assert_clock_updated.__already_done, align 1
  br i1 %.b37.i.i, label %rq_clock_task.exit, label %if.then.i.i, !prof !97

if.then.i.i:                                      ; preds = %land.rhs.i3.i
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #17
  br label %rq_clock_task.exit

rq_clock_task.exit:                               ; preds = %if.then.i.i, %land.rhs.i3.i, %lockdep_assert_rq_held.exit.i
  %clock_task.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 28
  %11 = ptrtoint ptr %clock_task.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %clock_task.i, align 128
  %exec_start = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 18, i32 4
  %13 = ptrtoint ptr %exec_start to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %exec_start, align 32
  %sub = sub i64 %12, %14
  %cmp2 = icmp slt i64 %sub, 1
  br i1 %cmp2, label %cleanup, label %do.body, !prof !95

do.body:                                          ; preds = %rq_clock_task.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_schedstats, ptr blockaddress(@update_curr_rt, %if.then14)) #17
          to label %do.end [label %if.then14], !srcloc !107

if.then14:                                        ; preds = %do.body
  %exec_max = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 29, i32 12
  %15 = ptrtoint ptr %exec_max to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %exec_max, align 32
  %17 = tail call i64 @llvm.umax.i64(i64 %16, i64 %sub)
  %18 = ptrtoint ptr %exec_max to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %exec_max, align 32
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body
  tail call fastcc void @trace_sched_stat_runtime(ptr noundef %1, i64 noundef %sub)
  %sum_exec_runtime = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 18, i32 5
  %19 = ptrtoint ptr %sum_exec_runtime to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %sum_exec_runtime, align 8
  %add = add i64 %20, %sub
  store i64 %add, ptr %sum_exec_runtime, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 111
  %21 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %signal.i.i, align 16
  %timers_active.i.i = getelementptr inbounds %struct.signal_struct, ptr %22, i32 0, i32 21, i32 1
  %23 = ptrtoint ptr %timers_active.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %timers_active.i.i, align 8
  %tobool.not.i.i74 = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i74, label %account_group_exec_runtime.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end
  %sighand.i.i = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 112
  %25 = ptrtoint ptr %sighand.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sighand.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %26, null
  br i1 %tobool3.not.i.i, label %account_group_exec_runtime.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i
  %sum_exec_runtime.i = getelementptr inbounds %struct.signal_struct, ptr %22, i32 0, i32 20, i32 0, i32 2
  %call.i.i.i75 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sum_exec_runtime.i, i32 noundef 8) #17
  tail call void @generic_atomic64_add(i64 noundef %sub, ptr noundef %sum_exec_runtime.i) #17
  br label %account_group_exec_runtime.exit

account_group_exec_runtime.exit:                  ; preds = %if.end.i, %if.end.i.i, %do.end
  %27 = ptrtoint ptr %exec_start to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %12, ptr %exec_start, align 32
  tail call void @cpuacct_charge(ptr noundef %1, i64 noundef %sub) #17
  %28 = tail call i32 @llvm.read_register.i32(metadata !85) #17
  %and.i.i.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %31, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !111
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i.i, label %rcu_read_lock.exit.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %account_group_exec_runtime.exit
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  %tobool.not.i.i76 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i76, label %rcu_read_lock.exit.i, label %land.lhs.true2.i.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %rcu_read_lock.exit.i, label %if.then.i.i77

if.then.i.i77:                                    ; preds = %land.lhs.true2.i.i
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #17
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i77, %land.lhs.true2.i.i, %land.lhs.true.i.i, %account_group_exec_runtime.exit
  %cgroups.i.i.i = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 164
  %32 = ptrtoint ptr %cgroups.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %cgroups.i.i.i, align 16
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #17
  %tobool.not.i.i.i78 = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i78, label %lor.lhs.false.i.i.i, label %task_dfl_cgroup.exit.i

lor.lhs.false.i.i.i:                              ; preds = %rcu_read_lock.exit.i
  %call.i18.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #17
  %tobool3.not.i.i.i = icmp eq i32 %call.i18.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %lor.lhs.false4.i.i.i, label %task_dfl_cgroup.exit.i

lor.lhs.false4.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %flags.i.i.i = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %35, 4
  %tobool5.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %lor.lhs.false6.i.i.i, label %task_dfl_cgroup.exit.i

lor.lhs.false6.i.i.i:                             ; preds = %lor.lhs.false4.i.i.i
  %call7.i.i.i = tail call i32 @rcu_read_lock_held() #17
  %tobool8.not.i.i.i = icmp eq i32 %call7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %land.lhs.true.i.i.i, label %task_dfl_cgroup.exit.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false6.i.i.i
  %call9.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  %tobool10.not.i.i.i = icmp eq i32 %call9.i.i.i, 0
  br i1 %tobool10.not.i.i.i, label %task_dfl_cgroup.exit.i, label %land.lhs.true11.i.i.i

land.lhs.true11.i.i.i:                            ; preds = %land.lhs.true.i.i.i
  %.b17.i.i.i = load i1, ptr @task_css_set.__warned, align 1
  br i1 %.b17.i.i.i, label %task_dfl_cgroup.exit.i, label %if.then.i.i.i79

if.then.i.i.i79:                                  ; preds = %land.lhs.true11.i.i.i
  store i1 true, ptr @task_css_set.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 481, ptr noundef nonnull @.str.5) #17
  br label %task_dfl_cgroup.exit.i

task_dfl_cgroup.exit.i:                           ; preds = %if.then.i.i.i79, %land.lhs.true11.i.i.i, %land.lhs.true.i.i.i, %lor.lhs.false6.i.i.i, %lor.lhs.false4.i.i.i, %lor.lhs.false.i.i.i, %rcu_read_lock.exit.i
  %dfl_cgrp.i.i = getelementptr inbounds %struct.css_set, ptr %33, i32 0, i32 3
  %36 = ptrtoint ptr %dfl_cgrp.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dfl_cgrp.i.i, align 4
  %parent.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %37, i32 0, i32 12
  %38 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %parent.i.i, align 8
  %tobool.not.i = icmp eq ptr %39, null
  br i1 %tobool.not.i, label %if.end.i80, label %if.then.i

if.then.i:                                        ; preds = %task_dfl_cgroup.exit.i
  tail call void @__cgroup_account_cputime(ptr noundef %37, i64 noundef %sub) #17
  br label %if.end.i80

if.end.i80:                                       ; preds = %if.then.i, %task_dfl_cgroup.exit.i
  %call.i5.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i5.i, label %cgroup_account_cputime.exit, label %land.lhs.true.i8.i

land.lhs.true.i8.i:                               ; preds = %if.end.i80
  %call1.i6.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  %tobool.not.i7.i = icmp eq i32 %call1.i6.i, 0
  br i1 %tobool.not.i7.i, label %cgroup_account_cputime.exit, label %land.lhs.true2.i10.i

land.lhs.true2.i10.i:                             ; preds = %land.lhs.true.i8.i
  %.b4.i9.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i9.i, label %cgroup_account_cputime.exit, label %if.then.i11.i

if.then.i11.i:                                    ; preds = %land.lhs.true2.i10.i
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #17
  br label %cgroup_account_cputime.exit

cgroup_account_cputime.exit:                      ; preds = %if.then.i11.i, %land.lhs.true2.i10.i, %land.lhs.true.i8.i, %if.end.i80
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !112
  %40 = tail call i32 @llvm.read_register.i32(metadata !85) #17
  %and.i.i.i.i.i12.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i12.i to ptr
  %preempt_count.i.i.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i13.i, align 4
  %sub.i.i.i.i = add i32 %43, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i13.i, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_rt_runtime to i32))
  %44 = load i32, ptr @sysctl_sched_rt_runtime, align 4
  %tobool24.not = icmp slt i32 %44, 0
  %tobool27.not103 = icmp eq ptr %rt, null
  %or.cond = select i1 %tobool24.not, i1 true, i1 %tobool27.not103
  br i1 %or.cond, label %cleanup, label %for.body

for.body:                                         ; preds = %if.end42, %cgroup_account_cputime.exit
  %rt_se.0104 = phi ptr [ %90, %if.end42 ], [ %rt, %cgroup_account_cputime.exit ]
  %rt_rq.i = getelementptr inbounds %struct.sched_rt_entity, ptr %rt_se.0104, i32 0, i32 8
  %45 = ptrtoint ptr %rt_rq.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rt_rq.i, align 4
  %tg.i = getelementptr inbounds %struct.rt_rq, ptr %46, i32 0, i32 15
  %47 = ptrtoint ptr %tg.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tg.i, align 4
  %tobool.not.i81 = icmp eq ptr %48, null
  br i1 %tobool.not.i81, label %if.end42, label %sched_rt_runtime.exit

sched_rt_runtime.exit:                            ; preds = %for.body
  %rt_runtime.i = getelementptr inbounds %struct.rt_rq, ptr %46, i32 0, i32 11
  %49 = ptrtoint ptr %rt_runtime.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %rt_runtime.i, align 8
  %cmp30.not = icmp eq i64 %50, -1
  br i1 %cmp30.not, label %if.end42, label %if.then31

if.then31:                                        ; preds = %sched_rt_runtime.exit
  %rt_runtime_lock = getelementptr inbounds %struct.rt_rq, ptr %46, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %rt_runtime_lock) #17
  %rt_time = getelementptr inbounds %struct.rt_rq, ptr %46, i32 0, i32 10
  %51 = ptrtoint ptr %rt_time to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %rt_time, align 8
  %add32 = add i64 %52, %sub
  store i64 %add32, ptr %rt_time, align 8
  %53 = ptrtoint ptr %tg.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tg.i, align 4
  %tobool.not.i.i84 = icmp eq ptr %54, null
  br i1 %tobool.not.i.i84, label %sched_rt_runtime.exit.i, label %if.end.i.i85

if.end.i.i85:                                     ; preds = %if.then31
  %55 = ptrtoint ptr %rt_runtime.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %rt_runtime.i, align 8
  br label %sched_rt_runtime.exit.i

sched_rt_runtime.exit.i:                          ; preds = %if.end.i.i85, %if.then31
  %retval.0.i.i = phi i64 [ %56, %if.end.i.i85 ], [ -1, %if.then31 ]
  %rt_throttled.i = getelementptr inbounds %struct.rt_rq, ptr %46, i32 0, i32 9
  %57 = ptrtoint ptr %rt_throttled.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rt_throttled.i, align 8
  %tobool.not.i86 = icmp eq i32 %58, 0
  br i1 %tobool.not.i86, label %if.end.i87, label %sched_rt_runtime_exceeded.exit

if.end.i87:                                       ; preds = %sched_rt_runtime.exit.i
  %rt_period.i.i = getelementptr inbounds %struct.task_group, ptr %54, i32 0, i32 9, i32 1
  %59 = ptrtoint ptr %rt_period.i.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %rt_period.i.i, align 16
  %cmp.not.i = icmp ult i64 %retval.0.i.i, %60
  br i1 %cmp.not.i, label %if.end4.i, label %if.end42.sink.split

if.end4.i:                                        ; preds = %if.end.i87
  tail call fastcc void @balance_runtime(ptr noundef %46) #17
  %61 = ptrtoint ptr %tg.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tg.i, align 4
  %tobool.not.i63.i = icmp eq ptr %62, null
  br i1 %tobool.not.i63.i, label %if.end42.sink.split, label %sched_rt_runtime.exit67.i

sched_rt_runtime.exit67.i:                        ; preds = %if.end4.i
  %63 = ptrtoint ptr %rt_runtime.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %rt_runtime.i, align 8
  %cmp6.i = icmp eq i64 %64, -1
  br i1 %cmp6.i, label %if.end42.sink.split, label %if.end8.i

if.end8.i:                                        ; preds = %sched_rt_runtime.exit67.i
  %65 = ptrtoint ptr %rt_time to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %rt_time, align 8
  %cmp9.i = icmp ugt i64 %66, %64
  br i1 %cmp9.i, label %if.then10.i, label %if.end42.sink.split

if.then10.i:                                      ; preds = %if.end8.i
  %rt_runtime.i88 = getelementptr inbounds %struct.task_group, ptr %62, i32 0, i32 9, i32 2
  %67 = ptrtoint ptr %rt_runtime.i88 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %rt_runtime.i88, align 8
  %tobool12.not.i = icmp eq i64 %68, 0
  br i1 %tobool12.not.i, label %if.else.i, label %if.then15.i, !prof !95

if.then15.i:                                      ; preds = %if.then10.i
  %69 = ptrtoint ptr %rt_throttled.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %rt_throttled.i, align 8
  %.b59.i = load i1, ptr @sched_rt_runtime_exceeded.__already_done, align 1
  br i1 %.b59.i, label %rt_rq_throttled.exit75.i, label %if.then27.i, !prof !97

if.then27.i:                                      ; preds = %if.then15.i
  store i1 true, ptr @sched_rt_runtime_exceeded.__already_done, align 1
  %call28.i = tail call i32 (ptr, ...) @_printk_deferred(ptr noundef nonnull @.str.14) #22
  br label %if.end38.i

if.else.i:                                        ; preds = %if.then10.i
  %70 = ptrtoint ptr %rt_time to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 0, ptr %rt_time, align 8
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.else.i, %if.then27.i
  %71 = ptrtoint ptr %rt_throttled.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %.pr.i = load i32, ptr %rt_throttled.i, align 8
  %tobool.not.i70.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool.not.i70.i, label %if.end42.sink.split, label %rt_rq_throttled.exit75.i

rt_rq_throttled.exit75.i:                         ; preds = %if.end38.i, %if.then15.i
  %rt_nr_boosted.i71.i = getelementptr inbounds %struct.rt_rq, ptr %46, i32 0, i32 13
  %72 = ptrtoint ptr %rt_nr_boosted.i71.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rt_nr_boosted.i71.i, align 4
  %tobool1.not.i72.not.i = icmp eq i32 %73, 0
  br i1 %tobool1.not.i72.not.i, label %sched_rt_runtime_exceeded.exit.thread100, label %if.end42.sink.split

sched_rt_runtime_exceeded.exit.thread100:         ; preds = %rt_rq_throttled.exit75.i
  tail call fastcc void @sched_rt_rq_dequeue(ptr noundef %46) #17
  br label %if.then35

sched_rt_runtime_exceeded.exit:                   ; preds = %sched_rt_runtime.exit.i
  %rt_nr_boosted.i.i = getelementptr inbounds %struct.rt_rq, ptr %46, i32 0, i32 13
  %74 = ptrtoint ptr %rt_nr_boosted.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rt_nr_boosted.i.i, align 4
  %tobool1.not.i.i.not = icmp eq i32 %75, 0
  br i1 %tobool1.not.i.i.not, label %if.then35, label %if.end42.sink.split

if.then35:                                        ; preds = %sched_rt_runtime_exceeded.exit, %sched_rt_runtime_exceeded.exit.thread100
  tail call void @resched_curr(ptr noundef %rq) #17
  tail call void @_raw_spin_unlock(ptr noundef %rt_runtime_lock) #17
  %76 = ptrtoint ptr %tg.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tg.i, align 4
  %rt_bandwidth.i = getelementptr inbounds %struct.task_group, ptr %77, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %rt_bandwidth.i) #17
  %rt_period_active.i = getelementptr inbounds %struct.task_group, ptr %77, i32 0, i32 9, i32 4
  %78 = ptrtoint ptr %rt_period_active.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rt_period_active.i, align 8
  %tobool.not.i90 = icmp eq i32 %79, 0
  br i1 %tobool.not.i90, label %if.then.i93, label %if.end42.sink.split

if.then.i93:                                      ; preds = %if.then35
  %80 = ptrtoint ptr %rt_period_active.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %rt_period_active.i, align 8
  %rt_period_timer.i = getelementptr inbounds %struct.task_group, ptr %77, i32 0, i32 9, i32 3
  %base.i.i = getelementptr inbounds %struct.task_group, ptr %77, i32 0, i32 9, i32 3, i32 3
  %81 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base.i.i, align 4
  %get_time.i.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %82, i32 0, i32 6
  %83 = ptrtoint ptr %get_time.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %get_time.i.i, align 4
  %call.i.i91 = tail call i64 %84() #17
  %call1.i.i92 = tail call i64 @hrtimer_forward(ptr noundef %rt_period_timer.i, i64 noundef %call.i.i91, i64 noundef 0) #17
  %_softexpires.i.i.i = getelementptr inbounds %struct.task_group, ptr %77, i32 0, i32 9, i32 3, i32 1
  %85 = ptrtoint ptr %_softexpires.i.i.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %_softexpires.i.i.i, align 8
  %expires.i.i.i = getelementptr inbounds %struct.task_group, ptr %77, i32 0, i32 9, i32 3, i32 0, i32 1
  %87 = ptrtoint ptr %expires.i.i.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %expires.i.i.i, align 8
  %sub.i.i = sub i64 %88, %86
  tail call void @hrtimer_start_range_ns(ptr noundef %rt_period_timer.i, i64 noundef %86, i64 noundef %sub.i.i, i32 noundef 10) #17
  br label %if.end42.sink.split

if.end42.sink.split:                              ; preds = %if.then.i93, %if.then35, %sched_rt_runtime_exceeded.exit, %rt_rq_throttled.exit75.i, %if.end38.i, %if.end8.i, %sched_rt_runtime.exit67.i, %if.end4.i, %if.end.i87
  %rt_runtime_lock.sink = phi ptr [ %rt_bandwidth.i, %if.then35 ], [ %rt_bandwidth.i, %if.then.i93 ], [ %rt_runtime_lock, %if.end38.i ], [ %rt_runtime_lock, %if.end4.i ], [ %rt_runtime_lock, %rt_rq_throttled.exit75.i ], [ %rt_runtime_lock, %if.end8.i ], [ %rt_runtime_lock, %sched_rt_runtime.exit67.i ], [ %rt_runtime_lock, %if.end.i87 ], [ %rt_runtime_lock, %sched_rt_runtime_exceeded.exit ]
  tail call void @_raw_spin_unlock(ptr noundef %rt_runtime_lock.sink) #17
  br label %if.end42

if.end42:                                         ; preds = %if.end42.sink.split, %sched_rt_runtime.exit, %for.body
  %parent = getelementptr inbounds %struct.sched_rt_entity, ptr %rt_se.0104, i32 0, i32 7
  %89 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %parent, align 4
  %tobool27.not = icmp eq ptr %90, null
  br i1 %tobool27.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %if.end42, %cgroup_account_cputime.exit, %rq_clock_task.exit, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sched_group_set_rt_runtime(ptr noundef %tg, i32 noundef %rt_runtime_us) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %rt_period1 = getelementptr inbounds %struct.task_group, ptr %tg, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %rt_period1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %rt_period1, align 16
  %cmp = icmp slt i32 %rt_runtime_us, 0
  %conv = sext i32 %rt_runtime_us to i64
  %mul = mul nsw i64 %conv, 1000
  %rt_runtime.0 = select i1 %cmp, i64 -1, i64 %mul
  %call8 = tail call fastcc i32 @tg_set_rt_bandwidth(ptr noundef %tg, i64 noundef %1, i64 noundef %rt_runtime.0)
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tg_set_rt_bandwidth(ptr noundef %tg, i64 noundef %rt_period, i64 noundef %rt_runtime) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %tg, @root_task_group
  %cmp1 = icmp eq i64 %rt_runtime, 0
  %or.cond = and i1 %cmp, %cmp1
  %cmp2 = icmp eq i64 %rt_period, 0
  %or.cond45 = or i1 %cmp2, %or.cond
  %0 = add i64 %rt_runtime, -17592186044416
  %1 = icmp ult i64 %0, -17592186044417
  %or.cond47 = or i1 %1, %or.cond45
  br i1 %or.cond47, label %cleanup, label %if.end9

if.end9:                                          ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @rt_constraints_mutex, i32 noundef 0) #17
  %call = tail call fastcc i32 @__rt_schedulable(ptr noundef %tg, i64 noundef %rt_period, i64 noundef %rt_runtime)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end11, label %unlock

if.end11:                                         ; preds = %if.end9
  %rt_bandwidth = getelementptr inbounds %struct.task_group, ptr %tg, i32 0, i32 9
  tail call void @_raw_spin_lock_irq(ptr noundef %rt_bandwidth) #17
  %rt_period14 = getelementptr inbounds %struct.task_group, ptr %tg, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %rt_period14 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %rt_period, ptr %rt_period14, align 16
  %rt_runtime16 = getelementptr inbounds %struct.task_group, ptr %tg, i32 0, i32 9, i32 2
  %3 = ptrtoint ptr %rt_runtime16 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %rt_runtime, ptr %rt_runtime16, align 8
  %call1748 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %cmp1849 = icmp ult i32 %call1748, %4
  br i1 %cmp1849, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end11
  %rt_rq19 = getelementptr inbounds %struct.task_group, ptr %tg, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %call1750 = phi i32 [ %call1748, %for.body.lr.ph ], [ %call17, %for.body ]
  %5 = ptrtoint ptr %rt_rq19 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rt_rq19, align 8
  %arrayidx = getelementptr ptr, ptr %6, i32 %call1750
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %rt_runtime_lock20 = getelementptr inbounds %struct.rt_rq, ptr %8, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %rt_runtime_lock20) #17
  %rt_runtime21 = getelementptr inbounds %struct.rt_rq, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %rt_runtime21 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %rt_runtime, ptr %rt_runtime21, align 8
  tail call void @_raw_spin_unlock(ptr noundef %rt_runtime_lock20) #17
  %call17 = tail call i32 @cpumask_next(i32 noundef %call1750, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %cmp18 = icmp ult i32 %call17, %10
  br i1 %cmp18, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end11
  tail call void @_raw_spin_unlock_irq(ptr noundef %rt_bandwidth) #17
  br label %unlock

unlock:                                           ; preds = %for.end, %if.end9
  tail call void @mutex_unlock(ptr noundef nonnull @rt_constraints_mutex) #17
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry
  %retval.0 = phi i32 [ %call, %unlock ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sched_group_rt_runtime(ptr nocapture noundef readonly %tg) local_unnamed_addr #8 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %rt_runtime = getelementptr inbounds %struct.task_group, ptr %tg, i32 0, i32 9, i32 2
  %0 = ptrtoint ptr %rt_runtime to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %rt_runtime, align 8
  %cmp = icmp eq i64 %1, -1
  br i1 %cmp, label %cleanup, label %if.end159

if.end159:                                        ; preds = %entry
  %2 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %1, i32 0) #23, !srcloc !117
  %asmresult.i = extractvalue { i64, i32 } %2, 0
  %asmresult4.i = extractvalue { i64, i32 } %2, 1
  %3 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %1, i64 %asmresult.i, i32 %asmresult4.i) #23, !srcloc !118
  %asmresult10.i = extractvalue { i64, i32 } %3, 0
  %extract267 = lshr i64 %asmresult10.i, 9
  %extract.t268 = trunc i64 %extract267 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end159, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %extract.t268, %if.end159 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sched_group_set_rt_period(ptr noundef %tg, i64 noundef %rt_period_us) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp ugt i64 %rt_period_us, 18446744073709551
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %mul = mul nuw i64 %rt_period_us, 1000
  %rt_runtime1 = getelementptr inbounds %struct.task_group, ptr %tg, i32 0, i32 9, i32 2
  %0 = ptrtoint ptr %rt_runtime1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %rt_runtime1, align 8
  %call = tail call fastcc i32 @tg_set_rt_bandwidth(ptr noundef %tg, i64 noundef %mul, i64 noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sched_group_rt_period(ptr nocapture noundef readonly %tg) local_unnamed_addr #8 align 64 {
if.end179:
  call void @llvm.arm.gnu.eabi.mcount()
  %rt_period = getelementptr inbounds %struct.task_group, ptr %tg, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %rt_period to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %rt_period, align 16
  %2 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %1, i32 0) #23, !srcloc !117
  %asmresult.i = extractvalue { i64, i32 } %2, 0
  %asmresult4.i = extractvalue { i64, i32 } %2, 1
  %3 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %1, i64 %asmresult.i, i32 %asmresult4.i) #23, !srcloc !118
  %asmresult10.i = extractvalue { i64, i32 } %3, 0
  %extract262 = lshr i64 %asmresult10.i, 9
  %extract.t263 = trunc i64 %extract262 to i32
  ret i32 %extract.t263
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @sched_rt_can_attach(ptr nocapture noundef readonly %tg, ptr nocapture noundef readonly %tsk) local_unnamed_addr #9 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %prio.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 13
  %0 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prio.i, align 8
  %cmp.i.i = icmp sgt i32 %1, 99
  br i1 %cmp.i.i, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %rt_runtime = getelementptr inbounds %struct.task_group, ptr %tg, i32 0, i32 9, i32 2
  %2 = ptrtoint ptr %rt_runtime to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %rt_runtime, align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sched_rt_handler(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @sched_rt_handler.mutex, i32 noundef 0) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_rt_period to i32))
  %0 = load i32, ptr @sysctl_sched_rt_period, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_rt_runtime to i32))
  %1 = load i32, ptr @sysctl_sched_rt_runtime, align 4
  %call = tail call i32 @proc_dointvec(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %entry
  %tobool1.not = icmp eq i32 %write, 0
  br i1 %tobool1.not, label %if.end15, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_rt_period to i32))
  %2 = load i32, ptr @sysctl_sched_rt_period, align 4
  %cmp.i = icmp eq i32 %2, 0
  br i1 %cmp.i, label %undo, label %if.end.i

if.end.i:                                         ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_rt_runtime to i32))
  %3 = load i32, ptr @sysctl_sched_rt_runtime, align 4
  %cmp1.not.i = icmp eq i32 %3, -1
  br i1 %cmp1.not.i, label %if.end, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %conv.i = sext i32 %3 to i64
  %cmp3.i = icmp ugt i32 %3, %2
  %mul.i = mul nsw i64 %conv.i, 1000
  %cmp6.i = icmp ugt i64 %mul.i, 17592186044415
  %or.cond.i = select i1 %cmp3.i, i1 true, i1 %cmp6.i
  br i1 %or.cond.i, label %undo, label %if.end

if.end:                                           ; preds = %land.lhs.true.i, %if.end.i
  %call5 = tail call i32 @sched_dl_global_validate() #17
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %undo

if.end8:                                          ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @rt_constraints_mutex, i32 noundef 0) #17
  %call.i = tail call fastcc i32 @__rt_schedulable(ptr noundef null, i64 noundef 0, i64 noundef 0) #17
  tail call void @mutex_unlock(ptr noundef nonnull @rt_constraints_mutex) #17
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %if.end12, label %undo

if.end12:                                         ; preds = %if.end8
  tail call fastcc void @sched_rt_do_global()
  tail call void @sched_dl_do_global() #17
  br label %if.end15

undo:                                             ; preds = %if.end8, %if.end, %land.lhs.true.i, %if.then
  %ret.0 = phi i32 [ %call5, %if.end ], [ %call.i, %if.end8 ], [ -22, %if.then ], [ -22, %land.lhs.true.i ]
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @sysctl_sched_rt_period to i32))
  store i32 %0, ptr @sysctl_sched_rt_period, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @sysctl_sched_rt_runtime to i32))
  store i32 %1, ptr @sysctl_sched_rt_runtime, align 4
  br label %if.end15

if.end15:                                         ; preds = %undo, %if.end12, %land.lhs.true, %entry
  %ret.1 = phi i32 [ %call, %entry ], [ %ret.0, %undo ], [ 0, %if.end12 ], [ 0, %land.lhs.true ]
  tail call void @mutex_unlock(ptr noundef nonnull @sched_rt_handler.mutex) #17
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_dl_global_validate() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sched_rt_do_global() unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @def_rt_bandwidth) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_rt_runtime to i32))
  %0 = load i32, ptr @sysctl_sched_rt_runtime, align 4
  %cmp.i = icmp slt i32 %0, 0
  %conv.i = sext i32 %0 to i64
  %mul.i = mul nsw i64 %conv.i, 1000
  %retval.0.i = select i1 %cmp.i, i64 -1, i64 %mul.i
  store i64 %retval.0.i, ptr getelementptr inbounds (%struct.rt_bandwidth, ptr @def_rt_bandwidth, i32 0, i32 2), align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_rt_period to i32))
  %1 = load i32, ptr @sysctl_sched_rt_period, align 4
  %conv.i12 = zext i32 %1 to i64
  %mul.i13 = mul nuw nsw i64 %conv.i12, 1000
  store i64 %mul.i13, ptr getelementptr inbounds (%struct.rt_bandwidth, ptr @def_rt_bandwidth, i32 0, i32 1), align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @def_rt_bandwidth, i32 noundef %call) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_dl_do_global() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sched_rr_handler(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @sched_rr_handler.mutex, i32 noundef 0) #17
  %call = tail call i32 @proc_dointvec(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #17
  %tobool.not = icmp ne i32 %call, 0
  %tobool1.not = icmp eq i32 %write, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr @sysctl_sched_rr_timeslice, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %cond.end, label %if.else.i

if.else.i:                                        ; preds = %if.then
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %0) #17
  br label %cond.end

cond.end:                                         ; preds = %if.else.i, %if.then
  %cond = phi i32 [ 10, %if.then ], [ %call2.i, %if.else.i ]
  store i32 %cond, ptr @sched_rr_timeslice, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  tail call void @mutex_unlock(ptr noundef nonnull @sched_rr_handler.mutex) #17
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @print_rt_stats(ptr noundef %m, i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !85) #17
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !111
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %rcu_read_lock.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %rcu_read_lock.exit, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %rcu_read_lock.exit, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true2.i
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i, %land.lhs.true.i, %entry
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.backedge, %rcu_read_lock.exit
  %tg.addr.0.i = phi ptr [ getelementptr (%struct.list_head, ptr @task_groups, i32 -50, i32 0), %rcu_read_lock.exit ], [ %add.ptr.i, %do.body.i.backedge ]
  %list.i = getelementptr inbounds %struct.task_group, ptr %tg.addr.0.i, i32 0, i32 11
  %4 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %list.i, align 16
  %cmp.not.i = icmp eq ptr %5, @task_groups
  br i1 %cmp.not.i, label %for.end, label %land.rhs.i

land.rhs.i:                                       ; preds = %do.body.i
  %add.ptr.i = getelementptr i8, ptr %5, i32 -400
  %autogroup.i.i = getelementptr i8, ptr %5, i32 28
  %6 = ptrtoint ptr %autogroup.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %autogroup.i.i, align 4
  %tobool.i.not.i = icmp eq ptr %7, null
  br i1 %tobool.i.not.i, label %next_task_group.exit, label %do.body.i.backedge

do.body.i.backedge:                               ; preds = %for.body, %land.rhs.i
  br label %do.body.i

next_task_group.exit:                             ; preds = %land.rhs.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %for.end, label %land.rhs

land.rhs:                                         ; preds = %next_task_group.exit
  %rt_rq1 = getelementptr i8, ptr %5, i32 -136
  %8 = ptrtoint ptr %rt_rq1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rt_rq1, align 8
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %add = add i32 %11, ptrtoint (ptr @runqueues to i32)
  %12 = inttoptr i32 %add to ptr
  %cpu.i = getelementptr inbounds %struct.rq, ptr %12, i32 0, i32 46
  %13 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i, align 4
  %arrayidx5 = getelementptr ptr, ptr %9, i32 %14
  %15 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %16, null
  br i1 %tobool6.not, label %for.end, label %for.body

for.body:                                         ; preds = %land.rhs
  tail call void @print_rt_rq(ptr noundef %m, i32 noundef %cpu, ptr noundef nonnull %16) #17
  br label %do.body.i.backedge

for.end:                                          ; preds = %land.rhs, %next_task_group.exit, %do.body.i
  %call.i9 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i9, label %rcu_read_unlock.exit, label %land.lhs.true.i12

land.lhs.true.i12:                                ; preds = %for.end
  %call1.i10 = tail call i32 @debug_lockdep_rcu_enabled() #17
  %tobool.not.i11 = icmp eq i32 %call1.i10, 0
  br i1 %tobool.not.i11, label %rcu_read_unlock.exit, label %land.lhs.true2.i14

land.lhs.true2.i14:                               ; preds = %land.lhs.true.i12
  %.b4.i13 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i13, label %rcu_read_unlock.exit, label %if.then.i15

if.then.i15:                                      ; preds = %land.lhs.true2.i14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i15, %land.lhs.true2.i14, %land.lhs.true.i12, %for.end
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !112
  %17 = tail call i32 @llvm.read_register.i32(metadata !85) #17
  %and.i.i.i.i.i16 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i16 to ptr
  %preempt_count.i.i.i.i17 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i17, align 4
  %sub.i.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i17, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_rt_rq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_sched_rt_period_timer(ptr noundef readonly %rt_b, i32 noundef %overrun) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !85) #17
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %5, ptrtoint (ptr @runqueues to i32)
  %6 = inttoptr i32 %add.i to ptr
  %rd.i = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 35
  %7 = ptrtoint ptr %rd.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rd.i, align 8
  %span.i = getelementptr inbounds %struct.root_domain, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %span.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %span.i, align 8
  %cmp = icmp eq ptr %rt_b, getelementptr inbounds (%struct.task_group, ptr @root_task_group, i32 0, i32 9)
  %spec.store.select = select i1 %cmp, ptr @__cpu_online_mask, ptr %10
  %call1144 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %spec.store.select) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %cmp2145 = icmp ult i32 %call1144, %11
  br i1 %cmp2145, label %for.body.lr.ph, label %land.lhs.true72

for.body.lr.ph:                                   ; preds = %entry
  %rt_rq.i = getelementptr i8, ptr %rt_b, i32 -8
  %rt_runtime8 = getelementptr inbounds %struct.rt_bandwidth, ptr %rt_b, i32 0, i32 2
  %conv = sext i32 %overrun to i64
  br label %for.body

for.body:                                         ; preds = %cleanup, %for.body.lr.ph
  %call1149 = phi i32 [ %call1144, %for.body.lr.ph ], [ %call1, %cleanup ]
  %throttled.0147 = phi i32 [ 0, %for.body.lr.ph ], [ %throttled.2, %cleanup ]
  %idle.0146 = phi i32 [ 1, %for.body.lr.ph ], [ %idle.3, %cleanup ]
  %12 = ptrtoint ptr %rt_rq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rt_rq.i, align 8
  %arrayidx.i123 = getelementptr ptr, ptr %13, i32 %call1149
  %14 = ptrtoint ptr %arrayidx.i123 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i123, align 4
  %rq.i = getelementptr inbounds %struct.rt_rq, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %rq.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rq.i, align 8
  %rt_runtime_lock = getelementptr inbounds %struct.rt_rq, ptr %15, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %rt_runtime_lock) #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ([25 x %struct.static_key], ptr @sched_feat_keys, i32 0, i32 14), ptr blockaddress(@do_sched_rt_period_timer, %if.end10)) #17
          to label %land.lhs.true [label %if.end10], !srcloc !107

land.lhs.true:                                    ; preds = %for.body
  %rt_runtime = getelementptr inbounds %struct.rt_rq, ptr %15, i32 0, i32 11
  %18 = ptrtoint ptr %rt_runtime to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %rt_runtime, align 8
  %cmp6.not = icmp eq i64 %19, -1
  br i1 %cmp6.not, label %if.end10, label %if.then7

if.then7:                                         ; preds = %land.lhs.true
  %20 = ptrtoint ptr %rt_runtime8 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %rt_runtime8, align 8
  %22 = ptrtoint ptr %rt_runtime to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %rt_runtime, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %land.lhs.true, %for.body
  %rt_time = getelementptr inbounds %struct.rt_rq, ptr %15, i32 0, i32 10
  %23 = ptrtoint ptr %rt_time to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %rt_time, align 8
  %tobool.not = icmp eq i64 %24, 0
  br i1 %tobool.not, label %land.rhs, label %if.end15.critedge

land.rhs:                                         ; preds = %if.end10
  %rt_nr_running = getelementptr inbounds %struct.rt_rq, ptr %15, i32 0, i32 1
  %25 = ptrtoint ptr %rt_nr_running to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rt_nr_running, align 8
  %tobool11.not = icmp eq i32 %26, 0
  tail call void @_raw_spin_unlock(ptr noundef %rt_runtime_lock) #17
  br i1 %tobool11.not, label %cleanup, label %if.end15

if.end15.critedge:                                ; preds = %if.end10
  tail call void @_raw_spin_unlock(ptr noundef %rt_runtime_lock) #17
  br label %if.end15

if.end15:                                         ; preds = %if.end15.critedge, %land.rhs
  tail call void @raw_spin_rq_lock_nested(ptr noundef %17, i32 noundef 0) #17
  tail call void @update_rq_clock(ptr noundef %17) #17
  %27 = ptrtoint ptr %rt_time to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %rt_time, align 8
  %tobool17.not = icmp eq i64 %28, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end15
  tail call void @_raw_spin_lock(ptr noundef %rt_runtime_lock) #17
  %rt_throttled = getelementptr inbounds %struct.rt_rq, ptr %15, i32 0, i32 9
  %29 = ptrtoint ptr %rt_throttled to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rt_throttled, align 8
  %tobool20.not = icmp eq i32 %30, 0
  br i1 %tobool20.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.then18
  tail call fastcc void @balance_runtime(ptr noundef %15)
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.then18
  %rt_runtime23 = getelementptr inbounds %struct.rt_rq, ptr %15, i32 0, i32 11
  %31 = ptrtoint ptr %rt_runtime23 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %rt_runtime23, align 8
  %33 = ptrtoint ptr %rt_time to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %rt_time, align 8
  %mul = mul i64 %32, %conv
  %35 = tail call i64 @llvm.usub.sat.i64(i64 %34, i64 %mul)
  %36 = ptrtoint ptr %rt_time to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %rt_time, align 8
  %37 = ptrtoint ptr %rt_throttled to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rt_throttled, align 8
  %tobool29.not = icmp ne i32 %38, 0
  %cmp32 = icmp ult i64 %35, %32
  %or.cond = select i1 %tobool29.not, i1 %cmp32, i1 false
  br i1 %or.cond, label %if.then34, label %if.end44

if.then34:                                        ; preds = %if.end22
  %39 = ptrtoint ptr %rt_throttled to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %rt_throttled, align 8
  %rt_nr_running36 = getelementptr inbounds %struct.rt_rq, ptr %15, i32 0, i32 1
  %40 = ptrtoint ptr %rt_nr_running36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rt_nr_running36, align 8
  %tobool37.not = icmp eq i32 %41, 0
  br i1 %tobool37.not, label %if.end44thread-pre-split, label %land.lhs.true38

land.lhs.true38:                                  ; preds = %if.then34
  %curr = getelementptr inbounds %struct.rq, ptr %17, i32 0, i32 20
  %42 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %curr, align 8
  %idle39 = getelementptr inbounds %struct.rq, ptr %17, i32 0, i32 21
  %44 = ptrtoint ptr %idle39 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %idle39, align 4
  %cmp40 = icmp eq ptr %43, %45
  br i1 %cmp40, label %if.then42, label %if.end44thread-pre-split

if.then42:                                        ; preds = %land.lhs.true38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %46 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i = icmp eq i32 %46, 0
  br i1 %tobool.not.i.i, label %rq_clock_cancel_skipupdate.exit, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %if.then42
  %core_enabled.i.i.i = getelementptr inbounds %struct.rq, ptr %17, i32 0, i32 81
  %47 = ptrtoint ptr %core_enabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %core_enabled.i.i.i, align 128
  %tobool.not.i.i.i = icmp eq i32 %48, 0
  br i1 %tobool.not.i.i.i, label %__rq_lockp.exit.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  %core.i.i.i = getelementptr inbounds %struct.rq, ptr %17, i32 0, i32 79
  %49 = ptrtoint ptr %core.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %core.i.i.i, align 8
  br label %__rq_lockp.exit.i.i

__rq_lockp.exit.i.i:                              ; preds = %if.then.i.i.i, %land.rhs.i.i
  %retval.0.i.i.i124 = phi ptr [ %50, %if.then.i.i.i ], [ %17, %land.rhs.i.i ]
  %dep_map.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i124, i32 0, i32 4
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #17
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %rq_clock_cancel_skipupdate.exit, !prof !95

do.end.i.i:                                       ; preds = %__rq_lockp.exit.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1309, i32 noundef 9, ptr noundef null) #17
  br label %rq_clock_cancel_skipupdate.exit

rq_clock_cancel_skipupdate.exit:                  ; preds = %do.end.i.i, %__rq_lockp.exit.i.i, %if.then42
  %clock_update_flags.i = getelementptr inbounds %struct.rq, ptr %17, i32 0, i32 25
  %51 = ptrtoint ptr %clock_update_flags.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %clock_update_flags.i, align 4
  %and.i = and i32 %52, -2
  store i32 %and.i, ptr %clock_update_flags.i, align 4
  br label %if.end44thread-pre-split

if.end44thread-pre-split:                         ; preds = %rq_clock_cancel_skipupdate.exit, %land.lhs.true38, %if.then34
  %53 = ptrtoint ptr %rt_time to i32
  call void @__asan_load8_noabort(i32 %53)
  %.pr = load i64, ptr %rt_time, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.end44thread-pre-split, %if.end22
  %54 = phi i64 [ %.pr, %if.end44thread-pre-split ], [ %35, %if.end22 ]
  %tobool46.not = icmp eq i64 %54, 0
  br i1 %tobool46.not, label %lor.lhs.false, label %if.then49

lor.lhs.false:                                    ; preds = %if.end44
  %rt_nr_running47 = getelementptr inbounds %struct.rt_rq, ptr %15, i32 0, i32 1
  %55 = ptrtoint ptr %rt_nr_running47 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rt_nr_running47, align 8
  %tobool48.not = icmp eq i32 %56, 0
  br i1 %tobool48.not, label %if.end60, label %if.then49

if.then49:                                        ; preds = %lor.lhs.false, %if.end44
  br label %if.end60

if.else:                                          ; preds = %if.end15
  %rt_nr_running52 = getelementptr inbounds %struct.rt_rq, ptr %15, i32 0, i32 1
  %57 = ptrtoint ptr %rt_nr_running52 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rt_nr_running52, align 8
  %tobool53.not = icmp eq i32 %58, 0
  br i1 %tobool53.not, label %if.end60.thread, label %if.then54

if.then54:                                        ; preds = %if.else
  %rt_throttled.i = getelementptr inbounds %struct.rt_rq, ptr %15, i32 0, i32 9
  %59 = ptrtoint ptr %rt_throttled.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rt_throttled.i, align 8
  %tobool.not.i = icmp eq i32 %60, 0
  br i1 %tobool.not.i, label %if.end60.thread135, label %rt_rq_throttled.exit

rt_rq_throttled.exit:                             ; preds = %if.then54
  %rt_nr_boosted.i = getelementptr inbounds %struct.rt_rq, ptr %15, i32 0, i32 13
  %61 = ptrtoint ptr %rt_nr_boosted.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rt_nr_boosted.i, align 4
  %tobool1.not.i.not = icmp eq i32 %62, 0
  br i1 %tobool1.not.i.not, label %if.end60.thread, label %if.end60.thread135

if.end60.thread135:                               ; preds = %rt_rq_throttled.exit, %if.then54
  %63 = ptrtoint ptr %rt_throttled.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rt_throttled.i, align 8
  %tobool62.not139 = icmp eq i32 %64, 0
  %spec.select122140 = select i1 %tobool62.not139, i32 %throttled.0147, i32 1
  br label %if.then66

if.end60.thread:                                  ; preds = %rt_rq_throttled.exit, %if.else
  %idle.2.ph = phi i32 [ 0, %rt_rq_throttled.exit ], [ %idle.0146, %if.else ]
  %rt_throttled61129 = getelementptr inbounds %struct.rt_rq, ptr %15, i32 0, i32 9
  %65 = ptrtoint ptr %rt_throttled61129 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rt_throttled61129, align 8
  %tobool62.not130 = icmp eq i32 %66, 0
  %spec.select122131 = select i1 %tobool62.not130, i32 %throttled.0147, i32 1
  br label %if.end67

if.end60:                                         ; preds = %if.then49, %lor.lhs.false
  %idle.1 = phi i32 [ 0, %if.then49 ], [ %idle.0146, %lor.lhs.false ]
  tail call void @_raw_spin_unlock(ptr noundef %rt_runtime_lock) #17
  %67 = ptrtoint ptr %rt_throttled to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rt_throttled, align 8
  %tobool62.not = icmp eq i32 %68, 0
  %spec.select122 = select i1 %tobool62.not, i32 %throttled.0147, i32 1
  br i1 %or.cond, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.end60, %if.end60.thread135
  %spec.select122143 = phi i32 [ %spec.select122140, %if.end60.thread135 ], [ %spec.select122, %if.end60 ]
  %idle.2142 = phi i32 [ 0, %if.end60.thread135 ], [ %idle.1, %if.end60 ]
  tail call fastcc void @sched_rt_rq_enqueue(ptr noundef %15)
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.end60, %if.end60.thread
  %spec.select122134 = phi i32 [ %spec.select122131, %if.end60.thread ], [ %spec.select122143, %if.then66 ], [ %spec.select122, %if.end60 ]
  %idle.2133 = phi i32 [ %idle.2.ph, %if.end60.thread ], [ %idle.2142, %if.then66 ], [ %idle.1, %if.end60 ]
  tail call void @raw_spin_rq_unlock(ptr noundef %17) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %land.rhs
  %idle.3 = phi i32 [ %idle.2133, %if.end67 ], [ %idle.0146, %land.rhs ]
  %throttled.2 = phi i32 [ %spec.select122134, %if.end67 ], [ %throttled.0147, %land.rhs ]
  %call1 = tail call i32 @cpumask_next(i32 noundef %call1149, ptr noundef %spec.store.select) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %69 = load i32, ptr @nr_cpu_ids, align 4
  %cmp2 = icmp ult i32 %call1, %69
  br i1 %cmp2, label %for.body, label %for.end

for.end:                                          ; preds = %cleanup
  %tobool71.not = icmp eq i32 %throttled.2, 0
  br i1 %tobool71.not, label %land.lhs.true72, label %if.end80

land.lhs.true72:                                  ; preds = %for.end, %entry
  %idle.0.lcssa155 = phi i32 [ %idle.3, %for.end ], [ 1, %entry ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_rt_runtime to i32))
  %70 = load i32, ptr @sysctl_sched_rt_runtime, align 4
  %tobool74.not = icmp slt i32 %70, 0
  br i1 %tobool74.not, label %cleanup81, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %land.lhs.true72
  %rt_runtime76 = getelementptr inbounds %struct.rt_bandwidth, ptr %rt_b, i32 0, i32 2
  %71 = ptrtoint ptr %rt_runtime76 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %rt_runtime76, align 8
  %cmp77 = icmp eq i64 %72, -1
  br i1 %cmp77, label %cleanup81, label %if.end80

if.end80:                                         ; preds = %lor.lhs.false75, %for.end
  %idle.0.lcssa154 = phi i32 [ %idle.0.lcssa155, %lor.lhs.false75 ], [ %idle.3, %for.end ]
  br label %cleanup81

cleanup81:                                        ; preds = %if.end80, %lor.lhs.false75, %land.lhs.true72
  %retval.0 = phi i32 [ %idle.0.lcssa154, %if.end80 ], [ 1, %lor.lhs.false75 ], [ 1, %land.lhs.true72 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_rq_clock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @balance_runtime(ptr noundef %rt_rq) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ([25 x %struct.static_key], ptr @sched_feat_keys, i32 0, i32 14), ptr blockaddress(@balance_runtime, %if.end)) #17
          to label %if.end3 [label %if.end], !srcloc !107

if.end:                                           ; preds = %entry
  %rt_time = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 10
  %0 = ptrtoint ptr %rt_time to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %rt_time, align 8
  %rt_runtime = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 11
  %2 = ptrtoint ptr %rt_runtime to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %rt_runtime, align 8
  %cmp = icmp ugt i64 %1, %3
  br i1 %cmp, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %rt_runtime_lock = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 12
  tail call void @_raw_spin_unlock(ptr noundef %rt_runtime_lock) #17
  %tg.i.i = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 15
  %4 = ptrtoint ptr %tg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tg.i.i, align 4
  %rt_bandwidth.i.i = getelementptr inbounds %struct.task_group, ptr %5, i32 0, i32 9
  %rq.i.i = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 14
  %6 = ptrtoint ptr %rq.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rq.i.i, align 8
  %rd2.i = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 35
  %8 = ptrtoint ptr %rd2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rd2.i, align 8
  %span.i = getelementptr inbounds %struct.root_domain, ptr %9, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %11 = ptrtoint ptr %span.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %span.i, align 8
  %call4.i.i.i = tail call i32 @__bitmap_weight(ptr noundef %12, i32 noundef %10) #17
  tail call void @_raw_spin_lock(ptr noundef %rt_bandwidth.i.i) #17
  %rt_period4.i = getelementptr inbounds %struct.task_group, ptr %5, i32 0, i32 9, i32 1
  %13 = ptrtoint ptr %rt_period4.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %rt_period4.i, align 8
  %15 = ptrtoint ptr %span.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %span.i, align 8
  %call768.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %16) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %cmp69.i = icmp ult i32 %call768.i, %17
  br i1 %cmp69.i, label %for.body.lr.ph.i, label %do_balance_runtime.exit

for.body.lr.ph.i:                                 ; preds = %if.then1
  %rt_rq.i.i = getelementptr %struct.task_group, ptr %5, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i, %for.body.lr.ph.i
  %call770.i = phi i32 [ %call768.i, %for.body.lr.ph.i ], [ %call7.i, %cleanup.i ]
  %18 = ptrtoint ptr %rt_rq.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rt_rq.i.i, align 8
  %arrayidx.i.i = getelementptr ptr, ptr %19, i32 %call770.i
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp9.i = icmp eq ptr %21, %rt_rq
  br i1 %cmp9.i, label %cleanup.i, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  %rt_runtime_lock10.i = getelementptr inbounds %struct.rt_rq, ptr %21, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %rt_runtime_lock10.i) #17
  %rt_runtime.i = getelementptr inbounds %struct.rt_rq, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %rt_runtime.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %rt_runtime.i, align 8
  %cmp11.i = icmp eq i64 %23, -1
  br i1 %cmp11.i, label %next.i, label %if.end13.i

if.end13.i:                                       ; preds = %if.end.i
  %rt_time.i = getelementptr inbounds %struct.rt_rq, ptr %21, i32 0, i32 10
  %24 = ptrtoint ptr %rt_time.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %rt_time.i, align 8
  %sub.i = sub i64 %23, %25
  %cmp15.i = icmp sgt i64 %sub.i, 0
  br i1 %cmp15.i, label %if.else162.i.i.i, label %next.i

if.else162.i.i.i:                                 ; preds = %if.end13.i
  %cmp164.i.i.i = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !97

if.then168.i.i.i:                                 ; preds = %if.else162.i.i.i
  %conv169.i.i.i = trunc i64 %sub.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %call4.i.i.i
  %conv173.i.i.i = zext i32 %div172.i.i.i to i64
  br label %div_u64.exit.i

if.else174.i.i.i:                                 ; preds = %if.else162.i.i.i
  %26 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call4.i.i.i, i64 %sub.i) #23, !srcloc !119
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %26, 1
  br label %div_u64.exit.i

div_u64.exit.i:                                   ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.i = phi i64 [ %conv173.i.i.i, %if.then168.i.i.i ], [ %asmresult1.i.i.i.i, %if.else174.i.i.i ]
  %27 = ptrtoint ptr %rt_runtime to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %rt_runtime, align 8
  %add.i = add i64 %28, %dividend.addr.0.i.i.i
  %cmp19.i = icmp ugt i64 %add.i, %14
  %sub22.i = sub i64 %14, %28
  %spec.select.i = select i1 %cmp19.i, i64 %sub22.i, i64 %dividend.addr.0.i.i.i
  %sub25.i = sub i64 %23, %spec.select.i
  %29 = ptrtoint ptr %rt_runtime.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %sub25.i, ptr %rt_runtime.i, align 8
  %30 = load i64, ptr %rt_runtime, align 8
  %add27.i = add i64 %spec.select.i, %30
  store i64 %add27.i, ptr %rt_runtime, align 8
  %cmp29.i = icmp eq i64 %add27.i, %14
  br i1 %cmp29.i, label %cleanup.thread.i, label %next.i

cleanup.thread.i:                                 ; preds = %div_u64.exit.i
  tail call void @_raw_spin_unlock(ptr noundef %rt_runtime_lock10.i) #17
  br label %do_balance_runtime.exit

next.i:                                           ; preds = %div_u64.exit.i, %if.end13.i, %if.end.i
  tail call void @_raw_spin_unlock(ptr noundef %rt_runtime_lock10.i) #17
  br label %cleanup.i

cleanup.i:                                        ; preds = %next.i, %for.body.i
  %31 = ptrtoint ptr %span.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %span.i, align 8
  %call7.i = tail call i32 @cpumask_next(i32 noundef %call770.i, ptr noundef %32) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %33 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call7.i, %33
  br i1 %cmp.i, label %for.body.i, label %do_balance_runtime.exit

do_balance_runtime.exit:                          ; preds = %cleanup.i, %cleanup.thread.i, %if.then1
  tail call void @_raw_spin_unlock(ptr noundef %rt_bandwidth.i.i) #17
  tail call void @_raw_spin_lock(ptr noundef %rt_runtime_lock) #17
  br label %if.end3

if.end3:                                          ; preds = %do_balance_runtime.exit, %if.end, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sched_rt_rq_enqueue(ptr noundef %rt_rq) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %rq.i = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 14
  %0 = ptrtoint ptr %rq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq.i, align 8
  %curr1 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %curr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %curr1, align 8
  %cpu.i = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 46
  %4 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu.i, align 4
  %tg = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 15
  %6 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tg, align 4
  %rt_se4 = getelementptr inbounds %struct.task_group, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %rt_se4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rt_se4, align 4
  %arrayidx = getelementptr ptr, ptr %9, i32 %5
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %rt_nr_running = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 1
  %12 = ptrtoint ptr %rt_nr_running to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rt_nr_running, align 8
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.end14, label %if.then

if.then:                                          ; preds = %entry
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  %rt.i = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 15
  %cmp.not.i = icmp eq ptr %rt.i, %rt_rq
  br i1 %cmp.not.i, label %do.end7.i, label %do.body2.i, !prof !97

do.body2.i:                                       ; preds = %if.then6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/rt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1076, 0\0A.popsection", ""() #17, !srcloc !120
  unreachable

do.end7.i:                                        ; preds = %if.then6
  %rt_queued.i = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 8
  %14 = ptrtoint ptr %rt_queued.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rt_queued.i, align 4
  %tobool8.not.i = icmp eq i32 %15, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end10

if.end10.i:                                       ; preds = %do.end7.i
  %rt_throttled.i.i = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 9
  %16 = ptrtoint ptr %rt_throttled.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rt_throttled.i.i, align 8
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %if.then16.i, label %rt_rq_throttled.exit.i

rt_rq_throttled.exit.i:                           ; preds = %if.end10.i
  %rt_nr_boosted.i.i = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 13
  %18 = ptrtoint ptr %rt_nr_boosted.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rt_nr_boosted.i.i, align 4
  %tobool1.not.i.not.i = icmp eq i32 %19, 0
  br i1 %tobool1.not.i.not.i, label %if.end10, label %if.then16.i

if.then16.i:                                      ; preds = %rt_rq_throttled.exit.i, %if.end10.i
  %nr_running.i.i = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %nr_running.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_running.i.i, align 4
  %add.i.i = add i32 %21, %13
  store i32 %add.i.i, ptr %nr_running.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_update_nr_running_tp, i32 0, i32 1), ptr blockaddress(@sched_rt_rq_enqueue, %if.then.i.i)) #17
          to label %if.end.i.i [label %if.then.i.i], !srcloc !107

if.then.i.i:                                      ; preds = %if.then16.i
  tail call void @call_trace_sched_update_nr_running(ptr noundef %1, i32 noundef %13) #17
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then16.i
  %cmp.i.i = icmp ult i32 %21, 2
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end19.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %22 = ptrtoint ptr %nr_running.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_running.i.i, align 4
  %cmp3.i.i = icmp ugt i32 %23, 1
  br i1 %cmp3.i.i, label %do.end.i.i, label %if.end19.i

do.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %rd.i.i = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 35
  %24 = ptrtoint ptr %rd.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rd.i.i, align 8
  %overload.i.i = getelementptr inbounds %struct.root_domain, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %overload.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %overload.i.i, align 8
  %tobool.not.i28.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i28.i, label %do.body10.i.i, label %if.end19.i

do.body10.i.i:                                    ; preds = %do.end.i.i
  %28 = ptrtoint ptr %overload.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 1, ptr %overload.i.i, align 8
  br label %if.end19.i

if.end19.i:                                       ; preds = %do.body10.i.i, %do.end.i.i, %land.lhs.true.i.i, %if.end.i.i
  %29 = ptrtoint ptr %rt_queued.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %rt_queued.i, align 4
  tail call fastcc void @cpufreq_update_util(ptr noundef %1) #17
  br label %if.end10

if.else:                                          ; preds = %if.then
  %on_rq.i = getelementptr inbounds %struct.sched_rt_entity, ptr %11, i32 0, i32 4
  %30 = ptrtoint ptr %on_rq.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %on_rq.i, align 4
  %tobool8.not = icmp eq i16 %31, 0
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.else
  tail call fastcc void @enqueue_rt_entity(ptr noundef nonnull %11, i32 noundef 0)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.else, %if.end19.i, %rt_rq_throttled.exit.i, %do.end7.i
  %highest_prio = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 3
  %32 = ptrtoint ptr %highest_prio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %highest_prio, align 8
  %prio = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 13
  %34 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %prio, align 8
  %cmp = icmp slt i32 %33, %35
  br i1 %cmp, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end10
  tail call void @resched_curr(ptr noundef %1) #17
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enqueue_rt_entity(ptr noundef %rt_se, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %rt_rq1.i = getelementptr inbounds %struct.sched_rt_entity, ptr %rt_se, i32 0, i32 8
  %0 = ptrtoint ptr %rt_rq1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rt_rq1.i, align 4
  %rq.i = getelementptr inbounds %struct.rt_rq, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %rq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_schedstats, ptr blockaddress(@enqueue_rt_entity, %l_yes.i.i)) #17
          to label %arch_static_branch.exit.i [label %l_yes.i.i], !srcloc !107

l_yes.i.i:                                        ; preds = %entry
  br label %arch_static_branch.exit.i

arch_static_branch.exit.i:                        ; preds = %l_yes.i.i, %entry
  %retval.0.i.i = phi i1 [ false, %l_yes.i.i ], [ true, %entry ]
  %and.i = and i32 %flags, 1
  %tobool3.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = or i1 %tobool3.not.i, %retval.0.i.i
  br i1 %or.cond.i, label %update_stats_enqueue_rt.exit, label %if.then4.i

if.then4.i:                                       ; preds = %arch_static_branch.exit.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_schedstats, ptr blockaddress(@enqueue_rt_entity, %if.end.i.i)) #17
          to label %update_stats_enqueue_rt.exit [label %if.end.i.i], !srcloc !107

if.end.i.i:                                       ; preds = %if.then4.i
  %my_q.i.i = getelementptr inbounds %struct.sched_rt_entity, ptr %rt_se, i32 0, i32 9
  %4 = ptrtoint ptr %my_q.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %my_q.i.i, align 4
  %tobool.not.i17.i.i = icmp ne ptr %5, null
  %stats.i.i.i = getelementptr i8, ptr %rt_se, i32 384
  %tobool8.not20.i.i = icmp eq ptr %stats.i.i.i, null
  %tobool8.not.i.i = or i1 %tobool8.not20.i.i, %tobool.not.i17.i.i
  br i1 %tobool8.not.i.i, label %update_stats_enqueue_rt.exit, label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.end.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %rt_se, i32 -384
  %6 = ptrtoint ptr %rq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rq.i, align 8
  tail call void @__update_stats_enqueue_sleeper(ptr noundef %7, ptr noundef %add.ptr.i.i.i, ptr noundef nonnull %stats.i.i.i) #17
  br label %update_stats_enqueue_rt.exit

update_stats_enqueue_rt.exit:                     ; preds = %if.end10.i.i, %if.end.i.i, %if.then4.i, %arch_static_branch.exit.i
  tail call fastcc void @dequeue_rt_stack(ptr noundef %rt_se, i32 noundef %flags)
  %tobool.not11 = icmp eq ptr %rt_se, null
  br i1 %tobool.not11, label %for.end, label %for.body

for.body:                                         ; preds = %for.body, %update_stats_enqueue_rt.exit
  %rt_se.addr.012 = phi ptr [ %9, %for.body ], [ %rt_se, %update_stats_enqueue_rt.exit ]
  tail call fastcc void @__enqueue_rt_entity(ptr noundef nonnull %rt_se.addr.012, i32 noundef %flags)
  %parent = getelementptr inbounds %struct.sched_rt_entity, ptr %rt_se.addr.012, i32 0, i32 7
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %update_stats_enqueue_rt.exit
  %rq.i.i = getelementptr inbounds %struct.rq, ptr %3, i32 0, i32 15, i32 14
  %10 = ptrtoint ptr %rq.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rq.i.i, align 8
  %cmp.not.i = icmp eq ptr %11, %3
  br i1 %cmp.not.i, label %do.end7.i, label %do.body2.i, !prof !97

do.body2.i:                                       ; preds = %for.end
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/rt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1076, 0\0A.popsection", ""() #17, !srcloc !120
  unreachable

do.end7.i:                                        ; preds = %for.end
  %rt_queued.i = getelementptr inbounds %struct.rq, ptr %3, i32 0, i32 15, i32 8
  %12 = ptrtoint ptr %rt_queued.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rt_queued.i, align 4
  %tobool8.not.i = icmp eq i32 %13, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %enqueue_top_rt_rq.exit

if.end10.i:                                       ; preds = %do.end7.i
  %rt_throttled.i.i = getelementptr inbounds %struct.rq, ptr %3, i32 0, i32 15, i32 9
  %14 = ptrtoint ptr %rt_throttled.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rt_throttled.i.i, align 8
  %tobool.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i, label %if.end14.i, label %rt_rq_throttled.exit.i

rt_rq_throttled.exit.i:                           ; preds = %if.end10.i
  %rt_nr_boosted.i.i = getelementptr inbounds %struct.rq, ptr %3, i32 0, i32 15, i32 13
  %16 = ptrtoint ptr %rt_nr_boosted.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rt_nr_boosted.i.i, align 4
  %tobool1.not.i.not.i = icmp eq i32 %17, 0
  br i1 %tobool1.not.i.not.i, label %enqueue_top_rt_rq.exit, label %if.end14.i

if.end14.i:                                       ; preds = %rt_rq_throttled.exit.i, %if.end10.i
  %rt_nr_running.i = getelementptr inbounds %struct.rq, ptr %3, i32 0, i32 15, i32 1
  %18 = ptrtoint ptr %rt_nr_running.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rt_nr_running.i, align 8
  %tobool15.not.i = icmp eq i32 %19, 0
  br i1 %tobool15.not.i, label %if.end19.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end14.i
  %nr_running.i.i = getelementptr inbounds %struct.rq, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %nr_running.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_running.i.i, align 4
  %add.i.i = add i32 %21, %19
  store i32 %add.i.i, ptr %nr_running.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_update_nr_running_tp, i32 0, i32 1), ptr blockaddress(@enqueue_rt_entity, %if.then.i.i)) #17
          to label %if.end.i.i10 [label %if.then.i.i], !srcloc !107

if.then.i.i:                                      ; preds = %if.then16.i
  tail call void @call_trace_sched_update_nr_running(ptr noundef %3, i32 noundef %19) #17
  br label %if.end.i.i10

if.end.i.i10:                                     ; preds = %if.then.i.i, %if.then16.i
  %cmp.i.i = icmp ult i32 %21, 2
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %add_nr_running.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i10
  %22 = ptrtoint ptr %nr_running.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_running.i.i, align 4
  %cmp3.i.i = icmp ugt i32 %23, 1
  br i1 %cmp3.i.i, label %do.end.i.i, label %add_nr_running.exit.i

do.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %rd.i.i = getelementptr inbounds %struct.rq, ptr %3, i32 0, i32 35
  %24 = ptrtoint ptr %rd.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rd.i.i, align 8
  %overload.i.i = getelementptr inbounds %struct.root_domain, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %overload.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %overload.i.i, align 8
  %tobool.not.i28.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i28.i, label %do.body10.i.i, label %add_nr_running.exit.i

do.body10.i.i:                                    ; preds = %do.end.i.i
  %28 = ptrtoint ptr %overload.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 1, ptr %overload.i.i, align 8
  br label %add_nr_running.exit.i

add_nr_running.exit.i:                            ; preds = %do.body10.i.i, %do.end.i.i, %land.lhs.true.i.i, %if.end.i.i10
  %29 = ptrtoint ptr %rt_queued.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %rt_queued.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %add_nr_running.exit.i, %if.end14.i
  tail call fastcc void @cpufreq_update_util(ptr noundef %3) #17
  br label %enqueue_top_rt_rq.exit

enqueue_top_rt_rq.exit:                           ; preds = %if.end19.i, %rt_rq_throttled.exit.i, %do.end7.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @resched_curr(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpufreq_update_util(ptr noundef %rq) unnamed_addr #6 align 64 {
entry:
  %cpu.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 46
  %0 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu.i, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, ptrtoint (ptr @cpufreq_update_util_data to i32)
  %4 = inttoptr i32 %add to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %4, align 4
  %call7 = tail call i32 @rcu_read_lock_sched_held() #17
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.end13

land.lhs.true:                                    ; preds = %entry
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #17
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.end13, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @cpufreq_update_util.__warned, align 1
  br i1 %.b1, label %do.end13, label %if.then

if.then:                                          ; preds = %land.lhs.true10
  store i1 true, ptr @cpufreq_update_util.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 2836, ptr noundef nonnull @.str.5) #17
  br label %do.end13

do.end13:                                         ; preds = %if.then, %land.lhs.true10, %land.lhs.true, %entry
  %tobool15.not = icmp eq ptr %6, null
  br i1 %tobool15.not, label %if.end18, label %if.then16

if.then16:                                        ; preds = %do.end13
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %9 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %lockdep_assert_rq_held.exit.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %if.then16
  %core_enabled.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 81
  %10 = ptrtoint ptr %core_enabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %core_enabled.i.i.i, align 128
  %tobool.not.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i.i, label %__rq_lockp.exit.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  %core.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 79
  %12 = ptrtoint ptr %core.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core.i.i.i, align 8
  br label %__rq_lockp.exit.i.i

__rq_lockp.exit.i.i:                              ; preds = %if.then.i.i.i, %land.rhs.i.i
  %retval.0.i.i.i = phi ptr [ %13, %if.then.i.i.i ], [ %rq, %land.rhs.i.i ]
  %dep_map.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i, i32 0, i32 4
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #17
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %lockdep_assert_rq_held.exit.i, !prof !95

do.end.i.i:                                       ; preds = %__rq_lockp.exit.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1309, i32 noundef 9, ptr noundef null) #17
  br label %lockdep_assert_rq_held.exit.i

lockdep_assert_rq_held.exit.i:                    ; preds = %do.end.i.i, %__rq_lockp.exit.i.i, %if.then16
  %clock_update_flags.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 25
  %14 = ptrtoint ptr %clock_update_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %clock_update_flags.i.i, align 4
  %cmp.i.i = icmp ult i32 %15, 2
  br i1 %cmp.i.i, label %land.rhs.i3.i, label %rq_clock.exit

land.rhs.i3.i:                                    ; preds = %lockdep_assert_rq_held.exit.i
  %.b37.i.i = load i1, ptr @assert_clock_updated.__already_done, align 1
  br i1 %.b37.i.i, label %rq_clock.exit, label %if.then.i.i, !prof !97

if.then.i.i:                                      ; preds = %land.rhs.i3.i
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #17
  br label %rq_clock.exit

rq_clock.exit:                                    ; preds = %if.then.i.i, %land.rhs.i3.i, %lockdep_assert_rq_held.exit.i
  %clock.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 26
  %16 = ptrtoint ptr %clock.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %clock.i, align 32
  tail call void %8(ptr noundef nonnull %6, i64 noundef %17, i32 noundef 0) #17
  br label %if.end18

if.end18:                                         ; preds = %rq_clock.exit, %do.end13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_trace_sched_update_nr_running(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dequeue_rt_stack(ptr noundef %rt_se, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not22 = icmp eq ptr %rt_se, null
  br i1 %tobool.not22, label %for.end, label %for.body

for.body:                                         ; preds = %for.body, %entry
  %back.024 = phi ptr [ %rt_se.addr.023, %for.body ], [ null, %entry ]
  %rt_se.addr.023 = phi ptr [ %2, %for.body ], [ %rt_se, %entry ]
  %back1 = getelementptr inbounds %struct.sched_rt_entity, ptr %rt_se.addr.023, i32 0, i32 6
  %0 = ptrtoint ptr %back1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %back.024, ptr %back1, align 4
  %parent = getelementptr inbounds %struct.sched_rt_entity, ptr %rt_se.addr.023, i32 0, i32 7
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %back.0.lcssa = phi ptr [ null, %entry ], [ %rt_se.addr.023, %for.body ]
  %rt_rq.i = getelementptr inbounds %struct.sched_rt_entity, ptr %back.0.lcssa, i32 0, i32 8
  %3 = ptrtoint ptr %rt_rq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rt_rq.i, align 4
  %rq.i.i = getelementptr inbounds %struct.rt_rq, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %rq.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rq.i.i, align 8
  %rt.i = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 15
  %cmp.not.i = icmp eq ptr %rt.i, %4
  br i1 %cmp.not.i, label %do.end7.i, label %do.body2.i, !prof !97

do.body2.i:                                       ; preds = %for.end
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/rt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1059, 0\0A.popsection", ""() #17, !srcloc !121
  unreachable

do.end7.i:                                        ; preds = %for.end
  %rt_queued.i = getelementptr inbounds %struct.rt_rq, ptr %4, i32 0, i32 8
  %7 = ptrtoint ptr %rt_queued.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rt_queued.i, align 4
  %tobool8.not.i = icmp eq i32 %8, 0
  br i1 %tobool8.not.i, label %dequeue_top_rt_rq.exit, label %do.body11.i

do.body11.i:                                      ; preds = %do.end7.i
  %nr_running.i = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %nr_running.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_running.i, align 4
  %tobool12.not.i = icmp eq i32 %10, 0
  br i1 %tobool12.not.i, label %do.body22.i, label %do.end30.i, !prof !95

do.body22.i:                                      ; preds = %do.body11.i
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/rt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #17, !srcloc !122
  unreachable

do.end30.i:                                       ; preds = %do.body11.i
  %rt_nr_running.i = getelementptr inbounds %struct.rt_rq, ptr %4, i32 0, i32 1
  %11 = ptrtoint ptr %rt_nr_running.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rt_nr_running.i, align 8
  %sub.i.i = sub i32 %10, %12
  %13 = ptrtoint ptr %nr_running.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub.i.i, ptr %nr_running.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_update_nr_running_tp, i32 0, i32 1), ptr blockaddress(@dequeue_rt_stack, %if.then.i.i)) #17
          to label %sub_nr_running.exit.i [label %if.then.i.i], !srcloc !107

if.then.i.i:                                      ; preds = %do.end30.i
  %sub1.i.i = sub i32 0, %12
  tail call void @call_trace_sched_update_nr_running(ptr noundef %6, i32 noundef %sub1.i.i) #17
  br label %sub_nr_running.exit.i

sub_nr_running.exit.i:                            ; preds = %if.then.i.i, %do.end30.i
  %14 = ptrtoint ptr %rt_queued.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %rt_queued.i, align 4
  br label %dequeue_top_rt_rq.exit

dequeue_top_rt_rq.exit:                           ; preds = %sub_nr_running.exit.i, %do.end7.i
  %tobool3.not25 = icmp eq ptr %back.0.lcssa, null
  br i1 %tobool3.not25, label %for.end9, label %for.body4.lr.ph

for.body4.lr.ph:                                  ; preds = %dequeue_top_rt_rq.exit
  %and.i.i = and i32 %flags, 6
  %cmp.i.not.i = icmp eq i32 %and.i.i, 2
  br label %for.body4

for.body4:                                        ; preds = %for.inc7, %for.body4.lr.ph
  %rt_se.addr.126 = phi ptr [ %back.0.lcssa, %for.body4.lr.ph ], [ %110, %for.inc7 ]
  %on_rq.i = getelementptr inbounds %struct.sched_rt_entity, ptr %rt_se.addr.126, i32 0, i32 4
  %15 = ptrtoint ptr %on_rq.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %on_rq.i, align 4
  %tobool6.not = icmp eq i16 %16, 0
  br i1 %tobool6.not, label %for.inc7, label %if.then

if.then:                                          ; preds = %for.body4
  %rt_rq.i.i = getelementptr inbounds %struct.sched_rt_entity, ptr %rt_se.addr.126, i32 0, i32 8
  %17 = ptrtoint ptr %rt_rq.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rt_rq.i.i, align 4
  br i1 %cmp.i.not.i, label %if.end39.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %on_list.i = getelementptr inbounds %struct.sched_rt_entity, ptr %rt_se.addr.126, i32 0, i32 5
  %19 = ptrtoint ptr %on_list.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %on_list.i, align 2
  %tobool.not.i = icmp eq i16 %20, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end31.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b47.i = load i1, ptr @__dequeue_rt_entity.__already_done, align 1
  br i1 %.b47.i, label %if.end31.i, label %if.then10.i, !prof !97

if.then10.i:                                      ; preds = %land.rhs.i
  store i1 true, ptr @__dequeue_rt_entity.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1437, i32 noundef 9, ptr noundef null) #17
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then10.i, %land.rhs.i, %if.then.i
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %rt_se.addr.126) #17
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end31.i
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %rt_se.addr.126, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i.i, align 4
  %23 = ptrtoint ptr %rt_se.addr.126 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rt_se.addr.126, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.end31.i
  %27 = ptrtoint ptr %rt_se.addr.126 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %rt_se.addr.126, ptr %rt_se.addr.126, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %rt_se.addr.126, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %rt_se.addr.126, ptr %prev.i3.i.i.i, align 4
  %queue.i.i = getelementptr inbounds %struct.rt_prio_array, ptr %18, i32 0, i32 1
  %my_q.i.i.i.i = getelementptr inbounds %struct.sched_rt_entity, ptr %rt_se.addr.126, i32 0, i32 9
  %29 = ptrtoint ptr %my_q.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %my_q.i.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %30, null
  %highest_prio.i.i.i = getelementptr inbounds %struct.rt_rq, ptr %30, i32 0, i32 3
  %prio.i.i.i = getelementptr i8, ptr %rt_se.addr.126, i32 -328
  %retval.0.in.i.i.i = select i1 %tobool.not.i.i.i, ptr %prio.i.i.i, ptr %highest_prio.i.i.i
  %31 = ptrtoint ptr %retval.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %retval.0.i.i.i = load i32, ptr %retval.0.in.i.i.i, align 8
  %add.ptr.i.i = getelementptr %struct.list_head, ptr %queue.i.i, i32 %retval.0.i.i.i
  %32 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %add.ptr.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %33, %add.ptr.i.i
  br i1 %cmp.i.not.i.i, label %if.then.i.i19, label %__delist_rt_entity.exit.i

if.then.i.i19:                                    ; preds = %list_del_init.exit.i.i
  %rem.i.i.i = and i32 %retval.0.i.i.i, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %retval.0.i.i.i, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %18, i32 %div2.i.i.i
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %34 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr.i.i.i, align 4
  %and.i.i.i = and i32 %35, %neg.i.i.i
  store i32 %and.i.i.i, ptr %add.ptr.i.i.i, align 4
  br label %__delist_rt_entity.exit.i

__delist_rt_entity.exit.i:                        ; preds = %if.then.i.i19, %list_del_init.exit.i.i
  %36 = ptrtoint ptr %on_list.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %on_list.i, align 2
  br label %if.end39.i

if.end39.i:                                       ; preds = %__delist_rt_entity.exit.i, %if.then
  %37 = ptrtoint ptr %on_rq.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %on_rq.i, align 4
  %my_q.i.i.i48.i = getelementptr inbounds %struct.sched_rt_entity, ptr %rt_se.addr.126, i32 0, i32 9
  %38 = ptrtoint ptr %my_q.i.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %my_q.i.i.i48.i, align 4
  %tobool.not.i.i49.i = icmp eq ptr %39, null
  %highest_prio.i.i50.i = getelementptr inbounds %struct.rt_rq, ptr %39, i32 0, i32 3
  %prio.i.i51.i = getelementptr i8, ptr %rt_se.addr.126, i32 -328
  %retval.0.in.i.i52.i = select i1 %tobool.not.i.i49.i, ptr %prio.i.i51.i, ptr %highest_prio.i.i50.i
  %40 = ptrtoint ptr %retval.0.in.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %retval.0.i.i53.i = load i32, ptr %retval.0.in.i.i52.i, align 8
  %cmp.i.i.i = icmp sgt i32 %retval.0.i.i53.i, 99
  br i1 %cmp.i.i.i, label %do.end.i.i, label %if.end.i.i, !prof !95

do.end.i.i:                                       ; preds = %if.end39.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1258, i32 noundef 9, ptr noundef null) #17
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.end39.i
  %rt_nr_running.i.i = getelementptr inbounds %struct.rt_rq, ptr %18, i32 0, i32 1
  %41 = ptrtoint ptr %rt_nr_running.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rt_nr_running.i.i, align 8
  %tobool23.not.i.i = icmp eq i32 %42, 0
  br i1 %tobool23.not.i.i, label %do.end41.i.i, label %if.end47.i.i, !prof !95

do.end41.i.i:                                     ; preds = %if.end.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1259, i32 noundef 9, ptr noundef null) #17
  br label %if.end47.i.i

if.end47.i.i:                                     ; preds = %do.end41.i.i, %if.end.i.i
  %43 = ptrtoint ptr %my_q.i.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %my_q.i.i.i48.i, align 4
  %tobool.not.i73.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i73.i.i, label %rt_se_nr_running.exit.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end47.i.i
  %rt_nr_running.i.i.i = getelementptr inbounds %struct.rt_rq, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %rt_nr_running.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rt_nr_running.i.i.i, align 8
  br label %rt_se_nr_running.exit.i.i

rt_se_nr_running.exit.i.i:                        ; preds = %if.then.i.i.i, %if.end47.i.i
  %retval.0.i74.i.i = phi i32 [ %46, %if.then.i.i.i ], [ 1, %if.end47.i.i ]
  %47 = ptrtoint ptr %rt_nr_running.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rt_nr_running.i.i, align 8
  %sub.i.i21 = sub i32 %48, %retval.0.i74.i.i
  store i32 %sub.i.i21, ptr %rt_nr_running.i.i, align 8
  %49 = ptrtoint ptr %my_q.i.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %my_q.i.i.i48.i, align 4
  %tobool.not.i76.i.i = icmp eq ptr %50, null
  br i1 %tobool.not.i76.i.i, label %rt_task_of.exit.i.i.i, label %if.then.i77.i.i

if.then.i77.i.i:                                  ; preds = %rt_se_nr_running.exit.i.i
  %rr_nr_running.i.i.i = getelementptr inbounds %struct.rt_rq, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %rr_nr_running.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rr_nr_running.i.i.i, align 4
  br label %rt_se_rr_nr_running.exit.i.i

rt_task_of.exit.i.i.i:                            ; preds = %rt_se_nr_running.exit.i.i
  %policy.i.i.i = getelementptr i8, ptr %rt_se.addr.126, i32 644
  %53 = ptrtoint ptr %policy.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %policy.i.i.i, align 4
  %cmp.i78.i.i = icmp eq i32 %54, 2
  %cond.i.i.i = zext i1 %cmp.i78.i.i to i32
  br label %rt_se_rr_nr_running.exit.i.i

rt_se_rr_nr_running.exit.i.i:                     ; preds = %rt_task_of.exit.i.i.i, %if.then.i77.i.i
  %retval.0.i79.i.i = phi i32 [ %52, %if.then.i77.i.i ], [ %cond.i.i.i, %rt_task_of.exit.i.i.i ]
  %rr_nr_running.i.i = getelementptr inbounds %struct.rt_rq, ptr %18, i32 0, i32 2
  %55 = ptrtoint ptr %rr_nr_running.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rr_nr_running.i.i, align 4
  %sub58.i.i = sub i32 %56, %retval.0.i79.i.i
  store i32 %sub58.i.i, ptr %rr_nr_running.i.i, align 4
  %57 = ptrtoint ptr %my_q.i.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %my_q.i.i.i48.i, align 4
  %tobool.not.i81.i.i = icmp eq ptr %58, null
  %highest_prio.i82.i.i = getelementptr inbounds %struct.rt_rq, ptr %58, i32 0, i32 3
  %retval.0.in.i84.i.i = select i1 %tobool.not.i81.i.i, ptr %prio.i.i51.i, ptr %highest_prio.i82.i.i
  %59 = ptrtoint ptr %retval.0.in.i84.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %retval.0.i85.i.i = load i32, ptr %retval.0.in.i84.i.i, align 8
  %highest_prio.i86.i.i = getelementptr inbounds %struct.rt_rq, ptr %18, i32 0, i32 3
  %60 = ptrtoint ptr %highest_prio.i86.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %highest_prio.i86.i.i, align 8
  %tobool.not.i88.i.i = icmp eq i32 %48, %retval.0.i74.i.i
  br i1 %tobool.not.i88.i.i, label %if.end28.sink.split.i.i.i, label %if.then.i90.i.i

if.then.i90.i.i:                                  ; preds = %rt_se_rr_nr_running.exit.i.i
  %cmp.i89.i.i = icmp sgt i32 %61, %retval.0.i85.i.i
  br i1 %cmp.i89.i.i, label %do.end.i.i.i, label %if.end.i.i.i, !prof !95

do.end.i.i.i:                                     ; preds = %if.then.i90.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1155, i32 noundef 9, ptr noundef null) #17
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i90.i.i
  %cmp21.i.i.i = icmp eq i32 %61, %retval.0.i85.i.i
  br i1 %cmp21.i.i.i, label %if.then22.i.i.i, label %if.end28.i.i.i

if.then22.i.i.i:                                  ; preds = %if.end.i.i.i
  %62 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %18, align 4
  %tobool.not.i.i.i.i = icmp eq i32 %63, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i54.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then22.i.i.i
  %64 = tail call i32 @llvm.cttz.i32(i32 %63, i1 true) #17, !range !108
  br label %if.end28.sink.split.i.i.i

if.end.i.i.i54.i:                                 ; preds = %if.then22.i.i.i
  %arrayidx2.i.i.i.i = getelementptr i32, ptr %18, i32 1
  %65 = ptrtoint ptr %arrayidx2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx2.i.i.i.i, align 4
  %tobool3.not.i.i.i.i = icmp eq i32 %66, 0
  br i1 %tobool3.not.i.i.i.i, label %if.end7.i.i.i.i, label %if.then4.i.i.i.i

if.then4.i.i.i.i:                                 ; preds = %if.end.i.i.i54.i
  %67 = tail call i32 @llvm.cttz.i32(i32 %66, i1 true) #17, !range !108
  %add.i.i.i.i = or i32 %67, 32
  br label %if.end28.sink.split.i.i.i

if.end7.i.i.i.i:                                  ; preds = %if.end.i.i.i54.i
  %arrayidx8.i.i.i.i = getelementptr i32, ptr %18, i32 2
  %68 = ptrtoint ptr %arrayidx8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx8.i.i.i.i, align 4
  %tobool9.not.i.i.i.i = icmp eq i32 %69, 0
  br i1 %tobool9.not.i.i.i.i, label %if.end14.i.i.i.i, label %if.then10.i.i.i.i

if.then10.i.i.i.i:                                ; preds = %if.end7.i.i.i.i
  %70 = tail call i32 @llvm.cttz.i32(i32 %69, i1 true) #17, !range !108
  %add13.i.i.i.i = or i32 %70, 64
  br label %if.end28.sink.split.i.i.i

if.end14.i.i.i.i:                                 ; preds = %if.end7.i.i.i.i
  %arrayidx15.i.i.i.i = getelementptr i32, ptr %18, i32 3
  %71 = ptrtoint ptr %arrayidx15.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx15.i.i.i.i, align 4
  %73 = tail call i32 @llvm.cttz.i32(i32 %72, i1 false) #17, !range !108
  %add17.i.i.i.i = add nuw nsw i32 %73, 96
  br label %if.end28.sink.split.i.i.i

if.end28.sink.split.i.i.i:                        ; preds = %if.end14.i.i.i.i, %if.then10.i.i.i.i, %if.then4.i.i.i.i, %if.then.i.i.i.i, %rt_se_rr_nr_running.exit.i.i
  %retval.0.i.sink.i.i.i = phi i32 [ %64, %if.then.i.i.i.i ], [ %add.i.i.i.i, %if.then4.i.i.i.i ], [ %add13.i.i.i.i, %if.then10.i.i.i.i ], [ %add17.i.i.i.i, %if.end14.i.i.i.i ], [ 99, %rt_se_rr_nr_running.exit.i.i ]
  %74 = ptrtoint ptr %highest_prio.i86.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %retval.0.i.sink.i.i.i, ptr %highest_prio.i86.i.i, align 8
  br label %if.end28.i.i.i

if.end28.i.i.i:                                   ; preds = %if.end28.sink.split.i.i.i, %if.end.i.i.i
  %rq.i.i.i.i.i = getelementptr inbounds %struct.rt_rq, ptr %18, i32 0, i32 14
  %75 = ptrtoint ptr %rq.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rq.i.i.i.i.i, align 8
  %rt.i.i.i.i = getelementptr inbounds %struct.rq, ptr %76, i32 0, i32 15
  %cmp.not.i.i.i.i = icmp eq ptr %rt.i.i.i.i, %18
  br i1 %cmp.not.i.i.i.i, label %if.end.i40.i.i.i, label %dec_rt_prio.exit.i.i

if.end.i40.i.i.i:                                 ; preds = %if.end28.i.i.i
  %online.i.i.i.i = getelementptr inbounds %struct.rq, ptr %76, i32 0, i32 47
  %77 = ptrtoint ptr %online.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %online.i.i.i.i, align 8
  %tobool.not.i39.i.i.i = icmp eq i32 %78, 0
  br i1 %tobool.not.i39.i.i.i, label %dec_rt_prio.exit.i.i, label %land.lhs.true.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i40.i.i.i
  %79 = ptrtoint ptr %highest_prio.i86.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %highest_prio.i86.i.i, align 8
  %cmp1.not.i.i.i.i = icmp eq i32 %80, %61
  br i1 %cmp1.not.i.i.i.i, label %dec_rt_prio.exit.i.i, label %if.then2.i.i.i.i

if.then2.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %rd.i.i.i.i = getelementptr inbounds %struct.rq, ptr %76, i32 0, i32 35
  %81 = ptrtoint ptr %rd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rd.i.i.i.i, align 8
  %cpupri.i.i.i.i = getelementptr inbounds %struct.root_domain, ptr %82, i32 0, i32 19
  %cpu.i.i.i.i = getelementptr inbounds %struct.rq, ptr %76, i32 0, i32 46
  %83 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cpu.i.i.i.i, align 4
  tail call void @cpupri_set(ptr noundef %cpupri.i.i.i.i, i32 noundef %84, i32 noundef %80) #17
  br label %dec_rt_prio.exit.i.i

dec_rt_prio.exit.i.i:                             ; preds = %if.then2.i.i.i.i, %land.lhs.true.i.i.i.i, %if.end.i40.i.i.i, %if.end28.i.i.i
  %85 = ptrtoint ptr %my_q.i.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %my_q.i.i.i48.i, align 4
  %tobool.not.i91.i.i = icmp eq ptr %86, null
  br i1 %tobool.not.i91.i.i, label %rt_task_of.exit.i93.i.i, label %if.then.i.i95.i.i

rt_task_of.exit.i93.i.i:                          ; preds = %dec_rt_prio.exit.i.i
  %87 = ptrtoint ptr %rq.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rq.i.i.i.i.i, align 8
  %rt.i.i.i = getelementptr inbounds %struct.rq, ptr %88, i32 0, i32 15
  %rt_nr_total.i.i.i = getelementptr inbounds %struct.rq, ptr %88, i32 0, i32 15, i32 5
  %89 = ptrtoint ptr %rt_nr_total.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rt_nr_total.i.i.i, align 4
  %dec.i.i.i = add i32 %90, -1
  store i32 %dec.i.i.i, ptr %rt_nr_total.i.i.i, align 4
  %nr_cpus_allowed.i.i.i = getelementptr i8, ptr %rt_se.addr.126, i32 648
  %91 = ptrtoint ptr %nr_cpus_allowed.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %nr_cpus_allowed.i.i.i, align 8
  %cmp.i92.i.i = icmp sgt i32 %92, 1
  br i1 %cmp.i92.i.i, label %if.then2.i.i.i, label %dec_rt_migration.exit.i.i

if.then2.i.i.i:                                   ; preds = %rt_task_of.exit.i93.i.i
  %rt_nr_migratory.i.i.i = getelementptr inbounds %struct.rq, ptr %88, i32 0, i32 15, i32 4
  %93 = ptrtoint ptr %rt_nr_migratory.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rt_nr_migratory.i.i.i, align 8
  %dec3.i.i.i = add i32 %94, -1
  store i32 %dec3.i.i.i, ptr %rt_nr_migratory.i.i.i, align 8
  br label %dec_rt_migration.exit.i.i

dec_rt_migration.exit.i.i:                        ; preds = %if.then2.i.i.i, %rt_task_of.exit.i93.i.i
  tail call fastcc void @update_rt_migration(ptr noundef %rt.i.i.i) #17
  %95 = ptrtoint ptr %my_q.i.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %.pr.i.i = load ptr, ptr %my_q.i.i.i48.i, align 4
  %tobool.not.i.i94.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %tobool.not.i.i94.i.i, label %rt_se_boosted.exit.i.i.i, label %if.then.i.i95.i.i

if.then.i.i95.i.i:                                ; preds = %dec_rt_migration.exit.i.i, %dec_rt_prio.exit.i.i
  %96 = phi ptr [ %.pr.i.i, %dec_rt_migration.exit.i.i ], [ %86, %dec_rt_prio.exit.i.i ]
  %rt_nr_boosted.i.i.i.i = getelementptr inbounds %struct.rt_rq, ptr %96, i32 0, i32 13
  %97 = ptrtoint ptr %rt_nr_boosted.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %rt_nr_boosted.i.i.i.i, align 4
  %tobool1.i.not.i.i.i = icmp eq i32 %98, 0
  br i1 %tobool1.i.not.i.i.i, label %if.end.i99.i.i, label %if.then.i97.i.i

rt_se_boosted.exit.i.i.i:                         ; preds = %dec_rt_migration.exit.i.i
  %99 = ptrtoint ptr %prio.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %prio.i.i51.i, align 8
  %normal_prio.i.i.i.i = getelementptr i8, ptr %rt_se.addr.126, i32 -320
  %101 = ptrtoint ptr %normal_prio.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %normal_prio.i.i.i.i, align 64
  %cmp.i.not.i.i.i = icmp eq i32 %100, %102
  br i1 %cmp.i.not.i.i.i, label %if.end.i99.i.i, label %if.then.i97.i.i

if.then.i97.i.i:                                  ; preds = %rt_se_boosted.exit.i.i.i, %if.then.i.i95.i.i
  %rt_nr_boosted.i.i.i = getelementptr inbounds %struct.rt_rq, ptr %18, i32 0, i32 13
  %103 = ptrtoint ptr %rt_nr_boosted.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rt_nr_boosted.i.i.i, align 4
  %dec.i96.i.i = add i32 %104, -1
  store i32 %dec.i96.i.i, ptr %rt_nr_boosted.i.i.i, align 4
  br label %if.end.i99.i.i

if.end.i99.i.i:                                   ; preds = %if.then.i97.i.i, %rt_se_boosted.exit.i.i.i, %if.then.i.i95.i.i
  %105 = ptrtoint ptr %rt_nr_running.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %rt_nr_running.i.i, align 8
  %tobool1.not.i.i.i = icmp eq i32 %106, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %for.inc7

land.rhs.i.i.i:                                   ; preds = %if.end.i99.i.i
  %rt_nr_boosted2.i.i.i = getelementptr inbounds %struct.rt_rq, ptr %18, i32 0, i32 13
  %107 = ptrtoint ptr %rt_nr_boosted2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %rt_nr_boosted2.i.i.i, align 4
  %tobool3.not.i.i.i = icmp eq i32 %108, 0
  br i1 %tobool3.not.i.i.i, label %for.inc7, label %do.end.i100.i.i, !prof !97

do.end.i100.i.i:                                  ; preds = %land.rhs.i.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1200, i32 noundef 9, ptr noundef null) #17
  br label %for.inc7

for.inc7:                                         ; preds = %do.end.i100.i.i, %land.rhs.i.i.i, %if.end.i99.i.i, %for.body4
  %back8 = getelementptr inbounds %struct.sched_rt_entity, ptr %rt_se.addr.126, i32 0, i32 6
  %109 = ptrtoint ptr %back8 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %back8, align 4
  %tobool3.not = icmp eq ptr %110, null
  br i1 %tobool3.not, label %for.end9, label %for.body4

for.end9:                                         ; preds = %for.inc7, %dequeue_top_rt_rq.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__enqueue_rt_entity(ptr noundef %rt_se, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %rt_rq.i = getelementptr inbounds %struct.sched_rt_entity, ptr %rt_se, i32 0, i32 8
  %0 = ptrtoint ptr %rt_rq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rt_rq.i, align 4
  %my_q.i = getelementptr inbounds %struct.sched_rt_entity, ptr %rt_se, i32 0, i32 9
  %2 = ptrtoint ptr %my_q.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %my_q.i, align 4
  %queue2 = getelementptr inbounds %struct.rt_prio_array, ptr %1, i32 0, i32 1
  %tobool.not.i = icmp eq ptr %3, null
  %highest_prio.i = getelementptr inbounds %struct.rt_rq, ptr %3, i32 0, i32 3
  %prio.i = getelementptr i8, ptr %rt_se, i32 -328
  %retval.0.in.i = select i1 %tobool.not.i, ptr %prio.i, ptr %highest_prio.i
  %4 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %retval.0.i = load i32, ptr %retval.0.in.i, align 8
  %add.ptr = getelementptr %struct.list_head, ptr %queue2, i32 %retval.0.i
  br i1 %tobool.not.i, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %rt_throttled.i = getelementptr inbounds %struct.rt_rq, ptr %3, i32 0, i32 9
  %5 = ptrtoint ptr %rt_throttled.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rt_throttled.i, align 8
  %tobool.not.i83 = icmp eq i32 %6, 0
  br i1 %tobool.not.i83, label %lor.lhs.false, label %rt_rq_throttled.exit

rt_rq_throttled.exit:                             ; preds = %land.lhs.true
  %rt_nr_boosted.i = getelementptr inbounds %struct.rt_rq, ptr %3, i32 0, i32 13
  %7 = ptrtoint ptr %rt_nr_boosted.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rt_nr_boosted.i, align 4
  %tobool1.not.i.not = icmp eq i32 %8, 0
  br i1 %tobool1.not.i.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %rt_rq_throttled.exit, %land.lhs.true
  %rt_nr_running = getelementptr inbounds %struct.rt_rq, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %rt_nr_running to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rt_nr_running, align 8
  %tobool6.not = icmp eq i32 %10, 0
  br i1 %tobool6.not, label %if.then, label %if.end9

if.then:                                          ; preds = %lor.lhs.false, %rt_rq_throttled.exit
  %on_list = getelementptr inbounds %struct.sched_rt_entity, ptr %rt_se, i32 0, i32 5
  %11 = ptrtoint ptr %on_list to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %on_list, align 2
  %tobool7.not = icmp eq i16 %12, 0
  br i1 %tobool7.not, label %cleanup, label %if.then8

if.then8:                                         ; preds = %if.then
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rt_se) #17
  br i1 %call.i.i.i, label %if.end.i.i.i, label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %rt_se, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %rt_se to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rt_se, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then8
  %19 = ptrtoint ptr %rt_se to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %rt_se, ptr %rt_se, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %rt_se, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %rt_se, ptr %prev.i3.i.i, align 4
  %21 = ptrtoint ptr %my_q.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %my_q.i, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  %highest_prio.i.i = getelementptr inbounds %struct.rt_rq, ptr %22, i32 0, i32 3
  %retval.0.in.i.i = select i1 %tobool.not.i.i, ptr %prio.i, ptr %highest_prio.i.i
  %23 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %retval.0.i.i = load i32, ptr %retval.0.in.i.i, align 8
  %add.ptr.i84 = getelementptr %struct.list_head, ptr %queue2, i32 %retval.0.i.i
  %24 = ptrtoint ptr %add.ptr.i84 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %add.ptr.i84, align 4
  %cmp.i.not.i = icmp eq ptr %25, %add.ptr.i84
  br i1 %cmp.i.not.i, label %if.then.i, label %__delist_rt_entity.exit

if.then.i:                                        ; preds = %list_del_init.exit.i
  %rem.i.i = and i32 %retval.0.i.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %retval.0.i.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %1, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %27, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  br label %__delist_rt_entity.exit

__delist_rt_entity.exit:                          ; preds = %if.then.i, %list_del_init.exit.i
  %28 = ptrtoint ptr %on_list to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %on_list, align 2
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false, %entry
  %and.i = and i32 %flags, 6
  %cmp.i.not = icmp eq i32 %and.i, 2
  br i1 %cmp.i.not, label %if.end58, label %if.then11

if.then11:                                        ; preds = %if.end9
  %on_list12 = getelementptr inbounds %struct.sched_rt_entity, ptr %rt_se, i32 0, i32 5
  %29 = ptrtoint ptr %on_list12 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %on_list12, align 2
  %tobool13.not = icmp eq i16 %30, 0
  br i1 %tobool13.not, label %if.end43, label %land.rhs

land.rhs:                                         ; preds = %if.then11
  %.b82 = load i1, ptr @__enqueue_rt_entity.__already_done, align 1
  br i1 %.b82, label %if.end43, label %if.then21, !prof !97

if.then21:                                        ; preds = %land.rhs
  store i1 true, ptr @__enqueue_rt_entity.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1417, i32 noundef 9, ptr noundef null) #17
  br label %if.end43

if.end43:                                         ; preds = %if.then21, %land.rhs, %if.then11
  %and = and i32 %flags, 16
  %tobool51.not = icmp eq i32 %and, 0
  br i1 %tobool51.not, label %if.else, label %if.then52

if.then52:                                        ; preds = %if.end43
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %rt_se, ptr noundef %add.ptr, ptr noundef %32) #17
  br i1 %call.i.i, label %if.end.i.i, label %if.end54

if.end.i.i:                                       ; preds = %if.then52
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  br label %if.end54.sink.split

if.else:                                          ; preds = %if.end43
  %prev.i = getelementptr %struct.list_head, ptr %queue2, i32 %retval.0.i, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i, align 4
  %call.i.i85 = tail call zeroext i1 @__list_add_valid(ptr noundef %rt_se, ptr noundef %34, ptr noundef %add.ptr) #17
  br i1 %call.i.i85, label %if.end54.sink.split, label %if.end54

if.end54.sink.split:                              ; preds = %if.else, %if.end.i.i
  %prev.i.sink = phi ptr [ %prev1.i.i, %if.end.i.i ], [ %prev.i, %if.else ]
  %add.ptr.sink = phi ptr [ %32, %if.end.i.i ], [ %add.ptr, %if.else ]
  %.sink103 = phi ptr [ %add.ptr, %if.end.i.i ], [ %34, %if.else ]
  %35 = ptrtoint ptr %prev.i.sink to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %rt_se, ptr %prev.i.sink, align 4
  %36 = ptrtoint ptr %rt_se to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr.sink, ptr %rt_se, align 4
  %prev3.i.i86 = getelementptr inbounds %struct.list_head, ptr %rt_se, i32 0, i32 1
  %37 = ptrtoint ptr %prev3.i.i86 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %.sink103, ptr %prev3.i.i86, align 4
  %38 = ptrtoint ptr %.sink103 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %rt_se, ptr %.sink103, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.end54.sink.split, %if.else, %if.then52
  %39 = ptrtoint ptr %my_q.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %my_q.i, align 4
  %tobool.not.i89 = icmp eq ptr %40, null
  %highest_prio.i90 = getelementptr inbounds %struct.rt_rq, ptr %40, i32 0, i32 3
  %retval.0.in.i92 = select i1 %tobool.not.i89, ptr %prio.i, ptr %highest_prio.i90
  %41 = ptrtoint ptr %retval.0.in.i92 to i32
  call void @__asan_load4_noabort(i32 %41)
  %retval.0.i93 = load i32, ptr %retval.0.in.i92, align 8
  %rem.i = and i32 %retval.0.i93, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %retval.0.i93, 5
  %add.ptr.i = getelementptr i32, ptr %1, i32 %div2.i
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %43
  store i32 %or.i, ptr %add.ptr.i, align 4
  %44 = ptrtoint ptr %on_list12 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 1, ptr %on_list12, align 2
  br label %if.end58

if.end58:                                         ; preds = %if.end54, %if.end9
  %on_rq = getelementptr inbounds %struct.sched_rt_entity, ptr %rt_se, i32 0, i32 4
  %45 = ptrtoint ptr %on_rq to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 1, ptr %on_rq, align 4
  %46 = ptrtoint ptr %my_q.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %my_q.i, align 4
  %tobool.not.i.i95 = icmp eq ptr %47, null
  %highest_prio.i.i96 = getelementptr inbounds %struct.rt_rq, ptr %47, i32 0, i32 3
  %retval.0.in.i.i98 = select i1 %tobool.not.i.i95, ptr %prio.i, ptr %highest_prio.i.i96
  %48 = ptrtoint ptr %retval.0.in.i.i98 to i32
  call void @__asan_load4_noabort(i32 %48)
  %retval.0.i.i99 = load i32, ptr %retval.0.in.i.i98, align 8
  %cmp.i.i = icmp sgt i32 %retval.0.i.i99, 99
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i, !prof !95

do.end.i:                                         ; preds = %if.end58
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1246, i32 noundef 9, ptr noundef null) #17
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end58
  %49 = ptrtoint ptr %my_q.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %my_q.i, align 4
  %tobool.not.i36.i = icmp eq ptr %50, null
  br i1 %tobool.not.i36.i, label %rt_se_nr_running.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %rt_nr_running.i.i = getelementptr inbounds %struct.rt_rq, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %rt_nr_running.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rt_nr_running.i.i, align 8
  br label %rt_se_nr_running.exit.i

rt_se_nr_running.exit.i:                          ; preds = %if.then.i.i, %if.end.i
  %retval.0.i37.i = phi i32 [ %52, %if.then.i.i ], [ 1, %if.end.i ]
  %rt_nr_running.i = getelementptr inbounds %struct.rt_rq, ptr %1, i32 0, i32 1
  %53 = ptrtoint ptr %rt_nr_running.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rt_nr_running.i, align 8
  %add.i = add i32 %54, %retval.0.i37.i
  store i32 %add.i, ptr %rt_nr_running.i, align 8
  %55 = ptrtoint ptr %my_q.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %my_q.i, align 4
  %tobool.not.i39.i = icmp eq ptr %56, null
  br i1 %tobool.not.i39.i, label %rt_task_of.exit.i.i, label %if.then.i40.i

if.then.i40.i:                                    ; preds = %rt_se_nr_running.exit.i
  %rr_nr_running.i.i = getelementptr inbounds %struct.rt_rq, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %rr_nr_running.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rr_nr_running.i.i, align 4
  br label %rt_se_rr_nr_running.exit.i

rt_task_of.exit.i.i:                              ; preds = %rt_se_nr_running.exit.i
  %policy.i.i = getelementptr i8, ptr %rt_se, i32 644
  %59 = ptrtoint ptr %policy.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %policy.i.i, align 4
  %cmp.i41.i = icmp eq i32 %60, 2
  %cond.i.i = zext i1 %cmp.i41.i to i32
  br label %rt_se_rr_nr_running.exit.i

rt_se_rr_nr_running.exit.i:                       ; preds = %rt_task_of.exit.i.i, %if.then.i40.i
  %retval.0.i42.i = phi i32 [ %58, %if.then.i40.i ], [ %cond.i.i, %rt_task_of.exit.i.i ]
  %rr_nr_running.i = getelementptr inbounds %struct.rt_rq, ptr %1, i32 0, i32 2
  %61 = ptrtoint ptr %rr_nr_running.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rr_nr_running.i, align 4
  %add24.i = add i32 %62, %retval.0.i42.i
  store i32 %add24.i, ptr %rr_nr_running.i, align 4
  %highest_prio.i43.i = getelementptr inbounds %struct.rt_rq, ptr %1, i32 0, i32 3
  %63 = ptrtoint ptr %highest_prio.i43.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %highest_prio.i43.i, align 8
  %cmp.i44.i = icmp sgt i32 %64, %retval.0.i.i99
  br i1 %cmp.i44.i, label %if.then.i45.i, label %if.end.i.i100

if.then.i45.i:                                    ; preds = %rt_se_rr_nr_running.exit.i
  %65 = ptrtoint ptr %highest_prio.i43.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %retval.0.i.i99, ptr %highest_prio.i43.i, align 8
  br label %if.end.i.i100

if.end.i.i100:                                    ; preds = %if.then.i45.i, %rt_se_rr_nr_running.exit.i
  %rq.i.i.i.i = getelementptr inbounds %struct.rt_rq, ptr %1, i32 0, i32 14
  %66 = ptrtoint ptr %rq.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rq.i.i.i.i, align 8
  %rt.i.i.i = getelementptr inbounds %struct.rq, ptr %67, i32 0, i32 15
  %cmp.not.i.i.i = icmp eq ptr %rt.i.i.i, %1
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i101, label %inc_rt_prio.exit.i

if.end.i.i.i101:                                  ; preds = %if.end.i.i100
  %online.i.i.i = getelementptr inbounds %struct.rq, ptr %67, i32 0, i32 47
  %68 = ptrtoint ptr %online.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %online.i.i.i, align 8
  %tobool.not.i.i.i = icmp ne i32 %69, 0
  %or.cond.i.i.i = and i1 %cmp.i44.i, %tobool.not.i.i.i
  br i1 %or.cond.i.i.i, label %if.then2.i.i.i, label %inc_rt_prio.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i101
  %rd.i.i.i = getelementptr inbounds %struct.rq, ptr %67, i32 0, i32 35
  %70 = ptrtoint ptr %rd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rd.i.i.i, align 8
  %cpupri.i.i.i = getelementptr inbounds %struct.root_domain, ptr %71, i32 0, i32 19
  %cpu.i.i.i = getelementptr inbounds %struct.rq, ptr %67, i32 0, i32 46
  %72 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cpu.i.i.i, align 4
  tail call void @cpupri_set(ptr noundef %cpupri.i.i.i, i32 noundef %73, i32 noundef %retval.0.i.i99) #17
  br label %inc_rt_prio.exit.i

inc_rt_prio.exit.i:                               ; preds = %if.then2.i.i.i, %if.end.i.i.i101, %if.end.i.i100
  %74 = ptrtoint ptr %my_q.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %my_q.i, align 4
  %tobool.not.i46.i = icmp eq ptr %75, null
  br i1 %tobool.not.i46.i, label %rt_task_of.exit.i48.i, label %if.then.i.i.i

rt_task_of.exit.i48.i:                            ; preds = %inc_rt_prio.exit.i
  %76 = ptrtoint ptr %rq.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rq.i.i.i.i, align 8
  %rt.i.i = getelementptr inbounds %struct.rq, ptr %77, i32 0, i32 15
  %rt_nr_total.i.i = getelementptr inbounds %struct.rq, ptr %77, i32 0, i32 15, i32 5
  %78 = ptrtoint ptr %rt_nr_total.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rt_nr_total.i.i, align 4
  %inc.i.i = add i32 %79, 1
  store i32 %inc.i.i, ptr %rt_nr_total.i.i, align 4
  %nr_cpus_allowed.i.i = getelementptr i8, ptr %rt_se, i32 648
  %80 = ptrtoint ptr %nr_cpus_allowed.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %nr_cpus_allowed.i.i, align 8
  %cmp.i47.i = icmp sgt i32 %81, 1
  br i1 %cmp.i47.i, label %if.then2.i.i, label %inc_rt_migration.exit.i

if.then2.i.i:                                     ; preds = %rt_task_of.exit.i48.i
  %rt_nr_migratory.i.i = getelementptr inbounds %struct.rq, ptr %77, i32 0, i32 15, i32 4
  %82 = ptrtoint ptr %rt_nr_migratory.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rt_nr_migratory.i.i, align 8
  %inc3.i.i = add i32 %83, 1
  store i32 %inc3.i.i, ptr %rt_nr_migratory.i.i, align 8
  br label %inc_rt_migration.exit.i

inc_rt_migration.exit.i:                          ; preds = %if.then2.i.i, %rt_task_of.exit.i48.i
  tail call fastcc void @update_rt_migration(ptr noundef %rt.i.i) #17
  %84 = ptrtoint ptr %my_q.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %.pr.i = load ptr, ptr %my_q.i, align 4
  %tobool.not.i.i49.i = icmp eq ptr %.pr.i, null
  br i1 %tobool.not.i.i49.i, label %rt_se_boosted.exit.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %inc_rt_migration.exit.i, %inc_rt_prio.exit.i
  %85 = phi ptr [ %.pr.i, %inc_rt_migration.exit.i ], [ %75, %inc_rt_prio.exit.i ]
  %rt_nr_boosted.i.i.i = getelementptr inbounds %struct.rt_rq, ptr %85, i32 0, i32 13
  %86 = ptrtoint ptr %rt_nr_boosted.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rt_nr_boosted.i.i.i, align 4
  %tobool1.i.not.i.i = icmp eq i32 %87, 0
  br i1 %tobool1.i.not.i.i, label %if.end.i52.i, label %if.then.i51.i

rt_se_boosted.exit.i.i:                           ; preds = %inc_rt_migration.exit.i
  %88 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %prio.i, align 8
  %normal_prio.i.i.i = getelementptr i8, ptr %rt_se, i32 -320
  %90 = ptrtoint ptr %normal_prio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %normal_prio.i.i.i, align 64
  %cmp.i.not.i.i = icmp eq i32 %89, %91
  br i1 %cmp.i.not.i.i, label %if.end.i52.i, label %if.then.i51.i

if.then.i51.i:                                    ; preds = %rt_se_boosted.exit.i.i, %if.then.i.i.i
  %rt_nr_boosted.i.i = getelementptr inbounds %struct.rt_rq, ptr %1, i32 0, i32 13
  %92 = ptrtoint ptr %rt_nr_boosted.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %rt_nr_boosted.i.i, align 4
  %inc.i50.i = add i32 %93, 1
  store i32 %inc.i50.i, ptr %rt_nr_boosted.i.i, align 4
  br label %if.end.i52.i

if.end.i52.i:                                     ; preds = %if.then.i51.i, %rt_se_boosted.exit.i.i, %if.then.i.i.i
  %tg.i.i = getelementptr inbounds %struct.rt_rq, ptr %1, i32 0, i32 15
  %94 = ptrtoint ptr %tg.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %tg.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %95, null
  br i1 %tobool1.not.i.i, label %cleanup, label %if.then2.i53.i

if.then2.i53.i:                                   ; preds = %if.end.i52.i
  %rt_bandwidth.i.i = getelementptr inbounds %struct.task_group, ptr %95, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_rt_runtime to i32))
  %96 = load i32, ptr @sysctl_sched_rt_runtime, align 4
  %tobool.not.i7.i.i = icmp slt i32 %96, 0
  br i1 %tobool.not.i7.i.i, label %cleanup, label %lor.lhs.false.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.then2.i53.i
  %rt_runtime.i.i.i = getelementptr inbounds %struct.task_group, ptr %95, i32 0, i32 9, i32 2
  %97 = ptrtoint ptr %rt_runtime.i.i.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %rt_runtime.i.i.i, align 8
  %cmp.i8.i.i = icmp eq i64 %98, -1
  br i1 %cmp.i8.i.i, label %cleanup, label %if.end.i.i54.i

if.end.i.i54.i:                                   ; preds = %lor.lhs.false.i.i.i
  tail call void @_raw_spin_lock(ptr noundef %rt_bandwidth.i.i) #17
  %rt_period_active.i.i.i.i = getelementptr inbounds %struct.task_group, ptr %95, i32 0, i32 9, i32 4
  %99 = ptrtoint ptr %rt_period_active.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %rt_period_active.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq i32 %100, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %do_start_rt_bandwidth.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i54.i
  %101 = ptrtoint ptr %rt_period_active.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 1, ptr %rt_period_active.i.i.i.i, align 8
  %rt_period_timer.i.i.i.i = getelementptr inbounds %struct.task_group, ptr %95, i32 0, i32 9, i32 3
  %base.i.i.i.i.i = getelementptr inbounds %struct.task_group, ptr %95, i32 0, i32 9, i32 3, i32 3
  %102 = ptrtoint ptr %base.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %base.i.i.i.i.i, align 4
  %get_time.i.i.i.i.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %103, i32 0, i32 6
  %104 = ptrtoint ptr %get_time.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %get_time.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i64 %105() #17
  %call1.i.i.i.i.i = tail call i64 @hrtimer_forward(ptr noundef %rt_period_timer.i.i.i.i, i64 noundef %call.i.i.i.i.i, i64 noundef 0) #17
  %_softexpires.i.i.i.i.i.i = getelementptr inbounds %struct.task_group, ptr %95, i32 0, i32 9, i32 3, i32 1
  %106 = ptrtoint ptr %_softexpires.i.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %_softexpires.i.i.i.i.i.i, align 8
  %expires.i.i.i.i.i.i = getelementptr inbounds %struct.task_group, ptr %95, i32 0, i32 9, i32 3, i32 0, i32 1
  %108 = ptrtoint ptr %expires.i.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %expires.i.i.i.i.i.i, align 8
  %sub.i.i.i.i.i = sub i64 %109, %107
  tail call void @hrtimer_start_range_ns(ptr noundef %rt_period_timer.i.i.i.i, i64 noundef %107, i64 noundef %sub.i.i.i.i.i, i32 noundef 10) #17
  br label %do_start_rt_bandwidth.exit.i.i.i

do_start_rt_bandwidth.exit.i.i.i:                 ; preds = %if.then.i.i.i.i, %if.end.i.i54.i
  tail call void @_raw_spin_unlock(ptr noundef %rt_bandwidth.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %do_start_rt_bandwidth.exit.i.i.i, %lor.lhs.false.i.i.i, %if.then2.i53.i, %if.end.i52.i, %__delist_rt_entity.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__update_stats_enqueue_sleeper(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpupri_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_rt_migration(ptr nocapture noundef %rt_rq) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %rt_nr_migratory = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 4
  %0 = ptrtoint ptr %rt_nr_migratory to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rt_nr_migratory, align 8
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %rt_nr_total = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 5
  %2 = ptrtoint ptr %rt_nr_total to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rt_nr_total, align 4
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %overloaded = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 6
  %4 = ptrtoint ptr %overloaded to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %overloaded, align 8
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.then2, label %if.end10

if.then2:                                         ; preds = %if.then
  %rq.i = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 14
  %6 = ptrtoint ptr %rq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rq.i, align 8
  %online.i = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 47
  %8 = ptrtoint ptr %online.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %online.i, align 8
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %rt_set_overload.exit, label %if.end.i

if.end.i:                                         ; preds = %if.then2
  %cpu.i = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 46
  %10 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu.i, align 4
  %rd.i = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 35
  %12 = ptrtoint ptr %rd.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rd.i, align 8
  %rto_mask.i = getelementptr inbounds %struct.root_domain, ptr %13, i32 0, i32 18
  %14 = ptrtoint ptr %rto_mask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rto_mask.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i = icmp ugt i32 %16, %11
  br i1 %cmp.not.i.i.i.i, label %cpumask_set_cpu.exit.i, label %land.rhs.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %if.end.i
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %cpumask_set_cpu.exit.i, label %if.then.i.i.i.i, !prof !97

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpumask_set_cpu.exit.i

cpumask_set_cpu.exit.i:                           ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i, %if.end.i
  tail call void @_set_bit(i32 noundef %11, ptr noundef %15) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !113
  %17 = ptrtoint ptr %rd.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rd.i, align 8
  %rto_count.i = getelementptr inbounds %struct.root_domain, ptr %18, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rto_count.i, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %rto_count.i, i32 1, i32 3, i32 1) #17
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rto_count.i, ptr %rto_count.i, i32 1, ptr elementtype(i32) %rto_count.i) #17, !srcloc !114
  br label %rt_set_overload.exit

rt_set_overload.exit:                             ; preds = %cpumask_set_cpu.exit.i, %if.then2
  %20 = ptrtoint ptr %overloaded to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %overloaded, align 8
  br label %if.end10

if.else:                                          ; preds = %land.lhs.true, %entry
  %overloaded4 = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 6
  %21 = ptrtoint ptr %overloaded4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %overloaded4, align 8
  %tobool5.not = icmp eq i32 %22, 0
  br i1 %tobool5.not, label %if.end10, label %if.then6

if.then6:                                         ; preds = %if.else
  %rq.i18 = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 14
  %23 = ptrtoint ptr %rq.i18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rq.i18, align 8
  %online.i19 = getelementptr inbounds %struct.rq, ptr %24, i32 0, i32 47
  %25 = ptrtoint ptr %online.i19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %online.i19, align 8
  %tobool.not.i20 = icmp eq i32 %26, 0
  br i1 %tobool.not.i20, label %rt_clear_overload.exit, label %if.end.i27

if.end.i27:                                       ; preds = %if.then6
  %rd.i21 = getelementptr inbounds %struct.rq, ptr %24, i32 0, i32 35
  %27 = ptrtoint ptr %rd.i21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rd.i21, align 8
  %rto_count.i22 = getelementptr inbounds %struct.root_domain, ptr %28, i32 0, i32 1
  %call.i.i.i23 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rto_count.i22, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %rto_count.i22, i32 1, i32 3, i32 1) #17
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rto_count.i22, ptr %rto_count.i22, i32 1, ptr elementtype(i32) %rto_count.i22) #17, !srcloc !115
  %cpu.i24 = getelementptr inbounds %struct.rq, ptr %24, i32 0, i32 46
  %30 = ptrtoint ptr %cpu.i24 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i24, align 4
  %32 = ptrtoint ptr %rd.i21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rd.i21, align 8
  %rto_mask.i25 = getelementptr inbounds %struct.root_domain, ptr %33, i32 0, i32 18
  %34 = ptrtoint ptr %rto_mask.i25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rto_mask.i25, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %36 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i26 = icmp ugt i32 %36, %31
  br i1 %cmp.not.i.i.i.i26, label %cpumask_clear_cpu.exit.i, label %land.rhs.i.i.i.i29

land.rhs.i.i.i.i29:                               ; preds = %if.end.i27
  %.b37.i.i.i.i28 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i28, label %cpumask_clear_cpu.exit.i, label %if.then.i.i.i.i30, !prof !97

if.then.i.i.i.i30:                                ; preds = %land.rhs.i.i.i.i29
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpumask_clear_cpu.exit.i

cpumask_clear_cpu.exit.i:                         ; preds = %if.then.i.i.i.i30, %land.rhs.i.i.i.i29, %if.end.i27
  tail call void @_clear_bit(i32 noundef %31, ptr noundef %35) #17
  br label %rt_clear_overload.exit

rt_clear_overload.exit:                           ; preds = %cpumask_clear_cpu.exit.i, %if.then6
  %37 = ptrtoint ptr %overloaded4 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %overloaded4, align 8
  br label %if.end10

if.end10:                                         ; preds = %rt_clear_overload.exit, %if.else, %rt_set_overload.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_spin_rq_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @find_lowest_rq(ptr noundef %task) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !85) #17
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !123
  %4 = tail call i32 @llvm.read_register.i32(metadata !85) #17
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
  %add = add i32 %9, ptrtoint (ptr @local_cpu_mask to i32)
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %10, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !124
  %13 = tail call i32 @llvm.read_register.i32(metadata !85) #17
  %and.i.i.i156 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i156 to ptr
  %preempt_count.i.i157 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i157 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i157, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i157, align 4
  %17 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu, align 4
  %stack.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 1
  %19 = ptrtoint ptr %stack.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %stack.i, align 4
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %cpu.i, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %cleanup125, label %if.end, !prof !95

if.end:                                           ; preds = %entry
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 32
  %23 = ptrtoint ptr %nr_cpus_allowed to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr_cpus_allowed, align 8
  %cmp = icmp eq i32 %24, 1
  br i1 %cmp, label %cleanup125, label %if.end27

if.end27:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_asym_cpucapacity, ptr blockaddress(@find_lowest_rq, %do.body38)) #17
          to label %do.body49 [label %do.body38], !srcloc !107

do.body38:                                        ; preds = %if.end27
  %25 = ptrtoint ptr %stack.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %stack.i, align 4
  %cpu.i159 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu.i159 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %cpu.i159, align 4
  %arrayidx46 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx46, align 4
  %add47 = add i32 %30, ptrtoint (ptr @runqueues to i32)
  %31 = inttoptr i32 %add47 to ptr
  %rd = getelementptr inbounds %struct.rq, ptr %31, i32 0, i32 35
  %32 = ptrtoint ptr %rd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rd, align 8
  %cpupri = getelementptr inbounds %struct.root_domain, ptr %33, i32 0, i32 19
  %call48 = tail call i32 @cpupri_find_fitness(ptr noundef %cpupri, ptr noundef %task, ptr noundef nonnull %12, ptr noundef nonnull @rt_task_fits_capacity) #17
  br label %if.end62

do.body49:                                        ; preds = %if.end27
  %34 = ptrtoint ptr %stack.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %stack.i, align 4
  %cpu.i161 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %cpu.i161 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %cpu.i161, align 4
  %arrayidx57 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx57, align 4
  %add58 = add i32 %39, ptrtoint (ptr @runqueues to i32)
  %40 = inttoptr i32 %add58 to ptr
  %rd59 = getelementptr inbounds %struct.rq, ptr %40, i32 0, i32 35
  %41 = ptrtoint ptr %rd59 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rd59, align 8
  %cpupri60 = getelementptr inbounds %struct.root_domain, ptr %42, i32 0, i32 19
  %call61 = tail call i32 @cpupri_find(ptr noundef %cpupri60, ptr noundef %task, ptr noundef nonnull %12) #17
  br label %if.end62

if.end62:                                         ; preds = %do.body49, %do.body38
  %ret.0 = phi i32 [ %call48, %do.body38 ], [ %call61, %do.body49 ]
  %tobool63.not = icmp eq i32 %ret.0, 0
  br i1 %tobool63.not, label %cleanup125, label %if.end65

if.end65:                                         ; preds = %if.end62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %43 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i = icmp ugt i32 %43, %22
  br i1 %cmp.not.i.i.i, label %cpumask_test_cpu.exit, label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end65
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %cpumask_test_cpu.exit, label %if.then.i.i.i, !prof !97

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i, %if.end65
  %div3.i.i = lshr i32 %22, 5
  %arrayidx.i.i = getelementptr i32, ptr %12, i32 %div3.i.i
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %22, 31
  %46 = shl nuw i32 1, %and.i.i
  %47 = and i32 %45, %46
  %tobool67.not = icmp eq i32 %47, 0
  br i1 %tobool67.not, label %if.end69, label %cleanup125

if.end69:                                         ; preds = %cpumask_test_cpu.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %48 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i162 = icmp ugt i32 %48, %18
  br i1 %cmp.not.i.i.i162, label %cpumask_test_cpu.exit171, label %land.rhs.i.i.i164

land.rhs.i.i.i164:                                ; preds = %if.end69
  %.b37.i.i.i163 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i163, label %cpumask_test_cpu.exit171, label %if.then.i.i.i165, !prof !97

if.then.i.i.i165:                                 ; preds = %land.rhs.i.i.i164
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpumask_test_cpu.exit171

cpumask_test_cpu.exit171:                         ; preds = %if.then.i.i.i165, %land.rhs.i.i.i164, %if.end69
  %div3.i.i166 = lshr i32 %18, 5
  %arrayidx.i.i167 = getelementptr i32, ptr %12, i32 %div3.i.i166
  %49 = ptrtoint ptr %arrayidx.i.i167 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %arrayidx.i.i167, align 4
  %and.i.i168 = and i32 %18, 31
  %51 = shl nuw i32 1, %and.i.i168
  %52 = and i32 %50, %51
  %tobool71.not = icmp eq i32 %52, 0
  %spec.select = select i1 %tobool71.not, i32 -1, i32 %18
  %53 = tail call i32 @llvm.read_register.i32(metadata !85) #17
  %and.i.i.i.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %56, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !111
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %rcu_read_lock.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %cpumask_test_cpu.exit171
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %rcu_read_lock.exit, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %rcu_read_lock.exit, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true2.i
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i, %land.lhs.true.i, %cpumask_test_cpu.exit171
  %arrayidx85 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %57 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx85, align 4
  %add86 = add i32 %58, ptrtoint (ptr @runqueues to i32)
  %59 = inttoptr i32 %add86 to ptr
  %sd87 = getelementptr inbounds %struct.rq, ptr %59, i32 0, i32 36
  %60 = ptrtoint ptr %sd87 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %sd87, align 4
  %call.i172 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @sched_domains_mutex, i32 0, i32 5), i32 noundef -1) #17
  %tobool90.not = icmp eq i32 %call.i172, 0
  br i1 %tobool90.not, label %lor.lhs.false, label %do.end100

lor.lhs.false:                                    ; preds = %rcu_read_lock.exit
  %call91 = tail call i32 @rcu_read_lock_held() #17
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %land.lhs.true, label %do.end100

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call93 = tail call i32 @debug_lockdep_rcu_enabled() #17
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %do.end100, label %land.lhs.true95

land.lhs.true95:                                  ; preds = %land.lhs.true
  %.b155 = load i1, ptr @find_lowest_rq.__warned, align 1
  br i1 %.b155, label %do.end100, label %if.then97

if.then97:                                        ; preds = %land.lhs.true95
  store i1 true, ptr @find_lowest_rq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1894, ptr noundef nonnull @.str.5) #17
  br label %do.end100

do.end100:                                        ; preds = %if.then97, %land.lhs.true95, %land.lhs.true, %lor.lhs.false, %rcu_read_lock.exit
  %tobool102.not218 = icmp eq ptr %61, null
  br i1 %tobool102.not218, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %do.end100
  %cmp105.not = icmp eq i32 %spec.select, -1
  %div3.i.i177 = lshr i32 %spec.select, 5
  %and.i.i179 = and i32 %spec.select, 31
  %62 = shl nuw i32 1, %and.i.i179
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %sd.0219 = phi ptr [ %61, %for.body.lr.ph ], [ %79, %for.inc ]
  %flags = getelementptr inbounds %struct.sched_domain, ptr %sd.0219, i32 0, i32 9
  %63 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags, align 4
  %and = and i32 %64, 16
  %tobool103.not = icmp eq i32 %and, 0
  br i1 %tobool103.not, label %for.inc, label %if.then104

if.then104:                                       ; preds = %for.body
  br i1 %cmp105.not, label %if.end111, label %land.lhs.true106

land.lhs.true106:                                 ; preds = %if.then104
  %span.i = getelementptr inbounds %struct.sched_domain, ptr %sd.0219, i32 0, i32 41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %65 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i173 = icmp ugt i32 %65, %spec.select
  br i1 %cmp.not.i.i.i173, label %cpumask_test_cpu.exit182, label %land.rhs.i.i.i175

land.rhs.i.i.i175:                                ; preds = %land.lhs.true106
  %.b37.i.i.i174 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i174, label %cpumask_test_cpu.exit182, label %if.then.i.i.i176, !prof !97

if.then.i.i.i176:                                 ; preds = %land.rhs.i.i.i175
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpumask_test_cpu.exit182

cpumask_test_cpu.exit182:                         ; preds = %if.then.i.i.i176, %land.rhs.i.i.i175, %land.lhs.true106
  %arrayidx.i.i178 = getelementptr i32, ptr %span.i, i32 %div3.i.i177
  %66 = ptrtoint ptr %arrayidx.i.i178 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %arrayidx.i.i178, align 4
  %68 = and i32 %67, %62
  %tobool109.not = icmp eq i32 %68, 0
  br i1 %tobool109.not, label %if.end111, label %if.then110

if.then110:                                       ; preds = %cpumask_test_cpu.exit182
  %call.i183 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i183, label %rcu_read_unlock.exit, label %land.lhs.true.i186

land.lhs.true.i186:                               ; preds = %if.then110
  %call1.i184 = tail call i32 @debug_lockdep_rcu_enabled() #17
  %tobool.not.i185 = icmp eq i32 %call1.i184, 0
  br i1 %tobool.not.i185, label %rcu_read_unlock.exit, label %land.lhs.true2.i188

land.lhs.true2.i188:                              ; preds = %land.lhs.true.i186
  %.b4.i187 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i187, label %rcu_read_unlock.exit, label %if.then.i189

if.then.i189:                                     ; preds = %land.lhs.true2.i188
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i189, %land.lhs.true2.i188, %land.lhs.true.i186, %if.then110
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !112
  %69 = tail call i32 @llvm.read_register.i32(metadata !85) #17
  %and.i.i.i.i.i190 = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i.i.i190 to ptr
  %preempt_count.i.i.i.i191 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %preempt_count.i.i.i.i191 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %preempt_count.i.i.i.i191, align 4
  %sub.i.i.i = add i32 %72, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i191, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  br label %cleanup125

if.end111:                                        ; preds = %cpumask_test_cpu.exit182, %if.then104
  %span.i192 = getelementptr inbounds %struct.sched_domain, ptr %sd.0219, i32 0, i32 41
  %call113 = tail call i32 @cpumask_any_and_distribute(ptr noundef nonnull %12, ptr noundef %span.i192) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %73 = load i32, ptr @nr_cpu_ids, align 4
  %cmp114 = icmp ult i32 %call113, %73
  br i1 %cmp114, label %if.then115, label %for.inc

if.then115:                                       ; preds = %if.end111
  %call.i193 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i193, label %rcu_read_unlock.exit203, label %land.lhs.true.i196

land.lhs.true.i196:                               ; preds = %if.then115
  %call1.i194 = tail call i32 @debug_lockdep_rcu_enabled() #17
  %tobool.not.i195 = icmp eq i32 %call1.i194, 0
  br i1 %tobool.not.i195, label %rcu_read_unlock.exit203, label %land.lhs.true2.i198

land.lhs.true2.i198:                              ; preds = %land.lhs.true.i196
  %.b4.i197 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i197, label %rcu_read_unlock.exit203, label %if.then.i199

if.then.i199:                                     ; preds = %land.lhs.true2.i198
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #17
  br label %rcu_read_unlock.exit203

rcu_read_unlock.exit203:                          ; preds = %if.then.i199, %land.lhs.true2.i198, %land.lhs.true.i196, %if.then115
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !112
  %74 = tail call i32 @llvm.read_register.i32(metadata !85) #17
  %and.i.i.i.i.i200 = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i.i.i.i200 to ptr
  %preempt_count.i.i.i.i201 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %preempt_count.i.i.i.i201 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %preempt_count.i.i.i.i201, align 4
  %sub.i.i.i202 = add i32 %77, -1
  store volatile i32 %sub.i.i.i202, ptr %preempt_count.i.i.i.i201, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  br label %cleanup125

for.inc:                                          ; preds = %if.end111, %for.body
  %78 = ptrtoint ptr %sd.0219 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sd.0219, align 8
  %tobool102.not = icmp eq ptr %79, null
  br i1 %tobool102.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %do.end100
  %call.i204 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i204, label %rcu_read_unlock.exit214, label %land.lhs.true.i207

land.lhs.true.i207:                               ; preds = %for.end
  %call1.i205 = tail call i32 @debug_lockdep_rcu_enabled() #17
  %tobool.not.i206 = icmp eq i32 %call1.i205, 0
  br i1 %tobool.not.i206, label %rcu_read_unlock.exit214, label %land.lhs.true2.i209

land.lhs.true2.i209:                              ; preds = %land.lhs.true.i207
  %.b4.i208 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i208, label %rcu_read_unlock.exit214, label %if.then.i210

if.then.i210:                                     ; preds = %land.lhs.true2.i209
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #17
  br label %rcu_read_unlock.exit214

rcu_read_unlock.exit214:                          ; preds = %if.then.i210, %land.lhs.true2.i209, %land.lhs.true.i207, %for.end
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !112
  %80 = tail call i32 @llvm.read_register.i32(metadata !85) #17
  %and.i.i.i.i.i211 = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i.i.i.i211 to ptr
  %preempt_count.i.i.i.i212 = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %preempt_count.i.i.i.i212 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %preempt_count.i.i.i.i212, align 4
  %sub.i.i.i213 = add i32 %83, -1
  store volatile i32 %sub.i.i.i213, ptr %preempt_count.i.i.i.i212, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  %cmp118.not = icmp eq i32 %spec.select, -1
  br i1 %cmp118.not, label %if.end120, label %cleanup125

if.end120:                                        ; preds = %rcu_read_unlock.exit214
  %call121 = tail call i32 @cpumask_any_distribute(ptr noundef nonnull %12) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %84 = load i32, ptr @nr_cpu_ids, align 4
  %cmp122 = icmp ult i32 %call121, %84
  %call121. = select i1 %cmp122, i32 %call121, i32 -1
  br label %cleanup125

cleanup125:                                       ; preds = %if.end120, %rcu_read_unlock.exit214, %rcu_read_unlock.exit203, %rcu_read_unlock.exit, %cpumask_test_cpu.exit, %if.end62, %if.end, %entry
  %retval.3 = phi i32 [ -1, %entry ], [ -1, %if.end ], [ -1, %if.end62 ], [ %22, %cpumask_test_cpu.exit ], [ %18, %rcu_read_unlock.exit214 ], [ %call121., %if.end120 ], [ %18, %rcu_read_unlock.exit ], [ %call113, %rcu_read_unlock.exit203 ]
  ret i32 %retval.3
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_push_task(ptr noundef %rq) unnamed_addr #6 align 64 {
entry:
  %curr = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 20
  %0 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %curr, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %lockdep_assert_rq_held.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %entry
  %core_enabled.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 81
  %3 = ptrtoint ptr %core_enabled.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %core_enabled.i.i, align 128
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %__rq_lockp.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %land.rhs.i
  %core.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 79
  %5 = ptrtoint ptr %core.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %core.i.i, align 8
  br label %__rq_lockp.exit.i

__rq_lockp.exit.i:                                ; preds = %if.then.i.i, %land.rhs.i
  %retval.0.i.i = phi ptr [ %6, %if.then.i.i ], [ %rq, %land.rhs.i ]
  %dep_map.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #17
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %lockdep_assert_rq_held.exit, !prof !95

do.end.i:                                         ; preds = %__rq_lockp.exit.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1309, i32 noundef 9, ptr noundef null) #17
  br label %lockdep_assert_rq_held.exit

lockdep_assert_rq_held.exit:                      ; preds = %do.end.i, %__rq_lockp.exit.i, %entry
  %push_busy = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 77
  %7 = ptrtoint ptr %push_busy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %push_busy, align 4
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lockdep_assert_rq_held.exit
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 32
  %9 = ptrtoint ptr %nr_cpus_allowed to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_cpus_allowed, align 8
  %cmp = icmp eq i32 %10, 1
  br i1 %cmp, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %migration_disabled = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 37
  %11 = ptrtoint ptr %migration_disabled to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %migration_disabled, align 4
  %tobool3.not = icmp eq i16 %12, 0
  br i1 %tobool3.not, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.end2
  %13 = ptrtoint ptr %push_busy to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %push_busy, align 4
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #17
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #17, !srcloc !103
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end15.sink.split.i.i.i.i, label %if.else.i.i.i.i, !prof !95

if.else.i.i.i.i:                                  ; preds = %if.end5
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %15 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %cleanup, label %if.end15.sink.split.i.i.i.i, !prof !97

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i, %if.end5
  %.sink.i.i.i.i = phi i32 [ 2, %if.end5 ], [ 1, %if.else.i.i.i.i ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i, %if.end2, %if.end, %lockdep_assert_rq_held.exit
  %retval.0 = phi ptr [ null, %lockdep_assert_rq_held.exit ], [ null, %if.end ], [ null, %if.end2 ], [ %1, %if.else.i.i.i.i ], [ %1, %if.end15.sink.split.i.i.i.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @stop_one_cpu_nowait(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @push_cpu_stop(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_task(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_task_cpu(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @activate_task(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @double_unlock_balance(ptr noundef %this_rq, ptr noundef %busiest) unnamed_addr #6 align 64 {
entry:
  %core_enabled.i = getelementptr inbounds %struct.rq, ptr %this_rq, i32 0, i32 81
  %0 = ptrtoint ptr %core_enabled.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %core_enabled.i, align 128
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %__rq_lockp.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %core.i = getelementptr inbounds %struct.rq, ptr %this_rq, i32 0, i32 79
  %2 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core.i, align 8
  br label %__rq_lockp.exit

__rq_lockp.exit:                                  ; preds = %if.then.i, %entry
  %retval.0.i = phi ptr [ %3, %if.then.i ], [ %this_rq, %entry ]
  %core_enabled.i5 = getelementptr inbounds %struct.rq, ptr %busiest, i32 0, i32 81
  %4 = ptrtoint ptr %core_enabled.i5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %core_enabled.i5, align 128
  %tobool.not.i6 = icmp eq i32 %5, 0
  br i1 %tobool.not.i6, label %__rq_lockp.exit10, label %if.then.i8

if.then.i8:                                       ; preds = %__rq_lockp.exit
  %core.i7 = getelementptr inbounds %struct.rq, ptr %busiest, i32 0, i32 79
  %6 = ptrtoint ptr %core.i7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core.i7, align 8
  br label %__rq_lockp.exit10

__rq_lockp.exit10:                                ; preds = %if.then.i8, %__rq_lockp.exit
  %retval.0.i9 = phi ptr [ %7, %if.then.i8 ], [ %busiest, %__rq_lockp.exit ]
  %cmp.not = icmp eq ptr %retval.0.i, %retval.0.i9
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %__rq_lockp.exit10
  tail call void @raw_spin_rq_unlock(ptr noundef %busiest) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %__rq_lockp.exit10
  %8 = ptrtoint ptr %core_enabled.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %core_enabled.i, align 128
  %tobool.not.i12 = icmp eq i32 %9, 0
  br i1 %tobool.not.i12, label %__rq_lockp.exit16, label %if.then.i14

if.then.i14:                                      ; preds = %if.end
  %core.i13 = getelementptr inbounds %struct.rq, ptr %this_rq, i32 0, i32 79
  %10 = ptrtoint ptr %core.i13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %core.i13, align 8
  br label %__rq_lockp.exit16

__rq_lockp.exit16:                                ; preds = %if.then.i14, %if.end
  %retval.0.i15 = phi ptr [ %11, %if.then.i14 ], [ %this_rq, %if.end ]
  %dep_map = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i15, i32 0, i32 4
  %12 = tail call ptr @llvm.returnaddress(i32 0)
  %13 = ptrtoint ptr %12 to i32
  %name.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i15, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name.i, align 4
  %16 = ptrtoint ptr %dep_map to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dep_map, align 4
  tail call void @lock_set_class(ptr noundef %dep_map, ptr noundef %15, ptr noundef %17, i32 noundef 0, i32 noundef %13) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpupri_find_fitness(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @rt_task_fits_capacity(ptr noundef %p, i32 noundef %cpu) #6 align 64 {
entry:
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_asym_cpucapacity, ptr blockaddress(@rt_task_fits_capacity, %if.end)) #17
          to label %cleanup [label %if.end], !srcloc !107

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @uclamp_eff_value(ptr noundef %p, i32 noundef 0) #17
  %call4 = tail call i32 @uclamp_eff_value(ptr noundef %p, i32 noundef 1) #17
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %1, ptrtoint (ptr @runqueues to i32)
  %2 = inttoptr i32 %add.i to ptr
  %cpu_capacity_orig.i = getelementptr inbounds %struct.rq, ptr %2, i32 0, i32 38
  %3 = ptrtoint ptr %cpu_capacity_orig.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu_capacity_orig.i, align 4
  %5 = tail call i32 @llvm.umin.i32(i32 %call3, i32 %call4)
  %cmp7 = icmp uge i32 %4, %5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i1 [ %cmp7, %if.end ], [ true, %entry ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpupri_find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) unnamed_addr #6 align 64 {
entry:
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i = icmp ugt i32 %0, %cpu
  br i1 %cmp.not.i.i, label %cpumask_check.exit, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %entry
  %.b37.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i, label %cpumask_check.exit, label %if.then.i.i, !prof !97

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpumask_check.exit

cpumask_check.exit:                               ; preds = %if.then.i.i, %land.rhs.i.i, %entry
  %div3.i = lshr i32 %cpu, 5
  %arrayidx.i = getelementptr i32, ptr %cpumask, i32 %div3.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %cpu, 31
  %shr.i = lshr i32 %2, %and.i
  %and1.i = and i32 %shr.i, 1
  ret i32 %and1.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpumask_any_and_distribute(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpumask_any_distribute(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uclamp_eff_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_set_class(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk_deferred(ptr noundef, ...) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @__update_stats_wait_start(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @plist_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @plist_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dequeue_rt_entity(ptr noundef %rt_se, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %rt_rq1.i = getelementptr inbounds %struct.sched_rt_entity, ptr %rt_se, i32 0, i32 8
  %0 = ptrtoint ptr %rt_rq1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rt_rq1.i, align 4
  %rq.i = getelementptr inbounds %struct.rt_rq, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %rq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq.i, align 8
  tail call fastcc void @update_stats_dequeue_rt(ptr noundef %1, ptr noundef %rt_se, i32 noundef %flags)
  tail call fastcc void @dequeue_rt_stack(ptr noundef %rt_se, i32 noundef %flags)
  %tobool.not15 = icmp eq ptr %rt_se, null
  br i1 %tobool.not15, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %entry
  %rt_se.addr.016 = phi ptr [ %9, %if.end ], [ %rt_se, %entry ]
  %my_q.i = getelementptr inbounds %struct.sched_rt_entity, ptr %rt_se.addr.016, i32 0, i32 9
  %4 = ptrtoint ptr %my_q.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %my_q.i, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %rt_nr_running = getelementptr inbounds %struct.rt_rq, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %rt_nr_running to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rt_nr_running, align 8
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @__enqueue_rt_entity(ptr noundef nonnull %rt_se.addr.016, i32 noundef %flags)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  %parent = getelementptr inbounds %struct.sched_rt_entity, ptr %rt_se.addr.016, i32 0, i32 7
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end, %entry
  %rq.i.i = getelementptr inbounds %struct.rq, ptr %3, i32 0, i32 15, i32 14
  %10 = ptrtoint ptr %rq.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rq.i.i, align 8
  %cmp.not.i = icmp eq ptr %11, %3
  br i1 %cmp.not.i, label %do.end7.i, label %do.body2.i, !prof !97

do.body2.i:                                       ; preds = %for.end
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/rt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1076, 0\0A.popsection", ""() #17, !srcloc !120
  unreachable

do.end7.i:                                        ; preds = %for.end
  %rt_queued.i = getelementptr inbounds %struct.rq, ptr %3, i32 0, i32 15, i32 8
  %12 = ptrtoint ptr %rt_queued.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rt_queued.i, align 4
  %tobool8.not.i = icmp eq i32 %13, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %enqueue_top_rt_rq.exit

if.end10.i:                                       ; preds = %do.end7.i
  %rt_throttled.i.i = getelementptr inbounds %struct.rq, ptr %3, i32 0, i32 15, i32 9
  %14 = ptrtoint ptr %rt_throttled.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rt_throttled.i.i, align 8
  %tobool.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i, label %if.end14.i, label %rt_rq_throttled.exit.i

rt_rq_throttled.exit.i:                           ; preds = %if.end10.i
  %rt_nr_boosted.i.i = getelementptr inbounds %struct.rq, ptr %3, i32 0, i32 15, i32 13
  %16 = ptrtoint ptr %rt_nr_boosted.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rt_nr_boosted.i.i, align 4
  %tobool1.not.i.not.i = icmp eq i32 %17, 0
  br i1 %tobool1.not.i.not.i, label %enqueue_top_rt_rq.exit, label %if.end14.i

if.end14.i:                                       ; preds = %rt_rq_throttled.exit.i, %if.end10.i
  %rt_nr_running.i = getelementptr inbounds %struct.rq, ptr %3, i32 0, i32 15, i32 1
  %18 = ptrtoint ptr %rt_nr_running.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rt_nr_running.i, align 8
  %tobool15.not.i = icmp eq i32 %19, 0
  br i1 %tobool15.not.i, label %if.end19.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end14.i
  %nr_running.i.i = getelementptr inbounds %struct.rq, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %nr_running.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_running.i.i, align 4
  %add.i.i = add i32 %21, %19
  store i32 %add.i.i, ptr %nr_running.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_update_nr_running_tp, i32 0, i32 1), ptr blockaddress(@dequeue_rt_entity, %if.then.i.i)) #17
          to label %if.end.i.i [label %if.then.i.i], !srcloc !107

if.then.i.i:                                      ; preds = %if.then16.i
  tail call void @call_trace_sched_update_nr_running(ptr noundef %3, i32 noundef %19) #17
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then16.i
  %cmp.i.i = icmp ult i32 %21, 2
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %add_nr_running.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %22 = ptrtoint ptr %nr_running.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_running.i.i, align 4
  %cmp3.i.i = icmp ugt i32 %23, 1
  br i1 %cmp3.i.i, label %do.end.i.i, label %add_nr_running.exit.i

do.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %rd.i.i = getelementptr inbounds %struct.rq, ptr %3, i32 0, i32 35
  %24 = ptrtoint ptr %rd.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rd.i.i, align 8
  %overload.i.i = getelementptr inbounds %struct.root_domain, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %overload.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %overload.i.i, align 8
  %tobool.not.i28.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i28.i, label %do.body10.i.i, label %add_nr_running.exit.i

do.body10.i.i:                                    ; preds = %do.end.i.i
  %28 = ptrtoint ptr %overload.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 1, ptr %overload.i.i, align 8
  br label %add_nr_running.exit.i

add_nr_running.exit.i:                            ; preds = %do.body10.i.i, %do.end.i.i, %land.lhs.true.i.i, %if.end.i.i
  %29 = ptrtoint ptr %rt_queued.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %rt_queued.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %add_nr_running.exit.i, %if.end14.i
  tail call fastcc void @cpufreq_update_util(ptr noundef %3) #17
  br label %enqueue_top_rt_rq.exit

enqueue_top_rt_rq.exit:                           ; preds = %if.end19.i, %rt_rq_throttled.exit.i, %do.end7.i
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_stats_dequeue_rt(ptr nocapture noundef readonly %rt_rq, ptr noundef %rt_se, i32 noundef %flags) unnamed_addr #6 align 64 {
entry:
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_schedstats, ptr blockaddress(@update_stats_dequeue_rt, %if.end)) #17
          to label %cleanup [label %if.end], !srcloc !107

if.end:                                           ; preds = %entry
  %my_q = getelementptr inbounds %struct.sched_rt_entity, ptr %rt_se, i32 0, i32 9
  %0 = ptrtoint ptr %my_q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %my_q, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %rt_se, i32 -384
  %and = and i32 %flags, 1
  %tobool7.not = icmp eq i32 %and, 0
  %tobool8.not = icmp eq ptr %add.ptr.i, null
  %or.cond = or i1 %tobool8.not, %tobool7.not
  br i1 %or.cond, label %cleanup, label %if.then9

if.then9:                                         ; preds = %if.end6
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %add.ptr.i, align 128
  %and11 = and i32 %3, 1
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end19, label %do.body14

do.body14:                                        ; preds = %if.then9
  %rq.i = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 14
  %4 = ptrtoint ptr %rq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rq.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i, label %lockdep_assert_rq_held.exit.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %do.body14
  %core_enabled.i.i.i = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 81
  %7 = ptrtoint ptr %core_enabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %core_enabled.i.i.i, align 128
  %tobool.not.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i, label %__rq_lockp.exit.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  %core.i.i.i = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 79
  %9 = ptrtoint ptr %core.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %core.i.i.i, align 8
  br label %__rq_lockp.exit.i.i

__rq_lockp.exit.i.i:                              ; preds = %if.then.i.i.i, %land.rhs.i.i
  %retval.0.i.i.i = phi ptr [ %10, %if.then.i.i.i ], [ %5, %land.rhs.i.i ]
  %dep_map.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i, i32 0, i32 4
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #17
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %lockdep_assert_rq_held.exit.i, !prof !95

do.end.i.i:                                       ; preds = %__rq_lockp.exit.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1309, i32 noundef 9, ptr noundef null) #17
  br label %lockdep_assert_rq_held.exit.i

lockdep_assert_rq_held.exit.i:                    ; preds = %do.end.i.i, %__rq_lockp.exit.i.i, %do.body14
  %clock_update_flags.i.i = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 25
  %11 = ptrtoint ptr %clock_update_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %clock_update_flags.i.i, align 4
  %cmp.i.i = icmp ult i32 %12, 2
  br i1 %cmp.i.i, label %land.rhs.i3.i, label %rq_clock.exit

land.rhs.i3.i:                                    ; preds = %lockdep_assert_rq_held.exit.i
  %.b37.i.i = load i1, ptr @assert_clock_updated.__already_done, align 1
  br i1 %.b37.i.i, label %rq_clock.exit, label %if.then.i.i, !prof !97

if.then.i.i:                                      ; preds = %land.rhs.i3.i
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #17
  br label %rq_clock.exit

rq_clock.exit:                                    ; preds = %if.then.i.i, %land.rhs.i3.i, %lockdep_assert_rq_held.exit.i
  %clock.i = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 26
  %13 = ptrtoint ptr %clock.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %clock.i, align 32
  %sleep_start = getelementptr i8, ptr %rt_se, i32 432
  %15 = ptrtoint ptr %sleep_start to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %sleep_start, align 16
  br label %if.end19

if.end19:                                         ; preds = %rq_clock.exit, %if.then9
  %and20 = and i32 %3, 2
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %cleanup, label %do.body23

do.body23:                                        ; preds = %if.end19
  %rq.i37 = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 14
  %16 = ptrtoint ptr %rq.i37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rq.i37, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %18 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i38 = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i38, label %lockdep_assert_rq_held.exit.i52, label %land.rhs.i.i41

land.rhs.i.i41:                                   ; preds = %do.body23
  %core_enabled.i.i.i39 = getelementptr inbounds %struct.rq, ptr %17, i32 0, i32 81
  %19 = ptrtoint ptr %core_enabled.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %core_enabled.i.i.i39, align 128
  %tobool.not.i.i.i40 = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i.i40, label %__rq_lockp.exit.i.i48, label %if.then.i.i.i43

if.then.i.i.i43:                                  ; preds = %land.rhs.i.i41
  %core.i.i.i42 = getelementptr inbounds %struct.rq, ptr %17, i32 0, i32 79
  %21 = ptrtoint ptr %core.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %core.i.i.i42, align 8
  br label %__rq_lockp.exit.i.i48

__rq_lockp.exit.i.i48:                            ; preds = %if.then.i.i.i43, %land.rhs.i.i41
  %retval.0.i.i.i44 = phi ptr [ %22, %if.then.i.i.i43 ], [ %17, %land.rhs.i.i41 ]
  %dep_map.i.i45 = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i44, i32 0, i32 4
  %call.i.i.i46 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i45, i32 noundef -1) #17
  %cmp.not.i.i47 = icmp eq i32 %call.i.i.i46, 0
  br i1 %cmp.not.i.i47, label %do.end.i.i49, label %lockdep_assert_rq_held.exit.i52, !prof !95

do.end.i.i49:                                     ; preds = %__rq_lockp.exit.i.i48
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1309, i32 noundef 9, ptr noundef null) #17
  br label %lockdep_assert_rq_held.exit.i52

lockdep_assert_rq_held.exit.i52:                  ; preds = %do.end.i.i49, %__rq_lockp.exit.i.i48, %do.body23
  %clock_update_flags.i.i50 = getelementptr inbounds %struct.rq, ptr %17, i32 0, i32 25
  %23 = ptrtoint ptr %clock_update_flags.i.i50 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %clock_update_flags.i.i50, align 4
  %cmp.i.i51 = icmp ult i32 %24, 2
  br i1 %cmp.i.i51, label %land.rhs.i3.i54, label %rq_clock.exit57

land.rhs.i3.i54:                                  ; preds = %lockdep_assert_rq_held.exit.i52
  %.b37.i.i53 = load i1, ptr @assert_clock_updated.__already_done, align 1
  br i1 %.b37.i.i53, label %rq_clock.exit57, label %if.then.i.i55, !prof !97

if.then.i.i55:                                    ; preds = %land.rhs.i3.i54
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #17
  br label %rq_clock.exit57

rq_clock.exit57:                                  ; preds = %if.then.i.i55, %land.rhs.i3.i54, %lockdep_assert_rq_held.exit.i52
  %clock.i56 = getelementptr inbounds %struct.rq, ptr %17, i32 0, i32 26
  %25 = ptrtoint ptr %clock.i56 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %clock.i56, align 32
  %block_start = getelementptr i8, ptr %rt_se, i32 456
  %27 = ptrtoint ptr %block_start to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %block_start, align 8
  br label %cleanup

cleanup:                                          ; preds = %rq_clock.exit57, %if.end19, %if.end6, %if.end, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @update_rt_rq_load_avg(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__update_stats_wait_end(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @push_rt_tasks(ptr noundef %rq) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %call = tail call fastcc i32 @push_rt_task(ptr noundef %rq, i1 noundef zeroext false)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pull_rt_task(ptr noundef %this_rq) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu = getelementptr inbounds %struct.rq, ptr %this_rq, i32 0, i32 46
  %0 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu, align 4
  %rd.i = getelementptr inbounds %struct.rq, ptr %this_rq, i32 0, i32 35
  %2 = ptrtoint ptr %rd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rd.i, align 8
  %rto_count.i = getelementptr inbounds %struct.root_domain, ptr %3, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rto_count.i, i32 noundef 4) #17
  %4 = ptrtoint ptr %rto_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %rto_count.i, align 4
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %cleanup, label %do.end, !prof !97

do.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !125
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %do.end
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %8 = ptrtoint ptr %rd.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rd.i, align 8
  %rto_mask = getelementptr inbounds %struct.root_domain, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %rto_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rto_mask, align 4
  %call9 = tail call fastcc i32 @cpumask_test_cpu(i32 noundef %7, ptr noundef %11)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %cleanup

if.end12:                                         ; preds = %land.lhs.true, %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ([25 x %struct.static_key], ptr @sched_feat_keys, i32 0, i32 13), i32 1), ptr blockaddress(@pull_rt_task, %for.cond)) #17
          to label %if.then14 [label %for.cond], !srcloc !107

if.then14:                                        ; preds = %if.end12
  tail call fastcc void @tell_cpu_to_push(ptr noundef %this_rq)
  br label %cleanup

for.cond:                                         ; preds = %if.then118, %skip, %skip.thread, %do.body23, %for.body, %if.end12
  %resched.0.off0 = phi i1 [ %resched.0.off0, %for.body ], [ %resched.0.off0, %do.body23 ], [ false, %if.end12 ], [ %resched.1.off0.ph, %skip.thread ], [ %resched.0.off0, %if.then118 ], [ %resched.0.off0, %skip ]
  %cpu1.0 = phi i32 [ %1, %for.body ], [ %call18, %do.body23 ], [ -1, %if.end12 ], [ %call18, %skip.thread ], [ %call18, %if.then118 ], [ %call18, %skip ]
  %12 = ptrtoint ptr %rd.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rd.i, align 8
  %rto_mask17 = getelementptr inbounds %struct.root_domain, ptr %13, i32 0, i32 18
  %14 = ptrtoint ptr %rto_mask17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rto_mask17, align 4
  %call18 = tail call i32 @cpumask_next(i32 noundef %cpu1.0, ptr noundef %15) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %cmp19 = icmp ult i32 %call18, %16
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %cmp20 = icmp eq i32 %1, %call18
  br i1 %cmp20, label %for.cond, label %do.body23

do.body23:                                        ; preds = %for.body
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call18
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %add = add i32 %18, ptrtoint (ptr @runqueues to i32)
  %19 = inttoptr i32 %add to ptr
  %next = getelementptr inbounds %struct.rq, ptr %19, i32 0, i32 15, i32 3, i32 1
  %20 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %next, align 4
  %highest_prio28 = getelementptr inbounds %struct.rq, ptr %this_rq, i32 0, i32 15, i32 3
  %22 = ptrtoint ptr %highest_prio28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %highest_prio28, align 8
  %cmp29.not = icmp slt i32 %21, %23
  br i1 %cmp29.not, label %if.end31, label %for.cond

if.end31:                                         ; preds = %do.body23
  %call32 = tail call fastcc i32 @double_lock_balance(ptr noundef %this_rq, ptr noundef %19)
  %call33 = tail call fastcc ptr @pick_highest_pushable_task(ptr noundef %19, i32 noundef %1)
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %skip.thread, label %land.lhs.true35

land.lhs.true35:                                  ; preds = %if.end31
  %prio = getelementptr inbounds %struct.task_struct, ptr %call33, i32 0, i32 13
  %24 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %prio, align 8
  %26 = ptrtoint ptr %highest_prio28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %highest_prio28, align 8
  %cmp39 = icmp slt i32 %25, %27
  br i1 %cmp39, label %if.then40, label %skip.thread

if.then40:                                        ; preds = %land.lhs.true35
  %curr41 = getelementptr inbounds %struct.rq, ptr %19, i32 0, i32 20
  %28 = ptrtoint ptr %curr41 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %curr41, align 8
  %cmp42 = icmp eq ptr %call33, %29
  br i1 %cmp42, label %do.end58, label %if.end64, !prof !95

do.end58:                                         ; preds = %if.then40
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 2364, i32 noundef 9, ptr noundef null) #17
  br label %if.end64

if.end64:                                         ; preds = %do.end58, %if.then40
  %on_rq.i = getelementptr inbounds %struct.task_struct, ptr %call33, i32 0, i32 12
  %30 = ptrtoint ptr %on_rq.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %on_rq.i, align 4
  %cmp.i.not = icmp eq i32 %31, 1
  br i1 %cmp.i.not, label %if.end98, label %do.end92, !prof !97

do.end92:                                         ; preds = %if.end64
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 2365, i32 noundef 9, ptr noundef null) #17
  br label %if.end98

if.end98:                                         ; preds = %do.end92, %if.end64
  %32 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %prio, align 8
  %34 = ptrtoint ptr %curr41 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %curr41, align 8
  %prio108 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 13
  %36 = ptrtoint ptr %prio108 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %prio108, align 8
  %cmp109 = icmp slt i32 %33, %37
  br i1 %cmp109, label %skip.thread, label %if.end111

if.end111:                                        ; preds = %if.end98
  %migration_disabled.i = getelementptr inbounds %struct.task_struct, ptr %call33, i32 0, i32 37
  %38 = ptrtoint ptr %migration_disabled.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %migration_disabled.i, align 4
  %tobool.i.not = icmp eq i16 %39, 0
  br i1 %tobool.i.not, label %if.else, label %skip

if.else:                                          ; preds = %if.end111
  tail call void @deactivate_task(ptr noundef %19, ptr noundef nonnull %call33, i32 noundef 0) #17
  tail call void @set_task_cpu(ptr noundef nonnull %call33, i32 noundef %1) #17
  tail call void @activate_task(ptr noundef %this_rq, ptr noundef nonnull %call33, i32 noundef 0) #17
  br label %skip.thread

skip.thread:                                      ; preds = %if.else, %if.end98, %land.lhs.true35, %if.end31
  %resched.1.off0.ph = phi i1 [ %resched.0.off0, %if.end31 ], [ %resched.0.off0, %land.lhs.true35 ], [ true, %if.else ], [ %resched.0.off0, %if.end98 ]
  tail call fastcc void @double_unlock_balance(ptr noundef %this_rq, ptr noundef %19)
  br label %for.cond

skip:                                             ; preds = %if.end111
  %call114 = tail call fastcc ptr @get_push_task(ptr noundef %19)
  tail call fastcc void @double_unlock_balance(ptr noundef %this_rq, ptr noundef %19)
  %tobool117.not = icmp eq ptr %call114, null
  br i1 %tobool117.not, label %for.cond, label %if.then118

if.then118:                                       ; preds = %skip
  tail call void @raw_spin_rq_unlock(ptr noundef %this_rq) #17
  %cpu119 = getelementptr inbounds %struct.rq, ptr %19, i32 0, i32 46
  %40 = ptrtoint ptr %cpu119 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cpu119, align 4
  %push_work = getelementptr inbounds %struct.rq, ptr %19, i32 0, i32 78
  %call120 = tail call zeroext i1 @stop_one_cpu_nowait(i32 noundef %41, ptr noundef nonnull @push_cpu_stop, ptr noundef nonnull %call114, ptr noundef %push_work) #17
  tail call void @raw_spin_rq_lock_nested(ptr noundef %this_rq, i32 noundef 0) #17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br i1 %resched.0.off0, label %if.then123, label %cleanup

if.then123:                                       ; preds = %for.end
  tail call void @resched_curr(ptr noundef %this_rq) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then123, %for.end, %if.then14, %land.lhs.true, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_unpin_lock(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tell_cpu_to_push(ptr nocapture noundef readonly %rq) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %rd = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 35
  %0 = ptrtoint ptr %rd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rd, align 8
  %rto_loop_next = getelementptr inbounds %struct.root_domain, ptr %1, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rto_loop_next, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %rto_loop_next, i32 1, i32 3, i32 1) #17
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rto_loop_next, ptr %rto_loop_next, i32 1, ptr elementtype(i32) %rto_loop_next) #17, !srcloc !114
  %3 = ptrtoint ptr %rd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rd, align 8
  %rto_loop_start = getelementptr inbounds %struct.root_domain, ptr %4, i32 0, i32 17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rto_loop_start, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %rto_loop_start, i32 1, i32 3, i32 1) #17
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i, %entry
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %rto_loop_start, ptr %rto_loop_start, i32 0, i32 1, ptr elementtype(i32) %rto_loop_start) #17, !srcloc !126
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %5, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %rto_start_trylock.exit, label %do.body.i.i.i.i

rto_start_trylock.exit:                           ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %5, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !127
  %tobool.not.i = icmp eq i32 %asmresult3.i.i.i.i, 0
  br i1 %tobool.not.i, label %if.end, label %cleanup

if.end:                                           ; preds = %rto_start_trylock.exit
  %6 = ptrtoint ptr %rd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rd, align 8
  %rto_lock = getelementptr inbounds %struct.root_domain, ptr %7, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %rto_lock) #17
  %8 = ptrtoint ptr %rd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rd, align 8
  %rto_cpu = getelementptr inbounds %struct.root_domain, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %rto_cpu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rto_cpu, align 8
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %rto_mask.i = getelementptr inbounds %struct.root_domain, ptr %9, i32 0, i32 18
  %12 = ptrtoint ptr %rto_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rto_mask.i, align 4
  %call18.i = tail call i32 @cpumask_next(i32 noundef %11, ptr noundef %13) #19
  %14 = ptrtoint ptr %rto_cpu to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call18.i, ptr %rto_cpu, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %15 = load i32, ptr @nr_cpu_ids, align 4
  %cmp19.i = icmp ult i32 %call18.i, %15
  br i1 %cmp19.i, label %if.end7, label %if.end.lr.ph.i

if.end.lr.ph.i:                                   ; preds = %if.then4
  %rto_loop_next.i = getelementptr inbounds %struct.root_domain, ptr %9, i32 0, i32 16
  %rto_loop.i = getelementptr inbounds %struct.root_domain, ptr %9, i32 0, i32 14
  br label %if.end.i

if.end.i:                                         ; preds = %if.end6.i, %if.end.lr.ph.i
  %16 = ptrtoint ptr %rto_cpu to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %rto_cpu, align 8
  %call.i.i.i27 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rto_loop_next.i, i32 noundef 4) #17
  %17 = ptrtoint ptr %rto_loop_next.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %rto_loop_next.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !96
  %19 = ptrtoint ptr %rto_loop.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rto_loop.i, align 4
  %cmp4.i = icmp eq i32 %20, %18
  br i1 %cmp4.i, label %if.end7, label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i
  %21 = ptrtoint ptr %rto_loop.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %18, ptr %rto_loop.i, align 4
  %22 = ptrtoint ptr %rto_cpu to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rto_cpu, align 8
  %24 = ptrtoint ptr %rto_mask.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rto_mask.i, align 4
  %call.i = tail call i32 @cpumask_next(i32 noundef %23, ptr noundef %25) #19
  %26 = ptrtoint ptr %rto_cpu to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call.i, ptr %rto_cpu, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %27 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call.i, %27
  br i1 %cmp.i, label %if.end7, label %if.end.i

if.end7:                                          ; preds = %if.end6.i, %if.end.i, %if.then4, %if.end
  %cpu.0 = phi i32 [ -1, %if.end ], [ %call18.i, %if.then4 ], [ %call.i, %if.end6.i ], [ -1, %if.end.i ]
  %28 = ptrtoint ptr %rd to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rd, align 8
  %rto_lock9 = getelementptr inbounds %struct.root_domain, ptr %29, i32 0, i32 13
  tail call void @_raw_spin_unlock(ptr noundef %rto_lock9) #17
  %30 = ptrtoint ptr %rd to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rd, align 8
  %rto_loop_start11 = getelementptr inbounds %struct.root_domain, ptr %31, i32 0, i32 17
  %call.i.i.i28 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rto_loop_start11, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !128
  %32 = ptrtoint ptr %rto_loop_start11 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 0, ptr %rto_loop_start11, align 4
  %cmp12 = icmp sgt i32 %cpu.0, -1
  br i1 %cmp12, label %if.then13, label %cleanup

if.then13:                                        ; preds = %if.end7
  %33 = ptrtoint ptr %rd to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rd, align 8
  tail call void @sched_get_rd(ptr noundef %34) #17
  %35 = ptrtoint ptr %rd to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rd, align 8
  %rto_push_work = getelementptr inbounds %struct.root_domain, ptr %36, i32 0, i32 12
  %call16 = tail call zeroext i1 @irq_work_queue_on(ptr noundef %rto_push_work, i32 noundef %cpu.0) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end7, %rto_start_trylock.exit
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @double_lock_balance(ptr noundef %this_rq, ptr noundef %busiest) unnamed_addr #6 align 64 {
entry:
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end86, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !85) #17
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %4, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !129
  %5 = tail call i32 @llvm.read_register.i32(metadata !85) #17
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !130
  %14 = tail call i32 @llvm.read_register.i32(metadata !85) #17
  %and.i.i.i103 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i103 to ptr
  %preempt_count.i.i104 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i104 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i104, align 4
  %sub.i = add i32 %17, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i104, align 4
  %tobool20.not = icmp eq i32 %13, 0
  br i1 %tobool20.not, label %land.rhs, label %if.end86

land.rhs:                                         ; preds = %land.lhs.true
  %18 = tail call i32 @llvm.read_register.i32(metadata !85) #17
  %and.i.i.i105 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i105 to ptr
  %preempt_count.i.i106 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i106 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i106, align 4
  %add.i107 = add i32 %21, 1
  store volatile i32 %add.i107, ptr %preempt_count.i.i106, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !131
  %22 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu, align 4
  %arrayidx44 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx44, align 4
  %add45 = add i32 %25, ptrtoint (ptr @hardirqs_enabled to i32)
  %26 = inttoptr i32 %add45 to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !132
  %29 = tail call i32 @llvm.read_register.i32(metadata !85) #17
  %and.i.i.i108 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i108 to ptr
  %preempt_count.i.i109 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i109 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i109, align 4
  %sub.i110 = add i32 %32, -1
  store volatile i32 %sub.i110, ptr %preempt_count.i.i109, align 4
  %tobool52.not = icmp eq i32 %28, 0
  br i1 %tobool52.not, label %if.end86, label %land.rhs55

land.rhs55:                                       ; preds = %land.rhs
  %.b99 = load i1, ptr @double_lock_balance.__already_done, align 1
  br i1 %.b99, label %if.end86, label %if.then, !prof !97

if.then:                                          ; preds = %land.rhs55
  store i1 true, ptr @double_lock_balance.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2592, i32 noundef 9, ptr noundef null) #17
  br label %if.end86

if.end86:                                         ; preds = %if.then, %land.rhs55, %land.rhs, %land.lhs.true, %entry
  %core_enabled.i.i = getelementptr inbounds %struct.rq, ptr %this_rq, i32 0, i32 81
  %33 = ptrtoint ptr %core_enabled.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %core_enabled.i.i, align 128
  %tobool.not.i.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i.i, label %__rq_lockp.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end86
  %core.i.i = getelementptr inbounds %struct.rq, ptr %this_rq, i32 0, i32 79
  %35 = ptrtoint ptr %core.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %core.i.i, align 8
  br label %__rq_lockp.exit.i

__rq_lockp.exit.i:                                ; preds = %if.then.i.i, %if.end86
  %retval.0.i.i = phi ptr [ %36, %if.then.i.i ], [ %this_rq, %if.end86 ]
  %core_enabled.i16.i = getelementptr inbounds %struct.rq, ptr %busiest, i32 0, i32 81
  %37 = ptrtoint ptr %core_enabled.i16.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %core_enabled.i16.i, align 128
  %tobool.not.i17.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i17.i, label %__rq_lockp.exit21.i, label %if.then.i19.i

if.then.i19.i:                                    ; preds = %__rq_lockp.exit.i
  %core.i18.i = getelementptr inbounds %struct.rq, ptr %busiest, i32 0, i32 79
  %39 = ptrtoint ptr %core.i18.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %core.i18.i, align 8
  br label %__rq_lockp.exit21.i

__rq_lockp.exit21.i:                              ; preds = %if.then.i19.i, %__rq_lockp.exit.i
  %retval.0.i20.i = phi ptr [ %40, %if.then.i19.i ], [ %busiest, %__rq_lockp.exit.i ]
  %cmp.i = icmp eq ptr %retval.0.i.i, %retval.0.i20.i
  br i1 %cmp.i, label %_double_lock_balance.exit, label %if.end.i

if.end.i:                                         ; preds = %__rq_lockp.exit21.i
  %call2.i = tail call zeroext i1 @raw_spin_rq_trylock(ptr noundef %busiest) #17
  br i1 %call2.i, label %_double_lock_balance.exit, label %if.end5.i, !prof !97

if.end5.i:                                        ; preds = %if.end.i
  %core.i22.i = getelementptr inbounds %struct.rq, ptr %this_rq, i32 0, i32 79
  %41 = ptrtoint ptr %core.i22.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %core.i22.i, align 8
  %cpu.i.i = getelementptr inbounds %struct.rq, ptr %42, i32 0, i32 46
  %43 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cpu.i.i, align 4
  %core1.i.i = getelementptr inbounds %struct.rq, ptr %busiest, i32 0, i32 79
  %45 = ptrtoint ptr %core1.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %core1.i.i, align 8
  %cpu2.i.i = getelementptr inbounds %struct.rq, ptr %46, i32 0, i32 46
  %47 = ptrtoint ptr %cpu2.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cpu2.i.i, align 4
  %cmp.i.i = icmp slt i32 %44, %48
  br i1 %cmp.i.i, label %if.then7.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end5.i
  %cmp7.i.i = icmp sgt i32 %44, %48
  br i1 %cmp7.i.i, label %if.end8.i, label %rq_order_less.exit.i

rq_order_less.exit.i:                             ; preds = %if.end.i.i
  %cpu10.i.i = getelementptr inbounds %struct.rq, ptr %this_rq, i32 0, i32 46
  %49 = ptrtoint ptr %cpu10.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cpu10.i.i, align 4
  %cpu11.i.i = getelementptr inbounds %struct.rq, ptr %busiest, i32 0, i32 46
  %51 = ptrtoint ptr %cpu11.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cpu11.i.i, align 4
  %cmp12.i.i = icmp slt i32 %50, %52
  br i1 %cmp12.i.i, label %if.then7.i, label %if.end8.i

if.then7.i:                                       ; preds = %rq_order_less.exit.i, %if.end5.i
  tail call void @raw_spin_rq_lock_nested(ptr noundef %busiest, i32 noundef 1) #17
  br label %_double_lock_balance.exit

if.end8.i:                                        ; preds = %rq_order_less.exit.i, %if.end.i.i
  tail call void @raw_spin_rq_unlock(ptr noundef %this_rq) #17
  tail call void @double_rq_lock(ptr noundef %this_rq, ptr noundef %busiest) #17
  br label %_double_lock_balance.exit

_double_lock_balance.exit:                        ; preds = %if.end8.i, %if.then7.i, %if.end.i, %__rq_lockp.exit21.i
  %retval.0.i = phi i32 [ 0, %if.then7.i ], [ 1, %if.end8.i ], [ 0, %__rq_lockp.exit21.i ], [ 0, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @pick_highest_pushable_task(ptr noundef %rq, i32 noundef %cpu) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %pushable_tasks = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 15, i32 7
  %0 = ptrtoint ptr %pushable_tasks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pushable_tasks, align 4
  %cmp.i.i.i.not = icmp eq ptr %1, %pushable_tasks
  br i1 %cmp.i.i.i.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %pushable_tasks to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn25 = load ptr, ptr %pushable_tasks, align 4
  %cmp.not26 = icmp eq ptr %.pn25, %pushable_tasks
  br i1 %cmp.not26, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %div3.i.i.i = lshr i32 %cpu, 5
  %and.i.i.i = and i32 %cpu, 31
  %3 = shl nuw i32 1, %and.i.i.i
  br label %for.body

for.body:                                         ; preds = %pick_rt_task.exit, %for.body.lr.ph
  %.pn27 = phi ptr [ %.pn25, %for.body.lr.ph ], [ %.pn, %pick_rt_task.exit ]
  %on_cpu.i.i = getelementptr i8, ptr %.pn27, i32 -1136
  %4 = ptrtoint ptr %on_cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %on_cpu.i.i, align 4
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %pick_rt_task.exit

land.lhs.true.i:                                  ; preds = %for.body
  %cpus_mask.i = getelementptr i8, ptr %.pn27, i32 -112
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i = icmp ugt i32 %6, %cpu
  br i1 %cmp.not.i.i.i.i, label %cpumask_test_cpu.exit.i, label %land.rhs.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %cpumask_test_cpu.exit.i, label %if.then.i.i.i.i, !prof !97

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpumask_test_cpu.exit.i

cpumask_test_cpu.exit.i:                          ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i, %land.lhs.true.i
  %arrayidx.i.i.i = getelementptr i32, ptr %cpus_mask.i, i32 %div3.i.i.i
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %9 = and i32 %8, %3
  %tobool2.not.i = icmp eq i32 %9, 0
  br i1 %tobool2.not.i, label %pick_rt_task.exit, label %cleanup.loopexit.split.loop.exit23

pick_rt_task.exit:                                ; preds = %cpumask_test_cpu.exit.i, %for.body
  %10 = ptrtoint ptr %.pn27 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn27, align 4
  %cmp.not = icmp eq ptr %.pn, %pushable_tasks
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup.loopexit.split.loop.exit23:               ; preds = %cpumask_test_cpu.exit.i
  %p.0.le = getelementptr i8, ptr %.pn27, i32 -1156
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split.loop.exit23, %pick_rt_task.exit, %for.cond.preheader, %entry
  %retval.0 = phi ptr [ null, %entry ], [ %p.0.le, %cleanup.loopexit.split.loop.exit23 ], [ null, %for.cond.preheader ], [ null, %pick_rt_task.exit ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_get_rd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @raw_spin_rq_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @double_rq_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_repin_lock(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_sched_stat_runtime(ptr noundef %tsk, i64 noundef %runtime) unnamed_addr #6 align 64 {
entry:
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_stat_runtime, i32 0, i32 1), ptr blockaddress(@trace_sched_stat_runtime, %do.body)) #17
          to label %if.end48 [label %do.body], !srcloc !107

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !85) #17
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %cpu_online.exit, label %land.rhs.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %cpu_online.exit, label %if.then.i.i.i.i, !prof !97

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i, %do.body
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end69, label %cleanup.thread

cleanup.thread:                                   ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !85) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !133
  %call42 = tail call i32 @__traceiter_sched_stat_runtime(ptr noundef null, ptr noundef %tsk, i64 noundef %runtime, i64 noundef 0) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !134
  %13 = tail call i32 @llvm.read_register.i32(metadata !85) #17
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !85) #17
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %cpu_online.exit14, label %land.rhs.i.i.i.i8

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %cpu_online.exit14, label %if.then.i.i.i.i9, !prof !97

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8, %if.end48
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %if.end69, label %if.then52

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !85) #17
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !135
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_stat_runtime, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_stat_runtime, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #17
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #17
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %do.end67, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_sched_stat_runtime.__warned, align 1
  br i1 %.b1, label %do.end67, label %if.then64

if.then64:                                        ; preds = %land.lhs.true62
  store i1 true, ptr @trace_sched_stat_runtime.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 519, ptr noundef nonnull @.str.5) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62, %land.lhs.true, %if.then52
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !136
  %31 = tail call i32 @llvm.read_register.i32(metadata !85) #17
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14, %cpu_online.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_sched_stat_runtime(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuacct_charge(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cgroup_account_cputime(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sched_rt_rq_dequeue(ptr noundef %rt_rq) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %rq.i = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 14
  %0 = ptrtoint ptr %rq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq.i, align 8
  %cpu.i = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu.i, align 4
  %tg = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 15
  %4 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tg, align 4
  %rt_se2 = getelementptr inbounds %struct.task_group, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %rt_se2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rt_se2, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 %3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %rt.i = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 15
  %cmp.not.i = icmp eq ptr %rt.i, %rt_rq
  br i1 %cmp.not.i, label %do.end7.i, label %do.body2.i, !prof !97

do.body2.i:                                       ; preds = %if.then
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/rt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1059, 0\0A.popsection", ""() #17, !srcloc !121
  unreachable

do.end7.i:                                        ; preds = %if.then
  %rt_queued.i = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 8
  %10 = ptrtoint ptr %rt_queued.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rt_queued.i, align 4
  %tobool8.not.i = icmp eq i32 %11, 0
  br i1 %tobool8.not.i, label %dequeue_top_rt_rq.exit, label %do.body11.i

do.body11.i:                                      ; preds = %do.end7.i
  %nr_running.i = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %nr_running.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_running.i, align 4
  %tobool12.not.i = icmp eq i32 %13, 0
  br i1 %tobool12.not.i, label %do.body22.i, label %do.end30.i, !prof !95

do.body22.i:                                      ; preds = %do.body11.i
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/rt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #17, !srcloc !122
  unreachable

do.end30.i:                                       ; preds = %do.body11.i
  %rt_nr_running.i = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 1
  %14 = ptrtoint ptr %rt_nr_running.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rt_nr_running.i, align 8
  %sub.i.i = sub i32 %13, %15
  %16 = ptrtoint ptr %nr_running.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub.i.i, ptr %nr_running.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_update_nr_running_tp, i32 0, i32 1), ptr blockaddress(@sched_rt_rq_dequeue, %if.then.i.i)) #17
          to label %sub_nr_running.exit.i [label %if.then.i.i], !srcloc !107

if.then.i.i:                                      ; preds = %do.end30.i
  %sub1.i.i = sub i32 0, %15
  tail call void @call_trace_sched_update_nr_running(ptr noundef %1, i32 noundef %sub1.i.i) #17
  br label %sub_nr_running.exit.i

sub_nr_running.exit.i:                            ; preds = %if.then.i.i, %do.end30.i
  %17 = ptrtoint ptr %rt_queued.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %rt_queued.i, align 4
  br label %dequeue_top_rt_rq.exit

dequeue_top_rt_rq.exit:                           ; preds = %sub_nr_running.exit.i, %do.end7.i
  %18 = ptrtoint ptr %rq.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rq.i, align 8
  tail call fastcc void @cpufreq_update_util(ptr noundef %19)
  br label %if.end7

if.else:                                          ; preds = %entry
  %on_rq.i = getelementptr inbounds %struct.sched_rt_entity, ptr %9, i32 0, i32 4
  %20 = ptrtoint ptr %on_rq.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %on_rq.i, align 4
  %tobool5.not = icmp eq i16 %21, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.else
  tail call fastcc void @dequeue_rt_entity(ptr noundef nonnull %9, i32 noundef 0)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.else, %dequeue_top_rt_rq.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__rt_schedulable(ptr noundef %tg, i64 noundef %period, i64 noundef %runtime) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %data = alloca %struct.rt_schedulable_data, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %data) #17
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %data, align 8
  store ptr %tg, ptr %data, align 8
  %rt_period = getelementptr inbounds %struct.rt_schedulable_data, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %rt_period to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %period, ptr %rt_period, align 8
  %rt_runtime = getelementptr inbounds %struct.rt_schedulable_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %rt_runtime to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %runtime, ptr %rt_runtime, align 8
  %3 = tail call i32 @llvm.read_register.i32(metadata !85) #17
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !111
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %rcu_read_lock.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %rcu_read_lock.exit, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %rcu_read_lock.exit, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true2.i
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i, %land.lhs.true.i, %entry
  %call.i2 = call i32 @walk_tg_tree_from(ptr noundef nonnull @root_task_group, ptr noundef nonnull @tg_rt_schedulable, ptr noundef nonnull @tg_nop, ptr noundef nonnull %data) #17
  %call.i3 = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i3, label %rcu_read_unlock.exit, label %land.lhs.true.i6

land.lhs.true.i6:                                 ; preds = %rcu_read_lock.exit
  %call1.i4 = call i32 @debug_lockdep_rcu_enabled() #17
  %tobool.not.i5 = icmp eq i32 %call1.i4, 0
  br i1 %tobool.not.i5, label %rcu_read_unlock.exit, label %land.lhs.true2.i8

land.lhs.true2.i8:                                ; preds = %land.lhs.true.i6
  %.b4.i7 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7, label %rcu_read_unlock.exit, label %if.then.i9

if.then.i9:                                       ; preds = %land.lhs.true2.i8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i9, %land.lhs.true2.i8, %land.lhs.true.i6, %rcu_read_lock.exit
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !112
  %7 = call i32 @llvm.read_register.i32(metadata !85) #17
  %and.i.i.i.i.i10 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i10 to ptr
  %preempt_count.i.i.i.i11 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i11, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i11, align 4
  call void @rcu_read_unlock_strict() #17
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %data) #17
  ret i32 %call.i2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tg_rt_schedulable(ptr noundef %tg, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %it.i = alloca %struct.css_task_iter, align 4
  %rt_period = getelementptr inbounds %struct.task_group, ptr %tg, i32 0, i32 9, i32 1
  %rt_runtime = getelementptr inbounds %struct.task_group, ptr %tg, i32 0, i32 9, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %cmp = icmp eq ptr %1, %tg
  %rt_period3 = getelementptr inbounds %struct.rt_schedulable_data, ptr %data, i32 0, i32 1
  %rt_runtime4 = getelementptr inbounds %struct.rt_schedulable_data, ptr %data, i32 0, i32 2
  %runtime.0.in = select i1 %cmp, ptr %rt_runtime4, ptr %rt_runtime
  %period.0.in = select i1 %cmp, ptr %rt_period3, ptr %rt_period
  %2 = ptrtoint ptr %period.0.in to i32
  call void @__asan_load8_noabort(i32 %2)
  %period.0 = load i64, ptr %period.0.in, align 8
  %3 = ptrtoint ptr %runtime.0.in to i32
  call void @__asan_load8_noabort(i32 %3)
  %runtime.0 = load i64, ptr %runtime.0.in, align 8
  %cmp5 = icmp ule i64 %runtime.0, %period.0
  %cmp6.not = icmp eq i64 %runtime.0, -1
  %or.cond = or i1 %cmp5, %cmp6.not
  br i1 %or.cond, label %if.end8, label %cleanup

if.end8:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_rt_runtime to i32))
  %4 = load i32, ptr @sysctl_sched_rt_runtime, align 4
  %tobool.not = icmp sgt i32 %4, -1
  %tobool11.not = icmp eq i64 %runtime.0, 0
  %or.cond96 = select i1 %tobool.not, i1 %tobool11.not, i1 false
  br i1 %or.cond96, label %land.lhs.true12, label %if.end20

land.lhs.true12:                                  ; preds = %if.end8
  %5 = ptrtoint ptr %rt_runtime to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %rt_runtime, align 8
  %tobool15.not = icmp eq i64 %6, 0
  br i1 %tobool15.not, label %if.end20, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %land.lhs.true12
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %it.i) #17
  %7 = call ptr @memset(ptr %it.i, i32 255, i32 52)
  %autogroup.i.i = getelementptr inbounds %struct.task_group, ptr %tg, i32 0, i32 15
  %8 = ptrtoint ptr %autogroup.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %autogroup.i.i, align 4
  %tobool.i.not.i = icmp eq ptr %9, null
  br i1 %tobool.i.not.i, label %if.end.i, label %tg_has_rt_tasks.exit.thread

tg_has_rt_tasks.exit.thread:                      ; preds = %land.lhs.true16
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %it.i) #17
  br label %if.end20

if.end.i:                                         ; preds = %land.lhs.true16
  call void @css_task_iter_start(ptr noundef %tg, i32 noundef 0, ptr noundef nonnull %it.i) #17
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i, %if.end.i
  %call1.i = call ptr @css_task_iter_next(ptr noundef nonnull %it.i) #17
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %tg_has_rt_tasks.exit.thread102, label %while.body.i

tg_has_rt_tasks.exit.thread102:                   ; preds = %land.rhs.i
  call void @css_task_iter_end(ptr noundef nonnull %it.i) #17
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %it.i) #17
  br label %if.end20

while.body.i:                                     ; preds = %land.rhs.i
  %prio.i.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 13
  %10 = ptrtoint ptr %prio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %prio.i.i, align 8
  %cmp.i.i.i = icmp slt i32 %11, 100
  br i1 %cmp.i.i.i, label %tg_has_rt_tasks.exit, label %land.rhs.i

tg_has_rt_tasks.exit:                             ; preds = %while.body.i
  call void @css_task_iter_end(ptr noundef nonnull %it.i) #17
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %it.i) #17
  br label %cleanup

if.end20:                                         ; preds = %tg_has_rt_tasks.exit.thread102, %tg_has_rt_tasks.exit.thread, %land.lhs.true12, %if.end8
  %call21 = call i32 @to_ratio(i64 noundef %period.0, i64 noundef %runtime.0) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_rt_period to i32))
  %12 = load i32, ptr @sysctl_sched_rt_period, align 4
  %conv.i = zext i32 %12 to i64
  %mul.i = mul nuw nsw i64 %conv.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_rt_runtime to i32))
  %13 = load i32, ptr @sysctl_sched_rt_runtime, align 4
  %cmp.i = icmp slt i32 %13, 0
  %conv.i97 = sext i32 %13 to i64
  %mul.i98 = mul nsw i64 %conv.i97, 1000
  %retval.0.i99 = select i1 %cmp.i, i64 -1, i64 %mul.i98
  %call24 = call i32 @to_ratio(i64 noundef %mul.i, i64 noundef %retval.0.i99) #17
  %cmp25 = icmp ugt i32 %call21, %call24
  br i1 %cmp25, label %cleanup, label %do.body

do.body:                                          ; preds = %if.end20
  %call28 = call i32 @rcu_read_lock_any_held() #17
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.lhs.true30, label %do.end

land.lhs.true30:                                  ; preds = %do.body
  %call31 = call i32 @debug_lockdep_rcu_enabled() #17
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %do.end, label %land.lhs.true33

land.lhs.true33:                                  ; preds = %land.lhs.true30
  %.b95 = load i1, ptr @tg_rt_schedulable.__warned, align 1
  br i1 %.b95, label %do.end, label %if.then35

if.then35:                                        ; preds = %land.lhs.true33
  store i1 true, ptr @tg_rt_schedulable.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 2739, ptr noundef nonnull @.str.18) #17
  br label %do.end

do.end:                                           ; preds = %if.then35, %land.lhs.true33, %land.lhs.true30, %do.body
  %children = getelementptr inbounds %struct.task_group, ptr %tg, i32 0, i32 14
  %14 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn105 = load volatile ptr, ptr %children, align 4
  %cmp42.not106 = icmp eq ptr %.pn105, %children
  br i1 %cmp42.not106, label %for.end, label %for.body

for.body:                                         ; preds = %for.body, %do.end
  %.pn108 = phi ptr [ %.pn, %for.body ], [ %.pn105, %do.end ]
  %sum.0107 = phi i32 [ %add, %for.body ], [ 0, %do.end ]
  %child.0 = getelementptr i8, ptr %.pn108, i32 -412
  %rt_period44 = getelementptr i8, ptr %.pn108, i32 -92
  %rt_runtime47 = getelementptr i8, ptr %.pn108, i32 -84
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 8
  %cmp49 = icmp eq ptr %child.0, %16
  %runtime.1.in = select i1 %cmp49, ptr %rt_runtime4, ptr %rt_runtime47
  %period.1.in = select i1 %cmp49, ptr %rt_period3, ptr %rt_period44
  %17 = ptrtoint ptr %period.1.in to i32
  call void @__asan_load8_noabort(i32 %17)
  %period.1 = load i64, ptr %period.1.in, align 8
  %18 = ptrtoint ptr %runtime.1.in to i32
  call void @__asan_load8_noabort(i32 %18)
  %runtime.1 = load i64, ptr %runtime.1.in, align 8
  %call54 = call i32 @to_ratio(i64 noundef %period.1, i64 noundef %runtime.1) #17
  %add = add i32 %call54, %sum.0107
  %19 = ptrtoint ptr %.pn108 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn = load volatile ptr, ptr %.pn108, align 4
  %cmp42.not = icmp eq ptr %.pn, %children
  br i1 %cmp42.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %do.end
  %sum.0.lcssa = phi i32 [ 0, %do.end ], [ %add, %for.body ]
  %cmp64 = icmp ugt i32 %sum.0.lcssa, %call21
  %. = select i1 %cmp64, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end20, %tg_has_rt_tasks.exit, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ -16, %tg_has_rt_tasks.exit ], [ -22, %if.end20 ], [ %., %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tg_nop(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @walk_tg_tree_from(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @to_ratio(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @css_task_iter_start(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @css_task_iter_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @css_task_iter_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind readonly }
attributes #15 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #16 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nounwind readonly willreturn }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { cold nounwind }
attributes #23 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !16, !18, !20, !22, !23, !25, !26, !28, !29, !31, !33, !34, !36, !37, !39, !40, !42, !44, !45, !47, !49, !51, !52, !53, !54, !55, !56, !58, !60, !61, !62, !64, !65, !67, !68, !69, !70, !71, !73, !74, !75, !77, !78, !80, !81, !82, !84}
!llvm.named.register.sp = !{!85}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @sched_rr_timeslice, !1, !"sched_rr_timeslice", i1 false, i1 false}
!1 = !{!"../kernel/sched/rt.c", i32 10, i32 5}
!2 = !{ptr @sysctl_sched_rr_timeslice, !3, !"sysctl_sched_rr_timeslice", i1 false, i1 false}
!3 = !{!"../kernel/sched/rt.c", i32 11, i32 5}
!4 = !{ptr @init_rt_bandwidth.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../kernel/sched/rt.c", i32 48, i32 2}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @init_rt_rq.__key, !8, !"__key", i1 false, i1 false}
!8 = !{!"../kernel/sched/rt.c", i32 109, i32 2}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @rt_sched_class, !11, !"rt_sched_class", i1 false, i1 false}
!11 = !{!"../kernel/sched/rt.c", i32 2630, i32 1}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../kernel/sched/rt.c", i32 2935, i32 9}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @sched_rt_handler.mutex, !13, !"mutex", i1 false, i1 false}
!16 = !{ptr @sched_rr_handler.mutex, !17, !"mutex", i1 false, i1 false}
!17 = !{!"../kernel/sched/rt.c", i32 2974, i32 9}
!18 = !{ptr @def_rt_bandwidth, !19, !"def_rt_bandwidth", i1 false, i1 false}
!19 = !{!"../kernel/sched/rt.c", i32 17, i32 21}
!20 = !{ptr @__pcpu_unique_rt_push_head, !21, !"__pcpu_unique_rt_push_head", i1 false, i1 false}
!21 = !{!"../kernel/sched/rt.c", i32 368, i32 8}
!22 = !{ptr @rt_push_head, !21, !"rt_push_head", i1 false, i1 false}
!23 = !{ptr @__pcpu_unique_rt_pull_head, !24, !"__pcpu_unique_rt_pull_head", i1 false, i1 false}
!24 = !{!"../kernel/sched/rt.c", i32 369, i32 8}
!25 = !{ptr @rt_pull_head, !24, !"rt_pull_head", i1 false, i1 false}
!26 = !{ptr @__pcpu_unique_local_cpu_mask, !27, !"__pcpu_unique_local_cpu_mask", i1 false, i1 false}
!27 = !{!"../kernel/sched/rt.c", i32 1840, i32 8}
!28 = !{ptr @local_cpu_mask, !27, !"local_cpu_mask", i1 false, i1 false}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../kernel/sched/sched.h", i32 1309, i32 2}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../kernel/sched/sched.h", i32 2835, i32 9}
!33 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../kernel/sched/sched.h", i32 1459, i32 2}
!36 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../kernel/sched/rt.c", i32 123, i32 2}
!39 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../kernel/sched/rt.c", i32 1437, i32 3}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!44 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../kernel/sched/rt.c", i32 1417, i32 3}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../kernel/sched/rt.c", i32 1894, i32 2}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../kernel/sched/stats.h", i32 65, i32 3}
!51 = !{ptr @.str.9, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.10, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @check_schedstat_required._entry, !50, !"_entry", i1 false, i1 false}
!55 = !{ptr @check_schedstat_required._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../kernel/sched/sched.h", i32 2592, i32 2}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../include/trace/events/sched.h", i32 517, i32 1}
!60 = !{ptr @.str.12, !59, !"<string literal>", i1 false, i1 false}
!61 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../include/linux/cgroup.h", i32 481, i32 9}
!64 = !{ptr @.str.13, !63, !"<string literal>", i1 false, i1 false}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../kernel/sched/rt.c", i32 985, i32 4}
!67 = !{ptr @.str.14, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.15, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @sched_rt_runtime_exceeded._entry, !66, !"_entry", i1 false, i1 false}
!70 = !{ptr @sched_rt_runtime_exceeded._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.16, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../kernel/sched/rt.c", i32 2672, i32 8}
!73 = !{ptr @.str.17, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @rt_constraints_mutex, !72, !"rt_constraints_mutex", i1 false, i1 false}
!75 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!76 = !{!"../kernel/sched/rt.c", i32 2739, i32 2}
!77 = !{ptr @.str.18, !76, !"<string literal>", i1 false, i1 false}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!80 = !{ptr @.str.19, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.20, !79, !"<string literal>", i1 false, i1 false}
!82 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!83 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!84 = !{ptr @.str.21, !83, !"<string literal>", i1 false, i1 false}
!85 = !{!"sp"}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{!"branch_weights", i32 1, i32 2000}
!96 = !{i64 2148651234}
!97 = !{!"branch_weights", i32 2000, i32 1}
!98 = !{i64 2158714127, i64 2158714610, i64 2158714164, i64 2158714220, i64 2158714254, i64 2158714278, i64 2158714319, i64 2158714340, i64 2158714368, i64 2158714402}
!99 = !{i64 2158715718, i64 2158716201, i64 2158715755, i64 2158715811, i64 2158715845, i64 2158715869, i64 2158715910, i64 2158715931, i64 2158715959, i64 2158715993}
!100 = !{i64 2158717317, i64 2158717800, i64 2158717354, i64 2158717410, i64 2158717444, i64 2158717468, i64 2158717509, i64 2158717530, i64 2158717558, i64 2158717592}
!101 = !{i64 2158718912, i64 2158719395, i64 2158718949, i64 2158719005, i64 2158719039, i64 2158719063, i64 2158719104, i64 2158719125, i64 2158719153, i64 2158719187}
!102 = !{i64 2158720487, i64 2158720970, i64 2158720524, i64 2158720580, i64 2158720614, i64 2158720638, i64 2158720679, i64 2158720700, i64 2158720728, i64 2158720762}
!103 = !{i64 2148573069, i64 2148573101, i64 2148573130, i64 2148573164, i64 2148573195, i64 2148573218}
!104 = !{i64 2148661070}
!105 = !{i64 2148575534, i64 2148575566, i64 2148575595, i64 2148575629, i64 2148575660, i64 2148575683}
!106 = !{i64 2149707040}
!107 = !{i64 2148384932, i64 2148384937, i64 2148384950, i64 2148384994, i64 2148385028, i64 2148385049}
!108 = !{i32 0, i32 33}
!109 = !{i64 2158594391, i64 2158594874, i64 2158594428, i64 2158594484, i64 2158594518, i64 2158594542, i64 2158594583, i64 2158594604, i64 2158594632, i64 2158594666}
!110 = !{i64 2158597343, i64 2158601887, i64 2158597380, i64 2158597436, i64 2158597470, i64 2158597494, i64 2158597535, i64 2158597556, i64 2158597584, i64 2158597618}
!111 = !{i64 2149399053}
!112 = !{i64 2149399319}
!113 = !{i64 2158525790}
!114 = !{i64 2148571539, i64 2148571565, i64 2148571594, i64 2148571628, i64 2148571659, i64 2148571682}
!115 = !{i64 2148574004, i64 2148574030, i64 2148574059, i64 2148574093, i64 2148574124, i64 2148574147}
!116 = !{i64 2158561406, i64 2158561888, i64 2158561443, i64 2158561499, i64 2158561533, i64 2158561557, i64 2158561598, i64 2158561619, i64 2158561647, i64 2158561681}
!117 = !{i64 924575, i64 924602, i64 924624, i64 924652}
!118 = !{i64 924983, i64 925010, i64 925043, i64 925064, i64 925091, i64 925117}
!119 = !{i64 2148410119, i64 2148410399, i64 2148410733, i64 2148411067}
!120 = !{i64 2158575528, i64 2158576011, i64 2158575565, i64 2158575621, i64 2158575655, i64 2158575679, i64 2158575720, i64 2158575741, i64 2158575769, i64 2158575803}
!121 = !{i64 2158572360, i64 2158572843, i64 2158572397, i64 2158572453, i64 2158572487, i64 2158572511, i64 2158572552, i64 2158572573, i64 2158572601, i64 2158572635}
!122 = !{i64 2158573943, i64 2158574426, i64 2158573980, i64 2158574036, i64 2158574070, i64 2158574094, i64 2158574135, i64 2158574156, i64 2158574184, i64 2158574218}
!123 = !{i64 2158648033}
!124 = !{i64 2158664516}
!125 = !{i64 2158725133}
!126 = !{i64 1057052, i64 1057076, i64 1057097, i64 1057114, i64 1057131}
!127 = !{i64 2148672512}
!128 = !{i64 2148653506}
!129 = !{i64 2158346234}
!130 = !{i64 2158351168}
!131 = !{i64 2158372850}
!132 = !{i64 2158377744}
!133 = !{i64 2157666767}
!134 = !{i64 2157667010}
!135 = !{i64 2149407612}
!136 = !{i64 2149408648}
