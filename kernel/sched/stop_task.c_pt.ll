; ModuleID = '/llk/IR_all_yes/kernel/sched/stop_task.c_pt.bc'
source_filename = "../kernel/sched/stop_task.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sched_class = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.103 }
%struct.atomic_t = type { i32 }
%union.anon.103 = type { i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.rq = type { %struct.raw_spinlock, i32, i32, i32, [8 x i8], %struct.__call_single_data, i32, %struct.atomic_t, i32, i64, [24 x i8], [2 x %struct.uclamp_rq], i32, [76 x i8], %struct.cfs_rq, %struct.rt_rq, %struct.dl_rq, %struct.list_head, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i64, [88 x i8], i64, i64, i32, %struct.atomic_t, i64, i32, i32, ptr, ptr, i32, i32, ptr, i8, i8, i32, i32, i32, %struct.cpu_stop_work, i32, i32, %struct.list_head, [12 x i8], %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, i64, i64, i32, i64, i64, %struct.rcuwait, i64, i64, i64, i32, i32, %struct.__call_single_data, %struct.hrtimer, i64, %struct.sched_info, i64, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.cpu_stop_work, ptr, ptr, i32, i32, %struct.rb_root, i32, i32, i32, i32, i32, i32, i64, [80 x i8] }
%struct.uclamp_rq = type { i32, [5 x %struct.uclamp_bucket] }
%struct.uclamp_bucket = type { i32 }
%struct.cfs_rq = type { %struct.load_weight, i32, i32, i32, i32, i64, i64, i32, i64, i64, %struct.rb_root_cached, ptr, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg, i64, [120 x i8], %struct.anon, i32, i32, i32, i32, i64, ptr, ptr, i32, %struct.list_head, ptr, i32, i32, i64, i64, i64, i64, i32, i32, %struct.list_head, [24 x i8] }
%struct.load_weight = type { i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.anon = type { %struct.raw_spinlock, i32, i32, i32, i32, [68 x i8] }
%struct.rt_rq = type { %struct.rt_prio_array, i32, i32, %struct.anon.45, i32, i32, i32, %struct.plist_head, i32, i32, i64, i64, %struct.raw_spinlock, i32, ptr, ptr }
%struct.rt_prio_array = type { [4 x i32], [100 x %struct.list_head] }
%struct.anon.45 = type { i32, i32 }
%struct.plist_head = type { %struct.list_head }
%struct.dl_rq = type { %struct.rb_root_cached, i32, %struct.anon.134, i32, i32, %struct.rb_root_cached, i64, i64, i64, i64 }
%struct.anon.134 = type { i64, i64 }
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
%struct.root_domain = type { %struct.atomic_t, %struct.atomic_t, %struct.callback_head, ptr, ptr, i32, i32, ptr, %struct.atomic_t, %struct.dl_bw, %struct.cpudl, i64, %struct.irq_work, %struct.raw_spinlock, i32, i32, %struct.atomic_t, %struct.atomic_t, ptr, %struct.cpupri, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.dl_bw = type { %struct.raw_spinlock, i64, i64 }
%struct.cpudl = type { %struct.raw_spinlock, i32, ptr, ptr }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.cpupri = type { [101 x %struct.cpupri_vec], ptr }
%struct.cpupri_vec = type { %struct.atomic_t, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.108, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.47 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.108 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.css_set = type { [14 x ptr], %struct.refcount_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, [14 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i8, %struct.callback_head }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }

@stop_sched_class = dso_local local_unnamed_addr constant %struct.sched_class { i32 0, ptr @enqueue_task_stop, ptr @dequeue_task_stop, ptr @yield_task_stop, ptr null, ptr @check_preempt_curr_stop, ptr @pick_next_task_stop, ptr @put_prev_task_stop, ptr @set_next_task_stop, ptr @balance_stop, ptr @select_task_rq_stop, ptr @pick_task_stop, ptr null, ptr null, ptr @set_cpus_allowed_common, ptr null, ptr null, ptr null, ptr @task_tick_stop, ptr null, ptr null, ptr null, ptr @switched_to_stop, ptr @prio_changed_stop, ptr null, ptr @update_curr_stop, ptr null }, section "__stop_sched_class", align 4
@__tracepoint_sched_update_nr_running_tp = external dso_local global %struct.tracepoint, align 4
@sched_schedstats = external dso_local global %struct.static_key_false, align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kernel/sched/sched.h\00", [43 x i8] zeroinitializer }, align 32
@assert_clock_updated.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"rq->clock_update_flags < RQCF_ACT_SKIP\00", [57 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@task_css_set.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cgroup_mutex = external dso_local global %struct.mutex, align 4
@css_set_lock = external dso_local global %struct.spinlock, align 4
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/cgroup.h\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [28 x i8] c"../kernel/sched/stop_task.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 1309, i32 2 }
@___asan_gen_.11 = private unnamed_addr constant [24 x i8] c"../kernel/sched/sched.h\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 1459, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 695, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [26 x i8] c"../include/linux/cgroup.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 481, i32 9 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 723, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enqueue_task_stop(ptr noundef %rq, ptr nocapture noundef readnone %p, i32 noundef %flags) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_running.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 1
  %0 = ptrtoint ptr %nr_running.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_running.i, align 4
  %add.i = add i32 %1, 1
  store i32 %add.i, ptr %nr_running.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_update_nr_running_tp, i32 0, i32 1), ptr blockaddress(@enqueue_task_stop, %if.then.i)) #9
          to label %if.end.i [label %if.then.i], !srcloc !28

if.then.i:                                        ; preds = %entry
  tail call void @call_trace_sched_update_nr_running(ptr noundef %rq, i32 noundef 1) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry
  %cmp.i = icmp ult i32 %1, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %add_nr_running.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %2 = ptrtoint ptr %nr_running.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_running.i, align 4
  %cmp3.i = icmp ugt i32 %3, 1
  br i1 %cmp3.i, label %do.end.i, label %add_nr_running.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  %rd.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 35
  %4 = ptrtoint ptr %rd.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rd.i, align 8
  %overload.i = getelementptr inbounds %struct.root_domain, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %overload.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %overload.i, align 8
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %do.body10.i, label %add_nr_running.exit

do.body10.i:                                      ; preds = %do.end.i
  %8 = ptrtoint ptr %overload.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 1, ptr %overload.i, align 8
  br label %add_nr_running.exit

add_nr_running.exit:                              ; preds = %do.body10.i, %do.end.i, %land.lhs.true.i, %if.end.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dequeue_task_stop(ptr noundef %rq, ptr nocapture noundef readnone %p, i32 noundef %flags) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_running.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 1
  %0 = ptrtoint ptr %nr_running.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_running.i, align 4
  %sub.i = add i32 %1, -1
  store i32 %sub.i, ptr %nr_running.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_update_nr_running_tp, i32 0, i32 1), ptr blockaddress(@dequeue_task_stop, %if.then.i)) #9
          to label %sub_nr_running.exit [label %if.then.i], !srcloc !28

if.then.i:                                        ; preds = %entry
  tail call void @call_trace_sched_update_nr_running(ptr noundef %rq, i32 noundef -1) #9
  br label %sub_nr_running.exit

sub_nr_running.exit:                              ; preds = %if.then.i, %entry
  ret void
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @yield_task_stop(ptr nocapture noundef readnone %rq) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/stop_task.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 69, 0\0A.popsection", ""() #9, !srcloc !29
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @check_preempt_curr_stop(ptr nocapture noundef %rq, ptr nocapture noundef %p, i32 noundef %flags) #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pick_next_task_stop(ptr noundef %rq) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %stop.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 22
  %0 = ptrtoint ptr %stop.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stop.i.i, align 16
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end, label %sched_stop_runnable.exit.i

sched_stop_runnable.exit.i:                       ; preds = %entry
  %on_rq.i.i.i = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %on_rq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %on_rq.i.i.i, align 4
  %cmp.i.i.i = icmp eq i32 %3, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end

if.then:                                          ; preds = %sched_stop_runnable.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i.i, label %lockdep_assert_rq_held.exit.i.i, label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.then
  %core_enabled.i.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 81
  %5 = ptrtoint ptr %core_enabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %core_enabled.i.i.i.i, align 128
  %tobool.not.i.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i.i.i, label %__rq_lockp.exit.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i
  %core.i.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 79
  %7 = ptrtoint ptr %core.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %core.i.i.i.i, align 8
  br label %__rq_lockp.exit.i.i.i

__rq_lockp.exit.i.i.i:                            ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %8, %if.then.i.i.i.i ], [ %rq, %land.rhs.i.i.i ]
  %dep_map.i.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i.i, i32 0, i32 4
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #9
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %do.end.i.i.i, label %lockdep_assert_rq_held.exit.i.i, !prof !30

