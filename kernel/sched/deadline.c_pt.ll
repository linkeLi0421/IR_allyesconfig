; ModuleID = '/llk/IR_all_yes/kernel/sched/deadline.c_pt.bc'
source_filename = "../kernel/sched/deadline.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dl_bandwidth = type { %struct.raw_spinlock, i64, i64 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.sched_class = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rq = type { %struct.raw_spinlock, i32, i32, i32, [8 x i8], %struct.__call_single_data, i32, %struct.atomic_t, i32, i64, [24 x i8], [2 x %struct.uclamp_rq], i32, [76 x i8], %struct.cfs_rq, %struct.rt_rq, %struct.dl_rq, %struct.list_head, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i64, [88 x i8], i64, i64, i32, %struct.atomic_t, i64, i32, i32, ptr, ptr, i32, i32, ptr, i8, i8, i32, i32, i32, %struct.cpu_stop_work, i32, i32, %struct.list_head, [12 x i8], %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, i64, i64, i32, i64, i64, %struct.rcuwait, i64, i64, i64, i32, i32, %struct.__call_single_data, %struct.hrtimer, i64, %struct.sched_info, i64, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.cpu_stop_work, ptr, ptr, i32, i32, %struct.rb_root, i32, i32, i32, i32, i32, i32, i64, [80 x i8] }
%struct.uclamp_rq = type { i32, [5 x %struct.uclamp_bucket] }
%struct.uclamp_bucket = type { i32 }
%struct.cfs_rq = type { %struct.load_weight, i32, i32, i32, i32, i64, i64, i32, i64, i64, %struct.rb_root_cached, ptr, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg, i64, [120 x i8], %struct.anon.2, i32, i32, i32, i32, i64, ptr, ptr, i32, %struct.list_head, ptr, i32, i32, i64, i64, i64, i64, i32, i32, %struct.list_head, [24 x i8] }
%struct.load_weight = type { i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.anon.2 = type { %struct.raw_spinlock, i32, i32, i32, i32, [68 x i8] }
%struct.rt_rq = type { %struct.rt_prio_array, i32, i32, %struct.anon.94, i32, i32, i32, %struct.plist_head, i32, i32, i64, i64, %struct.raw_spinlock, i32, ptr, ptr }
%struct.rt_prio_array = type { [4 x i32], [100 x %struct.list_head] }
%struct.anon.94 = type { i32, i32 }
%struct.plist_head = type { %struct.list_head }
%struct.dl_rq = type { %struct.rb_root_cached, i32, %struct.anon, i32, i32, %struct.rb_root_cached, i64, i64, i64, i64 }
%struct.anon = type { i64, i64 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.rcuwait = type { ptr }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.cpu_stop_work = type { %struct.list_head, ptr, i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.57 }
%union.anon.57 = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.dl_bw = type { %struct.raw_spinlock, i64, i64 }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.rq_flags = type { i32, %struct.pin_cookie, i32 }
%struct.pin_cookie = type { i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.132, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.97 }
%union.anon.97 = type { %struct.anon.98 }
%struct.anon.98 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.132 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.root_domain = type { %struct.atomic_t, %struct.atomic_t, %struct.callback_head, ptr, ptr, i32, i32, ptr, %struct.atomic_t, %struct.dl_bw, %struct.cpudl, i64, %struct.irq_work, %struct.raw_spinlock, i32, i32, %struct.atomic_t, %struct.atomic_t, ptr, %struct.cpupri, i32, ptr }
%struct.cpudl = type { %struct.raw_spinlock, i32, ptr, ptr }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.cpupri = type { [101 x %struct.cpupri_vec], ptr }
%struct.cpupri_vec = type { %struct.atomic_t, ptr }
%struct.hrtimer_cpu_base = type { %struct.raw_spinlock, i32, i32, i32, i8, i32, i16, i16, i32, i64, ptr, i64, ptr, [8 x %struct.hrtimer_clock_base], [88 x i8] }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount, ptr }
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
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.sched_attr = type { i32, i32, i64, i32, i32, i64, i64, i64, i32, i32 }
%struct.sched_domain = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %union.anon.95, ptr, i32, [0 x i32] }
%union.anon.95 = type { %struct.callback_head }

@init_dl_bandwidth.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&dl_b->dl_runtime_lock\00", [41 x i8] zeroinitializer }, align 32
@init_dl_bw.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&dl_b->lock\00", [20 x i8] zeroinitializer }, align 32
@def_dl_bandwidth = dso_local global { %struct.dl_bandwidth, [32 x i8] } zeroinitializer, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@local_cpu_mask_dl = weak dso_local global ptr null, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@dl_sched_class = dso_local constant %struct.sched_class { i32 0, ptr @enqueue_task_dl, ptr @dequeue_task_dl, ptr @yield_task_dl, ptr null, ptr @check_preempt_curr_dl, ptr @pick_next_task_dl, ptr @put_prev_task_dl, ptr @set_next_task_dl, ptr @balance_dl, ptr @select_task_rq_dl, ptr @pick_task_dl, ptr @migrate_task_rq_dl, ptr @task_woken_dl, ptr @set_cpus_allowed_dl, ptr @rq_online_dl, ptr @rq_offline_dl, ptr @find_lock_later_rq, ptr @task_tick_dl, ptr @task_fork_dl, ptr null, ptr @switched_from_dl, ptr @switched_to_dl, ptr @prio_changed_dl, ptr null, ptr @update_curr_dl, ptr null }, section "__dl_sched_class", align 4
@dl_generation = internal global { i64, [24 x i8] } zeroinitializer, align 32
@runqueues = external dso_local global %struct.rq, section ".data..percpu..shared_aligned", align 128
@sysctl_sched_dl_period_max = dso_local global { i32, [28 x i8] } { i32 4194304, [28 x i8] zeroinitializer }, align 32
@sysctl_sched_dl_period_min = dso_local global { i32, [28 x i8] } { i32 100, [28 x i8] zeroinitializer }, align 32
@__cpu_active_mask = external dso_local global %struct.cpumask, align 4
@__pcpu_unique_dl_push_head = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@dl_push_head = weak dso_local global %struct.callback_head zeroinitializer, section ".data..percpu", align 4
@__pcpu_unique_dl_pull_head = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@dl_pull_head = weak dso_local global %struct.callback_head zeroinitializer, section ".data..percpu", align 4
@__pcpu_unique_local_cpu_mask_dl = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@sysctl_sched_rt_runtime = external dso_local local_unnamed_addr global i32, align 4
@sysctl_sched_rt_period = external dso_local local_unnamed_addr global i32, align 4
@replenish_dl_entity.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@replenish_dl_entity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"sched: DL replenish lagged too much\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"replenish_dl_entity\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"kernel/sched/deadline.c\00", [40 x i8] zeroinitializer }, align 32
@replenish_dl_entity._entry_ptr = internal global ptr @replenish_dl_entity._entry, section ".printk_index", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kernel/sched/sched.h\00", [43 x i8] zeroinitializer }, align 32
@assert_clock_updated.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"rq->clock_update_flags < RQCF_ACT_SKIP\00", [57 x i8] zeroinitializer }, align 32
@double_lock_balance.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@__sub_running_bw.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dl_rq->running_bw > old\00", [40 x i8] zeroinitializer }, align 32
@cpufreq_update_util_data = external dso_local global ptr, section ".data..percpu", align 4
@cpufreq_update_util.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__sub_rq_bw.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dl_rq->this_bw > old\00", [43 x i8] zeroinitializer }, align 32
@__sub_rq_bw.__already_done.10 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"dl_rq->running_bw > dl_rq->this_bw\00", [61 x i8] zeroinitializer }, align 32
@__add_rq_bw.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dl_rq->this_bw < old\00", [43 x i8] zeroinitializer }, align 32
@__add_running_bw.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dl_rq->running_bw < old\00", [40 x i8] zeroinitializer }, align 32
@__add_running_bw.__already_done.14 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__dl_update.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sched RCU must be held\00", [41 x i8] zeroinitializer }, align 32
@sched_schedstats = external dso_local global %struct.static_key_false, align 4
@check_schedstat_required.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@check_schedstat_required._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.18, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [154 x i8], [38 x i8] } { [154 x i8] c"Scheduler tracepoints stat_sleep, stat_iowait, stat_blocked and stat_runtime require the kernel parameter schedstats=enable or kernel.sched_schedstats=1\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"check_schedstat_required\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kernel/sched/stats.h\00", [43 x i8] zeroinitializer }, align 32
@check_schedstat_required._entry_ptr = internal global ptr @check_schedstat_required._entry, section ".printk_index", align 4
@__tracepoint_sched_stat_wait = external dso_local global %struct.tracepoint, align 4
@__tracepoint_sched_stat_sleep = external dso_local global %struct.tracepoint, align 4
@__tracepoint_sched_stat_iowait = external dso_local global %struct.tracepoint, align 4
@__tracepoint_sched_stat_blocked = external dso_local global %struct.tracepoint, align 4
@__tracepoint_sched_stat_runtime = external dso_local global %struct.tracepoint, align 4
@__tracepoint_sched_update_nr_running_tp = external dso_local global %struct.tracepoint, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@sched_feat_keys = external dso_local global [25 x %struct.static_key], align 4
@balance_push_callback = external dso_local global %struct.callback_head, align 4
@sched_asym_cpucapacity = external dso_local global %struct.static_key_false, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@cpu_scale = external dso_local global i32, section ".data..percpu", align 4
@find_later_rq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@sched_domains_mutex = external dso_local global %struct.mutex, align 4
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/sched.h\00", [35 x i8] zeroinitializer }, align 32
@trace_sched_stat_runtime.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@task_css_set.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cgroup_mutex = external dso_local global %struct.mutex, align 4
@css_set_lock = external dso_local global %struct.spinlock, align 4
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/cgroup.h\00", [41 x i8] zeroinitializer }, align 32
@rcu_sched_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock_sched.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"rcu_read_lock_sched() used illegally while idle\00", [48 x i8] zeroinitializer }, align 32
@dl_bw_of.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dl_bw_cpus.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock_sched.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.26 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"rcu_read_unlock_sched() used illegally while idle\00", [46 x i8] zeroinitializer }, align 32
@__dl_bw_capacity.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 418, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 425, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"def_dl_bandwidth\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 21, i32 21 }
@___asan_gen_.42 = private unnamed_addr constant [14 x i8] c"dl_generation\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 2672, i32 12 }
@___asan_gen_.45 = private unnamed_addr constant [27 x i8] c"sysctl_sched_dl_period_max\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 2862, i32 14 }
@___asan_gen_.48 = private unnamed_addr constant [27 x i8] c"sysctl_sched_dl_period_min\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 2863, i32 14 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 803, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 1309, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 1459, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 175, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 2835, i32 9 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 199, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 202, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 189, i32 2 }
@___asan_gen_.85 = private constant [27 x i8] c"../kernel/sched/deadline.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 162, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [24 x i8] c"../kernel/sched/sched.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 2757, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [24 x i8] c"../kernel/sched/stats.h\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 65, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 108, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 695, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 723, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [32 x i8] c"../include/trace/events/sched.h\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 517, i32 1 }
@___asan_gen_.118 = private unnamed_addr constant [26 x i8] c"../include/linux/cgroup.h\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 481, i32 9 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 787, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 805, i32 2 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @check_schedstat_required._entry, ptr @check_schedstat_required._entry_ptr, ptr @replenish_dl_entity._entry, ptr @replenish_dl_entity._entry_ptr, ptr @init_dl_bandwidth.__key, ptr @.str, ptr @init_dl_bw.__key, ptr @.str.1, ptr @def_dl_bandwidth, ptr @dl_generation, ptr @sysctl_sched_dl_period_max, ptr @sysctl_sched_dl_period_min, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_dl_bandwidth.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_dl_bw.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @def_dl_bandwidth to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dl_generation to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_sched_dl_period_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_sched_dl_period_min to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @replenish_dl_entity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_schedstat_required._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 154, i32 192, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @init_dl_bandwidth(ptr noundef %dl_b, i64 noundef %period, i64 noundef %runtime) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__raw_spin_lock_init(ptr noundef %dl_b, ptr noundef nonnull @.str, ptr noundef nonnull @init_dl_bandwidth.__key, i16 noundef signext 2) #15
  %dl_period = getelementptr inbounds %struct.dl_bandwidth, ptr %dl_b, i32 0, i32 2
  %0 = ptrtoint ptr %dl_period to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %period, ptr %dl_period, align 8
  %dl_runtime = getelementptr inbounds %struct.dl_bandwidth, ptr %dl_b, i32 0, i32 1
  %1 = ptrtoint ptr %dl_runtime to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %runtime, ptr %dl_runtime, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @init_dl_bw(ptr noundef %dl_b) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__raw_spin_lock_init(ptr noundef %dl_b, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_dl_bw.__key, i16 noundef signext 2) #15
  tail call void @_raw_spin_lock(ptr noundef nonnull @def_dl_bandwidth) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_rt_runtime to i32))
  %0 = load i32, ptr @sysctl_sched_rt_runtime, align 4
  %cmp.i = icmp slt i32 %0, 0
  br i1 %cmp.i, label %if.end, label %if.else

if.else:                                          ; preds = %entry
  %conv.i14 = zext i32 %0 to i64
  %mul.i = mul nuw nsw i64 %conv.i14, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_rt_period to i32))
  %1 = load i32, ptr @sysctl_sched_rt_period, align 4
  %conv.i8 = zext i32 %1 to i64
  %mul.i9 = mul nuw nsw i64 %conv.i8, 1000
  %call3 = tail call i32 @to_ratio(i64 noundef %mul.i9, i64 noundef %mul.i) #15
  %conv = zext i32 %call3 to i64
  br label %if.end

if.end:                                           ; preds = %if.else, %entry
  %conv.sink = phi i64 [ %conv, %if.else ], [ -1, %entry ]
  %2 = getelementptr inbounds %struct.dl_bw, ptr %dl_b, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv.sink, ptr %2, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @def_dl_bandwidth) #15
  %total_bw = getelementptr inbounds %struct.dl_bw, ptr %dl_b, i32 0, i32 2
  %4 = ptrtoint ptr %total_bw to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %total_bw, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @to_ratio(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @init_dl_rq(ptr nocapture noundef writeonly %dl_rq) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dl_rq to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %dl_rq, align 8
  %.compoundliteral.sroa.2.0.root.sroa_idx = getelementptr inbounds i8, ptr %dl_rq, i32 4
  %1 = ptrtoint ptr %.compoundliteral.sroa.2.0.root.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %.compoundliteral.sroa.2.0.root.sroa_idx, align 4
  %earliest_dl = getelementptr inbounds %struct.dl_rq, ptr %dl_rq, i32 0, i32 2
  %2 = call ptr @memset(ptr %earliest_dl, i32 0, i32 48)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_rt_runtime to i32))
  %3 = load i32, ptr @sysctl_sched_rt_runtime, align 4
  %cmp.i.i = icmp slt i32 %3, 0
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %bw_ratio.i = getelementptr inbounds %struct.dl_rq, ptr %dl_rq, i32 0, i32 9
  %4 = ptrtoint ptr %bw_ratio.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 256, ptr %bw_ratio.i, align 8
  br label %init_dl_rq_bw_ratio.exit

if.else.i:                                        ; preds = %entry
  %conv.i25.i = zext i32 %3 to i64
  %mul.i.i = mul nuw nsw i64 %conv.i25.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_rt_period to i32))
  %5 = load i32, ptr @sysctl_sched_rt_period, align 4
  %conv.i17.i = zext i32 %5 to i64
  %mul.i18.i = mul nuw nsw i64 %conv.i17.i, 1000
  %call3.i = tail call i32 @to_ratio(i64 noundef %mul.i.i, i64 noundef %mul.i18.i) #15
  %shr.i = lshr i32 %call3.i, 12
  %conv.i = zext i32 %shr.i to i64
  %bw_ratio4.i = getelementptr inbounds %struct.dl_rq, ptr %dl_rq, i32 0, i32 9
  %6 = ptrtoint ptr %bw_ratio4.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv.i, ptr %bw_ratio4.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_rt_period to i32))
  %7 = load i32, ptr @sysctl_sched_rt_period, align 4
  %conv.i19.i = zext i32 %7 to i64
  %mul.i20.i = mul nuw nsw i64 %conv.i19.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_rt_runtime to i32))
  %8 = load i32, ptr @sysctl_sched_rt_runtime, align 4
  %cmp.i21.i = icmp slt i32 %8, 0
  %conv.i22.i = sext i32 %8 to i64
  %mul.i23.i = mul nsw i64 %conv.i22.i, 1000
  %retval.0.i24.i = select i1 %cmp.i21.i, i64 -1, i64 %mul.i23.i
  %call7.i = tail call i32 @to_ratio(i64 noundef %mul.i20.i, i64 noundef %retval.0.i24.i) #15
  %conv8.i = zext i32 %call7.i to i64
  br label %init_dl_rq_bw_ratio.exit

init_dl_rq_bw_ratio.exit:                         ; preds = %if.else.i, %if.then.i
  %conv8.sink.i = phi i64 [ 1048576, %if.then.i ], [ %conv8.i, %if.else.i ]
  %9 = getelementptr inbounds %struct.dl_rq, ptr %dl_rq, i32 0, i32 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv8.sink.i, ptr %9, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @init_dl_task_timer(ptr noundef %dl_se) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %dl_timer = getelementptr inbounds %struct.sched_dl_entity, ptr %dl_se, i32 0, i32 10
  tail call void @hrtimer_init(ptr noundef %dl_timer, i32 noundef 1, i32 noundef 9) #15
  %function = getelementptr inbounds %struct.sched_dl_entity, ptr %dl_se, i32 0, i32 10, i32 2
  %0 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @dl_task_timer, ptr %function, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dl_task_timer(ptr noundef %timer) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %rf = alloca %struct.rq_flags, align 4
  %add.ptr = getelementptr i8, ptr %timer, i32 -80
  %add.ptr.i = getelementptr i8, ptr %timer, i32 -504
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rf) #15
  %0 = ptrtoint ptr %rf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rf, align 4, !annotation !110
  %1 = getelementptr inbounds %struct.rq_flags, ptr %rf, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !110
  %3 = getelementptr inbounds %struct.rq_flags, ptr %rf, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !110
  %call1 = call ptr @task_rq_lock(ptr noundef %add.ptr.i, ptr noundef nonnull %rf) #15
  %prio.i = getelementptr i8, ptr %timer, i32 -448
  %5 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %prio.i, align 8
  %tobool.not = icmp sgt i32 %6, -1
  br i1 %tobool.not, label %unlock, label %if.end

if.end:                                           ; preds = %entry
  %pi_se.i.i = getelementptr i8, ptr %timer, i32 96
  %7 = ptrtoint ptr %pi_se.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pi_se.i.i, align 8
  %cmp.i.not = icmp eq ptr %8, %add.ptr
  br i1 %cmp.i.not, label %if.end5, label %unlock

if.end5:                                          ; preds = %if.end
  %dl_throttled = getelementptr i8, ptr %timer, i32 -4
  %9 = ptrtoint ptr %dl_throttled to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %dl_throttled, align 4
  %tobool6.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool6.not, label %unlock, label %if.end8

if.end8:                                          ; preds = %if.end5
  call void @update_rq_clock(ptr noundef %call1) #15
  %on_rq.i = getelementptr i8, ptr %timer, i32 -452
  %10 = ptrtoint ptr %on_rq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %on_rq.i, align 4
  %cmp.i60.not = icmp eq i32 %11, 1
  br i1 %cmp.i60.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end8
  call fastcc void @replenish_dl_entity(ptr noundef %add.ptr)
  br label %unlock

if.end12:                                         ; preds = %if.end8
  %online = getelementptr inbounds %struct.rq, ptr %call1, i32 0, i32 47
  %12 = ptrtoint ptr %online to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %online, align 8
  %tobool13.not = icmp eq i32 %13, 0
  br i1 %tobool13.not, label %if.then17, label %if.end26, !prof !111

if.then17:                                        ; preds = %if.end12
  %core_enabled.i = getelementptr inbounds %struct.rq, ptr %call1, i32 0, i32 81
  %14 = ptrtoint ptr %core_enabled.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %core_enabled.i, align 128
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %__rq_lockp.exit, label %if.then.i

if.then.i:                                        ; preds = %if.then17
  %core.i = getelementptr inbounds %struct.rq, ptr %call1, i32 0, i32 79
  %16 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %core.i, align 8
  br label %__rq_lockp.exit

__rq_lockp.exit:                                  ; preds = %if.then.i, %if.then17
  %retval.0.i = phi ptr [ %17, %if.then.i ], [ %call1, %if.then17 ]
  %dep_map = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i, i32 0, i32 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.fca.0.load = load i32, ptr %1, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  call void @lock_unpin_lock(ptr noundef %dep_map, [1 x i32] %.fca.0.insert) #15
  %call19 = call fastcc ptr @dl_task_offline_migration(ptr noundef %call1, ptr noundef %add.ptr.i)
  %core_enabled.i61 = getelementptr inbounds %struct.rq, ptr %call19, i32 0, i32 81
  %19 = ptrtoint ptr %core_enabled.i61 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %core_enabled.i61, align 128
  %tobool.not.i62 = icmp eq i32 %20, 0
  br i1 %tobool.not.i62, label %__rq_lockp.exit66, label %if.then.i64

if.then.i64:                                      ; preds = %__rq_lockp.exit
  %core.i63 = getelementptr inbounds %struct.rq, ptr %call19, i32 0, i32 79
  %21 = ptrtoint ptr %core.i63 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %core.i63, align 8
  br label %__rq_lockp.exit66

__rq_lockp.exit66:                                ; preds = %if.then.i64, %__rq_lockp.exit
  %retval.0.i65 = phi ptr [ %22, %if.then.i64 ], [ %call19, %__rq_lockp.exit ]
  %dep_map23 = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i65, i32 0, i32 4
  %call24 = call i32 @lock_pin_lock(ptr noundef %dep_map23) #15
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call24, ptr %1, align 4
  call void @update_rq_clock(ptr noundef %call19) #15
  br label %if.end26

if.end26:                                         ; preds = %__rq_lockp.exit66, %if.end12
  %rq.0 = phi ptr [ %call19, %__rq_lockp.exit66 ], [ %call1, %if.end12 ]
  call void @enqueue_task_dl(ptr noundef %rq.0, ptr noundef %add.ptr.i, i32 noundef 32)
  %curr = getelementptr inbounds %struct.rq, ptr %rq.0, i32 0, i32 20
  %24 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %curr, align 8
  %prio.i67 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 13
  %26 = ptrtoint ptr %prio.i67 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %prio.i67, align 8
  %tobool28.not = icmp sgt i32 %27, -1
  br i1 %tobool28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.end26
  call void @check_preempt_curr_dl(ptr noundef %rq.0, ptr noundef %add.ptr.i, i32 noundef 0)
  br label %if.end30

if.else:                                          ; preds = %if.end26
  call void @resched_curr(ptr noundef %rq.0) #15
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then29
  %pushable_dl_tasks_root.i = getelementptr inbounds %struct.rq, ptr %rq.0, i32 0, i32 16, i32 5
  %28 = ptrtoint ptr %pushable_dl_tasks_root.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %pushable_dl_tasks_root.i, align 8
  %cmp.i69.not = icmp eq ptr %29, null
  br i1 %cmp.i69.not, label %unlock, label %if.then33

if.then33:                                        ; preds = %if.end30
  %clock_update_flags.i = getelementptr inbounds %struct.rq, ptr %rq.0, i32 0, i32 25
  %30 = ptrtoint ptr %clock_update_flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %clock_update_flags.i, align 4
  %cmp.i70 = icmp ugt i32 %31, 2
  br i1 %cmp.i70, label %if.then.i71, label %if.end.i

if.then.i71:                                      ; preds = %if.then33
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4, ptr %3, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i71, %if.then33
  %core_enabled.i.i = getelementptr inbounds %struct.rq, ptr %rq.0, i32 0, i32 81
  %33 = ptrtoint ptr %core_enabled.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %core_enabled.i.i, align 128
  %tobool.not.i.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i.i, label %rq_unpin_lock.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %core.i.i = getelementptr inbounds %struct.rq, ptr %rq.0, i32 0, i32 79
  %35 = ptrtoint ptr %core.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %core.i.i, align 8
  br label %rq_unpin_lock.exit

rq_unpin_lock.exit:                               ; preds = %if.then.i.i, %if.end.i
  %retval.0.i.i = phi ptr [ %36, %if.then.i.i ], [ %rq.0, %if.end.i ]
  %dep_map.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i, i32 0, i32 4
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.unpack.i = load i32, ptr %1, align 4
  %38 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  call void @lock_unpin_lock(ptr noundef %dep_map.i, [1 x i32] %38) #15
  %call34 = call fastcc i32 @push_dl_task(ptr noundef %rq.0)
  %39 = ptrtoint ptr %core_enabled.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %core_enabled.i.i, align 128
  %tobool.not.i.i73 = icmp eq i32 %40, 0
  br i1 %tobool.not.i.i73, label %rq_repin_lock.exit, label %if.then.i.i75

if.then.i.i75:                                    ; preds = %rq_unpin_lock.exit
  %core.i.i74 = getelementptr inbounds %struct.rq, ptr %rq.0, i32 0, i32 79
  %41 = ptrtoint ptr %core.i.i74 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %core.i.i74, align 8
  br label %rq_repin_lock.exit

rq_repin_lock.exit:                               ; preds = %if.then.i.i75, %rq_unpin_lock.exit
  %retval.0.i.i76 = phi ptr [ %42, %if.then.i.i75 ], [ %rq.0, %rq_unpin_lock.exit ]
  %dep_map.i77 = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i76, i32 0, i32 4
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %.unpack.i79 = load i32, ptr %1, align 4
  %44 = insertvalue [1 x i32] undef, i32 %.unpack.i79, 0
  call void @lock_repin_lock(ptr noundef %dep_map.i77, [1 x i32] %44) #15
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %3, align 4
  %47 = ptrtoint ptr %clock_update_flags.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %clock_update_flags.i, align 4
  %or.i = or i32 %48, %46
  store i32 %or.i, ptr %clock_update_flags.i, align 4
  br label %unlock

unlock:                                           ; preds = %rq_repin_lock.exit, %if.end30, %if.then11, %if.end5, %if.end, %entry
  %rq.1 = phi ptr [ %call1, %if.end ], [ %rq.0, %rq_repin_lock.exit ], [ %rq.0, %if.end30 ], [ %call1, %if.then11 ], [ %call1, %if.end5 ], [ %call1, %entry ]
  %clock_update_flags.i.i = getelementptr inbounds %struct.rq, ptr %rq.1, i32 0, i32 25
  %49 = ptrtoint ptr %clock_update_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %clock_update_flags.i.i, align 4
  %cmp.i.i = icmp ugt i32 %50, 2
  br i1 %cmp.i.i, label %if.then.i.i82, label %if.end.i.i

if.then.i.i82:                                    ; preds = %unlock
  %51 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 4, ptr %3, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i82, %unlock
  %core_enabled.i.i.i = getelementptr inbounds %struct.rq, ptr %rq.1, i32 0, i32 81
  %52 = ptrtoint ptr %core_enabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %core_enabled.i.i.i, align 128
  %tobool.not.i.i.i = icmp eq i32 %53, 0
  br i1 %tobool.not.i.i.i, label %task_rq_unlock.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  %core.i.i.i = getelementptr inbounds %struct.rq, ptr %rq.1, i32 0, i32 79
  %54 = ptrtoint ptr %core.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %core.i.i.i, align 8
  br label %task_rq_unlock.exit

task_rq_unlock.exit:                              ; preds = %if.then.i.i.i, %if.end.i.i
  %retval.0.i.i.i = phi ptr [ %55, %if.then.i.i.i ], [ %rq.1, %if.end.i.i ]
  %dep_map.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i, i32 0, i32 4
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %.unpack.i.i = load i32, ptr %1, align 4
  %57 = insertvalue [1 x i32] undef, i32 %.unpack.i.i, 0
  call void @lock_unpin_lock(ptr noundef %dep_map.i.i, [1 x i32] %57) #15
  call void @raw_spin_rq_unlock(ptr noundef %rq.1) #15
  %pi_lock.i = getelementptr i8, ptr %timer, i32 1324
  %58 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rf, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pi_lock.i, i32 noundef %59) #15
  %usage.i = getelementptr i8, ptr %timer, i32 -496
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !112
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %60 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !113
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %60, 0
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i83, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %task_rq_unlock.exit
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %put_task_struct.exit, label %if.then10.i.i.i.i, !prof !114

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %put_task_struct.exit

if.then.i83:                                      ; preds = %task_rq_unlock.exit
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !115
  call void @__put_task_struct(ptr noundef %add.ptr.i) #15
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i83, %if.then10.i.i.i.i, %if.end5.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rf) #15
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @init_dl_inactive_task_timer(ptr noundef %dl_se) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %inactive_timer = getelementptr inbounds %struct.sched_dl_entity, ptr %dl_se, i32 0, i32 11
  tail call void @hrtimer_init(ptr noundef %inactive_timer, i32 noundef 1, i32 noundef 9) #15
  %function = getelementptr inbounds %struct.sched_dl_entity, ptr %dl_se, i32 0, i32 11, i32 2
  %0 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @inactive_task_timer, ptr %function, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inactive_task_timer(ptr noundef %timer) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %rf = alloca %struct.rq_flags, align 4
  %add.ptr.i = getelementptr i8, ptr %timer, i32 -552
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rf) #15
  %0 = ptrtoint ptr %rf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rf, align 4, !annotation !110
  %1 = getelementptr inbounds %struct.rq_flags, ptr %rf, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !110
  %3 = getelementptr inbounds %struct.rq_flags, ptr %rf, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !110
  %call1 = call ptr @task_rq_lock(ptr noundef %add.ptr.i, ptr noundef nonnull %rf) #15
  call void @update_rq_clock(ptr noundef %call1) #15
  %prio.i = getelementptr i8, ptr %timer, i32 -496
  %5 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %prio.i, align 8
  %tobool.not = icmp sgt i32 %6, -1
  br i1 %tobool.not, label %if.then, label %do.end

do.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %add.ptr.i, align 128
  %cmp = icmp eq i32 %8, 128
  br i1 %cmp, label %if.then, label %if.end26

if.then:                                          ; preds = %do.end, %entry
  %stack.i = getelementptr i8, ptr %timer, i32 -548
  %9 = ptrtoint ptr %stack.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stack.i, align 4
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %cpu.i, align 4
  %call.i = call i32 @rcu_read_lock_sched_held() #15
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %dl_bw_of.exit

land.lhs.true.i:                                  ; preds = %if.then
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #15
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %dl_bw_of.exit, label %land.lhs.true3.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b8.i = load i1, ptr @dl_bw_of.__warned, align 1
  br i1 %.b8.i, label %dl_bw_of.exit, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  store i1 true, ptr @dl_bw_of.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 72, ptr noundef nonnull @.str.15) #15
  br label %dl_bw_of.exit

dl_bw_of.exit:                                    ; preds = %if.then.i, %land.lhs.true3.i, %land.lhs.true.i, %if.then
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %14, ptrtoint (ptr @runqueues to i32)
  %15 = inttoptr i32 %add.i to ptr
  %rd.i = getelementptr inbounds %struct.rq, ptr %15, i32 0, i32 35
  %16 = ptrtoint ptr %rd.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rd.i, align 8
  %dl_bw.i = getelementptr inbounds %struct.root_domain, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %add.ptr.i, align 128
  %cmp11 = icmp eq i32 %19, 128
  br i1 %cmp11, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %dl_bw_of.exit
  %dl_non_contending = getelementptr i8, ptr %timer, i32 -52
  %20 = ptrtoint ptr %dl_non_contending to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %dl_non_contending, align 4
  %21 = and i8 %bf.load, 32
  %tobool12.not = icmp eq i8 %21, 0
  br i1 %tobool12.not, label %if.end, label %if.then13

if.then13:                                        ; preds = %land.lhs.true
  %22 = ptrtoint ptr %stack.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stack.i, align 4
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %cpu.i.i, align 4
  %arrayidx.i65 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx.i65 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i65, align 4
  %add.i66 = add i32 %27, ptrtoint (ptr @runqueues to i32)
  %28 = inttoptr i32 %add.i66 to ptr
  %flags.i.i = getelementptr i8, ptr %timer, i32 -56
  %29 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %30, 268435456
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then.i68, label %sub_running_bw.exit

if.then.i68:                                      ; preds = %if.then13
  %dl_bw.i67 = getelementptr i8, ptr %timer, i32 -88
  %31 = ptrtoint ptr %dl_bw.i67 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %dl_bw.i67, align 8
  %running_bw.i.i = getelementptr inbounds %struct.rq, ptr %28, i32 0, i32 16, i32 6
  %33 = ptrtoint ptr %running_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %running_bw.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %35 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i.i.i, label %lockdep_assert_rq_held.exit.i.i, label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.then.i68
  %core_enabled.i.i.i.i = getelementptr %struct.rq, ptr %28, i32 0, i32 81
  %36 = ptrtoint ptr %core_enabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %core_enabled.i.i.i.i, align 128
  %tobool.not.i.i.i.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i.i.i.i, label %__rq_lockp.exit.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i
  %core.i.i.i.i = getelementptr %struct.rq, ptr %28, i32 0, i32 79
  %38 = ptrtoint ptr %core.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %core.i.i.i.i, align 8
  br label %__rq_lockp.exit.i.i.i

__rq_lockp.exit.i.i.i:                            ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %39, %if.then.i.i.i.i ], [ %28, %land.rhs.i.i.i ]
  %dep_map.i.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i.i, i32 0, i32 4
  %call.i.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #15
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %do.end.i.i.i, label %lockdep_assert_rq_held.exit.i.i, !prof !111

do.end.i.i.i:                                     ; preds = %__rq_lockp.exit.i.i.i
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i.i

lockdep_assert_rq_held.exit.i.i:                  ; preds = %do.end.i.i.i, %__rq_lockp.exit.i.i.i, %if.then.i68
  %40 = ptrtoint ptr %running_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %running_bw.i.i, align 8
  %sub.i.i = sub i64 %41, %32
  store i64 %sub.i.i, ptr %running_bw.i.i, align 8
  %cmp.i.i = icmp ugt i64 %sub.i.i, %34
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end29.i.i

land.rhs.i.i:                                     ; preds = %lockdep_assert_rq_held.exit.i.i
  %.b52.i.i = load i1, ptr @__sub_running_bw.__already_done, align 1
  br i1 %.b52.i.i, label %if.end29.i.i, label %if.then.i.i, !prof !114

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @__sub_running_bw.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 175, i32 noundef 9, ptr noundef nonnull @.str.7) #15
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then.i.i, %land.rhs.i.i, %lockdep_assert_rq_held.exit.i.i
  %42 = ptrtoint ptr %running_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %running_bw.i.i, align 8
  %cmp38.i.i = icmp ugt i64 %43, %34
  br i1 %cmp38.i.i, label %if.then39.i.i, label %__sub_running_bw.exit.i

if.then39.i.i:                                    ; preds = %if.end29.i.i
  %44 = ptrtoint ptr %running_bw.i.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 0, ptr %running_bw.i.i, align 8
  br label %__sub_running_bw.exit.i

__sub_running_bw.exit.i:                          ; preds = %if.then39.i.i, %if.end29.i.i
  call fastcc void @cpufreq_update_util(ptr noundef %28) #15
  br label %sub_running_bw.exit

sub_running_bw.exit:                              ; preds = %__sub_running_bw.exit.i, %if.then13
  %45 = ptrtoint ptr %stack.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %stack.i, align 4
  %cpu.i.i70 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %cpu.i.i70 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %cpu.i.i70, align 4
  %arrayidx.i71 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx.i71 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i71, align 4
  %add.i72 = add i32 %50, ptrtoint (ptr @runqueues to i32)
  %51 = inttoptr i32 %add.i72 to ptr
  %52 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags.i.i, align 8
  %and.i.i75 = and i32 %53, 268435456
  %tobool.i.not.i76 = icmp eq i32 %and.i.i75, 0
  br i1 %tobool.i.not.i76, label %if.then.i79, label %sub_rq_bw.exit

if.then.i79:                                      ; preds = %sub_running_bw.exit
  %dl_bw.i77 = getelementptr i8, ptr %timer, i32 -88
  %54 = ptrtoint ptr %dl_bw.i77 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %dl_bw.i77, align 8
  %this_bw.i.i = getelementptr inbounds %struct.rq, ptr %51, i32 0, i32 16, i32 7
  %56 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %this_bw.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %58 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i.i78 = icmp eq i32 %58, 0
  br i1 %tobool.not.i.i.i78, label %lockdep_assert_rq_held.exit.i.i94, label %land.rhs.i.i.i83

land.rhs.i.i.i83:                                 ; preds = %if.then.i79
  %core_enabled.i.i.i.i81 = getelementptr %struct.rq, ptr %51, i32 0, i32 81
  %59 = ptrtoint ptr %core_enabled.i.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %core_enabled.i.i.i.i81, align 128
  %tobool.not.i.i.i.i82 = icmp eq i32 %60, 0
  br i1 %tobool.not.i.i.i.i82, label %__rq_lockp.exit.i.i.i90, label %if.then.i.i.i.i85

if.then.i.i.i.i85:                                ; preds = %land.rhs.i.i.i83
  %core.i.i.i.i84 = getelementptr %struct.rq, ptr %51, i32 0, i32 79
  %61 = ptrtoint ptr %core.i.i.i.i84 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %core.i.i.i.i84, align 8
  br label %__rq_lockp.exit.i.i.i90

__rq_lockp.exit.i.i.i90:                          ; preds = %if.then.i.i.i.i85, %land.rhs.i.i.i83
  %retval.0.i.i.i.i86 = phi ptr [ %62, %if.then.i.i.i.i85 ], [ %51, %land.rhs.i.i.i83 ]
  %dep_map.i.i.i87 = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i.i86, i32 0, i32 4
  %call.i.i.i.i88 = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i87, i32 noundef -1) #15
  %cmp.not.i.i.i89 = icmp eq i32 %call.i.i.i.i88, 0
  br i1 %cmp.not.i.i.i89, label %do.end.i.i.i91, label %lockdep_assert_rq_held.exit.i.i94, !prof !111

do.end.i.i.i91:                                   ; preds = %__rq_lockp.exit.i.i.i90
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i.i94

lockdep_assert_rq_held.exit.i.i94:                ; preds = %do.end.i.i.i91, %__rq_lockp.exit.i.i.i90, %if.then.i79
  %63 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %this_bw.i.i, align 8
  %sub.i.i92 = sub i64 %64, %55
  store i64 %sub.i.i92, ptr %this_bw.i.i, align 8
  %cmp.i.i93 = icmp ugt i64 %sub.i.i92, %57
  br i1 %cmp.i.i93, label %land.rhs.i.i95, label %if.end29.i.i98

land.rhs.i.i95:                                   ; preds = %lockdep_assert_rq_held.exit.i.i94
  %.b111.i.i = load i1, ptr @__sub_rq_bw.__already_done, align 1
  br i1 %.b111.i.i, label %if.end29.i.i98, label %if.then.i.i96, !prof !114

if.then.i.i96:                                    ; preds = %land.rhs.i.i95
  store i1 true, ptr @__sub_rq_bw.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 199, i32 noundef 9, ptr noundef nonnull @.str.9) #15
  br label %if.end29.i.i98

if.end29.i.i98:                                   ; preds = %if.then.i.i96, %land.rhs.i.i95, %lockdep_assert_rq_held.exit.i.i94
  %65 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %this_bw.i.i, align 8
  %cmp38.i.i97 = icmp ugt i64 %66, %57
  br i1 %cmp38.i.i97, label %if.then39.i.i99, label %if.end41.i.i

if.then39.i.i99:                                  ; preds = %if.end29.i.i98
  %67 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 0, ptr %this_bw.i.i, align 8
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %if.then39.i.i99, %if.end29.i.i98
  %running_bw.i.i100 = getelementptr inbounds %struct.rq, ptr %51, i32 0, i32 16, i32 6
  %68 = ptrtoint ptr %running_bw.i.i100 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %running_bw.i.i100, align 8
  %70 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %this_bw.i.i, align 8
  %cmp44.i.i = icmp ugt i64 %69, %71
  br i1 %cmp44.i.i, label %land.rhs51.i.i, label %sub_rq_bw.exit

land.rhs51.i.i:                                   ; preds = %if.end41.i.i
  %.b109110.i.i = load i1, ptr @__sub_rq_bw.__already_done.10, align 1
  br i1 %.b109110.i.i, label %sub_rq_bw.exit, label %if.then62.i.i, !prof !114

if.then62.i.i:                                    ; preds = %land.rhs51.i.i
  store i1 true, ptr @__sub_rq_bw.__already_done.10, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 202, i32 noundef 9, ptr noundef nonnull @.str.11) #15
  br label %sub_rq_bw.exit

sub_rq_bw.exit:                                   ; preds = %if.then62.i.i, %land.rhs51.i.i, %if.end41.i.i, %sub_running_bw.exit
  %72 = ptrtoint ptr %dl_non_contending to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load20 = load i8, ptr %dl_non_contending, align 4
  %bf.clear21 = and i8 %bf.load20, -33
  store i8 %bf.clear21, ptr %dl_non_contending, align 4
  br label %if.end

if.end:                                           ; preds = %sub_rq_bw.exit, %land.lhs.true, %dl_bw_of.exit
  call void @_raw_spin_lock(ptr noundef %dl_bw.i) #15
  %dl_bw = getelementptr i8, ptr %timer, i32 -88
  %73 = ptrtoint ptr %dl_bw to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %dl_bw, align 8
  %75 = ptrtoint ptr %stack.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %stack.i, align 4
  %cpu.i102 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %cpu.i102 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %cpu.i102, align 4
  %arrayidx.i103 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %78
  %79 = ptrtoint ptr %arrayidx.i103 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i103, align 4
  %add.i104 = add i32 %80, ptrtoint (ptr @runqueues to i32)
  %81 = inttoptr i32 %add.i104 to ptr
  %rd2.i = getelementptr inbounds %struct.rq, ptr %81, i32 0, i32 35
  %82 = ptrtoint ptr %rd2.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rd2.i, align 8
  %call.i105 = call i32 @rcu_read_lock_sched_held() #15
  %tobool.not.i106 = icmp eq i32 %call.i105, 0
  br i1 %tobool.not.i106, label %land.lhs.true.i107, label %do.end9.i

land.lhs.true.i107:                               ; preds = %if.end
  %call4.i = call i32 @debug_lockdep_rcu_enabled() #15
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %do.end9.i, label %land.lhs.true6.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i107
  %.b24.i = load i1, ptr @dl_bw_cpus.__warned, align 1
  br i1 %.b24.i, label %do.end9.i, label %if.then.i108

if.then.i108:                                     ; preds = %land.lhs.true6.i
  store i1 true, ptr @dl_bw_cpus.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 82, ptr noundef nonnull @.str.15) #15
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then.i108, %land.lhs.true6.i, %land.lhs.true.i107, %if.end
  %span.i = getelementptr inbounds %struct.root_domain, ptr %83, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %84 = load i32, ptr @nr_cpu_ids, align 4
  %85 = ptrtoint ptr %span.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %span.i, align 8
  %call.i.i.i = call i32 @__bitmap_subset(ptr noundef %86, ptr noundef nonnull @__cpu_active_mask, i32 noundef %84) #15
  %tobool11.not.i = icmp eq i32 %call.i.i.i, 0
  %87 = ptrtoint ptr %span.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %span.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %89 = load i32, ptr @nr_cpu_ids, align 4
  br i1 %tobool11.not.i, label %for.cond.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end9.i
  %call4.i.i.i = call i32 @__bitmap_weight(ptr noundef %88, i32 noundef %89) #15
  br label %dl_bw_cpus.exit

for.cond.i:                                       ; preds = %for.cond.i, %do.end9.i
  %i.addr.0.i = phi i32 [ %call17.i, %for.cond.i ], [ -1, %do.end9.i ]
  %cpus.0.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %do.end9.i ]
  %call17.i = call i32 @cpumask_next_and(i32 noundef %i.addr.0.i, ptr noundef %88, ptr noundef nonnull @__cpu_active_mask) #17
  %cmp.i = icmp ult i32 %call17.i, %89
  %inc.i = add i32 %cpus.0.i, 1
  br i1 %cmp.i, label %for.cond.i, label %dl_bw_cpus.exit

dl_bw_cpus.exit:                                  ; preds = %for.cond.i, %if.end.i.i.i
  %retval.0.i = phi i32 [ %call4.i.i.i, %if.end.i.i.i ], [ %cpus.0.i, %for.cond.i ]
  %total_bw.i = getelementptr inbounds %struct.root_domain, ptr %17, i32 0, i32 9, i32 2
  %90 = ptrtoint ptr %total_bw.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %total_bw.i, align 8
  %sub.i = sub i64 %91, %74
  store i64 %sub.i, ptr %total_bw.i, align 8
  %conv.i = trunc i64 %74 to i32
  %div.i = sdiv i32 %conv.i, %retval.0.i
  %conv1.i = sext i32 %div.i to i64
  %call.i.i = call i32 @rcu_read_lock_sched_held() #15
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %dl_bw_cpus.exit
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #15
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %do.end.i.i, label %land.lhs.true3.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b14.i.i = load i1, ptr @__dl_update.__warned, align 1
  br i1 %.b14.i.i, label %do.end.i.i, label %if.then.i.i110

if.then.i.i110:                                   ; preds = %land.lhs.true3.i.i
  store i1 true, ptr @__dl_update.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2758, ptr noundef nonnull @.str.15) #15
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i110, %land.lhs.true3.i.i, %land.lhs.true.i.i, %dl_bw_cpus.exit
  %span.i.i = getelementptr %struct.root_domain, ptr %17, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %92 = load i32, ptr @nr_cpu_ids, align 4
  %93 = ptrtoint ptr %span.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %span.i.i, align 8
  %call515.i.i = call i32 @cpumask_next_and(i32 noundef -1, ptr noundef %94, ptr noundef nonnull @__cpu_active_mask) #17
  %cmp16.i.i = icmp ult i32 %call515.i.i, %92
  br i1 %cmp16.i.i, label %for.body.i.i, label %__dl_sub.exit

for.body.i.i:                                     ; preds = %for.body.i.i, %do.end.i.i
  %call517.i.i = phi i32 [ %call5.i.i, %for.body.i.i ], [ %call515.i.i, %do.end.i.i ]
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call517.i.i
  %95 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %96, ptrtoint (ptr @runqueues to i32)
  %97 = inttoptr i32 %add.i.i to ptr
  %extra_bw.i.i = getelementptr inbounds %struct.rq, ptr %97, i32 0, i32 16, i32 8
  %98 = ptrtoint ptr %extra_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %extra_bw.i.i, align 8
  %add11.i.i = add i64 %99, %conv1.i
  store i64 %add11.i.i, ptr %extra_bw.i.i, align 8
  %100 = ptrtoint ptr %span.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %span.i.i, align 8
  %call5.i.i = call i32 @cpumask_next_and(i32 noundef %call517.i.i, ptr noundef %101, ptr noundef nonnull @__cpu_active_mask) #17
  %cmp.i.i111 = icmp ult i32 %call5.i.i, %92
  br i1 %cmp.i.i111, label %for.body.i.i, label %__dl_sub.exit

__dl_sub.exit:                                    ; preds = %for.body.i.i, %do.end.i.i
  call void @_raw_spin_unlock(ptr noundef %dl_bw.i) #15
  %dl.i112 = getelementptr i8, ptr %timer, i32 -128
  %dl_runtime.i = getelementptr i8, ptr %timer, i32 -112
  %flags.i = getelementptr i8, ptr %timer, i32 -56
  %102 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %flags.i, align 8
  %dl_throttled.i = getelementptr i8, ptr %timer, i32 -52
  %103 = call ptr @memset(ptr %dl_runtime.i, i32 0, i32 40)
  %104 = ptrtoint ptr %dl_throttled.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %bf.load.i = load i8, ptr %dl_throttled.i, align 4
  %bf.clear8.i = and i8 %bf.load.i, 15
  store i8 %bf.clear8.i, ptr %dl_throttled.i, align 4
  %pi_se.i = getelementptr i8, ptr %timer, i32 48
  %105 = ptrtoint ptr %pi_se.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %dl.i112, ptr %pi_se.i, align 8
  br label %unlock

if.end26:                                         ; preds = %do.end
  %dl_non_contending27 = getelementptr i8, ptr %timer, i32 -52
  %106 = ptrtoint ptr %dl_non_contending27 to i32
  call void @__asan_load1_noabort(i32 %106)
  %bf.load28 = load i8, ptr %dl_non_contending27, align 4
  %107 = and i8 %bf.load28, 32
  %cmp32 = icmp eq i8 %107, 0
  br i1 %cmp32, label %unlock, label %if.end34

if.end34:                                         ; preds = %if.end26
  %flags.i.i113 = getelementptr i8, ptr %timer, i32 -56
  %108 = ptrtoint ptr %flags.i.i113 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %flags.i.i113, align 8
  %and.i.i114 = and i32 %109, 268435456
  %tobool.i.not.i115 = icmp eq i32 %and.i.i114, 0
  br i1 %tobool.i.not.i115, label %if.then.i120, label %sub_running_bw.exit142

if.then.i120:                                     ; preds = %if.end34
  %dl_bw.i116 = getelementptr i8, ptr %timer, i32 -88
  %110 = ptrtoint ptr %dl_bw.i116 to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %dl_bw.i116, align 8
  %running_bw.i.i117 = getelementptr inbounds %struct.rq, ptr %call1, i32 0, i32 16, i32 6
  %112 = ptrtoint ptr %running_bw.i.i117 to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %running_bw.i.i117, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %114 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i.i119 = icmp eq i32 %114, 0
  br i1 %tobool.not.i.i.i119, label %lockdep_assert_rq_held.exit.i.i134, label %land.rhs.i.i.i123

land.rhs.i.i.i123:                                ; preds = %if.then.i120
  %core_enabled.i.i.i.i121 = getelementptr %struct.rq, ptr %call1, i32 0, i32 81
  %115 = ptrtoint ptr %core_enabled.i.i.i.i121 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %core_enabled.i.i.i.i121, align 128
  %tobool.not.i.i.i.i122 = icmp eq i32 %116, 0
  br i1 %tobool.not.i.i.i.i122, label %__rq_lockp.exit.i.i.i130, label %if.then.i.i.i.i125

if.then.i.i.i.i125:                               ; preds = %land.rhs.i.i.i123
  %core.i.i.i.i124 = getelementptr %struct.rq, ptr %call1, i32 0, i32 79
  %117 = ptrtoint ptr %core.i.i.i.i124 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %core.i.i.i.i124, align 8
  br label %__rq_lockp.exit.i.i.i130

__rq_lockp.exit.i.i.i130:                         ; preds = %if.then.i.i.i.i125, %land.rhs.i.i.i123
  %retval.0.i.i.i.i126 = phi ptr [ %118, %if.then.i.i.i.i125 ], [ %call1, %land.rhs.i.i.i123 ]
  %dep_map.i.i.i127 = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i.i126, i32 0, i32 4
  %call.i.i.i.i128 = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i127, i32 noundef -1) #15
  %cmp.not.i.i.i129 = icmp eq i32 %call.i.i.i.i128, 0
  br i1 %cmp.not.i.i.i129, label %do.end.i.i.i131, label %lockdep_assert_rq_held.exit.i.i134, !prof !111

do.end.i.i.i131:                                  ; preds = %__rq_lockp.exit.i.i.i130
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i.i134

lockdep_assert_rq_held.exit.i.i134:               ; preds = %do.end.i.i.i131, %__rq_lockp.exit.i.i.i130, %if.then.i120
  %119 = ptrtoint ptr %running_bw.i.i117 to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %running_bw.i.i117, align 8
  %sub.i.i132 = sub i64 %120, %111
  store i64 %sub.i.i132, ptr %running_bw.i.i117, align 8
  %cmp.i.i133 = icmp ugt i64 %sub.i.i132, %113
  br i1 %cmp.i.i133, label %land.rhs.i.i136, label %if.end29.i.i139

land.rhs.i.i136:                                  ; preds = %lockdep_assert_rq_held.exit.i.i134
  %.b52.i.i135 = load i1, ptr @__sub_running_bw.__already_done, align 1
  br i1 %.b52.i.i135, label %if.end29.i.i139, label %if.then.i.i137, !prof !114

if.then.i.i137:                                   ; preds = %land.rhs.i.i136
  store i1 true, ptr @__sub_running_bw.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 175, i32 noundef 9, ptr noundef nonnull @.str.7) #15
  br label %if.end29.i.i139

if.end29.i.i139:                                  ; preds = %if.then.i.i137, %land.rhs.i.i136, %lockdep_assert_rq_held.exit.i.i134
  %121 = ptrtoint ptr %running_bw.i.i117 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %running_bw.i.i117, align 8
  %cmp38.i.i138 = icmp ugt i64 %122, %113
  br i1 %cmp38.i.i138, label %if.then39.i.i140, label %__sub_running_bw.exit.i141

if.then39.i.i140:                                 ; preds = %if.end29.i.i139
  %123 = ptrtoint ptr %running_bw.i.i117 to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 0, ptr %running_bw.i.i117, align 8
  br label %__sub_running_bw.exit.i141

__sub_running_bw.exit.i141:                       ; preds = %if.then39.i.i140, %if.end29.i.i139
  call fastcc void @cpufreq_update_util(ptr noundef %call1) #15
  br label %sub_running_bw.exit142

sub_running_bw.exit142:                           ; preds = %__sub_running_bw.exit.i141, %if.end34
  %124 = ptrtoint ptr %dl_non_contending27 to i32
  call void @__asan_load1_noabort(i32 %124)
  %bf.load37 = load i8, ptr %dl_non_contending27, align 4
  %bf.clear38 = and i8 %bf.load37, -33
  store i8 %bf.clear38, ptr %dl_non_contending27, align 4
  br label %unlock

unlock:                                           ; preds = %sub_running_bw.exit142, %if.end26, %__dl_sub.exit
  %clock_update_flags.i.i = getelementptr inbounds %struct.rq, ptr %call1, i32 0, i32 25
  %125 = ptrtoint ptr %clock_update_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %clock_update_flags.i.i, align 4
  %cmp.i.i143 = icmp ugt i32 %126, 2
  br i1 %cmp.i.i143, label %if.then.i.i144, label %if.end.i.i

if.then.i.i144:                                   ; preds = %unlock
  %127 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 4, ptr %3, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i144, %unlock
  %core_enabled.i.i.i = getelementptr inbounds %struct.rq, ptr %call1, i32 0, i32 81
  %128 = ptrtoint ptr %core_enabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %core_enabled.i.i.i, align 128
  %tobool.not.i.i.i145 = icmp eq i32 %129, 0
  br i1 %tobool.not.i.i.i145, label %task_rq_unlock.exit, label %if.then.i.i.i146

if.then.i.i.i146:                                 ; preds = %if.end.i.i
  %core.i.i.i = getelementptr inbounds %struct.rq, ptr %call1, i32 0, i32 79
  %130 = ptrtoint ptr %core.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %core.i.i.i, align 8
  br label %task_rq_unlock.exit

task_rq_unlock.exit:                              ; preds = %if.then.i.i.i146, %if.end.i.i
  %retval.0.i.i.i147 = phi ptr [ %131, %if.then.i.i.i146 ], [ %call1, %if.end.i.i ]
  %dep_map.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i147, i32 0, i32 4
  %132 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %132)
  %.unpack.i.i = load i32, ptr %1, align 4
  %133 = insertvalue [1 x i32] undef, i32 %.unpack.i.i, 0
  call void @lock_unpin_lock(ptr noundef %dep_map.i.i, [1 x i32] %133) #15
  call void @raw_spin_rq_unlock(ptr noundef %call1) #15
  %pi_lock.i = getelementptr i8, ptr %timer, i32 1276
  %134 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %rf, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pi_lock.i, i32 noundef %135) #15
  %usage.i = getelementptr i8, ptr %timer, i32 -544
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !112
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %136 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !113
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %136, 0
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i148, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %task_rq_unlock.exit
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %put_task_struct.exit, label %if.then10.i.i.i.i, !prof !114

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %put_task_struct.exit

if.then.i148:                                     ; preds = %task_rq_unlock.exit
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !115
  call void @__put_task_struct(ptr noundef %add.ptr.i) #15
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i148, %if.then10.i.i.i.i, %if.end5.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rf) #15
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @init_sched_dl_class() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call6 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
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
  %add = add i32 %2, ptrtoint (ptr @local_cpu_mask_dl to i32)
  %3 = inttoptr i32 %add to ptr
  %call2 = tail call zeroext i1 @zalloc_cpumask_var_node(ptr noundef %3, i32 noundef 3264, i32 noundef 0) #15
  %call = tail call i32 @cpumask_next(i32 noundef %call8, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %4
  br i1 %cmp, label %do.body, label %for.end

for.end:                                          ; preds = %do.body, %entry
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zalloc_cpumask_var_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dl_add_task_root_domain(ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %rf = alloca %struct.rq_flags, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rf) #15
  %0 = getelementptr inbounds %struct.rq_flags, ptr %rf, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4, !annotation !110
  %2 = getelementptr inbounds %struct.rq_flags, ptr %rf, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !110
  %pi_lock = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 128
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pi_lock) #15
  %4 = ptrtoint ptr %rf to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %rf, align 4
  %prio.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 13
  %5 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %prio.i, align 8
  %tobool.not = icmp sgt i32 %6, -1
  br i1 %tobool.not, label %do.body2, label %if.end

do.body2:                                         ; preds = %entry
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pi_lock, i32 noundef %call) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call12 = call ptr @__task_rq_lock(ptr noundef %p, ptr noundef nonnull %rf) #15
  %rd = getelementptr inbounds %struct.rq, ptr %call12, i32 0, i32 35
  %7 = ptrtoint ptr %rd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rd, align 8
  %dl_bw = getelementptr inbounds %struct.root_domain, ptr %8, i32 0, i32 9
  call void @_raw_spin_lock(ptr noundef %dl_bw) #15
  %dl_bw13 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 4
  %9 = ptrtoint ptr %dl_bw13 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %dl_bw13, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %12 = ptrtoint ptr %rd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rd, align 8
  %span = getelementptr inbounds %struct.root_domain, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %span to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %span, align 8
  %call4.i.i = call i32 @__bitmap_weight(ptr noundef %15, i32 noundef %11) #15
  %total_bw.i = getelementptr inbounds %struct.root_domain, ptr %8, i32 0, i32 9, i32 2
  %16 = ptrtoint ptr %total_bw.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %total_bw.i, align 8
  %add.i = add i64 %17, %10
  store i64 %add.i, ptr %total_bw.i, align 8
  %conv.i = trunc i64 %10 to i32
  %div.i = sdiv i32 %conv.i, %call4.i.i
  %sub.i = sub i32 0, %div.i
  %conv1.i = sext i32 %sub.i to i64
  %call.i.i = call i32 @rcu_read_lock_sched_held() #15
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #15
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %do.end.i.i, label %land.lhs.true3.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b14.i.i = load i1, ptr @__dl_update.__warned, align 1
  br i1 %.b14.i.i, label %do.end.i.i, label %if.then.i.i28

if.then.i.i28:                                    ; preds = %land.lhs.true3.i.i
  store i1 true, ptr @__dl_update.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2758, ptr noundef nonnull @.str.15) #15
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i28, %land.lhs.true3.i.i, %land.lhs.true.i.i, %if.end
  %span.i.i = getelementptr %struct.root_domain, ptr %8, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %18 = load i32, ptr @nr_cpu_ids, align 4
  %19 = ptrtoint ptr %span.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %span.i.i, align 8
  %call515.i.i = call i32 @cpumask_next_and(i32 noundef -1, ptr noundef %20, ptr noundef nonnull @__cpu_active_mask) #17
  %cmp16.i.i = icmp ult i32 %call515.i.i, %18
  br i1 %cmp16.i.i, label %for.body.i.i, label %__dl_add.exit

for.body.i.i:                                     ; preds = %for.body.i.i, %do.end.i.i
  %call517.i.i = phi i32 [ %call5.i.i, %for.body.i.i ], [ %call515.i.i, %do.end.i.i ]
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call517.i.i
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %22, ptrtoint (ptr @runqueues to i32)
  %23 = inttoptr i32 %add.i.i to ptr
  %extra_bw.i.i = getelementptr inbounds %struct.rq, ptr %23, i32 0, i32 16, i32 8
  %24 = ptrtoint ptr %extra_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %extra_bw.i.i, align 8
  %add11.i.i = add i64 %25, %conv1.i
  store i64 %add11.i.i, ptr %extra_bw.i.i, align 8
  %26 = ptrtoint ptr %span.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %span.i.i, align 8
  %call5.i.i = call i32 @cpumask_next_and(i32 noundef %call517.i.i, ptr noundef %27, ptr noundef nonnull @__cpu_active_mask) #17
  %cmp.i.i = icmp ult i32 %call5.i.i, %18
  br i1 %cmp.i.i, label %for.body.i.i, label %__dl_add.exit

__dl_add.exit:                                    ; preds = %for.body.i.i, %do.end.i.i
  call void @_raw_spin_unlock(ptr noundef %dl_bw) #15
  %clock_update_flags.i.i = getelementptr inbounds %struct.rq, ptr %call12, i32 0, i32 25
  %28 = ptrtoint ptr %clock_update_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %clock_update_flags.i.i, align 4
  %cmp.i.i29 = icmp ugt i32 %29, 2
  br i1 %cmp.i.i29, label %if.then.i.i30, label %if.end.i.i31

if.then.i.i30:                                    ; preds = %__dl_add.exit
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 4, ptr %2, align 4
  br label %if.end.i.i31

if.end.i.i31:                                     ; preds = %if.then.i.i30, %__dl_add.exit
  %core_enabled.i.i.i = getelementptr inbounds %struct.rq, ptr %call12, i32 0, i32 81
  %31 = ptrtoint ptr %core_enabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %core_enabled.i.i.i, align 128
  %tobool.not.i.i.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i.i.i, label %task_rq_unlock.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i31
  %core.i.i.i = getelementptr inbounds %struct.rq, ptr %call12, i32 0, i32 79
  %33 = ptrtoint ptr %core.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %core.i.i.i, align 8
  br label %task_rq_unlock.exit

task_rq_unlock.exit:                              ; preds = %if.then.i.i.i, %if.end.i.i31
  %retval.0.i.i.i = phi ptr [ %34, %if.then.i.i.i ], [ %call12, %if.end.i.i31 ]
  %dep_map.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i, i32 0, i32 4
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.unpack.i.i = load i32, ptr %0, align 4
  %36 = insertvalue [1 x i32] undef, i32 %.unpack.i.i, 0
  call void @lock_unpin_lock(ptr noundef %dep_map.i.i, [1 x i32] %36) #15
  call void @raw_spin_rq_unlock(ptr noundef %call12) #15
  %37 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rf, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pi_lock, i32 noundef %38) #15
  br label %cleanup

cleanup:                                          ; preds = %task_rq_unlock.exit, %do.body2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rf) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__task_rq_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dl_clear_root_domain(ptr noundef %rd) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %dl_bw = getelementptr inbounds %struct.root_domain, ptr %rd, i32 0, i32 9
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dl_bw) #15
  %total_bw = getelementptr inbounds %struct.root_domain, ptr %rd, i32 0, i32 9, i32 2
  %0 = ptrtoint ptr %total_bw to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %total_bw, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dl_bw, i32 noundef %call) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enqueue_task_dl(ptr noundef %rq, ptr noundef %p, i32 noundef %flags) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %dl = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20
  %pi_se.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 12
  %0 = ptrtoint ptr %pi_se.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pi_se.i.i, align 8
  %cmp.i.not = icmp eq ptr %1, %dl
  br i1 %cmp.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %dl_throttled = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 9
  %2 = ptrtoint ptr %dl_throttled to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %dl_throttled, align 4
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end27, label %if.then2

if.then2:                                         ; preds = %if.then
  %dl_timer = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 10
  %call4 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %dl_timer) #15
  %3 = ptrtoint ptr %dl_throttled to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load7 = load i8, ptr %dl_throttled, align 4
  %bf.clear = and i8 %bf.load7, 127
  store i8 %bf.clear, ptr %dl_throttled, align 4
  br label %if.end27

if.else:                                          ; preds = %entry
  %normal_prio = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 15
  %4 = ptrtoint ptr %normal_prio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %normal_prio, align 64
  %tobool9.not = icmp sgt i32 %5, -1
  br i1 %tobool9.not, label %do.body21, label %if.end27

do.body21:                                        ; preds = %if.else
  %dl_throttled12 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 9
  %6 = ptrtoint ptr %dl_throttled12 to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load13 = load i8, ptr %dl_throttled12, align 4
  %bf.clear14 = and i8 %bf.load13, 127
  store i8 %bf.clear14, ptr %dl_throttled12, align 4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1644, 0\0A.popsection", ""() #15, !srcloc !116
  unreachable

if.end27:                                         ; preds = %if.else, %if.then2, %if.then
  %dl_throttled29 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 9
  %7 = ptrtoint ptr %dl_throttled29 to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load30 = load i8, ptr %dl_throttled29, align 4
  %tobool33.not = icmp sgt i8 %bf.load30, -1
  br i1 %tobool33.not, label %land.lhs.true, label %if.end38

land.lhs.true:                                    ; preds = %if.end27
  %dl_deadline.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 2
  %8 = ptrtoint ptr %dl_deadline.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %dl_deadline.i, align 8
  %dl_period.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 3
  %10 = ptrtoint ptr %dl_period.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %dl_period.i, align 8
  %cmp.i104 = icmp eq i64 %9, %11
  br i1 %cmp.i104, label %if.end38, label %if.then36

if.then36:                                        ; preds = %land.lhs.true
  %stack.i.i.i = getelementptr %struct.task_struct, ptr %p, i32 0, i32 1
  %12 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stack.i.i.i, align 4
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %17, ptrtoint (ptr @runqueues to i32)
  %18 = inttoptr i32 %add.i.i to ptr
  %deadline.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 7
  %19 = ptrtoint ptr %deadline.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %deadline.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %21 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i.i, label %lockdep_assert_rq_held.exit.i.i, label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.then36
  %core_enabled.i.i.i.i = getelementptr inbounds %struct.rq, ptr %18, i32 0, i32 81
  %22 = ptrtoint ptr %core_enabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %core_enabled.i.i.i.i, align 128
  %tobool.not.i.i.i.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i.i.i.i, label %__rq_lockp.exit.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i
  %core.i.i.i.i = getelementptr inbounds %struct.rq, ptr %18, i32 0, i32 79
  %24 = ptrtoint ptr %core.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %core.i.i.i.i, align 8
  br label %__rq_lockp.exit.i.i.i

__rq_lockp.exit.i.i.i:                            ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %25, %if.then.i.i.i.i ], [ %18, %land.rhs.i.i.i ]
  %dep_map.i.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i.i, i32 0, i32 4
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #15
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %do.end.i.i.i, label %lockdep_assert_rq_held.exit.i.i, !prof !111

do.end.i.i.i:                                     ; preds = %__rq_lockp.exit.i.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i.i

lockdep_assert_rq_held.exit.i.i:                  ; preds = %do.end.i.i.i, %__rq_lockp.exit.i.i.i, %if.then36
  %clock_update_flags.i.i.i = getelementptr inbounds %struct.rq, ptr %18, i32 0, i32 25
  %26 = ptrtoint ptr %clock_update_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %clock_update_flags.i.i.i, align 4
  %cmp.i.i.i = icmp ult i32 %27, 2
  br i1 %cmp.i.i.i, label %land.rhs.i3.i.i, label %rq_clock.exit.i

land.rhs.i3.i.i:                                  ; preds = %lockdep_assert_rq_held.exit.i.i
  %.b37.i.i.i = load i1, ptr @assert_clock_updated.__already_done, align 1
  br i1 %.b37.i.i.i, label %rq_clock.exit.i, label %if.then.i.i.i, !prof !114

if.then.i.i.i:                                    ; preds = %land.rhs.i3.i.i
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #15
  br label %rq_clock.exit.i

rq_clock.exit.i:                                  ; preds = %if.then.i.i.i, %land.rhs.i3.i.i, %lockdep_assert_rq_held.exit.i.i
  %clock.i.i = getelementptr inbounds %struct.rq, ptr %18, i32 0, i32 26
  %28 = ptrtoint ptr %clock.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %clock.i.i, align 32
  %sub.i.i = sub i64 %20, %29
  %cmp.i.i = icmp slt i64 %sub.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true.i, label %if.end38

land.lhs.true.i:                                  ; preds = %rq_clock.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %30 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i28.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i.i28.i, label %lockdep_assert_rq_held.exit.i42.i, label %land.rhs.i.i31.i

land.rhs.i.i31.i:                                 ; preds = %land.lhs.true.i
  %core_enabled.i.i.i29.i = getelementptr inbounds %struct.rq, ptr %18, i32 0, i32 81
  %31 = ptrtoint ptr %core_enabled.i.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %core_enabled.i.i.i29.i, align 128
  %tobool.not.i.i.i30.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i.i.i30.i, label %__rq_lockp.exit.i.i38.i, label %if.then.i.i.i33.i

if.then.i.i.i33.i:                                ; preds = %land.rhs.i.i31.i
  %core.i.i.i32.i = getelementptr inbounds %struct.rq, ptr %18, i32 0, i32 79
  %33 = ptrtoint ptr %core.i.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %core.i.i.i32.i, align 8
  br label %__rq_lockp.exit.i.i38.i

__rq_lockp.exit.i.i38.i:                          ; preds = %if.then.i.i.i33.i, %land.rhs.i.i31.i
  %retval.0.i.i.i34.i = phi ptr [ %34, %if.then.i.i.i33.i ], [ %18, %land.rhs.i.i31.i ]
  %dep_map.i.i35.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i34.i, i32 0, i32 4
  %call.i.i.i36.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i35.i, i32 noundef -1) #15
  %cmp.not.i.i37.i = icmp eq i32 %call.i.i.i36.i, 0
  br i1 %cmp.not.i.i37.i, label %do.end.i.i39.i, label %lockdep_assert_rq_held.exit.i42.i, !prof !111

do.end.i.i39.i:                                   ; preds = %__rq_lockp.exit.i.i38.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i42.i

lockdep_assert_rq_held.exit.i42.i:                ; preds = %do.end.i.i39.i, %__rq_lockp.exit.i.i38.i, %land.lhs.true.i
  %35 = ptrtoint ptr %clock_update_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %clock_update_flags.i.i.i, align 4
  %cmp.i.i41.i = icmp ult i32 %36, 2
  br i1 %cmp.i.i41.i, label %land.rhs.i3.i44.i, label %rq_clock.exit47.i

land.rhs.i3.i44.i:                                ; preds = %lockdep_assert_rq_held.exit.i42.i
  %.b37.i.i43.i = load i1, ptr @assert_clock_updated.__already_done, align 1
  br i1 %.b37.i.i43.i, label %rq_clock.exit47.i, label %if.then.i.i45.i, !prof !114

if.then.i.i45.i:                                  ; preds = %land.rhs.i3.i44.i
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #15
  br label %rq_clock.exit47.i

rq_clock.exit47.i:                                ; preds = %if.then.i.i45.i, %land.rhs.i3.i44.i, %lockdep_assert_rq_held.exit.i42.i
  %37 = ptrtoint ptr %clock.i.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %clock.i.i, align 32
  %39 = ptrtoint ptr %deadline.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %deadline.i, align 8
  %41 = ptrtoint ptr %dl_deadline.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %dl_deadline.i, align 8
  %43 = ptrtoint ptr %dl_period.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %dl_period.i, align 8
  %45 = add i64 %38, %42
  %46 = add i64 %40, %44
  %sub.i50.i = sub i64 %45, %46
  %cmp.i51.i = icmp slt i64 %sub.i50.i, 0
  br i1 %cmp.i51.i, label %if.then.i, label %if.end38

if.then.i:                                        ; preds = %rq_clock.exit47.i
  %47 = ptrtoint ptr %pi_se.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pi_se.i.i, align 8
  %cmp.i52.not.i = icmp eq ptr %48, %dl
  br i1 %cmp.i52.not.i, label %lor.rhs.i, label %if.end38, !prof !114

lor.rhs.i:                                        ; preds = %if.then.i
  %call9.i = tail call fastcc i32 @start_dl_timer(ptr noundef %p) #15
  %tobool.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i, label %if.end38, label %if.end.i, !prof !111

if.end.i:                                         ; preds = %lor.rhs.i
  %49 = ptrtoint ptr %dl_throttled29 to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load.i = load i8, ptr %dl_throttled29, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %dl_throttled29, align 4
  %runtime.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 6
  %50 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %runtime.i, align 8
  %cmp.i105 = icmp sgt i64 %51, 0
  br i1 %cmp.i105, label %if.then14.i, label %if.end38

if.then14.i:                                      ; preds = %if.end.i
  %52 = ptrtoint ptr %runtime.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 0, ptr %runtime.i, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then14.i, %if.end.i, %lor.rhs.i, %if.then.i, %rq_clock.exit47.i, %rq_clock.exit.i, %land.lhs.true, %if.end27
  %on_rq = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 12
  %53 = ptrtoint ptr %on_rq to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %on_rq, align 4
  %cmp39 = icmp ne i32 %54, 2
  %and = and i32 %flags, 2
  %tobool40.not = icmp eq i32 %and, 0
  %or.cond = and i1 %tobool40.not, %cmp39
  br i1 %or.cond, label %if.end46, label %if.then41

if.then41:                                        ; preds = %if.end38
  %dl43 = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 8
  %55 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %56, 268435456
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then.i107, label %add_rq_bw.exit

if.then.i107:                                     ; preds = %if.then41
  %dl_bw.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 4
  %57 = ptrtoint ptr %dl_bw.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %dl_bw.i, align 8
  %this_bw.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 7
  %59 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %this_bw.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %61 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i.i106 = icmp eq i32 %61, 0
  br i1 %tobool.not.i.i.i106, label %lockdep_assert_rq_held.exit.i.i121, label %land.rhs.i.i.i110

land.rhs.i.i.i110:                                ; preds = %if.then.i107
  %core_enabled.i.i.i.i108 = getelementptr %struct.rq, ptr %rq, i32 0, i32 81
  %62 = ptrtoint ptr %core_enabled.i.i.i.i108 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %core_enabled.i.i.i.i108, align 128
  %tobool.not.i.i.i.i109 = icmp eq i32 %63, 0
  br i1 %tobool.not.i.i.i.i109, label %__rq_lockp.exit.i.i.i117, label %if.then.i.i.i.i112

if.then.i.i.i.i112:                               ; preds = %land.rhs.i.i.i110
  %core.i.i.i.i111 = getelementptr %struct.rq, ptr %rq, i32 0, i32 79
  %64 = ptrtoint ptr %core.i.i.i.i111 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %core.i.i.i.i111, align 8
  br label %__rq_lockp.exit.i.i.i117

__rq_lockp.exit.i.i.i117:                         ; preds = %if.then.i.i.i.i112, %land.rhs.i.i.i110
  %retval.0.i.i.i.i113 = phi ptr [ %65, %if.then.i.i.i.i112 ], [ %rq, %land.rhs.i.i.i110 ]
  %dep_map.i.i.i114 = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i.i113, i32 0, i32 4
  %call.i.i.i.i115 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i114, i32 noundef -1) #15
  %cmp.not.i.i.i116 = icmp eq i32 %call.i.i.i.i115, 0
  br i1 %cmp.not.i.i.i116, label %do.end.i.i.i118, label %lockdep_assert_rq_held.exit.i.i121, !prof !111

do.end.i.i.i118:                                  ; preds = %__rq_lockp.exit.i.i.i117
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i.i121

lockdep_assert_rq_held.exit.i.i121:               ; preds = %do.end.i.i.i118, %__rq_lockp.exit.i.i.i117, %if.then.i107
  %66 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %this_bw.i.i, align 8
  %add.i.i119 = add i64 %67, %58
  store i64 %add.i.i119, ptr %this_bw.i.i, align 8
  %cmp.i.i120 = icmp ult i64 %add.i.i119, %60
  br i1 %cmp.i.i120, label %land.rhs.i.i, label %add_rq_bw.exit

land.rhs.i.i:                                     ; preds = %lockdep_assert_rq_held.exit.i.i121
  %.b42.i.i = load i1, ptr @__add_rq_bw.__already_done, align 1
  br i1 %.b42.i.i, label %add_rq_bw.exit, label %if.then.i.i, !prof !114

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @__add_rq_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 189, i32 noundef 9, ptr noundef nonnull @.str.12) #15
  br label %add_rq_bw.exit

add_rq_bw.exit:                                   ; preds = %if.then.i.i, %land.rhs.i.i, %lockdep_assert_rq_held.exit.i.i121, %if.then41
  tail call fastcc void @add_running_bw(ptr noundef %dl, ptr noundef %dl43)
  br label %if.end46

if.end46:                                         ; preds = %add_rq_bw.exit, %if.end38
  %68 = ptrtoint ptr %dl_throttled29 to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load49 = load i8, ptr %dl_throttled29, align 4
  %tobool52.not = icmp slt i8 %bf.load49, 0
  %and54 = and i32 %flags, 32
  %tobool55.not = icmp eq i32 %and54, 0
  %or.cond101 = and i1 %tobool55.not, %tobool52.not
  br i1 %or.cond101, label %if.then56, label %if.end62

if.then56:                                        ; preds = %if.end46
  %and57 = and i32 %flags, 1
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end72, label %if.then59

if.then59:                                        ; preds = %if.then56
  tail call fastcc void @task_contending(ptr noundef %dl, i32 noundef %flags)
  br label %if.end72

if.end62:                                         ; preds = %if.end46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_schedstats, ptr blockaddress(@enqueue_task_dl, %check_schedstat_required.exit)) #15
          to label %if.end.i123 [label %check_schedstat_required.exit], !srcloc !117

if.end.i123:                                      ; preds = %if.end62
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_stat_wait, i32 0, i32 1), ptr blockaddress(@enqueue_task_dl, %land.end.i)) #15
          to label %lor.lhs.false.i [label %land.end.i], !srcloc !117

lor.lhs.false.i:                                  ; preds = %if.end.i123
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_stat_sleep, i32 0, i32 1), ptr blockaddress(@enqueue_task_dl, %land.end.i)) #15
          to label %lor.lhs.false5.i [label %land.end.i], !srcloc !117

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_stat_iowait, i32 0, i32 1), ptr blockaddress(@enqueue_task_dl, %land.end.i)) #15
          to label %lor.lhs.false7.i [label %land.end.i], !srcloc !117

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false5.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_stat_blocked, i32 0, i32 1), ptr blockaddress(@enqueue_task_dl, %land.end.i)) #15
          to label %lor.lhs.false9.i [label %land.end.i], !srcloc !117

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false7.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_stat_runtime, i32 0, i32 1), ptr blockaddress(@enqueue_task_dl, %land.end.i)) #15
          to label %check_schedstat_required.exit [label %land.end.i], !srcloc !117

land.end.i:                                       ; preds = %lor.lhs.false9.i, %lor.lhs.false7.i, %lor.lhs.false5.i, %lor.lhs.false.i, %if.end.i123
  %.b35.i = load i1, ptr @check_schedstat_required.__already_done, align 1
  br i1 %.b35.i, label %check_schedstat_required.exit, label %if.then22.i, !prof !114

if.then22.i:                                      ; preds = %land.end.i
  store i1 true, ptr @check_schedstat_required.__already_done, align 1
  %call24.i = tail call i32 (ptr, ...) @_printk_deferred(ptr noundef nonnull @.str.16) #18
  br label %check_schedstat_required.exit

check_schedstat_required.exit:                    ; preds = %if.then22.i, %land.end.i, %lor.lhs.false9.i, %if.end62
  %stack.i.i = getelementptr %struct.task_struct, ptr %p, i32 0, i32 1
  %69 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %stack.i.i, align 4
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %cpu.i.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %72
  %73 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_schedstats, ptr blockaddress(@enqueue_task_dl, %if.end.i125)) #15
          to label %update_stats_wait_start_dl.exit [label %if.end.i125], !srcloc !117

if.end.i125:                                      ; preds = %check_schedstat_required.exit
  %add.i = add i32 %74, ptrtoint (ptr @runqueues to i32)
  %75 = inttoptr i32 %add.i to ptr
  %stats.i.i = getelementptr %struct.task_struct, ptr %p, i32 0, i32 29
  tail call void @__update_stats_wait_start(ptr noundef %75, ptr noundef %p, ptr noundef %stats.i.i) #15
  br label %update_stats_wait_start_dl.exit

update_stats_wait_start_dl.exit:                  ; preds = %if.end.i125, %check_schedstat_required.exit
  tail call fastcc void @enqueue_dl_entity(ptr noundef %dl, i32 noundef %flags)
  %curr.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 20
  %76 = ptrtoint ptr %curr.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %curr.i, align 8
  %cmp.i126.not = icmp eq ptr %77, %p
  br i1 %cmp.i126.not, label %if.end72, label %land.lhs.true69

land.lhs.true69:                                  ; preds = %update_stats_wait_start_dl.exit
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 32
  %78 = ptrtoint ptr %nr_cpus_allowed to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %nr_cpus_allowed, align 8
  %cmp70 = icmp sgt i32 %79, 1
  br i1 %cmp70, label %if.then71, label %if.end72

if.then71:                                        ; preds = %land.lhs.true69
  tail call fastcc void @enqueue_pushable_dl_task(ptr noundef %rq, ptr noundef %p)
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %land.lhs.true69, %update_stats_wait_start_dl.exit, %if.then59, %if.then56
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dequeue_task_dl(ptr noundef %rq, ptr noundef %p, i32 noundef %flags) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @update_curr_dl(ptr noundef %rq)
  tail call fastcc void @__dequeue_task_dl(ptr noundef %rq, ptr noundef %p, i32 noundef %flags)
  %on_rq = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 12
  %0 = ptrtoint ptr %on_rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %on_rq, align 4
  %cmp = icmp ne i32 %1, 2
  %and = and i32 %flags, 2
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = and i1 %tobool.not, %cmp
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 8
  %2 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %3, 268435456
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then.i, label %sub_running_bw.exit

if.then.i:                                        ; preds = %if.then
  %dl_bw.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 4
  %4 = ptrtoint ptr %dl_bw.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %dl_bw.i, align 8
  %running_bw.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 6
  %6 = ptrtoint ptr %running_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %running_bw.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %8 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i, label %lockdep_assert_rq_held.exit.i.i, label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.then.i
  %core_enabled.i.i.i.i = getelementptr %struct.rq, ptr %rq, i32 0, i32 81
  %9 = ptrtoint ptr %core_enabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %core_enabled.i.i.i.i, align 128
  %tobool.not.i.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i.i.i, label %__rq_lockp.exit.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i
  %core.i.i.i.i = getelementptr %struct.rq, ptr %rq, i32 0, i32 79
  %11 = ptrtoint ptr %core.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %core.i.i.i.i, align 8
  br label %__rq_lockp.exit.i.i.i

__rq_lockp.exit.i.i.i:                            ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %12, %if.then.i.i.i.i ], [ %rq, %land.rhs.i.i.i ]
  %dep_map.i.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i.i, i32 0, i32 4
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #15
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %do.end.i.i.i, label %lockdep_assert_rq_held.exit.i.i, !prof !111

do.end.i.i.i:                                     ; preds = %__rq_lockp.exit.i.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i.i

lockdep_assert_rq_held.exit.i.i:                  ; preds = %do.end.i.i.i, %__rq_lockp.exit.i.i.i, %if.then.i
  %13 = ptrtoint ptr %running_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %running_bw.i.i, align 8
  %sub.i.i = sub i64 %14, %5
  store i64 %sub.i.i, ptr %running_bw.i.i, align 8
  %cmp.i.i = icmp ugt i64 %sub.i.i, %7
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end29.i.i

land.rhs.i.i:                                     ; preds = %lockdep_assert_rq_held.exit.i.i
  %.b52.i.i = load i1, ptr @__sub_running_bw.__already_done, align 1
  br i1 %.b52.i.i, label %if.end29.i.i, label %if.then.i.i, !prof !114

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @__sub_running_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 175, i32 noundef 9, ptr noundef nonnull @.str.7) #15
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then.i.i, %land.rhs.i.i, %lockdep_assert_rq_held.exit.i.i
  %15 = ptrtoint ptr %running_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %running_bw.i.i, align 8
  %cmp38.i.i = icmp ugt i64 %16, %7
  br i1 %cmp38.i.i, label %if.then39.i.i, label %__sub_running_bw.exit.i

if.then39.i.i:                                    ; preds = %if.end29.i.i
  %17 = ptrtoint ptr %running_bw.i.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %running_bw.i.i, align 8
  br label %__sub_running_bw.exit.i

__sub_running_bw.exit.i:                          ; preds = %if.then39.i.i, %if.end29.i.i
  tail call fastcc void @cpufreq_update_util(ptr noundef %rq) #15
  br label %sub_running_bw.exit

sub_running_bw.exit:                              ; preds = %__sub_running_bw.exit.i, %if.then
  %18 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i.i, align 8
  %and.i.i18 = and i32 %19, 268435456
  %tobool.i.not.i19 = icmp eq i32 %and.i.i18, 0
  br i1 %tobool.i.not.i19, label %if.then.i22, label %if.end

if.then.i22:                                      ; preds = %sub_running_bw.exit
  %dl_bw.i20 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 4
  %20 = ptrtoint ptr %dl_bw.i20 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %dl_bw.i20, align 8
  %this_bw.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 7
  %22 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %this_bw.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %24 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i.i21 = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i.i21, label %lockdep_assert_rq_held.exit.i.i37, label %land.rhs.i.i.i26

land.rhs.i.i.i26:                                 ; preds = %if.then.i22
  %core_enabled.i.i.i.i24 = getelementptr %struct.rq, ptr %rq, i32 0, i32 81
  %25 = ptrtoint ptr %core_enabled.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %core_enabled.i.i.i.i24, align 128
  %tobool.not.i.i.i.i25 = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i.i.i25, label %__rq_lockp.exit.i.i.i33, label %if.then.i.i.i.i28

if.then.i.i.i.i28:                                ; preds = %land.rhs.i.i.i26
  %core.i.i.i.i27 = getelementptr %struct.rq, ptr %rq, i32 0, i32 79
  %27 = ptrtoint ptr %core.i.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %core.i.i.i.i27, align 8
  br label %__rq_lockp.exit.i.i.i33

__rq_lockp.exit.i.i.i33:                          ; preds = %if.then.i.i.i.i28, %land.rhs.i.i.i26
  %retval.0.i.i.i.i29 = phi ptr [ %28, %if.then.i.i.i.i28 ], [ %rq, %land.rhs.i.i.i26 ]
  %dep_map.i.i.i30 = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i.i29, i32 0, i32 4
  %call.i.i.i.i31 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i30, i32 noundef -1) #15
  %cmp.not.i.i.i32 = icmp eq i32 %call.i.i.i.i31, 0
  br i1 %cmp.not.i.i.i32, label %do.end.i.i.i34, label %lockdep_assert_rq_held.exit.i.i37, !prof !111

do.end.i.i.i34:                                   ; preds = %__rq_lockp.exit.i.i.i33
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i.i37

lockdep_assert_rq_held.exit.i.i37:                ; preds = %do.end.i.i.i34, %__rq_lockp.exit.i.i.i33, %if.then.i22
  %29 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %this_bw.i.i, align 8
  %sub.i.i35 = sub i64 %30, %21
  store i64 %sub.i.i35, ptr %this_bw.i.i, align 8
  %cmp.i.i36 = icmp ugt i64 %sub.i.i35, %23
  br i1 %cmp.i.i36, label %land.rhs.i.i38, label %if.end29.i.i41

land.rhs.i.i38:                                   ; preds = %lockdep_assert_rq_held.exit.i.i37
  %.b111.i.i = load i1, ptr @__sub_rq_bw.__already_done, align 1
  br i1 %.b111.i.i, label %if.end29.i.i41, label %if.then.i.i39, !prof !114

if.then.i.i39:                                    ; preds = %land.rhs.i.i38
  store i1 true, ptr @__sub_rq_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 199, i32 noundef 9, ptr noundef nonnull @.str.9) #15
  br label %if.end29.i.i41

if.end29.i.i41:                                   ; preds = %if.then.i.i39, %land.rhs.i.i38, %lockdep_assert_rq_held.exit.i.i37
  %31 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %this_bw.i.i, align 8
  %cmp38.i.i40 = icmp ugt i64 %32, %23
  br i1 %cmp38.i.i40, label %if.then39.i.i42, label %if.end41.i.i

if.then39.i.i42:                                  ; preds = %if.end29.i.i41
  %33 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 0, ptr %this_bw.i.i, align 8
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %if.then39.i.i42, %if.end29.i.i41
  %running_bw.i.i43 = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 6
  %34 = ptrtoint ptr %running_bw.i.i43 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %running_bw.i.i43, align 8
  %36 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %this_bw.i.i, align 8
  %cmp44.i.i = icmp ugt i64 %35, %37
  br i1 %cmp44.i.i, label %land.rhs51.i.i, label %if.end

land.rhs51.i.i:                                   ; preds = %if.end41.i.i
  %.b109110.i.i = load i1, ptr @__sub_rq_bw.__already_done.10, align 1
  br i1 %.b109110.i.i, label %if.end, label %if.then62.i.i, !prof !114

if.then62.i.i:                                    ; preds = %land.rhs51.i.i
  store i1 true, ptr @__sub_rq_bw.__already_done.10, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 202, i32 noundef 9, ptr noundef nonnull @.str.11) #15
  br label %if.end

if.end:                                           ; preds = %if.then62.i.i, %land.rhs51.i.i, %if.end41.i.i, %sub_running_bw.exit, %entry
  %and4 = and i32 %flags, 1
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  tail call fastcc void @task_non_contending(ptr noundef %p)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @yield_task_dl(ptr noundef %rq) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %curr = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 20
  %0 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %curr, align 8
  %dl_yielded = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 20, i32 9
  %2 = ptrtoint ptr %dl_yielded to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %dl_yielded, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %dl_yielded, align 4
  tail call void @update_rq_clock(ptr noundef %rq) #15
  tail call void @update_curr_dl(ptr noundef %rq)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %3 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i, label %rq_clock_skip_update.exit, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %entry
  %core_enabled.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 81
  %4 = ptrtoint ptr %core_enabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %core_enabled.i.i.i, align 128
  %tobool.not.i.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i.i, label %__rq_lockp.exit.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  %core.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 79
  %6 = ptrtoint ptr %core.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core.i.i.i, align 8
  br label %__rq_lockp.exit.i.i

__rq_lockp.exit.i.i:                              ; preds = %if.then.i.i.i, %land.rhs.i.i
  %retval.0.i.i.i = phi ptr [ %7, %if.then.i.i.i ], [ %rq, %land.rhs.i.i ]
  %dep_map.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i, i32 0, i32 4
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #15
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %rq_clock_skip_update.exit, !prof !111

do.end.i.i:                                       ; preds = %__rq_lockp.exit.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %rq_clock_skip_update.exit

rq_clock_skip_update.exit:                        ; preds = %do.end.i.i, %__rq_lockp.exit.i.i, %entry
  %clock_update_flags.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 25
  %8 = ptrtoint ptr %clock_update_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %clock_update_flags.i, align 4
  %or.i = or i32 %9, 1
  store i32 %or.i, ptr %clock_update_flags.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @check_preempt_curr_dl(ptr noundef %rq, ptr noundef %p, i32 noundef %flags) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %curr = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 20
  %0 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %curr, align 8
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 8
  %2 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %3, 268435456
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %dl_entity_preempt.exit, label %if.end9.sink.split

dl_entity_preempt.exit:                           ; preds = %entry
  %deadline.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 7
  %4 = ptrtoint ptr %deadline.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %deadline.i, align 8
  %deadline1.i = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 20, i32 7
  %6 = ptrtoint ptr %deadline1.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %deadline1.i, align 8
  %sub.i.i = sub i64 %5, %7
  %cmp.i.i = icmp slt i64 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end9.sink.split, label %if.end

if.end:                                           ; preds = %dl_entity_preempt.exit
  %8 = ptrtoint ptr %deadline.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %deadline.i, align 8
  %10 = ptrtoint ptr %deadline1.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %deadline1.i, align 8
  %cmp = icmp eq i64 %9, %11
  br i1 %cmp, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stack.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %16 = and i32 %15, 2
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  %nr_cpus_allowed.i = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 32
  %17 = ptrtoint ptr %nr_cpus_allowed.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_cpus_allowed.i, align 8
  %cmp.i = icmp eq i32 %18, 1
  br i1 %cmp.i, label %if.end9, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then8
  %rd.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 35
  %19 = ptrtoint ptr %rd.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rd.i, align 8
  %cpudl.i = getelementptr inbounds %struct.root_domain, ptr %20, i32 0, i32 10
  %call.i = tail call i32 @cpudl_find(ptr noundef %cpudl.i, ptr noundef %1, ptr noundef null) #15
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end9, label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %nr_cpus_allowed2.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 32
  %21 = ptrtoint ptr %nr_cpus_allowed2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr_cpus_allowed2.i, align 8
  %cmp3.not.i = icmp eq i32 %22, 1
  br i1 %cmp3.not.i, label %if.end9.sink.split, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %23 = ptrtoint ptr %rd.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rd.i, align 8
  %cpudl5.i = getelementptr inbounds %struct.root_domain, ptr %24, i32 0, i32 10
  %call6.i = tail call i32 @cpudl_find(ptr noundef %cpudl5.i, ptr noundef %p, ptr noundef null) #15
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.sink.split, label %if.end9

if.end9.sink.split:                               ; preds = %land.lhs.true.i, %if.end.i, %dl_entity_preempt.exit, %entry
  tail call void @resched_curr(ptr noundef %rq) #15
  br label %if.end9

if.end9:                                          ; preds = %if.end9.sink.split, %land.lhs.true.i, %lor.lhs.false.i, %if.then8, %land.lhs.true, %if.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pick_next_task_dl(ptr noundef %rq) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %dl_nr_running.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 1
  %0 = ptrtoint ptr %dl_nr_running.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dl_nr_running.i.i, align 8
  %cmp.i.not.i = icmp eq i32 %1, 0
  br i1 %cmp.i.not.i, label %if.end, label %if.end.i

if.end.i:                                         ; preds = %entry
  %rb_leftmost.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 0, i32 1
  %2 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rb_leftmost.i.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body6.i, label %pick_task_dl.exit, !prof !111

do.body6.i:                                       ; preds = %if.end.i
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1955, 0\0A.popsection", ""() #15, !srcloc !118
  unreachable

pick_task_dl.exit:                                ; preds = %if.end.i
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -424
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %pick_task_dl.exit
  tail call void @set_next_task_dl(ptr noundef %rq, ptr noundef nonnull %add.ptr.i.i, i1 noundef zeroext true)
  br label %if.end

if.end:                                           ; preds = %if.then, %pick_task_dl.exit, %entry
  %retval.0.i6 = phi ptr [ %add.ptr.i.i, %if.then ], [ null, %pick_task_dl.exit ], [ null, %entry ]
  ret ptr %retval.0.i6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @put_prev_task_dl(ptr noundef %rq, ptr noundef %p) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %dl = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20
  %0 = ptrtoint ptr %dl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dl, align 8
  %2 = ptrtoint ptr %dl to i32
  %cmp.i.not = icmp eq i32 %1, %2
  br i1 %cmp.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_schedstats, ptr blockaddress(@put_prev_task_dl, %if.end.i)) #15
          to label %if.end [label %if.end.i], !srcloc !117

if.end.i:                                         ; preds = %if.then
  %stats.i.i = getelementptr %struct.task_struct, ptr %p, i32 0, i32 29
  tail call void @__update_stats_wait_start(ptr noundef %rq, ptr noundef %p, ptr noundef %stats.i.i) #15
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then, %entry
  tail call void @update_curr_dl(ptr noundef %rq)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %3 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i, label %lockdep_assert_rq_held.exit.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %if.end
  %core_enabled.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 81
  %4 = ptrtoint ptr %core_enabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %core_enabled.i.i.i, align 128
  %tobool.not.i.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i.i, label %__rq_lockp.exit.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  %core.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 79
  %6 = ptrtoint ptr %core.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core.i.i.i, align 8
  br label %__rq_lockp.exit.i.i

__rq_lockp.exit.i.i:                              ; preds = %if.then.i.i.i, %land.rhs.i.i
  %retval.0.i.i.i = phi ptr [ %7, %if.then.i.i.i ], [ %rq, %land.rhs.i.i ]
  %dep_map.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i, i32 0, i32 4
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #15
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %lockdep_assert_rq_held.exit.i, !prof !111

do.end.i.i:                                       ; preds = %__rq_lockp.exit.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i

lockdep_assert_rq_held.exit.i:                    ; preds = %do.end.i.i, %__rq_lockp.exit.i.i, %if.end
  %clock_update_flags.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 25
  %8 = ptrtoint ptr %clock_update_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %clock_update_flags.i.i, align 4
  %cmp.i.i = icmp ult i32 %9, 2
  br i1 %cmp.i.i, label %land.rhs.i4.i, label %rq_clock_pelt.exit

land.rhs.i4.i:                                    ; preds = %lockdep_assert_rq_held.exit.i
  %.b37.i.i = load i1, ptr @assert_clock_updated.__already_done, align 1
  br i1 %.b37.i.i, label %rq_clock_pelt.exit, label %if.then.i.i, !prof !114

if.then.i.i:                                      ; preds = %land.rhs.i4.i
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #15
  br label %rq_clock_pelt.exit

rq_clock_pelt.exit:                               ; preds = %if.then.i.i, %land.rhs.i4.i, %lockdep_assert_rq_held.exit.i
  %clock_pelt.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 29
  %10 = ptrtoint ptr %clock_pelt.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %clock_pelt.i, align 8
  %lost_idle_time.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 30
  %12 = ptrtoint ptr %lost_idle_time.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lost_idle_time.i, align 16
  %conv.i = zext i32 %13 to i64
  %sub.i = sub i64 %11, %conv.i
  %call4 = tail call i32 @update_dl_rq_load_avg(i64 noundef %sub.i, ptr noundef %rq, i32 noundef 1) #15
  %14 = ptrtoint ptr %dl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dl, align 8
  %cmp.i18.not = icmp eq i32 %15, %2
  br i1 %cmp.i18.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %rq_clock_pelt.exit
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 32
  %16 = ptrtoint ptr %nr_cpus_allowed to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_cpus_allowed, align 8
  %cmp = icmp sgt i32 %17, 1
  br i1 %cmp, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  tail call fastcc void @enqueue_pushable_dl_task(ptr noundef %rq, ptr noundef %p)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %land.lhs.true, %rq_clock_pelt.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_next_task_dl(ptr noundef %rq, ptr noundef %p, i1 noundef zeroext %first) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %dl = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20
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
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #15
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %lockdep_assert_rq_held.exit.i, !prof !111

do.end.i.i:                                       ; preds = %__rq_lockp.exit.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
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
  br i1 %.b37.i.i, label %rq_clock_task.exit, label %if.then.i.i, !prof !114

if.then.i.i:                                      ; preds = %land.rhs.i3.i
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #15
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
  %10 = ptrtoint ptr %dl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dl, align 8
  %12 = ptrtoint ptr %dl to i32
  %cmp.i.not = icmp eq i32 %11, %12
  br i1 %cmp.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %rq_clock_task.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_schedstats, ptr blockaddress(@set_next_task_dl, %if.end.i)) #15
          to label %if.end [label %if.end.i], !srcloc !117

if.end.i:                                         ; preds = %if.then
  %stats.i.i = getelementptr %struct.task_struct, ptr %p, i32 0, i32 29
  tail call void @__update_stats_wait_end(ptr noundef %rq, ptr noundef %p, ptr noundef %stats.i.i) #15
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then, %rq_clock_task.exit
  %pushable_dl_tasks.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 52
  %13 = ptrtoint ptr %pushable_dl_tasks.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pushable_dl_tasks.i, align 4
  %15 = ptrtoint ptr %pushable_dl_tasks.i to i32
  %cmp.i28 = icmp eq i32 %14, %15
  br i1 %cmp.i28, label %dequeue_pushable_dl_task.exit, label %if.end.i30

if.end.i30:                                       ; preds = %if.end
  %pushable_dl_tasks_root.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 5
  %rb_leftmost.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 5, i32 1
  %16 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rb_leftmost.i.i, align 4
  %cmp.i.i29 = icmp eq ptr %17, %pushable_dl_tasks.i
  br i1 %cmp.i.i29, label %rb_erase_cached.exit.i, label %rb_erase_cached.exit.thread.i

rb_erase_cached.exit.thread.i:                    ; preds = %if.end.i30
  tail call void @rb_erase(ptr noundef %pushable_dl_tasks.i, ptr noundef %pushable_dl_tasks_root.i) #15
  br label %if.end5.i

rb_erase_cached.exit.i:                           ; preds = %if.end.i30
  %call.i.i = tail call ptr @rb_next(ptr noundef %pushable_dl_tasks.i) #15
  %18 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i.i, ptr %rb_leftmost.i.i, align 4
  tail call void @rb_erase(ptr noundef %pushable_dl_tasks.i, ptr noundef %pushable_dl_tasks_root.i) #15
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end5.i, label %if.then3.i

if.then3.i:                                       ; preds = %rb_erase_cached.exit.i
  %deadline.i = getelementptr i8, ptr %call.i.i, i32 -676
  %19 = ptrtoint ptr %deadline.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %deadline.i, align 8
  %next.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 2, i32 1
  %21 = ptrtoint ptr %next.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %next.i, align 8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %rb_erase_cached.exit.i, %rb_erase_cached.exit.thread.i
  %22 = ptrtoint ptr %pushable_dl_tasks.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %15, ptr %pushable_dl_tasks.i, align 4
  br label %dequeue_pushable_dl_task.exit

dequeue_pushable_dl_task.exit:                    ; preds = %if.end5.i, %if.end
  br i1 %first, label %if.end6, label %cleanup

if.end6:                                          ; preds = %dequeue_pushable_dl_task.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ([25 x %struct.static_key], ptr @sched_feat_keys, i32 0, i32 7), ptr blockaddress(@set_next_task_dl, %if.end.i31)) #15
          to label %if.end10 [label %if.end.i31], !srcloc !117

if.end.i31:                                       ; preds = %if.end6
  %cpu.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 46
  %23 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %25 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i.i.i = icmp ugt i32 %25, %24
  br i1 %cmp.not.i.i.i.i.i.i, label %cpu_active.exit.i.i, label %land.rhs.i.i.i.i.i.i

land.rhs.i.i.i.i.i.i:                             ; preds = %if.end.i31
  %.b37.i.i.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i.i.i, label %cpu_active.exit.i.i, label %if.then.i.i.i.i.i.i, !prof !114

if.then.i.i.i.i.i.i:                              ; preds = %land.rhs.i.i.i.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_active.exit.i.i

cpu_active.exit.i.i:                              ; preds = %if.then.i.i.i.i.i.i, %land.rhs.i.i.i.i.i.i, %if.end.i31
  %div3.i.i.i.i.i = lshr i32 %24, 5
  %arrayidx.i.i.i.i.i = getelementptr i32, ptr @__cpu_active_mask, i32 %div3.i.i.i.i.i
  %26 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %arrayidx.i.i.i.i.i, align 4
  %and.i.i.i.i.i = and i32 %24, 31
  %28 = shl nuw i32 1, %and.i.i.i.i.i
  %29 = and i32 %27, %28
  %tobool.i.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool.i.not.i.i, label %if.end10, label %if.end.i.i

if.end.i.i:                                       ; preds = %cpu_active.exit.i.i
  %base.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 66, i32 3
  %30 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %hres_active.i.i.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %hres_active.i.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load.i.i.i = load i8, ptr %hres_active.i.i.i, align 8
  %phi.cmp = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %phi.cmp, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end.i.i
  %runtime.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 6
  %35 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %runtime.i, align 8
  tail call void @hrtick_start(ptr noundef %rq, i64 noundef %36) #15
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end.i.i, %cpu_active.exit.i.i, %if.end6
  %curr = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 20
  %37 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %curr, align 8
  %sched_class = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 21
  %39 = ptrtoint ptr %sched_class to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sched_class, align 32
  %cmp.not = icmp eq ptr %40, @dl_sched_class
  br i1 %cmp.not, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %41 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i32 = icmp eq i32 %41, 0
  br i1 %tobool.not.i.i32, label %lockdep_assert_rq_held.exit.i46, label %land.rhs.i.i35

land.rhs.i.i35:                                   ; preds = %if.then11
  %core_enabled.i.i.i33 = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 81
  %42 = ptrtoint ptr %core_enabled.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %core_enabled.i.i.i33, align 128
  %tobool.not.i.i.i34 = icmp eq i32 %43, 0
  br i1 %tobool.not.i.i.i34, label %__rq_lockp.exit.i.i42, label %if.then.i.i.i37

if.then.i.i.i37:                                  ; preds = %land.rhs.i.i35
  %core.i.i.i36 = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 79
  %44 = ptrtoint ptr %core.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %core.i.i.i36, align 8
  br label %__rq_lockp.exit.i.i42

__rq_lockp.exit.i.i42:                            ; preds = %if.then.i.i.i37, %land.rhs.i.i35
  %retval.0.i.i.i38 = phi ptr [ %45, %if.then.i.i.i37 ], [ %rq, %land.rhs.i.i35 ]
  %dep_map.i.i39 = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i38, i32 0, i32 4
  %call.i.i.i40 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i39, i32 noundef -1) #15
  %cmp.not.i.i41 = icmp eq i32 %call.i.i.i40, 0
  br i1 %cmp.not.i.i41, label %do.end.i.i43, label %lockdep_assert_rq_held.exit.i46, !prof !111

do.end.i.i43:                                     ; preds = %__rq_lockp.exit.i.i42
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i46

lockdep_assert_rq_held.exit.i46:                  ; preds = %do.end.i.i43, %__rq_lockp.exit.i.i42, %if.then11
  %46 = ptrtoint ptr %clock_update_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %clock_update_flags.i.i, align 4
  %cmp.i.i45 = icmp ult i32 %47, 2
  br i1 %cmp.i.i45, label %land.rhs.i4.i, label %rq_clock_pelt.exit

land.rhs.i4.i:                                    ; preds = %lockdep_assert_rq_held.exit.i46
  %.b37.i.i47 = load i1, ptr @assert_clock_updated.__already_done, align 1
  br i1 %.b37.i.i47, label %rq_clock_pelt.exit, label %if.then.i.i48, !prof !114

if.then.i.i48:                                    ; preds = %land.rhs.i4.i
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #15
  br label %rq_clock_pelt.exit

rq_clock_pelt.exit:                               ; preds = %if.then.i.i48, %land.rhs.i4.i, %lockdep_assert_rq_held.exit.i46
  %clock_pelt.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 29
  %48 = ptrtoint ptr %clock_pelt.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %clock_pelt.i, align 8
  %lost_idle_time.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 30
  %50 = ptrtoint ptr %lost_idle_time.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %lost_idle_time.i, align 16
  %conv.i = zext i32 %51 to i64
  %sub.i = sub i64 %49, %conv.i
  %call13 = tail call i32 @update_dl_rq_load_avg(i64 noundef %sub.i, ptr noundef %rq, i32 noundef 0) #15
  br label %if.end14

if.end14:                                         ; preds = %rq_clock_pelt.exit, %if.end10
  %pushable_dl_tasks_root.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 5
  %52 = ptrtoint ptr %pushable_dl_tasks_root.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %pushable_dl_tasks_root.i.i, align 8
  %cmp.i.not.i = icmp eq ptr %53, null
  br i1 %cmp.i.not.i, label %cleanup, label %if.end.i50

if.end.i50:                                       ; preds = %if.end14
  %cpu.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 46
  %54 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %55
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %57, ptrtoint (ptr @dl_push_head to i32)
  %58 = inttoptr i32 %add.i to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %59 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i.i49 = icmp eq i32 %59, 0
  br i1 %tobool.not.i.i.i49, label %lockdep_assert_rq_held.exit.i.i, label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end.i50
  %core_enabled.i.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 81
  %60 = ptrtoint ptr %core_enabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %core_enabled.i.i.i.i, align 128
  %tobool.not.i.i.i.i = icmp eq i32 %61, 0
  br i1 %tobool.not.i.i.i.i, label %__rq_lockp.exit.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i
  %core.i.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 79
  %62 = ptrtoint ptr %core.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %core.i.i.i.i, align 8
  br label %__rq_lockp.exit.i.i.i

__rq_lockp.exit.i.i.i:                            ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %63, %if.then.i.i.i.i ], [ %rq, %land.rhs.i.i.i ]
  %dep_map.i.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i.i, i32 0, i32 4
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #15
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %do.end.i.i.i, label %lockdep_assert_rq_held.exit.i.i, !prof !111

do.end.i.i.i:                                     ; preds = %__rq_lockp.exit.i.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i.i

lockdep_assert_rq_held.exit.i.i:                  ; preds = %do.end.i.i.i, %__rq_lockp.exit.i.i.i, %if.end.i50
  %64 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %58, align 4
  %tobool.not.i.i51 = icmp eq ptr %65, null
  br i1 %tobool.not.i.i51, label %lor.rhs.i.i, label %cleanup, !prof !114

lor.rhs.i.i:                                      ; preds = %lockdep_assert_rq_held.exit.i.i
  %balance_callback.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 39
  %66 = ptrtoint ptr %balance_callback.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %balance_callback.i.i, align 8
  %cmp.i4.i = icmp eq ptr %67, @balance_push_callback
  br i1 %cmp.i4.i, label %cleanup, label %if.end.i.i52, !prof !111

if.end.i.i52:                                     ; preds = %lor.rhs.i.i
  %func3.i.i = getelementptr inbounds %struct.callback_head, ptr %58, i32 0, i32 1
  %68 = ptrtoint ptr %func3.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @push_dl_tasks, ptr %func3.i.i, align 4
  %69 = ptrtoint ptr %balance_callback.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %balance_callback.i.i, align 8
  %71 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %58, align 4
  store ptr %58, ptr %balance_callback.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i52, %lor.rhs.i.i, %lockdep_assert_rq_held.exit.i.i, %if.end14, %dequeue_pushable_dl_task.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @balance_dl(ptr noundef %rq, ptr noundef %p, ptr nocapture noundef %rf) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %dl = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20
  %0 = ptrtoint ptr %dl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dl, align 8
  %2 = ptrtoint ptr %dl to i32
  %cmp.i.not = icmp eq i32 %1, %2
  br i1 %cmp.i.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %online.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 47
  %3 = ptrtoint ptr %online.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %online.i, align 8
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.end, label %need_pull_dl_task.exit

need_pull_dl_task.exit:                           ; preds = %land.lhs.true
  %prio.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 13
  %5 = ptrtoint ptr %prio.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %prio.i.i, align 8
  %tobool1.i = icmp slt i32 %6, 0
  br i1 %tobool1.i, label %if.then, label %if.end

if.then:                                          ; preds = %need_pull_dl_task.exit
  %clock_update_flags.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 25
  %7 = ptrtoint ptr %clock_update_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %clock_update_flags.i, align 4
  %cmp.i11 = icmp ugt i32 %8, 2
  br i1 %cmp.i11, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  %clock_update_flags1.i = getelementptr inbounds %struct.rq_flags, ptr %rf, i32 0, i32 2
  %9 = ptrtoint ptr %clock_update_flags1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %clock_update_flags1.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then
  %core_enabled.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 81
  %10 = ptrtoint ptr %core_enabled.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %core_enabled.i.i, align 128
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %rq_unpin_lock.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %core.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 79
  %12 = ptrtoint ptr %core.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core.i.i, align 8
  br label %rq_unpin_lock.exit

rq_unpin_lock.exit:                               ; preds = %if.then.i.i, %if.end.i
  %retval.0.i.i = phi ptr [ %13, %if.then.i.i ], [ %rq, %if.end.i ]
  %dep_map.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i, i32 0, i32 4
  %cookie.i = getelementptr inbounds %struct.rq_flags, ptr %rf, i32 0, i32 1
  %14 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack.i = load i32, ptr %cookie.i, align 4
  %15 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  tail call void @lock_unpin_lock(ptr noundef %dep_map.i, [1 x i32] %15) #15
  tail call void @pull_dl_task(ptr noundef %rq)
  %16 = ptrtoint ptr %core_enabled.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %core_enabled.i.i, align 128
  %tobool.not.i.i13 = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i13, label %rq_repin_lock.exit, label %if.then.i.i15

if.then.i.i15:                                    ; preds = %rq_unpin_lock.exit
  %core.i.i14 = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 79
  %18 = ptrtoint ptr %core.i.i14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %core.i.i14, align 8
  br label %rq_repin_lock.exit

rq_repin_lock.exit:                               ; preds = %if.then.i.i15, %rq_unpin_lock.exit
  %retval.0.i.i16 = phi ptr [ %19, %if.then.i.i15 ], [ %rq, %rq_unpin_lock.exit ]
  %dep_map.i17 = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i16, i32 0, i32 4
  %20 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack.i19 = load i32, ptr %cookie.i, align 4
  %21 = insertvalue [1 x i32] undef, i32 %.unpack.i19, 0
  tail call void @lock_repin_lock(ptr noundef %dep_map.i17, [1 x i32] %21) #15
  %clock_update_flags.i20 = getelementptr inbounds %struct.rq_flags, ptr %rf, i32 0, i32 2
  %22 = ptrtoint ptr %clock_update_flags.i20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %clock_update_flags.i20, align 4
  %24 = ptrtoint ptr %clock_update_flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %clock_update_flags.i, align 4
  %or.i = or i32 %25, %23
  store i32 %or.i, ptr %clock_update_flags.i, align 4
  br label %if.end

if.end:                                           ; preds = %rq_repin_lock.exit, %need_pull_dl_task.exit, %land.lhs.true, %entry
  %stop.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 22
  %26 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %stop.i, align 16
  %tobool.not.i22 = icmp eq ptr %27, null
  br i1 %tobool.not.i22, label %lor.rhs, label %sched_stop_runnable.exit

sched_stop_runnable.exit:                         ; preds = %if.end
  %on_rq.i.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 12
  %28 = ptrtoint ptr %on_rq.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %on_rq.i.i, align 4
  %cmp.i.i = icmp eq i32 %29, 1
  br i1 %cmp.i.i, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %sched_stop_runnable.exit, %if.end
  %dl_nr_running.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 1
  %30 = ptrtoint ptr %dl_nr_running.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dl_nr_running.i, align 8
  %cmp.i24 = icmp ne i32 %31, 0
  %phi.cast = zext i1 %cmp.i24 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %sched_stop_runnable.exit
  %32 = phi i32 [ 1, %sched_stop_runnable.exit ], [ %phi.cast, %lor.rhs ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @select_task_rq_dl(ptr noundef %p, i32 noundef %cpu, i32 noundef %flags) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %out, label %do.body

do.body:                                          ; preds = %entry
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @runqueues to i32)
  %2 = inttoptr i32 %add to ptr
  %3 = tail call i32 @llvm.read_register.i32(metadata !100) #15
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !119
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %rcu_read_lock.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %do.body
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %rcu_read_lock.exit, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %rcu_read_lock.exit, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true2.i
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 696, ptr noundef nonnull @.str.21) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i, %land.lhs.true.i, %do.body
  %curr6 = getelementptr inbounds %struct.rq, ptr %2, i32 0, i32 20
  %7 = ptrtoint ptr %curr6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %curr6, align 8
  %prio.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %prio.i, align 8
  %tobool7.not = icmp sgt i32 %10, -1
  br i1 %tobool7.not, label %land.end, label %land.lhs.true, !prof !114

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 32
  %11 = ptrtoint ptr %nr_cpus_allowed to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_cpus_allowed, align 8
  %cmp = icmp slt i32 %12, 2
  br i1 %cmp, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 8
  %13 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %14, 268435456
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %dl_entity_preempt.exit, label %land.end

dl_entity_preempt.exit:                           ; preds = %lor.lhs.false
  %deadline.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 7
  %15 = ptrtoint ptr %deadline.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %deadline.i, align 8
  %deadline1.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 20, i32 7
  %17 = ptrtoint ptr %deadline1.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %deadline1.i, align 8
  %sub.i.i = sub i64 %16, %18
  %cmp.i.i = icmp slt i64 %sub.i.i, 0
  br i1 %cmp.i.i, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %dl_entity_preempt.exit, %land.lhs.true
  %nr_cpus_allowed12 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 32
  %19 = ptrtoint ptr %nr_cpus_allowed12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr_cpus_allowed12, align 8
  %cmp13 = icmp sgt i32 %20, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %dl_entity_preempt.exit, %lor.lhs.false, %rcu_read_lock.exit
  %21 = phi i1 [ false, %dl_entity_preempt.exit ], [ false, %rcu_read_lock.exit ], [ %cmp13, %land.rhs ], [ false, %lor.lhs.false ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_asym_cpucapacity, ptr blockaddress(@select_task_rq_dl, %if.then24)) #15
          to label %if.end31 [label %if.then24], !srcloc !117

if.then24:                                        ; preds = %land.end
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %add.i.i = add i32 %23, ptrtoint (ptr @cpu_scale to i32)
  %24 = inttoptr i32 %add.i.i to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %dl_deadline.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 2
  %27 = ptrtoint ptr %dl_deadline.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %dl_deadline.i, align 8
  %conv.i = zext i32 %26 to i64
  %mul.i = mul i64 %28, %conv.i
  %shr.i = lshr i64 %mul.i, 10
  %dl_runtime.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 1
  %29 = ptrtoint ptr %dl_runtime.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %dl_runtime.i, align 8
  %cmp.i.not = icmp ult i64 %shr.i, %30
  %or80 = or i1 %21, %cmp.i.not
  br i1 %or80, label %if.then33, label %if.end67

if.end31:                                         ; preds = %land.end
  br i1 %21, label %if.then33, label %if.end67

if.then33:                                        ; preds = %if.end31, %if.then24
  %call34 = tail call fastcc i32 @find_later_rq(ptr noundef %p)
  %cmp35.not = icmp eq i32 %call34, -1
  br i1 %cmp35.not, label %if.end67, label %land.lhs.true37

land.lhs.true37:                                  ; preds = %if.then33
  %deadline = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 7
  %31 = ptrtoint ptr %deadline to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %deadline, align 8
  %arrayidx46 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call34
  %33 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx46, align 4
  %add47 = add i32 %34, ptrtoint (ptr @runqueues to i32)
  %35 = inttoptr i32 %add47 to ptr
  %earliest_dl = getelementptr inbounds %struct.rq, ptr %35, i32 0, i32 16, i32 2
  %36 = ptrtoint ptr %earliest_dl to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %earliest_dl, align 8
  %sub.i = sub i64 %32, %37
  %cmp.i81 = icmp slt i64 %sub.i, 0
  br i1 %cmp.i81, label %if.then65, label %do.body53

do.body53:                                        ; preds = %land.lhs.true37
  %dl_nr_running = getelementptr inbounds %struct.rq, ptr %35, i32 0, i32 16, i32 1
  %38 = ptrtoint ptr %dl_nr_running to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dl_nr_running, align 8
  %cmp63 = icmp eq i32 %39, 0
  br i1 %cmp63, label %if.then65, label %if.end67

if.then65:                                        ; preds = %do.body53, %land.lhs.true37
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %do.body53, %if.then33, %if.end31, %if.then24
  %cpu.addr.1 = phi i32 [ %cpu, %if.end31 ], [ %call34, %if.then65 ], [ %cpu, %do.body53 ], [ %cpu, %if.then33 ], [ %cpu, %if.then24 ]
  %call.i82 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i82, label %rcu_read_unlock.exit, label %land.lhs.true.i85

land.lhs.true.i85:                                ; preds = %if.end67
  %call1.i83 = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool.not.i84 = icmp eq i32 %call1.i83, 0
  br i1 %tobool.not.i84, label %rcu_read_unlock.exit, label %land.lhs.true2.i87

land.lhs.true2.i87:                               ; preds = %land.lhs.true.i85
  %.b4.i86 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i86, label %rcu_read_unlock.exit, label %if.then.i88

if.then.i88:                                      ; preds = %land.lhs.true2.i87
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i88, %land.lhs.true2.i87, %land.lhs.true.i85, %if.end67
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !120
  %40 = tail call i32 @llvm.read_register.i32(metadata !100) #15
  %and.i.i.i.i.i89 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i89 to ptr
  %preempt_count.i.i.i.i90 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i90 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i90, align 4
  %sub.i.i.i = add i32 %43, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i90, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %out

out:                                              ; preds = %rcu_read_unlock.exit, %entry
  %cpu.addr.2 = phi i32 [ %cpu.addr.1, %rcu_read_unlock.exit ], [ %cpu, %entry ]
  ret i32 %cpu.addr.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pick_task_dl(ptr nocapture noundef readonly %rq) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %dl_nr_running.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 1
  %0 = ptrtoint ptr %dl_nr_running.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dl_nr_running.i, align 8
  %cmp.i.not = icmp eq i32 %1, 0
  br i1 %cmp.i.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %rb_leftmost.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 0, i32 1
  %2 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rb_leftmost.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body6, label %do.end12, !prof !111

do.body6:                                         ; preds = %if.end
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1955, 0\0A.popsection", ""() #15, !srcloc !118
  unreachable

do.end12:                                         ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %3, i32 -424
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %entry
  %retval.0 = phi ptr [ %add.ptr.i, %do.end12 ], [ null, %entry ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @migrate_task_rq_dl(ptr noundef %p, i32 noundef %new_cpu) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %p, align 128
  %cmp.not = icmp eq i32 %1, 512
  br i1 %cmp.not, label %do.body1, label %cleanup

do.body1:                                         ; preds = %entry
  %stack.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %stack.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stack.i, align 4
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %cpu.i, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, ptrtoint (ptr @runqueues to i32)
  %8 = inttoptr i32 %add to ptr
  tail call void @raw_spin_rq_lock_nested(ptr noundef %8, i32 noundef 0) #15
  %dl_non_contending = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 9
  %9 = ptrtoint ptr %dl_non_contending to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %dl_non_contending, align 4
  %10 = and i8 %bf.load, 32
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.end18, label %if.then6

if.then6:                                         ; preds = %do.body1
  tail call void @update_rq_clock(ptr noundef %8) #15
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 8
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %12, 268435456
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then.i, label %sub_running_bw.exit

if.then.i:                                        ; preds = %if.then6
  %dl_bw.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 4
  %13 = ptrtoint ptr %dl_bw.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %dl_bw.i, align 8
  %running_bw.i.i = getelementptr inbounds %struct.rq, ptr %8, i32 0, i32 16, i32 6
  %15 = ptrtoint ptr %running_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %running_bw.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %17 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i.i, label %lockdep_assert_rq_held.exit.i.i, label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.then.i
  %core_enabled.i.i.i.i = getelementptr %struct.rq, ptr %8, i32 0, i32 81
  %18 = ptrtoint ptr %core_enabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %core_enabled.i.i.i.i, align 128
  %tobool.not.i.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i.i.i, label %__rq_lockp.exit.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i
  %core.i.i.i.i = getelementptr %struct.rq, ptr %8, i32 0, i32 79
  %20 = ptrtoint ptr %core.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %core.i.i.i.i, align 8
  br label %__rq_lockp.exit.i.i.i

__rq_lockp.exit.i.i.i:                            ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %21, %if.then.i.i.i.i ], [ %8, %land.rhs.i.i.i ]
  %dep_map.i.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i.i, i32 0, i32 4
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #15
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %do.end.i.i.i, label %lockdep_assert_rq_held.exit.i.i, !prof !111

do.end.i.i.i:                                     ; preds = %__rq_lockp.exit.i.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i.i

lockdep_assert_rq_held.exit.i.i:                  ; preds = %do.end.i.i.i, %__rq_lockp.exit.i.i.i, %if.then.i
  %22 = ptrtoint ptr %running_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %running_bw.i.i, align 8
  %sub.i.i = sub i64 %23, %14
  store i64 %sub.i.i, ptr %running_bw.i.i, align 8
  %cmp.i.i = icmp ugt i64 %sub.i.i, %16
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end29.i.i

land.rhs.i.i:                                     ; preds = %lockdep_assert_rq_held.exit.i.i
  %.b52.i.i = load i1, ptr @__sub_running_bw.__already_done, align 1
  br i1 %.b52.i.i, label %if.end29.i.i, label %if.then.i.i, !prof !114

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @__sub_running_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 175, i32 noundef 9, ptr noundef nonnull @.str.7) #15
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then.i.i, %land.rhs.i.i, %lockdep_assert_rq_held.exit.i.i
  %24 = ptrtoint ptr %running_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %running_bw.i.i, align 8
  %cmp38.i.i = icmp ugt i64 %25, %16
  br i1 %cmp38.i.i, label %if.then39.i.i, label %__sub_running_bw.exit.i

if.then39.i.i:                                    ; preds = %if.end29.i.i
  %26 = ptrtoint ptr %running_bw.i.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 0, ptr %running_bw.i.i, align 8
  br label %__sub_running_bw.exit.i

__sub_running_bw.exit.i:                          ; preds = %if.then39.i.i, %if.end29.i.i
  tail call fastcc void @cpufreq_update_util(ptr noundef %8) #15
  br label %sub_running_bw.exit

sub_running_bw.exit:                              ; preds = %__sub_running_bw.exit.i, %if.then6
  %27 = ptrtoint ptr %dl_non_contending to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load11 = load i8, ptr %dl_non_contending, align 4
  %bf.clear12 = and i8 %bf.load11, -33
  store i8 %bf.clear12, ptr %dl_non_contending, align 4
  %inactive_timer = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 11
  %call14 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %inactive_timer) #15
  %cmp15 = icmp eq i32 %call14, 1
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %sub_running_bw.exit
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !112
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !113
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i32, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then16
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end18, label %if.then10.i.i.i.i, !prof !114

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %if.end18

if.then.i32:                                      ; preds = %if.then16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !115
  tail call void @__put_task_struct(ptr noundef %p) #15
  br label %if.end18

if.end18:                                         ; preds = %if.then.i32, %if.then10.i.i.i.i, %if.end5.i.i.i.i, %sub_running_bw.exit, %do.body1
  %flags.i.i33 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 8
  %29 = ptrtoint ptr %flags.i.i33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i.i33, align 8
  %and.i.i34 = and i32 %30, 268435456
  %tobool.i.not.i35 = icmp eq i32 %and.i.i34, 0
  br i1 %tobool.i.not.i35, label %if.then.i38, label %sub_rq_bw.exit

if.then.i38:                                      ; preds = %if.end18
  %dl_bw.i36 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 4
  %31 = ptrtoint ptr %dl_bw.i36 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %dl_bw.i36, align 8
  %this_bw.i.i = getelementptr inbounds %struct.rq, ptr %8, i32 0, i32 16, i32 7
  %33 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %this_bw.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %35 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i.i37 = icmp eq i32 %35, 0
  br i1 %tobool.not.i.i.i37, label %lockdep_assert_rq_held.exit.i.i53, label %land.rhs.i.i.i42

land.rhs.i.i.i42:                                 ; preds = %if.then.i38
  %core_enabled.i.i.i.i40 = getelementptr %struct.rq, ptr %8, i32 0, i32 81
  %36 = ptrtoint ptr %core_enabled.i.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %core_enabled.i.i.i.i40, align 128
  %tobool.not.i.i.i.i41 = icmp eq i32 %37, 0
  br i1 %tobool.not.i.i.i.i41, label %__rq_lockp.exit.i.i.i49, label %if.then.i.i.i.i44

if.then.i.i.i.i44:                                ; preds = %land.rhs.i.i.i42
  %core.i.i.i.i43 = getelementptr %struct.rq, ptr %8, i32 0, i32 79
  %38 = ptrtoint ptr %core.i.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %core.i.i.i.i43, align 8
  br label %__rq_lockp.exit.i.i.i49

__rq_lockp.exit.i.i.i49:                          ; preds = %if.then.i.i.i.i44, %land.rhs.i.i.i42
  %retval.0.i.i.i.i45 = phi ptr [ %39, %if.then.i.i.i.i44 ], [ %8, %land.rhs.i.i.i42 ]
  %dep_map.i.i.i46 = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i.i45, i32 0, i32 4
  %call.i.i.i.i47 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i46, i32 noundef -1) #15
  %cmp.not.i.i.i48 = icmp eq i32 %call.i.i.i.i47, 0
  br i1 %cmp.not.i.i.i48, label %do.end.i.i.i50, label %lockdep_assert_rq_held.exit.i.i53, !prof !111

do.end.i.i.i50:                                   ; preds = %__rq_lockp.exit.i.i.i49
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i.i53

lockdep_assert_rq_held.exit.i.i53:                ; preds = %do.end.i.i.i50, %__rq_lockp.exit.i.i.i49, %if.then.i38
  %40 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %this_bw.i.i, align 8
  %sub.i.i51 = sub i64 %41, %32
  store i64 %sub.i.i51, ptr %this_bw.i.i, align 8
  %cmp.i.i52 = icmp ugt i64 %sub.i.i51, %34
  br i1 %cmp.i.i52, label %land.rhs.i.i54, label %if.end29.i.i57

land.rhs.i.i54:                                   ; preds = %lockdep_assert_rq_held.exit.i.i53
  %.b111.i.i = load i1, ptr @__sub_rq_bw.__already_done, align 1
  br i1 %.b111.i.i, label %if.end29.i.i57, label %if.then.i.i55, !prof !114

if.then.i.i55:                                    ; preds = %land.rhs.i.i54
  store i1 true, ptr @__sub_rq_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 199, i32 noundef 9, ptr noundef nonnull @.str.9) #15
  br label %if.end29.i.i57

if.end29.i.i57:                                   ; preds = %if.then.i.i55, %land.rhs.i.i54, %lockdep_assert_rq_held.exit.i.i53
  %42 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %this_bw.i.i, align 8
  %cmp38.i.i56 = icmp ugt i64 %43, %34
  br i1 %cmp38.i.i56, label %if.then39.i.i58, label %if.end41.i.i

if.then39.i.i58:                                  ; preds = %if.end29.i.i57
  %44 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 0, ptr %this_bw.i.i, align 8
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %if.then39.i.i58, %if.end29.i.i57
  %running_bw.i.i59 = getelementptr inbounds %struct.rq, ptr %8, i32 0, i32 16, i32 6
  %45 = ptrtoint ptr %running_bw.i.i59 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %running_bw.i.i59, align 8
  %47 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %this_bw.i.i, align 8
  %cmp44.i.i = icmp ugt i64 %46, %48
  br i1 %cmp44.i.i, label %land.rhs51.i.i, label %sub_rq_bw.exit

land.rhs51.i.i:                                   ; preds = %if.end41.i.i
  %.b109110.i.i = load i1, ptr @__sub_rq_bw.__already_done.10, align 1
  br i1 %.b109110.i.i, label %sub_rq_bw.exit, label %if.then62.i.i, !prof !114

if.then62.i.i:                                    ; preds = %land.rhs51.i.i
  store i1 true, ptr @__sub_rq_bw.__already_done.10, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 202, i32 noundef 9, ptr noundef nonnull @.str.11) #15
  br label %sub_rq_bw.exit

sub_rq_bw.exit:                                   ; preds = %if.then62.i.i, %land.rhs51.i.i, %if.end41.i.i, %if.end18
  tail call void @raw_spin_rq_unlock(ptr noundef %8) #15
  br label %cleanup

cleanup:                                          ; preds = %sub_rq_bw.exit, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @task_woken_dl(ptr noundef %rq, ptr nocapture noundef readonly %p) #0 align 64 {
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
  %tobool7.not = icmp sgt i32 %12, -1
  br i1 %tobool7.not, label %if.end, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true4
  %nr_cpus_allowed10 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 32
  %13 = ptrtoint ptr %nr_cpus_allowed10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr_cpus_allowed10, align 8
  %cmp11 = icmp slt i32 %14, 2
  br i1 %cmp11, label %while.cond.i.preheader, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true8
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 8
  %15 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %16, 268435456
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %dl_entity_preempt.exit, label %if.end

dl_entity_preempt.exit:                           ; preds = %lor.lhs.false
  %deadline.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 7
  %17 = ptrtoint ptr %deadline.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %deadline.i, align 8
  %deadline1.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 20, i32 7
  %19 = ptrtoint ptr %deadline1.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %deadline1.i, align 8
  %sub.i.i = sub i64 %18, %20
  %cmp.i.i = icmp slt i64 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %dl_entity_preempt.exit, %land.lhs.true8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %while.cond.i.preheader
  %call.i = tail call fastcc i32 @push_dl_task(ptr noundef %rq) #15
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %while.cond.i

if.end:                                           ; preds = %while.cond.i, %dl_entity_preempt.exit, %lor.lhs.false, %land.lhs.true4, %land.lhs.true3, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_cpus_allowed_dl(ptr noundef %p, ptr noundef %new_mask, i32 noundef %flags) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %prio.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 13
  %0 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prio.i, align 8
  %tobool.not = icmp sgt i32 %1, -1
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !111

do.body4:                                         ; preds = %entry
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2435, 0\0A.popsection", ""() #15, !srcloc !121
  unreachable

do.body10:                                        ; preds = %entry
  %stack.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %stack.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stack.i, align 4
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %cpu.i, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, ptrtoint (ptr @runqueues to i32)
  %8 = inttoptr i32 %add to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %rd = getelementptr inbounds %struct.rq, ptr %8, i32 0, i32 35
  %10 = ptrtoint ptr %rd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rd, align 8
  %span = getelementptr inbounds %struct.root_domain, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %span to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %span, align 8
  %call.i.i = tail call i32 @__bitmap_intersects(ptr noundef %13, ptr noundef %new_mask, i32 noundef %9) #15
  %tobool.i.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.i.not, label %if.then16, label %if.end22

if.then16:                                        ; preds = %do.body10
  %cpu.i31 = getelementptr inbounds %struct.rq, ptr %8, i32 0, i32 46
  %14 = ptrtoint ptr %cpu.i31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu.i31, align 4
  %call.i = tail call i32 @rcu_read_lock_sched_held() #15
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %dl_bw_of.exit

land.lhs.true.i:                                  ; preds = %if.then16
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %dl_bw_of.exit, label %land.lhs.true3.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b8.i = load i1, ptr @dl_bw_of.__warned, align 1
  br i1 %.b8.i, label %dl_bw_of.exit, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  store i1 true, ptr @dl_bw_of.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 72, ptr noundef nonnull @.str.15) #15
  br label %dl_bw_of.exit

dl_bw_of.exit:                                    ; preds = %if.then.i, %land.lhs.true3.i, %land.lhs.true.i, %if.then16
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %17, ptrtoint (ptr @runqueues to i32)
  %18 = inttoptr i32 %add.i to ptr
  %rd.i = getelementptr inbounds %struct.rq, ptr %18, i32 0, i32 35
  %19 = ptrtoint ptr %rd.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rd.i, align 8
  %dl_bw.i = getelementptr inbounds %struct.root_domain, ptr %20, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %dl_bw.i) #15
  %dl_bw = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 4
  %21 = ptrtoint ptr %dl_bw to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %dl_bw, align 8
  %23 = ptrtoint ptr %stack.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %stack.i, align 4
  %cpu.i33 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu.i33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %cpu.i33, align 4
  %arrayidx.i34 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx.i34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i34, align 4
  %add.i35 = add i32 %28, ptrtoint (ptr @runqueues to i32)
  %29 = inttoptr i32 %add.i35 to ptr
  %rd2.i = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 35
  %30 = ptrtoint ptr %rd2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rd2.i, align 8
  %call.i36 = tail call i32 @rcu_read_lock_sched_held() #15
  %tobool.not.i37 = icmp eq i32 %call.i36, 0
  br i1 %tobool.not.i37, label %land.lhs.true.i38, label %do.end9.i

land.lhs.true.i38:                                ; preds = %dl_bw_of.exit
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %do.end9.i, label %land.lhs.true6.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i38
  %.b24.i = load i1, ptr @dl_bw_cpus.__warned, align 1
  br i1 %.b24.i, label %do.end9.i, label %if.then.i39

if.then.i39:                                      ; preds = %land.lhs.true6.i
  store i1 true, ptr @dl_bw_cpus.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 82, ptr noundef nonnull @.str.15) #15
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then.i39, %land.lhs.true6.i, %land.lhs.true.i38, %dl_bw_of.exit
  %span.i = getelementptr inbounds %struct.root_domain, ptr %31, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %32 = load i32, ptr @nr_cpu_ids, align 4
  %33 = ptrtoint ptr %span.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %span.i, align 8
  %call.i.i.i = tail call i32 @__bitmap_subset(ptr noundef %34, ptr noundef nonnull @__cpu_active_mask, i32 noundef %32) #15
  %tobool11.not.i = icmp eq i32 %call.i.i.i, 0
  %35 = ptrtoint ptr %span.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %span.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %37 = load i32, ptr @nr_cpu_ids, align 4
  br i1 %tobool11.not.i, label %for.cond.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end9.i
  %call4.i.i.i = tail call i32 @__bitmap_weight(ptr noundef %36, i32 noundef %37) #15
  br label %dl_bw_cpus.exit

for.cond.i:                                       ; preds = %for.cond.i, %do.end9.i
  %i.addr.0.i = phi i32 [ %call17.i, %for.cond.i ], [ -1, %do.end9.i ]
  %cpus.0.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %do.end9.i ]
  %call17.i = tail call i32 @cpumask_next_and(i32 noundef %i.addr.0.i, ptr noundef %36, ptr noundef nonnull @__cpu_active_mask) #17
  %cmp.i = icmp ult i32 %call17.i, %37
  %inc.i = add i32 %cpus.0.i, 1
  br i1 %cmp.i, label %for.cond.i, label %dl_bw_cpus.exit

dl_bw_cpus.exit:                                  ; preds = %for.cond.i, %if.end.i.i.i
  %retval.0.i = phi i32 [ %call4.i.i.i, %if.end.i.i.i ], [ %cpus.0.i, %for.cond.i ]
  %total_bw.i = getelementptr inbounds %struct.root_domain, ptr %20, i32 0, i32 9, i32 2
  %38 = ptrtoint ptr %total_bw.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %total_bw.i, align 8
  %sub.i = sub i64 %39, %22
  store i64 %sub.i, ptr %total_bw.i, align 8
  %conv.i = trunc i64 %22 to i32
  %div.i = sdiv i32 %conv.i, %retval.0.i
  %conv1.i = sext i32 %div.i to i64
  %call.i.i40 = tail call i32 @rcu_read_lock_sched_held() #15
  %tobool.not.i.i = icmp eq i32 %call.i.i40, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %dl_bw_cpus.exit
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %do.end.i.i, label %land.lhs.true3.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b14.i.i = load i1, ptr @__dl_update.__warned, align 1
  br i1 %.b14.i.i, label %do.end.i.i, label %if.then.i.i41

if.then.i.i41:                                    ; preds = %land.lhs.true3.i.i
  store i1 true, ptr @__dl_update.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2758, ptr noundef nonnull @.str.15) #15
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i41, %land.lhs.true3.i.i, %land.lhs.true.i.i, %dl_bw_cpus.exit
  %span.i.i = getelementptr %struct.root_domain, ptr %20, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %40 = load i32, ptr @nr_cpu_ids, align 4
  %41 = ptrtoint ptr %span.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %span.i.i, align 8
  %call515.i.i = tail call i32 @cpumask_next_and(i32 noundef -1, ptr noundef %42, ptr noundef nonnull @__cpu_active_mask) #17
  %cmp16.i.i = icmp ult i32 %call515.i.i, %40
  br i1 %cmp16.i.i, label %for.body.i.i, label %__dl_sub.exit

for.body.i.i:                                     ; preds = %for.body.i.i, %do.end.i.i
  %call517.i.i = phi i32 [ %call5.i.i, %for.body.i.i ], [ %call515.i.i, %do.end.i.i ]
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call517.i.i
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %44, ptrtoint (ptr @runqueues to i32)
  %45 = inttoptr i32 %add.i.i to ptr
  %extra_bw.i.i = getelementptr inbounds %struct.rq, ptr %45, i32 0, i32 16, i32 8
  %46 = ptrtoint ptr %extra_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %extra_bw.i.i, align 8
  %add11.i.i = add i64 %47, %conv1.i
  store i64 %add11.i.i, ptr %extra_bw.i.i, align 8
  %48 = ptrtoint ptr %span.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %span.i.i, align 8
  %call5.i.i = tail call i32 @cpumask_next_and(i32 noundef %call517.i.i, ptr noundef %49, ptr noundef nonnull @__cpu_active_mask) #17
  %cmp.i.i = icmp ult i32 %call5.i.i, %40
  br i1 %cmp.i.i, label %for.body.i.i, label %__dl_sub.exit

__dl_sub.exit:                                    ; preds = %for.body.i.i, %do.end.i.i
  tail call void @_raw_spin_unlock(ptr noundef %dl_bw.i) #15
  br label %if.end22

if.end22:                                         ; preds = %__dl_sub.exit, %do.body10
  tail call void @set_cpus_allowed_common(ptr noundef %p, ptr noundef %new_mask, i32 noundef %flags) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rq_online_dl(ptr nocapture noundef readonly %rq) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %overloaded = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 4
  %0 = ptrtoint ptr %overloaded to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %overloaded, align 4
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
  %dlo_mask.i = getelementptr inbounds %struct.root_domain, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %dlo_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dlo_mask.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i = icmp ugt i32 %10, %5
  br i1 %cmp.not.i.i.i.i, label %cpumask_set_cpu.exit.i, label %land.rhs.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %if.end.i
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %cpumask_set_cpu.exit.i, label %if.then.i.i.i.i, !prof !114

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpumask_set_cpu.exit.i

cpumask_set_cpu.exit.i:                           ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i, %if.end.i
  tail call void @_set_bit(i32 noundef %5, ptr noundef %9) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !122
  %11 = ptrtoint ptr %rd.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rd.i, align 8
  %dlo_count.i = getelementptr inbounds %struct.root_domain, ptr %12, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dlo_count.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %dlo_count.i, i32 1, i32 3, i32 1) #15
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dlo_count.i, ptr %dlo_count.i, i32 1, ptr elementtype(i32) %dlo_count.i) #15, !srcloc !123
  br label %if.end

if.end:                                           ; preds = %cpumask_set_cpu.exit.i, %if.then, %entry
  %rd = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 35
  %14 = ptrtoint ptr %rd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rd, align 8
  %cpudl = getelementptr inbounds %struct.root_domain, ptr %15, i32 0, i32 10
  %cpu = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 46
  %16 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu, align 4
  tail call void @cpudl_set_freecpu(ptr noundef %cpudl, i32 noundef %17) #15
  %dl_nr_running = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 1
  %18 = ptrtoint ptr %dl_nr_running to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dl_nr_running, align 8
  %cmp.not = icmp eq i32 %19, 0
  br i1 %cmp.not, label %if.end7, label %if.then2

if.then2:                                         ; preds = %if.end
  %20 = ptrtoint ptr %rd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rd, align 8
  %cpudl4 = getelementptr inbounds %struct.root_domain, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu, align 4
  %earliest_dl = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 2
  %24 = ptrtoint ptr %earliest_dl to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %earliest_dl, align 8
  tail call void @cpudl_set(ptr noundef %cpudl4, i32 noundef %23, i64 noundef %25) #15
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %if.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rq_offline_dl(ptr nocapture noundef readonly %rq) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %overloaded = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 4
  %0 = ptrtoint ptr %overloaded to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %overloaded, align 4
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
  %dlo_count.i = getelementptr inbounds %struct.root_domain, ptr %5, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dlo_count.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %dlo_count.i, i32 1, i32 3, i32 1) #15
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dlo_count.i, ptr %dlo_count.i, i32 1, ptr elementtype(i32) %dlo_count.i) #15, !srcloc !124
  %cpu.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 46
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %9 = ptrtoint ptr %rd.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rd.i, align 8
  %dlo_mask.i = getelementptr inbounds %struct.root_domain, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %dlo_mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dlo_mask.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i = icmp ugt i32 %13, %8
  br i1 %cmp.not.i.i.i.i, label %cpumask_clear_cpu.exit.i, label %land.rhs.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %if.end.i
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %cpumask_clear_cpu.exit.i, label %if.then.i.i.i.i, !prof !114

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpumask_clear_cpu.exit.i

cpumask_clear_cpu.exit.i:                         ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i, %if.end.i
  tail call void @_clear_bit(i32 noundef %8, ptr noundef %12) #15
  br label %if.end

if.end:                                           ; preds = %cpumask_clear_cpu.exit.i, %if.then, %entry
  %rd = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 35
  %14 = ptrtoint ptr %rd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rd, align 8
  %cpudl = getelementptr inbounds %struct.root_domain, ptr %15, i32 0, i32 10
  %cpu = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 46
  %16 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu, align 4
  tail call void @cpudl_clear(ptr noundef %cpudl, i32 noundef %17) #15
  %18 = ptrtoint ptr %rd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rd, align 8
  %cpudl2 = getelementptr inbounds %struct.root_domain, ptr %19, i32 0, i32 10
  %20 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu, align 4
  tail call void @cpudl_clear_freecpu(ptr noundef %cpudl2, i32 noundef %21) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @find_lock_later_rq(ptr noundef %task, ptr noundef %rq) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu2 = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 46
  %deadline = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 20, i32 7
  %stack.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 1
  %cpus_mask = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 35
  %on_cpu.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 5
  %prio.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 13
  %on_rq.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 12
  %core_enabled.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 81
  %core.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 79
  br label %for.body

for.body:                                         ; preds = %double_unlock_balance.exit, %entry
  %tries.095 = phi i32 [ 0, %entry ], [ %inc, %double_unlock_balance.exit ]
  %call = tail call fastcc i32 @find_later_rq(ptr noundef %task)
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
  %dl_nr_running = getelementptr inbounds %struct.rq, ptr %4, i32 0, i32 16, i32 1
  %5 = ptrtoint ptr %dl_nr_running to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dl_nr_running, align 8
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body
  %7 = ptrtoint ptr %deadline to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %deadline, align 8
  %earliest_dl = getelementptr inbounds %struct.rq, ptr %4, i32 0, i32 16, i32 2
  %9 = ptrtoint ptr %earliest_dl to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %earliest_dl, align 8
  %sub.i = sub i64 %8, %10
  %cmp.i = icmp slt i64 %sub.i, 0
  br i1 %cmp.i, label %if.end9, label %for.end

if.end9:                                          ; preds = %land.lhs.true, %do.body
  %call10 = tail call fastcc i32 @double_lock_balance(ptr noundef %rq, ptr noundef %4)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end41, label %do.body13

do.body13:                                        ; preds = %if.end9
  %11 = ptrtoint ptr %stack.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stack.i, align 4
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %cpu.i, align 4
  %arrayidx21 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx21, align 4
  %add22 = add i32 %16, ptrtoint (ptr @runqueues to i32)
  %17 = inttoptr i32 %add22 to ptr
  %cmp23.not = icmp eq ptr %17, %rq
  br i1 %cmp23.not, label %lor.lhs.false24, label %if.then39, !prof !114

lor.lhs.false24:                                  ; preds = %do.body13
  %cpu25 = getelementptr inbounds %struct.rq, ptr %4, i32 0, i32 46
  %18 = ptrtoint ptr %cpu25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu25, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i = icmp ugt i32 %20, %19
  br i1 %cmp.not.i.i.i, label %cpumask_test_cpu.exit, label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %lor.lhs.false24
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %cpumask_test_cpu.exit, label %if.then.i.i.i, !prof !114

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i, %lor.lhs.false24
  %div3.i.i = lshr i32 %19, 5
  %arrayidx.i.i = getelementptr i32, ptr %cpus_mask, i32 %div3.i.i
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %19, 31
  %23 = shl nuw i32 1, %and.i.i
  %24 = and i32 %22, %23
  %tobool27.not = icmp eq i32 %24, 0
  br i1 %tobool27.not, label %if.then39, label %lor.lhs.false28, !prof !111

lor.lhs.false28:                                  ; preds = %cpumask_test_cpu.exit
  %25 = ptrtoint ptr %on_cpu.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %on_cpu.i, align 4
  %tobool30.not = icmp eq i32 %26, 0
  br i1 %tobool30.not, label %lor.lhs.false31, label %if.then39, !prof !114

lor.lhs.false31:                                  ; preds = %lor.lhs.false28
  %27 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %prio.i, align 8
  %tobool33.not = icmp sgt i32 %28, -1
  br i1 %tobool33.not, label %if.then39, label %lor.rhs, !prof !111

lor.rhs:                                          ; preds = %lor.lhs.false31
  %29 = ptrtoint ptr %on_rq.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %on_rq.i, align 4
  %cmp.i80.not = icmp eq i32 %30, 1
  br i1 %cmp.i80.not, label %if.end41, label %if.then39, !prof !114

if.then39:                                        ; preds = %lor.rhs, %lor.lhs.false31, %lor.lhs.false28, %cpumask_test_cpu.exit, %do.body13
  %31 = inttoptr i32 %add to ptr
  tail call fastcc void @double_unlock_balance(ptr noundef %rq, ptr noundef %31)
  br label %for.end

if.end41:                                         ; preds = %lor.rhs, %if.end9
  %32 = ptrtoint ptr %dl_nr_running to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dl_nr_running, align 8
  %tobool44.not = icmp eq i32 %33, 0
  br i1 %tobool44.not, label %for.end.loopexit.split.loop.exit98, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %if.end41
  %34 = ptrtoint ptr %deadline to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %deadline, align 8
  %earliest_dl49 = getelementptr inbounds %struct.rq, ptr %4, i32 0, i32 16, i32 2
  %36 = ptrtoint ptr %earliest_dl49 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %earliest_dl49, align 8
  %sub.i81 = sub i64 %35, %37
  %cmp.i82 = icmp slt i64 %sub.i81, 0
  br i1 %cmp.i82, label %for.end.loopexit.split.loop.exit, label %if.end53

if.end53:                                         ; preds = %lor.lhs.false45
  %38 = ptrtoint ptr %core_enabled.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %core_enabled.i.i, align 128
  %tobool.not.i.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i.i, label %__rq_lockp.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end53
  %40 = ptrtoint ptr %core.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %core.i.i, align 8
  br label %__rq_lockp.exit.i

__rq_lockp.exit.i:                                ; preds = %if.then.i.i, %if.end53
  %retval.0.i.i = phi ptr [ %41, %if.then.i.i ], [ %rq, %if.end53 ]
  %core_enabled.i5.i = getelementptr inbounds %struct.rq, ptr %4, i32 0, i32 81
  %42 = ptrtoint ptr %core_enabled.i5.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %core_enabled.i5.i, align 128
  %tobool.not.i6.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i6.i, label %__rq_lockp.exit10.i, label %if.then.i8.i

if.then.i8.i:                                     ; preds = %__rq_lockp.exit.i
  %core.i7.i = getelementptr inbounds %struct.rq, ptr %4, i32 0, i32 79
  %44 = ptrtoint ptr %core.i7.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %core.i7.i, align 8
  br label %__rq_lockp.exit10.i

__rq_lockp.exit10.i:                              ; preds = %if.then.i8.i, %__rq_lockp.exit.i
  %retval.0.i9.i = phi ptr [ %45, %if.then.i8.i ], [ %4, %__rq_lockp.exit.i ]
  %cmp.not.i = icmp eq ptr %retval.0.i.i, %retval.0.i9.i
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %__rq_lockp.exit10.i
  tail call void @raw_spin_rq_unlock(ptr noundef %4) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %__rq_lockp.exit10.i
  %46 = ptrtoint ptr %core_enabled.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %core_enabled.i.i, align 128
  %tobool.not.i12.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i12.i, label %double_unlock_balance.exit, label %if.then.i14.i

if.then.i14.i:                                    ; preds = %if.end.i
  %48 = ptrtoint ptr %core.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %core.i.i, align 8
  br label %double_unlock_balance.exit

double_unlock_balance.exit:                       ; preds = %if.then.i14.i, %if.end.i
  %retval.0.i15.i = phi ptr [ %49, %if.then.i14.i ], [ %rq, %if.end.i ]
  %dep_map.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i15.i, i32 0, i32 4
  %50 = tail call ptr @llvm.returnaddress(i32 0) #15
  %51 = ptrtoint ptr %50 to i32
  %name.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i15.i, i32 0, i32 4, i32 2
  %52 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %name.i.i, align 4
  %54 = ptrtoint ptr %dep_map.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dep_map.i, align 4
  tail call void @lock_set_class(ptr noundef %dep_map.i, ptr noundef %53, ptr noundef %55, i32 noundef 0, i32 noundef %51) #15
  %inc = add nuw nsw i32 %tries.095, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %for.body

for.end.loopexit.split.loop.exit:                 ; preds = %lor.lhs.false45
  %56 = inttoptr i32 %add to ptr
  br label %for.end

for.end.loopexit.split.loop.exit98:               ; preds = %if.end41
  %57 = inttoptr i32 %add to ptr
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit.split.loop.exit98, %for.end.loopexit.split.loop.exit, %double_unlock_balance.exit, %if.then39, %land.lhs.true, %lor.lhs.false, %for.body
  %later_rq.1 = phi ptr [ null, %if.then39 ], [ %56, %for.end.loopexit.split.loop.exit ], [ %57, %for.end.loopexit.split.loop.exit98 ], [ null, %double_unlock_balance.exit ], [ null, %lor.lhs.false ], [ null, %for.body ], [ null, %land.lhs.true ]
  ret ptr %later_rq.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @task_tick_dl(ptr noundef %rq, ptr noundef readonly %p, i32 noundef %queued) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @update_curr_dl(ptr noundef %rq)
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
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #15
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %lockdep_assert_rq_held.exit.i, !prof !111

do.end.i.i:                                       ; preds = %__rq_lockp.exit.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
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
  br i1 %.b37.i.i, label %rq_clock_pelt.exit, label %if.then.i.i, !prof !114

if.then.i.i:                                      ; preds = %land.rhs.i4.i
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #15
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
  %call1 = tail call i32 @update_dl_rq_load_avg(i64 noundef %sub.i, ptr noundef %rq, i32 noundef 1) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ([25 x %struct.static_key], ptr @sched_feat_keys, i32 0, i32 7), ptr blockaddress(@task_tick_dl, %if.end.i)) #15
          to label %hrtick_enabled_dl.exit [label %if.end.i], !srcloc !117

if.end.i:                                         ; preds = %rq_clock_pelt.exit
  %cpu.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 46
  %11 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i.i.i = icmp ugt i32 %13, %12
  br i1 %cmp.not.i.i.i.i.i.i, label %cpu_active.exit.i.i, label %land.rhs.i.i.i.i.i.i

land.rhs.i.i.i.i.i.i:                             ; preds = %if.end.i
  %.b37.i.i.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i.i.i, label %cpu_active.exit.i.i, label %if.then.i.i.i.i.i.i, !prof !114

if.then.i.i.i.i.i.i:                              ; preds = %land.rhs.i.i.i.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_active.exit.i.i

cpu_active.exit.i.i:                              ; preds = %if.then.i.i.i.i.i.i, %land.rhs.i.i.i.i.i.i, %if.end.i
  %div3.i.i.i.i.i = lshr i32 %12, 5
  %arrayidx.i.i.i.i.i = getelementptr i32, ptr @__cpu_active_mask, i32 %div3.i.i.i.i.i
  %14 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx.i.i.i.i.i, align 4
  %and.i.i.i.i.i = and i32 %12, 31
  %16 = shl nuw i32 1, %and.i.i.i.i.i
  %17 = and i32 %15, %16
  %tobool.i.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.i.not.i.i, label %if.end, label %if.end.i.i

if.end.i.i:                                       ; preds = %cpu_active.exit.i.i
  %base.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 66, i32 3
  %18 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %hres_active.i.i.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %hres_active.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load.i.i.i = load i8, ptr %hres_active.i.i.i, align 8
  %phi.cmp = icmp sgt i8 %bf.load.i.i.i, -1
  br label %hrtick_enabled_dl.exit

hrtick_enabled_dl.exit:                           ; preds = %if.end.i.i, %rq_clock_pelt.exit
  %retval.0.i = phi i1 [ true, %rq_clock_pelt.exit ], [ %phi.cmp, %if.end.i.i ]
  %tobool3.not = icmp eq i32 %queued, 0
  %or.cond = or i1 %tobool3.not, %retval.0.i
  br i1 %or.cond, label %if.end, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %hrtick_enabled_dl.exit
  %runtime = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 6
  %23 = ptrtoint ptr %runtime to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %runtime, align 8
  %cmp = icmp sgt i64 %24, 0
  br i1 %cmp, label %land.lhs.true5, label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true4
  %dl.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20
  %rb_leftmost.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 0, i32 1
  %25 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rb_leftmost.i, align 4
  %cmp.i.not = icmp eq ptr %26, %dl.i
  br i1 %cmp.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true5
  tail call void @hrtick_start(ptr noundef %rq, i64 noundef %24) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true5, %land.lhs.true4, %hrtick_enabled_dl.exit, %cpu_active.exit.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @task_fork_dl(ptr nocapture noundef %p) #5 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @switched_from_dl(ptr noundef %rq, ptr noundef %p) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %on_rq.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 12
  %0 = ptrtoint ptr %on_rq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %on_rq.i, align 4
  %cmp.i.not = icmp eq i32 %1, 1
  br i1 %cmp.i.not, label %land.lhs.true, label %if.then4

land.lhs.true:                                    ; preds = %entry
  %dl_runtime = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 1
  %2 = ptrtoint ptr %dl_runtime to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %dl_runtime, align 8
  %tobool1.not = icmp eq i64 %3, 0
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @task_non_contending(ptr noundef %p)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true
  %4 = ptrtoint ptr %on_rq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr = load i32, ptr %on_rq.i, align 4
  %cmp.i46.not = icmp eq i32 %.pr, 1
  br i1 %cmp.i46.not, label %if.end13, label %if.then4

if.then4:                                         ; preds = %if.end, %entry
  %dl_non_contending = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 9
  %5 = ptrtoint ptr %dl_non_contending to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %dl_non_contending, align 4
  %6 = and i8 %bf.load, 32
  %tobool6.not = icmp eq i8 %6, 0
  br i1 %tobool6.not, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.then4
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 8
  %7 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %8, 268435456
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then.i, label %if.end10

if.then.i:                                        ; preds = %if.then7
  %dl_bw.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 4
  %9 = ptrtoint ptr %dl_bw.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %dl_bw.i, align 8
  %running_bw.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 6
  %11 = ptrtoint ptr %running_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %running_bw.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %13 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i.i, label %lockdep_assert_rq_held.exit.i.i, label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.then.i
  %core_enabled.i.i.i.i = getelementptr %struct.rq, ptr %rq, i32 0, i32 81
  %14 = ptrtoint ptr %core_enabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %core_enabled.i.i.i.i, align 128
  %tobool.not.i.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i.i.i, label %__rq_lockp.exit.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i
  %core.i.i.i.i = getelementptr %struct.rq, ptr %rq, i32 0, i32 79
  %16 = ptrtoint ptr %core.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %core.i.i.i.i, align 8
  br label %__rq_lockp.exit.i.i.i

__rq_lockp.exit.i.i.i:                            ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %17, %if.then.i.i.i.i ], [ %rq, %land.rhs.i.i.i ]
  %dep_map.i.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i.i, i32 0, i32 4
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #15
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %do.end.i.i.i, label %lockdep_assert_rq_held.exit.i.i, !prof !111

do.end.i.i.i:                                     ; preds = %__rq_lockp.exit.i.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i.i

lockdep_assert_rq_held.exit.i.i:                  ; preds = %do.end.i.i.i, %__rq_lockp.exit.i.i.i, %if.then.i
  %18 = ptrtoint ptr %running_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %running_bw.i.i, align 8
  %sub.i.i = sub i64 %19, %10
  store i64 %sub.i.i, ptr %running_bw.i.i, align 8
  %cmp.i.i = icmp ugt i64 %sub.i.i, %12
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end29.i.i

land.rhs.i.i:                                     ; preds = %lockdep_assert_rq_held.exit.i.i
  %.b52.i.i = load i1, ptr @__sub_running_bw.__already_done, align 1
  br i1 %.b52.i.i, label %if.end29.i.i, label %if.then.i.i, !prof !114

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @__sub_running_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 175, i32 noundef 9, ptr noundef nonnull @.str.7) #15
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then.i.i, %land.rhs.i.i, %lockdep_assert_rq_held.exit.i.i
  %20 = ptrtoint ptr %running_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %running_bw.i.i, align 8
  %cmp38.i.i = icmp ugt i64 %21, %12
  br i1 %cmp38.i.i, label %if.then39.i.i, label %__sub_running_bw.exit.i

if.then39.i.i:                                    ; preds = %if.end29.i.i
  %22 = ptrtoint ptr %running_bw.i.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %running_bw.i.i, align 8
  br label %__sub_running_bw.exit.i

__sub_running_bw.exit.i:                          ; preds = %if.then39.i.i, %if.end29.i.i
  tail call fastcc void @cpufreq_update_util(ptr noundef %rq) #15
  br label %if.end10

if.end10:                                         ; preds = %__sub_running_bw.exit.i, %if.then7, %if.then4
  %flags.i.i48 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 8
  %23 = ptrtoint ptr %flags.i.i48 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i.i48, align 8
  %and.i.i49 = and i32 %24, 268435456
  %tobool.i.not.i50 = icmp eq i32 %and.i.i49, 0
  br i1 %tobool.i.not.i50, label %if.then.i53, label %if.end13

if.then.i53:                                      ; preds = %if.end10
  %dl_bw.i51 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 4
  %25 = ptrtoint ptr %dl_bw.i51 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %dl_bw.i51, align 8
  %this_bw.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 7
  %27 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %this_bw.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %29 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i.i52 = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i.i52, label %lockdep_assert_rq_held.exit.i.i68, label %land.rhs.i.i.i57

land.rhs.i.i.i57:                                 ; preds = %if.then.i53
  %core_enabled.i.i.i.i55 = getelementptr %struct.rq, ptr %rq, i32 0, i32 81
  %30 = ptrtoint ptr %core_enabled.i.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %core_enabled.i.i.i.i55, align 128
  %tobool.not.i.i.i.i56 = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i.i.i56, label %__rq_lockp.exit.i.i.i64, label %if.then.i.i.i.i59

if.then.i.i.i.i59:                                ; preds = %land.rhs.i.i.i57
  %core.i.i.i.i58 = getelementptr %struct.rq, ptr %rq, i32 0, i32 79
  %32 = ptrtoint ptr %core.i.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %core.i.i.i.i58, align 8
  br label %__rq_lockp.exit.i.i.i64

__rq_lockp.exit.i.i.i64:                          ; preds = %if.then.i.i.i.i59, %land.rhs.i.i.i57
  %retval.0.i.i.i.i60 = phi ptr [ %33, %if.then.i.i.i.i59 ], [ %rq, %land.rhs.i.i.i57 ]
  %dep_map.i.i.i61 = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i.i60, i32 0, i32 4
  %call.i.i.i.i62 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i61, i32 noundef -1) #15
  %cmp.not.i.i.i63 = icmp eq i32 %call.i.i.i.i62, 0
  br i1 %cmp.not.i.i.i63, label %do.end.i.i.i65, label %lockdep_assert_rq_held.exit.i.i68, !prof !111

do.end.i.i.i65:                                   ; preds = %__rq_lockp.exit.i.i.i64
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i.i68

lockdep_assert_rq_held.exit.i.i68:                ; preds = %do.end.i.i.i65, %__rq_lockp.exit.i.i.i64, %if.then.i53
  %34 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %this_bw.i.i, align 8
  %sub.i.i66 = sub i64 %35, %26
  store i64 %sub.i.i66, ptr %this_bw.i.i, align 8
  %cmp.i.i67 = icmp ugt i64 %sub.i.i66, %28
  br i1 %cmp.i.i67, label %land.rhs.i.i69, label %if.end29.i.i72

land.rhs.i.i69:                                   ; preds = %lockdep_assert_rq_held.exit.i.i68
  %.b111.i.i = load i1, ptr @__sub_rq_bw.__already_done, align 1
  br i1 %.b111.i.i, label %if.end29.i.i72, label %if.then.i.i70, !prof !114

if.then.i.i70:                                    ; preds = %land.rhs.i.i69
  store i1 true, ptr @__sub_rq_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 199, i32 noundef 9, ptr noundef nonnull @.str.9) #15
  br label %if.end29.i.i72

if.end29.i.i72:                                   ; preds = %if.then.i.i70, %land.rhs.i.i69, %lockdep_assert_rq_held.exit.i.i68
  %36 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %this_bw.i.i, align 8
  %cmp38.i.i71 = icmp ugt i64 %37, %28
  br i1 %cmp38.i.i71, label %if.then39.i.i73, label %if.end41.i.i

if.then39.i.i73:                                  ; preds = %if.end29.i.i72
  %38 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 0, ptr %this_bw.i.i, align 8
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %if.then39.i.i73, %if.end29.i.i72
  %running_bw.i.i74 = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 6
  %39 = ptrtoint ptr %running_bw.i.i74 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %running_bw.i.i74, align 8
  %41 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %this_bw.i.i, align 8
  %cmp44.i.i = icmp ugt i64 %40, %42
  br i1 %cmp44.i.i, label %land.rhs51.i.i, label %if.end13

land.rhs51.i.i:                                   ; preds = %if.end41.i.i
  %.b109110.i.i = load i1, ptr @__sub_rq_bw.__already_done.10, align 1
  br i1 %.b109110.i.i, label %if.end13, label %if.then62.i.i, !prof !114

if.then62.i.i:                                    ; preds = %land.rhs51.i.i
  store i1 true, ptr @__sub_rq_bw.__already_done.10, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 202, i32 noundef 9, ptr noundef nonnull @.str.11) #15
  br label %if.end13

if.end13:                                         ; preds = %if.then62.i.i, %land.rhs51.i.i, %if.end41.i.i, %if.end10, %if.end
  %dl_non_contending15 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 9
  %43 = ptrtoint ptr %dl_non_contending15 to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load16 = load i8, ptr %dl_non_contending15, align 4
  %44 = and i8 %bf.load16, 32
  %tobool20.not = icmp eq i8 %44, 0
  br i1 %tobool20.not, label %if.end26, label %if.then21

if.then21:                                        ; preds = %if.end13
  %bf.clear25 = and i8 %bf.load16, -33
  %45 = ptrtoint ptr %dl_non_contending15 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %bf.clear25, ptr %dl_non_contending15, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.end13
  %46 = ptrtoint ptr %on_rq.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %on_rq.i, align 4
  %cmp.i76.not = icmp eq i32 %47, 1
  br i1 %cmp.i76.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %if.end26
  %dl_nr_running = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 1
  %48 = ptrtoint ptr %dl_nr_running to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dl_nr_running, align 8
  %tobool30.not = icmp eq i32 %49, 0
  br i1 %tobool30.not, label %if.end32, label %return

if.end32:                                         ; preds = %lor.lhs.false
  %cpu.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 46
  %50 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %51
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %53, ptrtoint (ptr @dl_pull_head to i32)
  %54 = inttoptr i32 %add.i to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %55 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i.i78 = icmp eq i32 %55, 0
  br i1 %tobool.not.i.i.i78, label %lockdep_assert_rq_held.exit.i.i90, label %land.rhs.i.i.i81

land.rhs.i.i.i81:                                 ; preds = %if.end32
  %core_enabled.i.i.i.i79 = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 81
  %56 = ptrtoint ptr %core_enabled.i.i.i.i79 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %core_enabled.i.i.i.i79, align 128
  %tobool.not.i.i.i.i80 = icmp eq i32 %57, 0
  br i1 %tobool.not.i.i.i.i80, label %__rq_lockp.exit.i.i.i88, label %if.then.i.i.i.i83

if.then.i.i.i.i83:                                ; preds = %land.rhs.i.i.i81
  %core.i.i.i.i82 = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 79
  %58 = ptrtoint ptr %core.i.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %core.i.i.i.i82, align 8
  br label %__rq_lockp.exit.i.i.i88

__rq_lockp.exit.i.i.i88:                          ; preds = %if.then.i.i.i.i83, %land.rhs.i.i.i81
  %retval.0.i.i.i.i84 = phi ptr [ %59, %if.then.i.i.i.i83 ], [ %rq, %land.rhs.i.i.i81 ]
  %dep_map.i.i.i85 = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i.i84, i32 0, i32 4
  %call.i.i.i.i86 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i85, i32 noundef -1) #15
  %cmp.not.i.i.i87 = icmp eq i32 %call.i.i.i.i86, 0
  br i1 %cmp.not.i.i.i87, label %do.end.i.i.i89, label %lockdep_assert_rq_held.exit.i.i90, !prof !111

do.end.i.i.i89:                                   ; preds = %__rq_lockp.exit.i.i.i88
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i.i90

lockdep_assert_rq_held.exit.i.i90:                ; preds = %do.end.i.i.i89, %__rq_lockp.exit.i.i.i88, %if.end32
  %60 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %54, align 4
  %tobool.not.i.i = icmp eq ptr %61, null
  br i1 %tobool.not.i.i, label %lor.rhs.i.i, label %return, !prof !114

lor.rhs.i.i:                                      ; preds = %lockdep_assert_rq_held.exit.i.i90
  %balance_callback.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 39
  %62 = ptrtoint ptr %balance_callback.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %balance_callback.i.i, align 8
  %cmp.i.i91 = icmp eq ptr %63, @balance_push_callback
  br i1 %cmp.i.i91, label %return, label %if.end.i.i, !prof !111

if.end.i.i:                                       ; preds = %lor.rhs.i.i
  %func3.i.i = getelementptr inbounds %struct.callback_head, ptr %54, i32 0, i32 1
  %64 = ptrtoint ptr %func3.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @pull_dl_task, ptr %func3.i.i, align 4
  %65 = ptrtoint ptr %balance_callback.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %balance_callback.i.i, align 8
  %67 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %54, align 4
  store ptr %54, ptr %balance_callback.i.i, align 8
  br label %return

return:                                           ; preds = %if.end.i.i, %lor.rhs.i.i, %lockdep_assert_rq_held.exit.i.i90, %lor.lhs.false, %if.end26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @switched_to_dl(ptr noundef %rq, ptr noundef %p) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %inactive_timer = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 11
  %call = tail call i32 @hrtimer_try_to_cancel(ptr noundef %inactive_timer) #15
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !112
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !113
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end, label %if.then10.i.i.i.i, !prof !114

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %if.end

if.then.i:                                        ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !115
  tail call void @__put_task_struct(ptr noundef %p) #15
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i, %entry
  %on_rq.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 12
  %1 = ptrtoint ptr %on_rq.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %on_rq.i, align 4
  %cmp.i.not = icmp eq i32 %2, 1
  br i1 %cmp.i.not, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 8
  %3 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %4, 268435456
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then.i36, label %if.end21

if.then.i36:                                      ; preds = %if.then2
  %dl_bw.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 4
  %5 = ptrtoint ptr %dl_bw.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %dl_bw.i, align 8
  %this_bw.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 7
  %7 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %this_bw.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %9 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i.i, label %lockdep_assert_rq_held.exit.i.i, label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.then.i36
  %core_enabled.i.i.i.i = getelementptr %struct.rq, ptr %rq, i32 0, i32 81
  %10 = ptrtoint ptr %core_enabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %core_enabled.i.i.i.i, align 128
  %tobool.not.i.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i.i.i, label %__rq_lockp.exit.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i
  %core.i.i.i.i = getelementptr %struct.rq, ptr %rq, i32 0, i32 79
  %12 = ptrtoint ptr %core.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core.i.i.i.i, align 8
  br label %__rq_lockp.exit.i.i.i

__rq_lockp.exit.i.i.i:                            ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %13, %if.then.i.i.i.i ], [ %rq, %land.rhs.i.i.i ]
  %dep_map.i.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i.i, i32 0, i32 4
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #15
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %do.end.i.i.i, label %lockdep_assert_rq_held.exit.i.i, !prof !111

do.end.i.i.i:                                     ; preds = %__rq_lockp.exit.i.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i.i

lockdep_assert_rq_held.exit.i.i:                  ; preds = %do.end.i.i.i, %__rq_lockp.exit.i.i.i, %if.then.i36
  %14 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %this_bw.i.i, align 8
  %add.i.i = add i64 %15, %6
  store i64 %add.i.i, ptr %this_bw.i.i, align 8
  %cmp.i.i = icmp ult i64 %add.i.i, %8
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end21

land.rhs.i.i:                                     ; preds = %lockdep_assert_rq_held.exit.i.i
  %.b42.i.i = load i1, ptr @__add_rq_bw.__already_done, align 1
  br i1 %.b42.i.i, label %if.end21, label %if.then.i.i, !prof !114

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @__add_rq_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 189, i32 noundef 9, ptr noundef nonnull @.str.12) #15
  br label %if.end21

if.end5:                                          ; preds = %if.end
  %curr = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 20
  %16 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %curr, align 8
  %cmp6.not = icmp eq ptr %17, %p
  br i1 %cmp6.not, label %if.else18, label %if.then7

if.then7:                                         ; preds = %if.end5
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 32
  %18 = ptrtoint ptr %nr_cpus_allowed to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_cpus_allowed, align 8
  %cmp8 = icmp sgt i32 %19, 1
  br i1 %cmp8, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %if.then7
  %overloaded = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 4
  %20 = ptrtoint ptr %overloaded to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %overloaded, align 4
  %tobool10.not = icmp eq i32 %21, 0
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %land.lhs.true
  %pushable_dl_tasks_root.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 5
  %22 = ptrtoint ptr %pushable_dl_tasks_root.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %pushable_dl_tasks_root.i.i, align 8
  %cmp.i.not.i = icmp eq ptr %23, null
  br i1 %cmp.i.not.i, label %if.end12, label %if.end.i

if.end.i:                                         ; preds = %if.then11
  %cpu.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 46
  %24 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %27, ptrtoint (ptr @dl_push_head to i32)
  %28 = inttoptr i32 %add.i to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %29 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i.i37 = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i.i37, label %lockdep_assert_rq_held.exit.i.i49, label %land.rhs.i.i.i40

land.rhs.i.i.i40:                                 ; preds = %if.end.i
  %core_enabled.i.i.i.i38 = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 81
  %30 = ptrtoint ptr %core_enabled.i.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %core_enabled.i.i.i.i38, align 128
  %tobool.not.i.i.i.i39 = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i.i.i39, label %__rq_lockp.exit.i.i.i47, label %if.then.i.i.i.i42

if.then.i.i.i.i42:                                ; preds = %land.rhs.i.i.i40
  %core.i.i.i.i41 = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 79
  %32 = ptrtoint ptr %core.i.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %core.i.i.i.i41, align 8
  br label %__rq_lockp.exit.i.i.i47

__rq_lockp.exit.i.i.i47:                          ; preds = %if.then.i.i.i.i42, %land.rhs.i.i.i40
  %retval.0.i.i.i.i43 = phi ptr [ %33, %if.then.i.i.i.i42 ], [ %rq, %land.rhs.i.i.i40 ]
  %dep_map.i.i.i44 = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i.i43, i32 0, i32 4
  %call.i.i.i.i45 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i44, i32 noundef -1) #15
  %cmp.not.i.i.i46 = icmp eq i32 %call.i.i.i.i45, 0
  br i1 %cmp.not.i.i.i46, label %do.end.i.i.i48, label %lockdep_assert_rq_held.exit.i.i49, !prof !111

do.end.i.i.i48:                                   ; preds = %__rq_lockp.exit.i.i.i47
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i.i49

lockdep_assert_rq_held.exit.i.i49:                ; preds = %do.end.i.i.i48, %__rq_lockp.exit.i.i.i47, %if.end.i
  %34 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %28, align 4
  %tobool.not.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i, label %lor.rhs.i.i, label %if.end12, !prof !114

lor.rhs.i.i:                                      ; preds = %lockdep_assert_rq_held.exit.i.i49
  %balance_callback.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 39
  %36 = ptrtoint ptr %balance_callback.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %balance_callback.i.i, align 8
  %cmp.i4.i = icmp eq ptr %37, @balance_push_callback
  br i1 %cmp.i4.i, label %if.end12, label %if.end.i.i, !prof !111

if.end.i.i:                                       ; preds = %lor.rhs.i.i
  %func3.i.i = getelementptr inbounds %struct.callback_head, ptr %28, i32 0, i32 1
  %38 = ptrtoint ptr %func3.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @push_dl_tasks, ptr %func3.i.i, align 4
  %39 = ptrtoint ptr %balance_callback.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %balance_callback.i.i, align 8
  %41 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %28, align 4
  store ptr %28, ptr %balance_callback.i.i, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.end.i.i, %lor.rhs.i.i, %lockdep_assert_rq_held.exit.i.i49, %if.then11, %land.lhs.true, %if.then7
  %42 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %curr, align 8
  %prio.i = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 13
  %44 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %prio.i, align 8
  %tobool15.not = icmp sgt i32 %45, -1
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end12
  tail call void @check_preempt_curr_dl(ptr noundef %rq, ptr noundef %p, i32 noundef 0)
  br label %if.end21

if.else:                                          ; preds = %if.end12
  tail call void @resched_curr(ptr noundef %rq) #15
  br label %if.end21

if.else18:                                        ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %46 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i50 = icmp eq i32 %46, 0
  br i1 %tobool.not.i.i50, label %lockdep_assert_rq_held.exit.i, label %land.rhs.i.i52

land.rhs.i.i52:                                   ; preds = %if.else18
  %core_enabled.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 81
  %47 = ptrtoint ptr %core_enabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %core_enabled.i.i.i, align 128
  %tobool.not.i.i.i51 = icmp eq i32 %48, 0
  br i1 %tobool.not.i.i.i51, label %__rq_lockp.exit.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i52
  %core.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 79
  %49 = ptrtoint ptr %core.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %core.i.i.i, align 8
  br label %__rq_lockp.exit.i.i

__rq_lockp.exit.i.i:                              ; preds = %if.then.i.i.i, %land.rhs.i.i52
  %retval.0.i.i.i = phi ptr [ %50, %if.then.i.i.i ], [ %rq, %land.rhs.i.i52 ]
  %dep_map.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i, i32 0, i32 4
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #15
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %lockdep_assert_rq_held.exit.i, !prof !111

do.end.i.i:                                       ; preds = %__rq_lockp.exit.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i

lockdep_assert_rq_held.exit.i:                    ; preds = %do.end.i.i, %__rq_lockp.exit.i.i, %if.else18
  %clock_update_flags.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 25
  %51 = ptrtoint ptr %clock_update_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %clock_update_flags.i.i, align 4
  %cmp.i.i53 = icmp ult i32 %52, 2
  br i1 %cmp.i.i53, label %land.rhs.i4.i, label %rq_clock_pelt.exit

land.rhs.i4.i:                                    ; preds = %lockdep_assert_rq_held.exit.i
  %.b37.i.i = load i1, ptr @assert_clock_updated.__already_done, align 1
  br i1 %.b37.i.i, label %rq_clock_pelt.exit, label %if.then.i.i54, !prof !114

if.then.i.i54:                                    ; preds = %land.rhs.i4.i
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #15
  br label %rq_clock_pelt.exit

rq_clock_pelt.exit:                               ; preds = %if.then.i.i54, %land.rhs.i4.i, %lockdep_assert_rq_held.exit.i
  %clock_pelt.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 29
  %53 = ptrtoint ptr %clock_pelt.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %clock_pelt.i, align 8
  %lost_idle_time.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 30
  %55 = ptrtoint ptr %lost_idle_time.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %lost_idle_time.i, align 16
  %conv.i55 = zext i32 %56 to i64
  %sub.i = sub i64 %54, %conv.i55
  %call20 = tail call i32 @update_dl_rq_load_avg(i64 noundef %sub.i, ptr noundef %rq, i32 noundef 0) #15
  br label %if.end21

if.end21:                                         ; preds = %rq_clock_pelt.exit, %if.else, %if.then16, %if.then.i.i, %land.rhs.i.i, %lockdep_assert_rq_held.exit.i.i, %if.then2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prio_changed_dl(ptr noundef %rq, ptr noundef readonly %p, i32 noundef %oldprio) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %on_rq.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 12
  %0 = ptrtoint ptr %on_rq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %on_rq.i, align 4
  %cmp.i.not = icmp eq i32 %1, 1
  br i1 %cmp.i.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %curr.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 20
  %2 = ptrtoint ptr %curr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %curr.i, align 8
  %cmp.i17.not = icmp eq ptr %3, %p
  br i1 %cmp.i17.not, label %if.then, label %if.end10

if.then:                                          ; preds = %lor.lhs.false, %entry
  %overloaded = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 4
  %4 = ptrtoint ptr %overloaded to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %overloaded, align 4
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %cpu.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 46
  %6 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %9, ptrtoint (ptr @dl_pull_head to i32)
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
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #15
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %do.end.i.i.i, label %lockdep_assert_rq_held.exit.i.i, !prof !111

do.end.i.i.i:                                     ; preds = %__rq_lockp.exit.i.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i.i

lockdep_assert_rq_held.exit.i.i:                  ; preds = %do.end.i.i.i, %__rq_lockp.exit.i.i.i, %if.then4
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %10, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %lor.rhs.i.i, label %if.end, !prof !114

lor.rhs.i.i:                                      ; preds = %lockdep_assert_rq_held.exit.i.i
  %balance_callback.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 39
  %18 = ptrtoint ptr %balance_callback.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %balance_callback.i.i, align 8
  %cmp.i.i = icmp eq ptr %19, @balance_push_callback
  br i1 %cmp.i.i, label %if.end, label %if.end.i.i, !prof !111

if.end.i.i:                                       ; preds = %lor.rhs.i.i
  %func3.i.i = getelementptr inbounds %struct.callback_head, ptr %10, i32 0, i32 1
  %20 = ptrtoint ptr %func3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @pull_dl_task, ptr %func3.i.i, align 4
  %21 = ptrtoint ptr %balance_callback.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %balance_callback.i.i, align 8
  %23 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %10, align 4
  store ptr %10, ptr %balance_callback.i.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %lor.rhs.i.i, %lockdep_assert_rq_held.exit.i.i, %if.then
  %earliest_dl = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 2
  %24 = ptrtoint ptr %earliest_dl to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %earliest_dl, align 8
  %deadline = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 7
  %26 = ptrtoint ptr %deadline to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %deadline, align 8
  %sub.i = sub i64 %25, %27
  %cmp.i19 = icmp slt i64 %sub.i, 0
  br i1 %cmp.i19, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  tail call void @resched_curr(ptr noundef %rq) #15
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @update_curr_dl(ptr noundef %rq) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %curr1 = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 20
  %0 = ptrtoint ptr %curr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %curr1, align 8
  %dl = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 20
  %cpu.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 46
  %2 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu.i, align 4
  %prio.i = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prio.i, align 8
  %tobool.not = icmp sgt i32 %5, -1
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = ptrtoint ptr %dl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dl, align 8
  %8 = ptrtoint ptr %dl to i32
  %cmp.i.not = icmp eq i32 %7, %8
  br i1 %cmp.i.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %9 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %lockdep_assert_rq_held.exit.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %if.end
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
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #15
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %lockdep_assert_rq_held.exit.i, !prof !111

do.end.i.i:                                       ; preds = %__rq_lockp.exit.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i

lockdep_assert_rq_held.exit.i:                    ; preds = %do.end.i.i, %__rq_lockp.exit.i.i, %if.end
  %clock_update_flags.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 25
  %14 = ptrtoint ptr %clock_update_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %clock_update_flags.i.i, align 4
  %cmp.i.i = icmp ult i32 %15, 2
  br i1 %cmp.i.i, label %land.rhs.i3.i, label %rq_clock_task.exit

land.rhs.i3.i:                                    ; preds = %lockdep_assert_rq_held.exit.i
  %.b37.i.i = load i1, ptr @assert_clock_updated.__already_done, align 1
  br i1 %.b37.i.i, label %rq_clock_task.exit, label %if.then.i.i, !prof !114

if.then.i.i:                                      ; preds = %land.rhs.i3.i
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #15
  br label %rq_clock_task.exit

rq_clock_task.exit:                               ; preds = %if.then.i.i, %land.rhs.i3.i, %lockdep_assert_rq_held.exit.i
  %clock_task.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 28
  %16 = ptrtoint ptr %clock_task.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %clock_task.i, align 128
  %exec_start = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 18, i32 4
  %18 = ptrtoint ptr %exec_start to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %exec_start, align 32
  %sub = sub i64 %17, %19
  %cmp = icmp slt i64 %sub, 1
  br i1 %cmp, label %if.then8, label %do.body, !prof !111

if.then8:                                         ; preds = %rq_clock_task.exit
  %dl_yielded = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 20, i32 9
  %20 = ptrtoint ptr %dl_yielded to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %dl_yielded, align 4
  %21 = and i8 %bf.load, 64
  %tobool9.not = icmp eq i8 %21, 0
  br i1 %tobool9.not, label %cleanup, label %throttle, !prof !114

do.body:                                          ; preds = %rq_clock_task.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_schedstats, ptr blockaddress(@update_curr_dl, %if.then27)) #15
          to label %do.end [label %if.then27], !srcloc !117

if.then27:                                        ; preds = %do.body
  %exec_max = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 29, i32 12
  %22 = ptrtoint ptr %exec_max to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %exec_max, align 32
  %24 = tail call i64 @llvm.umax.i64(i64 %23, i64 %sub)
  %25 = ptrtoint ptr %exec_max to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %exec_max, align 32
  br label %do.end

do.end:                                           ; preds = %if.then27, %do.body
  tail call fastcc void @trace_sched_stat_runtime(ptr noundef %1, i64 noundef %sub)
  %sum_exec_runtime = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 18, i32 5
  %26 = ptrtoint ptr %sum_exec_runtime to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %sum_exec_runtime, align 8
  %add = add i64 %27, %sub
  store i64 %add, ptr %sum_exec_runtime, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 111
  %28 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %signal.i.i, align 16
  %timers_active.i.i = getelementptr inbounds %struct.signal_struct, ptr %29, i32 0, i32 21, i32 1
  %30 = ptrtoint ptr %timers_active.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %timers_active.i.i, align 8
  %tobool.not.i.i161 = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i161, label %account_group_exec_runtime.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end
  %sighand.i.i = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 112
  %32 = ptrtoint ptr %sighand.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sighand.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %33, null
  br i1 %tobool3.not.i.i, label %account_group_exec_runtime.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i
  %sum_exec_runtime.i = getelementptr inbounds %struct.signal_struct, ptr %29, i32 0, i32 20, i32 0, i32 2
  %call.i.i.i162 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sum_exec_runtime.i, i32 noundef 8) #15
  tail call void @generic_atomic64_add(i64 noundef %sub, ptr noundef %sum_exec_runtime.i) #15
  br label %account_group_exec_runtime.exit

account_group_exec_runtime.exit:                  ; preds = %if.end.i, %if.end.i.i, %do.end
  %34 = ptrtoint ptr %exec_start to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %17, ptr %exec_start, align 32
  tail call void @cpuacct_charge(ptr noundef %1, i64 noundef %sub) #15
  %35 = tail call i32 @llvm.read_register.i32(metadata !100) #15
  %and.i.i.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %38, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !119
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i.i, label %rcu_read_lock.exit.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %account_group_exec_runtime.exit
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool.not.i.i163 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i163, label %rcu_read_lock.exit.i, label %land.lhs.true2.i.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %rcu_read_lock.exit.i, label %if.then.i.i164

if.then.i.i164:                                   ; preds = %land.lhs.true2.i.i
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 696, ptr noundef nonnull @.str.21) #15
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i164, %land.lhs.true2.i.i, %land.lhs.true.i.i, %account_group_exec_runtime.exit
  %cgroups.i.i.i = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 164
  %39 = ptrtoint ptr %cgroups.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %cgroups.i.i.i, align 16
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #15
  %tobool.not.i.i.i165 = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i165, label %lor.lhs.false.i.i.i, label %task_dfl_cgroup.exit.i

lor.lhs.false.i.i.i:                              ; preds = %rcu_read_lock.exit.i
  %call.i18.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #15
  %tobool3.not.i.i.i = icmp eq i32 %call.i18.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %lor.lhs.false4.i.i.i, label %task_dfl_cgroup.exit.i

lor.lhs.false4.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %flags.i.i.i = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 3
  %41 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %42, 4
  %tobool5.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %lor.lhs.false6.i.i.i, label %task_dfl_cgroup.exit.i

lor.lhs.false6.i.i.i:                             ; preds = %lor.lhs.false4.i.i.i
  %call7.i.i.i = tail call i32 @rcu_read_lock_held() #15
  %tobool8.not.i.i.i = icmp eq i32 %call7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %land.lhs.true.i.i.i, label %task_dfl_cgroup.exit.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false6.i.i.i
  %call9.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool10.not.i.i.i = icmp eq i32 %call9.i.i.i, 0
  br i1 %tobool10.not.i.i.i, label %task_dfl_cgroup.exit.i, label %land.lhs.true11.i.i.i

land.lhs.true11.i.i.i:                            ; preds = %land.lhs.true.i.i.i
  %.b17.i.i.i = load i1, ptr @task_css_set.__warned, align 1
  br i1 %.b17.i.i.i, label %task_dfl_cgroup.exit.i, label %if.then.i.i.i166

if.then.i.i.i166:                                 ; preds = %land.lhs.true11.i.i.i
  store i1 true, ptr @task_css_set.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 481, ptr noundef nonnull @.str.8) #15
  br label %task_dfl_cgroup.exit.i

task_dfl_cgroup.exit.i:                           ; preds = %if.then.i.i.i166, %land.lhs.true11.i.i.i, %land.lhs.true.i.i.i, %lor.lhs.false6.i.i.i, %lor.lhs.false4.i.i.i, %lor.lhs.false.i.i.i, %rcu_read_lock.exit.i
  %dfl_cgrp.i.i = getelementptr inbounds %struct.css_set, ptr %40, i32 0, i32 3
  %43 = ptrtoint ptr %dfl_cgrp.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dfl_cgrp.i.i, align 4
  %parent.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %44, i32 0, i32 12
  %45 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %parent.i.i, align 8
  %tobool.not.i = icmp eq ptr %46, null
  br i1 %tobool.not.i, label %if.end.i167, label %if.then.i

if.then.i:                                        ; preds = %task_dfl_cgroup.exit.i
  tail call void @__cgroup_account_cputime(ptr noundef %44, i64 noundef %sub) #15
  br label %if.end.i167

if.end.i167:                                      ; preds = %if.then.i, %task_dfl_cgroup.exit.i
  %call.i5.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i5.i, label %cgroup_account_cputime.exit, label %land.lhs.true.i8.i

land.lhs.true.i8.i:                               ; preds = %if.end.i167
  %call1.i6.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool.not.i7.i = icmp eq i32 %call1.i6.i, 0
  br i1 %tobool.not.i7.i, label %cgroup_account_cputime.exit, label %land.lhs.true2.i10.i

land.lhs.true2.i10.i:                             ; preds = %land.lhs.true.i8.i
  %.b4.i9.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i9.i, label %cgroup_account_cputime.exit, label %if.then.i11.i

if.then.i11.i:                                    ; preds = %land.lhs.true2.i10.i
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #15
  br label %cgroup_account_cputime.exit

cgroup_account_cputime.exit:                      ; preds = %if.then.i11.i, %land.lhs.true2.i10.i, %land.lhs.true.i8.i, %if.end.i167
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !120
  %47 = tail call i32 @llvm.read_register.i32(metadata !100) #15
  %and.i.i.i.i.i12.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i.i12.i to ptr
  %preempt_count.i.i.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i.i.i13.i, align 4
  %sub.i.i.i.i = add i32 %50, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i13.i, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 20, i32 8
  %51 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %52, 268435456
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end38, label %cleanup

if.end38:                                         ; preds = %cgroup_account_cputime.exit
  %53 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags.i, align 8
  %and = and i32 %54, 2
  %tobool39.not = icmp eq i32 %and, 0
  br i1 %tobool39.not, label %if.else, label %if.then46, !prof !114

if.then46:                                        ; preds = %if.end38
  %this_bw.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 7
  %55 = ptrtoint ptr %this_bw.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %this_bw.i, align 8
  %running_bw.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 6
  %57 = ptrtoint ptr %running_bw.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %running_bw.i, align 8
  %sub.i = sub i64 %56, %58
  %dl_bw.i = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 20, i32 4
  %59 = ptrtoint ptr %dl_bw.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %dl_bw.i, align 8
  %bw_ratio.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 9
  %61 = ptrtoint ptr %bw_ratio.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %bw_ratio.i, align 8
  %mul.i = mul i64 %62, %60
  %shr.i = lshr i64 %mul.i, 8
  %extra_bw.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 8
  %63 = ptrtoint ptr %extra_bw.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %extra_bw.i, align 8
  %add.i = add i64 %64, %sub.i
  %sub4.i = sub nsw i64 1048576, %shr.i
  %cmp.i168 = icmp ugt i64 %add.i, %sub4.i
  %sub8.i = sub i64 1048576, %add.i
  %u_act.0.i = select i1 %cmp.i168, i64 %shr.i, i64 %sub8.i
  %mul9.i = mul i64 %u_act.0.i, %sub
  %shr10.i = lshr i64 %mul9.i, 20
  br label %if.end54

if.else:                                          ; preds = %if.end38
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i, align 4
  %add.i169 = add i32 %66, ptrtoint (ptr @cpu_scale to i32)
  %67 = inttoptr i32 %add.i169 to ptr
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  %mul = and i64 %sub, 18014398509481983
  %conv51 = zext i32 %69 to i64
  %mul52 = mul i64 %mul, %conv51
  %shr53 = lshr i64 %mul52, 10
  br label %if.end54

if.end54:                                         ; preds = %if.else, %if.then46
  %scaled_delta_exec.0 = phi i64 [ %shr10.i, %if.then46 ], [ %shr53, %if.else ]
  %runtime = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 20, i32 6
  %70 = ptrtoint ptr %runtime to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %runtime, align 8
  %sub55 = sub i64 %71, %scaled_delta_exec.0
  store i64 %sub55, ptr %runtime, align 8
  br label %throttle

throttle:                                         ; preds = %if.end54, %if.then8
  %runtime.i = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 20, i32 6
  %72 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %runtime.i, align 8
  %cmp.i170 = icmp sgt i64 %73, 0
  %dl_yielded59 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 20, i32 9
  %74 = ptrtoint ptr %dl_yielded59 to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load60 = load i8, ptr %dl_yielded59, align 4
  br i1 %cmp.i170, label %lor.lhs.false58, label %land.lhs.true

lor.lhs.false58:                                  ; preds = %throttle
  %75 = and i8 %bf.load60, 64
  %tobool64.not = icmp eq i8 %75, 0
  br i1 %tobool64.not, label %if.end97, label %if.then65.thread

if.then65.thread:                                 ; preds = %lor.lhs.false58
  %76 = ptrtoint ptr %dl_yielded59 to i32
  call void @__asan_load1_noabort(i32 %76)
  %bf.load66179 = load i8, ptr %dl_yielded59, align 4
  %bf.set180 = or i8 %bf.load66179, -128
  br label %if.end77.sink.split

land.lhs.true:                                    ; preds = %throttle
  %bf.set = or i8 %bf.load60, -128
  %77 = ptrtoint ptr %dl_yielded59 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %bf.set, ptr %dl_yielded59, align 4
  %flags70 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 20, i32 8
  %78 = ptrtoint ptr %flags70 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags70, align 8
  %and71 = and i32 %79, 4
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.end77, label %if.then73

if.then73:                                        ; preds = %land.lhs.true
  %bf.set76 = or i8 %bf.load60, -112
  br label %if.end77.sink.split

if.end77.sink.split:                              ; preds = %if.then73, %if.then65.thread
  %bf.set180.sink = phi i8 [ %bf.set180, %if.then65.thread ], [ %bf.set76, %if.then73 ]
  %80 = ptrtoint ptr %dl_yielded59 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %bf.set180.sink, ptr %dl_yielded59, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.end77.sink.split, %land.lhs.true
  tail call fastcc void @__dequeue_task_dl(ptr noundef %rq, ptr noundef %1, i32 noundef 0)
  %pi_se.i.i = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 20, i32 12
  %81 = ptrtoint ptr %pi_se.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pi_se.i.i, align 8
  %cmp.i174.not = icmp eq ptr %82, %dl
  br i1 %cmp.i174.not, label %lor.rhs, label %if.then90, !prof !114

lor.rhs:                                          ; preds = %if.end77
  %call80 = tail call fastcc i32 @start_dl_timer(ptr noundef %1)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.then90, label %if.end91, !prof !111

if.then90:                                        ; preds = %lor.rhs, %if.end77
  tail call void @enqueue_task_dl(ptr noundef %rq, ptr noundef %1, i32 noundef 32)
  br label %if.end91

if.end91:                                         ; preds = %if.then90, %lor.rhs
  %rb_leftmost.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 0, i32 1
  %83 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rb_leftmost.i, align 4
  %cmp.i175.not = icmp eq ptr %84, %dl
  br i1 %cmp.i175.not, label %if.end97, label %if.then95

if.then95:                                        ; preds = %if.end91
  tail call void @resched_curr(ptr noundef %rq) #15
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %if.end91, %lor.lhs.false58
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_rt_runtime to i32))
  %85 = load i32, ptr @sysctl_sched_rt_runtime, align 4
  %tobool99.not = icmp slt i32 %85, 0
  br i1 %tobool99.not, label %cleanup, label %if.then100

if.then100:                                       ; preds = %if.end97
  %rt = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 15
  %rt_runtime_lock = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 15, i32 12
  tail call void @_raw_spin_lock(ptr noundef %rt_runtime_lock) #15
  %call101 = tail call zeroext i1 @sched_rt_bandwidth_account(ptr noundef %rt) #15
  br i1 %call101, label %if.then102, label %if.end104

if.then102:                                       ; preds = %if.then100
  %rt_time = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 15, i32 10
  %86 = ptrtoint ptr %rt_time to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %rt_time, align 8
  %add103 = add i64 %87, %sub
  store i64 %add103, ptr %rt_time, align 8
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %if.then100
  tail call void @_raw_spin_unlock(ptr noundef %rt_runtime_lock) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end104, %if.end97, %cgroup_account_cputime.exit, %if.then8, %lor.lhs.false, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sched_dl_global_validate() local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_rt_runtime to i32))
  %0 = load i32, ptr @sysctl_sched_rt_runtime, align 4
  %cmp.i = icmp slt i32 %0, 0
  %conv.i = sext i32 %0 to i64
  %mul.i = mul nsw i64 %conv.i, 1000
  %retval.0.i = select i1 %cmp.i, i64 -1, i64 %mul.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_rt_period to i32))
  %1 = load i32, ptr @sysctl_sched_rt_period, align 4
  %conv.i34 = zext i32 %1 to i64
  %mul.i35 = mul nuw nsw i64 %conv.i34, 1000
  %call2 = tail call i32 @to_ratio(i64 noundef %mul.i35, i64 noundef %retval.0.i) #15
  %conv = zext i32 %call2 to i64
  %2 = load i64, ptr @dl_generation, align 8
  %inc = add i64 %2, 1
  store i64 %inc, ptr @dl_generation, align 8
  br label %for.cond

for.cond:                                         ; preds = %rcu_read_unlock_sched.exit, %entry
  %cpu.0 = phi i32 [ -1, %entry ], [ %call3, %rcu_read_unlock_sched.exit ]
  %call3 = tail call i32 @cpumask_next(i32 noundef %cpu.0, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call3, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = tail call i32 @llvm.read_register.i32(metadata !100) #15
  %and.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %7, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !125
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_sched_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %rcu_read_lock_sched.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.body
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %rcu_read_lock_sched.exit, label %land.lhs.true3.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b6.i = load i1, ptr @rcu_read_lock_sched.__warned, align 1
  br i1 %.b6.i, label %rcu_read_lock_sched.exit, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  store i1 true, ptr @rcu_read_lock_sched.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 788, ptr noundef nonnull @.str.25) #15
  br label %rcu_read_lock_sched.exit

rcu_read_lock_sched.exit:                         ; preds = %if.then.i, %land.lhs.true3.i, %land.lhs.true.i, %for.body
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call3
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %9, ptrtoint (ptr @runqueues to i32)
  %10 = inttoptr i32 %add.i to ptr
  %rd2.i = getelementptr inbounds %struct.rq, ptr %10, i32 0, i32 35
  %11 = ptrtoint ptr %rd2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rd2.i, align 8
  %visit_gen.i = getelementptr inbounds %struct.root_domain, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %visit_gen.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %visit_gen.i, align 8
  %cmp.i36 = icmp eq i64 %14, %inc
  br i1 %cmp.i36, label %next, label %if.end

if.end:                                           ; preds = %rcu_read_lock_sched.exit
  %15 = ptrtoint ptr %visit_gen.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %inc, ptr %visit_gen.i, align 8
  %call.i37 = tail call i32 @rcu_read_lock_sched_held() #15
  %tobool.not.i38 = icmp eq i32 %call.i37, 0
  br i1 %tobool.not.i38, label %land.lhs.true.i39, label %dl_bw_of.exit

land.lhs.true.i39:                                ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %dl_bw_of.exit, label %land.lhs.true3.i40

land.lhs.true3.i40:                               ; preds = %land.lhs.true.i39
  %.b8.i = load i1, ptr @dl_bw_of.__warned, align 1
  br i1 %.b8.i, label %dl_bw_of.exit, label %if.then.i41

if.then.i41:                                      ; preds = %land.lhs.true3.i40
  store i1 true, ptr @dl_bw_of.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 72, ptr noundef nonnull @.str.15) #15
  br label %dl_bw_of.exit

dl_bw_of.exit:                                    ; preds = %if.then.i41, %land.lhs.true3.i40, %land.lhs.true.i39, %if.end
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %add.i43 = add i32 %17, ptrtoint (ptr @runqueues to i32)
  %18 = inttoptr i32 %add.i43 to ptr
  %rd.i = getelementptr inbounds %struct.rq, ptr %18, i32 0, i32 35
  %19 = ptrtoint ptr %rd.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rd.i, align 8
  %dl_bw.i = getelementptr inbounds %struct.root_domain, ptr %20, i32 0, i32 9
  %call.i47 = tail call i32 @rcu_read_lock_sched_held() #15
  %tobool.not.i48 = icmp eq i32 %call.i47, 0
  br i1 %tobool.not.i48, label %land.lhs.true.i49, label %do.end9.i

land.lhs.true.i49:                                ; preds = %dl_bw_of.exit
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %do.end9.i, label %land.lhs.true6.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i49
  %.b24.i = load i1, ptr @dl_bw_cpus.__warned, align 1
  br i1 %.b24.i, label %do.end9.i, label %if.then.i50

if.then.i50:                                      ; preds = %land.lhs.true6.i
  store i1 true, ptr @dl_bw_cpus.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 82, ptr noundef nonnull @.str.15) #15
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then.i50, %land.lhs.true6.i, %land.lhs.true.i49, %dl_bw_of.exit
  %span.i = getelementptr inbounds %struct.root_domain, ptr %20, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %22 = ptrtoint ptr %span.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %span.i, align 8
  %call.i.i.i = tail call i32 @__bitmap_subset(ptr noundef %23, ptr noundef nonnull @__cpu_active_mask, i32 noundef %21) #15
  %tobool11.not.i = icmp eq i32 %call.i.i.i, 0
  %24 = ptrtoint ptr %span.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %span.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %26 = load i32, ptr @nr_cpu_ids, align 4
  br i1 %tobool11.not.i, label %for.cond.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end9.i
  %call4.i.i.i = tail call i32 @__bitmap_weight(ptr noundef %25, i32 noundef %26) #15
  br label %dl_bw_cpus.exit

for.cond.i:                                       ; preds = %for.cond.i, %do.end9.i
  %i.addr.0.i = phi i32 [ %call17.i, %for.cond.i ], [ -1, %do.end9.i ]
  %cpus.0.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %do.end9.i ]
  %call17.i = tail call i32 @cpumask_next_and(i32 noundef %i.addr.0.i, ptr noundef %25, ptr noundef nonnull @__cpu_active_mask) #17
  %cmp.i52 = icmp ult i32 %call17.i, %26
  %inc.i = add i32 %cpus.0.i, 1
  br i1 %cmp.i52, label %for.cond.i, label %dl_bw_cpus.exit

dl_bw_cpus.exit:                                  ; preds = %for.cond.i, %if.end.i.i.i
  %retval.0.i53 = phi i32 [ %call4.i.i.i, %if.end.i.i.i ], [ %cpus.0.i, %for.cond.i ]
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dl_bw.i) #15
  %conv11 = sext i32 %retval.0.i53 to i64
  %mul = mul nsw i64 %conv11, %conv
  %total_bw = getelementptr inbounds %struct.root_domain, ptr %20, i32 0, i32 9, i32 2
  %27 = ptrtoint ptr %total_bw to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %total_bw, align 8
  %cmp12 = icmp ult i64 %mul, %28
  %spec.select = select i1 %cmp12, i32 -16, i32 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dl_bw.i, i32 noundef %call10) #15
  br label %next

next:                                             ; preds = %dl_bw_cpus.exit, %rcu_read_lock_sched.exit
  %ret.2 = phi i32 [ %spec.select, %dl_bw_cpus.exit ], [ 0, %rcu_read_lock_sched.exit ]
  %call.i54 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i54, label %rcu_read_unlock_sched.exit, label %land.lhs.true.i57

land.lhs.true.i57:                                ; preds = %next
  %call1.i55 = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool.not.i56 = icmp eq i32 %call1.i55, 0
  br i1 %tobool.not.i56, label %rcu_read_unlock_sched.exit, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i57
  %.b6.i58 = load i1, ptr @rcu_read_unlock_sched.__warned, align 1
  br i1 %.b6.i58, label %rcu_read_unlock_sched.exit, label %if.then.i59

if.then.i59:                                      ; preds = %land.lhs.true2.i
  store i1 true, ptr @rcu_read_unlock_sched.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 806, ptr noundef nonnull @.str.26) #15
  br label %rcu_read_unlock_sched.exit

rcu_read_unlock_sched.exit:                       ; preds = %if.then.i59, %land.lhs.true2.i, %land.lhs.true.i57, %next
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_sched_lock_map) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !126
  %29 = tail call i32 @llvm.read_register.i32(metadata !100) #15
  %and.i.i.i.i60 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i60 to ptr
  %preempt_count.i.i.i61 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i61, align 4
  %sub.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i61, align 4
  %tobool.not = icmp eq i32 %ret.2, 0
  br i1 %tobool.not, label %for.cond, label %for.end

for.end:                                          ; preds = %rcu_read_unlock_sched.exit, %for.cond
  %ret.3 = phi i32 [ %ret.2, %rcu_read_unlock_sched.exit ], [ 0, %for.cond ]
  ret i32 %ret.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sched_dl_do_global() local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i64, ptr @dl_generation, align 8
  %inc = add i64 %0, 1
  store i64 %inc, ptr @dl_generation, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_rt_period to i32))
  %1 = load i32, ptr @sysctl_sched_rt_period, align 4
  %conv.i = zext i32 %1 to i64
  %mul.i = mul nuw nsw i64 %conv.i, 1000
  store i64 %mul.i, ptr getelementptr inbounds (%struct.dl_bandwidth, ptr @def_dl_bandwidth, i32 0, i32 2), align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_rt_runtime to i32))
  %2 = load i32, ptr @sysctl_sched_rt_runtime, align 4
  %cmp.i = icmp slt i32 %2, 0
  %conv.i36 = sext i32 %2 to i64
  %mul.i37 = mul nsw i64 %conv.i36, 1000
  %retval.0.i = select i1 %cmp.i, i64 -1, i64 %mul.i37
  store i64 %retval.0.i, ptr getelementptr inbounds (%struct.dl_bandwidth, ptr @def_dl_bandwidth, i32 0, i32 1), align 8
  br i1 %cmp.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call5 = tail call i32 @to_ratio(i64 noundef %mul.i, i64 noundef %mul.i37) #15
  %conv = zext i32 %call5 to i64
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %new_bw.0 = phi i64 [ %conv, %if.then ], [ -1, %entry ]
  %call678 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %cmp779 = icmp ult i32 %call678, %3
  br i1 %cmp779, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.backedge, %if.end
  %call680 = phi i32 [ %call6, %for.cond.backedge ], [ %call678, %if.end ]
  %4 = tail call i32 @llvm.read_register.i32(metadata !100) #15
  %and.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %7, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !125
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_sched_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %rcu_read_lock_sched.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.body
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %rcu_read_lock_sched.exit, label %land.lhs.true3.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b6.i = load i1, ptr @rcu_read_lock_sched.__warned, align 1
  br i1 %.b6.i, label %rcu_read_lock_sched.exit, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  store i1 true, ptr @rcu_read_lock_sched.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 788, ptr noundef nonnull @.str.25) #15
  br label %rcu_read_lock_sched.exit

rcu_read_lock_sched.exit:                         ; preds = %if.then.i, %land.lhs.true3.i, %land.lhs.true.i, %for.body
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call680
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %9, ptrtoint (ptr @runqueues to i32)
  %10 = inttoptr i32 %add.i to ptr
  %rd2.i = getelementptr inbounds %struct.rq, ptr %10, i32 0, i32 35
  %11 = ptrtoint ptr %rd2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rd2.i, align 8
  %visit_gen.i = getelementptr inbounds %struct.root_domain, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %visit_gen.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %visit_gen.i, align 8
  %cmp.i48 = icmp eq i64 %14, %inc
  br i1 %cmp.i48, label %if.then10, label %if.end11

if.then10:                                        ; preds = %rcu_read_lock_sched.exit
  %call.i49 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i49, label %rcu_read_unlock_sched.exit, label %land.lhs.true.i51

land.lhs.true.i51:                                ; preds = %if.then10
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool.not.i50 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i50, label %rcu_read_unlock_sched.exit, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i51
  %.b6.i52 = load i1, ptr @rcu_read_unlock_sched.__warned, align 1
  br i1 %.b6.i52, label %rcu_read_unlock_sched.exit, label %if.then.i53

if.then.i53:                                      ; preds = %land.lhs.true2.i
  store i1 true, ptr @rcu_read_unlock_sched.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 806, ptr noundef nonnull @.str.26) #15
  br label %rcu_read_unlock_sched.exit

rcu_read_unlock_sched.exit:                       ; preds = %if.then.i53, %land.lhs.true2.i, %land.lhs.true.i51, %if.then10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_sched_lock_map) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !126
  %15 = tail call i32 @llvm.read_register.i32(metadata !100) #15
  %and.i.i.i.i54 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i54 to ptr
  %preempt_count.i.i.i55 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i55, align 4
  %sub.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i55, align 4
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %init_dl_rq_bw_ratio.exit, %rcu_read_unlock_sched.exit
  %call6 = tail call i32 @cpumask_next(i32 noundef %call680, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %cmp7 = icmp ult i32 %call6, %19
  br i1 %cmp7, label %for.body, label %for.end

if.end11:                                         ; preds = %rcu_read_lock_sched.exit
  %20 = ptrtoint ptr %visit_gen.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %inc, ptr %visit_gen.i, align 8
  %call.i56 = tail call i32 @rcu_read_lock_sched_held() #15
  %tobool.not.i57 = icmp eq i32 %call.i56, 0
  br i1 %tobool.not.i57, label %land.lhs.true.i59, label %dl_bw_of.exit

land.lhs.true.i59:                                ; preds = %if.end11
  %call1.i58 = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool2.not.i = icmp eq i32 %call1.i58, 0
  br i1 %tobool2.not.i, label %dl_bw_of.exit, label %land.lhs.true3.i60

land.lhs.true3.i60:                               ; preds = %land.lhs.true.i59
  %.b8.i = load i1, ptr @dl_bw_of.__warned, align 1
  br i1 %.b8.i, label %dl_bw_of.exit, label %if.then.i61

if.then.i61:                                      ; preds = %land.lhs.true3.i60
  store i1 true, ptr @dl_bw_of.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 72, ptr noundef nonnull @.str.15) #15
  br label %dl_bw_of.exit

dl_bw_of.exit:                                    ; preds = %if.then.i61, %land.lhs.true3.i60, %land.lhs.true.i59, %if.end11
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %add.i63 = add i32 %22, ptrtoint (ptr @runqueues to i32)
  %23 = inttoptr i32 %add.i63 to ptr
  %rd.i = getelementptr inbounds %struct.rq, ptr %23, i32 0, i32 35
  %24 = ptrtoint ptr %rd.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rd.i, align 8
  %dl_bw.i = getelementptr inbounds %struct.root_domain, ptr %25, i32 0, i32 9
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dl_bw.i) #15
  %bw = getelementptr inbounds %struct.root_domain, ptr %25, i32 0, i32 9, i32 1
  %26 = ptrtoint ptr %bw to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %new_bw.0, ptr %bw, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dl_bw.i, i32 noundef %call15) #15
  %call.i64 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i64, label %rcu_read_unlock_sched.exit74, label %land.lhs.true.i67

land.lhs.true.i67:                                ; preds = %dl_bw_of.exit
  %call1.i65 = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool.not.i66 = icmp eq i32 %call1.i65, 0
  br i1 %tobool.not.i66, label %rcu_read_unlock_sched.exit74, label %land.lhs.true2.i69

land.lhs.true2.i69:                               ; preds = %land.lhs.true.i67
  %.b6.i68 = load i1, ptr @rcu_read_unlock_sched.__warned, align 1
  br i1 %.b6.i68, label %rcu_read_unlock_sched.exit74, label %if.then.i70

if.then.i70:                                      ; preds = %land.lhs.true2.i69
  store i1 true, ptr @rcu_read_unlock_sched.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 806, ptr noundef nonnull @.str.26) #15
  br label %rcu_read_unlock_sched.exit74

rcu_read_unlock_sched.exit74:                     ; preds = %if.then.i70, %land.lhs.true2.i69, %land.lhs.true.i67, %dl_bw_of.exit
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_sched_lock_map) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !126
  %27 = tail call i32 @llvm.read_register.i32(metadata !100) #15
  %and.i.i.i.i71 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i71 to ptr
  %preempt_count.i.i.i72 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i72, align 4
  %sub.i.i73 = add i32 %30, -1
  store volatile i32 %sub.i.i73, ptr %preempt_count.i.i.i72, align 4
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i, align 4
  %add = add i32 %32, ptrtoint (ptr @runqueues to i32)
  %33 = inttoptr i32 %add to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_rt_runtime to i32))
  %34 = load i32, ptr @sysctl_sched_rt_runtime, align 4
  %cmp.i.i = icmp slt i32 %34, 0
  br i1 %cmp.i.i, label %if.then.i75, label %if.else.i

if.then.i75:                                      ; preds = %rcu_read_unlock_sched.exit74
  %bw_ratio.i = getelementptr inbounds %struct.rq, ptr %33, i32 0, i32 16, i32 9
  %35 = ptrtoint ptr %bw_ratio.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 256, ptr %bw_ratio.i, align 8
  br label %init_dl_rq_bw_ratio.exit

if.else.i:                                        ; preds = %rcu_read_unlock_sched.exit74
  %conv.i25.i = zext i32 %34 to i64
  %mul.i.i = mul nuw nsw i64 %conv.i25.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_rt_period to i32))
  %36 = load i32, ptr @sysctl_sched_rt_period, align 4
  %conv.i17.i = zext i32 %36 to i64
  %mul.i18.i = mul nuw nsw i64 %conv.i17.i, 1000
  %call3.i = tail call i32 @to_ratio(i64 noundef %mul.i.i, i64 noundef %mul.i18.i) #15
  %shr.i = lshr i32 %call3.i, 12
  %conv.i76 = zext i32 %shr.i to i64
  %bw_ratio4.i = getelementptr inbounds %struct.rq, ptr %33, i32 0, i32 16, i32 9
  %37 = ptrtoint ptr %bw_ratio4.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv.i76, ptr %bw_ratio4.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_rt_period to i32))
  %38 = load i32, ptr @sysctl_sched_rt_period, align 4
  %conv.i19.i = zext i32 %38 to i64
  %mul.i20.i = mul nuw nsw i64 %conv.i19.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_rt_runtime to i32))
  %39 = load i32, ptr @sysctl_sched_rt_runtime, align 4
  %cmp.i21.i = icmp slt i32 %39, 0
  %conv.i22.i = sext i32 %39 to i64
  %mul.i23.i = mul nsw i64 %conv.i22.i, 1000
  %retval.0.i24.i = select i1 %cmp.i21.i, i64 -1, i64 %mul.i23.i
  %call7.i = tail call i32 @to_ratio(i64 noundef %mul.i20.i, i64 noundef %retval.0.i24.i) #15
  %conv8.i = zext i32 %call7.i to i64
  br label %init_dl_rq_bw_ratio.exit

init_dl_rq_bw_ratio.exit:                         ; preds = %if.else.i, %if.then.i75
  %conv8.sink.i = phi i64 [ 1048576, %if.then.i75 ], [ %conv8.i, %if.else.i ]
  %40 = getelementptr inbounds %struct.rq, ptr %33, i32 0, i32 16, i32 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %conv8.sink.i, ptr %40, align 8
  br label %for.cond.backedge

for.end:                                          ; preds = %for.cond.backedge, %if.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sched_dl_overflow(ptr noundef %p, i32 noundef %policy, ptr nocapture noundef readonly %attr) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %sched_period = getelementptr inbounds %struct.sched_attr, ptr %attr, i32 0, i32 7
  %0 = ptrtoint ptr %sched_period to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sched_period, align 8
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %entry
  %sched_deadline = getelementptr inbounds %struct.sched_attr, ptr %attr, i32 0, i32 6
  %2 = ptrtoint ptr %sched_deadline to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %sched_deadline, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry
  %cond = phi i64 [ %3, %cond.false ], [ %1, %entry ]
  %cmp.i.not = icmp eq i32 %policy, 6
  br i1 %cmp.i.not, label %cond.true2, label %cond.end5

cond.true2:                                       ; preds = %cond.end
  %sched_runtime = getelementptr inbounds %struct.sched_attr, ptr %attr, i32 0, i32 5
  %4 = ptrtoint ptr %sched_runtime to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sched_runtime, align 8
  %call3 = tail call i32 @to_ratio(i64 noundef %cond, i64 noundef %5) #15
  br label %cond.end5

cond.end5:                                        ; preds = %cond.true2, %cond.end
  %cond6 = phi i32 [ %call3, %cond.true2 ], [ 0, %cond.end ]
  %conv = zext i32 %cond6 to i64
  %stack.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 1
  %6 = ptrtoint ptr %stack.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stack.i, align 4
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %cpu.i, align 4
  %call.i = tail call i32 @rcu_read_lock_sched_held() #15
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %dl_bw_of.exit

land.lhs.true.i:                                  ; preds = %cond.end5
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %dl_bw_of.exit, label %land.lhs.true3.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b8.i = load i1, ptr @dl_bw_of.__warned, align 1
  br i1 %.b8.i, label %dl_bw_of.exit, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  store i1 true, ptr @dl_bw_of.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 72, ptr noundef nonnull @.str.15) #15
  br label %dl_bw_of.exit

dl_bw_of.exit:                                    ; preds = %if.then.i, %land.lhs.true3.i, %land.lhs.true.i, %cond.end5
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %11, ptrtoint (ptr @runqueues to i32)
  %12 = inttoptr i32 %add.i to ptr
  %rd.i = getelementptr inbounds %struct.rq, ptr %12, i32 0, i32 35
  %13 = ptrtoint ptr %rd.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rd.i, align 8
  %dl_bw.i = getelementptr inbounds %struct.root_domain, ptr %14, i32 0, i32 9
  %sched_flags = getelementptr inbounds %struct.sched_attr, ptr %attr, i32 0, i32 2
  %15 = ptrtoint ptr %sched_flags to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %sched_flags, align 8
  %and = and i64 %16, 268435456
  %tobool9.not = icmp eq i64 %and, 0
  br i1 %tobool9.not, label %if.end, label %cleanup

if.end:                                           ; preds = %dl_bw_of.exit
  %dl_bw = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 4
  %17 = ptrtoint ptr %dl_bw to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %dl_bw, align 8
  %cmp = icmp eq i64 %18, %conv
  br i1 %cmp, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %if.end
  %policy.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 31
  %19 = ptrtoint ptr %policy.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %policy.i, align 4
  %cmp.i.i.not = icmp eq i32 %20, 6
  br i1 %cmp.i.i.not, label %cleanup, label %if.end14

if.end14:                                         ; preds = %land.lhs.true, %if.end
  tail call void @_raw_spin_lock(ptr noundef %dl_bw.i) #15
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %add.i96 = add i32 %22, ptrtoint (ptr @runqueues to i32)
  %23 = inttoptr i32 %add.i96 to ptr
  %rd2.i = getelementptr inbounds %struct.rq, ptr %23, i32 0, i32 35
  %24 = ptrtoint ptr %rd2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rd2.i, align 8
  %call.i97 = tail call i32 @rcu_read_lock_sched_held() #15
  %tobool.not.i98 = icmp eq i32 %call.i97, 0
  br i1 %tobool.not.i98, label %land.lhs.true.i99, label %do.end9.i

land.lhs.true.i99:                                ; preds = %if.end14
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %do.end9.i, label %land.lhs.true6.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i99
  %.b24.i = load i1, ptr @dl_bw_cpus.__warned, align 1
  br i1 %.b24.i, label %do.end9.i, label %if.then.i100

if.then.i100:                                     ; preds = %land.lhs.true6.i
  store i1 true, ptr @dl_bw_cpus.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 82, ptr noundef nonnull @.str.15) #15
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then.i100, %land.lhs.true6.i, %land.lhs.true.i99, %if.end14
  %span.i = getelementptr inbounds %struct.root_domain, ptr %25, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %26 = load i32, ptr @nr_cpu_ids, align 4
  %27 = ptrtoint ptr %span.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %span.i, align 8
  %call.i.i.i = tail call i32 @__bitmap_subset(ptr noundef %28, ptr noundef nonnull @__cpu_active_mask, i32 noundef %26) #15
  %tobool11.not.i = icmp eq i32 %call.i.i.i, 0
  %29 = ptrtoint ptr %span.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %span.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %31 = load i32, ptr @nr_cpu_ids, align 4
  br i1 %tobool11.not.i, label %for.cond.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end9.i
  %call4.i.i.i = tail call i32 @__bitmap_weight(ptr noundef %30, i32 noundef %31) #15
  br label %dl_bw_cpus.exit

for.cond.i:                                       ; preds = %for.cond.i, %do.end9.i
  %i.addr.0.i = phi i32 [ %call17.i, %for.cond.i ], [ -1, %do.end9.i ]
  %cpus.0.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %do.end9.i ]
  %call17.i = tail call i32 @cpumask_next_and(i32 noundef %i.addr.0.i, ptr noundef %30, ptr noundef nonnull @__cpu_active_mask) #17
  %cmp.i101 = icmp ult i32 %call17.i, %31
  %inc.i = add i32 %cpus.0.i, 1
  br i1 %cmp.i101, label %for.cond.i, label %dl_bw_cpus.exit

dl_bw_cpus.exit:                                  ; preds = %for.cond.i, %if.end.i.i.i
  %retval.0.i = phi i32 [ %call4.i.i.i, %if.end.i.i.i ], [ %cpus.0.i, %for.cond.i ]
  %call16 = tail call fastcc i32 @dl_bw_capacity(i32 noundef %9)
  %policy.i104 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 31
  %32 = ptrtoint ptr %policy.i104 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %policy.i104, align 4
  br i1 %cmp.i.not, label %land.lhs.true19, label %land.lhs.true46

land.lhs.true19:                                  ; preds = %dl_bw_cpus.exit
  %cmp.i.i105.not = icmp eq i32 %33, 6
  br i1 %cmp.i.i105.not, label %land.lhs.true36, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %land.lhs.true19
  %bw.i = getelementptr inbounds %struct.root_domain, ptr %14, i32 0, i32 9, i32 1
  %34 = ptrtoint ptr %bw.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %bw.i, align 8
  %cmp.not.i = icmp eq i64 %35, -1
  br i1 %cmp.not.i, label %if.then24, label %__dl_overflow.exit

__dl_overflow.exit:                               ; preds = %land.lhs.true22
  %conv.i107 = zext i32 %call16 to i64
  %mul.i = mul i64 %35, %conv.i107
  %shr.i = lshr i64 %mul.i, 10
  %total_bw.i = getelementptr inbounds %struct.root_domain, ptr %14, i32 0, i32 9, i32 2
  %36 = ptrtoint ptr %total_bw.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %total_bw.i, align 8
  %add.i108 = add i64 %37, %conv
  %cmp2.i = icmp ult i64 %shr.i, %add.i108
  br i1 %cmp2.i, label %land.lhs.true33, label %if.then24

if.then24:                                        ; preds = %__dl_overflow.exit, %land.lhs.true22
  %inactive_timer = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 11
  %call26 = tail call zeroext i1 @hrtimer_active(ptr noundef %inactive_timer) #15
  br i1 %call26, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.then24
  %38 = ptrtoint ptr %dl_bw to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %dl_bw, align 8
  %total_bw.i109 = getelementptr inbounds %struct.root_domain, ptr %14, i32 0, i32 9, i32 2
  %40 = ptrtoint ptr %total_bw.i109 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %total_bw.i109, align 8
  %sub.i = sub i64 %41, %39
  store i64 %sub.i, ptr %total_bw.i109, align 8
  %conv.i110 = trunc i64 %39 to i32
  %div.i = sdiv i32 %conv.i110, %retval.0.i
  %conv1.i = sext i32 %div.i to i64
  %call.i.i = tail call i32 @rcu_read_lock_sched_held() #15
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then27
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %do.end.i.i, label %land.lhs.true3.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b14.i.i = load i1, ptr @__dl_update.__warned, align 1
  br i1 %.b14.i.i, label %do.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  store i1 true, ptr @__dl_update.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2758, ptr noundef nonnull @.str.15) #15
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true3.i.i, %land.lhs.true.i.i, %if.then27
  %span.i.i = getelementptr %struct.root_domain, ptr %14, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %42 = load i32, ptr @nr_cpu_ids, align 4
  %43 = ptrtoint ptr %span.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %span.i.i, align 8
  %call515.i.i = tail call i32 @cpumask_next_and(i32 noundef -1, ptr noundef %44, ptr noundef nonnull @__cpu_active_mask) #17
  %cmp16.i.i = icmp ult i32 %call515.i.i, %42
  br i1 %cmp16.i.i, label %for.body.i.i, label %if.end30

for.body.i.i:                                     ; preds = %for.body.i.i, %do.end.i.i
  %call517.i.i = phi i32 [ %call5.i.i, %for.body.i.i ], [ %call515.i.i, %do.end.i.i ]
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call517.i.i
  %45 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %46, ptrtoint (ptr @runqueues to i32)
  %47 = inttoptr i32 %add.i.i to ptr
  %extra_bw.i.i = getelementptr inbounds %struct.rq, ptr %47, i32 0, i32 16, i32 8
  %48 = ptrtoint ptr %extra_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %extra_bw.i.i, align 8
  %add11.i.i = add i64 %49, %conv1.i
  store i64 %add11.i.i, ptr %extra_bw.i.i, align 8
  %50 = ptrtoint ptr %span.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %span.i.i, align 8
  %call5.i.i = tail call i32 @cpumask_next_and(i32 noundef %call517.i.i, ptr noundef %51, ptr noundef nonnull @__cpu_active_mask) #17
  %cmp.i.i111 = icmp ult i32 %call5.i.i, %42
  br i1 %cmp.i.i111, label %for.body.i.i, label %if.end30

if.end30:                                         ; preds = %for.body.i.i, %do.end.i.i, %if.then24
  %total_bw.i112 = getelementptr inbounds %struct.root_domain, ptr %14, i32 0, i32 9, i32 2
  %52 = ptrtoint ptr %total_bw.i112 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %total_bw.i112, align 8
  %add.i113 = add i64 %53, %conv
  store i64 %add.i113, ptr %total_bw.i112, align 8
  %div.i114 = sdiv i32 %cond6, %retval.0.i
  %sub.i115 = sub i32 0, %div.i114
  %conv1.i116 = sext i32 %sub.i115 to i64
  %call.i.i117 = tail call i32 @rcu_read_lock_sched_held() #15
  %tobool.not.i.i118 = icmp eq i32 %call.i.i117, 0
  br i1 %tobool.not.i.i118, label %land.lhs.true.i.i121, label %do.end.i.i128

land.lhs.true.i.i121:                             ; preds = %if.end30
  %call1.i.i119 = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool2.not.i.i120 = icmp eq i32 %call1.i.i119, 0
  br i1 %tobool2.not.i.i120, label %do.end.i.i128, label %land.lhs.true3.i.i123

land.lhs.true3.i.i123:                            ; preds = %land.lhs.true.i.i121
  %.b14.i.i122 = load i1, ptr @__dl_update.__warned, align 1
  br i1 %.b14.i.i122, label %do.end.i.i128, label %if.then.i.i124

if.then.i.i124:                                   ; preds = %land.lhs.true3.i.i123
  store i1 true, ptr @__dl_update.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2758, ptr noundef nonnull @.str.15) #15
  br label %do.end.i.i128

do.end.i.i128:                                    ; preds = %if.then.i.i124, %land.lhs.true3.i.i123, %land.lhs.true.i.i121, %if.end30
  %span.i.i125 = getelementptr %struct.root_domain, ptr %14, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %54 = load i32, ptr @nr_cpu_ids, align 4
  %55 = ptrtoint ptr %span.i.i125 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %span.i.i125, align 8
  %call515.i.i126 = tail call i32 @cpumask_next_and(i32 noundef -1, ptr noundef %56, ptr noundef nonnull @__cpu_active_mask) #17
  %cmp16.i.i127 = icmp ult i32 %call515.i.i126, %54
  br i1 %cmp16.i.i127, label %for.body.i.i136, label %if.end52

for.body.i.i136:                                  ; preds = %for.body.i.i136, %do.end.i.i128
  %call517.i.i129 = phi i32 [ %call5.i.i134, %for.body.i.i136 ], [ %call515.i.i126, %do.end.i.i128 ]
  %arrayidx.i.i130 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call517.i.i129
  %57 = ptrtoint ptr %arrayidx.i.i130 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i.i130, align 4
  %add.i.i131 = add i32 %58, ptrtoint (ptr @runqueues to i32)
  %59 = inttoptr i32 %add.i.i131 to ptr
  %extra_bw.i.i132 = getelementptr inbounds %struct.rq, ptr %59, i32 0, i32 16, i32 8
  %60 = ptrtoint ptr %extra_bw.i.i132 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %extra_bw.i.i132, align 8
  %add11.i.i133 = add i64 %61, %conv1.i116
  store i64 %add11.i.i133, ptr %extra_bw.i.i132, align 8
  %62 = ptrtoint ptr %span.i.i125 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %span.i.i125, align 8
  %call5.i.i134 = tail call i32 @cpumask_next_and(i32 noundef %call517.i.i129, ptr noundef %63, ptr noundef nonnull @__cpu_active_mask) #17
  %cmp.i.i135 = icmp ult i32 %call5.i.i134, %54
  br i1 %cmp.i.i135, label %for.body.i.i136, label %if.end52

land.lhs.true33:                                  ; preds = %__dl_overflow.exit
  %64 = ptrtoint ptr %policy.i104 to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pr = load i32, ptr %policy.i104, align 4
  %cmp.i.i140.not = icmp eq i32 %.pr, 6
  br i1 %cmp.i.i140.not, label %land.lhs.true36, label %if.end52

land.lhs.true36:                                  ; preds = %land.lhs.true33, %land.lhs.true19
  %65 = ptrtoint ptr %dl_bw to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %dl_bw, align 8
  %bw.i142 = getelementptr inbounds %struct.root_domain, ptr %14, i32 0, i32 9, i32 1
  %67 = ptrtoint ptr %bw.i142 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %bw.i142, align 8
  %cmp.not.i143 = icmp eq i64 %68, -1
  br i1 %cmp.not.i143, label %if.then40, label %__dl_overflow.exit152

__dl_overflow.exit152:                            ; preds = %land.lhs.true36
  %conv.i144 = zext i32 %call16 to i64
  %mul.i145 = mul i64 %68, %conv.i144
  %shr.i146 = lshr i64 %mul.i145, 10
  %total_bw.i147 = getelementptr inbounds %struct.root_domain, ptr %14, i32 0, i32 9, i32 2
  %69 = ptrtoint ptr %total_bw.i147 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %total_bw.i147, align 8
  %sub.i148 = sub i64 %conv, %66
  %add.i149 = add i64 %sub.i148, %70
  %cmp2.i150 = icmp ult i64 %shr.i146, %add.i149
  br i1 %cmp2.i150, label %if.end52, label %if.then40

if.then40:                                        ; preds = %__dl_overflow.exit152, %land.lhs.true36
  %total_bw.i153 = getelementptr inbounds %struct.root_domain, ptr %14, i32 0, i32 9, i32 2
  %71 = ptrtoint ptr %total_bw.i153 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %total_bw.i153, align 8
  %sub.i154 = sub i64 %72, %66
  store i64 %sub.i154, ptr %total_bw.i153, align 8
  %conv.i155 = trunc i64 %66 to i32
  %div.i156 = sdiv i32 %conv.i155, %retval.0.i
  %conv1.i157 = sext i32 %div.i156 to i64
  %call.i.i158 = tail call i32 @rcu_read_lock_sched_held() #15
  %tobool.not.i.i159 = icmp eq i32 %call.i.i158, 0
  br i1 %tobool.not.i.i159, label %land.lhs.true.i.i162, label %do.end.i.i169

land.lhs.true.i.i162:                             ; preds = %if.then40
  %call1.i.i160 = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool2.not.i.i161 = icmp eq i32 %call1.i.i160, 0
  br i1 %tobool2.not.i.i161, label %do.end.i.i169, label %land.lhs.true3.i.i164

land.lhs.true3.i.i164:                            ; preds = %land.lhs.true.i.i162
  %.b14.i.i163 = load i1, ptr @__dl_update.__warned, align 1
  br i1 %.b14.i.i163, label %do.end.i.i169, label %if.then.i.i165

if.then.i.i165:                                   ; preds = %land.lhs.true3.i.i164
  store i1 true, ptr @__dl_update.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2758, ptr noundef nonnull @.str.15) #15
  br label %do.end.i.i169

do.end.i.i169:                                    ; preds = %if.then.i.i165, %land.lhs.true3.i.i164, %land.lhs.true.i.i162, %if.then40
  %span.i.i166 = getelementptr %struct.root_domain, ptr %14, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %73 = load i32, ptr @nr_cpu_ids, align 4
  %74 = ptrtoint ptr %span.i.i166 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %span.i.i166, align 8
  %call515.i.i167 = tail call i32 @cpumask_next_and(i32 noundef -1, ptr noundef %75, ptr noundef nonnull @__cpu_active_mask) #17
  %cmp16.i.i168 = icmp ult i32 %call515.i.i167, %73
  br i1 %cmp16.i.i168, label %for.body.i.i177, label %__dl_sub.exit178

for.body.i.i177:                                  ; preds = %for.body.i.i177, %do.end.i.i169
  %call517.i.i170 = phi i32 [ %call5.i.i175, %for.body.i.i177 ], [ %call515.i.i167, %do.end.i.i169 ]
  %arrayidx.i.i171 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call517.i.i170
  %76 = ptrtoint ptr %arrayidx.i.i171 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.i.i171, align 4
  %add.i.i172 = add i32 %77, ptrtoint (ptr @runqueues to i32)
  %78 = inttoptr i32 %add.i.i172 to ptr
  %extra_bw.i.i173 = getelementptr inbounds %struct.rq, ptr %78, i32 0, i32 16, i32 8
  %79 = ptrtoint ptr %extra_bw.i.i173 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %extra_bw.i.i173, align 8
  %add11.i.i174 = add i64 %80, %conv1.i157
  store i64 %add11.i.i174, ptr %extra_bw.i.i173, align 8
  %81 = ptrtoint ptr %span.i.i166 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %span.i.i166, align 8
  %call5.i.i175 = tail call i32 @cpumask_next_and(i32 noundef %call517.i.i170, ptr noundef %82, ptr noundef nonnull @__cpu_active_mask) #17
  %cmp.i.i176 = icmp ult i32 %call5.i.i175, %73
  br i1 %cmp.i.i176, label %for.body.i.i177, label %__dl_sub.exit178

__dl_sub.exit178:                                 ; preds = %for.body.i.i177, %do.end.i.i169
  %83 = ptrtoint ptr %total_bw.i153 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %total_bw.i153, align 8
  %add.i180 = add i64 %84, %conv
  store i64 %add.i180, ptr %total_bw.i153, align 8
  %div.i181 = sdiv i32 %cond6, %retval.0.i
  %sub.i182 = sub i32 0, %div.i181
  %conv1.i183 = sext i32 %sub.i182 to i64
  %call.i.i184 = tail call i32 @rcu_read_lock_sched_held() #15
  %tobool.not.i.i185 = icmp eq i32 %call.i.i184, 0
  br i1 %tobool.not.i.i185, label %land.lhs.true.i.i188, label %do.end.i.i195

land.lhs.true.i.i188:                             ; preds = %__dl_sub.exit178
  %call1.i.i186 = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool2.not.i.i187 = icmp eq i32 %call1.i.i186, 0
  br i1 %tobool2.not.i.i187, label %do.end.i.i195, label %land.lhs.true3.i.i190

land.lhs.true3.i.i190:                            ; preds = %land.lhs.true.i.i188
  %.b14.i.i189 = load i1, ptr @__dl_update.__warned, align 1
  br i1 %.b14.i.i189, label %do.end.i.i195, label %if.then.i.i191

if.then.i.i191:                                   ; preds = %land.lhs.true3.i.i190
  store i1 true, ptr @__dl_update.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2758, ptr noundef nonnull @.str.15) #15
  br label %do.end.i.i195

do.end.i.i195:                                    ; preds = %if.then.i.i191, %land.lhs.true3.i.i190, %land.lhs.true.i.i188, %__dl_sub.exit178
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %85 = load i32, ptr @nr_cpu_ids, align 4
  %86 = ptrtoint ptr %span.i.i166 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %span.i.i166, align 8
  %call515.i.i193 = tail call i32 @cpumask_next_and(i32 noundef -1, ptr noundef %87, ptr noundef nonnull @__cpu_active_mask) #17
  %cmp16.i.i194 = icmp ult i32 %call515.i.i193, %85
  br i1 %cmp16.i.i194, label %for.body.i.i203, label %__dl_add.exit204

for.body.i.i203:                                  ; preds = %for.body.i.i203, %do.end.i.i195
  %call517.i.i196 = phi i32 [ %call5.i.i201, %for.body.i.i203 ], [ %call515.i.i193, %do.end.i.i195 ]
  %arrayidx.i.i197 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call517.i.i196
  %88 = ptrtoint ptr %arrayidx.i.i197 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx.i.i197, align 4
  %add.i.i198 = add i32 %89, ptrtoint (ptr @runqueues to i32)
  %90 = inttoptr i32 %add.i.i198 to ptr
  %extra_bw.i.i199 = getelementptr inbounds %struct.rq, ptr %90, i32 0, i32 16, i32 8
  %91 = ptrtoint ptr %extra_bw.i.i199 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %extra_bw.i.i199, align 8
  %add11.i.i200 = add i64 %92, %conv1.i183
  store i64 %add11.i.i200, ptr %extra_bw.i.i199, align 8
  %93 = ptrtoint ptr %span.i.i166 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %span.i.i166, align 8
  %call5.i.i201 = tail call i32 @cpumask_next_and(i32 noundef %call517.i.i196, ptr noundef %94, ptr noundef nonnull @__cpu_active_mask) #17
  %cmp.i.i202 = icmp ult i32 %call5.i.i201, %85
  br i1 %cmp.i.i202, label %for.body.i.i203, label %__dl_add.exit204

__dl_add.exit204:                                 ; preds = %for.body.i.i203, %do.end.i.i195
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 8
  %95 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %96, 268435456
  %tobool.not.i205 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i205, label %do.end8.i, label %do.body3.i, !prof !114

do.body3.i:                                       ; preds = %__dl_add.exit204
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 237, 0\0A.popsection", ""() #15, !srcloc !127
  unreachable

do.end8.i:                                        ; preds = %__dl_add.exit204
  %on_rq.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 12
  %97 = ptrtoint ptr %on_rq.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %on_rq.i.i, align 4
  %cmp.i.not.i = icmp eq i32 %98, 1
  br i1 %cmp.i.not.i, label %if.end52, label %do.body12.i

do.body12.i:                                      ; preds = %do.end8.i
  %99 = ptrtoint ptr %stack.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %stack.i, align 4
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %cpu.i.i, align 4
  %arrayidx.i206 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %102
  %103 = ptrtoint ptr %arrayidx.i206 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx.i206, align 4
  %add.i207 = add i32 %104, ptrtoint (ptr @runqueues to i32)
  %105 = inttoptr i32 %add.i207 to ptr
  %dl_non_contending.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 9
  %106 = ptrtoint ptr %dl_non_contending.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %bf.load.i = load i8, ptr %dl_non_contending.i, align 4
  %107 = and i8 %bf.load.i, 32
  %tobool18.not.i = icmp eq i8 %107, 0
  br i1 %tobool18.not.i, label %if.end30.i, label %if.then.i.i209

if.then.i.i209:                                   ; preds = %do.body12.i
  %108 = ptrtoint ptr %dl_bw to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %dl_bw, align 8
  %running_bw.i.i.i = getelementptr inbounds %struct.rq, ptr %105, i32 0, i32 16, i32 6
  %110 = ptrtoint ptr %running_bw.i.i.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %running_bw.i.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %112 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i.i.i = icmp eq i32 %112, 0
  br i1 %tobool.not.i.i.i.i, label %lockdep_assert_rq_held.exit.i.i.i, label %land.rhs.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %if.then.i.i209
  %core_enabled.i.i.i.i.i = getelementptr %struct.rq, ptr %105, i32 0, i32 81
  %113 = ptrtoint ptr %core_enabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %core_enabled.i.i.i.i.i, align 128
  %tobool.not.i.i.i.i.i = icmp eq i32 %114, 0
  br i1 %tobool.not.i.i.i.i.i, label %__rq_lockp.exit.i.i.i.i, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.rhs.i.i.i.i
  %core.i.i.i.i.i = getelementptr %struct.rq, ptr %105, i32 0, i32 79
  %115 = ptrtoint ptr %core.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %core.i.i.i.i.i, align 8
  br label %__rq_lockp.exit.i.i.i.i

__rq_lockp.exit.i.i.i.i:                          ; preds = %if.then.i.i.i.i.i, %land.rhs.i.i.i.i
  %retval.0.i.i.i.i.i = phi ptr [ %116, %if.then.i.i.i.i.i ], [ %105, %land.rhs.i.i.i.i ]
  %dep_map.i.i.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i.i.i, i32 0, i32 4
  %call.i.i.i.i.i210 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i.i, i32 noundef -1) #15
  %cmp.not.i.i.i.i = icmp eq i32 %call.i.i.i.i.i210, 0
  br i1 %cmp.not.i.i.i.i, label %do.end.i.i.i.i, label %lockdep_assert_rq_held.exit.i.i.i, !prof !111

do.end.i.i.i.i:                                   ; preds = %__rq_lockp.exit.i.i.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i.i.i

lockdep_assert_rq_held.exit.i.i.i:                ; preds = %do.end.i.i.i.i, %__rq_lockp.exit.i.i.i.i, %if.then.i.i209
  %117 = ptrtoint ptr %running_bw.i.i.i to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %running_bw.i.i.i, align 8
  %sub.i.i.i211 = sub i64 %118, %109
  store i64 %sub.i.i.i211, ptr %running_bw.i.i.i, align 8
  %cmp.i.i.i = icmp ugt i64 %sub.i.i.i211, %111
  br i1 %cmp.i.i.i, label %land.rhs.i.i.i, label %if.end29.i.i.i

land.rhs.i.i.i:                                   ; preds = %lockdep_assert_rq_held.exit.i.i.i
  %.b52.i.i.i = load i1, ptr @__sub_running_bw.__already_done, align 1
  br i1 %.b52.i.i.i, label %if.end29.i.i.i, label %if.then.i.i.i212, !prof !114

if.then.i.i.i212:                                 ; preds = %land.rhs.i.i.i
  store i1 true, ptr @__sub_running_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 175, i32 noundef 9, ptr noundef nonnull @.str.7) #15
  br label %if.end29.i.i.i

if.end29.i.i.i:                                   ; preds = %if.then.i.i.i212, %land.rhs.i.i.i, %lockdep_assert_rq_held.exit.i.i.i
  %119 = ptrtoint ptr %running_bw.i.i.i to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %running_bw.i.i.i, align 8
  %cmp38.i.i.i = icmp ugt i64 %120, %111
  br i1 %cmp38.i.i.i, label %if.then39.i.i.i, label %sub_running_bw.exit.i

if.then39.i.i.i:                                  ; preds = %if.end29.i.i.i
  %121 = ptrtoint ptr %running_bw.i.i.i to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 0, ptr %running_bw.i.i.i, align 8
  br label %sub_running_bw.exit.i

sub_running_bw.exit.i:                            ; preds = %if.then39.i.i.i, %if.end29.i.i.i
  tail call fastcc void @cpufreq_update_util(ptr noundef %105) #15
  %122 = ptrtoint ptr %dl_non_contending.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %bf.load24.i = load i8, ptr %dl_non_contending.i, align 4
  %bf.clear25.i = and i8 %bf.load24.i, -33
  store i8 %bf.clear25.i, ptr %dl_non_contending.i, align 4
  %inactive_timer.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 11
  %call27.i = tail call i32 @hrtimer_try_to_cancel(ptr noundef %inactive_timer.i) #15
  %cmp.i213 = icmp eq i32 %call27.i, 1
  br i1 %cmp.i213, label %if.then28.i, label %if.end30.i

if.then28.i:                                      ; preds = %sub_running_bw.exit.i
  %usage.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !112
  tail call void @llvm.prefetch.p0(ptr %usage.i.i, i32 1, i32 3, i32 1) #15
  %123 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i, ptr %usage.i.i, i32 1, ptr elementtype(i32) %usage.i.i) #15, !srcloc !113
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %123, 0
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i44.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then28.i
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end30.i, label %if.then10.i.i.i.i.i, !prof !114

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef %usage.i.i, i32 noundef 3) #15
  br label %if.end30.i

if.then.i44.i:                                    ; preds = %if.then28.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !115
  tail call void @__put_task_struct(ptr noundef %p) #15
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then.i44.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i, %sub_running_bw.exit.i, %do.body12.i
  %124 = ptrtoint ptr %dl_bw to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %dl_bw, align 8
  %this_bw.i.i = getelementptr inbounds %struct.rq, ptr %105, i32 0, i32 16, i32 7
  %126 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %this_bw.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %128 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i.i215 = icmp eq i32 %128, 0
  br i1 %tobool.not.i.i.i215, label %lockdep_assert_rq_held.exit.i.i, label %land.rhs.i.i46.i

land.rhs.i.i46.i:                                 ; preds = %if.end30.i
  %core_enabled.i.i.i.i = getelementptr %struct.rq, ptr %105, i32 0, i32 81
  %129 = ptrtoint ptr %core_enabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %core_enabled.i.i.i.i, align 128
  %tobool.not.i.i.i45.i = icmp eq i32 %130, 0
  br i1 %tobool.not.i.i.i45.i, label %__rq_lockp.exit.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i46.i
  %core.i.i.i.i = getelementptr %struct.rq, ptr %105, i32 0, i32 79
  %131 = ptrtoint ptr %core.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %core.i.i.i.i, align 8
  br label %__rq_lockp.exit.i.i.i

__rq_lockp.exit.i.i.i:                            ; preds = %if.then.i.i.i.i, %land.rhs.i.i46.i
  %retval.0.i.i.i.i = phi ptr [ %132, %if.then.i.i.i.i ], [ %105, %land.rhs.i.i46.i ]
  %dep_map.i.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i.i, i32 0, i32 4
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #15
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %do.end.i.i.i, label %lockdep_assert_rq_held.exit.i.i, !prof !111

do.end.i.i.i:                                     ; preds = %__rq_lockp.exit.i.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i.i

lockdep_assert_rq_held.exit.i.i:                  ; preds = %do.end.i.i.i, %__rq_lockp.exit.i.i.i, %if.end30.i
  %133 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %this_bw.i.i, align 8
  %sub.i.i = sub i64 %134, %125
  store i64 %sub.i.i, ptr %this_bw.i.i, align 8
  %cmp.i47.i = icmp ugt i64 %sub.i.i, %127
  br i1 %cmp.i47.i, label %land.rhs.i.i, label %if.end29.i.i

land.rhs.i.i:                                     ; preds = %lockdep_assert_rq_held.exit.i.i
  %.b111.i.i = load i1, ptr @__sub_rq_bw.__already_done, align 1
  br i1 %.b111.i.i, label %if.end29.i.i, label %if.then.i48.i, !prof !114

if.then.i48.i:                                    ; preds = %land.rhs.i.i
  store i1 true, ptr @__sub_rq_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 199, i32 noundef 9, ptr noundef nonnull @.str.9) #15
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then.i48.i, %land.rhs.i.i, %lockdep_assert_rq_held.exit.i.i
  %135 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %this_bw.i.i, align 8
  %cmp38.i.i = icmp ugt i64 %136, %127
  br i1 %cmp38.i.i, label %if.then39.i.i, label %if.end41.i.i

if.then39.i.i:                                    ; preds = %if.end29.i.i
  %137 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 0, ptr %this_bw.i.i, align 8
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %if.then39.i.i, %if.end29.i.i
  %running_bw.i.i = getelementptr inbounds %struct.rq, ptr %105, i32 0, i32 16, i32 6
  %138 = ptrtoint ptr %running_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %running_bw.i.i, align 8
  %140 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %this_bw.i.i, align 8
  %cmp44.i.i = icmp ugt i64 %139, %141
  br i1 %cmp44.i.i, label %land.rhs51.i.i, label %__sub_rq_bw.exit.i

land.rhs51.i.i:                                   ; preds = %if.end41.i.i
  %.b109110.i.i = load i1, ptr @__sub_rq_bw.__already_done.10, align 1
  br i1 %.b109110.i.i, label %__sub_rq_bw.exit.i, label %if.then62.i.i, !prof !114

if.then62.i.i:                                    ; preds = %land.rhs51.i.i
  store i1 true, ptr @__sub_rq_bw.__already_done.10, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 202, i32 noundef 9, ptr noundef nonnull @.str.11) #15
  br label %__sub_rq_bw.exit.i

__sub_rq_bw.exit.i:                               ; preds = %if.then62.i.i, %land.rhs51.i.i, %if.end41.i.i
  %142 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %this_bw.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %144 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i50.i = icmp eq i32 %144, 0
  br i1 %tobool.not.i.i50.i, label %lockdep_assert_rq_held.exit.i64.i, label %land.rhs.i.i54.i

land.rhs.i.i54.i:                                 ; preds = %__sub_rq_bw.exit.i
  %core_enabled.i.i.i52.i = getelementptr %struct.rq, ptr %105, i32 0, i32 81
  %145 = ptrtoint ptr %core_enabled.i.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %core_enabled.i.i.i52.i, align 128
  %tobool.not.i.i.i53.i = icmp eq i32 %146, 0
  br i1 %tobool.not.i.i.i53.i, label %__rq_lockp.exit.i.i61.i, label %if.then.i.i.i56.i

if.then.i.i.i56.i:                                ; preds = %land.rhs.i.i54.i
  %core.i.i.i55.i = getelementptr %struct.rq, ptr %105, i32 0, i32 79
  %147 = ptrtoint ptr %core.i.i.i55.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %core.i.i.i55.i, align 8
  br label %__rq_lockp.exit.i.i61.i

__rq_lockp.exit.i.i61.i:                          ; preds = %if.then.i.i.i56.i, %land.rhs.i.i54.i
  %retval.0.i.i.i57.i = phi ptr [ %148, %if.then.i.i.i56.i ], [ %105, %land.rhs.i.i54.i ]
  %dep_map.i.i58.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i57.i, i32 0, i32 4
  %call.i.i.i59.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i58.i, i32 noundef -1) #15
  %cmp.not.i.i60.i = icmp eq i32 %call.i.i.i59.i, 0
  br i1 %cmp.not.i.i60.i, label %do.end.i.i62.i, label %lockdep_assert_rq_held.exit.i64.i, !prof !111

do.end.i.i62.i:                                   ; preds = %__rq_lockp.exit.i.i61.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i64.i

lockdep_assert_rq_held.exit.i64.i:                ; preds = %do.end.i.i62.i, %__rq_lockp.exit.i.i61.i, %__sub_rq_bw.exit.i
  %149 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %this_bw.i.i, align 8
  %add.i.i216 = add i64 %150, %conv
  store i64 %add.i.i216, ptr %this_bw.i.i, align 8
  %cmp.i63.i = icmp ult i64 %add.i.i216, %143
  br i1 %cmp.i63.i, label %land.rhs.i65.i, label %if.end52

land.rhs.i65.i:                                   ; preds = %lockdep_assert_rq_held.exit.i64.i
  %.b42.i.i = load i1, ptr @__add_rq_bw.__already_done, align 1
  br i1 %.b42.i.i, label %if.end52, label %if.then.i66.i, !prof !114

if.then.i66.i:                                    ; preds = %land.rhs.i65.i
  store i1 true, ptr @__add_rq_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 189, i32 noundef 9, ptr noundef nonnull @.str.12) #15
  br label %if.end52

land.lhs.true46:                                  ; preds = %dl_bw_cpus.exit
  %cmp.i.i220.not = icmp ne i32 %33, 6
  %spec.select = sext i1 %cmp.i.i220.not to i32
  br label %if.end52

if.end52:                                         ; preds = %land.lhs.true46, %if.then.i66.i, %land.rhs.i65.i, %lockdep_assert_rq_held.exit.i64.i, %do.end8.i, %__dl_overflow.exit152, %land.lhs.true33, %for.body.i.i136, %do.end.i.i128
  %err.0 = phi i32 [ %spec.select, %land.lhs.true46 ], [ 0, %do.end.i.i128 ], [ 0, %do.end8.i ], [ 0, %lockdep_assert_rq_held.exit.i64.i ], [ 0, %land.rhs.i65.i ], [ 0, %if.then.i66.i ], [ -1, %__dl_overflow.exit152 ], [ -1, %land.lhs.true33 ], [ 0, %for.body.i.i136 ]
  tail call void @_raw_spin_unlock(ptr noundef %dl_bw.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %land.lhs.true, %dl_bw_of.exit
  %retval.0 = phi i32 [ %err.0, %if.end52 ], [ 0, %dl_bw_of.exit ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dl_bw_capacity(i32 noundef %i) unnamed_addr #6 align 64 {
entry:
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_asym_cpucapacity, ptr blockaddress(@dl_bw_capacity, %if.else)) #15
          to label %land.lhs.true [label %if.else], !srcloc !117

land.lhs.true:                                    ; preds = %entry
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %1, ptrtoint (ptr @runqueues to i32)
  %2 = inttoptr i32 %add.i to ptr
  %cpu_capacity_orig.i = getelementptr inbounds %struct.rq, ptr %2, i32 0, i32 38
  %3 = ptrtoint ptr %cpu_capacity_orig.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu_capacity_orig.i, align 4
  %cmp = icmp eq i32 %4, 1024
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %rd2.i = getelementptr inbounds %struct.rq, ptr %2, i32 0, i32 35
  %5 = ptrtoint ptr %rd2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rd2.i, align 8
  %call.i = tail call i32 @rcu_read_lock_sched_held() #15
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %do.end9.i

land.lhs.true.i:                                  ; preds = %if.then
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %do.end9.i, label %land.lhs.true6.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b24.i = load i1, ptr @dl_bw_cpus.__warned, align 1
  br i1 %.b24.i, label %do.end9.i, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true6.i
  store i1 true, ptr @dl_bw_cpus.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 82, ptr noundef nonnull @.str.15) #15
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then.i, %land.lhs.true6.i, %land.lhs.true.i, %if.then
  %span.i = getelementptr inbounds %struct.root_domain, ptr %6, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %8 = ptrtoint ptr %span.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %span.i, align 8
  %call.i.i.i = tail call i32 @__bitmap_subset(ptr noundef %9, ptr noundef nonnull @__cpu_active_mask, i32 noundef %7) #15
  %tobool11.not.i = icmp eq i32 %call.i.i.i, 0
  %10 = ptrtoint ptr %span.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %span.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  br i1 %tobool11.not.i, label %for.cond.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end9.i
  %call4.i.i.i = tail call i32 @__bitmap_weight(ptr noundef %11, i32 noundef %12) #15
  br label %dl_bw_cpus.exit

for.cond.i:                                       ; preds = %for.cond.i, %do.end9.i
  %i.addr.0.i = phi i32 [ %call17.i, %for.cond.i ], [ -1, %do.end9.i ]
  %cpus.0.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %do.end9.i ]
  %call17.i = tail call i32 @cpumask_next_and(i32 noundef %i.addr.0.i, ptr noundef %11, ptr noundef nonnull @__cpu_active_mask) #17
  %cmp.i = icmp ult i32 %call17.i, %12
  %inc.i = add i32 %cpus.0.i, 1
  br i1 %cmp.i, label %for.cond.i, label %dl_bw_cpus.exit

dl_bw_cpus.exit:                                  ; preds = %for.cond.i, %if.end.i.i.i
  %retval.0.i10 = phi i32 [ %call4.i.i.i, %if.end.i.i.i ], [ %cpus.0.i, %for.cond.i ]
  %shl = shl i32 %retval.0.i10, 10
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %arrayidx.i11 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %i
  %13 = ptrtoint ptr %arrayidx.i11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i11, align 4
  %add.i12 = add i32 %14, ptrtoint (ptr @runqueues to i32)
  %15 = inttoptr i32 %add.i12 to ptr
  %rd2.i13 = getelementptr inbounds %struct.rq, ptr %15, i32 0, i32 35
  %16 = ptrtoint ptr %rd2.i13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rd2.i13, align 8
  %call.i14 = tail call i32 @rcu_read_lock_sched_held() #15
  %tobool.not.i15 = icmp eq i32 %call.i14, 0
  br i1 %tobool.not.i15, label %land.lhs.true.i18, label %do.end9.i22

land.lhs.true.i18:                                ; preds = %if.else
  %call4.i16 = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool5.not.i17 = icmp eq i32 %call4.i16, 0
  br i1 %tobool5.not.i17, label %do.end9.i22, label %land.lhs.true6.i19

land.lhs.true6.i19:                               ; preds = %land.lhs.true.i18
  %.b17.i = load i1, ptr @__dl_bw_capacity.__warned, align 1
  br i1 %.b17.i, label %do.end9.i22, label %if.then.i20

if.then.i20:                                      ; preds = %land.lhs.true6.i19
  store i1 true, ptr @__dl_bw_capacity.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 101, ptr noundef nonnull @.str.15) #15
  br label %do.end9.i22

do.end9.i22:                                      ; preds = %if.then.i20, %land.lhs.true6.i19, %land.lhs.true.i18, %if.else
  %span.i21 = getelementptr inbounds %struct.root_domain, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %span.i21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %span.i21, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %call1018.i = tail call i32 @cpumask_next_and(i32 noundef -1, ptr noundef %19, ptr noundef nonnull @__cpu_active_mask) #17
  %cmp19.i = icmp ult i32 %call1018.i, %20
  br i1 %cmp19.i, label %for.body.i, label %return

for.body.i:                                       ; preds = %for.body.i, %do.end9.i22
  %call1021.i = phi i32 [ %call10.i, %for.body.i ], [ %call1018.i, %do.end9.i22 ]
  %cap.020.i = phi i32 [ %add12.i, %for.body.i ], [ 0, %do.end9.i22 ]
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call1021.i
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %22, ptrtoint (ptr @runqueues to i32)
  %23 = inttoptr i32 %add.i.i to ptr
  %cpu_capacity_orig.i.i = getelementptr inbounds %struct.rq, ptr %23, i32 0, i32 38
  %24 = ptrtoint ptr %cpu_capacity_orig.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu_capacity_orig.i.i, align 4
  %add12.i = add i32 %25, %cap.020.i
  %call10.i = tail call i32 @cpumask_next_and(i32 noundef %call1021.i, ptr noundef %19, ptr noundef nonnull @__cpu_active_mask) #17
  %cmp.i23 = icmp ult i32 %call10.i, %20
  br i1 %cmp.i23, label %for.body.i, label %return

return:                                           ; preds = %for.body.i, %do.end9.i22, %dl_bw_cpus.exit
  %retval.0 = phi i32 [ %shl, %dl_bw_cpus.exit ], [ 0, %do.end9.i22 ], [ %add12.i, %for.body.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hrtimer_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__setparam_dl(ptr nocapture noundef %p, ptr nocapture noundef readonly %attr) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %sched_runtime = getelementptr inbounds %struct.sched_attr, ptr %attr, i32 0, i32 5
  %0 = ptrtoint ptr %sched_runtime to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sched_runtime, align 8
  %dl_runtime = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 1
  %2 = ptrtoint ptr %dl_runtime to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %dl_runtime, align 8
  %sched_deadline = getelementptr inbounds %struct.sched_attr, ptr %attr, i32 0, i32 6
  %3 = ptrtoint ptr %sched_deadline to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %sched_deadline, align 8
  %dl_deadline = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 2
  %5 = ptrtoint ptr %dl_deadline to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %dl_deadline, align 8
  %sched_period = getelementptr inbounds %struct.sched_attr, ptr %attr, i32 0, i32 7
  %6 = ptrtoint ptr %sched_period to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sched_period, align 8
  %tobool.not = icmp eq i64 %7, 0
  %spec.select = select i1 %tobool.not, i64 %4, i64 %7
  %dl_period = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 3
  %8 = ptrtoint ptr %dl_period to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %spec.select, ptr %dl_period, align 8
  %sched_flags = getelementptr inbounds %struct.sched_attr, ptr %attr, i32 0, i32 2
  %9 = ptrtoint ptr %sched_flags to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %sched_flags, align 8
  %11 = trunc i64 %10 to i32
  %conv = and i32 %11, 268435462
  %flags = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 8
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %flags, align 8
  %call = tail call i32 @to_ratio(i64 noundef %spec.select, i64 noundef %1) #15
  %conv4 = zext i32 %call to i64
  %dl_bw = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 4
  %13 = ptrtoint ptr %dl_bw to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv4, ptr %dl_bw, align 8
  %14 = ptrtoint ptr %dl_deadline to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %dl_deadline, align 8
  %16 = ptrtoint ptr %dl_runtime to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %dl_runtime, align 8
  %call7 = tail call i32 @to_ratio(i64 noundef %15, i64 noundef %17) #15
  %conv8 = zext i32 %call7 to i64
  %dl_density = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 5
  %18 = ptrtoint ptr %dl_density to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv8, ptr %dl_density, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @__getparam_dl(ptr nocapture noundef readonly %p, ptr nocapture noundef %attr) local_unnamed_addr #7 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %rt_priority = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 16
  %0 = ptrtoint ptr %rt_priority to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rt_priority, align 4
  %sched_priority = getelementptr inbounds %struct.sched_attr, ptr %attr, i32 0, i32 4
  %2 = ptrtoint ptr %sched_priority to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %sched_priority, align 4
  %dl_runtime = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 1
  %3 = ptrtoint ptr %dl_runtime to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %dl_runtime, align 8
  %sched_runtime = getelementptr inbounds %struct.sched_attr, ptr %attr, i32 0, i32 5
  %5 = ptrtoint ptr %sched_runtime to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %sched_runtime, align 8
  %dl_deadline = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 2
  %6 = ptrtoint ptr %dl_deadline to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %dl_deadline, align 8
  %sched_deadline = getelementptr inbounds %struct.sched_attr, ptr %attr, i32 0, i32 6
  %8 = ptrtoint ptr %sched_deadline to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %sched_deadline, align 8
  %dl_period = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 3
  %9 = ptrtoint ptr %dl_period to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %dl_period, align 8
  %sched_period = getelementptr inbounds %struct.sched_attr, ptr %attr, i32 0, i32 7
  %11 = ptrtoint ptr %sched_period to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %sched_period, align 8
  %sched_flags = getelementptr inbounds %struct.sched_attr, ptr %attr, i32 0, i32 2
  %12 = ptrtoint ptr %sched_flags to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %sched_flags, align 8
  %and = and i64 %13, -268435463
  store i64 %and, ptr %sched_flags, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 8
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 8
  %conv = zext i32 %15 to i64
  %or = or i64 %and, %conv
  store i64 %or, ptr %sched_flags, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @__checkparam_dl(ptr nocapture noundef readonly %attr) local_unnamed_addr #8 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %sched_flags = getelementptr inbounds %struct.sched_attr, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %sched_flags to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sched_flags, align 8
  %and = and i64 %1, 268435456
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %sched_deadline = getelementptr inbounds %struct.sched_attr, ptr %attr, i32 0, i32 6
  %2 = ptrtoint ptr %sched_deadline to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %sched_deadline, align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %sched_runtime = getelementptr inbounds %struct.sched_attr, ptr %attr, i32 0, i32 5
  %4 = ptrtoint ptr %sched_runtime to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sched_runtime, align 8
  %cmp3 = icmp ugt i64 %5, 1023
  %tobool8.not = icmp sgt i64 %3, -1
  %or.cond = select i1 %cmp3, i1 %tobool8.not, i1 false
  br i1 %or.cond, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %if.end2
  %sched_period = getelementptr inbounds %struct.sched_attr, ptr %attr, i32 0, i32 7
  %6 = ptrtoint ptr %sched_period to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sched_period, align 8
  %tobool10.not = icmp sgt i64 %7, -1
  br i1 %tobool10.not, label %if.end12, label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  %tobool14.not = icmp eq i64 %7, 0
  %spec.select = select i1 %tobool14.not, i64 %3, i64 %7
  %cmp19 = icmp ult i64 %spec.select, %3
  %cmp23 = icmp ult i64 %3, %5
  %or.cond56 = select i1 %cmp19, i1 true, i1 %cmp23
  br i1 %or.cond56, label %cleanup, label %do.end

do.end:                                           ; preds = %if.end12
  %8 = load volatile i32, ptr @sysctl_sched_dl_period_max, align 4
  %9 = load volatile i32, ptr @sysctl_sched_dl_period_min, align 4
  %conv30 = zext i32 %9 to i64
  %mul31 = mul nuw nsw i64 %conv30, 1000
  %cmp32 = icmp ult i64 %spec.select, %mul31
  br i1 %cmp32, label %cleanup, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %do.end
  %conv = zext i32 %8 to i64
  %mul = mul nuw nsw i64 %conv, 1000
  %cmp35 = icmp ule i64 %spec.select, %mul
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false34, %do.end, %if.end12, %lor.lhs.false, %if.end2, %if.end, %entry
  %retval.0 = phi i1 [ true, %entry ], [ false, %if.end ], [ false, %if.end2 ], [ false, %lor.lhs.false ], [ false, %if.end12 ], [ false, %do.end ], [ %cmp35, %lor.lhs.false34 ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @__dl_clear_params(ptr noundef %p) local_unnamed_addr #7 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %dl = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20
  %dl_runtime = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 1
  %flags = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %flags, align 8
  %dl_throttled = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 9
  %1 = call ptr @memset(ptr %dl_runtime, i32 0, i32 40)
  %2 = ptrtoint ptr %dl_throttled to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %dl_throttled, align 4
  %bf.clear8 = and i8 %bf.load, 15
  store i8 %bf.clear8, ptr %dl_throttled, align 4
  %pi_se = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 12
  %3 = ptrtoint ptr %pi_se to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dl, ptr %pi_se, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @dl_param_changed(ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %attr) local_unnamed_addr #9 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %dl_runtime = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 1
  %0 = ptrtoint ptr %dl_runtime to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %dl_runtime, align 8
  %sched_runtime = getelementptr inbounds %struct.sched_attr, ptr %attr, i32 0, i32 5
  %2 = ptrtoint ptr %sched_runtime to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %sched_runtime, align 8
  %cmp.not = icmp eq i64 %1, %3
  br i1 %cmp.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dl_deadline = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 2
  %4 = ptrtoint ptr %dl_deadline to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %dl_deadline, align 8
  %sched_deadline = getelementptr inbounds %struct.sched_attr, ptr %attr, i32 0, i32 6
  %6 = ptrtoint ptr %sched_deadline to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sched_deadline, align 8
  %cmp1.not = icmp eq i64 %5, %7
  br i1 %cmp1.not, label %lor.lhs.false2, label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %dl_period = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 3
  %8 = ptrtoint ptr %dl_period to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %dl_period, align 8
  %sched_period = getelementptr inbounds %struct.sched_attr, ptr %attr, i32 0, i32 7
  %10 = ptrtoint ptr %sched_period to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %sched_period, align 8
  %cmp3.not = icmp eq i64 %9, %11
  br i1 %cmp3.not, label %lor.lhs.false4, label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %flags = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 8
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 8
  %conv = zext i32 %13 to i64
  %sched_flags = getelementptr inbounds %struct.sched_attr, ptr %attr, i32 0, i32 2
  %14 = ptrtoint ptr %sched_flags to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %sched_flags, align 8
  %and = and i64 %15, 268435462
  %cmp5.not = icmp ne i64 %and, %conv
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  %retval.0 = phi i1 [ true, %lor.lhs.false2 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp5.not, %lor.lhs.false4 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dl_task_can_attach(ptr nocapture noundef readonly %p, ptr noundef %cs_cpus_allowed) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call6.i.i = tail call i32 @_find_first_and_bit(ptr noundef nonnull @__cpu_active_mask, ptr noundef %cs_cpus_allowed, i32 noundef %0) #15
  %1 = tail call i32 @llvm.read_register.i32(metadata !100) #15
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !125
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_sched_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %rcu_read_lock_sched.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %entry
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %rcu_read_lock_sched.exit, label %land.lhs.true3.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b6.i = load i1, ptr @rcu_read_lock_sched.__warned, align 1
  br i1 %.b6.i, label %rcu_read_lock_sched.exit, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  store i1 true, ptr @rcu_read_lock_sched.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 788, ptr noundef nonnull @.str.25) #15
  br label %rcu_read_lock_sched.exit

rcu_read_lock_sched.exit:                         ; preds = %if.then.i, %land.lhs.true3.i, %land.lhs.true.i, %entry
  %call.i23 = tail call i32 @rcu_read_lock_sched_held() #15
  %tobool.not.i24 = icmp eq i32 %call.i23, 0
  br i1 %tobool.not.i24, label %land.lhs.true.i25, label %dl_bw_of.exit

land.lhs.true.i25:                                ; preds = %rcu_read_lock_sched.exit
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %dl_bw_of.exit, label %land.lhs.true3.i26

land.lhs.true3.i26:                               ; preds = %land.lhs.true.i25
  %.b8.i = load i1, ptr @dl_bw_of.__warned, align 1
  br i1 %.b8.i, label %dl_bw_of.exit, label %if.then.i27

if.then.i27:                                      ; preds = %land.lhs.true3.i26
  store i1 true, ptr @dl_bw_of.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 72, ptr noundef nonnull @.str.15) #15
  br label %dl_bw_of.exit

dl_bw_of.exit:                                    ; preds = %if.then.i27, %land.lhs.true3.i26, %land.lhs.true.i25, %rcu_read_lock_sched.exit
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call6.i.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %6, ptrtoint (ptr @runqueues to i32)
  %7 = inttoptr i32 %add.i to ptr
  %rd.i = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 35
  %8 = ptrtoint ptr %rd.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rd.i, align 8
  %dl_bw.i = getelementptr inbounds %struct.root_domain, ptr %9, i32 0, i32 9
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dl_bw.i) #15
  %call3 = tail call fastcc i32 @dl_bw_capacity(i32 noundef %call6.i.i)
  %dl_bw = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 4
  %bw.i = getelementptr inbounds %struct.root_domain, ptr %9, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %bw.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %bw.i, align 8
  %cmp.not.i = icmp eq i64 %11, -1
  br i1 %cmp.not.i, label %if.else, label %__dl_overflow.exit

__dl_overflow.exit:                               ; preds = %dl_bw_of.exit
  %12 = ptrtoint ptr %dl_bw to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %dl_bw, align 8
  %conv.i = zext i32 %call3 to i64
  %mul.i = mul i64 %11, %conv.i
  %shr.i = lshr i64 %mul.i, 10
  %total_bw.i = getelementptr inbounds %struct.root_domain, ptr %9, i32 0, i32 9, i32 2
  %14 = ptrtoint ptr %total_bw.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %total_bw.i, align 8
  %add.i28 = add i64 %15, %13
  %cmp2.i = icmp ult i64 %shr.i, %add.i28
  br i1 %cmp2.i, label %do.body8, label %if.else

if.else:                                          ; preds = %__dl_overflow.exit, %dl_bw_of.exit
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %add.i30 = add i32 %17, ptrtoint (ptr @runqueues to i32)
  %18 = inttoptr i32 %add.i30 to ptr
  %rd2.i = getelementptr inbounds %struct.rq, ptr %18, i32 0, i32 35
  %19 = ptrtoint ptr %rd2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rd2.i, align 8
  %call.i31 = tail call i32 @rcu_read_lock_sched_held() #15
  %tobool.not.i32 = icmp eq i32 %call.i31, 0
  br i1 %tobool.not.i32, label %land.lhs.true.i33, label %do.end9.i

land.lhs.true.i33:                                ; preds = %if.else
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %do.end9.i, label %land.lhs.true6.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i33
  %.b24.i = load i1, ptr @dl_bw_cpus.__warned, align 1
  br i1 %.b24.i, label %do.end9.i, label %if.then.i34

if.then.i34:                                      ; preds = %land.lhs.true6.i
  store i1 true, ptr @dl_bw_cpus.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 82, ptr noundef nonnull @.str.15) #15
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then.i34, %land.lhs.true6.i, %land.lhs.true.i33, %if.else
  %span.i = getelementptr inbounds %struct.root_domain, ptr %20, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %22 = ptrtoint ptr %span.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %span.i, align 8
  %call.i.i.i = tail call i32 @__bitmap_subset(ptr noundef %23, ptr noundef nonnull @__cpu_active_mask, i32 noundef %21) #15
  %tobool11.not.i = icmp eq i32 %call.i.i.i, 0
  %24 = ptrtoint ptr %span.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %span.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %26 = load i32, ptr @nr_cpu_ids, align 4
  br i1 %tobool11.not.i, label %for.cond.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end9.i
  %call4.i.i.i = tail call i32 @__bitmap_weight(ptr noundef %25, i32 noundef %26) #15
  br label %dl_bw_cpus.exit

for.cond.i:                                       ; preds = %for.cond.i, %do.end9.i
  %i.addr.0.i = phi i32 [ %call17.i, %for.cond.i ], [ -1, %do.end9.i ]
  %cpus.0.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %do.end9.i ]
  %call17.i = tail call i32 @cpumask_next_and(i32 noundef %i.addr.0.i, ptr noundef %25, ptr noundef nonnull @__cpu_active_mask) #17
  %cmp.i = icmp ult i32 %call17.i, %26
  %inc.i = add i32 %cpus.0.i, 1
  br i1 %cmp.i, label %for.cond.i, label %dl_bw_cpus.exit

dl_bw_cpus.exit:                                  ; preds = %for.cond.i, %if.end.i.i.i
  %retval.0.i = phi i32 [ %call4.i.i.i, %if.end.i.i.i ], [ %cpus.0.i, %for.cond.i ]
  %27 = ptrtoint ptr %dl_bw to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %dl_bw, align 8
  %total_bw.i36 = getelementptr inbounds %struct.root_domain, ptr %9, i32 0, i32 9, i32 2
  %29 = ptrtoint ptr %total_bw.i36 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %total_bw.i36, align 8
  %add.i37 = add i64 %30, %28
  store i64 %add.i37, ptr %total_bw.i36, align 8
  %conv.i38 = trunc i64 %28 to i32
  %div.i = sdiv i32 %conv.i38, %retval.0.i
  %sub.i = sub i32 0, %div.i
  %conv1.i = sext i32 %sub.i to i64
  %call.i.i = tail call i32 @rcu_read_lock_sched_held() #15
  %tobool.not.i.i39 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i39, label %land.lhs.true.i.i, label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %dl_bw_cpus.exit
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %do.end.i.i, label %land.lhs.true3.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b14.i.i = load i1, ptr @__dl_update.__warned, align 1
  br i1 %.b14.i.i, label %do.end.i.i, label %if.then.i.i40

if.then.i.i40:                                    ; preds = %land.lhs.true3.i.i
  store i1 true, ptr @__dl_update.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2758, ptr noundef nonnull @.str.15) #15
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i40, %land.lhs.true3.i.i, %land.lhs.true.i.i, %dl_bw_cpus.exit
  %span.i.i = getelementptr %struct.root_domain, ptr %9, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %31 = load i32, ptr @nr_cpu_ids, align 4
  %32 = ptrtoint ptr %span.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %span.i.i, align 8
  %call515.i.i = tail call i32 @cpumask_next_and(i32 noundef -1, ptr noundef %33, ptr noundef nonnull @__cpu_active_mask) #17
  %cmp16.i.i = icmp ult i32 %call515.i.i, %31
  br i1 %cmp16.i.i, label %for.body.i.i, label %do.body8

for.body.i.i:                                     ; preds = %for.body.i.i, %do.end.i.i
  %call517.i.i = phi i32 [ %call5.i.i, %for.body.i.i ], [ %call515.i.i, %do.end.i.i ]
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call517.i.i
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i41 = add i32 %35, ptrtoint (ptr @runqueues to i32)
  %36 = inttoptr i32 %add.i.i41 to ptr
  %extra_bw.i.i = getelementptr inbounds %struct.rq, ptr %36, i32 0, i32 16, i32 8
  %37 = ptrtoint ptr %extra_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %extra_bw.i.i, align 8
  %add11.i.i = add i64 %38, %conv1.i
  store i64 %add11.i.i, ptr %extra_bw.i.i, align 8
  %39 = ptrtoint ptr %span.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %span.i.i, align 8
  %call5.i.i = tail call i32 @cpumask_next_and(i32 noundef %call517.i.i, ptr noundef %40, ptr noundef nonnull @__cpu_active_mask) #17
  %cmp.i.i = icmp ult i32 %call5.i.i, %31
  br i1 %cmp.i.i, label %for.body.i.i, label %do.body8

do.body8:                                         ; preds = %for.body.i.i, %do.end.i.i, %__dl_overflow.exit
  %ret.0 = phi i32 [ -16, %__dl_overflow.exit ], [ 0, %do.end.i.i ], [ 0, %for.body.i.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dl_bw.i, i32 noundef %call2) #15
  %call.i42 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i42, label %rcu_read_unlock_sched.exit, label %land.lhs.true.i45

land.lhs.true.i45:                                ; preds = %do.body8
  %call1.i43 = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool.not.i44 = icmp eq i32 %call1.i43, 0
  br i1 %tobool.not.i44, label %rcu_read_unlock_sched.exit, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i45
  %.b6.i46 = load i1, ptr @rcu_read_unlock_sched.__warned, align 1
  br i1 %.b6.i46, label %rcu_read_unlock_sched.exit, label %if.then.i47

if.then.i47:                                      ; preds = %land.lhs.true2.i
  store i1 true, ptr @rcu_read_unlock_sched.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 806, ptr noundef nonnull @.str.26) #15
  br label %rcu_read_unlock_sched.exit

rcu_read_unlock_sched.exit:                       ; preds = %if.then.i47, %land.lhs.true2.i, %land.lhs.true.i45, %do.body8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_sched_lock_map) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !126
  %41 = tail call i32 @llvm.read_register.i32(metadata !100) #15
  %and.i.i.i.i48 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i48 to ptr
  %preempt_count.i.i.i49 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i49, align 4
  %sub.i.i = add i32 %44, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i49, align 4
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dl_cpuset_cpumask_can_shrink(ptr noundef %cur, ptr noundef %trial) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !100) #15
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !125
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_sched_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %rcu_read_lock_sched.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %entry
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %rcu_read_lock_sched.exit, label %land.lhs.true3.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b6.i = load i1, ptr @rcu_read_lock_sched.__warned, align 1
  br i1 %.b6.i, label %rcu_read_lock_sched.exit, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  store i1 true, ptr @rcu_read_lock_sched.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 788, ptr noundef nonnull @.str.25) #15
  br label %rcu_read_lock_sched.exit

rcu_read_lock_sched.exit:                         ; preds = %if.then.i, %land.lhs.true3.i, %land.lhs.true.i, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %call.i23 = tail call i32 @_find_first_bit_be(ptr noundef %cur, i32 noundef %4) #15
  %call.i24 = tail call i32 @rcu_read_lock_sched_held() #15
  %tobool.not.i25 = icmp eq i32 %call.i24, 0
  br i1 %tobool.not.i25, label %land.lhs.true.i26, label %dl_bw_of.exit

land.lhs.true.i26:                                ; preds = %rcu_read_lock_sched.exit
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %dl_bw_of.exit, label %land.lhs.true3.i27

land.lhs.true3.i27:                               ; preds = %land.lhs.true.i26
  %.b8.i = load i1, ptr @dl_bw_of.__warned, align 1
  br i1 %.b8.i, label %dl_bw_of.exit, label %if.then.i28

if.then.i28:                                      ; preds = %land.lhs.true3.i27
  store i1 true, ptr @dl_bw_of.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 72, ptr noundef nonnull @.str.15) #15
  br label %dl_bw_of.exit

dl_bw_of.exit:                                    ; preds = %if.then.i28, %land.lhs.true3.i27, %land.lhs.true.i26, %rcu_read_lock_sched.exit
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call.i23
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %6, ptrtoint (ptr @runqueues to i32)
  %7 = inttoptr i32 %add.i to ptr
  %rd.i = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 35
  %8 = ptrtoint ptr %rd.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rd.i, align 8
  %dl_bw.i = getelementptr inbounds %struct.root_domain, ptr %9, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef %trial, i32 noundef %10) #15
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dl_bw.i) #15
  %bw = getelementptr inbounds %struct.root_domain, ptr %9, i32 0, i32 9, i32 1
  %11 = ptrtoint ptr %bw to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %bw, align 8
  %cmp4.not = icmp eq i64 %12, -1
  br i1 %cmp4.not, label %do.body10, label %land.lhs.true

land.lhs.true:                                    ; preds = %dl_bw_of.exit
  %conv7 = sext i32 %call4.i.i to i64
  %mul = mul i64 %12, %conv7
  %total_bw = getelementptr inbounds %struct.root_domain, ptr %9, i32 0, i32 9, i32 2
  %13 = ptrtoint ptr %total_bw to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %total_bw, align 8
  %cmp8 = icmp uge i64 %mul, %14
  %spec.select = zext i1 %cmp8 to i32
  br label %do.body10

do.body10:                                        ; preds = %land.lhs.true, %dl_bw_of.exit
  %ret.0 = phi i32 [ 1, %dl_bw_of.exit ], [ %spec.select, %land.lhs.true ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dl_bw.i, i32 noundef %call3) #15
  %call.i29 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i29, label %rcu_read_unlock_sched.exit, label %land.lhs.true.i32

land.lhs.true.i32:                                ; preds = %do.body10
  %call1.i30 = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool.not.i31 = icmp eq i32 %call1.i30, 0
  br i1 %tobool.not.i31, label %rcu_read_unlock_sched.exit, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i32
  %.b6.i33 = load i1, ptr @rcu_read_unlock_sched.__warned, align 1
  br i1 %.b6.i33, label %rcu_read_unlock_sched.exit, label %if.then.i34

if.then.i34:                                      ; preds = %land.lhs.true2.i
  store i1 true, ptr @rcu_read_unlock_sched.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 806, ptr noundef nonnull @.str.26) #15
  br label %rcu_read_unlock_sched.exit

rcu_read_unlock_sched.exit:                       ; preds = %if.then.i34, %land.lhs.true2.i, %land.lhs.true.i32, %do.body10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_sched_lock_map) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !126
  %15 = tail call i32 @llvm.read_register.i32(metadata !100) #15
  %and.i.i.i.i35 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i35 to ptr
  %preempt_count.i.i.i36 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i36, align 4
  %sub.i.i37 = add i32 %18, -1
  store volatile i32 %sub.i.i37, ptr %preempt_count.i.i.i36, align 4
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dl_cpu_busy(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !100) #15
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !125
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_sched_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %rcu_read_lock_sched.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %entry
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %rcu_read_lock_sched.exit, label %land.lhs.true3.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b6.i = load i1, ptr @rcu_read_lock_sched.__warned, align 1
  br i1 %.b6.i, label %rcu_read_lock_sched.exit, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  store i1 true, ptr @rcu_read_lock_sched.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 788, ptr noundef nonnull @.str.25) #15
  br label %rcu_read_lock_sched.exit

rcu_read_lock_sched.exit:                         ; preds = %if.then.i, %land.lhs.true3.i, %land.lhs.true.i, %entry
  %call.i16 = tail call i32 @rcu_read_lock_sched_held() #15
  %tobool.not.i17 = icmp eq i32 %call.i16, 0
  br i1 %tobool.not.i17, label %land.lhs.true.i18, label %dl_bw_of.exit

land.lhs.true.i18:                                ; preds = %rcu_read_lock_sched.exit
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %dl_bw_of.exit, label %land.lhs.true3.i19

land.lhs.true3.i19:                               ; preds = %land.lhs.true.i18
  %.b8.i = load i1, ptr @dl_bw_of.__warned, align 1
  br i1 %.b8.i, label %dl_bw_of.exit, label %if.then.i20

if.then.i20:                                      ; preds = %land.lhs.true3.i19
  store i1 true, ptr @dl_bw_of.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 72, ptr noundef nonnull @.str.15) #15
  br label %dl_bw_of.exit

dl_bw_of.exit:                                    ; preds = %if.then.i20, %land.lhs.true3.i19, %land.lhs.true.i18, %rcu_read_lock_sched.exit
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %5, ptrtoint (ptr @runqueues to i32)
  %6 = inttoptr i32 %add.i to ptr
  %rd.i = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 35
  %7 = ptrtoint ptr %rd.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rd.i, align 8
  %dl_bw.i = getelementptr inbounds %struct.root_domain, ptr %8, i32 0, i32 9
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dl_bw.i) #15
  %call2 = tail call fastcc i32 @dl_bw_capacity(i32 noundef %cpu)
  %bw.i = getelementptr inbounds %struct.root_domain, ptr %8, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %bw.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %bw.i, align 8
  %cmp.not.i = icmp eq i64 %10, -1
  br i1 %cmp.not.i, label %__dl_overflow.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %dl_bw_of.exit
  %conv.i = zext i32 %call2 to i64
  %mul.i = mul i64 %10, %conv.i
  %shr.i = lshr i64 %mul.i, 10
  %total_bw.i = getelementptr inbounds %struct.root_domain, ptr %8, i32 0, i32 9, i32 2
  %11 = ptrtoint ptr %total_bw.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %total_bw.i, align 8
  %cmp2.i = icmp ult i64 %shr.i, %12
  br label %__dl_overflow.exit

__dl_overflow.exit:                               ; preds = %land.rhs.i, %dl_bw_of.exit
  %13 = phi i1 [ false, %dl_bw_of.exit ], [ %cmp2.i, %land.rhs.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dl_bw.i, i32 noundef %call1) #15
  %call.i21 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i21, label %rcu_read_unlock_sched.exit, label %land.lhs.true.i24

land.lhs.true.i24:                                ; preds = %__dl_overflow.exit
  %call1.i22 = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool.not.i23 = icmp eq i32 %call1.i22, 0
  br i1 %tobool.not.i23, label %rcu_read_unlock_sched.exit, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i24
  %.b6.i25 = load i1, ptr @rcu_read_unlock_sched.__warned, align 1
  br i1 %.b6.i25, label %rcu_read_unlock_sched.exit, label %if.then.i26

if.then.i26:                                      ; preds = %land.lhs.true2.i
  store i1 true, ptr @rcu_read_unlock_sched.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 806, ptr noundef nonnull @.str.26) #15
  br label %rcu_read_unlock_sched.exit

rcu_read_unlock_sched.exit:                       ; preds = %if.then.i26, %land.lhs.true2.i, %land.lhs.true.i24, %__dl_overflow.exit
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_sched_lock_map) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !126
  %14 = tail call i32 @llvm.read_register.i32(metadata !100) #15
  %and.i.i.i.i27 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i27 to ptr
  %preempt_count.i.i.i28 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i28, align 4
  %sub.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i28, align 4
  ret i1 %13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @print_dl_stats(ptr noundef %m, i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @runqueues to i32)
  %2 = inttoptr i32 %add to ptr
  %dl = getelementptr inbounds %struct.rq, ptr %2, i32 0, i32 16
  tail call void @print_dl_rq(ptr noundef %m, i32 noundef %cpu, ptr noundef %dl) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_dl_rq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_rq_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_rq_clock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @replenish_dl_entity(ptr nocapture noundef %dl_se) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %stack.i.i = getelementptr i8, ptr %dl_se, i32 -420
  %0 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stack.i.i, align 4
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %cpu.i.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %5, ptrtoint (ptr @runqueues to i32)
  %6 = inttoptr i32 %add.i to ptr
  %pi_se.i = getelementptr inbounds %struct.sched_dl_entity, ptr %dl_se, i32 0, i32 12
  %7 = ptrtoint ptr %pi_se.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pi_se.i, align 8
  %dl_runtime = getelementptr inbounds %struct.sched_dl_entity, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %dl_runtime to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %dl_runtime, align 8
  %cmp = icmp eq i64 %10, 0
  br i1 %cmp, label %do.body4, label %do.end9, !prof !111

do.body4:                                         ; preds = %entry
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 768, 0\0A.popsection", ""() #15, !srcloc !128
  unreachable

do.end9:                                          ; preds = %entry
  %dl_deadline = getelementptr inbounds %struct.sched_dl_entity, ptr %dl_se, i32 0, i32 2
  %11 = ptrtoint ptr %dl_deadline to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %dl_deadline, align 8
  %cmp10 = icmp eq i64 %12, 0
  br i1 %cmp10, label %if.then11, label %if.end17

if.then11:                                        ; preds = %do.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %13 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i, label %lockdep_assert_rq_held.exit.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %if.then11
  %core_enabled.i.i.i = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 81
  %14 = ptrtoint ptr %core_enabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %core_enabled.i.i.i, align 128
  %tobool.not.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i.i, label %__rq_lockp.exit.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  %core.i.i.i = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 79
  %16 = ptrtoint ptr %core.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %core.i.i.i, align 8
  br label %__rq_lockp.exit.i.i

__rq_lockp.exit.i.i:                              ; preds = %if.then.i.i.i, %land.rhs.i.i
  %retval.0.i.i.i = phi ptr [ %17, %if.then.i.i.i ], [ %6, %land.rhs.i.i ]
  %dep_map.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i, i32 0, i32 4
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #15
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %lockdep_assert_rq_held.exit.i, !prof !111

do.end.i.i:                                       ; preds = %__rq_lockp.exit.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i

lockdep_assert_rq_held.exit.i:                    ; preds = %do.end.i.i, %__rq_lockp.exit.i.i, %if.then11
  %clock_update_flags.i.i = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 25
  %18 = ptrtoint ptr %clock_update_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %clock_update_flags.i.i, align 4
  %cmp.i.i = icmp ult i32 %19, 2
  br i1 %cmp.i.i, label %land.rhs.i3.i, label %rq_clock.exit

land.rhs.i3.i:                                    ; preds = %lockdep_assert_rq_held.exit.i
  %.b37.i.i = load i1, ptr @assert_clock_updated.__already_done, align 1
  br i1 %.b37.i.i, label %rq_clock.exit, label %if.then.i.i, !prof !114

if.then.i.i:                                      ; preds = %land.rhs.i3.i
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #15
  br label %rq_clock.exit

rq_clock.exit:                                    ; preds = %if.then.i.i, %land.rhs.i3.i, %lockdep_assert_rq_held.exit.i
  %clock.i = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 26
  %20 = ptrtoint ptr %clock.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %clock.i, align 32
  %22 = ptrtoint ptr %pi_se.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pi_se.i, align 8
  %dl_deadline14 = getelementptr inbounds %struct.sched_dl_entity, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %dl_deadline14 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %dl_deadline14, align 8
  %add = add i64 %25, %21
  %deadline = getelementptr inbounds %struct.sched_dl_entity, ptr %dl_se, i32 0, i32 7
  %26 = ptrtoint ptr %deadline to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %add, ptr %deadline, align 8
  %dl_runtime16 = getelementptr inbounds %struct.sched_dl_entity, ptr %23, i32 0, i32 1
  %27 = ptrtoint ptr %dl_runtime16 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %dl_runtime16, align 8
  %runtime = getelementptr inbounds %struct.sched_dl_entity, ptr %dl_se, i32 0, i32 6
  %29 = ptrtoint ptr %runtime to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %runtime, align 8
  br label %if.end17

if.end17:                                         ; preds = %rq_clock.exit, %do.end9
  %dl_yielded = getelementptr inbounds %struct.sched_dl_entity, ptr %dl_se, i32 0, i32 9
  %30 = ptrtoint ptr %dl_yielded to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load = load i8, ptr %dl_yielded, align 4
  %31 = and i8 %bf.load, 64
  %tobool18.not = icmp eq i8 %31, 0
  br i1 %tobool18.not, label %if.end23, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end17
  %runtime19 = getelementptr inbounds %struct.sched_dl_entity, ptr %dl_se, i32 0, i32 6
  %32 = ptrtoint ptr %runtime19 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %runtime19, align 8
  %cmp20 = icmp sgt i64 %33, 0
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %land.lhs.true
  %34 = ptrtoint ptr %runtime19 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 0, ptr %runtime19, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %land.lhs.true, %if.end17
  %runtime24 = getelementptr inbounds %struct.sched_dl_entity, ptr %dl_se, i32 0, i32 6
  %35 = ptrtoint ptr %runtime24 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %runtime24, align 8
  %cmp25163 = icmp slt i64 %36, 1
  br i1 %cmp25163, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.end23
  %37 = ptrtoint ptr %pi_se.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pi_se.i, align 8
  %dl_period = getelementptr inbounds %struct.sched_dl_entity, ptr %38, i32 0, i32 3
  %deadline27 = getelementptr inbounds %struct.sched_dl_entity, ptr %dl_se, i32 0, i32 7
  %dl_runtime30 = getelementptr inbounds %struct.sched_dl_entity, ptr %38, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body, %while.body.lr.ph
  %39 = phi i64 [ %36, %while.body.lr.ph ], [ %add32, %while.body ]
  %40 = ptrtoint ptr %dl_period to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %dl_period, align 8
  %42 = ptrtoint ptr %deadline27 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %deadline27, align 8
  %add28 = add i64 %43, %41
  store i64 %add28, ptr %deadline27, align 8
  %44 = ptrtoint ptr %dl_runtime30 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %dl_runtime30, align 8
  %add32 = add i64 %45, %39
  %46 = ptrtoint ptr %runtime24 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %add32, ptr %runtime24, align 8
  %cmp25 = icmp slt i64 %add32, 1
  br i1 %cmp25, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %if.end23
  %deadline33 = getelementptr inbounds %struct.sched_dl_entity, ptr %dl_se, i32 0, i32 7
  %47 = ptrtoint ptr %deadline33 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %deadline33, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %49 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i121 = icmp eq i32 %49, 0
  br i1 %tobool.not.i.i121, label %lockdep_assert_rq_held.exit.i135, label %land.rhs.i.i124

land.rhs.i.i124:                                  ; preds = %while.end
  %core_enabled.i.i.i122 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 81
  %50 = ptrtoint ptr %core_enabled.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %core_enabled.i.i.i122, align 128
  %tobool.not.i.i.i123 = icmp eq i32 %51, 0
  br i1 %tobool.not.i.i.i123, label %__rq_lockp.exit.i.i131, label %if.then.i.i.i126

if.then.i.i.i126:                                 ; preds = %land.rhs.i.i124
  %core.i.i.i125 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 79
  %52 = ptrtoint ptr %core.i.i.i125 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %core.i.i.i125, align 8
  br label %__rq_lockp.exit.i.i131

__rq_lockp.exit.i.i131:                           ; preds = %if.then.i.i.i126, %land.rhs.i.i124
  %retval.0.i.i.i127 = phi ptr [ %53, %if.then.i.i.i126 ], [ %6, %land.rhs.i.i124 ]
  %dep_map.i.i128 = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i127, i32 0, i32 4
  %call.i.i.i129 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i128, i32 noundef -1) #15
  %cmp.not.i.i130 = icmp eq i32 %call.i.i.i129, 0
  br i1 %cmp.not.i.i130, label %do.end.i.i132, label %lockdep_assert_rq_held.exit.i135, !prof !111

do.end.i.i132:                                    ; preds = %__rq_lockp.exit.i.i131
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i135

lockdep_assert_rq_held.exit.i135:                 ; preds = %do.end.i.i132, %__rq_lockp.exit.i.i131, %while.end
  %clock_update_flags.i.i133 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 25
  %54 = ptrtoint ptr %clock_update_flags.i.i133 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %clock_update_flags.i.i133, align 4
  %cmp.i.i134 = icmp ult i32 %55, 2
  br i1 %cmp.i.i134, label %land.rhs.i3.i137, label %rq_clock.exit140

land.rhs.i3.i137:                                 ; preds = %lockdep_assert_rq_held.exit.i135
  %.b37.i.i136 = load i1, ptr @assert_clock_updated.__already_done, align 1
  br i1 %.b37.i.i136, label %rq_clock.exit140, label %if.then.i.i138, !prof !114

if.then.i.i138:                                   ; preds = %land.rhs.i3.i137
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #15
  br label %rq_clock.exit140

rq_clock.exit140:                                 ; preds = %if.then.i.i138, %land.rhs.i3.i137, %lockdep_assert_rq_held.exit.i135
  %clock.i139 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 26
  %56 = ptrtoint ptr %clock.i139 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %clock.i139, align 32
  %sub.i = sub i64 %48, %57
  %cmp.i = icmp slt i64 %sub.i, 0
  br i1 %cmp.i, label %land.end, label %if.end68

land.end:                                         ; preds = %rq_clock.exit140
  %.b116 = load i1, ptr @replenish_dl_entity.__already_done, align 1
  br i1 %.b116, label %if.end52, label %if.then47, !prof !114

if.then47:                                        ; preds = %land.end
  store i1 true, ptr @replenish_dl_entity.__already_done, align 1
  %call51 = tail call i32 (ptr, ...) @_printk_deferred(ptr noundef nonnull @.str.2) #18
  br label %if.end52

if.end52:                                         ; preds = %if.then47, %land.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %58 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i141 = icmp eq i32 %58, 0
  br i1 %tobool.not.i.i141, label %lockdep_assert_rq_held.exit.i155, label %land.rhs.i.i144

land.rhs.i.i144:                                  ; preds = %if.end52
  %core_enabled.i.i.i142 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 81
  %59 = ptrtoint ptr %core_enabled.i.i.i142 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %core_enabled.i.i.i142, align 128
  %tobool.not.i.i.i143 = icmp eq i32 %60, 0
  br i1 %tobool.not.i.i.i143, label %__rq_lockp.exit.i.i151, label %if.then.i.i.i146

if.then.i.i.i146:                                 ; preds = %land.rhs.i.i144
  %core.i.i.i145 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 79
  %61 = ptrtoint ptr %core.i.i.i145 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %core.i.i.i145, align 8
  br label %__rq_lockp.exit.i.i151

__rq_lockp.exit.i.i151:                           ; preds = %if.then.i.i.i146, %land.rhs.i.i144
  %retval.0.i.i.i147 = phi ptr [ %62, %if.then.i.i.i146 ], [ %6, %land.rhs.i.i144 ]
  %dep_map.i.i148 = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i147, i32 0, i32 4
  %call.i.i.i149 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i148, i32 noundef -1) #15
  %cmp.not.i.i150 = icmp eq i32 %call.i.i.i149, 0
  br i1 %cmp.not.i.i150, label %do.end.i.i152, label %lockdep_assert_rq_held.exit.i155, !prof !111

do.end.i.i152:                                    ; preds = %__rq_lockp.exit.i.i151
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i155

lockdep_assert_rq_held.exit.i155:                 ; preds = %do.end.i.i152, %__rq_lockp.exit.i.i151, %if.end52
  %63 = ptrtoint ptr %clock_update_flags.i.i133 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %clock_update_flags.i.i133, align 4
  %cmp.i.i154 = icmp ult i32 %64, 2
  br i1 %cmp.i.i154, label %land.rhs.i3.i157, label %rq_clock.exit160

land.rhs.i3.i157:                                 ; preds = %lockdep_assert_rq_held.exit.i155
  %.b37.i.i156 = load i1, ptr @assert_clock_updated.__already_done, align 1
  br i1 %.b37.i.i156, label %rq_clock.exit160, label %if.then.i.i158, !prof !114

if.then.i.i158:                                   ; preds = %land.rhs.i3.i157
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #15
  br label %rq_clock.exit160

rq_clock.exit160:                                 ; preds = %if.then.i.i158, %land.rhs.i3.i157, %lockdep_assert_rq_held.exit.i155
  %65 = ptrtoint ptr %clock.i139 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %clock.i139, align 32
  %67 = ptrtoint ptr %pi_se.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pi_se.i, align 8
  %dl_deadline62 = getelementptr inbounds %struct.sched_dl_entity, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %dl_deadline62 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %dl_deadline62, align 8
  %add63 = add i64 %70, %66
  %71 = ptrtoint ptr %deadline33 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %add63, ptr %deadline33, align 8
  %dl_runtime66 = getelementptr inbounds %struct.sched_dl_entity, ptr %68, i32 0, i32 1
  %72 = ptrtoint ptr %dl_runtime66 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %dl_runtime66, align 8
  %74 = ptrtoint ptr %runtime24 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %73, ptr %runtime24, align 8
  br label %if.end68

if.end68:                                         ; preds = %rq_clock.exit160, %rq_clock.exit140
  %75 = ptrtoint ptr %dl_yielded to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load70 = load i8, ptr %dl_yielded, align 4
  %76 = and i8 %bf.load70, 64
  %tobool74.not = icmp eq i8 %76, 0
  %bf.clear78 = and i8 %bf.load70, -65
  %tobool83.not = icmp sgt i8 %bf.clear78, -1
  %77 = and i1 %tobool83.not, %tobool74.not
  br i1 %77, label %80, label %78

78:                                               ; preds = %if.end68
  %bf.clear87 = and i8 %bf.load70, 63
  %simplifycfg.merge = select i1 %tobool83.not, i8 %bf.clear78, i8 %bf.clear87
  %79 = ptrtoint ptr %dl_yielded to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %simplifycfg.merge, ptr %dl_yielded, align 4
  br label %80

80:                                               ; preds = %78, %if.end68
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_unpin_lock(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dl_task_offline_migration(ptr noundef %rq, ptr noundef %p) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @find_lock_later_rq(ptr noundef %p, ptr noundef %rq)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.i.i, label %if.end21

if.end.i.i:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %cpus_ptr = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 33
  %1 = ptrtoint ptr %cpus_ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cpus_ptr, align 4
  %call6.i.i = tail call i32 @_find_first_and_bit(ptr noundef nonnull @__cpu_active_mask, ptr noundef %2, i32 noundef %0) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not = icmp ult i32 %call6.i.i, %3
  br i1 %cmp.not, label %do.body16, label %do.body

do.body:                                          ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_rt_runtime to i32))
  %4 = load i32, ptr @sysctl_sched_rt_runtime, align 4
  %tobool4.not = icmp slt i32 %4, 0
  br i1 %tobool4.not, label %do.end13, label %do.body8, !prof !114

do.body8:                                         ; preds = %do.body
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 613, 0\0A.popsection", ""() #15, !srcloc !129
  unreachable

do.end13:                                         ; preds = %do.body
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef nonnull @__cpu_active_mask, i32 noundef %3) #15
  br label %do.body16

do.body16:                                        ; preds = %do.end13, %if.end.i.i
  %cpu.0 = phi i32 [ %call.i, %do.end13 ], [ %call6.i.i, %if.end.i.i ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu.0
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add = add i32 %6, ptrtoint (ptr @runqueues to i32)
  %7 = inttoptr i32 %add to ptr
  %call20 = tail call fastcc i32 @double_lock_balance(ptr noundef %rq, ptr noundef %7)
  br label %if.end21

if.end21:                                         ; preds = %do.body16, %entry
  %later_rq.0 = phi ptr [ %call, %entry ], [ %7, %do.body16 ]
  %dl = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20
  %dl_non_contending = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 9
  %8 = ptrtoint ptr %dl_non_contending to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %dl_non_contending, align 4
  %9 = and i8 %bf.load, -96
  %10 = icmp eq i8 %9, 0
  %flags.i.i143 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 8
  %11 = ptrtoint ptr %flags.i.i143 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i.i143, align 8
  %and.i.i144 = and i32 %12, 268435456
  %tobool.i.not.i145 = icmp eq i32 %and.i.i144, 0
  br i1 %10, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end21
  br i1 %tobool.i.not.i145, label %if.then.i, label %sub_running_bw.exit

if.then.i:                                        ; preds = %if.then28
  %dl_bw.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 4
  %13 = ptrtoint ptr %dl_bw.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %dl_bw.i, align 8
  %running_bw.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 6
  %15 = ptrtoint ptr %running_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %running_bw.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %17 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i.i, label %lockdep_assert_rq_held.exit.i.i, label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.then.i
  %core_enabled.i.i.i.i = getelementptr %struct.rq, ptr %rq, i32 0, i32 81
  %18 = ptrtoint ptr %core_enabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %core_enabled.i.i.i.i, align 128
  %tobool.not.i.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i.i.i, label %__rq_lockp.exit.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i
  %core.i.i.i.i = getelementptr %struct.rq, ptr %rq, i32 0, i32 79
  %20 = ptrtoint ptr %core.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %core.i.i.i.i, align 8
  br label %__rq_lockp.exit.i.i.i

__rq_lockp.exit.i.i.i:                            ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %21, %if.then.i.i.i.i ], [ %rq, %land.rhs.i.i.i ]
  %dep_map.i.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i.i, i32 0, i32 4
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #15
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %do.end.i.i.i, label %lockdep_assert_rq_held.exit.i.i, !prof !111

do.end.i.i.i:                                     ; preds = %__rq_lockp.exit.i.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i.i

lockdep_assert_rq_held.exit.i.i:                  ; preds = %do.end.i.i.i, %__rq_lockp.exit.i.i.i, %if.then.i
  %22 = ptrtoint ptr %running_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %running_bw.i.i, align 8
  %sub.i.i = sub i64 %23, %14
  store i64 %sub.i.i, ptr %running_bw.i.i, align 8
  %cmp.i.i = icmp ugt i64 %sub.i.i, %16
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end29.i.i

land.rhs.i.i:                                     ; preds = %lockdep_assert_rq_held.exit.i.i
  %.b52.i.i = load i1, ptr @__sub_running_bw.__already_done, align 1
  br i1 %.b52.i.i, label %if.end29.i.i, label %if.then.i.i92, !prof !114

if.then.i.i92:                                    ; preds = %land.rhs.i.i
  store i1 true, ptr @__sub_running_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 175, i32 noundef 9, ptr noundef nonnull @.str.7) #15
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then.i.i92, %land.rhs.i.i, %lockdep_assert_rq_held.exit.i.i
  %24 = ptrtoint ptr %running_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %running_bw.i.i, align 8
  %cmp38.i.i = icmp ugt i64 %25, %16
  br i1 %cmp38.i.i, label %if.then39.i.i, label %__sub_running_bw.exit.i

if.then39.i.i:                                    ; preds = %if.end29.i.i
  %26 = ptrtoint ptr %running_bw.i.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 0, ptr %running_bw.i.i, align 8
  br label %__sub_running_bw.exit.i

__sub_running_bw.exit.i:                          ; preds = %if.then39.i.i, %if.end29.i.i
  tail call fastcc void @cpufreq_update_util(ptr noundef %rq) #15
  br label %sub_running_bw.exit

sub_running_bw.exit:                              ; preds = %__sub_running_bw.exit.i, %if.then28
  %27 = ptrtoint ptr %flags.i.i143 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i.i143, align 8
  %and.i.i94 = and i32 %28, 268435456
  %tobool.i.not.i95 = icmp eq i32 %and.i.i94, 0
  br i1 %tobool.i.not.i95, label %if.then.i98, label %sub_rq_bw.exit

if.then.i98:                                      ; preds = %sub_running_bw.exit
  %dl_bw.i96 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 4
  %29 = ptrtoint ptr %dl_bw.i96 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %dl_bw.i96, align 8
  %this_bw.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 7
  %31 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %this_bw.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %33 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i.i97 = icmp eq i32 %33, 0
  br i1 %tobool.not.i.i.i97, label %lockdep_assert_rq_held.exit.i.i113, label %land.rhs.i.i.i102

land.rhs.i.i.i102:                                ; preds = %if.then.i98
  %core_enabled.i.i.i.i100 = getelementptr %struct.rq, ptr %rq, i32 0, i32 81
  %34 = ptrtoint ptr %core_enabled.i.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %core_enabled.i.i.i.i100, align 128
  %tobool.not.i.i.i.i101 = icmp eq i32 %35, 0
  br i1 %tobool.not.i.i.i.i101, label %__rq_lockp.exit.i.i.i109, label %if.then.i.i.i.i104

if.then.i.i.i.i104:                               ; preds = %land.rhs.i.i.i102
  %core.i.i.i.i103 = getelementptr %struct.rq, ptr %rq, i32 0, i32 79
  %36 = ptrtoint ptr %core.i.i.i.i103 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %core.i.i.i.i103, align 8
  br label %__rq_lockp.exit.i.i.i109

__rq_lockp.exit.i.i.i109:                         ; preds = %if.then.i.i.i.i104, %land.rhs.i.i.i102
  %retval.0.i.i.i.i105 = phi ptr [ %37, %if.then.i.i.i.i104 ], [ %rq, %land.rhs.i.i.i102 ]
  %dep_map.i.i.i106 = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i.i105, i32 0, i32 4
  %call.i.i.i.i107 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i106, i32 noundef -1) #15
  %cmp.not.i.i.i108 = icmp eq i32 %call.i.i.i.i107, 0
  br i1 %cmp.not.i.i.i108, label %do.end.i.i.i110, label %lockdep_assert_rq_held.exit.i.i113, !prof !111

do.end.i.i.i110:                                  ; preds = %__rq_lockp.exit.i.i.i109
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i.i113

lockdep_assert_rq_held.exit.i.i113:               ; preds = %do.end.i.i.i110, %__rq_lockp.exit.i.i.i109, %if.then.i98
  %38 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %this_bw.i.i, align 8
  %sub.i.i111 = sub i64 %39, %30
  store i64 %sub.i.i111, ptr %this_bw.i.i, align 8
  %cmp.i.i112 = icmp ugt i64 %sub.i.i111, %32
  br i1 %cmp.i.i112, label %land.rhs.i.i114, label %if.end29.i.i117

land.rhs.i.i114:                                  ; preds = %lockdep_assert_rq_held.exit.i.i113
  %.b111.i.i = load i1, ptr @__sub_rq_bw.__already_done, align 1
  br i1 %.b111.i.i, label %if.end29.i.i117, label %if.then.i.i115, !prof !114

if.then.i.i115:                                   ; preds = %land.rhs.i.i114
  store i1 true, ptr @__sub_rq_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 199, i32 noundef 9, ptr noundef nonnull @.str.9) #15
  br label %if.end29.i.i117

if.end29.i.i117:                                  ; preds = %if.then.i.i115, %land.rhs.i.i114, %lockdep_assert_rq_held.exit.i.i113
  %40 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %this_bw.i.i, align 8
  %cmp38.i.i116 = icmp ugt i64 %41, %32
  br i1 %cmp38.i.i116, label %if.then39.i.i118, label %if.end41.i.i

if.then39.i.i118:                                 ; preds = %if.end29.i.i117
  %42 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 0, ptr %this_bw.i.i, align 8
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %if.then39.i.i118, %if.end29.i.i117
  %running_bw.i.i119 = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 6
  %43 = ptrtoint ptr %running_bw.i.i119 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %running_bw.i.i119, align 8
  %45 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %this_bw.i.i, align 8
  %cmp44.i.i = icmp ugt i64 %44, %46
  br i1 %cmp44.i.i, label %land.rhs51.i.i, label %sub_rq_bw.exit

land.rhs51.i.i:                                   ; preds = %if.end41.i.i
  %.b109110.i.i = load i1, ptr @__sub_rq_bw.__already_done.10, align 1
  br i1 %.b109110.i.i, label %sub_rq_bw.exit, label %if.then62.i.i, !prof !114

if.then62.i.i:                                    ; preds = %land.rhs51.i.i
  store i1 true, ptr @__sub_rq_bw.__already_done.10, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 202, i32 noundef 9, ptr noundef nonnull @.str.11) #15
  br label %sub_rq_bw.exit

sub_rq_bw.exit:                                   ; preds = %if.then62.i.i, %land.rhs51.i.i, %if.end41.i.i, %sub_running_bw.exit
  %dl34 = getelementptr inbounds %struct.rq, ptr %later_rq.0, i32 0, i32 16
  %47 = ptrtoint ptr %flags.i.i143 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags.i.i143, align 8
  %and.i.i121 = and i32 %48, 268435456
  %tobool.i.not.i122 = icmp eq i32 %and.i.i121, 0
  br i1 %tobool.i.not.i122, label %if.then.i126, label %add_rq_bw.exit

if.then.i126:                                     ; preds = %sub_rq_bw.exit
  %dl_bw.i123 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 4
  %49 = ptrtoint ptr %dl_bw.i123 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %dl_bw.i123, align 8
  %this_bw.i.i124 = getelementptr inbounds %struct.rq, ptr %later_rq.0, i32 0, i32 16, i32 7
  %51 = ptrtoint ptr %this_bw.i.i124 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %this_bw.i.i124, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %53 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i.i125 = icmp eq i32 %53, 0
  br i1 %tobool.not.i.i.i125, label %lockdep_assert_rq_held.exit.i.i140, label %land.rhs.i.i.i130

land.rhs.i.i.i130:                                ; preds = %if.then.i126
  %core_enabled.i.i.i.i128 = getelementptr %struct.rq, ptr %later_rq.0, i32 0, i32 81
  %54 = ptrtoint ptr %core_enabled.i.i.i.i128 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %core_enabled.i.i.i.i128, align 128
  %tobool.not.i.i.i.i129 = icmp eq i32 %55, 0
  br i1 %tobool.not.i.i.i.i129, label %__rq_lockp.exit.i.i.i137, label %if.then.i.i.i.i132

if.then.i.i.i.i132:                               ; preds = %land.rhs.i.i.i130
  %core.i.i.i.i131 = getelementptr %struct.rq, ptr %later_rq.0, i32 0, i32 79
  %56 = ptrtoint ptr %core.i.i.i.i131 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %core.i.i.i.i131, align 8
  br label %__rq_lockp.exit.i.i.i137

__rq_lockp.exit.i.i.i137:                         ; preds = %if.then.i.i.i.i132, %land.rhs.i.i.i130
  %retval.0.i.i.i.i133 = phi ptr [ %57, %if.then.i.i.i.i132 ], [ %later_rq.0, %land.rhs.i.i.i130 ]
  %dep_map.i.i.i134 = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i.i133, i32 0, i32 4
  %call.i.i.i.i135 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i134, i32 noundef -1) #15
  %cmp.not.i.i.i136 = icmp eq i32 %call.i.i.i.i135, 0
  br i1 %cmp.not.i.i.i136, label %do.end.i.i.i138, label %lockdep_assert_rq_held.exit.i.i140, !prof !111

do.end.i.i.i138:                                  ; preds = %__rq_lockp.exit.i.i.i137
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i.i140

lockdep_assert_rq_held.exit.i.i140:               ; preds = %do.end.i.i.i138, %__rq_lockp.exit.i.i.i137, %if.then.i126
  %58 = ptrtoint ptr %this_bw.i.i124 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %this_bw.i.i124, align 8
  %add.i.i = add i64 %59, %50
  store i64 %add.i.i, ptr %this_bw.i.i124, align 8
  %cmp.i.i139 = icmp ult i64 %add.i.i, %52
  br i1 %cmp.i.i139, label %land.rhs.i.i141, label %add_rq_bw.exit

land.rhs.i.i141:                                  ; preds = %lockdep_assert_rq_held.exit.i.i140
  %.b42.i.i = load i1, ptr @__add_rq_bw.__already_done, align 1
  br i1 %.b42.i.i, label %add_rq_bw.exit, label %if.then.i.i142, !prof !114

if.then.i.i142:                                   ; preds = %land.rhs.i.i141
  store i1 true, ptr @__add_rq_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 189, i32 noundef 9, ptr noundef nonnull @.str.12) #15
  br label %add_rq_bw.exit

add_rq_bw.exit:                                   ; preds = %if.then.i.i142, %land.rhs.i.i141, %lockdep_assert_rq_held.exit.i.i140, %sub_rq_bw.exit
  tail call fastcc void @add_running_bw(ptr noundef %dl, ptr noundef %dl34)
  br label %if.end41

if.else:                                          ; preds = %if.end21
  br i1 %tobool.i.not.i145, label %if.then.i149, label %sub_rq_bw.exit177

if.then.i149:                                     ; preds = %if.else
  %dl_bw.i146 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 4
  %60 = ptrtoint ptr %dl_bw.i146 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %dl_bw.i146, align 8
  %this_bw.i.i147 = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 7
  %62 = ptrtoint ptr %this_bw.i.i147 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %this_bw.i.i147, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %64 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i.i148 = icmp eq i32 %64, 0
  br i1 %tobool.not.i.i.i148, label %lockdep_assert_rq_held.exit.i.i164, label %land.rhs.i.i.i153

land.rhs.i.i.i153:                                ; preds = %if.then.i149
  %core_enabled.i.i.i.i151 = getelementptr %struct.rq, ptr %rq, i32 0, i32 81
  %65 = ptrtoint ptr %core_enabled.i.i.i.i151 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %core_enabled.i.i.i.i151, align 128
  %tobool.not.i.i.i.i152 = icmp eq i32 %66, 0
  br i1 %tobool.not.i.i.i.i152, label %__rq_lockp.exit.i.i.i160, label %if.then.i.i.i.i155

if.then.i.i.i.i155:                               ; preds = %land.rhs.i.i.i153
  %core.i.i.i.i154 = getelementptr %struct.rq, ptr %rq, i32 0, i32 79
  %67 = ptrtoint ptr %core.i.i.i.i154 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %core.i.i.i.i154, align 8
  br label %__rq_lockp.exit.i.i.i160

__rq_lockp.exit.i.i.i160:                         ; preds = %if.then.i.i.i.i155, %land.rhs.i.i.i153
  %retval.0.i.i.i.i156 = phi ptr [ %68, %if.then.i.i.i.i155 ], [ %rq, %land.rhs.i.i.i153 ]
  %dep_map.i.i.i157 = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i.i156, i32 0, i32 4
  %call.i.i.i.i158 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i157, i32 noundef -1) #15
  %cmp.not.i.i.i159 = icmp eq i32 %call.i.i.i.i158, 0
  br i1 %cmp.not.i.i.i159, label %do.end.i.i.i161, label %lockdep_assert_rq_held.exit.i.i164, !prof !111

do.end.i.i.i161:                                  ; preds = %__rq_lockp.exit.i.i.i160
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i.i164

lockdep_assert_rq_held.exit.i.i164:               ; preds = %do.end.i.i.i161, %__rq_lockp.exit.i.i.i160, %if.then.i149
  %69 = ptrtoint ptr %this_bw.i.i147 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %this_bw.i.i147, align 8
  %sub.i.i162 = sub i64 %70, %61
  store i64 %sub.i.i162, ptr %this_bw.i.i147, align 8
  %cmp.i.i163 = icmp ugt i64 %sub.i.i162, %63
  br i1 %cmp.i.i163, label %land.rhs.i.i166, label %if.end29.i.i169

land.rhs.i.i166:                                  ; preds = %lockdep_assert_rq_held.exit.i.i164
  %.b111.i.i165 = load i1, ptr @__sub_rq_bw.__already_done, align 1
  br i1 %.b111.i.i165, label %if.end29.i.i169, label %if.then.i.i167, !prof !114

if.then.i.i167:                                   ; preds = %land.rhs.i.i166
  store i1 true, ptr @__sub_rq_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 199, i32 noundef 9, ptr noundef nonnull @.str.9) #15
  br label %if.end29.i.i169

if.end29.i.i169:                                  ; preds = %if.then.i.i167, %land.rhs.i.i166, %lockdep_assert_rq_held.exit.i.i164
  %71 = ptrtoint ptr %this_bw.i.i147 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %this_bw.i.i147, align 8
  %cmp38.i.i168 = icmp ugt i64 %72, %63
  br i1 %cmp38.i.i168, label %if.then39.i.i170, label %if.end41.i.i173

if.then39.i.i170:                                 ; preds = %if.end29.i.i169
  %73 = ptrtoint ptr %this_bw.i.i147 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 0, ptr %this_bw.i.i147, align 8
  br label %if.end41.i.i173

if.end41.i.i173:                                  ; preds = %if.then39.i.i170, %if.end29.i.i169
  %running_bw.i.i171 = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 6
  %74 = ptrtoint ptr %running_bw.i.i171 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %running_bw.i.i171, align 8
  %76 = ptrtoint ptr %this_bw.i.i147 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %this_bw.i.i147, align 8
  %cmp44.i.i172 = icmp ugt i64 %75, %77
  br i1 %cmp44.i.i172, label %land.rhs51.i.i175, label %sub_rq_bw.exit177

land.rhs51.i.i175:                                ; preds = %if.end41.i.i173
  %.b109110.i.i174 = load i1, ptr @__sub_rq_bw.__already_done.10, align 1
  br i1 %.b109110.i.i174, label %sub_rq_bw.exit177, label %if.then62.i.i176, !prof !114

if.then62.i.i176:                                 ; preds = %land.rhs51.i.i175
  store i1 true, ptr @__sub_rq_bw.__already_done.10, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 202, i32 noundef 9, ptr noundef nonnull @.str.11) #15
  br label %sub_rq_bw.exit177

sub_rq_bw.exit177:                                ; preds = %if.then62.i.i176, %land.rhs51.i.i175, %if.end41.i.i173, %if.else
  %78 = ptrtoint ptr %flags.i.i143 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags.i.i143, align 8
  %and.i.i179 = and i32 %79, 268435456
  %tobool.i.not.i180 = icmp eq i32 %and.i.i179, 0
  br i1 %tobool.i.not.i180, label %if.then.i184, label %if.end41

if.then.i184:                                     ; preds = %sub_rq_bw.exit177
  %dl_bw.i181 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 4
  %80 = ptrtoint ptr %dl_bw.i181 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %dl_bw.i181, align 8
  %this_bw.i.i182 = getelementptr inbounds %struct.rq, ptr %later_rq.0, i32 0, i32 16, i32 7
  %82 = ptrtoint ptr %this_bw.i.i182 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %this_bw.i.i182, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %84 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i.i183 = icmp eq i32 %84, 0
  br i1 %tobool.not.i.i.i183, label %lockdep_assert_rq_held.exit.i.i199, label %land.rhs.i.i.i188

land.rhs.i.i.i188:                                ; preds = %if.then.i184
  %core_enabled.i.i.i.i186 = getelementptr %struct.rq, ptr %later_rq.0, i32 0, i32 81
  %85 = ptrtoint ptr %core_enabled.i.i.i.i186 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %core_enabled.i.i.i.i186, align 128
  %tobool.not.i.i.i.i187 = icmp eq i32 %86, 0
  br i1 %tobool.not.i.i.i.i187, label %__rq_lockp.exit.i.i.i195, label %if.then.i.i.i.i190

if.then.i.i.i.i190:                               ; preds = %land.rhs.i.i.i188
  %core.i.i.i.i189 = getelementptr %struct.rq, ptr %later_rq.0, i32 0, i32 79
  %87 = ptrtoint ptr %core.i.i.i.i189 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %core.i.i.i.i189, align 8
  br label %__rq_lockp.exit.i.i.i195

__rq_lockp.exit.i.i.i195:                         ; preds = %if.then.i.i.i.i190, %land.rhs.i.i.i188
  %retval.0.i.i.i.i191 = phi ptr [ %88, %if.then.i.i.i.i190 ], [ %later_rq.0, %land.rhs.i.i.i188 ]
  %dep_map.i.i.i192 = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i.i191, i32 0, i32 4
  %call.i.i.i.i193 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i192, i32 noundef -1) #15
  %cmp.not.i.i.i194 = icmp eq i32 %call.i.i.i.i193, 0
  br i1 %cmp.not.i.i.i194, label %do.end.i.i.i196, label %lockdep_assert_rq_held.exit.i.i199, !prof !111

do.end.i.i.i196:                                  ; preds = %__rq_lockp.exit.i.i.i195
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i.i199

lockdep_assert_rq_held.exit.i.i199:               ; preds = %do.end.i.i.i196, %__rq_lockp.exit.i.i.i195, %if.then.i184
  %89 = ptrtoint ptr %this_bw.i.i182 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %this_bw.i.i182, align 8
  %add.i.i197 = add i64 %90, %81
  store i64 %add.i.i197, ptr %this_bw.i.i182, align 8
  %cmp.i.i198 = icmp ult i64 %add.i.i197, %83
  br i1 %cmp.i.i198, label %land.rhs.i.i201, label %if.end41

land.rhs.i.i201:                                  ; preds = %lockdep_assert_rq_held.exit.i.i199
  %.b42.i.i200 = load i1, ptr @__add_rq_bw.__already_done, align 1
  br i1 %.b42.i.i200, label %if.end41, label %if.then.i.i202, !prof !114

if.then.i.i202:                                   ; preds = %land.rhs.i.i201
  store i1 true, ptr @__add_rq_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 189, i32 noundef 9, ptr noundef nonnull @.str.12) #15
  br label %if.end41

if.end41:                                         ; preds = %if.then.i.i202, %land.rhs.i.i201, %lockdep_assert_rq_held.exit.i.i199, %sub_rq_bw.exit177, %add_rq_bw.exit
  %rd = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 35
  %91 = ptrtoint ptr %rd to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rd, align 8
  %dl_bw = getelementptr inbounds %struct.root_domain, ptr %92, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %dl_bw) #15
  %dl_bw43 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 4
  %93 = ptrtoint ptr %dl_bw43 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %dl_bw43, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %95 = load i32, ptr @nr_cpu_ids, align 4
  %96 = ptrtoint ptr %rd to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rd, align 8
  %span = getelementptr inbounds %struct.root_domain, ptr %97, i32 0, i32 3
  %98 = ptrtoint ptr %span to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %span, align 8
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef %99, i32 noundef %95) #15
  %total_bw.i = getelementptr inbounds %struct.root_domain, ptr %92, i32 0, i32 9, i32 2
  %100 = ptrtoint ptr %total_bw.i to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %total_bw.i, align 8
  %sub.i = sub i64 %101, %94
  store i64 %sub.i, ptr %total_bw.i, align 8
  %conv.i = trunc i64 %94 to i32
  %div.i = sdiv i32 %conv.i, %call4.i.i
  %conv1.i = sext i32 %div.i to i64
  %call.i.i = tail call i32 @rcu_read_lock_sched_held() #15
  %tobool.not.i.i211 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i211, label %land.lhs.true.i.i, label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end41
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %do.end.i.i, label %land.lhs.true3.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b14.i.i = load i1, ptr @__dl_update.__warned, align 1
  br i1 %.b14.i.i, label %do.end.i.i, label %if.then.i.i212

if.then.i.i212:                                   ; preds = %land.lhs.true3.i.i
  store i1 true, ptr @__dl_update.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2758, ptr noundef nonnull @.str.15) #15
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i212, %land.lhs.true3.i.i, %land.lhs.true.i.i, %if.end41
  %span.i.i = getelementptr %struct.root_domain, ptr %92, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %102 = load i32, ptr @nr_cpu_ids, align 4
  %103 = ptrtoint ptr %span.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %span.i.i, align 8
  %call515.i.i = tail call i32 @cpumask_next_and(i32 noundef -1, ptr noundef %104, ptr noundef nonnull @__cpu_active_mask) #17
  %cmp16.i.i = icmp ult i32 %call515.i.i, %102
  br i1 %cmp16.i.i, label %for.body.i.i, label %__dl_sub.exit

for.body.i.i:                                     ; preds = %for.body.i.i, %do.end.i.i
  %call517.i.i = phi i32 [ %call5.i.i, %for.body.i.i ], [ %call515.i.i, %do.end.i.i ]
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call517.i.i
  %105 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i213 = add i32 %106, ptrtoint (ptr @runqueues to i32)
  %107 = inttoptr i32 %add.i.i213 to ptr
  %extra_bw.i.i = getelementptr inbounds %struct.rq, ptr %107, i32 0, i32 16, i32 8
  %108 = ptrtoint ptr %extra_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %extra_bw.i.i, align 8
  %add11.i.i = add i64 %109, %conv1.i
  store i64 %add11.i.i, ptr %extra_bw.i.i, align 8
  %110 = ptrtoint ptr %span.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %span.i.i, align 8
  %call5.i.i = tail call i32 @cpumask_next_and(i32 noundef %call517.i.i, ptr noundef %111, ptr noundef nonnull @__cpu_active_mask) #17
  %cmp.i.i214 = icmp ult i32 %call5.i.i, %102
  br i1 %cmp.i.i214, label %for.body.i.i, label %__dl_sub.exit

__dl_sub.exit:                                    ; preds = %for.body.i.i, %do.end.i.i
  tail call void @_raw_spin_unlock(ptr noundef %dl_bw) #15
  %rd47 = getelementptr inbounds %struct.rq, ptr %later_rq.0, i32 0, i32 35
  %112 = ptrtoint ptr %rd47 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %rd47, align 8
  %dl_bw48 = getelementptr inbounds %struct.root_domain, ptr %113, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %dl_bw48) #15
  %114 = ptrtoint ptr %dl_bw43 to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %dl_bw43, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %116 = load i32, ptr @nr_cpu_ids, align 4
  %117 = ptrtoint ptr %rd47 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %rd47, align 8
  %span53 = getelementptr inbounds %struct.root_domain, ptr %118, i32 0, i32 3
  %119 = ptrtoint ptr %span53 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %span53, align 8
  %call4.i.i313 = tail call i32 @__bitmap_weight(ptr noundef %120, i32 noundef %116) #15
  %total_bw.i317 = getelementptr inbounds %struct.root_domain, ptr %113, i32 0, i32 9, i32 2
  %121 = ptrtoint ptr %total_bw.i317 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %total_bw.i317, align 8
  %add.i = add i64 %122, %115
  store i64 %add.i, ptr %total_bw.i317, align 8
  %conv.i318 = trunc i64 %115 to i32
  %div.i319 = sdiv i32 %conv.i318, %call4.i.i313
  %sub.i320 = sub i32 0, %div.i319
  %conv1.i321 = sext i32 %sub.i320 to i64
  %call.i.i322 = tail call i32 @rcu_read_lock_sched_held() #15
  %tobool.not.i.i323 = icmp eq i32 %call.i.i322, 0
  br i1 %tobool.not.i.i323, label %land.lhs.true.i.i326, label %do.end.i.i333

land.lhs.true.i.i326:                             ; preds = %__dl_sub.exit
  %call1.i.i324 = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool2.not.i.i325 = icmp eq i32 %call1.i.i324, 0
  br i1 %tobool2.not.i.i325, label %do.end.i.i333, label %land.lhs.true3.i.i328

land.lhs.true3.i.i328:                            ; preds = %land.lhs.true.i.i326
  %.b14.i.i327 = load i1, ptr @__dl_update.__warned, align 1
  br i1 %.b14.i.i327, label %do.end.i.i333, label %if.then.i.i329

if.then.i.i329:                                   ; preds = %land.lhs.true3.i.i328
  store i1 true, ptr @__dl_update.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2758, ptr noundef nonnull @.str.15) #15
  br label %do.end.i.i333

do.end.i.i333:                                    ; preds = %if.then.i.i329, %land.lhs.true3.i.i328, %land.lhs.true.i.i326, %__dl_sub.exit
  %span.i.i330 = getelementptr %struct.root_domain, ptr %113, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %123 = load i32, ptr @nr_cpu_ids, align 4
  %124 = ptrtoint ptr %span.i.i330 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %span.i.i330, align 8
  %call515.i.i331 = tail call i32 @cpumask_next_and(i32 noundef -1, ptr noundef %125, ptr noundef nonnull @__cpu_active_mask) #17
  %cmp16.i.i332 = icmp ult i32 %call515.i.i331, %123
  br i1 %cmp16.i.i332, label %for.body.i.i341, label %__dl_add.exit

for.body.i.i341:                                  ; preds = %for.body.i.i341, %do.end.i.i333
  %call517.i.i334 = phi i32 [ %call5.i.i339, %for.body.i.i341 ], [ %call515.i.i331, %do.end.i.i333 ]
  %arrayidx.i.i335 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call517.i.i334
  %126 = ptrtoint ptr %arrayidx.i.i335 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx.i.i335, align 4
  %add.i.i336 = add i32 %127, ptrtoint (ptr @runqueues to i32)
  %128 = inttoptr i32 %add.i.i336 to ptr
  %extra_bw.i.i337 = getelementptr inbounds %struct.rq, ptr %128, i32 0, i32 16, i32 8
  %129 = ptrtoint ptr %extra_bw.i.i337 to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %extra_bw.i.i337, align 8
  %add11.i.i338 = add i64 %130, %conv1.i321
  store i64 %add11.i.i338, ptr %extra_bw.i.i337, align 8
  %131 = ptrtoint ptr %span.i.i330 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %span.i.i330, align 8
  %call5.i.i339 = tail call i32 @cpumask_next_and(i32 noundef %call517.i.i334, ptr noundef %132, ptr noundef nonnull @__cpu_active_mask) #17
  %cmp.i.i340 = icmp ult i32 %call5.i.i339, %123
  br i1 %cmp.i.i340, label %for.body.i.i341, label %__dl_add.exit

__dl_add.exit:                                    ; preds = %for.body.i.i341, %do.end.i.i333
  tail call void @_raw_spin_unlock(ptr noundef %dl_bw48) #15
  %cpu56 = getelementptr inbounds %struct.rq, ptr %later_rq.0, i32 0, i32 46
  %133 = ptrtoint ptr %cpu56 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %cpu56, align 4
  tail call void @set_task_cpu(ptr noundef %p, i32 noundef %134) #15
  %core_enabled.i.i = getelementptr inbounds %struct.rq, ptr %later_rq.0, i32 0, i32 81
  %135 = ptrtoint ptr %core_enabled.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %core_enabled.i.i, align 128
  %tobool.not.i.i342 = icmp eq i32 %136, 0
  br i1 %tobool.not.i.i342, label %__rq_lockp.exit.i, label %if.then.i.i343

if.then.i.i343:                                   ; preds = %__dl_add.exit
  %core.i.i = getelementptr inbounds %struct.rq, ptr %later_rq.0, i32 0, i32 79
  %137 = ptrtoint ptr %core.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %core.i.i, align 8
  br label %__rq_lockp.exit.i

__rq_lockp.exit.i:                                ; preds = %if.then.i.i343, %__dl_add.exit
  %retval.0.i.i344 = phi ptr [ %138, %if.then.i.i343 ], [ %later_rq.0, %__dl_add.exit ]
  %core_enabled.i5.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 81
  %139 = ptrtoint ptr %core_enabled.i5.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %core_enabled.i5.i, align 128
  %tobool.not.i6.i = icmp eq i32 %140, 0
  br i1 %tobool.not.i6.i, label %__rq_lockp.exit10.i, label %if.then.i8.i

if.then.i8.i:                                     ; preds = %__rq_lockp.exit.i
  %core.i7.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 79
  %141 = ptrtoint ptr %core.i7.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %core.i7.i, align 8
  br label %__rq_lockp.exit10.i

__rq_lockp.exit10.i:                              ; preds = %if.then.i8.i, %__rq_lockp.exit.i
  %retval.0.i9.i = phi ptr [ %142, %if.then.i8.i ], [ %rq, %__rq_lockp.exit.i ]
  %cmp.not.i = icmp eq ptr %retval.0.i.i344, %retval.0.i9.i
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i345

if.then.i345:                                     ; preds = %__rq_lockp.exit10.i
  tail call void @raw_spin_rq_unlock(ptr noundef %rq) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i345, %__rq_lockp.exit10.i
  %143 = ptrtoint ptr %core_enabled.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %core_enabled.i.i, align 128
  %tobool.not.i12.i = icmp eq i32 %144, 0
  br i1 %tobool.not.i12.i, label %double_unlock_balance.exit, label %if.then.i14.i

if.then.i14.i:                                    ; preds = %if.end.i
  %core.i13.i = getelementptr inbounds %struct.rq, ptr %later_rq.0, i32 0, i32 79
  %145 = ptrtoint ptr %core.i13.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %core.i13.i, align 8
  br label %double_unlock_balance.exit

double_unlock_balance.exit:                       ; preds = %if.then.i14.i, %if.end.i
  %retval.0.i15.i = phi ptr [ %146, %if.then.i14.i ], [ %later_rq.0, %if.end.i ]
  %dep_map.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i15.i, i32 0, i32 4
  %147 = tail call ptr @llvm.returnaddress(i32 0) #15
  %148 = ptrtoint ptr %147 to i32
  %name.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i15.i, i32 0, i32 4, i32 2
  %149 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %name.i.i, align 4
  %151 = ptrtoint ptr %dep_map.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dep_map.i, align 4
  tail call void @lock_set_class(ptr noundef %dep_map.i, ptr noundef %150, ptr noundef %152, i32 noundef 0, i32 noundef %148) #15
  ret ptr %later_rq.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_pin_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @resched_curr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @push_dl_task(ptr noundef %rq) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %overloaded = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 4
  %0 = ptrtoint ptr %overloaded to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %overloaded, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cleanup56, label %if.end

if.end:                                           ; preds = %entry
  %pushable_dl_tasks_root.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 5
  %2 = ptrtoint ptr %pushable_dl_tasks_root.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %pushable_dl_tasks_root.i.i, align 8
  %cmp.i.not.i = icmp eq ptr %3, null
  br i1 %cmp.i.not.i, label %cleanup56, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %rb_leftmost.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 5, i32 1
  %4 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rb_leftmost.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 -1164
  %cpu.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 46
  %6 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu.i, align 4
  %stack.i.i = getelementptr i8, ptr %5, i32 -1160
  %8 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stack.i.i, align 4
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %cpu.i.i, align 4
  %cmp.not.i = icmp eq i32 %7, %11
  br i1 %cmp.not.i, label %do.body12.i, label %do.body5.i, !prof !114

do.body5.i:                                       ; preds = %if.end.i
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2214, 0\0A.popsection", ""() #15, !srcloc !130
  unreachable

do.body12.i:                                      ; preds = %if.end.i
  %curr.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 20
  %12 = ptrtoint ptr %curr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %curr.i.i, align 8
  %cmp.i99.not.i = icmp eq ptr %13, %add.ptr.i
  br i1 %cmp.i99.not.i, label %do.body22.i, label %do.body31.i, !prof !111

do.body22.i:                                      ; preds = %do.body12.i
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2215, 0\0A.popsection", ""() #15, !srcloc !131
  unreachable

do.body31.i:                                      ; preds = %do.body12.i
  %nr_cpus_allowed.i = getelementptr i8, ptr %5, i32 -132
  %14 = ptrtoint ptr %nr_cpus_allowed.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_cpus_allowed.i, align 8
  %cmp32.i = icmp slt i32 %15, 2
  br i1 %cmp32.i, label %do.body40.i, label %do.body49.i, !prof !111

do.body40.i:                                      ; preds = %do.body31.i
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2216, 0\0A.popsection", ""() #15, !srcloc !132
  unreachable

do.body49.i:                                      ; preds = %do.body31.i
  %on_rq.i.i = getelementptr i8, ptr %5, i32 -1112
  %16 = ptrtoint ptr %on_rq.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %on_rq.i.i, align 4
  %cmp.i100.not.i = icmp eq i32 %17, 1
  br i1 %cmp.i100.not.i, label %do.body70.i, label %do.body61.i, !prof !114

do.body61.i:                                      ; preds = %do.body49.i
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2218, 0\0A.popsection", ""() #15, !srcloc !133
  unreachable

do.body70.i:                                      ; preds = %do.body49.i
  %prio.i.i = getelementptr i8, ptr %5, i32 -1108
  %18 = ptrtoint ptr %prio.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %prio.i.i, align 8
  %tobool72.not.i = icmp sgt i32 %19, -1
  br i1 %tobool72.not.i, label %do.body82.i, label %pick_next_pushable_dl_task.exit, !prof !111

do.body82.i:                                      ; preds = %do.body70.i
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2219, 0\0A.popsection", ""() #15, !srcloc !134
  unreachable

pick_next_pushable_dl_task.exit:                  ; preds = %do.body70.i
  %tobool1.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool1.not, label %cleanup56, label %retry.preheader

retry.preheader:                                  ; preds = %pick_next_pushable_dl_task.exit
  %migration_disabled.i157 = getelementptr i8, ptr %5, i32 -112
  %20 = ptrtoint ptr %migration_disabled.i157 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %migration_disabled.i157, align 4
  %tobool.i.not158 = icmp eq i16 %21, 0
  br i1 %tobool.i.not158, label %if.end6, label %cleanup56

if.end6:                                          ; preds = %cleanup, %retry.preheader
  %next_task.0159 = phi ptr [ %add.ptr.i91, %cleanup ], [ %add.ptr.i, %retry.preheader ]
  %22 = ptrtoint ptr %curr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %curr.i.i, align 8
  %cmp = icmp eq ptr %next_task.0159, %23
  br i1 %cmp, label %do.end, label %if.end30, !prof !111

do.end:                                           ; preds = %if.end6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2246, i32 noundef 9, ptr noundef null) #15
  br label %cleanup56

if.end30:                                         ; preds = %if.end6
  %prio.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 13
  %24 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %prio.i, align 8
  %tobool33.not = icmp sgt i32 %25, -1
  br i1 %tobool33.not, label %if.end43, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end30
  %deadline = getelementptr inbounds %struct.task_struct, ptr %next_task.0159, i32 0, i32 20, i32 7
  %26 = ptrtoint ptr %deadline to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %deadline, align 8
  %deadline37 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 20, i32 7
  %28 = ptrtoint ptr %deadline37 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %deadline37, align 8
  %sub.i = sub i64 %27, %29
  %cmp.i = icmp slt i64 %sub.i, 0
  br i1 %cmp.i, label %land.lhs.true39, label %if.end43

land.lhs.true39:                                  ; preds = %land.lhs.true
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 32
  %30 = ptrtoint ptr %nr_cpus_allowed to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr_cpus_allowed, align 8
  %cmp41 = icmp sgt i32 %31, 1
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %land.lhs.true39
  tail call void @resched_curr(ptr noundef %rq) #15
  br label %cleanup56

if.end43:                                         ; preds = %land.lhs.true39, %land.lhs.true, %if.end30
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %next_task.0159, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !135
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end15.sink.split.i.i.i.i, label %if.else.i.i.i.i, !prof !111

if.else.i.i.i.i:                                  ; preds = %if.end43
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %33 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  %.not.i.i.i.i = icmp sgt i32 %33, -1
  br i1 %.not.i.i.i.i, label %get_task_struct.exit, label %if.end15.sink.split.i.i.i.i, !prof !114

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i, %if.end43
  %.sink.i.i.i.i = phi i32 [ 2, %if.end43 ], [ 1, %if.else.i.i.i.i ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #15
  br label %get_task_struct.exit

get_task_struct.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i
  %call45 = tail call ptr @find_lock_later_rq(ptr noundef nonnull %next_task.0159, ptr noundef %rq)
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %if.then47, label %if.end55

if.then47:                                        ; preds = %get_task_struct.exit
  %34 = ptrtoint ptr %pushable_dl_tasks_root.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %pushable_dl_tasks_root.i.i, align 8
  %cmp.i.not.i89 = icmp eq ptr %35, null
  br i1 %cmp.i.not.i89, label %out, label %if.end.i96

if.end.i96:                                       ; preds = %if.then47
  %36 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rb_leftmost.i, align 4
  %add.ptr.i91 = getelementptr i8, ptr %37, i32 -1164
  %38 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu.i, align 4
  %stack.i.i93 = getelementptr i8, ptr %37, i32 -1160
  %40 = ptrtoint ptr %stack.i.i93 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %stack.i.i93, align 4
  %cpu.i.i94 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %cpu.i.i94 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %cpu.i.i94, align 4
  %cmp.not.i95 = icmp eq i32 %39, %43
  br i1 %cmp.not.i95, label %do.body12.i100, label %do.body5.i97, !prof !114

do.body5.i97:                                     ; preds = %if.end.i96
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2214, 0\0A.popsection", ""() #15, !srcloc !130
  unreachable

do.body12.i100:                                   ; preds = %if.end.i96
  %44 = ptrtoint ptr %curr.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %curr.i.i, align 8
  %cmp.i99.not.i99 = icmp eq ptr %45, %add.ptr.i91
  br i1 %cmp.i99.not.i99, label %do.body22.i101, label %do.body31.i104, !prof !111

do.body22.i101:                                   ; preds = %do.body12.i100
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2215, 0\0A.popsection", ""() #15, !srcloc !131
  unreachable

do.body31.i104:                                   ; preds = %do.body12.i100
  %nr_cpus_allowed.i102 = getelementptr i8, ptr %37, i32 -132
  %46 = ptrtoint ptr %nr_cpus_allowed.i102 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nr_cpus_allowed.i102, align 8
  %cmp32.i103 = icmp slt i32 %47, 2
  br i1 %cmp32.i103, label %do.body40.i105, label %do.body49.i108, !prof !111

do.body40.i105:                                   ; preds = %do.body31.i104
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2216, 0\0A.popsection", ""() #15, !srcloc !132
  unreachable

do.body49.i108:                                   ; preds = %do.body31.i104
  %on_rq.i.i106 = getelementptr i8, ptr %37, i32 -1112
  %48 = ptrtoint ptr %on_rq.i.i106 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %on_rq.i.i106, align 4
  %cmp.i100.not.i107 = icmp eq i32 %49, 1
  br i1 %cmp.i100.not.i107, label %do.body70.i112, label %do.body61.i109, !prof !114

do.body61.i109:                                   ; preds = %do.body49.i108
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2218, 0\0A.popsection", ""() #15, !srcloc !133
  unreachable

do.body70.i112:                                   ; preds = %do.body49.i108
  %prio.i.i110 = getelementptr i8, ptr %37, i32 -1108
  %50 = ptrtoint ptr %prio.i.i110 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %prio.i.i110, align 8
  %tobool72.not.i111 = icmp sgt i32 %51, -1
  br i1 %tobool72.not.i111, label %do.body82.i113, label %pick_next_pushable_dl_task.exit115, !prof !111

do.body82.i113:                                   ; preds = %do.body70.i112
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2219, 0\0A.popsection", ""() #15, !srcloc !134
  unreachable

pick_next_pushable_dl_task.exit115:               ; preds = %do.body70.i112
  %cmp49 = icmp eq ptr %add.ptr.i91, %next_task.0159
  %tobool52.not = icmp eq ptr %add.ptr.i91, null
  %or.cond = or i1 %cmp49, %tobool52.not
  br i1 %or.cond, label %out, label %if.end54

if.end54:                                         ; preds = %pick_next_pushable_dl_task.exit115
  %call.i.i.i.i.i.i117 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !112
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %52 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !113
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %52, 0
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end54
  %.not.i.i.i.i118 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i118, label %cleanup, label %if.then10.i.i.i.i, !prof !114

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !115
  tail call void @__put_task_struct(ptr noundef nonnull %next_task.0159) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i
  %migration_disabled.i = getelementptr i8, ptr %37, i32 -112
  %53 = ptrtoint ptr %migration_disabled.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %migration_disabled.i, align 4
  %tobool.i.not = icmp eq i16 %54, 0
  br i1 %tobool.i.not, label %if.end6, label %cleanup56

if.end55:                                         ; preds = %get_task_struct.exit
  tail call void @deactivate_task(ptr noundef %rq, ptr noundef nonnull %next_task.0159, i32 noundef 0) #15
  %cpu = getelementptr inbounds %struct.rq, ptr %call45, i32 0, i32 46
  %55 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cpu, align 4
  tail call void @set_task_cpu(ptr noundef nonnull %next_task.0159, i32 noundef %56) #15
  tail call void @update_rq_clock(ptr noundef nonnull %call45) #15
  tail call void @activate_task(ptr noundef nonnull %call45, ptr noundef nonnull %next_task.0159, i32 noundef 8) #15
  tail call void @resched_curr(ptr noundef nonnull %call45) #15
  %core_enabled.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 81
  %57 = ptrtoint ptr %core_enabled.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %core_enabled.i.i, align 128
  %tobool.not.i.i = icmp eq i32 %58, 0
  br i1 %tobool.not.i.i, label %__rq_lockp.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end55
  %core.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 79
  %59 = ptrtoint ptr %core.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %core.i.i, align 8
  br label %__rq_lockp.exit.i

__rq_lockp.exit.i:                                ; preds = %if.then.i.i, %if.end55
  %retval.0.i.i = phi ptr [ %60, %if.then.i.i ], [ %rq, %if.end55 ]
  %core_enabled.i5.i = getelementptr inbounds %struct.rq, ptr %call45, i32 0, i32 81
  %61 = ptrtoint ptr %core_enabled.i5.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %core_enabled.i5.i, align 128
  %tobool.not.i6.i = icmp eq i32 %62, 0
  br i1 %tobool.not.i6.i, label %__rq_lockp.exit10.i, label %if.then.i8.i

if.then.i8.i:                                     ; preds = %__rq_lockp.exit.i
  %core.i7.i = getelementptr inbounds %struct.rq, ptr %call45, i32 0, i32 79
  %63 = ptrtoint ptr %core.i7.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %core.i7.i, align 8
  br label %__rq_lockp.exit10.i

__rq_lockp.exit10.i:                              ; preds = %if.then.i8.i, %__rq_lockp.exit.i
  %retval.0.i9.i = phi ptr [ %64, %if.then.i8.i ], [ %call45, %__rq_lockp.exit.i ]
  %cmp.not.i120 = icmp eq ptr %retval.0.i.i, %retval.0.i9.i
  br i1 %cmp.not.i120, label %if.end.i122, label %if.then.i121

if.then.i121:                                     ; preds = %__rq_lockp.exit10.i
  tail call void @raw_spin_rq_unlock(ptr noundef nonnull %call45) #15
  br label %if.end.i122

if.end.i122:                                      ; preds = %if.then.i121, %__rq_lockp.exit10.i
  %65 = ptrtoint ptr %core_enabled.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %core_enabled.i.i, align 128
  %tobool.not.i12.i = icmp eq i32 %66, 0
  br i1 %tobool.not.i12.i, label %double_unlock_balance.exit, label %if.then.i14.i

if.then.i14.i:                                    ; preds = %if.end.i122
  %core.i13.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 79
  %67 = ptrtoint ptr %core.i13.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %core.i13.i, align 8
  br label %double_unlock_balance.exit

double_unlock_balance.exit:                       ; preds = %if.then.i14.i, %if.end.i122
  %retval.0.i15.i = phi ptr [ %68, %if.then.i14.i ], [ %rq, %if.end.i122 ]
  %dep_map.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i15.i, i32 0, i32 4
  %69 = tail call ptr @llvm.returnaddress(i32 0) #15
  %70 = ptrtoint ptr %69 to i32
  %name.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i15.i, i32 0, i32 4, i32 2
  %71 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %name.i.i, align 4
  %73 = ptrtoint ptr %dep_map.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dep_map.i, align 4
  tail call void @lock_set_class(ptr noundef %dep_map.i, ptr noundef %72, ptr noundef %74, i32 noundef 0, i32 noundef %70) #15
  br label %out

out:                                              ; preds = %double_unlock_balance.exit, %pick_next_pushable_dl_task.exit115, %if.then47
  %ret.0 = phi i32 [ 1, %double_unlock_balance.exit ], [ 0, %pick_next_pushable_dl_task.exit115 ], [ 0, %if.then47 ]
  %call.i.i.i.i.i.i124 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !112
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %75 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !113
  %asmresult.i.i.i.i.i.i.i125 = extractvalue { i32, i32, i32 } %75, 0
  %cmp.i.i.i.i126 = icmp eq i32 %asmresult.i.i.i.i.i.i.i125, 1
  br i1 %cmp.i.i.i.i126, label %if.then.i130, label %if.end5.i.i.i.i128

if.end5.i.i.i.i128:                               ; preds = %out
  %.not.i.i.i.i127 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i125, 0
  br i1 %.not.i.i.i.i127, label %cleanup56, label %if.then10.i.i.i.i129, !prof !114

if.then10.i.i.i.i129:                             ; preds = %if.end5.i.i.i.i128
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %cleanup56

if.then.i130:                                     ; preds = %out
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !115
  tail call void @__put_task_struct(ptr noundef nonnull %next_task.0159) #15
  br label %cleanup56

cleanup56:                                        ; preds = %if.then.i130, %if.then10.i.i.i.i129, %if.end5.i.i.i.i128, %cleanup, %if.then42, %do.end, %retry.preheader, %pick_next_pushable_dl_task.exit, %if.end, %entry
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %if.then42 ], [ 0, %entry ], [ 0, %pick_next_pushable_dl_task.exit ], [ %ret.0, %if.end5.i.i.i.i128 ], [ %ret.0, %if.then10.i.i.i.i129 ], [ %ret.0, %if.then.i130 ], [ 0, %if.end ], [ 0, %retry.preheader ], [ 0, %cleanup ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk_deferred(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @double_lock_balance(ptr noundef %this_rq, ptr noundef %busiest) unnamed_addr #6 align 64 {
entry:
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end86, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !100) #15
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %4, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !136
  %5 = tail call i32 @llvm.read_register.i32(metadata !100) #15
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
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !137
  %14 = tail call i32 @llvm.read_register.i32(metadata !100) #15
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
  %18 = tail call i32 @llvm.read_register.i32(metadata !100) #15
  %and.i.i.i105 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i105 to ptr
  %preempt_count.i.i106 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i106 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i106, align 4
  %add.i107 = add i32 %21, 1
  store volatile i32 %add.i107, ptr %preempt_count.i.i106, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !138
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
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !139
  %29 = tail call i32 @llvm.read_register.i32(metadata !100) #15
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
  br i1 %.b99, label %if.end86, label %if.then, !prof !114

if.then:                                          ; preds = %land.rhs55
  store i1 true, ptr @double_lock_balance.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 2592, i32 noundef 9, ptr noundef null) #15
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
  %call2.i = tail call zeroext i1 @raw_spin_rq_trylock(ptr noundef %busiest) #15
  br i1 %call2.i, label %_double_lock_balance.exit, label %if.end5.i, !prof !114

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
  tail call void @raw_spin_rq_lock_nested(ptr noundef %busiest, i32 noundef 1) #15
  br label %_double_lock_balance.exit

if.end8.i:                                        ; preds = %rq_order_less.exit.i, %if.end.i.i
  tail call void @raw_spin_rq_unlock(ptr noundef %this_rq) #15
  tail call void @double_rq_lock(ptr noundef %this_rq, ptr noundef %busiest) #15
  br label %_double_lock_balance.exit

_double_lock_balance.exit:                        ; preds = %if.end8.i, %if.then7.i, %if.end.i, %__rq_lockp.exit21.i
  %retval.0.i = phi i32 [ 0, %if.then7.i ], [ 1, %if.end8.i ], [ 0, %__rq_lockp.exit21.i ], [ 0, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @add_running_bw(ptr nocapture noundef readonly %dl_se, ptr noundef %dl_rq) unnamed_addr #6 align 64 {
entry:
  %flags.i = getelementptr inbounds %struct.sched_dl_entity, ptr %dl_se, i32 0, i32 8
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %1, 268435456
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %dl_bw = getelementptr inbounds %struct.sched_dl_entity, ptr %dl_se, i32 0, i32 4
  %2 = ptrtoint ptr %dl_bw to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %dl_bw, align 8
  %running_bw.i = getelementptr inbounds %struct.dl_rq, ptr %dl_rq, i32 0, i32 6
  %4 = ptrtoint ptr %running_bw.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %running_bw.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %dl_rq, i32 -1832
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i, label %lockdep_assert_rq_held.exit.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %if.then
  %core_enabled.i.i.i = getelementptr i8, ptr %dl_rq, i32 1112
  %7 = ptrtoint ptr %core_enabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %core_enabled.i.i.i, align 128
  %tobool.not.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i, label %__rq_lockp.exit.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  %core.i.i.i = getelementptr i8, ptr %dl_rq, i32 1104
  %9 = ptrtoint ptr %core.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %core.i.i.i, align 8
  br label %__rq_lockp.exit.i.i

__rq_lockp.exit.i.i:                              ; preds = %if.then.i.i.i, %land.rhs.i.i
  %retval.0.i.i.i = phi ptr [ %10, %if.then.i.i.i ], [ %add.ptr.i.i, %land.rhs.i.i ]
  %dep_map.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i, i32 0, i32 4
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #15
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %lockdep_assert_rq_held.exit.i, !prof !111

do.end.i.i:                                       ; preds = %__rq_lockp.exit.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i

lockdep_assert_rq_held.exit.i:                    ; preds = %do.end.i.i, %__rq_lockp.exit.i.i, %if.then
  %11 = ptrtoint ptr %running_bw.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %running_bw.i, align 8
  %add.i = add i64 %12, %3
  store i64 %add.i, ptr %running_bw.i, align 8
  %cmp.i = icmp ult i64 %add.i, %5
  br i1 %cmp.i, label %land.rhs.i, label %if.end29.i

land.rhs.i:                                       ; preds = %lockdep_assert_rq_held.exit.i
  %.b105.i = load i1, ptr @__add_running_bw.__already_done, align 1
  br i1 %.b105.i, label %if.end29.i, label %if.then.i, !prof !114

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @__add_running_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 162, i32 noundef 9, ptr noundef nonnull @.str.13) #15
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then.i, %land.rhs.i, %lockdep_assert_rq_held.exit.i
  %13 = ptrtoint ptr %running_bw.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %running_bw.i, align 8
  %this_bw.i = getelementptr inbounds %struct.dl_rq, ptr %dl_rq, i32 0, i32 7
  %15 = ptrtoint ptr %this_bw.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %this_bw.i, align 8
  %cmp39.i = icmp ugt i64 %14, %16
  br i1 %cmp39.i, label %land.rhs46.i, label %__add_running_bw.exit

land.rhs46.i:                                     ; preds = %if.end29.i
  %.b103104.i = load i1, ptr @__add_running_bw.__already_done.14, align 1
  br i1 %.b103104.i, label %__add_running_bw.exit, label %if.then57.i, !prof !114

if.then57.i:                                      ; preds = %land.rhs46.i
  store i1 true, ptr @__add_running_bw.__already_done.14, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 163, i32 noundef 9, ptr noundef nonnull @.str.11) #15
  br label %__add_running_bw.exit

__add_running_bw.exit:                            ; preds = %if.then57.i, %land.rhs46.i, %if.end29.i
  tail call fastcc void @cpufreq_update_util(ptr noundef %add.ptr.i.i) #15
  br label %if.end

if.end:                                           ; preds = %__add_running_bw.exit, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_task_cpu(ptr noundef, i32 noundef) local_unnamed_addr #1

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
  tail call void @raw_spin_rq_unlock(ptr noundef %busiest) #15
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
  tail call void @lock_set_class(ptr noundef %dep_map, ptr noundef %15, ptr noundef %17, i32 noundef 0, i32 noundef %13) #15
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @raw_spin_rq_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_spin_rq_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_spin_rq_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @double_rq_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

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
  %call7 = tail call i32 @rcu_read_lock_sched_held() #15
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.end13

land.lhs.true:                                    ; preds = %entry
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.end13, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @cpufreq_update_util.__warned, align 1
  br i1 %.b1, label %do.end13, label %if.then

if.then:                                          ; preds = %land.lhs.true10
  store i1 true, ptr @cpufreq_update_util.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2836, ptr noundef nonnull @.str.8) #15
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
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #15
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %lockdep_assert_rq_held.exit.i, !prof !111

do.end.i.i:                                       ; preds = %__rq_lockp.exit.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
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
  br i1 %.b37.i.i, label %rq_clock.exit, label %if.then.i.i, !prof !114

if.then.i.i:                                      ; preds = %land.rhs.i3.i
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #15
  br label %rq_clock.exit

rq_clock.exit:                                    ; preds = %if.then.i.i, %land.rhs.i3.i, %lockdep_assert_rq_held.exit.i
  %clock.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 26
  %16 = ptrtoint ptr %clock.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %clock.i, align 32
  tail call void %8(ptr noundef nonnull %6, i64 noundef %17, i32 noundef 0) #15
  br label %if.end18

if.end18:                                         ; preds = %rq_clock.exit, %do.end13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_set_class(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_task(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @activate_task(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_repin_lock(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next_and(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_try_to_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @task_contending(ptr noundef %dl_se, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %stack.i.i = getelementptr i8, ptr %dl_se, i32 -420
  %0 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stack.i.i, align 4
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %cpu.i.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %5, ptrtoint (ptr @runqueues to i32)
  %6 = inttoptr i32 %add.i to ptr
  %dl.i = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 16
  %dl_runtime = getelementptr inbounds %struct.sched_dl_entity, ptr %dl_se, i32 0, i32 1
  %7 = ptrtoint ptr %dl_runtime to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %dl_runtime, align 8
  %cmp = icmp eq i64 %8, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %and = and i32 %flags, 64
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  %flags.i.i = getelementptr inbounds %struct.sched_dl_entity, ptr %dl_se, i32 0, i32 8
  %9 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %10, 268435456
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then.i, label %if.end2

if.then.i:                                        ; preds = %if.then1
  %dl_bw.i = getelementptr inbounds %struct.sched_dl_entity, ptr %dl_se, i32 0, i32 4
  %11 = ptrtoint ptr %dl_bw.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %dl_bw.i, align 8
  %this_bw.i.i = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 16, i32 7
  %13 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %this_bw.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %15 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i.i, label %lockdep_assert_rq_held.exit.i.i, label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.then.i
  %core_enabled.i.i.i.i = getelementptr %struct.rq, ptr %6, i32 0, i32 81
  %16 = ptrtoint ptr %core_enabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %core_enabled.i.i.i.i, align 128
  %tobool.not.i.i.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i.i.i, label %__rq_lockp.exit.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i
  %core.i.i.i.i = getelementptr %struct.rq, ptr %6, i32 0, i32 79
  %18 = ptrtoint ptr %core.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %core.i.i.i.i, align 8
  br label %__rq_lockp.exit.i.i.i

__rq_lockp.exit.i.i.i:                            ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %19, %if.then.i.i.i.i ], [ %6, %land.rhs.i.i.i ]
  %dep_map.i.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i.i, i32 0, i32 4
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #15
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %do.end.i.i.i, label %lockdep_assert_rq_held.exit.i.i, !prof !111

do.end.i.i.i:                                     ; preds = %__rq_lockp.exit.i.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i.i

lockdep_assert_rq_held.exit.i.i:                  ; preds = %do.end.i.i.i, %__rq_lockp.exit.i.i.i, %if.then.i
  %20 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %this_bw.i.i, align 8
  %add.i.i = add i64 %21, %12
  store i64 %add.i.i, ptr %this_bw.i.i, align 8
  %cmp.i.i = icmp ult i64 %add.i.i, %14
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end2

land.rhs.i.i:                                     ; preds = %lockdep_assert_rq_held.exit.i.i
  %.b42.i.i = load i1, ptr @__add_rq_bw.__already_done, align 1
  br i1 %.b42.i.i, label %if.end2, label %if.then.i.i, !prof !114

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @__add_rq_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 189, i32 noundef 9, ptr noundef nonnull @.str.12) #15
  br label %if.end2

if.end2:                                          ; preds = %if.then.i.i, %land.rhs.i.i, %lockdep_assert_rq_held.exit.i.i, %if.then1, %if.end
  %dl_non_contending = getelementptr inbounds %struct.sched_dl_entity, ptr %dl_se, i32 0, i32 9
  %22 = ptrtoint ptr %dl_non_contending to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %dl_non_contending, align 4
  %23 = and i8 %bf.load, 32
  %tobool3.not = icmp eq i8 %23, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end2
  %bf.clear7 = and i8 %bf.load, -33
  %24 = ptrtoint ptr %dl_non_contending to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %bf.clear7, ptr %dl_non_contending, align 4
  %inactive_timer = getelementptr inbounds %struct.sched_dl_entity, ptr %dl_se, i32 0, i32 11
  %call8 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %inactive_timer) #15
  %cmp9 = icmp eq i32 %call8, 1
  br i1 %cmp9, label %if.then10, label %cleanup

if.then10:                                        ; preds = %if.then4
  %usage.i = getelementptr i8, ptr %dl_se, i32 -416
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !112
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !113
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i22, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then10
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %cleanup, label %if.then10.i.i.i.i, !prof !114

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %cleanup

if.then.i22:                                      ; preds = %if.then10
  %add.ptr.i = getelementptr i8, ptr %dl_se, i32 -424
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !115
  tail call void @__put_task_struct(ptr noundef %add.ptr.i) #15
  br label %cleanup

if.else:                                          ; preds = %if.end2
  tail call fastcc void @add_running_bw(ptr noundef %dl_se, ptr noundef %dl.i)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.i22, %if.then10.i.i.i.i, %if.end5.i.i.i.i, %if.then4, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enqueue_dl_entity(ptr noundef %dl_se, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dl_se to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dl_se, align 8
  %2 = ptrtoint ptr %dl_se to i32
  %cmp.i.not = icmp eq i32 %1, %2
  br i1 %cmp.i.not, label %do.end6, label %do.body3, !prof !114

do.body3:                                         ; preds = %entry
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1581, 0\0A.popsection", ""() #15, !srcloc !140
  unreachable

do.end6:                                          ; preds = %entry
  %stack.i.i = getelementptr i8, ptr %dl_se, i32 -420
  %3 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %stack.i.i, align 4
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %cpu.i.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %8, ptrtoint (ptr @runqueues to i32)
  %9 = inttoptr i32 %add.i to ptr
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_schedstats, ptr blockaddress(@enqueue_dl_entity, %l_yes.i.i)) #15
          to label %arch_static_branch.exit.i [label %l_yes.i.i], !srcloc !117

l_yes.i.i:                                        ; preds = %do.end6
  br label %arch_static_branch.exit.i

arch_static_branch.exit.i:                        ; preds = %l_yes.i.i, %do.end6
  %retval.0.i.i = phi i1 [ false, %l_yes.i.i ], [ true, %do.end6 ]
  %and.i = and i32 %flags, 1
  %tobool3.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = or i1 %tobool3.not.i, %retval.0.i.i
  br i1 %or.cond.i, label %update_stats_enqueue_dl.exit, label %if.then4.i

if.then4.i:                                       ; preds = %arch_static_branch.exit.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_schedstats, ptr blockaddress(@enqueue_dl_entity, %if.end.i.i)) #15
          to label %update_stats_enqueue_dl.exit [label %if.end.i.i], !srcloc !117

if.end.i.i:                                       ; preds = %if.then4.i
  %stats.i.i.i = getelementptr i8, ptr %dl_se, i32 344
  %add.ptr.i7.i.i = getelementptr i8, ptr %dl_se, i32 -424
  tail call void @__update_stats_enqueue_sleeper(ptr noundef %9, ptr noundef %add.ptr.i7.i.i, ptr noundef %stats.i.i.i) #15
  br label %update_stats_enqueue_dl.exit

update_stats_enqueue_dl.exit:                     ; preds = %if.end.i.i, %if.then4.i, %arch_static_branch.exit.i
  br i1 %tobool3.not.i, label %if.else, label %if.then9

if.then9:                                         ; preds = %update_stats_enqueue_dl.exit
  tail call fastcc void @task_contending(ptr noundef %dl_se, i32 noundef %flags)
  %10 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stack.i.i, align 4
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %15, ptrtoint (ptr @runqueues to i32)
  %16 = inttoptr i32 %add.i.i to ptr
  %deadline.i = getelementptr inbounds %struct.sched_dl_entity, ptr %dl_se, i32 0, i32 7
  %17 = ptrtoint ptr %deadline.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %deadline.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %19 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i.i, label %lockdep_assert_rq_held.exit.i.i, label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.then9
  %core_enabled.i.i.i.i = getelementptr inbounds %struct.rq, ptr %16, i32 0, i32 81
  %20 = ptrtoint ptr %core_enabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %core_enabled.i.i.i.i, align 128
  %tobool.not.i.i.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i.i.i, label %__rq_lockp.exit.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i
  %core.i.i.i.i = getelementptr inbounds %struct.rq, ptr %16, i32 0, i32 79
  %22 = ptrtoint ptr %core.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %core.i.i.i.i, align 8
  br label %__rq_lockp.exit.i.i.i

__rq_lockp.exit.i.i.i:                            ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %23, %if.then.i.i.i.i ], [ %16, %land.rhs.i.i.i ]
  %dep_map.i.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i.i, i32 0, i32 4
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #15
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %do.end.i.i.i, label %lockdep_assert_rq_held.exit.i.i, !prof !111

do.end.i.i.i:                                     ; preds = %__rq_lockp.exit.i.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i.i

lockdep_assert_rq_held.exit.i.i:                  ; preds = %do.end.i.i.i, %__rq_lockp.exit.i.i.i, %if.then9
  %clock_update_flags.i.i.i = getelementptr inbounds %struct.rq, ptr %16, i32 0, i32 25
  %24 = ptrtoint ptr %clock_update_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %clock_update_flags.i.i.i, align 4
  %cmp.i.i.i = icmp ult i32 %25, 2
  br i1 %cmp.i.i.i, label %land.rhs.i3.i.i, label %rq_clock.exit.i

land.rhs.i3.i.i:                                  ; preds = %lockdep_assert_rq_held.exit.i.i
  %.b37.i.i.i = load i1, ptr @assert_clock_updated.__already_done, align 1
  br i1 %.b37.i.i.i, label %rq_clock.exit.i, label %if.then.i.i.i, !prof !114

if.then.i.i.i:                                    ; preds = %land.rhs.i3.i.i
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #15
  br label %rq_clock.exit.i

rq_clock.exit.i:                                  ; preds = %if.then.i.i.i, %land.rhs.i3.i.i, %lockdep_assert_rq_held.exit.i.i
  %clock.i.i = getelementptr inbounds %struct.rq, ptr %16, i32 0, i32 26
  %26 = ptrtoint ptr %clock.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %clock.i.i, align 32
  %sub.i.i = sub i64 %18, %27
  %cmp.i.i = icmp slt i64 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.then.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %rq_clock.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %28 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i35.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i35.i, label %lockdep_assert_rq_held.exit.i49.i, label %land.rhs.i.i38.i

land.rhs.i.i38.i:                                 ; preds = %lor.lhs.false.i
  %core_enabled.i.i.i36.i = getelementptr inbounds %struct.rq, ptr %16, i32 0, i32 81
  %29 = ptrtoint ptr %core_enabled.i.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %core_enabled.i.i.i36.i, align 128
  %tobool.not.i.i.i37.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i.i.i37.i, label %__rq_lockp.exit.i.i45.i, label %if.then.i.i.i40.i

if.then.i.i.i40.i:                                ; preds = %land.rhs.i.i38.i
  %core.i.i.i39.i = getelementptr inbounds %struct.rq, ptr %16, i32 0, i32 79
  %31 = ptrtoint ptr %core.i.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %core.i.i.i39.i, align 8
  br label %__rq_lockp.exit.i.i45.i

__rq_lockp.exit.i.i45.i:                          ; preds = %if.then.i.i.i40.i, %land.rhs.i.i38.i
  %retval.0.i.i.i41.i = phi ptr [ %32, %if.then.i.i.i40.i ], [ %16, %land.rhs.i.i38.i ]
  %dep_map.i.i42.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i41.i, i32 0, i32 4
  %call.i.i.i43.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i42.i, i32 noundef -1) #15
  %cmp.not.i.i44.i = icmp eq i32 %call.i.i.i43.i, 0
  br i1 %cmp.not.i.i44.i, label %do.end.i.i46.i, label %lockdep_assert_rq_held.exit.i49.i, !prof !111

do.end.i.i46.i:                                   ; preds = %__rq_lockp.exit.i.i45.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i49.i

lockdep_assert_rq_held.exit.i49.i:                ; preds = %do.end.i.i46.i, %__rq_lockp.exit.i.i45.i, %lor.lhs.false.i
  %33 = ptrtoint ptr %clock_update_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %clock_update_flags.i.i.i, align 4
  %cmp.i.i48.i = icmp ult i32 %34, 2
  br i1 %cmp.i.i48.i, label %land.rhs.i3.i51.i, label %rq_clock.exit54.i

land.rhs.i3.i51.i:                                ; preds = %lockdep_assert_rq_held.exit.i49.i
  %.b37.i.i50.i = load i1, ptr @assert_clock_updated.__already_done, align 1
  br i1 %.b37.i.i50.i, label %rq_clock.exit54.i, label %if.then.i.i52.i, !prof !114

if.then.i.i52.i:                                  ; preds = %land.rhs.i3.i51.i
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #15
  br label %rq_clock.exit54.i

rq_clock.exit54.i:                                ; preds = %if.then.i.i52.i, %land.rhs.i3.i51.i, %lockdep_assert_rq_held.exit.i49.i
  %35 = ptrtoint ptr %clock.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %clock.i.i, align 32
  %pi_se.i.i.i = getelementptr inbounds %struct.sched_dl_entity, ptr %dl_se, i32 0, i32 12
  %37 = ptrtoint ptr %pi_se.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pi_se.i.i.i, align 8
  %dl_deadline.i.i = getelementptr inbounds %struct.sched_dl_entity, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %dl_deadline.i.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %dl_deadline.i.i, align 8
  %shr.i.i = lshr i64 %40, 10
  %runtime.i.i = getelementptr inbounds %struct.sched_dl_entity, ptr %dl_se, i32 0, i32 6
  %41 = ptrtoint ptr %runtime.i.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %runtime.i.i, align 8
  %shr1.i.i = ashr i64 %42, 10
  %mul.i.i = mul i64 %shr1.i.i, %shr.i.i
  %43 = ptrtoint ptr %deadline.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %deadline.i, align 8
  %sub.i55.i = sub i64 %44, %36
  %shr2.i.i = lshr i64 %sub.i55.i, 10
  %dl_runtime.i.i = getelementptr inbounds %struct.sched_dl_entity, ptr %38, i32 0, i32 1
  %45 = ptrtoint ptr %dl_runtime.i.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %dl_runtime.i.i, align 8
  %shr4.i.i = lshr i64 %46, 10
  %mul5.i.i = mul i64 %shr2.i.i, %shr4.i.i
  %sub.i.i.i = sub i64 %mul5.i.i, %mul.i.i
  %cmp.i.i56.i = icmp slt i64 %sub.i.i.i, 0
  br i1 %cmp.i.i56.i, label %if.then.i, label %if.end23

if.then.i:                                        ; preds = %rq_clock.exit54.i, %rq_clock.exit.i
  %dl_deadline.i57.i = getelementptr inbounds %struct.sched_dl_entity, ptr %dl_se, i32 0, i32 2
  %47 = ptrtoint ptr %dl_deadline.i57.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %dl_deadline.i57.i, align 8
  %dl_period.i.i = getelementptr inbounds %struct.sched_dl_entity, ptr %dl_se, i32 0, i32 3
  %49 = ptrtoint ptr %dl_period.i.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %dl_period.i.i, align 8
  %cmp.i58.i = icmp eq i64 %48, %50
  br i1 %cmp.i58.i, label %if.end.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %51 = ptrtoint ptr %deadline.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %deadline.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %53 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i59.i = icmp eq i32 %53, 0
  br i1 %tobool.not.i.i59.i, label %lockdep_assert_rq_held.exit.i73.i, label %land.rhs.i.i62.i

land.rhs.i.i62.i:                                 ; preds = %land.lhs.true.i
  %core_enabled.i.i.i60.i = getelementptr inbounds %struct.rq, ptr %16, i32 0, i32 81
  %54 = ptrtoint ptr %core_enabled.i.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %core_enabled.i.i.i60.i, align 128
  %tobool.not.i.i.i61.i = icmp eq i32 %55, 0
  br i1 %tobool.not.i.i.i61.i, label %__rq_lockp.exit.i.i69.i, label %if.then.i.i.i64.i

if.then.i.i.i64.i:                                ; preds = %land.rhs.i.i62.i
  %core.i.i.i63.i = getelementptr inbounds %struct.rq, ptr %16, i32 0, i32 79
  %56 = ptrtoint ptr %core.i.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %core.i.i.i63.i, align 8
  br label %__rq_lockp.exit.i.i69.i

__rq_lockp.exit.i.i69.i:                          ; preds = %if.then.i.i.i64.i, %land.rhs.i.i62.i
  %retval.0.i.i.i65.i = phi ptr [ %57, %if.then.i.i.i64.i ], [ %16, %land.rhs.i.i62.i ]
  %dep_map.i.i66.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i65.i, i32 0, i32 4
  %call.i.i.i67.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i66.i, i32 noundef -1) #15
  %cmp.not.i.i68.i = icmp eq i32 %call.i.i.i67.i, 0
  br i1 %cmp.not.i.i68.i, label %do.end.i.i70.i, label %lockdep_assert_rq_held.exit.i73.i, !prof !111

do.end.i.i70.i:                                   ; preds = %__rq_lockp.exit.i.i69.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i73.i

lockdep_assert_rq_held.exit.i73.i:                ; preds = %do.end.i.i70.i, %__rq_lockp.exit.i.i69.i, %land.lhs.true.i
  %58 = ptrtoint ptr %clock_update_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %clock_update_flags.i.i.i, align 4
  %cmp.i.i72.i = icmp ult i32 %59, 2
  br i1 %cmp.i.i72.i, label %land.rhs.i3.i75.i, label %rq_clock.exit78.i

land.rhs.i3.i75.i:                                ; preds = %lockdep_assert_rq_held.exit.i73.i
  %.b37.i.i74.i = load i1, ptr @assert_clock_updated.__already_done, align 1
  br i1 %.b37.i.i74.i, label %rq_clock.exit78.i, label %if.then.i.i76.i, !prof !114

if.then.i.i76.i:                                  ; preds = %land.rhs.i3.i75.i
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #15
  br label %rq_clock.exit78.i

rq_clock.exit78.i:                                ; preds = %if.then.i.i76.i, %land.rhs.i3.i75.i, %lockdep_assert_rq_held.exit.i73.i
  %60 = ptrtoint ptr %clock.i.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %clock.i.i, align 32
  %sub.i79.i = sub i64 %52, %61
  %cmp.i80.i = icmp slt i64 %sub.i79.i, 0
  br i1 %cmp.i80.i, label %if.end.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %rq_clock.exit78.i
  %pi_se.i.i81.i = getelementptr inbounds %struct.sched_dl_entity, ptr %dl_se, i32 0, i32 12
  %62 = ptrtoint ptr %pi_se.i.i81.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pi_se.i.i81.i, align 8
  %cmp.i82.not.i = icmp eq ptr %63, %dl_se
  br i1 %cmp.i82.not.i, label %if.then13.i, label %if.end.i, !prof !111

if.then13.i:                                      ; preds = %land.rhs.i
  tail call fastcc void @update_dl_revised_wakeup(ptr noundef %dl_se, ptr noundef %16) #15
  br label %if.end23

if.end.i:                                         ; preds = %land.rhs.i, %rq_clock.exit78.i, %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %64 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i83.i = icmp eq i32 %64, 0
  br i1 %tobool.not.i.i83.i, label %lockdep_assert_rq_held.exit.i97.i, label %land.rhs.i.i86.i

land.rhs.i.i86.i:                                 ; preds = %if.end.i
  %core_enabled.i.i.i84.i = getelementptr inbounds %struct.rq, ptr %16, i32 0, i32 81
  %65 = ptrtoint ptr %core_enabled.i.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %core_enabled.i.i.i84.i, align 128
  %tobool.not.i.i.i85.i = icmp eq i32 %66, 0
  br i1 %tobool.not.i.i.i85.i, label %__rq_lockp.exit.i.i93.i, label %if.then.i.i.i88.i

if.then.i.i.i88.i:                                ; preds = %land.rhs.i.i86.i
  %core.i.i.i87.i = getelementptr inbounds %struct.rq, ptr %16, i32 0, i32 79
  %67 = ptrtoint ptr %core.i.i.i87.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %core.i.i.i87.i, align 8
  br label %__rq_lockp.exit.i.i93.i

__rq_lockp.exit.i.i93.i:                          ; preds = %if.then.i.i.i88.i, %land.rhs.i.i86.i
  %retval.0.i.i.i89.i = phi ptr [ %68, %if.then.i.i.i88.i ], [ %16, %land.rhs.i.i86.i ]
  %dep_map.i.i90.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i89.i, i32 0, i32 4
  %call.i.i.i91.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i90.i, i32 noundef -1) #15
  %cmp.not.i.i92.i = icmp eq i32 %call.i.i.i91.i, 0
  br i1 %cmp.not.i.i92.i, label %do.end.i.i94.i, label %lockdep_assert_rq_held.exit.i97.i, !prof !111

do.end.i.i94.i:                                   ; preds = %__rq_lockp.exit.i.i93.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i97.i

lockdep_assert_rq_held.exit.i97.i:                ; preds = %do.end.i.i94.i, %__rq_lockp.exit.i.i93.i, %if.end.i
  %69 = ptrtoint ptr %clock_update_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %clock_update_flags.i.i.i, align 4
  %cmp.i.i96.i = icmp ult i32 %70, 2
  br i1 %cmp.i.i96.i, label %land.rhs.i3.i99.i, label %rq_clock.exit102.i

land.rhs.i3.i99.i:                                ; preds = %lockdep_assert_rq_held.exit.i97.i
  %.b37.i.i98.i = load i1, ptr @assert_clock_updated.__already_done, align 1
  br i1 %.b37.i.i98.i, label %rq_clock.exit102.i, label %if.then.i.i100.i, !prof !114

if.then.i.i100.i:                                 ; preds = %land.rhs.i3.i99.i
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #15
  br label %rq_clock.exit102.i

rq_clock.exit102.i:                               ; preds = %if.then.i.i100.i, %land.rhs.i3.i99.i, %lockdep_assert_rq_held.exit.i97.i
  %71 = ptrtoint ptr %clock.i.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %clock.i.i, align 32
  %pi_se.i.i = getelementptr inbounds %struct.sched_dl_entity, ptr %dl_se, i32 0, i32 12
  %73 = ptrtoint ptr %pi_se.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pi_se.i.i, align 8
  %dl_deadline.i = getelementptr inbounds %struct.sched_dl_entity, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %dl_deadline.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %dl_deadline.i, align 8
  %add.i37 = add i64 %76, %72
  %77 = ptrtoint ptr %deadline.i to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %add.i37, ptr %deadline.i, align 8
  %dl_runtime.i = getelementptr inbounds %struct.sched_dl_entity, ptr %74, i32 0, i32 1
  %78 = ptrtoint ptr %dl_runtime.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %dl_runtime.i, align 8
  %runtime.i = getelementptr inbounds %struct.sched_dl_entity, ptr %dl_se, i32 0, i32 6
  %80 = ptrtoint ptr %runtime.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %79, ptr %runtime.i, align 8
  br label %if.end23

if.else:                                          ; preds = %update_stats_enqueue_dl.exit
  %and10 = and i32 %flags, 32
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else13, label %if.then12

if.then12:                                        ; preds = %if.else
  tail call fastcc void @replenish_dl_entity(ptr noundef %dl_se)
  br label %if.end23

if.else13:                                        ; preds = %if.else
  %and14 = and i32 %flags, 2
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end23, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else13
  %deadline = getelementptr inbounds %struct.sched_dl_entity, ptr %dl_se, i32 0, i32 7
  %81 = ptrtoint ptr %deadline to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %deadline, align 8
  %83 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %stack.i.i, align 4
  %cpu.i.i39 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %cpu.i.i39 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %cpu.i.i39, align 4
  %arrayidx.i40 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %86
  %87 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx.i40, align 4
  %add.i41 = add i32 %88, ptrtoint (ptr @runqueues to i32)
  %89 = inttoptr i32 %add.i41 to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %90 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i = icmp eq i32 %90, 0
  br i1 %tobool.not.i.i, label %lockdep_assert_rq_held.exit.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %land.lhs.true
  %core_enabled.i.i.i = getelementptr inbounds %struct.rq, ptr %89, i32 0, i32 81
  %91 = ptrtoint ptr %core_enabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %core_enabled.i.i.i, align 128
  %tobool.not.i.i.i43 = icmp eq i32 %92, 0
  br i1 %tobool.not.i.i.i43, label %__rq_lockp.exit.i.i, label %if.then.i.i.i44

if.then.i.i.i44:                                  ; preds = %land.rhs.i.i
  %core.i.i.i = getelementptr inbounds %struct.rq, ptr %89, i32 0, i32 79
  %93 = ptrtoint ptr %core.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %core.i.i.i, align 8
  br label %__rq_lockp.exit.i.i

__rq_lockp.exit.i.i:                              ; preds = %if.then.i.i.i44, %land.rhs.i.i
  %retval.0.i.i.i = phi ptr [ %94, %if.then.i.i.i44 ], [ %89, %land.rhs.i.i ]
  %dep_map.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i, i32 0, i32 4
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #15
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %lockdep_assert_rq_held.exit.i, !prof !111

do.end.i.i:                                       ; preds = %__rq_lockp.exit.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i

lockdep_assert_rq_held.exit.i:                    ; preds = %do.end.i.i, %__rq_lockp.exit.i.i, %land.lhs.true
  %clock_update_flags.i.i = getelementptr inbounds %struct.rq, ptr %89, i32 0, i32 25
  %95 = ptrtoint ptr %clock_update_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %clock_update_flags.i.i, align 4
  %cmp.i.i45 = icmp ult i32 %96, 2
  br i1 %cmp.i.i45, label %land.rhs.i3.i, label %rq_clock.exit

land.rhs.i3.i:                                    ; preds = %lockdep_assert_rq_held.exit.i
  %.b37.i.i = load i1, ptr @assert_clock_updated.__already_done, align 1
  br i1 %.b37.i.i, label %rq_clock.exit, label %if.then.i.i, !prof !114

if.then.i.i:                                      ; preds = %land.rhs.i3.i
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #15
  br label %rq_clock.exit

rq_clock.exit:                                    ; preds = %if.then.i.i, %land.rhs.i3.i, %lockdep_assert_rq_held.exit.i
  %clock.i = getelementptr inbounds %struct.rq, ptr %89, i32 0, i32 26
  %97 = ptrtoint ptr %clock.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %clock.i, align 32
  %sub.i = sub i64 %82, %98
  %cmp.i46 = icmp slt i64 %sub.i, 0
  br i1 %cmp.i46, label %if.then20, label %if.end23

if.then20:                                        ; preds = %rq_clock.exit
  %99 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %stack.i.i, align 4
  %cpu.i.i.i48 = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %cpu.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %cpu.i.i.i48, align 4
  %arrayidx.i.i49 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %102
  %103 = ptrtoint ptr %arrayidx.i.i49 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx.i.i49, align 4
  %add.i.i50 = add i32 %104, ptrtoint (ptr @runqueues to i32)
  %105 = inttoptr i32 %add.i.i50 to ptr
  %pi_se.i.i.i51 = getelementptr inbounds %struct.sched_dl_entity, ptr %dl_se, i32 0, i32 12
  %106 = ptrtoint ptr %pi_se.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pi_se.i.i.i51, align 8
  %cmp.i.not.i = icmp eq ptr %107, %dl_se
  br i1 %cmp.i.not.i, label %if.end.i53, label %do.end.i, !prof !114

do.end.i:                                         ; preds = %if.then20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 725, i32 noundef 9, ptr noundef null) #15
  br label %if.end.i53

if.end.i53:                                       ; preds = %do.end.i, %if.then20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %108 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i.i52 = icmp eq i32 %108, 0
  br i1 %tobool.not.i.i.i52, label %lockdep_assert_rq_held.exit.i.i67, label %land.rhs.i.i.i56

land.rhs.i.i.i56:                                 ; preds = %if.end.i53
  %core_enabled.i.i.i.i54 = getelementptr inbounds %struct.rq, ptr %105, i32 0, i32 81
  %109 = ptrtoint ptr %core_enabled.i.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %core_enabled.i.i.i.i54, align 128
  %tobool.not.i.i.i.i55 = icmp eq i32 %110, 0
  br i1 %tobool.not.i.i.i.i55, label %__rq_lockp.exit.i.i.i63, label %if.then.i.i.i.i58

if.then.i.i.i.i58:                                ; preds = %land.rhs.i.i.i56
  %core.i.i.i.i57 = getelementptr inbounds %struct.rq, ptr %105, i32 0, i32 79
  %111 = ptrtoint ptr %core.i.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %core.i.i.i.i57, align 8
  br label %__rq_lockp.exit.i.i.i63

__rq_lockp.exit.i.i.i63:                          ; preds = %if.then.i.i.i.i58, %land.rhs.i.i.i56
  %retval.0.i.i.i.i59 = phi ptr [ %112, %if.then.i.i.i.i58 ], [ %105, %land.rhs.i.i.i56 ]
  %dep_map.i.i.i60 = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i.i59, i32 0, i32 4
  %call.i.i.i.i61 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i60, i32 noundef -1) #15
  %cmp.not.i.i.i62 = icmp eq i32 %call.i.i.i.i61, 0
  br i1 %cmp.not.i.i.i62, label %do.end.i.i.i64, label %lockdep_assert_rq_held.exit.i.i67, !prof !111

do.end.i.i.i64:                                   ; preds = %__rq_lockp.exit.i.i.i63
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i.i67

lockdep_assert_rq_held.exit.i.i67:                ; preds = %do.end.i.i.i64, %__rq_lockp.exit.i.i.i63, %if.end.i53
  %clock_update_flags.i.i.i65 = getelementptr inbounds %struct.rq, ptr %105, i32 0, i32 25
  %113 = ptrtoint ptr %clock_update_flags.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %clock_update_flags.i.i.i65, align 4
  %cmp.i.i.i66 = icmp ult i32 %114, 2
  br i1 %cmp.i.i.i66, label %land.rhs.i3.i.i69, label %rq_clock.exit.i74

land.rhs.i3.i.i69:                                ; preds = %lockdep_assert_rq_held.exit.i.i67
  %.b37.i.i.i68 = load i1, ptr @assert_clock_updated.__already_done, align 1
  br i1 %.b37.i.i.i68, label %rq_clock.exit.i74, label %if.then.i.i.i70, !prof !114

if.then.i.i.i70:                                  ; preds = %land.rhs.i3.i.i69
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #15
  br label %rq_clock.exit.i74

rq_clock.exit.i74:                                ; preds = %if.then.i.i.i70, %land.rhs.i3.i.i69, %lockdep_assert_rq_held.exit.i.i67
  %clock.i.i71 = getelementptr inbounds %struct.rq, ptr %105, i32 0, i32 26
  %115 = ptrtoint ptr %clock.i.i71 to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %clock.i.i71, align 32
  %117 = ptrtoint ptr %deadline to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %deadline, align 8
  %sub.i.i73 = sub i64 %116, %118
  %cmp.i69.i = icmp slt i64 %sub.i.i73, 0
  br i1 %cmp.i69.i, label %do.end39.i, label %if.end45.i, !prof !111

do.end39.i:                                       ; preds = %rq_clock.exit.i74
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 726, i32 noundef 9, ptr noundef null) #15
  br label %if.end45.i

if.end45.i:                                       ; preds = %do.end39.i, %rq_clock.exit.i74
  %dl_throttled.i = getelementptr inbounds %struct.sched_dl_entity, ptr %dl_se, i32 0, i32 9
  %119 = ptrtoint ptr %dl_throttled.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %bf.load.i = load i8, ptr %dl_throttled.i, align 4
  %tobool53.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool53.not.i, label %if.end55.i, label %if.end23

if.end55.i:                                       ; preds = %if.end45.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %120 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i70.i = icmp eq i32 %120, 0
  br i1 %tobool.not.i.i70.i, label %lockdep_assert_rq_held.exit.i84.i, label %land.rhs.i.i73.i

land.rhs.i.i73.i:                                 ; preds = %if.end55.i
  %core_enabled.i.i.i71.i = getelementptr inbounds %struct.rq, ptr %105, i32 0, i32 81
  %121 = ptrtoint ptr %core_enabled.i.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %core_enabled.i.i.i71.i, align 128
  %tobool.not.i.i.i72.i = icmp eq i32 %122, 0
  br i1 %tobool.not.i.i.i72.i, label %__rq_lockp.exit.i.i80.i, label %if.then.i.i.i75.i

if.then.i.i.i75.i:                                ; preds = %land.rhs.i.i73.i
  %core.i.i.i74.i = getelementptr inbounds %struct.rq, ptr %105, i32 0, i32 79
  %123 = ptrtoint ptr %core.i.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %core.i.i.i74.i, align 8
  br label %__rq_lockp.exit.i.i80.i

__rq_lockp.exit.i.i80.i:                          ; preds = %if.then.i.i.i75.i, %land.rhs.i.i73.i
  %retval.0.i.i.i76.i = phi ptr [ %124, %if.then.i.i.i75.i ], [ %105, %land.rhs.i.i73.i ]
  %dep_map.i.i77.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i76.i, i32 0, i32 4
  %call.i.i.i78.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i77.i, i32 noundef -1) #15
  %cmp.not.i.i79.i = icmp eq i32 %call.i.i.i78.i, 0
  br i1 %cmp.not.i.i79.i, label %do.end.i.i81.i, label %lockdep_assert_rq_held.exit.i84.i, !prof !111

do.end.i.i81.i:                                   ; preds = %__rq_lockp.exit.i.i80.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i84.i

lockdep_assert_rq_held.exit.i84.i:                ; preds = %do.end.i.i81.i, %__rq_lockp.exit.i.i80.i, %if.end55.i
  %125 = ptrtoint ptr %clock_update_flags.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %clock_update_flags.i.i.i65, align 4
  %cmp.i.i83.i = icmp ult i32 %126, 2
  br i1 %cmp.i.i83.i, label %land.rhs.i3.i86.i, label %rq_clock.exit89.i

land.rhs.i3.i86.i:                                ; preds = %lockdep_assert_rq_held.exit.i84.i
  %.b37.i.i85.i = load i1, ptr @assert_clock_updated.__already_done, align 1
  br i1 %.b37.i.i85.i, label %rq_clock.exit89.i, label %if.then.i.i87.i, !prof !114

if.then.i.i87.i:                                  ; preds = %land.rhs.i3.i86.i
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #15
  br label %rq_clock.exit89.i

rq_clock.exit89.i:                                ; preds = %if.then.i.i87.i, %land.rhs.i3.i86.i, %lockdep_assert_rq_held.exit.i84.i
  %127 = ptrtoint ptr %clock.i.i71 to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %clock.i.i71, align 32
  %dl_deadline.i75 = getelementptr inbounds %struct.sched_dl_entity, ptr %dl_se, i32 0, i32 2
  %129 = ptrtoint ptr %dl_deadline.i75 to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %dl_deadline.i75, align 8
  %add.i76 = add i64 %130, %128
  %131 = ptrtoint ptr %deadline to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %add.i76, ptr %deadline, align 8
  %dl_runtime.i77 = getelementptr inbounds %struct.sched_dl_entity, ptr %dl_se, i32 0, i32 1
  %132 = ptrtoint ptr %dl_runtime.i77 to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %dl_runtime.i77, align 8
  %runtime.i78 = getelementptr inbounds %struct.sched_dl_entity, ptr %dl_se, i32 0, i32 6
  %134 = ptrtoint ptr %runtime.i78 to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 %133, ptr %runtime.i78, align 8
  br label %if.end23

if.end23:                                         ; preds = %rq_clock.exit89.i, %if.end45.i, %rq_clock.exit, %if.else13, %if.then12, %rq_clock.exit102.i, %if.then13.i, %rq_clock.exit54.i
  %135 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %stack.i.i, align 4
  %cpu.i.i.i80 = getelementptr inbounds %struct.thread_info, ptr %136, i32 0, i32 3
  %137 = ptrtoint ptr %cpu.i.i.i80 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile i32, ptr %cpu.i.i.i80, align 4
  %arrayidx.i.i81 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %138
  %139 = ptrtoint ptr %arrayidx.i.i81 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx.i.i81, align 4
  %add.i.i82 = add i32 %140, ptrtoint (ptr @runqueues to i32)
  %141 = inttoptr i32 %add.i.i82 to ptr
  %dl.i.i = getelementptr inbounds %struct.rq, ptr %141, i32 0, i32 16
  %142 = ptrtoint ptr %dl_se to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %dl_se, align 8
  %cmp.not.i = icmp eq i32 %143, %1
  br i1 %cmp.not.i, label %do.end9.i, label %do.body4.i, !prof !114

do.body4.i:                                       ; preds = %if.end23
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1557, 0\0A.popsection", ""() #15, !srcloc !141
  unreachable

do.end9.i:                                        ; preds = %if.end23
  %144 = ptrtoint ptr %dl.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dl.i.i, align 4
  %tobool.not14.i.i = icmp eq ptr %145, null
  br i1 %tobool.not14.i.i, label %if.then.i.critedge.i.i, label %while.body.i.preheader.i

while.body.i.preheader.i:                         ; preds = %do.end9.i
  %deadline.i.i = getelementptr inbounds %struct.sched_dl_entity, ptr %dl_se, i32 0, i32 7
  %146 = ptrtoint ptr %deadline.i.i to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %deadline.i.i, align 8
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i, %while.body.i.preheader.i
  %148 = phi ptr [ %152, %while.body.i.i ], [ %145, %while.body.i.preheader.i ]
  %leftmost.0.off015.i.i = phi i1 [ %leftmost.1.off0.i.i, %while.body.i.i ], [ true, %while.body.i.preheader.i ]
  %deadline4.i.i = getelementptr inbounds %struct.sched_dl_entity, ptr %148, i32 0, i32 7
  %149 = ptrtoint ptr %deadline4.i.i to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %deadline4.i.i, align 8
  %sub.i.i.i83 = sub i64 %147, %150
  %cmp.i.i.i84 = icmp slt i64 %sub.i.i.i83, 0
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %148, i32 0, i32 2
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %148, i32 0, i32 1
  %link.1.i.i = select i1 %cmp.i.i.i84, ptr %rb_left.i.i, ptr %rb_right.i.i
  %leftmost.1.off0.i.i = select i1 %cmp.i.i.i84, i1 %leftmost.0.off015.i.i, i1 false
  %151 = ptrtoint ptr %link.1.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %link.1.i.i, align 4
  %tobool.not.i.i85 = icmp eq ptr %152, null
  br i1 %tobool.not.i.i85, label %while.cond.while.end_crit_edge.i.i, label %while.body.i.i

while.cond.while.end_crit_edge.i.i:               ; preds = %while.body.i.i
  %phi.cast.le.i.i = ptrtoint ptr %148 to i32
  %153 = ptrtoint ptr %dl_se to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %phi.cast.le.i.i, ptr %dl_se, align 4
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %dl_se, i32 0, i32 1
  %154 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr null, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %dl_se, i32 0, i32 2
  %155 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr null, ptr %rb_left.i.i.i, align 4
  %156 = ptrtoint ptr %link.1.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %dl_se, ptr %link.1.i.i, align 4
  br i1 %leftmost.1.off0.i.i, label %if.then.i.i.i86, label %__enqueue_dl_entity.exit

if.then.i.critedge.i.i:                           ; preds = %do.end9.i
  %157 = ptrtoint ptr %dl_se to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 0, ptr %dl_se, align 4
  %rb_right.i.c.i.i = getelementptr inbounds %struct.rb_node, ptr %dl_se, i32 0, i32 1
  %158 = ptrtoint ptr %rb_right.i.c.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr null, ptr %rb_right.i.c.i.i, align 4
  %rb_left.i.c.i.i = getelementptr inbounds %struct.rb_node, ptr %dl_se, i32 0, i32 2
  %159 = ptrtoint ptr %rb_left.i.c.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr null, ptr %rb_left.i.c.i.i, align 4
  %160 = ptrtoint ptr %dl.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %dl_se, ptr %dl.i.i, align 4
  br label %if.then.i.i.i86

if.then.i.i.i86:                                  ; preds = %if.then.i.critedge.i.i, %while.cond.while.end_crit_edge.i.i
  %rb_leftmost.i.i.i = getelementptr inbounds %struct.rq, ptr %141, i32 0, i32 16, i32 0, i32 1
  %161 = ptrtoint ptr %rb_leftmost.i.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %dl_se, ptr %rb_leftmost.i.i.i, align 4
  br label %__enqueue_dl_entity.exit

__enqueue_dl_entity.exit:                         ; preds = %if.then.i.i.i86, %while.cond.while.end_crit_edge.i.i
  tail call void @rb_insert_color(ptr noundef %dl_se, ptr noundef %dl.i.i) #15
  tail call fastcc void @inc_dl_tasks(ptr noundef %dl_se, ptr noundef %dl.i.i) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enqueue_pushable_dl_task(ptr noundef %rq, ptr noundef %p) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %pushable_dl_tasks = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 52
  %0 = ptrtoint ptr %pushable_dl_tasks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pushable_dl_tasks, align 4
  %2 = ptrtoint ptr %pushable_dl_tasks to i32
  %cmp.not = icmp eq i32 %1, %2
  br i1 %cmp.not, label %do.end9, label %do.body4, !prof !114

do.body4:                                         ; preds = %entry
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 536, 0\0A.popsection", ""() #15, !srcloc !142
  unreachable

do.end9:                                          ; preds = %entry
  %pushable_dl_tasks_root = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 5
  %3 = ptrtoint ptr %pushable_dl_tasks_root to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pushable_dl_tasks_root, align 4
  %tobool.not14.i = icmp eq ptr %4, null
  br i1 %tobool.not14.i, label %if.then.i.critedge.i, label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %do.end9
  %flags.i.i.i = getelementptr %struct.task_struct, ptr %p, i32 0, i32 20, i32 8
  %5 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i.i.i, align 8
  %and.i.i.i = and i32 %6, 268435456
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  %deadline.i.i = getelementptr %struct.task_struct, ptr %p, i32 0, i32 20, i32 7
  br label %while.body.i.outer

while.body.i.outer:                               ; preds = %.thread, %while.body.i.preheader
  %.ph = phi ptr [ %16, %.thread ], [ %4, %while.body.i.preheader ]
  %leftmost.0.off015.i.ph = phi i1 [ false, %.thread ], [ true, %while.body.i.preheader ]
  br label %while.body.i

while.body.i:                                     ; preds = %12, %while.body.i.outer
  %7 = phi ptr [ %14, %12 ], [ %.ph, %while.body.i.outer ]
  br i1 %tobool.i.not.i.i, label %__pushable_less.exit, label %12

__pushable_less.exit:                             ; preds = %while.body.i
  %8 = ptrtoint ptr %deadline.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %deadline.i.i, align 8
  %deadline1.i.i = getelementptr i8, ptr %7, i32 -676
  %10 = ptrtoint ptr %deadline1.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %deadline1.i.i, align 8
  %sub.i.i.i = sub i64 %9, %11
  %cmp.i.i.i = icmp slt i64 %sub.i.i.i, 0
  br i1 %cmp.i.i.i, label %12, label %.thread

12:                                               ; preds = %__pushable_less.exit, %while.body.i
  %rb_left.i22 = getelementptr inbounds %struct.rb_node, ptr %7, i32 0, i32 2
  %13 = ptrtoint ptr %rb_left.i22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rb_left.i22, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %while.body.i

.thread:                                          ; preds = %__pushable_less.exit
  %rb_right.i.le = getelementptr inbounds %struct.rb_node, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %rb_right.i.le to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rb_right.i.le, align 4
  %tobool.not.i29 = icmp eq ptr %16, null
  br i1 %tobool.not.i29, label %while.cond.while.end_crit_edge.i.thread, label %while.body.i.outer

while.cond.while.end_crit_edge.i.thread:          ; preds = %.thread
  %rb_right.i.le.le = getelementptr inbounds %struct.rb_node, ptr %7, i32 0, i32 1
  %phi.cast.le.i30 = ptrtoint ptr %7 to i32
  %17 = ptrtoint ptr %pushable_dl_tasks to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %phi.cast.le.i30, ptr %pushable_dl_tasks, align 4
  %rb_right.i.i31 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 52, i32 1
  %18 = ptrtoint ptr %rb_right.i.i31 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %rb_right.i.i31, align 4
  %rb_left.i.i32 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 52, i32 2
  %19 = ptrtoint ptr %rb_left.i.i32 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %rb_left.i.i32, align 4
  %20 = ptrtoint ptr %rb_right.i.le.le to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %pushable_dl_tasks, ptr %rb_right.i.le.le, align 4
  br label %rb_add_cached.exit.thread

while.cond.while.end_crit_edge.i:                 ; preds = %12
  %rb_left.i22.le = getelementptr inbounds %struct.rb_node, ptr %7, i32 0, i32 2
  %phi.cast.le.i = ptrtoint ptr %7 to i32
  %21 = ptrtoint ptr %pushable_dl_tasks to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %phi.cast.le.i, ptr %pushable_dl_tasks, align 4
  %rb_right.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 52, i32 1
  %22 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 52, i32 2
  %23 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %rb_left.i.i, align 4
  %24 = ptrtoint ptr %rb_left.i22.le to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %pushable_dl_tasks, ptr %rb_left.i22.le, align 4
  br i1 %leftmost.0.off015.i.ph, label %rb_add_cached.exit, label %rb_add_cached.exit.thread

rb_add_cached.exit.thread:                        ; preds = %while.cond.while.end_crit_edge.i, %while.cond.while.end_crit_edge.i.thread
  tail call void @rb_insert_color(ptr noundef %pushable_dl_tasks, ptr noundef %pushable_dl_tasks_root) #15
  br label %if.end15

if.then.i.critedge.i:                             ; preds = %do.end9
  %25 = ptrtoint ptr %pushable_dl_tasks to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %pushable_dl_tasks, align 4
  %rb_right.i.c.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 52, i32 1
  %26 = ptrtoint ptr %rb_right.i.c.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %rb_right.i.c.i, align 4
  %rb_left.i.c.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 52, i32 2
  %27 = ptrtoint ptr %rb_left.i.c.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %rb_left.i.c.i, align 4
  %28 = ptrtoint ptr %pushable_dl_tasks_root to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %pushable_dl_tasks, ptr %pushable_dl_tasks_root, align 4
  br label %rb_add_cached.exit

rb_add_cached.exit:                               ; preds = %if.then.i.critedge.i, %while.cond.while.end_crit_edge.i
  %rb_leftmost.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 5, i32 1
  %29 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %pushable_dl_tasks, ptr %rb_leftmost.i.i, align 4
  tail call void @rb_insert_color(ptr noundef %pushable_dl_tasks, ptr noundef %pushable_dl_tasks_root) #15
  %tobool11.not = icmp eq ptr %pushable_dl_tasks, null
  br i1 %tobool11.not, label %if.end15, label %if.then12

if.then12:                                        ; preds = %rb_add_cached.exit
  %deadline = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 7
  %30 = ptrtoint ptr %deadline to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %deadline, align 8
  %next = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 2, i32 1
  %32 = ptrtoint ptr %next to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %next, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %rb_add_cached.exit, %rb_add_cached.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @start_dl_timer(ptr noundef %p) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %dl_timer = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 10
  %stack.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %stack.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stack.i, align 4
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %cpu.i, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @runqueues to i32)
  %6 = inttoptr i32 %add to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %7 = load i32, ptr @debug_locks, align 4
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %lockdep_assert_rq_held.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %entry
  %core_enabled.i.i = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 81
  %8 = ptrtoint ptr %core_enabled.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %core_enabled.i.i, align 128
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %__rq_lockp.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %land.rhs.i
  %core.i.i = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 79
  %10 = ptrtoint ptr %core.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %core.i.i, align 8
  br label %__rq_lockp.exit.i

__rq_lockp.exit.i:                                ; preds = %if.then.i.i, %land.rhs.i
  %retval.0.i.i = phi ptr [ %11, %if.then.i.i ], [ %6, %land.rhs.i ]
  %dep_map.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #15
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %lockdep_assert_rq_held.exit, !prof !111

do.end.i:                                         ; preds = %__rq_lockp.exit.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit

lockdep_assert_rq_held.exit:                      ; preds = %do.end.i, %__rq_lockp.exit.i, %entry
  %deadline.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 7
  %12 = ptrtoint ptr %deadline.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %deadline.i, align 8
  %dl_deadline.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 2
  %14 = ptrtoint ptr %dl_deadline.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %dl_deadline.i, align 8
  %sub.i = sub i64 %13, %15
  %dl_period.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 3
  %16 = ptrtoint ptr %dl_period.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %dl_period.i, align 8
  %add.i = add i64 %sub.i, %17
  %base.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 10, i32 3
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %get_time.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %get_time.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %get_time.i, align 4
  %call.i = tail call i64 %21() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %22 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i27 = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i27, label %lockdep_assert_rq_held.exit.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %lockdep_assert_rq_held.exit
  %core_enabled.i.i.i = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 81
  %23 = ptrtoint ptr %core_enabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %core_enabled.i.i.i, align 128
  %tobool.not.i.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i.i, label %__rq_lockp.exit.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  %core.i.i.i = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 79
  %25 = ptrtoint ptr %core.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %core.i.i.i, align 8
  br label %__rq_lockp.exit.i.i

__rq_lockp.exit.i.i:                              ; preds = %if.then.i.i.i, %land.rhs.i.i
  %retval.0.i.i.i = phi ptr [ %26, %if.then.i.i.i ], [ %6, %land.rhs.i.i ]
  %dep_map.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i, i32 0, i32 4
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #15
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %lockdep_assert_rq_held.exit.i, !prof !111

do.end.i.i:                                       ; preds = %__rq_lockp.exit.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i

lockdep_assert_rq_held.exit.i:                    ; preds = %do.end.i.i, %__rq_lockp.exit.i.i, %lockdep_assert_rq_held.exit
  %clock_update_flags.i.i = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 25
  %27 = ptrtoint ptr %clock_update_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %clock_update_flags.i.i, align 4
  %cmp.i.i = icmp ult i32 %28, 2
  br i1 %cmp.i.i, label %land.rhs.i3.i, label %rq_clock.exit

land.rhs.i3.i:                                    ; preds = %lockdep_assert_rq_held.exit.i
  %.b37.i.i = load i1, ptr @assert_clock_updated.__already_done, align 1
  br i1 %.b37.i.i, label %rq_clock.exit, label %if.then.i.i28, !prof !114

if.then.i.i28:                                    ; preds = %land.rhs.i3.i
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #15
  br label %rq_clock.exit

rq_clock.exit:                                    ; preds = %if.then.i.i28, %land.rhs.i3.i, %lockdep_assert_rq_held.exit.i
  %clock.i = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 26
  %29 = ptrtoint ptr %clock.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %clock.i, align 32
  %sub = sub i64 %call.i, %30
  %add7 = add i64 %add.i, %sub
  %sub.i29 = sub i64 %add7, %call.i
  %cmp8.i.i.i = icmp slt i64 %sub.i29, 0
  %31 = tail call i64 @llvm.abs.i64(i64 %sub.i29, i1 false) #15
  %32 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %31, i32 0) #19, !srcloc !143
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %32, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %32, 1
  %33 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %31, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #19, !srcloc !144
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %33, 0
  %cmp30 = icmp ugt i64 %asmresult10.i.i.i.i, 511
  %cmp = select i1 %cmp8.i.i.i, i1 %cmp30, i1 false
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %rq_clock.exit
  %state.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 10, i32 4
  %34 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load volatile i8, ptr %state.i, align 8
  %36 = and i8 %35, 1
  %tobool.i.not = icmp eq i8 %36, 0
  br i1 %tobool.i.not, label %if.then10, label %cleanup

if.then10:                                        ; preds = %if.end
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !135
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %37, 0
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end15.sink.split.i.i.i.i, label %if.else.i.i.i.i, !prof !111

if.else.i.i.i.i:                                  ; preds = %if.then10
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %38 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  %.not.i.i.i.i = icmp sgt i32 %38, -1
  br i1 %.not.i.i.i.i, label %get_task_struct.exit, label %if.end15.sink.split.i.i.i.i, !prof !114

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i, %if.then10
  %.sink.i.i.i.i = phi i32 [ 2, %if.then10 ], [ 1, %if.else.i.i.i.i ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #15
  br label %get_task_struct.exit

get_task_struct.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i
  tail call void @hrtimer_start_range_ns(ptr noundef %dl_timer, i64 noundef %add7, i64 noundef 0, i32 noundef 8) #15
  br label %cleanup

cleanup:                                          ; preds = %get_task_struct.exit, %if.end, %rq_clock.exit
  %retval.0 = phi i32 [ 0, %rq_clock.exit ], [ 1, %get_task_struct.exit ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__update_stats_wait_start(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__update_stats_enqueue_sleeper(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_dl_revised_wakeup(ptr nocapture noundef %dl_se, ptr noundef %rq) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %deadline = getelementptr inbounds %struct.sched_dl_entity, ptr %dl_se, i32 0, i32 7
  %0 = ptrtoint ptr %deadline to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %deadline, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %lockdep_assert_rq_held.exit.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %entry
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
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #15
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %lockdep_assert_rq_held.exit.i, !prof !111

do.end.i.i:                                       ; preds = %__rq_lockp.exit.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i

lockdep_assert_rq_held.exit.i:                    ; preds = %do.end.i.i, %__rq_lockp.exit.i.i, %entry
  %clock_update_flags.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 25
  %7 = ptrtoint ptr %clock_update_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %clock_update_flags.i.i, align 4
  %cmp.i.i = icmp ult i32 %8, 2
  br i1 %cmp.i.i, label %land.rhs.i3.i, label %rq_clock.exit

land.rhs.i3.i:                                    ; preds = %lockdep_assert_rq_held.exit.i
  %.b37.i.i = load i1, ptr @assert_clock_updated.__already_done, align 1
  br i1 %.b37.i.i, label %rq_clock.exit, label %if.then.i.i, !prof !114

if.then.i.i:                                      ; preds = %land.rhs.i3.i
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #15
  br label %rq_clock.exit

rq_clock.exit:                                    ; preds = %if.then.i.i, %land.rhs.i3.i, %lockdep_assert_rq_held.exit.i
  %clock.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 26
  %9 = ptrtoint ptr %clock.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %clock.i, align 32
  %11 = ptrtoint ptr %deadline to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %deadline, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %13 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i27 = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i27, label %lockdep_assert_rq_held.exit.i41, label %land.rhs.i.i30

land.rhs.i.i30:                                   ; preds = %rq_clock.exit
  %core_enabled.i.i.i28 = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 81
  %14 = ptrtoint ptr %core_enabled.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %core_enabled.i.i.i28, align 128
  %tobool.not.i.i.i29 = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i.i29, label %__rq_lockp.exit.i.i37, label %if.then.i.i.i32

if.then.i.i.i32:                                  ; preds = %land.rhs.i.i30
  %core.i.i.i31 = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 79
  %16 = ptrtoint ptr %core.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %core.i.i.i31, align 8
  br label %__rq_lockp.exit.i.i37

__rq_lockp.exit.i.i37:                            ; preds = %if.then.i.i.i32, %land.rhs.i.i30
  %retval.0.i.i.i33 = phi ptr [ %17, %if.then.i.i.i32 ], [ %rq, %land.rhs.i.i30 ]
  %dep_map.i.i34 = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i33, i32 0, i32 4
  %call.i.i.i35 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i34, i32 noundef -1) #15
  %cmp.not.i.i36 = icmp eq i32 %call.i.i.i35, 0
  br i1 %cmp.not.i.i36, label %do.end.i.i38, label %lockdep_assert_rq_held.exit.i41, !prof !111

do.end.i.i38:                                     ; preds = %__rq_lockp.exit.i.i37
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i41

lockdep_assert_rq_held.exit.i41:                  ; preds = %do.end.i.i38, %__rq_lockp.exit.i.i37, %rq_clock.exit
  %18 = ptrtoint ptr %clock_update_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %clock_update_flags.i.i, align 4
  %cmp.i.i40 = icmp ult i32 %19, 2
  br i1 %cmp.i.i40, label %land.rhs.i3.i43, label %rq_clock.exit46

land.rhs.i3.i43:                                  ; preds = %lockdep_assert_rq_held.exit.i41
  %.b37.i.i42 = load i1, ptr @assert_clock_updated.__already_done, align 1
  br i1 %.b37.i.i42, label %rq_clock.exit46, label %if.then.i.i44, !prof !114

if.then.i.i44:                                    ; preds = %land.rhs.i3.i43
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #15
  br label %rq_clock.exit46

rq_clock.exit46:                                  ; preds = %if.then.i.i44, %land.rhs.i3.i43, %lockdep_assert_rq_held.exit.i41
  %20 = ptrtoint ptr %clock.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %clock.i, align 32
  %sub.i = sub i64 %12, %21
  %cmp.i = icmp slt i64 %sub.i, 0
  br i1 %cmp.i, label %do.end, label %if.end, !prof !111

do.end:                                           ; preds = %rq_clock.exit46
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 896, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %rq_clock.exit46
  %sub = sub i64 %1, %10
  %dl_density = getelementptr inbounds %struct.sched_dl_entity, ptr %dl_se, i32 0, i32 5
  %22 = ptrtoint ptr %dl_density to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %dl_density, align 8
  %mul = mul i64 %23, %sub
  %shr = lshr i64 %mul, 20
  %runtime = getelementptr inbounds %struct.sched_dl_entity, ptr %dl_se, i32 0, i32 6
  %24 = ptrtoint ptr %runtime to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %shr, ptr %runtime, align 8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @inc_dl_tasks(ptr nocapture noundef readonly %dl_se, ptr noundef %dl_rq) unnamed_addr #6 align 64 {
entry:
  %prio1 = getelementptr i8, ptr %dl_se, i32 -368
  %0 = ptrtoint ptr %prio1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prio1, align 8
  %deadline2 = getelementptr inbounds %struct.sched_dl_entity, ptr %dl_se, i32 0, i32 7
  %2 = ptrtoint ptr %deadline2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %deadline2, align 8
  %tobool.not = icmp sgt i32 %1, -1
  br i1 %tobool.not, label %do.end, label %if.end, !prof !111

do.end:                                           ; preds = %entry
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1447, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %dl_nr_running = getelementptr inbounds %struct.dl_rq, ptr %dl_rq, i32 0, i32 1
  %4 = ptrtoint ptr %dl_nr_running to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dl_nr_running, align 8
  %inc = add i32 %5, 1
  store i32 %inc, ptr %dl_nr_running, align 8
  %nr_running.i = getelementptr i8, ptr %dl_rq, i32 -1788
  %6 = ptrtoint ptr %nr_running.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_running.i, align 4
  %add.i = add i32 %7, 1
  store i32 %add.i, ptr %nr_running.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_update_nr_running_tp, i32 0, i32 1), ptr blockaddress(@inc_dl_tasks, %if.then.i)) #15
          to label %if.end.i [label %if.then.i], !srcloc !117

if.then.i:                                        ; preds = %if.end
  %add.ptr.i31 = getelementptr i8, ptr %dl_rq, i32 -1832
  tail call void @call_trace_sched_update_nr_running(ptr noundef %add.ptr.i31, i32 noundef 1) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end
  %cmp.i = icmp ult i32 %7, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %add_nr_running.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %8 = ptrtoint ptr %nr_running.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_running.i, align 4
  %cmp3.i = icmp ugt i32 %9, 1
  br i1 %cmp3.i, label %do.end.i, label %add_nr_running.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  %rd.i = getelementptr i8, ptr %dl_rq, i32 256
  %10 = ptrtoint ptr %rd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rd.i, align 8
  %overload.i = getelementptr inbounds %struct.root_domain, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %overload.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %overload.i, align 8
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %do.body10.i, label %add_nr_running.exit

do.body10.i:                                      ; preds = %do.end.i
  %14 = ptrtoint ptr %overload.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 1, ptr %overload.i, align 8
  br label %add_nr_running.exit

add_nr_running.exit:                              ; preds = %do.body10.i, %do.end.i, %land.lhs.true.i, %if.end.i
  %earliest_dl.i = getelementptr inbounds %struct.dl_rq, ptr %dl_rq, i32 0, i32 2
  %15 = ptrtoint ptr %earliest_dl.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %earliest_dl.i, align 8
  %cmp.i32 = icmp eq i64 %16, 0
  br i1 %cmp.i32, label %if.then7.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %add_nr_running.exit
  %sub.i.i = sub i64 %3, %16
  %cmp.i.i = icmp slt i64 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end.i34, label %inc_dl_deadline.exit

if.then7.i:                                       ; preds = %add_nr_running.exit
  %rd.i33 = getelementptr i8, ptr %dl_rq, i32 256
  %17 = ptrtoint ptr %rd.i33 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rd.i33, align 8
  %cpupri.i = getelementptr inbounds %struct.root_domain, ptr %18, i32 0, i32 19
  %cpu.i = getelementptr i8, ptr %dl_rq, i32 316
  %19 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu.i, align 4
  tail call void @cpupri_set(ptr noundef %cpupri.i, i32 noundef %20, i32 noundef 100) #15
  br label %if.end.i34

if.end.i34:                                       ; preds = %if.then7.i, %lor.lhs.false.i
  %21 = ptrtoint ptr %earliest_dl.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %3, ptr %earliest_dl.i, align 8
  %rd10.i = getelementptr i8, ptr %dl_rq, i32 256
  %22 = ptrtoint ptr %rd10.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rd10.i, align 8
  %cpudl.i = getelementptr inbounds %struct.root_domain, ptr %23, i32 0, i32 10
  %cpu11.i = getelementptr i8, ptr %dl_rq, i32 316
  %24 = ptrtoint ptr %cpu11.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu11.i, align 4
  tail call void @cpudl_set(ptr noundef %cpudl.i, i32 noundef %25, i64 noundef %3) #15
  br label %inc_dl_deadline.exit

inc_dl_deadline.exit:                             ; preds = %if.end.i34, %lor.lhs.false.i
  %nr_cpus_allowed.i = getelementptr i8, ptr %dl_se, i32 608
  %26 = ptrtoint ptr %nr_cpus_allowed.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr_cpus_allowed.i, align 8
  %cmp.i35 = icmp sgt i32 %27, 1
  br i1 %cmp.i35, label %if.then.i36, label %inc_dl_migration.exit

if.then.i36:                                      ; preds = %inc_dl_deadline.exit
  %dl_nr_migratory.i = getelementptr inbounds %struct.dl_rq, ptr %dl_rq, i32 0, i32 3
  %28 = ptrtoint ptr %dl_nr_migratory.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dl_nr_migratory.i, align 8
  %inc.i = add i32 %29, 1
  store i32 %inc.i, ptr %dl_nr_migratory.i, align 8
  br label %inc_dl_migration.exit

inc_dl_migration.exit:                            ; preds = %if.then.i36, %inc_dl_deadline.exit
  tail call fastcc void @update_dl_migration(ptr noundef %dl_rq) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_trace_sched_update_nr_running(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpupri_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpudl_set(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_dl_migration(ptr nocapture noundef %dl_rq) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %dl_nr_migratory = getelementptr inbounds %struct.dl_rq, ptr %dl_rq, i32 0, i32 3
  %0 = ptrtoint ptr %dl_nr_migratory to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dl_nr_migratory, align 8
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %dl_nr_running = getelementptr inbounds %struct.dl_rq, ptr %dl_rq, i32 0, i32 1
  %2 = ptrtoint ptr %dl_nr_running to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dl_nr_running, align 8
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %overloaded = getelementptr inbounds %struct.dl_rq, ptr %dl_rq, i32 0, i32 4
  %4 = ptrtoint ptr %overloaded to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %overloaded, align 4
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.then2, label %if.end10

if.then2:                                         ; preds = %if.then
  %online.i = getelementptr i8, ptr %dl_rq, i32 320
  %6 = ptrtoint ptr %online.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %online.i, align 8
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %dl_set_overload.exit, label %if.end.i

if.end.i:                                         ; preds = %if.then2
  %cpu.i = getelementptr i8, ptr %dl_rq, i32 316
  %8 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu.i, align 4
  %rd.i = getelementptr i8, ptr %dl_rq, i32 256
  %10 = ptrtoint ptr %rd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rd.i, align 8
  %dlo_mask.i = getelementptr inbounds %struct.root_domain, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %dlo_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dlo_mask.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i = icmp ugt i32 %14, %9
  br i1 %cmp.not.i.i.i.i, label %cpumask_set_cpu.exit.i, label %land.rhs.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %if.end.i
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %cpumask_set_cpu.exit.i, label %if.then.i.i.i.i, !prof !114

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpumask_set_cpu.exit.i

cpumask_set_cpu.exit.i:                           ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i, %if.end.i
  tail call void @_set_bit(i32 noundef %9, ptr noundef %13) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !122
  %15 = ptrtoint ptr %rd.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rd.i, align 8
  %dlo_count.i = getelementptr inbounds %struct.root_domain, ptr %16, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dlo_count.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %dlo_count.i, i32 1, i32 3, i32 1) #15
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dlo_count.i, ptr %dlo_count.i, i32 1, ptr elementtype(i32) %dlo_count.i) #15, !srcloc !123
  br label %dl_set_overload.exit

dl_set_overload.exit:                             ; preds = %cpumask_set_cpu.exit.i, %if.then2
  %18 = ptrtoint ptr %overloaded to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %overloaded, align 4
  br label %if.end10

if.else:                                          ; preds = %land.lhs.true, %entry
  %overloaded4 = getelementptr inbounds %struct.dl_rq, ptr %dl_rq, i32 0, i32 4
  %19 = ptrtoint ptr %overloaded4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %overloaded4, align 4
  %tobool5.not = icmp eq i32 %20, 0
  br i1 %tobool5.not, label %if.end10, label %if.then6

if.then6:                                         ; preds = %if.else
  %online.i19 = getelementptr i8, ptr %dl_rq, i32 320
  %21 = ptrtoint ptr %online.i19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %online.i19, align 8
  %tobool.not.i20 = icmp eq i32 %22, 0
  br i1 %tobool.not.i20, label %dl_clear_overload.exit, label %if.end.i27

if.end.i27:                                       ; preds = %if.then6
  %rd.i21 = getelementptr i8, ptr %dl_rq, i32 256
  %23 = ptrtoint ptr %rd.i21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rd.i21, align 8
  %dlo_count.i22 = getelementptr inbounds %struct.root_domain, ptr %24, i32 0, i32 8
  %call.i.i.i23 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dlo_count.i22, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %dlo_count.i22, i32 1, i32 3, i32 1) #15
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dlo_count.i22, ptr %dlo_count.i22, i32 1, ptr elementtype(i32) %dlo_count.i22) #15, !srcloc !124
  %cpu.i24 = getelementptr i8, ptr %dl_rq, i32 316
  %26 = ptrtoint ptr %cpu.i24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i24, align 4
  %28 = ptrtoint ptr %rd.i21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rd.i21, align 8
  %dlo_mask.i25 = getelementptr inbounds %struct.root_domain, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %dlo_mask.i25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dlo_mask.i25, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %32 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i26 = icmp ugt i32 %32, %27
  br i1 %cmp.not.i.i.i.i26, label %cpumask_clear_cpu.exit.i, label %land.rhs.i.i.i.i29

land.rhs.i.i.i.i29:                               ; preds = %if.end.i27
  %.b37.i.i.i.i28 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i28, label %cpumask_clear_cpu.exit.i, label %if.then.i.i.i.i30, !prof !114

if.then.i.i.i.i30:                                ; preds = %land.rhs.i.i.i.i29
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpumask_clear_cpu.exit.i

cpumask_clear_cpu.exit.i:                         ; preds = %if.then.i.i.i.i30, %land.rhs.i.i.i.i29, %if.end.i27
  tail call void @_clear_bit(i32 noundef %27, ptr noundef %31) #15
  br label %dl_clear_overload.exit

dl_clear_overload.exit:                           ; preds = %cpumask_clear_cpu.exit.i, %if.then6
  %33 = ptrtoint ptr %overloaded4 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %overloaded4, align 4
  br label %if.end10

if.end10:                                         ; preds = %dl_clear_overload.exit, %if.else, %dl_set_overload.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__dequeue_task_dl(ptr noundef %rq, ptr noundef %p, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %dl = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16
  %dl1 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20
  tail call fastcc void @update_stats_dequeue_dl(ptr noundef %dl, ptr noundef %dl1, i32 noundef %flags)
  %stack.i.i.i.i = getelementptr %struct.task_struct, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stack.i.i.i.i, align 4
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %5, ptrtoint (ptr @runqueues to i32)
  %6 = inttoptr i32 %add.i.i.i to ptr
  %dl.i.i.i = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 16
  %7 = ptrtoint ptr %dl1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dl1, align 8
  %9 = ptrtoint ptr %dl1 to i32
  %cmp.i.i = icmp eq i32 %8, %9
  br i1 %cmp.i.i, label %dequeue_dl_entity.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %entry
  %rb_leftmost.i.i.i = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 16, i32 0, i32 1
  %10 = ptrtoint ptr %rb_leftmost.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rb_leftmost.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %11, %dl1
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %rb_erase_cached.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  %call.i.i.i = tail call ptr @rb_next(ptr noundef %dl1) #15
  %12 = ptrtoint ptr %rb_leftmost.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i.i, ptr %rb_leftmost.i.i.i, align 4
  br label %rb_erase_cached.exit.i.i

rb_erase_cached.exit.i.i:                         ; preds = %if.then.i.i.i, %if.end.i.i
  tail call void @rb_erase(ptr noundef %dl1, ptr noundef %dl.i.i.i) #15
  %13 = ptrtoint ptr %dl1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %9, ptr %dl1, align 8
  tail call fastcc void @dec_dl_tasks(ptr noundef %dl1, ptr noundef %dl.i.i.i) #15
  br label %dequeue_dl_entity.exit

dequeue_dl_entity.exit:                           ; preds = %rb_erase_cached.exit.i.i, %entry
  %pushable_dl_tasks.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 52
  %14 = ptrtoint ptr %pushable_dl_tasks.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pushable_dl_tasks.i, align 4
  %16 = ptrtoint ptr %pushable_dl_tasks.i to i32
  %cmp.i = icmp eq i32 %15, %16
  br i1 %cmp.i, label %dequeue_pushable_dl_task.exit, label %if.end.i

if.end.i:                                         ; preds = %dequeue_dl_entity.exit
  %pushable_dl_tasks_root.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 5
  %rb_leftmost.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 5, i32 1
  %17 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rb_leftmost.i.i, align 4
  %cmp.i.i6 = icmp eq ptr %18, %pushable_dl_tasks.i
  br i1 %cmp.i.i6, label %rb_erase_cached.exit.i, label %rb_erase_cached.exit.thread.i

rb_erase_cached.exit.thread.i:                    ; preds = %if.end.i
  tail call void @rb_erase(ptr noundef %pushable_dl_tasks.i, ptr noundef %pushable_dl_tasks_root.i) #15
  br label %if.end5.i

rb_erase_cached.exit.i:                           ; preds = %if.end.i
  %call.i.i = tail call ptr @rb_next(ptr noundef %pushable_dl_tasks.i) #15
  %19 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i.i, ptr %rb_leftmost.i.i, align 4
  tail call void @rb_erase(ptr noundef %pushable_dl_tasks.i, ptr noundef %pushable_dl_tasks_root.i) #15
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end5.i, label %if.then3.i

if.then3.i:                                       ; preds = %rb_erase_cached.exit.i
  %deadline.i = getelementptr i8, ptr %call.i.i, i32 -676
  %20 = ptrtoint ptr %deadline.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %deadline.i, align 8
  %next.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 2, i32 1
  %22 = ptrtoint ptr %next.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %next.i, align 8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %rb_erase_cached.exit.i, %rb_erase_cached.exit.thread.i
  %23 = ptrtoint ptr %pushable_dl_tasks.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %16, ptr %pushable_dl_tasks.i, align 4
  br label %dequeue_pushable_dl_task.exit

dequeue_pushable_dl_task.exit:                    ; preds = %if.end5.i, %dequeue_dl_entity.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @task_non_contending(ptr noundef %p) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %remainder.i = alloca i32, align 4
  %dl = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20
  %inactive_timer = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 11
  %stack.i.i = getelementptr %struct.task_struct, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stack.i.i, align 4
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %cpu.i.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %5, ptrtoint (ptr @runqueues to i32)
  %6 = inttoptr i32 %add.i to ptr
  %dl_runtime = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 1
  %7 = ptrtoint ptr %dl_runtime to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %dl_runtime, align 8
  %cmp = icmp eq i64 %8, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 8
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %10, 268435456
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %dl_non_contending = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 9
  %11 = ptrtoint ptr %dl_non_contending to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %dl_non_contending, align 4
  %12 = and i8 %bf.load, 32
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.end19, label %do.end, !prof !114

do.end:                                           ; preds = %if.end4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 332, i32 noundef 9, ptr noundef null) #15
  br label %if.end19

if.end19:                                         ; preds = %do.end, %if.end4
  %deadline = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 7
  %13 = ptrtoint ptr %deadline to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %deadline, align 8
  %runtime = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 6
  %15 = ptrtoint ptr %runtime to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %runtime, align 8
  %dl_period = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 3
  %17 = ptrtoint ptr %dl_period to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %dl_period, align 8
  %mul = mul i64 %18, %16
  %19 = ptrtoint ptr %dl_runtime to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %dl_runtime, align 8
  %conv = trunc i64 %20 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i) #15
  %21 = ptrtoint ptr %remainder.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %remainder.i, align 4, !annotation !110
  %call.i = call i64 @div_s64_rem(i64 noundef %mul, i32 noundef %conv, ptr noundef nonnull %remainder.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %22 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i, label %lockdep_assert_rq_held.exit.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %if.end19
  %core_enabled.i.i.i = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 81
  %23 = ptrtoint ptr %core_enabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %core_enabled.i.i.i, align 128
  %tobool.not.i.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i.i, label %__rq_lockp.exit.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  %core.i.i.i = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 79
  %25 = ptrtoint ptr %core.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %core.i.i.i, align 8
  br label %__rq_lockp.exit.i.i

__rq_lockp.exit.i.i:                              ; preds = %if.then.i.i.i, %land.rhs.i.i
  %retval.0.i.i.i = phi ptr [ %26, %if.then.i.i.i ], [ %6, %land.rhs.i.i ]
  %dep_map.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i, i32 0, i32 4
  %call.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #15
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %lockdep_assert_rq_held.exit.i, !prof !111

do.end.i.i:                                       ; preds = %__rq_lockp.exit.i.i
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i

lockdep_assert_rq_held.exit.i:                    ; preds = %do.end.i.i, %__rq_lockp.exit.i.i, %if.end19
  %clock_update_flags.i.i = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 25
  %27 = ptrtoint ptr %clock_update_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %clock_update_flags.i.i, align 4
  %cmp.i.i = icmp ult i32 %28, 2
  br i1 %cmp.i.i, label %land.rhs.i3.i, label %rq_clock.exit

land.rhs.i3.i:                                    ; preds = %lockdep_assert_rq_held.exit.i
  %.b37.i.i = load i1, ptr @assert_clock_updated.__already_done, align 1
  br i1 %.b37.i.i, label %rq_clock.exit, label %if.then.i.i, !prof !114

if.then.i.i:                                      ; preds = %land.rhs.i3.i
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #15
  br label %rq_clock.exit

rq_clock.exit:                                    ; preds = %if.then.i.i, %land.rhs.i3.i, %lockdep_assert_rq_held.exit.i
  %clock.i = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 26
  %29 = ptrtoint ptr %clock.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %clock.i, align 32
  %31 = add i64 %call.i, %30
  %sub29 = sub i64 %14, %31
  %cmp30 = icmp slt i64 %sub29, 0
  br i1 %cmp30, label %if.then35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %rq_clock.exit
  %call33 = call zeroext i1 @hrtimer_active(ptr noundef %inactive_timer) #15
  br i1 %call33, label %if.then35, label %if.end68

if.then35:                                        ; preds = %lor.lhs.false, %rq_clock.exit
  %prio.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 13
  %32 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %prio.i, align 8
  %tobool37.not = icmp sgt i32 %33, -1
  br i1 %tobool37.not, label %if.then49, label %if.then38

if.then38:                                        ; preds = %if.then35
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i, align 8
  %and.i.i = and i32 %35, 268435456
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then.i, label %if.end39

if.then.i:                                        ; preds = %if.then38
  %dl_bw.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 4
  %36 = ptrtoint ptr %dl_bw.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %dl_bw.i, align 8
  %running_bw.i.i = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 16, i32 6
  %38 = ptrtoint ptr %running_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %running_bw.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %40 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i.i106 = icmp eq i32 %40, 0
  br i1 %tobool.not.i.i.i106, label %lockdep_assert_rq_held.exit.i.i, label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.then.i
  %core_enabled.i.i.i.i = getelementptr %struct.rq, ptr %6, i32 0, i32 81
  %41 = ptrtoint ptr %core_enabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %core_enabled.i.i.i.i, align 128
  %tobool.not.i.i.i.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i.i.i.i, label %__rq_lockp.exit.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i
  %core.i.i.i.i = getelementptr %struct.rq, ptr %6, i32 0, i32 79
  %43 = ptrtoint ptr %core.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %core.i.i.i.i, align 8
  br label %__rq_lockp.exit.i.i.i

__rq_lockp.exit.i.i.i:                            ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %44, %if.then.i.i.i.i ], [ %6, %land.rhs.i.i.i ]
  %dep_map.i.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i.i, i32 0, i32 4
  %call.i.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #15
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %do.end.i.i.i, label %lockdep_assert_rq_held.exit.i.i, !prof !111

do.end.i.i.i:                                     ; preds = %__rq_lockp.exit.i.i.i
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i.i

lockdep_assert_rq_held.exit.i.i:                  ; preds = %do.end.i.i.i, %__rq_lockp.exit.i.i.i, %if.then.i
  %45 = ptrtoint ptr %running_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %running_bw.i.i, align 8
  %sub.i.i = sub i64 %46, %37
  store i64 %sub.i.i, ptr %running_bw.i.i, align 8
  %cmp.i.i107 = icmp ugt i64 %sub.i.i, %39
  br i1 %cmp.i.i107, label %land.rhs.i.i108, label %if.end29.i.i

land.rhs.i.i108:                                  ; preds = %lockdep_assert_rq_held.exit.i.i
  %.b52.i.i = load i1, ptr @__sub_running_bw.__already_done, align 1
  br i1 %.b52.i.i, label %if.end29.i.i, label %if.then.i.i109, !prof !114

if.then.i.i109:                                   ; preds = %land.rhs.i.i108
  store i1 true, ptr @__sub_running_bw.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 175, i32 noundef 9, ptr noundef nonnull @.str.7) #15
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then.i.i109, %land.rhs.i.i108, %lockdep_assert_rq_held.exit.i.i
  %47 = ptrtoint ptr %running_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %running_bw.i.i, align 8
  %cmp38.i.i = icmp ugt i64 %48, %39
  br i1 %cmp38.i.i, label %if.then39.i.i, label %__sub_running_bw.exit.i

if.then39.i.i:                                    ; preds = %if.end29.i.i
  %49 = ptrtoint ptr %running_bw.i.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 0, ptr %running_bw.i.i, align 8
  br label %__sub_running_bw.exit.i

__sub_running_bw.exit.i:                          ; preds = %if.then39.i.i, %if.end29.i.i
  call fastcc void @cpufreq_update_util(ptr noundef %6) #15
  br label %if.end39

if.end39:                                         ; preds = %__sub_running_bw.exit.i, %if.then38
  %50 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pr = load i32, ptr %prio.i, align 8
  %tobool41.not = icmp sgt i32 %.pr, -1
  br i1 %tobool41.not, label %if.then49, label %do.end45

do.end45:                                         ; preds = %if.end39
  %51 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %p, align 128
  %cmp47 = icmp eq i32 %52, 128
  br i1 %cmp47, label %if.then49, label %cleanup

if.then49:                                        ; preds = %do.end45, %if.end39, %if.then35
  %53 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %stack.i.i, align 4
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %cpu.i, align 4
  %call.i112 = call i32 @rcu_read_lock_sched_held() #15
  %tobool.not.i = icmp eq i32 %call.i112, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %dl_bw_of.exit

land.lhs.true.i:                                  ; preds = %if.then49
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #15
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %dl_bw_of.exit, label %land.lhs.true3.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b8.i = load i1, ptr @dl_bw_of.__warned, align 1
  br i1 %.b8.i, label %dl_bw_of.exit, label %if.then.i113

if.then.i113:                                     ; preds = %land.lhs.true3.i
  store i1 true, ptr @dl_bw_of.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 72, ptr noundef nonnull @.str.15) #15
  br label %dl_bw_of.exit

dl_bw_of.exit:                                    ; preds = %if.then.i113, %land.lhs.true3.i, %land.lhs.true.i, %if.then49
  %arrayidx.i114 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %56
  %57 = ptrtoint ptr %arrayidx.i114 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i114, align 4
  %add.i115 = add i32 %58, ptrtoint (ptr @runqueues to i32)
  %59 = inttoptr i32 %add.i115 to ptr
  %rd.i = getelementptr inbounds %struct.rq, ptr %59, i32 0, i32 35
  %60 = ptrtoint ptr %rd.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rd.i, align 8
  %dl_bw.i116 = getelementptr inbounds %struct.root_domain, ptr %61, i32 0, i32 9
  %62 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %p, align 128
  %cmp57 = icmp eq i32 %63, 128
  br i1 %cmp57, label %if.then59, label %if.end62

if.then59:                                        ; preds = %dl_bw_of.exit
  %64 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags.i, align 8
  %and.i.i118 = and i32 %65, 268435456
  %tobool.i.not.i119 = icmp eq i32 %and.i.i118, 0
  br i1 %tobool.i.not.i119, label %if.then.i122, label %if.end62

if.then.i122:                                     ; preds = %if.then59
  %dl_bw.i120 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 4
  %66 = ptrtoint ptr %dl_bw.i120 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %dl_bw.i120, align 8
  %this_bw.i.i = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 16, i32 7
  %68 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %this_bw.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %70 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i.i121 = icmp eq i32 %70, 0
  br i1 %tobool.not.i.i.i121, label %lockdep_assert_rq_held.exit.i.i137, label %land.rhs.i.i.i126

land.rhs.i.i.i126:                                ; preds = %if.then.i122
  %core_enabled.i.i.i.i124 = getelementptr %struct.rq, ptr %6, i32 0, i32 81
  %71 = ptrtoint ptr %core_enabled.i.i.i.i124 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %core_enabled.i.i.i.i124, align 128
  %tobool.not.i.i.i.i125 = icmp eq i32 %72, 0
  br i1 %tobool.not.i.i.i.i125, label %__rq_lockp.exit.i.i.i133, label %if.then.i.i.i.i128

if.then.i.i.i.i128:                               ; preds = %land.rhs.i.i.i126
  %core.i.i.i.i127 = getelementptr %struct.rq, ptr %6, i32 0, i32 79
  %73 = ptrtoint ptr %core.i.i.i.i127 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %core.i.i.i.i127, align 8
  br label %__rq_lockp.exit.i.i.i133

__rq_lockp.exit.i.i.i133:                         ; preds = %if.then.i.i.i.i128, %land.rhs.i.i.i126
  %retval.0.i.i.i.i129 = phi ptr [ %74, %if.then.i.i.i.i128 ], [ %6, %land.rhs.i.i.i126 ]
  %dep_map.i.i.i130 = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i.i129, i32 0, i32 4
  %call.i.i.i.i131 = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i130, i32 noundef -1) #15
  %cmp.not.i.i.i132 = icmp eq i32 %call.i.i.i.i131, 0
  br i1 %cmp.not.i.i.i132, label %do.end.i.i.i134, label %lockdep_assert_rq_held.exit.i.i137, !prof !111

do.end.i.i.i134:                                  ; preds = %__rq_lockp.exit.i.i.i133
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i.i137

lockdep_assert_rq_held.exit.i.i137:               ; preds = %do.end.i.i.i134, %__rq_lockp.exit.i.i.i133, %if.then.i122
  %75 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %this_bw.i.i, align 8
  %sub.i.i135 = sub i64 %76, %67
  store i64 %sub.i.i135, ptr %this_bw.i.i, align 8
  %cmp.i.i136 = icmp ugt i64 %sub.i.i135, %69
  br i1 %cmp.i.i136, label %land.rhs.i.i138, label %if.end29.i.i141

land.rhs.i.i138:                                  ; preds = %lockdep_assert_rq_held.exit.i.i137
  %.b111.i.i = load i1, ptr @__sub_rq_bw.__already_done, align 1
  br i1 %.b111.i.i, label %if.end29.i.i141, label %if.then.i.i139, !prof !114

if.then.i.i139:                                   ; preds = %land.rhs.i.i138
  store i1 true, ptr @__sub_rq_bw.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 199, i32 noundef 9, ptr noundef nonnull @.str.9) #15
  br label %if.end29.i.i141

if.end29.i.i141:                                  ; preds = %if.then.i.i139, %land.rhs.i.i138, %lockdep_assert_rq_held.exit.i.i137
  %77 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %this_bw.i.i, align 8
  %cmp38.i.i140 = icmp ugt i64 %78, %69
  br i1 %cmp38.i.i140, label %if.then39.i.i142, label %if.end41.i.i

if.then39.i.i142:                                 ; preds = %if.end29.i.i141
  %79 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 0, ptr %this_bw.i.i, align 8
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %if.then39.i.i142, %if.end29.i.i141
  %running_bw.i.i143 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 16, i32 6
  %80 = ptrtoint ptr %running_bw.i.i143 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %running_bw.i.i143, align 8
  %82 = ptrtoint ptr %this_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %this_bw.i.i, align 8
  %cmp44.i.i = icmp ugt i64 %81, %83
  br i1 %cmp44.i.i, label %land.rhs51.i.i, label %if.end62

land.rhs51.i.i:                                   ; preds = %if.end41.i.i
  %.b109110.i.i = load i1, ptr @__sub_rq_bw.__already_done.10, align 1
  br i1 %.b109110.i.i, label %if.end62, label %if.then62.i.i, !prof !114

if.then62.i.i:                                    ; preds = %land.rhs51.i.i
  store i1 true, ptr @__sub_rq_bw.__already_done.10, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 202, i32 noundef 9, ptr noundef nonnull @.str.11) #15
  br label %if.end62

if.end62:                                         ; preds = %if.then62.i.i, %land.rhs51.i.i, %if.end41.i.i, %if.then59, %dl_bw_of.exit
  call void @_raw_spin_lock(ptr noundef %dl_bw.i116) #15
  %dl_bw = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 4
  %84 = ptrtoint ptr %dl_bw to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %dl_bw, align 8
  %86 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %stack.i.i, align 4
  %cpu.i145 = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %cpu.i145 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %cpu.i145, align 4
  %arrayidx.i146 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %89
  %90 = ptrtoint ptr %arrayidx.i146 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx.i146, align 4
  %add.i147 = add i32 %91, ptrtoint (ptr @runqueues to i32)
  %92 = inttoptr i32 %add.i147 to ptr
  %rd2.i = getelementptr inbounds %struct.rq, ptr %92, i32 0, i32 35
  %93 = ptrtoint ptr %rd2.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rd2.i, align 8
  %call.i148 = call i32 @rcu_read_lock_sched_held() #15
  %tobool.not.i149 = icmp eq i32 %call.i148, 0
  br i1 %tobool.not.i149, label %land.lhs.true.i150, label %do.end9.i

land.lhs.true.i150:                               ; preds = %if.end62
  %call4.i = call i32 @debug_lockdep_rcu_enabled() #15
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %do.end9.i, label %land.lhs.true6.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i150
  %.b24.i = load i1, ptr @dl_bw_cpus.__warned, align 1
  br i1 %.b24.i, label %do.end9.i, label %if.then.i151

if.then.i151:                                     ; preds = %land.lhs.true6.i
  store i1 true, ptr @dl_bw_cpus.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 82, ptr noundef nonnull @.str.15) #15
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then.i151, %land.lhs.true6.i, %land.lhs.true.i150, %if.end62
  %span.i = getelementptr inbounds %struct.root_domain, ptr %94, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %95 = load i32, ptr @nr_cpu_ids, align 4
  %96 = ptrtoint ptr %span.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %span.i, align 8
  %call.i.i.i154 = call i32 @__bitmap_subset(ptr noundef %97, ptr noundef nonnull @__cpu_active_mask, i32 noundef %95) #15
  %tobool11.not.i = icmp eq i32 %call.i.i.i154, 0
  %98 = ptrtoint ptr %span.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %span.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %100 = load i32, ptr @nr_cpu_ids, align 4
  br i1 %tobool11.not.i, label %for.cond.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end9.i
  %call4.i.i.i = call i32 @__bitmap_weight(ptr noundef %99, i32 noundef %100) #15
  br label %dl_bw_cpus.exit

for.cond.i:                                       ; preds = %for.cond.i, %do.end9.i
  %i.addr.0.i = phi i32 [ %call17.i, %for.cond.i ], [ -1, %do.end9.i ]
  %cpus.0.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %do.end9.i ]
  %call17.i = call i32 @cpumask_next_and(i32 noundef %i.addr.0.i, ptr noundef %99, ptr noundef nonnull @__cpu_active_mask) #17
  %cmp.i = icmp ult i32 %call17.i, %100
  %inc.i = add i32 %cpus.0.i, 1
  br i1 %cmp.i, label %for.cond.i, label %dl_bw_cpus.exit

dl_bw_cpus.exit:                                  ; preds = %for.cond.i, %if.end.i.i.i
  %retval.0.i = phi i32 [ %call4.i.i.i, %if.end.i.i.i ], [ %cpus.0.i, %for.cond.i ]
  %total_bw.i = getelementptr inbounds %struct.root_domain, ptr %61, i32 0, i32 9, i32 2
  %101 = ptrtoint ptr %total_bw.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %total_bw.i, align 8
  %sub.i = sub i64 %102, %85
  store i64 %sub.i, ptr %total_bw.i, align 8
  %conv.i = trunc i64 %85 to i32
  %div.i = sdiv i32 %conv.i, %retval.0.i
  %conv1.i = sext i32 %div.i to i64
  %call.i.i = call i32 @rcu_read_lock_sched_held() #15
  %tobool.not.i.i156 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i156, label %land.lhs.true.i.i, label %do.end.i.i158

land.lhs.true.i.i:                                ; preds = %dl_bw_cpus.exit
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #15
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %do.end.i.i158, label %land.lhs.true3.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b14.i.i = load i1, ptr @__dl_update.__warned, align 1
  br i1 %.b14.i.i, label %do.end.i.i158, label %if.then.i.i157

if.then.i.i157:                                   ; preds = %land.lhs.true3.i.i
  store i1 true, ptr @__dl_update.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2758, ptr noundef nonnull @.str.15) #15
  br label %do.end.i.i158

do.end.i.i158:                                    ; preds = %if.then.i.i157, %land.lhs.true3.i.i, %land.lhs.true.i.i, %dl_bw_cpus.exit
  %span.i.i = getelementptr %struct.root_domain, ptr %61, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %103 = load i32, ptr @nr_cpu_ids, align 4
  %104 = ptrtoint ptr %span.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %span.i.i, align 8
  %call515.i.i = call i32 @cpumask_next_and(i32 noundef -1, ptr noundef %105, ptr noundef nonnull @__cpu_active_mask) #17
  %cmp16.i.i = icmp ult i32 %call515.i.i, %103
  br i1 %cmp16.i.i, label %for.body.i.i, label %__dl_sub.exit

for.body.i.i:                                     ; preds = %for.body.i.i, %do.end.i.i158
  %call517.i.i = phi i32 [ %call5.i.i, %for.body.i.i ], [ %call515.i.i, %do.end.i.i158 ]
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call517.i.i
  %106 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %107, ptrtoint (ptr @runqueues to i32)
  %108 = inttoptr i32 %add.i.i to ptr
  %extra_bw.i.i = getelementptr inbounds %struct.rq, ptr %108, i32 0, i32 16, i32 8
  %109 = ptrtoint ptr %extra_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %extra_bw.i.i, align 8
  %add11.i.i = add i64 %110, %conv1.i
  store i64 %add11.i.i, ptr %extra_bw.i.i, align 8
  %111 = ptrtoint ptr %span.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %span.i.i, align 8
  %call5.i.i = call i32 @cpumask_next_and(i32 noundef %call517.i.i, ptr noundef %112, ptr noundef nonnull @__cpu_active_mask) #17
  %cmp.i.i159 = icmp ult i32 %call5.i.i, %103
  br i1 %cmp.i.i159, label %for.body.i.i, label %__dl_sub.exit

__dl_sub.exit:                                    ; preds = %for.body.i.i, %do.end.i.i158
  %113 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %flags.i, align 8
  %114 = call ptr @memset(ptr %dl_runtime, i32 0, i32 40)
  %115 = ptrtoint ptr %dl_non_contending to i32
  call void @__asan_load1_noabort(i32 %115)
  %bf.load.i = load i8, ptr %dl_non_contending, align 4
  %bf.clear8.i = and i8 %bf.load.i, 15
  store i8 %bf.clear8.i, ptr %dl_non_contending, align 4
  %pi_se.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 12
  %116 = ptrtoint ptr %pi_se.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %dl, ptr %pi_se.i, align 8
  call void @_raw_spin_unlock(ptr noundef %dl_bw.i116) #15
  br label %cleanup

if.end68:                                         ; preds = %lor.lhs.false
  %117 = ptrtoint ptr %dl_non_contending to i32
  call void @__asan_load1_noabort(i32 %117)
  %bf.load70 = load i8, ptr %dl_non_contending, align 4
  %bf.set = or i8 %bf.load70, 32
  store i8 %bf.set, ptr %dl_non_contending, align 4
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %118 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !135
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %118, 0
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end15.sink.split.i.i.i.i, label %if.else.i.i.i.i, !prof !111

if.else.i.i.i.i:                                  ; preds = %if.end68
  %add.i.i.i.i162 = add i32 %asmresult.i.i.i.i.i.i, 1
  %119 = or i32 %add.i.i.i.i162, %asmresult.i.i.i.i.i.i
  %.not.i.i.i.i = icmp sgt i32 %119, -1
  br i1 %.not.i.i.i.i, label %get_task_struct.exit, label %if.end15.sink.split.i.i.i.i, !prof !114

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i, %if.end68
  %.sink.i.i.i.i = phi i32 [ 2, %if.end68 ], [ 1, %if.else.i.i.i.i ]
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #15
  br label %get_task_struct.exit

get_task_struct.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i
  call void @hrtimer_start_range_ns(ptr noundef %inactive_timer, i64 noundef %sub29, i64 noundef 0, i32 noundef 9) #15
  br label %cleanup

cleanup:                                          ; preds = %get_task_struct.exit, %__dl_sub.exit, %do.end45, %if.end, %entry
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_stats_dequeue_dl(ptr noundef %dl_rq, ptr noundef %dl_se, i32 noundef %flags) unnamed_addr #6 align 64 {
entry:
  %add.ptr.i = getelementptr i8, ptr %dl_se, i32 -424
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_schedstats, ptr blockaddress(@update_stats_dequeue_dl, %l_yes.i)) #15
          to label %arch_static_branch.exit [label %l_yes.i], !srcloc !117

l_yes.i:                                          ; preds = %entry
  br label %arch_static_branch.exit

arch_static_branch.exit:                          ; preds = %l_yes.i, %entry
  %retval.0.i = phi i1 [ false, %l_yes.i ], [ true, %entry ]
  %and = and i32 %flags, 1
  %tobool4.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool4.not, %retval.0.i
  br i1 %or.cond, label %cleanup, label %if.then5

if.then5:                                         ; preds = %arch_static_branch.exit
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %add.ptr.i, align 128
  %and7 = and i32 %1, 1
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end15, label %do.body10

do.body10:                                        ; preds = %if.then5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %lockdep_assert_rq_held.exit.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %do.body10
  %add.ptr.i31 = getelementptr i8, ptr %dl_rq, i32 -1832
  %core_enabled.i.i.i = getelementptr i8, ptr %dl_rq, i32 1112
  %3 = ptrtoint ptr %core_enabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %core_enabled.i.i.i, align 128
  %tobool.not.i.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i.i, label %__rq_lockp.exit.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  %core.i.i.i = getelementptr i8, ptr %dl_rq, i32 1104
  %5 = ptrtoint ptr %core.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %core.i.i.i, align 8
  br label %__rq_lockp.exit.i.i

__rq_lockp.exit.i.i:                              ; preds = %if.then.i.i.i, %land.rhs.i.i
  %retval.0.i.i.i = phi ptr [ %6, %if.then.i.i.i ], [ %add.ptr.i31, %land.rhs.i.i ]
  %dep_map.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i, i32 0, i32 4
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #15
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %lockdep_assert_rq_held.exit.i, !prof !111

do.end.i.i:                                       ; preds = %__rq_lockp.exit.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i

lockdep_assert_rq_held.exit.i:                    ; preds = %do.end.i.i, %__rq_lockp.exit.i.i, %do.body10
  %clock_update_flags.i.i = getelementptr i8, ptr %dl_rq, i32 116
  %7 = ptrtoint ptr %clock_update_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %clock_update_flags.i.i, align 4
  %cmp.i.i = icmp ult i32 %8, 2
  br i1 %cmp.i.i, label %land.rhs.i3.i, label %rq_clock.exit

land.rhs.i3.i:                                    ; preds = %lockdep_assert_rq_held.exit.i
  %.b37.i.i = load i1, ptr @assert_clock_updated.__already_done, align 1
  br i1 %.b37.i.i, label %rq_clock.exit, label %if.then.i.i, !prof !114

if.then.i.i:                                      ; preds = %land.rhs.i3.i
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #15
  br label %rq_clock.exit

rq_clock.exit:                                    ; preds = %if.then.i.i, %land.rhs.i3.i, %lockdep_assert_rq_held.exit.i
  %clock.i = getelementptr i8, ptr %dl_rq, i32 120
  %9 = ptrtoint ptr %clock.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %clock.i, align 32
  %sleep_start = getelementptr i8, ptr %dl_se, i32 392
  %11 = ptrtoint ptr %sleep_start to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %sleep_start, align 16
  br label %if.end15

if.end15:                                         ; preds = %rq_clock.exit, %if.then5
  %and16 = and i32 %1, 2
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %cleanup, label %do.body19

do.body19:                                        ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %12 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i33 = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i33, label %lockdep_assert_rq_held.exit.i47, label %land.rhs.i.i36

land.rhs.i.i36:                                   ; preds = %do.body19
  %add.ptr.i32 = getelementptr i8, ptr %dl_rq, i32 -1832
  %core_enabled.i.i.i34 = getelementptr i8, ptr %dl_rq, i32 1112
  %13 = ptrtoint ptr %core_enabled.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %core_enabled.i.i.i34, align 128
  %tobool.not.i.i.i35 = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i.i35, label %__rq_lockp.exit.i.i43, label %if.then.i.i.i38

if.then.i.i.i38:                                  ; preds = %land.rhs.i.i36
  %core.i.i.i37 = getelementptr i8, ptr %dl_rq, i32 1104
  %15 = ptrtoint ptr %core.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %core.i.i.i37, align 8
  br label %__rq_lockp.exit.i.i43

__rq_lockp.exit.i.i43:                            ; preds = %if.then.i.i.i38, %land.rhs.i.i36
  %retval.0.i.i.i39 = phi ptr [ %16, %if.then.i.i.i38 ], [ %add.ptr.i32, %land.rhs.i.i36 ]
  %dep_map.i.i40 = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i39, i32 0, i32 4
  %call.i.i.i41 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i40, i32 noundef -1) #15
  %cmp.not.i.i42 = icmp eq i32 %call.i.i.i41, 0
  br i1 %cmp.not.i.i42, label %do.end.i.i44, label %lockdep_assert_rq_held.exit.i47, !prof !111

do.end.i.i44:                                     ; preds = %__rq_lockp.exit.i.i43
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
  br label %lockdep_assert_rq_held.exit.i47

lockdep_assert_rq_held.exit.i47:                  ; preds = %do.end.i.i44, %__rq_lockp.exit.i.i43, %do.body19
  %clock_update_flags.i.i45 = getelementptr i8, ptr %dl_rq, i32 116
  %17 = ptrtoint ptr %clock_update_flags.i.i45 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %clock_update_flags.i.i45, align 4
  %cmp.i.i46 = icmp ult i32 %18, 2
  br i1 %cmp.i.i46, label %land.rhs.i3.i49, label %rq_clock.exit52

land.rhs.i3.i49:                                  ; preds = %lockdep_assert_rq_held.exit.i47
  %.b37.i.i48 = load i1, ptr @assert_clock_updated.__already_done, align 1
  br i1 %.b37.i.i48, label %rq_clock.exit52, label %if.then.i.i50, !prof !114

if.then.i.i50:                                    ; preds = %land.rhs.i3.i49
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #15
  br label %rq_clock.exit52

rq_clock.exit52:                                  ; preds = %if.then.i.i50, %land.rhs.i3.i49, %lockdep_assert_rq_held.exit.i47
  %clock.i51 = getelementptr i8, ptr %dl_rq, i32 120
  %19 = ptrtoint ptr %clock.i51 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %clock.i51, align 32
  %block_start = getelementptr i8, ptr %dl_se, i32 416
  %21 = ptrtoint ptr %block_start to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %block_start, align 8
  br label %cleanup

cleanup:                                          ; preds = %rq_clock.exit52, %if.end15, %arch_static_branch.exit
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dec_dl_tasks(ptr nocapture noundef readonly %dl_se, ptr noundef %dl_rq) unnamed_addr #6 align 64 {
entry:
  %prio1 = getelementptr i8, ptr %dl_se, i32 -368
  %0 = ptrtoint ptr %prio1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prio1, align 8
  %tobool.not = icmp sgt i32 %1, -1
  br i1 %tobool.not, label %do.end, label %if.end, !prof !111

do.end:                                           ; preds = %entry
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1460, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %dl_nr_running = getelementptr inbounds %struct.dl_rq, ptr %dl_rq, i32 0, i32 1
  %2 = ptrtoint ptr %dl_nr_running to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dl_nr_running, align 8
  %tobool24.not = icmp eq i32 %3, 0
  br i1 %tobool24.not, label %do.end42, label %if.end48, !prof !111

do.end42:                                         ; preds = %if.end
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1461, i32 noundef 9, ptr noundef null) #15
  br label %if.end48

if.end48:                                         ; preds = %do.end42, %if.end
  %4 = ptrtoint ptr %dl_nr_running to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dl_nr_running, align 8
  %dec = add i32 %5, -1
  store i32 %dec, ptr %dl_nr_running, align 8
  %nr_running.i = getelementptr i8, ptr %dl_rq, i32 -1788
  %6 = ptrtoint ptr %nr_running.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_running.i, align 4
  %sub.i = add i32 %7, -1
  store i32 %sub.i, ptr %nr_running.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_update_nr_running_tp, i32 0, i32 1), ptr blockaddress(@dec_dl_tasks, %if.then.i)) #15
          to label %sub_nr_running.exit [label %if.then.i], !srcloc !117

if.then.i:                                        ; preds = %if.end48
  %add.ptr.i66 = getelementptr i8, ptr %dl_rq, i32 -1832
  tail call void @call_trace_sched_update_nr_running(ptr noundef %add.ptr.i66, i32 noundef -1) #15
  br label %sub_nr_running.exit

sub_nr_running.exit:                              ; preds = %if.then.i, %if.end48
  %8 = ptrtoint ptr %dl_nr_running to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dl_nr_running, align 8
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.then.i67, label %if.else.i

if.then.i67:                                      ; preds = %sub_nr_running.exit
  %earliest_dl.i = getelementptr inbounds %struct.dl_rq, ptr %dl_rq, i32 0, i32 2
  %rd.i = getelementptr i8, ptr %dl_rq, i32 256
  %10 = call ptr @memset(ptr %earliest_dl.i, i32 0, i32 16)
  %11 = ptrtoint ptr %rd.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rd.i, align 8
  %cpudl.i = getelementptr inbounds %struct.root_domain, ptr %12, i32 0, i32 10
  %cpu.i = getelementptr i8, ptr %dl_rq, i32 316
  %13 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i, align 4
  tail call void @cpudl_clear(ptr noundef %cpudl.i, i32 noundef %14) #15
  %15 = ptrtoint ptr %rd.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rd.i, align 8
  %cpupri.i = getelementptr inbounds %struct.root_domain, ptr %16, i32 0, i32 19
  %17 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu.i, align 4
  %highest_prio.i = getelementptr i8, ptr %dl_rq, i32 -112
  %19 = ptrtoint ptr %highest_prio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %highest_prio.i, align 8
  tail call void @cpupri_set(ptr noundef %cpupri.i, i32 noundef %18, i32 noundef %20) #15
  br label %dec_dl_deadline.exit

if.else.i:                                        ; preds = %sub_nr_running.exit
  %rb_leftmost.i = getelementptr inbounds %struct.rb_root_cached, ptr %dl_rq, i32 0, i32 1
  %21 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rb_leftmost.i, align 4
  %deadline6.i = getelementptr inbounds %struct.sched_dl_entity, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %deadline6.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %deadline6.i, align 8
  %earliest_dl7.i = getelementptr inbounds %struct.dl_rq, ptr %dl_rq, i32 0, i32 2
  %25 = ptrtoint ptr %earliest_dl7.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %earliest_dl7.i, align 8
  %rd9.i = getelementptr i8, ptr %dl_rq, i32 256
  %26 = ptrtoint ptr %rd9.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rd9.i, align 8
  %cpudl10.i = getelementptr inbounds %struct.root_domain, ptr %27, i32 0, i32 10
  %cpu11.i = getelementptr i8, ptr %dl_rq, i32 316
  %28 = ptrtoint ptr %cpu11.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu11.i, align 4
  %30 = load i64, ptr %deadline6.i, align 8
  tail call void @cpudl_set(ptr noundef %cpudl10.i, i32 noundef %29, i64 noundef %30) #15
  br label %dec_dl_deadline.exit

dec_dl_deadline.exit:                             ; preds = %if.else.i, %if.then.i67
  %nr_cpus_allowed.i = getelementptr i8, ptr %dl_se, i32 608
  %31 = ptrtoint ptr %nr_cpus_allowed.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr_cpus_allowed.i, align 8
  %cmp.i = icmp sgt i32 %32, 1
  br i1 %cmp.i, label %if.then.i68, label %dec_dl_migration.exit

if.then.i68:                                      ; preds = %dec_dl_deadline.exit
  %dl_nr_migratory.i = getelementptr inbounds %struct.dl_rq, ptr %dl_rq, i32 0, i32 3
  %33 = ptrtoint ptr %dl_nr_migratory.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dl_nr_migratory.i, align 8
  %dec.i = add i32 %34, -1
  store i32 %dec.i, ptr %dl_nr_migratory.i, align 8
  br label %dec_dl_migration.exit

dec_dl_migration.exit:                            ; preds = %if.then.i68, %dec_dl_deadline.exit
  tail call fastcc void @update_dl_migration(ptr noundef %dl_rq) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpudl_clear(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpudl_find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @update_dl_rq_load_avg(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__update_stats_wait_end(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtick_start(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @push_dl_tasks(ptr noundef %rq) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %call = tail call fastcc i32 @push_dl_task(ptr noundef %rq)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pull_dl_task(ptr noundef %this_rq) #0 align 64 {
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
  %dlo_count.i = getelementptr inbounds %struct.root_domain, ptr %3, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dlo_count.i, i32 noundef 4) #15
  %4 = ptrtoint ptr %dlo_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %dlo_count.i, align 4
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %cleanup, label %do.end, !prof !114

do.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !145
  %6 = ptrtoint ptr %rd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rd.i, align 8
  %dlo_mask203 = getelementptr inbounds %struct.root_domain, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %dlo_mask203 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dlo_mask203, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %call8199204 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %9) #17
  %cmp200205 = icmp ult i32 %call8199204, %10
  br i1 %cmp200205, label %for.body.lr.ph.lr.ph, label %cleanup

for.body.lr.ph.lr.ph:                             ; preds = %do.end
  %dl_nr_running = getelementptr inbounds %struct.rq, ptr %this_rq, i32 0, i32 16, i32 1
  %earliest_dl = getelementptr inbounds %struct.rq, ptr %this_rq, i32 0, i32 16, i32 2
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end129, %for.body.lr.ph.lr.ph
  %call8199211 = phi i32 [ %call8199204, %for.body.lr.ph.lr.ph ], [ %call8199, %if.end129 ]
  %11 = phi i32 [ %10, %for.body.lr.ph.lr.ph ], [ %51, %if.end129 ]
  %12 = phi ptr [ %9, %for.body.lr.ph.lr.ph ], [ %50, %if.end129 ]
  %resched.0.off0.ph208 = phi i1 [ false, %for.body.lr.ph.lr.ph ], [ %resched.1.off0197, %if.end129 ]
  %dmin.0.ph206 = phi i64 [ 2147483647, %for.body.lr.ph.lr.ph ], [ %dmin.1196, %if.end129 ]
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge, %for.body.lr.ph
  %call8201 = phi i32 [ %call8199211, %for.body.lr.ph ], [ %call8, %for.cond.backedge ]
  %cmp9 = icmp eq i32 %1, %call8201
  br i1 %cmp9, label %for.cond.backedge, label %do.body12

for.cond.backedge:                                ; preds = %land.lhs.true, %for.body
  %call8 = tail call i32 @cpumask_next(i32 noundef %call8201, ptr noundef %12) #17
  %cmp = icmp ult i32 %call8, %11
  br i1 %cmp, label %for.body, label %for.end

do.body12:                                        ; preds = %for.body
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call8201
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %add = add i32 %14, ptrtoint (ptr @runqueues to i32)
  %15 = ptrtoint ptr %dl_nr_running to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dl_nr_running, align 8
  %tobool16.not = icmp eq i32 %16, 0
  br i1 %tobool16.not, label %if.end22, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body12
  %17 = inttoptr i32 %add to ptr
  %18 = ptrtoint ptr %earliest_dl to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %earliest_dl, align 8
  %next = getelementptr inbounds %struct.rq, ptr %17, i32 0, i32 16, i32 2, i32 1
  %20 = ptrtoint ptr %next to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %next, align 8
  %sub.i = sub i64 %19, %21
  %cmp.i = icmp slt i64 %sub.i, 0
  br i1 %cmp.i, label %for.cond.backedge, label %if.end22

if.end22:                                         ; preds = %land.lhs.true, %do.body12
  %22 = inttoptr i32 %add to ptr
  %call23 = tail call fastcc i32 @double_lock_balance(ptr noundef %this_rq, ptr noundef %22)
  %dl_nr_running25 = getelementptr inbounds %struct.rq, ptr %22, i32 0, i32 16, i32 1
  %23 = ptrtoint ptr %dl_nr_running25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dl_nr_running25, align 8
  %cmp26 = icmp ult i32 %24, 2
  br i1 %cmp26, label %skip.thread, label %if.end28

if.end28:                                         ; preds = %if.end22
  %call29 = tail call fastcc ptr @pick_earliest_pushable_dl_task(ptr noundef %22, i32 noundef %1)
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %skip.thread, label %land.lhs.true31

land.lhs.true31:                                  ; preds = %if.end28
  %deadline = getelementptr inbounds %struct.task_struct, ptr %call29, i32 0, i32 20, i32 7
  %25 = ptrtoint ptr %deadline to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %deadline, align 8
  %sub.i185 = sub i64 %26, %dmin.0.ph206
  %cmp.i186 = icmp slt i64 %sub.i185, 0
  br i1 %cmp.i186, label %land.lhs.true34, label %skip.thread

land.lhs.true34:                                  ; preds = %land.lhs.true31
  %27 = ptrtoint ptr %dl_nr_running to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dl_nr_running, align 8
  %tobool37.not = icmp eq i32 %28, 0
  br i1 %tobool37.not, label %if.then44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true34
  %29 = ptrtoint ptr %earliest_dl to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %earliest_dl, align 8
  %sub.i187 = sub i64 %26, %30
  %cmp.i188 = icmp slt i64 %sub.i187, 0
  br i1 %cmp.i188, label %if.then44, label %skip.thread

if.then44:                                        ; preds = %lor.lhs.false, %land.lhs.true34
  %curr45 = getelementptr inbounds %struct.rq, ptr %22, i32 0, i32 20
  %31 = ptrtoint ptr %curr45 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %curr45, align 8
  %cmp46 = icmp eq ptr %call29, %32
  br i1 %cmp46, label %do.end62, label %if.end68, !prof !111

do.end62:                                         ; preds = %if.then44
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2374, i32 noundef 9, ptr noundef null) #15
  br label %if.end68

if.end68:                                         ; preds = %do.end62, %if.then44
  %on_rq.i = getelementptr inbounds %struct.task_struct, ptr %call29, i32 0, i32 12
  %33 = ptrtoint ptr %on_rq.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %on_rq.i, align 4
  %cmp.i189.not = icmp eq i32 %34, 1
  br i1 %cmp.i189.not, label %if.end102, label %do.end96, !prof !114

do.end96:                                         ; preds = %if.end68
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2375, i32 noundef 9, ptr noundef null) #15
  br label %if.end102

if.end102:                                        ; preds = %do.end96, %if.end68
  %35 = ptrtoint ptr %deadline to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %deadline, align 8
  %37 = ptrtoint ptr %curr45 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %curr45, align 8
  %deadline114 = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 20, i32 7
  %39 = ptrtoint ptr %deadline114 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %deadline114, align 8
  %sub.i190 = sub i64 %36, %40
  %cmp.i191 = icmp slt i64 %sub.i190, 0
  br i1 %cmp.i191, label %skip.thread, label %if.end117

if.end117:                                        ; preds = %if.end102
  %migration_disabled.i = getelementptr inbounds %struct.task_struct, ptr %call29, i32 0, i32 37
  %41 = ptrtoint ptr %migration_disabled.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %migration_disabled.i, align 4
  %tobool.i.not = icmp eq i16 %42, 0
  br i1 %tobool.i.not, label %if.else, label %skip

if.else:                                          ; preds = %if.end117
  tail call void @deactivate_task(ptr noundef %22, ptr noundef nonnull %call29, i32 noundef 0) #15
  tail call void @set_task_cpu(ptr noundef nonnull %call29, i32 noundef %1) #15
  tail call void @activate_task(ptr noundef %this_rq, ptr noundef nonnull %call29, i32 noundef 0) #15
  %43 = ptrtoint ptr %deadline to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %deadline, align 8
  br label %skip.thread

skip.thread:                                      ; preds = %if.else, %if.end102, %lor.lhs.false, %land.lhs.true31, %if.end28, %if.end22
  %dmin.1.ph = phi i64 [ %dmin.0.ph206, %if.end28 ], [ %dmin.0.ph206, %land.lhs.true31 ], [ %dmin.0.ph206, %lor.lhs.false ], [ %44, %if.else ], [ %dmin.0.ph206, %if.end102 ], [ %dmin.0.ph206, %if.end22 ]
  %resched.1.off0.ph = phi i1 [ %resched.0.off0.ph208, %if.end28 ], [ %resched.0.off0.ph208, %land.lhs.true31 ], [ %resched.0.off0.ph208, %lor.lhs.false ], [ true, %if.else ], [ %resched.0.off0.ph208, %if.end102 ], [ %resched.0.off0.ph208, %if.end22 ]
  tail call fastcc void @double_unlock_balance(ptr noundef %this_rq, ptr noundef %22)
  br label %if.end129

skip:                                             ; preds = %if.end117
  %call120 = tail call fastcc ptr @get_push_task(ptr noundef %22)
  tail call fastcc void @double_unlock_balance(ptr noundef %this_rq, ptr noundef %22)
  %tobool125.not = icmp eq ptr %call120, null
  br i1 %tobool125.not, label %if.end129, label %if.then126

if.then126:                                       ; preds = %skip
  tail call void @raw_spin_rq_unlock(ptr noundef %this_rq) #15
  %cpu127 = getelementptr inbounds %struct.rq, ptr %22, i32 0, i32 46
  %45 = ptrtoint ptr %cpu127 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cpu127, align 4
  %push_work = getelementptr inbounds %struct.rq, ptr %22, i32 0, i32 78
  %call128 = tail call zeroext i1 @stop_one_cpu_nowait(i32 noundef %46, ptr noundef nonnull @push_cpu_stop, ptr noundef nonnull %call120, ptr noundef %push_work) #15
  tail call void @raw_spin_rq_lock_nested(ptr noundef %this_rq, i32 noundef 0) #15
  br label %if.end129

if.end129:                                        ; preds = %if.then126, %skip, %skip.thread
  %resched.1.off0197 = phi i1 [ %resched.1.off0.ph, %skip.thread ], [ %resched.0.off0.ph208, %if.then126 ], [ %resched.0.off0.ph208, %skip ]
  %dmin.1196 = phi i64 [ %dmin.1.ph, %skip.thread ], [ %dmin.0.ph206, %if.then126 ], [ %dmin.0.ph206, %skip ]
  %47 = ptrtoint ptr %rd.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rd.i, align 8
  %dlo_mask = getelementptr inbounds %struct.root_domain, ptr %48, i32 0, i32 7
  %49 = ptrtoint ptr %dlo_mask to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dlo_mask, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %51 = load i32, ptr @nr_cpu_ids, align 4
  %call8199 = tail call i32 @cpumask_next(i32 noundef %call8201, ptr noundef %50) #17
  %cmp200 = icmp ult i32 %call8199, %51
  br i1 %cmp200, label %for.body.lr.ph, label %for.end

for.end:                                          ; preds = %if.end129, %for.cond.backedge
  %resched.0.off0.ph.lcssa = phi i1 [ %resched.0.off0.ph208, %for.cond.backedge ], [ %resched.1.off0197, %if.end129 ]
  br i1 %resched.0.off0.ph.lcssa, label %if.then131, label %cleanup

if.then131:                                       ; preds = %for.end
  tail call void @resched_curr(ptr noundef %this_rq) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then131, %for.end, %do.end, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @pick_earliest_pushable_dl_task(ptr noundef %rq, i32 noundef %cpu) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %rb_leftmost = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 5, i32 1
  %0 = ptrtoint ptr %rb_leftmost to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rb_leftmost, align 4
  %pushable_dl_tasks_root.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 16, i32 5
  %2 = ptrtoint ptr %pushable_dl_tasks_root.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %pushable_dl_tasks_root.i, align 8
  %cmp.i.not = icmp eq ptr %3, null
  %tobool2.not20 = icmp eq ptr %1, null
  %or.cond = select i1 %cmp.i.not, i1 true, i1 %tobool2.not20
  br i1 %or.cond, label %cleanup, label %if.then3.lr.ph

if.then3.lr.ph:                                   ; preds = %entry
  %div3.i.i.i = lshr i32 %cpu, 5
  %and.i.i.i = and i32 %cpu, 31
  %4 = shl nuw i32 1, %and.i.i.i
  br label %if.then3

if.then3:                                         ; preds = %if.end7, %if.then3.lr.ph
  %next_node.021 = phi ptr [ %1, %if.then3.lr.ph ], [ %call8, %if.end7 ]
  %on_cpu.i.i = getelementptr i8, ptr %next_node.021, i32 -1144
  %5 = ptrtoint ptr %on_cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %on_cpu.i.i, align 4
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end7

land.lhs.true.i:                                  ; preds = %if.then3
  %cpus_mask.i = getelementptr i8, ptr %next_node.021, i32 -120
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i = icmp ugt i32 %7, %cpu
  br i1 %cmp.not.i.i.i.i, label %cpumask_test_cpu.exit.i, label %land.rhs.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %cpumask_test_cpu.exit.i, label %if.then.i.i.i.i, !prof !114

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpumask_test_cpu.exit.i

cpumask_test_cpu.exit.i:                          ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i, %land.lhs.true.i
  %arrayidx.i.i.i = getelementptr i32, ptr %cpus_mask.i, i32 %div3.i.i.i
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %10 = and i32 %9, %4
  %tobool2.not.i = icmp eq i32 %10, 0
  br i1 %tobool2.not.i, label %if.end7, label %cleanup.loopexit.split.loop.exit18

if.end7:                                          ; preds = %cpumask_test_cpu.exit.i, %if.then3
  %call8 = tail call ptr @rb_next(ptr noundef nonnull %next_node.021) #15
  %tobool2.not = icmp eq ptr %call8, null
  br i1 %tobool2.not, label %cleanup, label %if.then3

cleanup.loopexit.split.loop.exit18:               ; preds = %cpumask_test_cpu.exit.i
  %add.ptr.le = getelementptr i8, ptr %next_node.021, i32 -1164
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split.loop.exit18, %if.end7, %entry
  %retval.0 = phi ptr [ null, %entry ], [ %add.ptr.le, %cleanup.loopexit.split.loop.exit18 ], [ null, %if.end7 ]
  ret ptr %retval.0
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
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #15
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %lockdep_assert_rq_held.exit, !prof !111

do.end.i:                                         ; preds = %__rq_lockp.exit.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1309, i32 noundef 9, ptr noundef null) #15
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
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !135
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end15.sink.split.i.i.i.i, label %if.else.i.i.i.i, !prof !111

if.else.i.i.i.i:                                  ; preds = %if.end5
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %15 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %cleanup, label %if.end15.sink.split.i.i.i.i, !prof !114

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i, %if.end5
  %.sink.i.i.i.i = phi i32 [ 2, %if.end5 ], [ 1, %if.else.i.i.i.i ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #15
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
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @find_later_rq(ptr noundef %task) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !100) #15
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !146
  %4 = tail call i32 @llvm.read_register.i32(metadata !100) #15
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
  %add = add i32 %9, ptrtoint (ptr @local_cpu_mask_dl to i32)
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %10, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !147
  %13 = tail call i32 @llvm.read_register.i32(metadata !100) #15
  %and.i.i.i128 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i128 to ptr
  %preempt_count.i.i129 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i129 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i129, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i129, align 4
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
  br i1 %tobool.not, label %cleanup101, label %if.end, !prof !111

if.end:                                           ; preds = %entry
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 32
  %23 = ptrtoint ptr %nr_cpus_allowed to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr_cpus_allowed, align 8
  %cmp = icmp eq i32 %24, 1
  br i1 %cmp, label %cleanup101, label %do.body28

do.body28:                                        ; preds = %if.end
  %25 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %cpu.i, align 4
  %arrayidx36 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx36, align 4
  %add37 = add i32 %28, ptrtoint (ptr @runqueues to i32)
  %29 = inttoptr i32 %add37 to ptr
  %rd = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 35
  %30 = ptrtoint ptr %rd to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rd, align 8
  %cpudl = getelementptr inbounds %struct.root_domain, ptr %31, i32 0, i32 10
  %call38 = tail call i32 @cpudl_find(ptr noundef %cpudl, ptr noundef %task, ptr noundef nonnull %12) #15
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %cleanup101, label %if.end41

if.end41:                                         ; preds = %do.body28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %32 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i = icmp ugt i32 %32, %22
  br i1 %cmp.not.i.i.i, label %cpumask_test_cpu.exit, label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end41
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %cpumask_test_cpu.exit, label %if.then.i.i.i, !prof !114

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i, %if.end41
  %div3.i.i = lshr i32 %22, 5
  %arrayidx.i.i = getelementptr i32, ptr %12, i32 %div3.i.i
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %22, 31
  %35 = shl nuw i32 1, %and.i.i
  %36 = and i32 %34, %35
  %tobool43.not = icmp eq i32 %36, 0
  br i1 %tobool43.not, label %if.end45, label %cleanup101

if.end45:                                         ; preds = %cpumask_test_cpu.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %37 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i132 = icmp ugt i32 %37, %18
  br i1 %cmp.not.i.i.i132, label %cpumask_test_cpu.exit141, label %land.rhs.i.i.i134

land.rhs.i.i.i134:                                ; preds = %if.end45
  %.b37.i.i.i133 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i133, label %cpumask_test_cpu.exit141, label %if.then.i.i.i135, !prof !114

if.then.i.i.i135:                                 ; preds = %land.rhs.i.i.i134
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpumask_test_cpu.exit141

cpumask_test_cpu.exit141:                         ; preds = %if.then.i.i.i135, %land.rhs.i.i.i134, %if.end45
  %div3.i.i136 = lshr i32 %18, 5
  %arrayidx.i.i137 = getelementptr i32, ptr %12, i32 %div3.i.i136
  %38 = ptrtoint ptr %arrayidx.i.i137 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %arrayidx.i.i137, align 4
  %and.i.i138 = and i32 %18, 31
  %40 = shl nuw i32 1, %and.i.i138
  %41 = and i32 %39, %40
  %tobool47.not = icmp eq i32 %41, 0
  %spec.select = select i1 %tobool47.not, i32 -1, i32 %18
  %42 = tail call i32 @llvm.read_register.i32(metadata !100) #15
  %and.i.i.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %45, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !119
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %rcu_read_lock.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %cpumask_test_cpu.exit141
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %rcu_read_lock.exit, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %rcu_read_lock.exit, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true2.i
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 696, ptr noundef nonnull @.str.21) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i, %land.lhs.true.i, %cpumask_test_cpu.exit141
  %arrayidx61 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %46 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx61, align 4
  %add62 = add i32 %47, ptrtoint (ptr @runqueues to i32)
  %48 = inttoptr i32 %add62 to ptr
  %sd63 = getelementptr inbounds %struct.rq, ptr %48, i32 0, i32 36
  %49 = ptrtoint ptr %sd63 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %sd63, align 4
  %call.i142 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @sched_domains_mutex, i32 0, i32 5), i32 noundef -1) #15
  %tobool66.not = icmp eq i32 %call.i142, 0
  br i1 %tobool66.not, label %lor.lhs.false, label %do.end76

lor.lhs.false:                                    ; preds = %rcu_read_lock.exit
  %call67 = tail call i32 @rcu_read_lock_held() #15
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %land.lhs.true, label %do.end76

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call69 = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %do.end76, label %land.lhs.true71

land.lhs.true71:                                  ; preds = %land.lhs.true
  %.b127 = load i1, ptr @find_later_rq.__warned, align 1
  br i1 %.b127, label %do.end76, label %if.then73

if.then73:                                        ; preds = %land.lhs.true71
  store i1 true, ptr @find_later_rq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 2102, ptr noundef nonnull @.str.8) #15
  br label %do.end76

do.end76:                                         ; preds = %if.then73, %land.lhs.true71, %land.lhs.true, %lor.lhs.false, %rcu_read_lock.exit
  %tobool78.not187 = icmp eq ptr %50, null
  br i1 %tobool78.not187, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %do.end76
  %cmp81.not = icmp eq i32 %spec.select, -1
  %div3.i.i147 = lshr i32 %spec.select, 5
  %and.i.i149 = and i32 %spec.select, 31
  %51 = shl nuw i32 1, %and.i.i149
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %sd.0188 = phi ptr [ %50, %for.body.lr.ph ], [ %68, %for.inc ]
  %flags = getelementptr inbounds %struct.sched_domain, ptr %sd.0188, i32 0, i32 9
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags, align 4
  %and = and i32 %53, 16
  %tobool79.not = icmp eq i32 %and, 0
  br i1 %tobool79.not, label %for.inc, label %if.then80

if.then80:                                        ; preds = %for.body
  br i1 %cmp81.not, label %if.end87, label %land.lhs.true82

land.lhs.true82:                                  ; preds = %if.then80
  %span.i = getelementptr inbounds %struct.sched_domain, ptr %sd.0188, i32 0, i32 41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %54 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i143 = icmp ugt i32 %54, %spec.select
  br i1 %cmp.not.i.i.i143, label %cpumask_test_cpu.exit152, label %land.rhs.i.i.i145

land.rhs.i.i.i145:                                ; preds = %land.lhs.true82
  %.b37.i.i.i144 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i144, label %cpumask_test_cpu.exit152, label %if.then.i.i.i146, !prof !114

if.then.i.i.i146:                                 ; preds = %land.rhs.i.i.i145
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpumask_test_cpu.exit152

cpumask_test_cpu.exit152:                         ; preds = %if.then.i.i.i146, %land.rhs.i.i.i145, %land.lhs.true82
  %arrayidx.i.i148 = getelementptr i32, ptr %span.i, i32 %div3.i.i147
  %55 = ptrtoint ptr %arrayidx.i.i148 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %arrayidx.i.i148, align 4
  %57 = and i32 %56, %51
  %tobool85.not = icmp eq i32 %57, 0
  br i1 %tobool85.not, label %if.end87, label %if.then86

if.then86:                                        ; preds = %cpumask_test_cpu.exit152
  %call.i153 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i153, label %rcu_read_unlock.exit, label %land.lhs.true.i156

land.lhs.true.i156:                               ; preds = %if.then86
  %call1.i154 = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool.not.i155 = icmp eq i32 %call1.i154, 0
  br i1 %tobool.not.i155, label %rcu_read_unlock.exit, label %land.lhs.true2.i158

land.lhs.true2.i158:                              ; preds = %land.lhs.true.i156
  %.b4.i157 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i157, label %rcu_read_unlock.exit, label %if.then.i159

if.then.i159:                                     ; preds = %land.lhs.true2.i158
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i159, %land.lhs.true2.i158, %land.lhs.true.i156, %if.then86
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !120
  %58 = tail call i32 @llvm.read_register.i32(metadata !100) #15
  %and.i.i.i.i.i160 = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i.i.i160 to ptr
  %preempt_count.i.i.i.i161 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i.i.i.i161 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i.i.i.i161, align 4
  %sub.i.i.i = add i32 %61, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i161, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %cleanup101

if.end87:                                         ; preds = %cpumask_test_cpu.exit152, %if.then80
  %span.i162 = getelementptr inbounds %struct.sched_domain, ptr %sd.0188, i32 0, i32 41
  %call89 = tail call i32 @cpumask_any_and_distribute(ptr noundef nonnull %12, ptr noundef %span.i162) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %62 = load i32, ptr @nr_cpu_ids, align 4
  %cmp90 = icmp ult i32 %call89, %62
  br i1 %cmp90, label %if.then91, label %for.inc

if.then91:                                        ; preds = %if.end87
  %call.i163 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i163, label %rcu_read_unlock.exit173, label %land.lhs.true.i166

land.lhs.true.i166:                               ; preds = %if.then91
  %call1.i164 = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool.not.i165 = icmp eq i32 %call1.i164, 0
  br i1 %tobool.not.i165, label %rcu_read_unlock.exit173, label %land.lhs.true2.i168

land.lhs.true2.i168:                              ; preds = %land.lhs.true.i166
  %.b4.i167 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i167, label %rcu_read_unlock.exit173, label %if.then.i169

if.then.i169:                                     ; preds = %land.lhs.true2.i168
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #15
  br label %rcu_read_unlock.exit173

rcu_read_unlock.exit173:                          ; preds = %if.then.i169, %land.lhs.true2.i168, %land.lhs.true.i166, %if.then91
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !120
  %63 = tail call i32 @llvm.read_register.i32(metadata !100) #15
  %and.i.i.i.i.i170 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i.i.i170 to ptr
  %preempt_count.i.i.i.i171 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %preempt_count.i.i.i.i171 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %preempt_count.i.i.i.i171, align 4
  %sub.i.i.i172 = add i32 %66, -1
  store volatile i32 %sub.i.i.i172, ptr %preempt_count.i.i.i.i171, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %cleanup101

for.inc:                                          ; preds = %if.end87, %for.body
  %67 = ptrtoint ptr %sd.0188 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sd.0188, align 8
  %tobool78.not = icmp eq ptr %68, null
  br i1 %tobool78.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %do.end76
  %call.i174 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i174, label %rcu_read_unlock.exit184, label %land.lhs.true.i177

land.lhs.true.i177:                               ; preds = %for.end
  %call1.i175 = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool.not.i176 = icmp eq i32 %call1.i175, 0
  br i1 %tobool.not.i176, label %rcu_read_unlock.exit184, label %land.lhs.true2.i179

land.lhs.true2.i179:                              ; preds = %land.lhs.true.i177
  %.b4.i178 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i178, label %rcu_read_unlock.exit184, label %if.then.i180

if.then.i180:                                     ; preds = %land.lhs.true2.i179
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #15
  br label %rcu_read_unlock.exit184

rcu_read_unlock.exit184:                          ; preds = %if.then.i180, %land.lhs.true2.i179, %land.lhs.true.i177, %for.end
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !120
  %69 = tail call i32 @llvm.read_register.i32(metadata !100) #15
  %and.i.i.i.i.i181 = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i.i.i181 to ptr
  %preempt_count.i.i.i.i182 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %preempt_count.i.i.i.i182 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %preempt_count.i.i.i.i182, align 4
  %sub.i.i.i183 = add i32 %72, -1
  store volatile i32 %sub.i.i.i183, ptr %preempt_count.i.i.i.i182, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %cmp94.not = icmp eq i32 %spec.select, -1
  br i1 %cmp94.not, label %if.end96, label %cleanup101

if.end96:                                         ; preds = %rcu_read_unlock.exit184
  %call97 = tail call i32 @cpumask_any_distribute(ptr noundef nonnull %12) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %73 = load i32, ptr @nr_cpu_ids, align 4
  %cmp98 = icmp ult i32 %call97, %73
  %call97. = select i1 %cmp98, i32 %call97, i32 -1
  br label %cleanup101

cleanup101:                                       ; preds = %if.end96, %rcu_read_unlock.exit184, %rcu_read_unlock.exit173, %rcu_read_unlock.exit, %cpumask_test_cpu.exit, %do.body28, %if.end, %entry
  %retval.3 = phi i32 [ -1, %entry ], [ -1, %if.end ], [ -1, %do.body28 ], [ %22, %cpumask_test_cpu.exit ], [ %18, %rcu_read_unlock.exit184 ], [ %call97., %if.end96 ], [ %18, %rcu_read_unlock.exit ], [ %call89, %rcu_read_unlock.exit173 ]
  ret i32 %retval.3
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr noundef %map) #6 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_acquire(ptr noundef %map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpumask_any_and_distribute(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpumask_any_distribute(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr noundef %map) #6 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_release(ptr noundef %map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_cpus_allowed_common(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_intersects(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpudl_set_freecpu(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpudl_clear_freecpu(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_sched_stat_runtime(ptr noundef %tsk, i64 noundef %runtime) unnamed_addr #6 align 64 {
entry:
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_stat_runtime, i32 0, i32 1), ptr blockaddress(@trace_sched_stat_runtime, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !117

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !100) #15
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
  br i1 %.b37.i.i.i.i, label %cpu_online.exit, label %if.then.i.i.i.i, !prof !114

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !100) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !148
  %call42 = tail call i32 @__traceiter_sched_stat_runtime(ptr noundef null, ptr noundef %tsk, i64 noundef %runtime, i64 noundef 0) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !149
  %13 = tail call i32 @llvm.read_register.i32(metadata !100) #15
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !100) #15
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
  br i1 %.b37.i.i.i.i7, label %cpu_online.exit14, label %if.then.i.i.i.i9, !prof !114

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !100) #15
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !150
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_stat_runtime, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_stat_runtime, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %do.end67, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_sched_stat_runtime.__warned, align 1
  br i1 %.b1, label %do.end67, label %if.then64

if.then64:                                        ; preds = %land.lhs.true62
  store i1 true, ptr @trace_sched_stat_runtime.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 519, ptr noundef nonnull @.str.8) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62, %land.lhs.true, %if.then52
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !151
  %31 = tail call i32 @llvm.read_register.i32(metadata !100) #15
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
declare dso_local zeroext i1 @sched_rt_bandwidth_account(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_sched_stat_runtime(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuacct_charge(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cgroup_account_cputime(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_subset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_and_bit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

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
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nounwind readonly willreturn }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !19, !20, !22, !23, !25, !27, !28, !29, !30, !31, !32, !34, !36, !37, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !61, !62, !64, !65, !66, !67, !68, !69, !71, !72, !74, !75, !76, !78, !80, !81, !83, !84, !85, !87, !88, !90, !91, !93, !95, !97, !98}
!llvm.named.register.sp = !{!100}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @init_dl_bandwidth.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../kernel/sched/deadline.c", i32 418, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @init_dl_bw.__key, !4, !"__key", i1 false, i1 false}
!4 = !{!"../kernel/sched/deadline.c", i32 425, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @dl_sched_class, !7, !"dl_sched_class", i1 false, i1 false}
!7 = !{!"../kernel/sched/deadline.c", i32 2637, i32 1}
!8 = !{ptr @sysctl_sched_dl_period_max, !9, !"sysctl_sched_dl_period_max", i1 false, i1 false}
!9 = !{!"../kernel/sched/deadline.c", i32 2862, i32 14}
!10 = !{ptr @sysctl_sched_dl_period_min, !11, !"sysctl_sched_dl_period_min", i1 false, i1 false}
!11 = !{!"../kernel/sched/deadline.c", i32 2863, i32 14}
!12 = !{ptr @def_dl_bandwidth, !13, !"def_dl_bandwidth", i1 false, i1 false}
!13 = !{!"../kernel/sched/deadline.c", i32 21, i32 21}
!14 = !{ptr @__pcpu_unique_dl_push_head, !15, !"__pcpu_unique_dl_push_head", i1 false, i1 false}
!15 = !{!"../kernel/sched/deadline.c", i32 573, i32 8}
!16 = !{ptr @dl_push_head, !15, !"dl_push_head", i1 false, i1 false}
!17 = !{ptr @__pcpu_unique_dl_pull_head, !18, !"__pcpu_unique_dl_pull_head", i1 false, i1 false}
!18 = !{!"../kernel/sched/deadline.c", i32 574, i32 8}
!19 = !{ptr @dl_pull_head, !18, !"dl_pull_head", i1 false, i1 false}
!20 = !{ptr @__pcpu_unique_local_cpu_mask_dl, !21, !"__pcpu_unique_local_cpu_mask_dl", i1 false, i1 false}
!21 = !{!"../kernel/sched/deadline.c", i32 2057, i32 8}
!22 = !{ptr @local_cpu_mask_dl, !21, !"local_cpu_mask_dl", i1 false, i1 false}
!23 = !{ptr @dl_generation, !24, !"dl_generation", i1 false, i1 false}
!24 = !{!"../kernel/sched/deadline.c", i32 2672, i32 12}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../kernel/sched/deadline.c", i32 803, i32 3}
!27 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @replenish_dl_entity._entry, !26, !"_entry", i1 false, i1 false}
!31 = !{ptr @replenish_dl_entity._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../kernel/sched/sched.h", i32 1309, i32 2}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../kernel/sched/sched.h", i32 1459, i32 2}
!36 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../kernel/sched/sched.h", i32 2592, i32 2}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../kernel/sched/deadline.c", i32 175, i32 2}
!41 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../kernel/sched/sched.h", i32 2835, i32 9}
!44 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../kernel/sched/deadline.c", i32 199, i32 2}
!47 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../kernel/sched/deadline.c", i32 202, i32 2}
!50 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../kernel/sched/deadline.c", i32 189, i32 2}
!53 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../kernel/sched/deadline.c", i32 162, i32 2}
!56 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../kernel/sched/deadline.c", i32 163, i32 2}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../kernel/sched/sched.h", i32 2757, i32 2}
!61 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../kernel/sched/stats.h", i32 65, i32 3}
!64 = !{ptr @.str.16, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @check_schedstat_required._entry, !63, !"_entry", i1 false, i1 false}
!68 = !{ptr @check_schedstat_required._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!71 = !{ptr @.str.19, !70, !"<string literal>", i1 false, i1 false}
!72 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!73 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!74 = !{ptr @.str.20, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.21, !73, !"<string literal>", i1 false, i1 false}
!76 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!77 = !{!"../kernel/sched/deadline.c", i32 2102, i32 2}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!80 = !{ptr @.str.22, !79, !"<string literal>", i1 false, i1 false}
!81 = distinct !{null, !82, !"__already_done", i1 false, i1 false}
!82 = !{!"../include/trace/events/sched.h", i32 517, i32 1}
!83 = !{ptr @.str.23, !82, !"<string literal>", i1 false, i1 false}
!84 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!85 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!86 = !{!"../include/linux/cgroup.h", i32 481, i32 9}
!87 = !{ptr @.str.24, !86, !"<string literal>", i1 false, i1 false}
!88 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!89 = !{!"../include/linux/rcupdate.h", i32 787, i32 2}
!90 = !{ptr @.str.25, !89, !"<string literal>", i1 false, i1 false}
!91 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!92 = !{!"../kernel/sched/deadline.c", i32 71, i32 2}
!93 = distinct !{null, !94, !"__warned", i1 false, i1 false}
!94 = !{!"../kernel/sched/deadline.c", i32 81, i32 2}
!95 = distinct !{null, !96, !"__warned", i1 false, i1 false}
!96 = !{!"../include/linux/rcupdate.h", i32 805, i32 2}
!97 = !{ptr @.str.26, !96, !"<string literal>", i1 false, i1 false}
!98 = distinct !{null, !99, !"__warned", i1 false, i1 false}
!99 = !{!"../kernel/sched/deadline.c", i32 100, i32 2}
!100 = !{!"sp"}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!110 = !{!"auto-init"}
!111 = !{!"branch_weights", i32 1, i32 2000}
!112 = !{i64 2148672921}
!113 = !{i64 2148587385, i64 2148587417, i64 2148587446, i64 2148587480, i64 2148587511, i64 2148587534}
!114 = !{!"branch_weights", i32 2000, i32 1}
!115 = !{i64 2149718891}
!116 = !{i64 2158616492, i64 2158616981, i64 2158616529, i64 2158616585, i64 2158616619, i64 2158616643, i64 2158616684, i64 2158616705, i64 2158616733, i64 2158616767}
!117 = !{i64 2148396783, i64 2148396788, i64 2148396801, i64 2148396845, i64 2148396879, i64 2148396900}
!118 = !{i64 2158629050, i64 2158629539, i64 2158629087, i64 2158629143, i64 2158629177, i64 2158629201, i64 2158629242, i64 2158629263, i64 2158629291, i64 2158629325}
!119 = !{i64 2149410904}
!120 = !{i64 2149411170}
!121 = !{i64 2158754018, i64 2158754507, i64 2158754055, i64 2158754111, i64 2158754145, i64 2158754169, i64 2158754210, i64 2158754231, i64 2158754259, i64 2158754293}
!122 = !{i64 2158558786}
!123 = !{i64 2148583390, i64 2148583416, i64 2148583445, i64 2148583479, i64 2148583510, i64 2148583533}
!124 = !{i64 2148585855, i64 2148585881, i64 2148585910, i64 2148585944, i64 2148585975, i64 2148585998}
!125 = !{i64 2149418736}
!126 = !{i64 2149420131}
!127 = !{i64 2158549130, i64 2158549618, i64 2158549167, i64 2158549223, i64 2158549257, i64 2158549281, i64 2158549322, i64 2158549343, i64 2158549371, i64 2158549405}
!128 = !{i64 2158582357, i64 2158582845, i64 2158582394, i64 2158582450, i64 2158582484, i64 2158582508, i64 2158582549, i64 2158582570, i64 2158582598, i64 2158582632}
!129 = !{i64 2158578441, i64 2158578929, i64 2158578478, i64 2158578534, i64 2158578568, i64 2158578592, i64 2158578633, i64 2158578654, i64 2158578682, i64 2158578716}
!130 = !{i64 2158739196, i64 2158739685, i64 2158739233, i64 2158739289, i64 2158739323, i64 2158739347, i64 2158739388, i64 2158739409, i64 2158739437, i64 2158739471}
!131 = !{i64 2158744866, i64 2158745355, i64 2158744903, i64 2158744959, i64 2158744993, i64 2158745017, i64 2158745058, i64 2158745079, i64 2158745107, i64 2158745141}
!132 = !{i64 2158746483, i64 2158746972, i64 2158746520, i64 2158746576, i64 2158746610, i64 2158746634, i64 2158746675, i64 2158746696, i64 2158746724, i64 2158746758}
!133 = !{i64 2158748096, i64 2158748585, i64 2158748133, i64 2158748189, i64 2158748223, i64 2158748247, i64 2158748288, i64 2158748309, i64 2158748337, i64 2158748371}
!134 = !{i64 2158749689, i64 2158750178, i64 2158749726, i64 2158749782, i64 2158749816, i64 2158749840, i64 2158749881, i64 2158749902, i64 2158749930, i64 2158749964}
!135 = !{i64 2148584920, i64 2148584952, i64 2148584981, i64 2148585015, i64 2148585046, i64 2148585069}
!136 = !{i64 2158358085}
!137 = !{i64 2158363019}
!138 = !{i64 2158384701}
!139 = !{i64 2158389595}
!140 = !{i64 2158614823, i64 2158615312, i64 2158614860, i64 2158614916, i64 2158614950, i64 2158614974, i64 2158615015, i64 2158615036, i64 2158615064, i64 2158615098}
!141 = !{i64 2158613053, i64 2158613542, i64 2158613090, i64 2158613146, i64 2158613180, i64 2158613204, i64 2158613245, i64 2158613266, i64 2158613294, i64 2158613328}
!142 = !{i64 2158562545, i64 2158563033, i64 2158562582, i64 2158562638, i64 2158562672, i64 2158562696, i64 2158562737, i64 2158562758, i64 2158562786, i64 2158562820}
!143 = !{i64 936426, i64 936453, i64 936475, i64 936503}
!144 = !{i64 936834, i64 936861, i64 936894, i64 936915, i64 936942, i64 936968}
!145 = !{i64 2158751688}
!146 = !{i64 2158674107}
!147 = !{i64 2158691025}
!148 = !{i64 2157678618}
!149 = !{i64 2157678861}
!150 = !{i64 2149419463}
!151 = !{i64 2149420499}