do.end.i.i.i:                                     ; preds = %__rq_lockp.exit.i.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1309, i32 noundef 9, ptr noundef null) #9
  br label %lockdep_assert_rq_held.exit.i.i

lockdep_assert_rq_held.exit.i.i:                  ; preds = %do.end.i.i.i, %__rq_lockp.exit.i.i.i, %if.then
  %clock_update_flags.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 25
  %9 = ptrtoint ptr %clock_update_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %clock_update_flags.i.i.i, align 4
  %cmp.i.i.i4 = icmp ult i32 %10, 2
  br i1 %cmp.i.i.i4, label %land.rhs.i3.i.i, label %set_next_task_stop.exit

land.rhs.i3.i.i:                                  ; preds = %lockdep_assert_rq_held.exit.i.i
  %.b37.i.i.i = load i1, ptr @assert_clock_updated.__already_done, align 1
  br i1 %.b37.i.i.i, label %set_next_task_stop.exit, label %if.then.i.i.i, !prof !31

if.then.i.i.i:                                    ; preds = %land.rhs.i3.i.i
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.1) #9
  br label %set_next_task_stop.exit

set_next_task_stop.exit:                          ; preds = %if.then.i.i.i, %land.rhs.i3.i.i, %lockdep_assert_rq_held.exit.i.i
  %clock_task.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 28
  %11 = ptrtoint ptr %clock_task.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %clock_task.i.i, align 128
  %exec_start.i = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 18, i32 4
  %13 = ptrtoint ptr %exec_start.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %exec_start.i, align 32
  br label %if.end

if.end:                                           ; preds = %set_next_task_stop.exit, %sched_stop_runnable.exit.i, %entry
  %retval.0.i7 = phi ptr [ %1, %set_next_task_stop.exit ], [ null, %entry ], [ null, %sched_stop_runnable.exit.i ]
  ret ptr %retval.0.i7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @put_prev_task_stop(ptr noundef %rq, ptr nocapture noundef readnone %prev) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %curr1 = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 20
  %0 = ptrtoint ptr %curr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %curr1, align 8
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
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #9
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %lockdep_assert_rq_held.exit.i, !prof !30

do.end.i.i:                                       ; preds = %__rq_lockp.exit.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1309, i32 noundef 9, ptr noundef null) #9
  br label %lockdep_assert_rq_held.exit.i

lockdep_assert_rq_held.exit.i:                    ; preds = %do.end.i.i, %__rq_lockp.exit.i.i, %entry
  %clock_update_flags.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 25
  %7 = ptrtoint ptr %clock_update_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %clock_update_flags.i.i, align 4
  %cmp.i.i = icmp ult i32 %8, 2
  br i1 %cmp.i.i, label %land.rhs.i3.i, label %rq_clock_task.exit

land.rhs.i3.i:                                    ; preds = %lockdep_assert_rq_held.exit.i
  %.b37.i.i = load i1, ptr @assert_clock_updated.__already_done, align 1
  br i1 %.b37.i.i, label %rq_clock_task.exit, label %if.then.i.i, !prof !31

if.then.i.i:                                      ; preds = %land.rhs.i3.i
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.1) #9
  br label %rq_clock_task.exit

rq_clock_task.exit:                               ; preds = %if.then.i.i, %land.rhs.i3.i, %lockdep_assert_rq_held.exit.i
  %clock_task.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 28
  %9 = ptrtoint ptr %clock_task.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %clock_task.i, align 128
  %exec_start = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 18, i32 4
  %11 = ptrtoint ptr %exec_start to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %exec_start, align 32
  %sub = sub i64 %10, %12
  %cmp = icmp slt i64 %sub, 0
  br i1 %cmp, label %if.then, label %do.body, !prof !30

if.then:                                          ; preds = %rq_clock_task.exit
  br label %do.body

do.body:                                          ; preds = %if.then, %rq_clock_task.exit
  %delta_exec.0 = phi i64 [ 0, %if.then ], [ %sub, %rq_clock_task.exit ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_schedstats, ptr blockaddress(@put_prev_task_stop, %if.then11)) #9
          to label %do.end [label %if.then11], !srcloc !28

if.then11:                                        ; preds = %do.body
  %exec_max = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 29, i32 12
  %13 = ptrtoint ptr %exec_max to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %exec_max, align 32
  %15 = tail call i64 @llvm.umax.i64(i64 %14, i64 %delta_exec.0)
  %16 = ptrtoint ptr %exec_max to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %exec_max, align 32
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %sum_exec_runtime = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 18, i32 5
  %17 = ptrtoint ptr %sum_exec_runtime to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %sum_exec_runtime, align 8
  %add = add i64 %18, %delta_exec.0
  store i64 %add, ptr %sum_exec_runtime, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 111
  %19 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %signal.i.i, align 16
  %timers_active.i.i = getelementptr inbounds %struct.signal_struct, ptr %20, i32 0, i32 21, i32 1
  %21 = ptrtoint ptr %timers_active.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %timers_active.i.i, align 8
  %tobool.not.i.i35 = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i35, label %account_group_exec_runtime.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end
  %sighand.i.i = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 112
  %23 = ptrtoint ptr %sighand.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sighand.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %24, null
  br i1 %tobool3.not.i.i, label %account_group_exec_runtime.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i
  %sum_exec_runtime.i = getelementptr inbounds %struct.signal_struct, ptr %20, i32 0, i32 20, i32 0, i32 2
  %call.i.i.i36 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sum_exec_runtime.i, i32 noundef 8) #9
  tail call void @generic_atomic64_add(i64 noundef %delta_exec.0, ptr noundef %sum_exec_runtime.i) #9
  br label %account_group_exec_runtime.exit

account_group_exec_runtime.exit:                  ; preds = %if.end.i, %if.end.i.i, %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %25 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i37 = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i37, label %lockdep_assert_rq_held.exit.i51, label %land.rhs.i.i40

land.rhs.i.i40:                                   ; preds = %account_group_exec_runtime.exit
  %core_enabled.i.i.i38 = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 81
  %26 = ptrtoint ptr %core_enabled.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %core_enabled.i.i.i38, align 128
  %tobool.not.i.i.i39 = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i.i39, label %__rq_lockp.exit.i.i47, label %if.then.i.i.i42

if.then.i.i.i42:                                  ; preds = %land.rhs.i.i40
  %core.i.i.i41 = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 79
  %28 = ptrtoint ptr %core.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %core.i.i.i41, align 8
  br label %__rq_lockp.exit.i.i47

__rq_lockp.exit.i.i47:                            ; preds = %if.then.i.i.i42, %land.rhs.i.i40
  %retval.0.i.i.i43 = phi ptr [ %29, %if.then.i.i.i42 ], [ %rq, %land.rhs.i.i40 ]
  %dep_map.i.i44 = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i43, i32 0, i32 4
  %call.i.i.i45 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i44, i32 noundef -1) #9
  %cmp.not.i.i46 = icmp eq i32 %call.i.i.i45, 0
  br i1 %cmp.not.i.i46, label %do.end.i.i48, label %lockdep_assert_rq_held.exit.i51, !prof !30

do.end.i.i48:                                     ; preds = %__rq_lockp.exit.i.i47
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1309, i32 noundef 9, ptr noundef null) #9
  br label %lockdep_assert_rq_held.exit.i51

lockdep_assert_rq_held.exit.i51:                  ; preds = %do.end.i.i48, %__rq_lockp.exit.i.i47, %account_group_exec_runtime.exit
  %30 = ptrtoint ptr %clock_update_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %clock_update_flags.i.i, align 4
  %cmp.i.i50 = icmp ult i32 %31, 2
  br i1 %cmp.i.i50, label %land.rhs.i3.i53, label %rq_clock_task.exit56

land.rhs.i3.i53:                                  ; preds = %lockdep_assert_rq_held.exit.i51
  %.b37.i.i52 = load i1, ptr @assert_clock_updated.__already_done, align 1
  br i1 %.b37.i.i52, label %rq_clock_task.exit56, label %if.then.i.i54, !prof !31

if.then.i.i54:                                    ; preds = %land.rhs.i3.i53
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.1) #9
  br label %rq_clock_task.exit56

rq_clock_task.exit56:                             ; preds = %if.then.i.i54, %land.rhs.i3.i53, %lockdep_assert_rq_held.exit.i51
  %32 = ptrtoint ptr %clock_task.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %clock_task.i, align 128
  %34 = ptrtoint ptr %exec_start to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %exec_start, align 32
  tail call void @cpuacct_charge(ptr noundef %1, i64 noundef %delta_exec.0) #9
  %35 = tail call i32 @llvm.read_register.i32(metadata !18) #9
  %and.i.i.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %38, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !32
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %rcu_read_lock.exit.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %rq_clock_task.exit56
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  %tobool.not.i.i57 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i57, label %rcu_read_lock.exit.i, label %land.lhs.true2.i.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %rcu_read_lock.exit.i, label %if.then.i.i58

if.then.i.i58:                                    ; preds = %land.lhs.true2.i.i
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i58, %land.lhs.true2.i.i, %land.lhs.true.i.i, %rq_clock_task.exit56
  %cgroups.i.i.i = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 164
  %39 = ptrtoint ptr %cgroups.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %cgroups.i.i.i, align 16
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #9
  %tobool.not.i.i.i59 = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i59, label %lor.lhs.false.i.i.i, label %task_dfl_cgroup.exit.i

lor.lhs.false.i.i.i:                              ; preds = %rcu_read_lock.exit.i
  %call.i18.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #9
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
  %call7.i.i.i = tail call i32 @rcu_read_lock_held() #9
  %tobool8.not.i.i.i = icmp eq i32 %call7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %land.lhs.true.i.i.i, label %task_dfl_cgroup.exit.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false6.i.i.i
  %call9.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  %tobool10.not.i.i.i = icmp eq i32 %call9.i.i.i, 0
  br i1 %tobool10.not.i.i.i, label %task_dfl_cgroup.exit.i, label %land.lhs.true11.i.i.i

land.lhs.true11.i.i.i:                            ; preds = %land.lhs.true.i.i.i
  %.b17.i.i.i = load i1, ptr @task_css_set.__warned, align 1
  br i1 %.b17.i.i.i, label %task_dfl_cgroup.exit.i, label %if.then.i.i.i60

if.then.i.i.i60:                                  ; preds = %land.lhs.true11.i.i.i
  store i1 true, ptr @task_css_set.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 481, ptr noundef nonnull @.str.5) #9
  br label %task_dfl_cgroup.exit.i

task_dfl_cgroup.exit.i:                           ; preds = %if.then.i.i.i60, %land.lhs.true11.i.i.i, %land.lhs.true.i.i.i, %lor.lhs.false6.i.i.i, %lor.lhs.false4.i.i.i, %lor.lhs.false.i.i.i, %rcu_read_lock.exit.i
  %dfl_cgrp.i.i = getelementptr inbounds %struct.css_set, ptr %40, i32 0, i32 3
  %43 = ptrtoint ptr %dfl_cgrp.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dfl_cgrp.i.i, align 4
  %parent.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %44, i32 0, i32 12
  %45 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %parent.i.i, align 8
  %tobool.not.i = icmp eq ptr %46, null
  br i1 %tobool.not.i, label %if.end.i61, label %if.then.i

if.then.i:                                        ; preds = %task_dfl_cgroup.exit.i
  tail call void @__cgroup_account_cputime(ptr noundef %44, i64 noundef %delta_exec.0) #9
  br label %if.end.i61

if.end.i61:                                       ; preds = %if.then.i, %task_dfl_cgroup.exit.i
  %call.i5.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i5.i, label %cgroup_account_cputime.exit, label %land.lhs.true.i8.i

land.lhs.true.i8.i:                               ; preds = %if.end.i61
  %call1.i6.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  %tobool.not.i7.i = icmp eq i32 %call1.i6.i, 0
  br i1 %tobool.not.i7.i, label %cgroup_account_cputime.exit, label %land.lhs.true2.i10.i

land.lhs.true2.i10.i:                             ; preds = %land.lhs.true.i8.i
  %.b4.i9.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i9.i, label %cgroup_account_cputime.exit, label %if.then.i11.i

if.then.i11.i:                                    ; preds = %land.lhs.true2.i10.i
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.6) #9
  br label %cgroup_account_cputime.exit

cgroup_account_cputime.exit:                      ; preds = %if.then.i11.i, %land.lhs.true2.i10.i, %land.lhs.true.i8.i, %if.end.i61
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !33
  %47 = tail call i32 @llvm.read_register.i32(metadata !18) #9
  %and.i.i.i.i.i12.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i.i12.i to ptr
  %preempt_count.i.i.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i.i.i13.i, align 4
  %sub.i.i.i.i = add i32 %50, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i13.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_next_task_stop(ptr noundef %rq, ptr nocapture noundef writeonly %stop, i1 noundef zeroext %first) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
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
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #9
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %lockdep_assert_rq_held.exit.i, !prof !30

do.end.i.i:                                       ; preds = %__rq_lockp.exit.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1309, i32 noundef 9, ptr noundef null) #9
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
  br i1 %.b37.i.i, label %rq_clock_task.exit, label %if.then.i.i, !prof !31

if.then.i.i:                                      ; preds = %land.rhs.i3.i
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.1) #9
  br label %rq_clock_task.exit

rq_clock_task.exit:                               ; preds = %if.then.i.i, %land.rhs.i3.i, %lockdep_assert_rq_held.exit.i
  %clock_task.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 28
  %7 = ptrtoint ptr %clock_task.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %clock_task.i, align 128
  %exec_start = getelementptr inbounds %struct.task_struct, ptr %stop, i32 0, i32 18, i32 4
  %9 = ptrtoint ptr %exec_start to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %exec_start, align 32
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @balance_stop(ptr nocapture noundef readonly %rq, ptr nocapture noundef readnone %prev, ptr nocapture noundef readnone %rf) #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %stop.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 22
  %0 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stop.i, align 16
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %sched_stop_runnable.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %entry
  %on_rq.i.i = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %on_rq.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %on_rq.i.i, align 4
  %cmp.i.i = icmp eq i32 %3, 1
  %phi.cast = zext i1 %cmp.i.i to i32
  br label %sched_stop_runnable.exit

sched_stop_runnable.exit:                         ; preds = %land.rhs.i, %entry
  %4 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs.i ]
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @select_task_rq_stop(ptr nocapture noundef readonly %p, i32 noundef %cpu, i32 noundef %flags) #4 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %stack.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %stack.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stack.i, align 4
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %cpu.i, align 4
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @pick_task_stop(ptr nocapture noundef readonly %rq) #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %stop.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 22
  %0 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stop.i, align 16
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %return, label %sched_stop_runnable.exit

sched_stop_runnable.exit:                         ; preds = %entry
  %on_rq.i.i = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %on_rq.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %on_rq.i.i, align 4
  %cmp.i.i = icmp eq i32 %3, 1
  %spec.select = select i1 %cmp.i.i, ptr %1, ptr null
  br label %return

return:                                           ; preds = %sched_stop_runnable.exit, %entry
  %retval.0 = phi ptr [ null, %entry ], [ %spec.select, %sched_stop_runnable.exit ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_cpus_allowed_common(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @task_tick_stop(ptr nocapture noundef %rq, ptr nocapture noundef %curr, i32 noundef %queued) #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @switched_to_stop(ptr nocapture noundef readnone %rq, ptr nocapture noundef readnone %p) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/stop_task.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 105, 0\0A.popsection", ""() #9, !srcloc !34
  unreachable
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prio_changed_stop(ptr nocapture noundef readnone %rq, ptr nocapture noundef readnone %p, i32 noundef %oldprio) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/stop_task.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 111, 0\0A.popsection", ""() #9, !srcloc !35
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @update_curr_stop(ptr nocapture noundef %rq) #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_trace_sched_update_nr_running(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuacct_charge(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cgroup_account_cputime(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !14, !15, !17}
!llvm.named.register.sp = !{!18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @stop_sched_class, !1, !"stop_sched_class", i1 false, i1 false}
!1 = !{!"../kernel/sched/stop_task.c", i32 121, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../kernel/sched/sched.h", i32 1309, i32 2}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../kernel/sched/sched.h", i32 1459, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__warned", i1 false, i1 false}
!8 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../include/linux/cgroup.h", i32 481, i32 9}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{!"sp"}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{i64 2148316839, i64 2148316844, i64 2148316857, i64 2148316901, i64 2148316935, i64 2148316956}
!29 = !{i64 2158436718, i64 2158437206, i64 2158436755, i64 2158436811, i64 2158436845, i64 2158436869, i64 2158436910, i64 2158436931, i64 2158436959, i64 2158436993}
!30 = !{!"branch_weights", i32 1, i32 2000}
!31 = !{!"branch_weights", i32 2000, i32 1}
!32 = !{i64 2149330960}
!33 = !{i64 2149331226}
!34 = !{i64 2158441102, i64 2158441591, i64 2158441139, i64 2158441195, i64 2158441229, i64 2158441253, i64 2158441294, i64 2158441315, i64 2158441343, i64 2158441377}
!35 = !{i64 2158442595, i64 2158443084, i64 2158442632, i64 2158442688, i64 2158442722, i64 2158442746, i64 2158442787, i64 2158442808, i64 2158442836, i64 2158442870}
