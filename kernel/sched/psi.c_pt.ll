; ModuleID = '/llk/IR_all_yes/kernel/sched/psi.c_pt.bc'
source_filename = "../kernel/sched/psi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.psi_group_cpu = type { %struct.seqcount, [5 x i32], i32, [7 x i32], i64, [32 x i8], [2 x [7 x i32]], [72 x i8] }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.psi_group = type { %struct.mutex, ptr, [6 x i64], i64, i64, %struct.delayed_work, [2 x [6 x i64]], [6 x [3 x i32]], ptr, %struct.timer_list, %struct.wait_queue_head, %struct.atomic_t, %struct.mutex, %struct.list_head, [6 x i32], i32, i64, [6 x i64], i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rq = type { %struct.raw_spinlock, i32, i32, i32, [8 x i8], %struct.__call_single_data, i32, %struct.atomic_t, i32, i64, [24 x i8], [2 x %struct.uclamp_rq], i32, [76 x i8], %struct.cfs_rq, %struct.rt_rq, %struct.dl_rq, %struct.list_head, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i64, [88 x i8], i64, i64, i32, %struct.atomic_t, i64, i32, i32, ptr, ptr, i32, i32, ptr, i8, i8, i32, i32, i32, %struct.cpu_stop_work, i32, i32, %struct.list_head, [12 x i8], %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, i64, i64, i32, i64, i64, %struct.rcuwait, i64, i64, i64, i32, i32, %struct.__call_single_data, %struct.hrtimer, i64, %struct.sched_info, i64, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.cpu_stop_work, ptr, ptr, i32, i32, %struct.rb_root, i32, i32, i32, i32, i32, i32, i64, [80 x i8] }
%struct.uclamp_rq = type { i32, [5 x %struct.uclamp_bucket] }
%struct.uclamp_bucket = type { i32 }
%struct.cfs_rq = type { %struct.load_weight, i32, i32, i32, i32, i64, i64, i32, i64, i64, %struct.rb_root_cached, ptr, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg, i64, [120 x i8], %struct.anon, i32, i32, i32, i32, i64, ptr, ptr, i32, %struct.list_head, ptr, i32, i32, i64, i64, i64, i64, i32, i32, %struct.list_head, [24 x i8] }
%struct.load_weight = type { i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.anon = type { %struct.raw_spinlock, i32, i32, i32, i32, [68 x i8] }
%struct.rt_rq = type { %struct.rt_prio_array, i32, i32, %struct.anon.93, i32, i32, i32, %struct.plist_head, i32, i32, i64, i64, %struct.raw_spinlock, i32, ptr, ptr }
%struct.rt_prio_array = type { [4 x i32], [100 x %struct.list_head] }
%struct.anon.93 = type { i32, i32 }
%struct.plist_head = type { %struct.list_head }
%struct.dl_rq = type { %struct.rb_root_cached, i32, %struct.anon.94, i32, i32, %struct.rb_root_cached, i64, i64, i64, i64 }
%struct.anon.94 = type { i64, i64 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.rcuwait = type { ptr }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.cpu_stop_work = type { %struct.list_head, ptr, i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.132, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
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
%struct.css_set = type { [14 x ptr], %struct.refcount_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, [14 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i8, %struct.callback_head }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.cgroup = type { %struct.cgroup_subsys_state, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.cgroup_file, %struct.cgroup_file, i16, i16, i16, i16, [14 x ptr], ptr, %struct.list_head, [14 x %struct.list_head], ptr, ptr, ptr, %struct.list_head, %struct.cgroup_base_stat, %struct.cgroup_base_stat, %struct.prev_cputime, %struct.list_head, %struct.mutex, %struct.wait_queue_head, %struct.work_struct, %struct.psi_group, %struct.cgroup_bpf, %struct.atomic_t, %struct.cgroup_freezer_state, [0 x i64] }
%struct.cgroup_file = type { ptr, i32, %struct.timer_list }
%struct.cgroup_base_stat = type { %struct.task_cputime }
%struct.task_cputime = type { i64, i64, i64 }
%struct.cgroup_bpf = type { [23 x ptr], [23 x %struct.list_head], [23 x i32], %struct.list_head, ptr, %struct.percpu_ref, %struct.work_struct }
%struct.cgroup_freezer_state = type { i8, i32, i32, i32 }
%struct.rq_flags = type { i32, %struct.pin_cookie, i32 }
%struct.pin_cookie = type { i32 }
%struct.psi_trigger = type { i32, i64, %struct.list_head, ptr, %struct.wait_queue_head, i32, %struct.psi_window, i64 }
%struct.psi_window = type { i64, i64, i64, i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.3, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.3 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@psi_disabled = dso_local global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } zeroinitializer, align 32
@psi_cgroups_enabled = dso_local global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } }, [24 x i8] zeroinitializer }, align 32
@__setup_str_setup_psi = internal constant [5 x i8] c"psi=\00", section ".init.rodata", align 1
@__setup_setup_psi = internal global %struct.obs_kernel_param { ptr @__setup_str_setup_psi, ptr @setup_psi, i32 0 }, section ".init.setup", align 4
@system_group_pcpu = weak dso_local global %struct.psi_group_cpu zeroinitializer, section ".data..percpu", align 128
@psi_system = dso_local global { %struct.psi_group, [184 x i8] } { %struct.psi_group { %struct.mutex zeroinitializer, ptr @system_group_pcpu, [6 x i64] zeroinitializer, i64 0, i64 0, %struct.delayed_work zeroinitializer, [2 x [6 x i64]] zeroinitializer, [6 x [3 x i32]] zeroinitializer, ptr null, %struct.timer_list zeroinitializer, %struct.wait_queue_head zeroinitializer, %struct.atomic_t zeroinitializer, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, [6 x i32] zeroinitializer, i32 0, i64 0, [6 x i64] zeroinitializer, i64 0, i64 0 }, [184 x i8] zeroinitializer }, align 32
@psi_enable = internal global { i8, [31 x i8] } zeroinitializer, align 32
@psi_period = internal unnamed_addr global i64 0, section ".data..read_mostly", align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@psi_cgroup_free.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"kernel/sched/psi.c\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"psi: trigger leak\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s avg10=%lu.%02lu avg60=%lu.%02lu avg300=%lu.%02lu total=%llu\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"some\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"some %u %u\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"full %u %u\00", [21 x i8] zeroinitializer }, align 32
@psi_trigger_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&t->event_wait\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"psimon\00", [25 x i8] zeroinitializer }, align 32
@psi_trigger_destroy.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__initcall__kmod_psi__517_1395_psi_proc_init6 = internal global ptr @psi_proc_init, section ".initcall6.init", align 4
@__pcpu_unique_system_group_pcpu = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@group_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"&per_cpu_ptr(group->pcpu, cpu)->seq\00", [60 x i8] zeroinitializer }, align 32
@group_init.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&group->avgs_work)->work)\00", [50 x i8] zeroinitializer }, align 32
@group_init.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&group->avgs_work)->timer\00", [36 x i8] zeroinitializer }, align 32
@group_init.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&group->avgs_lock\00", [46 x i8] zeroinitializer }, align 32
@group_init.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&group->trigger_lock\00", [43 x i8] zeroinitializer }, align 32
@group_init.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&group->poll_wait\00", [46 x i8] zeroinitializer }, align 32
@group_init.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&group->poll_timer)\00", [43 x i8] zeroinitializer }, align 32
@psi_bug = internal unnamed_addr global i1 false, section ".data..read_mostly", align 4
@psi_flags_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str, i32 793, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\013psi: inconsistent task state! task=%d:%s cpu=%d psi_flags=%x clear=%x set=%x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"psi_flags_change\00", [47 x i8] zeroinitializer }, align 32
@psi_flags_change._entry_ptr = internal global ptr @psi_flags_change._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@psi_group_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str, i32 725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013psi: task underflow! cpu=%d t=%d tasks=[%u %u %u %u %u] clear=%x set=%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"psi_group_change\00", [47 x i8] zeroinitializer }, align 32
@psi_group_change._entry_ptr = internal global ptr @psi_group_change._entry, section ".printk_index", align 4
@runqueues = external dso_local global %struct.rq, section ".data..percpu..shared_aligned", align 128
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@psi_schedule_poll_work.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.31 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@rq_pin_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@balance_push_callback = external dso_local global %struct.callback_head, align 4
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kernel/sched/sched.h\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"rq->balance_callback && rq->balance_callback != &balance_push_callback\00", [57 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pressure\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pressure/io\00", [20 x i8] zeroinitializer }, align 32
@psi_io_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @psi_io_open, ptr @seq_read, ptr null, ptr @psi_io_write, ptr @seq_lseek, ptr @psi_fop_release, ptr @psi_fop_poll, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pressure/memory\00", [16 x i8] zeroinitializer }, align 32
@psi_memory_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @psi_memory_open, ptr @seq_read, ptr null, ptr @psi_memory_write, ptr @seq_lseek, ptr @psi_fop_release, ptr @psi_fop_poll, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pressure/cpu\00", [19 x i8] zeroinitializer }, align 32
@psi_cpu_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @psi_cpu_open, ptr @seq_read, ptr null, ptr @psi_cpu_write, ptr @seq_lseek, ptr @psi_fop_release, ptr @psi_fop_poll, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.41 = private unnamed_addr constant [13 x i8] c"psi_disabled\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 157, i32 1 }
@___asan_gen_.44 = private unnamed_addr constant [20 x i8] c"psi_cgroups_enabled\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 158, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant [11 x i8] c"psi_system\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 187, i32 18 }
@___asan_gen_.50 = private unnamed_addr constant [11 x i8] c"psi_enable\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 161, i32 13 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 977, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1074, i32 17 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1075, i32 14 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1075, i32 23 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1096, i32 18 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1098, i32 23 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1126, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1133, i32 10 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1192, i32 22 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 200, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 203, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 204, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 206, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 214, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 215, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 791, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 721, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 271, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 586, i32 9 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 695, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 723, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant [24 x i8] c"../kernel/sched/sched.h\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1545, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1388, i32 14 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1389, i32 15 }
@___asan_gen_.173 = private unnamed_addr constant [16 x i8] c"psi_io_proc_ops\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1358, i32 30 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1390, i32 15 }
@___asan_gen_.179 = private unnamed_addr constant [20 x i8] c"psi_memory_proc_ops\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1367, i32 30 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1391, i32 15 }
@___asan_gen_.185 = private unnamed_addr constant [17 x i8] c"psi_cpu_proc_ops\00", align 1
@___asan_gen_.186 = private constant [22 x i8] c"../kernel/sched/psi.c\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1376, i32 30 }
@___asan_gen_.188 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 156, i32 2 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__initcall__kmod_psi__517_1395_psi_proc_init6, ptr @__setup_setup_psi, ptr @psi_flags_change._entry, ptr @psi_flags_change._entry_ptr, ptr @psi_group_change._entry, ptr @psi_group_change._entry_ptr, ptr @psi_disabled, ptr @psi_cgroups_enabled, ptr @psi_system, ptr @psi_enable, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @psi_trigger_create.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @group_init.__key, ptr @.str.10, ptr @group_init.__key.11, ptr @.str.12, ptr @group_init.__key.13, ptr @.str.14, ptr @group_init.__key.15, ptr @.str.16, ptr @group_init.__key.17, ptr @.str.18, ptr @group_init.__key.19, ptr @.str.20, ptr @group_init.__key.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @psi_io_proc_ops, ptr @.str.36, ptr @psi_memory_proc_ops, ptr @.str.37, ptr @psi_cpu_proc_ops, ptr @.str.40], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psi_disabled to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psi_cgroups_enabled to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psi_system to i32), i32 744, i32 928, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psi_enable to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psi_trigger_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @group_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @group_init.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @group_init.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @group_init.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @group_init.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @group_init.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @group_init.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psi_flags_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psi_group_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psi_io_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psi_memory_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psi_cpu_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @setup_psi(ptr noundef %str) #0 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @kstrtobool(ptr noundef %str, ptr noundef nonnull @psi_enable) #14
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @psi_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @psi_enable, align 1, !range !120
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @static_key_enable(ptr noundef nonnull @psi_disabled) #14
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call zeroext i1 @cgroup_psi_enabled() #14
  br i1 %call, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  tail call void @static_key_disable(ptr noundef nonnull @psi_cgroups_enabled) #14
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %call.i = tail call i32 @jiffies_to_usecs(i32 noundef 201) #14
  %conv.i = zext i32 %call.i to i64
  %mul.i = mul nuw nsw i64 %conv.i, 1000
  store i64 %mul.i, ptr @psi_period, align 8
  tail call fastcc void @group_init(ptr noundef nonnull @psi_system)
  br label %return

return:                                           ; preds = %if.end2, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cgroup_psi_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @group_init(ptr noundef %group) unnamed_addr #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call102 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %cmp103 = icmp ult i32 %call102, %0
  br i1 %cmp103, label %do.body1.lr.ph, label %for.end

do.body1.lr.ph:                                   ; preds = %entry
  %pcpu = getelementptr inbounds %struct.psi_group, ptr %group, i32 0, i32 1
  br label %do.body1

do.body1:                                         ; preds = %do.body1, %do.body1.lr.ph
  %call104 = phi i32 [ %call102, %do.body1.lr.ph ], [ %call, %do.body1 ]
  %1 = ptrtoint ptr %pcpu to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu, align 4
  %3 = ptrtoint ptr %2 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call104
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, %3
  %6 = inttoptr i32 %add to ptr
  %dep_map.i = getelementptr inbounds %struct.seqcount, ptr %6, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @group_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %6, align 4
  %call = tail call i32 @cpumask_next(i32 noundef %call104, ptr noundef nonnull @__cpu_possible_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %8
  br i1 %cmp, label %do.body1, label %for.end

for.end:                                          ; preds = %do.body1, %entry
  %call5 = tail call i64 @sched_clock() #14
  %avg_last_update = getelementptr inbounds %struct.psi_group, ptr %group, i32 0, i32 3
  %9 = ptrtoint ptr %avg_last_update to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %call5, ptr %avg_last_update, align 8
  %10 = load i64, ptr @psi_period, align 8
  %add7 = add i64 %10, %call5
  %avg_next_update = getelementptr inbounds %struct.psi_group, ptr %group, i32 0, i32 4
  %11 = ptrtoint ptr %avg_next_update to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %add7, ptr %avg_next_update, align 8
  %avgs_work = getelementptr inbounds %struct.psi_group, ptr %group, i32 0, i32 5
  tail call void @__init_work(ptr noundef %avgs_work, i32 noundef 0) #14
  %12 = ptrtoint ptr %avgs_work to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -64, ptr %avgs_work, align 8
  %lockdep_map = getelementptr inbounds %struct.psi_group, ptr %group, i32 0, i32 5, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @group_init.__key.11, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry16 = getelementptr inbounds %struct.psi_group, ptr %group, i32 0, i32 5, i32 0, i32 1
  %13 = ptrtoint ptr %entry16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entry16, ptr %entry16, align 4
  %prev.i = getelementptr inbounds %struct.psi_group, ptr %group, i32 0, i32 5, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry16, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.psi_group, ptr %group, i32 0, i32 5, i32 0, i32 2
  %15 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @psi_avgs_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.psi_group, ptr %group, i32 0, i32 5, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.14, ptr noundef nonnull @group_init.__key.13) #14
  tail call void @__mutex_init(ptr noundef %group, ptr noundef nonnull @.str.16, ptr noundef nonnull @group_init.__key.15) #14
  %trigger_lock = getelementptr inbounds %struct.psi_group, ptr %group, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %trigger_lock, ptr noundef nonnull @.str.18, ptr noundef nonnull @group_init.__key.17) #14
  %triggers = getelementptr inbounds %struct.psi_group, ptr %group, i32 0, i32 13
  %16 = ptrtoint ptr %triggers to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %triggers, ptr %triggers, align 4
  %prev.i101 = getelementptr inbounds %struct.psi_group, ptr %group, i32 0, i32 13, i32 1
  %17 = ptrtoint ptr %prev.i101 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %triggers, ptr %prev.i101, align 4
  %nr_triggers = getelementptr inbounds %struct.psi_group, ptr %group, i32 0, i32 14
  %poll_min_period = getelementptr inbounds %struct.psi_group, ptr %group, i32 0, i32 16
  %18 = call ptr @memset(ptr %nr_triggers, i32 0, i32 28)
  %19 = ptrtoint ptr %poll_min_period to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 4294967295, ptr %poll_min_period, align 8
  %polling_total = getelementptr inbounds %struct.psi_group, ptr %group, i32 0, i32 17
  %20 = call ptr @memset(ptr %polling_total, i32 0, i32 48)
  %polling_next_update = getelementptr inbounds %struct.psi_group, ptr %group, i32 0, i32 18
  %21 = ptrtoint ptr %polling_next_update to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 -1, ptr %polling_next_update, align 8
  %polling_until = getelementptr inbounds %struct.psi_group, ptr %group, i32 0, i32 19
  %22 = ptrtoint ptr %polling_until to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %polling_until, align 8
  %poll_wait = getelementptr inbounds %struct.psi_group, ptr %group, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %poll_wait, ptr noundef nonnull @.str.20, ptr noundef nonnull @group_init.__key.19) #14
  %poll_timer = getelementptr inbounds %struct.psi_group, ptr %group, i32 0, i32 9
  tail call void @init_timer_key(ptr noundef %poll_timer, ptr noundef nonnull @poll_timer_fn, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @group_init.__key.21) #14
  %poll_task = getelementptr inbounds %struct.psi_group, ptr %group, i32 0, i32 8
  %23 = ptrtoint ptr %poll_task to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr null, ptr %poll_task, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @psi_task_change(ptr noundef %task, i32 noundef %clear, i32 noundef %set) local_unnamed_addr #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %stack.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 1
  %0 = ptrtoint ptr %stack.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stack.i, align 4
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %cpu.i, align 4
  %pid = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 68
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 8
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %psi_flags.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 156
  %6 = ptrtoint ptr %psi_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %psi_flags.i, align 32
  %and.i = and i32 %7, %set
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and2.i = and i32 %7, %clear
  %cmp.not.i = icmp eq i32 %and2.i, %clear
  %or.cond.i = and i1 %tobool.not.i, %cmp.not.i
  br i1 %or.cond.i, label %psi_flags_change.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end
  %.b.i = load i1, ptr @psi_bug, align 4
  br i1 %.b.i, label %psi_flags_change.exit, label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 101
  %8 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %cpu.i, align 4
  %call5.i = tail call i32 (ptr, ...) @_printk_deferred(ptr noundef nonnull @.str.23, i32 noundef %5, ptr noundef %comm.i, i32 noundef %9, i32 noundef %7, i32 noundef %clear, i32 noundef %set) #17
  store i1 true, ptr @psi_bug, align 4
  br label %psi_flags_change.exit

psi_flags_change.exit:                            ; preds = %do.end.i, %land.lhs.true.i, %if.end
  %neg.i = xor i32 %clear, -1
  %10 = ptrtoint ptr %psi_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %psi_flags.i, align 32
  %and7.i = and i32 %11, %neg.i
  %or.i = or i32 %and7.i, %set
  store i32 %or.i, ptr %psi_flags.i, align 32
  %call.i = tail call i64 @sched_clock() #14
  %and = and i32 %clear, 4
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %psi_flags_change.exit
  %flags = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 3
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and3 = and i32 %13, 32
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %call5 = tail call ptr @wq_worker_last_func(ptr noundef %task) #14
  %cmp = icmp ne ptr %call5, @psi_avgs_work
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %psi_flags_change.exit
  %14 = phi i1 [ true, %land.lhs.true ], [ true, %psi_flags_change.exit ], [ %cmp, %land.rhs ]
  %cgroups.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 164
  br label %if.end.i

if.end.i:                                         ; preds = %while.body, %land.end
  %iter.037 = phi ptr [ null, %land.end ], [ %iter.1, %while.body ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @psi_cgroups_enabled, i32 1), ptr blockaddress(@psi_task_change, %iterate_groups.exit)) #14
          to label %if.then4.i [label %iterate_groups.exit], !srcloc !121

if.then4.i:                                       ; preds = %if.end.i
  %tobool5.not.i = icmp eq ptr %iter.037, null
  br i1 %tobool5.not.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.then4.i
  %15 = ptrtoint ptr %cgroups.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cgroups.i, align 16
  %dfl_cgrp.i = getelementptr inbounds %struct.css_set, ptr %16, i32 0, i32 3
  br label %if.end8.i

if.else.i:                                        ; preds = %if.then4.i
  %parent.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %iter.037, i32 0, i32 12
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i, %if.then6.i
  %cgroup.0.in.i = phi ptr [ %parent.i.i, %if.else.i ], [ %dfl_cgrp.i, %if.then6.i ]
  %17 = ptrtoint ptr %cgroup.0.in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %cgroup.0.i = load ptr, ptr %cgroup.0.in.i, align 4
  %tobool9.not.i = icmp eq ptr %cgroup.0.i, null
  br i1 %tobool9.not.i, label %while.body.thread, label %land.lhs.true.i26

land.lhs.true.i26:                                ; preds = %if.end8.i
  %parent.i23.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %cgroup.0.i, i32 0, i32 12
  %18 = ptrtoint ptr %parent.i23.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent.i23.i, align 8
  %tobool11.not.i = icmp eq ptr %19, null
  br i1 %tobool11.not.i, label %while.body.thread, label %cleanup.i

cleanup.i:                                        ; preds = %land.lhs.true.i26
  %psi.i.i = getelementptr inbounds %struct.cgroup, ptr %cgroup.0.i, i32 0, i32 33
  br label %iterate_groups.exit

iterate_groups.exit:                              ; preds = %cleanup.i, %if.end.i
  %iter.1 = phi ptr [ %cgroup.0.i, %cleanup.i ], [ @psi_system, %if.end.i ]
  %retval.1.i = phi ptr [ %psi.i.i, %cleanup.i ], [ @psi_system, %if.end.i ]
  %tobool11.not = icmp eq ptr %retval.1.i, null
  br i1 %tobool11.not, label %cleanup, label %while.body

while.body.thread:                                ; preds = %land.lhs.true.i26, %if.end8.i
  tail call fastcc void @psi_group_change(ptr noundef nonnull @psi_system, i32 noundef %3, i32 noundef %clear, i32 noundef %set, i64 noundef %call.i, i1 noundef zeroext %14)
  br label %cleanup

while.body:                                       ; preds = %iterate_groups.exit
  tail call fastcc void @psi_group_change(ptr noundef nonnull %retval.1.i, i32 noundef %3, i32 noundef %clear, i32 noundef %set, i64 noundef %call.i, i1 noundef zeroext %14)
  %cmp.i = icmp eq ptr %iter.1, @psi_system
  br i1 %cmp.i, label %cleanup, label %if.end.i

cleanup:                                          ; preds = %while.body, %while.body.thread, %iterate_groups.exit, %entry
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wq_worker_last_func(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @psi_avgs_work(ptr noundef %work) #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %changed_states = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %changed_states) #14
  %0 = ptrtoint ptr %changed_states to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %changed_states, align 4, !annotation !122
  %add.ptr = getelementptr i8, ptr %work, i32 -160
  tail call void @mutex_lock_nested(ptr noundef %add.ptr, i32 noundef 0) #14
  %call1 = tail call i64 @sched_clock() #14
  call fastcc void @collect_percpu_times(ptr noundef %add.ptr, i32 noundef 0, ptr noundef nonnull %changed_states)
  %1 = ptrtoint ptr %changed_states to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %changed_states, align 4
  %and = and i32 %2, 64
  %tobool.not = icmp eq i32 %and, 0
  %avg_next_update = getelementptr i8, ptr %work, i32 -8
  %3 = ptrtoint ptr %avg_next_update to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %avg_next_update, align 8
  %cmp.not = icmp ult i64 %call1, %4
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @update_averages(ptr noundef %add.ptr, i64 noundef %call1)
  %5 = ptrtoint ptr %avg_next_update to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %call2, ptr %avg_next_update, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br i1 %tobool.not, label %if.end9, label %if.then5

if.then5:                                         ; preds = %if.end
  %6 = ptrtoint ptr %avg_next_update to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %avg_next_update, align 8
  %sub = sub i64 %7, %call1
  %call7 = call i32 @nsecs_to_jiffies(i64 noundef %sub) #14
  %add = add i32 %call7, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %work, i32 noundef %add) #14
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end
  call void @mutex_unlock(ptr noundef %add.ptr) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %changed_states) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @psi_group_change(ptr noundef %group, i32 noundef %cpu, i32 noundef %clear, i32 noundef %set, i64 noundef %now, i1 noundef zeroext %wake_clock) unnamed_addr #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %pcpu = getelementptr inbounds %struct.psi_group, ptr %group, i32 0, i32 1
  %0 = ptrtoint ptr %pcpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcpu, align 4
  %2 = ptrtoint ptr %1 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %add = add i32 %4, %2
  %5 = inttoptr i32 %add to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %__seqprop_assert.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %entry
  %7 = tail call i32 @llvm.read_register.i32(metadata !110) #14
  %and.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %10, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !123
  %11 = tail call i32 @llvm.read_register.i32(metadata !110) #14
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %16, ptrtoint (ptr @lockdep_recursion to i32)
  %17 = inttoptr i32 %add.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !124
  %20 = tail call i32 @llvm.read_register.i32(metadata !110) #14
  %and.i.i.i7.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  %tobool20.not.i = icmp eq i32 %19, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %24 = tail call i32 @llvm.read_register.i32(metadata !110) #14
  %and.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i, align 4
  %cmp.i = icmp eq i32 %27, 0
  br i1 %cmp.i, label %land.rhs22.i, label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %28 = tail call i32 @llvm.read_register.i32(metadata !110) #14
  %and.i.i.i9.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %31, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !125
  %32 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %35, ptrtoint (ptr @hardirqs_enabled to i32)
  %36 = inttoptr i32 %add47.i to ptr
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %36, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !126
  %39 = tail call i32 @llvm.read_register.i32(metadata !110) #14
  %and.i.i.i12.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %42, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  %tobool54.not.i = icmp eq i32 %38, 0
  br i1 %tobool54.not.i, label %__seqprop_assert.exit, label %land.rhs58.i

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %__seqprop_assert.exit, label %if.then.i, !prof !127

if.then.i:                                        ; preds = %land.rhs58.i
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 271, i32 noundef 9, ptr noundef null) #14
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i, %land.rhs22.i, %land.rhs.i, %land.lhs.true.i, %entry
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %5, align 4
  %inc.i.i.i = add i32 %44, 1
  store i32 %inc.i.i.i, ptr %5, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !128
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %5, i32 0, i32 1
  %45 = tail call ptr @llvm.returnaddress(i32 0) #14
  %46 = ptrtoint ptr %45 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %46) #14
  %state_start.i = getelementptr inbounds %struct.psi_group_cpu, ptr %5, i32 0, i32 4
  %47 = ptrtoint ptr %state_start.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %state_start.i, align 8
  %sub.i = sub i64 %now, %48
  %conv.i = trunc i64 %sub.i to i32
  store i64 %now, ptr %state_start.i, align 8
  %state_mask.i = getelementptr inbounds %struct.psi_group_cpu, ptr %5, i32 0, i32 2
  %49 = ptrtoint ptr %state_mask.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %state_mask.i, align 4
  %and.i = and i32 %50, 1
  %tobool.not.i152 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i152, label %if.end9.i, label %if.then.i154

if.then.i154:                                     ; preds = %__seqprop_assert.exit
  %times.i = getelementptr inbounds %struct.psi_group_cpu, ptr %5, i32 0, i32 3
  %51 = ptrtoint ptr %times.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %times.i, align 8
  %add.i153 = add i32 %52, %conv.i
  store i32 %add.i153, ptr %times.i, align 8
  %and3.i = and i32 %50, 2
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end9.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then.i154
  %arrayidx7.i = getelementptr %struct.psi_group_cpu, ptr %5, i32 0, i32 3, i32 1
  %53 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx7.i, align 4
  %add8.i = add i32 %54, %conv.i
  store i32 %add8.i, ptr %arrayidx7.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then5.i, %if.then.i154, %__seqprop_assert.exit
  %and11.i = and i32 %50, 4
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end25.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end9.i
  %arrayidx15.i = getelementptr %struct.psi_group_cpu, ptr %5, i32 0, i32 3, i32 2
  %55 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx15.i, align 8
  %add16.i = add i32 %56, %conv.i
  store i32 %add16.i, ptr %arrayidx15.i, align 8
  %and18.i = and i32 %50, 8
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end25.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.then13.i
  %arrayidx22.i = getelementptr %struct.psi_group_cpu, ptr %5, i32 0, i32 3, i32 3
  %57 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx22.i, align 4
  %add23.i = add i32 %58, %conv.i
  store i32 %add23.i, ptr %arrayidx22.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then20.i, %if.then13.i, %if.end9.i
  %and27.i = and i32 %50, 16
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end41.i, label %if.then29.i

if.then29.i:                                      ; preds = %if.end25.i
  %arrayidx31.i = getelementptr %struct.psi_group_cpu, ptr %5, i32 0, i32 3, i32 4
  %59 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx31.i, align 8
  %add32.i = add i32 %60, %conv.i
  store i32 %add32.i, ptr %arrayidx31.i, align 8
  %and34.i = and i32 %50, 32
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %if.end41.i, label %if.then36.i

if.then36.i:                                      ; preds = %if.then29.i
  %arrayidx38.i = getelementptr %struct.psi_group_cpu, ptr %5, i32 0, i32 3, i32 5
  %61 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx38.i, align 4
  %add39.i = add i32 %62, %conv.i
  store i32 %add39.i, ptr %arrayidx38.i, align 4
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then36.i, %if.then29.i, %if.end25.i
  %and43.i = and i32 %50, 64
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %record_times.exit, label %if.then45.i

if.then45.i:                                      ; preds = %if.end41.i
  %arrayidx47.i = getelementptr %struct.psi_group_cpu, ptr %5, i32 0, i32 3, i32 6
  %63 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx47.i, align 8
  %add48.i = add i32 %64, %conv.i
  store i32 %add48.i, ptr %arrayidx47.i, align 8
  br label %record_times.exit

record_times.exit:                                ; preds = %if.then45.i, %if.end41.i
  %tobool.not178 = icmp eq i32 %clear, 0
  br i1 %tobool.not178, label %for.cond40.preheader, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %record_times.exit
  %tasks = getelementptr inbounds %struct.psi_group_cpu, ptr %5, i32 0, i32 1
  %arrayidx28 = getelementptr %struct.psi_group_cpu, ptr %5, i32 0, i32 1, i32 1
  %arrayidx30 = getelementptr %struct.psi_group_cpu, ptr %5, i32 0, i32 1, i32 2
  %arrayidx32 = getelementptr %struct.psi_group_cpu, ptr %5, i32 0, i32 1, i32 3
  %arrayidx34 = getelementptr %struct.psi_group_cpu, ptr %5, i32 0, i32 1, i32 4
  br label %for.body

for.cond40.preheader:                             ; preds = %for.inc, %record_times.exit
  %tobool41.not182 = icmp eq i32 %set, 0
  br i1 %tobool41.not182, label %sw.bb.i, label %for.body42

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %t.0180 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %m.0179 = phi i32 [ %clear, %for.body.lr.ph ], [ %and39, %for.inc ]
  %shl = shl nuw i32 1, %t.0180
  %and = and i32 %shl, %m.0179
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %for.inc, label %if.end13

if.end13:                                         ; preds = %for.body
  %arrayidx14 = getelementptr %struct.psi_group_cpu, ptr %5, i32 0, i32 1, i32 %t.0180
  %65 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx14, align 4
  %tobool15.not = icmp eq i32 %66, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end13
  %dec = add i32 %66, -1
  %67 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %dec, ptr %arrayidx14, align 4
  br label %for.inc

if.else:                                          ; preds = %if.end13
  %.b = load i1, ptr @psi_bug, align 4
  br i1 %.b, label %for.inc, label %do.end23

do.end23:                                         ; preds = %if.else
  %68 = ptrtoint ptr %tasks to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tasks, align 32
  %70 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx28, align 4
  %72 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx30, align 8
  %74 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx32, align 4
  %76 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx34, align 16
  %call35 = tail call i32 (ptr, ...) @_printk_deferred(ptr noundef nonnull @.str.25, i32 noundef %cpu, i32 noundef %t.0180, i32 noundef %69, i32 noundef %71, i32 noundef %73, i32 noundef %75, i32 noundef %77, i32 noundef %clear, i32 noundef %set) #17
  store i1 true, ptr @psi_bug, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end23, %if.else, %if.then16, %for.body
  %neg = xor i32 %shl, -1
  %and39 = and i32 %m.0179, %neg
  %inc = add i32 %t.0180, 1
  %tobool.not = icmp eq i32 %and39, 0
  br i1 %tobool.not, label %for.cond40.preheader, label %for.body

for.body42:                                       ; preds = %for.inc51, %for.cond40.preheader
  %set.addr.0185 = phi i32 [ %and54, %for.inc51 ], [ %set, %for.cond40.preheader ]
  %t.1183 = phi i32 [ %inc55, %for.inc51 ], [ 0, %for.cond40.preheader ]
  %shl43 = shl nuw i32 1, %t.1183
  %and44 = and i32 %set.addr.0185, %shl43
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %for.inc51, label %if.then46

if.then46:                                        ; preds = %for.body42
  %arrayidx48 = getelementptr %struct.psi_group_cpu, ptr %5, i32 0, i32 1, i32 %t.1183
  %78 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx48, align 4
  %inc49 = add i32 %79, 1
  store i32 %inc49, ptr %arrayidx48, align 4
  br label %for.inc51

for.inc51:                                        ; preds = %if.then46, %for.body42
  %neg53 = xor i32 %shl43, -1
  %and54 = and i32 %set.addr.0185, %neg53
  %inc55 = add i32 %t.1183, 1
  %tobool41.not = icmp eq i32 %and54, 0
  br i1 %tobool41.not, label %sw.bb.i, label %for.body42

sw.bb.i:                                          ; preds = %for.inc51, %for.cond40.preheader
  %tasks59 = getelementptr inbounds %struct.psi_group_cpu, ptr %5, i32 0, i32 1
  %arrayidx66.i = getelementptr %struct.psi_group_cpu, ptr %5, i32 0, i32 1, i32 1
  %arrayidx68.i = getelementptr %struct.psi_group_cpu, ptr %5, i32 0, i32 1, i32 2
  %arrayidx52.i = getelementptr %struct.psi_group_cpu, ptr %5, i32 0, i32 1, i32 3
  %arrayidx30.i = getelementptr %struct.psi_group_cpu, ptr %5, i32 0, i32 1, i32 4
  %80 = ptrtoint ptr %tasks59 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %tasks59, align 4
  %tobool.i.not = icmp eq i32 %81, 0
  br i1 %tobool.i.not, label %sw.bb16.i.2, label %land.rhs.i155.1

land.rhs.i155.1:                                  ; preds = %sw.bb.i
  %82 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx68.i, align 4
  %tobool7.not.i.1 = icmp eq i32 %83, 0
  %spec.select = select i1 %tobool7.not.i.1, i32 3, i32 1
  br label %sw.bb16.i.2

sw.bb16.i.2:                                      ; preds = %land.rhs.i155.1, %sw.bb.i
  %84 = phi i32 [ 0, %sw.bb.i ], [ %spec.select, %land.rhs.i155.1 ]
  %85 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx66.i, align 4
  %tobool18.i.not.2 = icmp eq i32 %86, 0
  br i1 %tobool18.i.not.2, label %sw.bb38.i.4, label %land.rhs28.i.3

land.rhs28.i.3:                                   ; preds = %sw.bb16.i.2
  %87 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx68.i, align 4
  %89 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx30.i, align 4
  %cmp.i156.3 = icmp eq i32 %88, %90
  %spec.select192.v = select i1 %cmp.i156.3, i32 12, i32 4
  %spec.select192 = or i32 %84, %spec.select192.v
  br label %sw.bb38.i.4

sw.bb38.i.4:                                      ; preds = %land.rhs28.i.3, %sw.bb16.i.2
  %91 = phi i32 [ %84, %sw.bb16.i.2 ], [ %spec.select192, %land.rhs28.i.3 ]
  %92 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx68.i, align 4
  %94 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx52.i, align 4
  %cmp41.i.4 = icmp ugt i32 %93, %95
  br i1 %cmp41.i.4, label %sw.bb48.i.5.thread, label %sw.bb48.i.5

sw.bb48.i.5.thread:                               ; preds = %sw.bb38.i.4
  %or165.4 = or i32 %91, 16
  br label %land.rhs51.i.5

sw.bb48.i.5:                                      ; preds = %sw.bb38.i.4
  %tobool50.not.i.5 = icmp eq i32 %93, 0
  br i1 %tobool50.not.i.5, label %sw.bb63.i.6, label %land.rhs51.i.5thread-pre-split

land.rhs51.i.5thread-pre-split:                   ; preds = %sw.bb48.i.5
  %96 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %.pr = load i32, ptr %arrayidx52.i, align 4
  br label %land.rhs51.i.5

land.rhs51.i.5:                                   ; preds = %land.rhs51.i.5thread-pre-split, %sw.bb48.i.5.thread
  %97 = phi i32 [ %.pr, %land.rhs51.i.5thread-pre-split ], [ %95, %sw.bb48.i.5.thread ]
  %98 = phi i32 [ %91, %land.rhs51.i.5thread-pre-split ], [ %or165.4, %sw.bb48.i.5.thread ]
  %tobool53.not.i.5 = icmp eq i32 %97, 0
  %or165.5 = or i32 %98, 32
  %spec.select193 = select i1 %tobool53.not.i.5, i32 %or165.5, i32 %98
  br label %sw.bb63.i.6

sw.bb63.i.6:                                      ; preds = %land.rhs51.i.5, %sw.bb48.i.5
  %99 = phi i32 [ %91, %sw.bb48.i.5 ], [ %spec.select193, %land.rhs51.i.5 ]
  %100 = ptrtoint ptr %tasks59 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %tasks59, align 4
  %tobool65.not.i.6 = icmp eq i32 %101, 0
  br i1 %tobool65.not.i.6, label %lor.lhs.false.i.6, label %test_state.exit.thread161.6

lor.lhs.false.i.6:                                ; preds = %sw.bb63.i.6
  %102 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx66.i, align 4
  %tobool67.not.i.6 = icmp eq i32 %103, 0
  br i1 %tobool67.not.i.6, label %test_state.exit.6, label %test_state.exit.thread161.6

test_state.exit.6:                                ; preds = %lor.lhs.false.i.6
  %104 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx68.i, align 4
  %tobool69.i.not.6 = icmp eq i32 %105, 0
  br i1 %tobool69.i.not.6, label %test_state.exit.thread.6, label %test_state.exit.thread161.6

test_state.exit.thread161.6:                      ; preds = %test_state.exit.6, %lor.lhs.false.i.6, %sw.bb63.i.6
  %or165.6 = or i32 %99, 64
  br label %test_state.exit.thread.6

test_state.exit.thread.6:                         ; preds = %test_state.exit.thread161.6, %test_state.exit.6
  %106 = phi i32 [ %or165.6, %test_state.exit.thread161.6 ], [ %99, %test_state.exit.6 ]
  %107 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx52.i, align 4
  %tobool69.not = icmp eq i32 %108, 0
  br i1 %tobool69.not, label %if.end84, label %do.body70

do.body70:                                        ; preds = %test_state.exit.thread.6
  %109 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx, align 4
  %add78 = add i32 %110, ptrtoint (ptr @runqueues to i32)
  %111 = inttoptr i32 %add78 to ptr
  %curr = getelementptr inbounds %struct.rq, ptr %111, i32 0, i32 20
  %112 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %curr, align 8
  %in_memstall = getelementptr inbounds %struct.task_struct, ptr %113, i32 0, i32 65
  %114 = ptrtoint ptr %in_memstall to i32
  call void @__asan_load2_noabort(i32 %114)
  %bf.load = load i16, ptr %in_memstall, align 8
  %115 = and i16 %bf.load, 128
  %tobool79.not = icmp eq i16 %115, 0
  br i1 %tobool79.not, label %if.end84, label %if.then82, !prof !127

if.then82:                                        ; preds = %do.body70
  %or83 = or i32 %106, 8
  br label %if.end84

if.end84:                                         ; preds = %if.then82, %do.body70, %test_state.exit.thread.6
  %state_mask.2 = phi i32 [ %or83, %if.then82 ], [ %106, %do.body70 ], [ %106, %test_state.exit.thread.6 ]
  %116 = ptrtoint ptr %state_mask.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %state_mask.2, ptr %state_mask.i, align 4
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %46) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !129
  %117 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %5, align 4
  %inc.i.i = add i32 %118, 1
  store i32 %inc.i.i, ptr %5, align 4
  %poll_states = getelementptr inbounds %struct.psi_group, ptr %group, i32 0, i32 15
  %119 = ptrtoint ptr %poll_states to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %poll_states, align 8
  %and98 = and i32 %120, %state_mask.2
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.end101, label %if.then100

if.then100:                                       ; preds = %if.end84
  tail call fastcc void @psi_schedule_poll_work(ptr noundef %group, i32 noundef 1)
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %if.end84
  br i1 %wake_clock, label %land.lhs.true, label %if.end108

land.lhs.true:                                    ; preds = %if.end101
  %avgs_work = getelementptr inbounds %struct.psi_group, ptr %group, i32 0, i32 5
  %121 = ptrtoint ptr %avgs_work to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile i32, ptr %avgs_work, align 4
  %and1.i = and i32 %122, 1
  %tobool104.not = icmp eq i32 %and1.i, 0
  br i1 %tobool104.not, label %if.then105, label %if.end108

if.then105:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %123 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %123, ptr noundef %avgs_work, i32 noundef 201) #14
  br label %if.end108

if.end108:                                        ; preds = %if.then105, %land.lhs.true, %if.end101
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @psi_task_switch(ptr noundef %prev, ptr noundef %next, i1 noundef zeroext %sleep) local_unnamed_addr #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %stack.i = getelementptr inbounds %struct.task_struct, ptr %prev, i32 0, i32 1
  %0 = ptrtoint ptr %stack.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stack.i, align 4
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %cpu.i, align 4
  %call.i = tail call i64 @sched_clock() #14
  %pid = getelementptr inbounds %struct.task_struct, ptr %next, i32 0, i32 68
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 8
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end11, label %if.then

if.then:                                          ; preds = %entry
  %psi_flags.i = getelementptr inbounds %struct.task_struct, ptr %next, i32 0, i32 156
  %6 = ptrtoint ptr %psi_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %psi_flags.i, align 32
  %and.i = and i32 %7, 8
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %psi_flags_change.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then
  %.b.i = load i1, ptr @psi_bug, align 4
  br i1 %.b.i, label %psi_flags_change.exit, label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %next, i32 0, i32 101
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %next, i32 0, i32 1
  %8 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stack.i.i, align 4
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %cpu.i.i, align 4
  %call5.i = tail call i32 (ptr, ...) @_printk_deferred(ptr noundef nonnull @.str.23, i32 noundef %5, ptr noundef %comm.i, i32 noundef %11, i32 noundef %7, i32 noundef 0, i32 noundef 8) #17
  store i1 true, ptr @psi_bug, align 4
  br label %psi_flags_change.exit

psi_flags_change.exit:                            ; preds = %do.end.i, %land.lhs.true.i, %if.then
  %12 = ptrtoint ptr %psi_flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %psi_flags.i, align 32
  %or.i = or i32 %13, 8
  store i32 %or.i, ptr %psi_flags.i, align 32
  %psi_flags = getelementptr inbounds %struct.task_struct, ptr %prev, i32 0, i32 156
  %14 = ptrtoint ptr %psi_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %psi_flags, align 32
  %cmp = icmp eq i32 %15, %or.i
  %cgroups.i = getelementptr inbounds %struct.task_struct, ptr %next, i32 0, i32 164
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  br label %if.end.i

if.end.i:                                         ; preds = %if.end, %psi_flags_change.exit
  %iter.0157 = phi ptr [ null, %psi_flags_change.exit ], [ %iter.1139, %if.end ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @psi_cgroups_enabled, i32 1), ptr blockaddress(@psi_task_switch, %iterate_groups.exit)) #14
          to label %if.then4.i [label %iterate_groups.exit], !srcloc !121

if.then4.i:                                       ; preds = %if.end.i
  %tobool5.not.i = icmp eq ptr %iter.0157, null
  br i1 %tobool5.not.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.then4.i
  %16 = ptrtoint ptr %cgroups.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cgroups.i, align 16
  %dfl_cgrp.i = getelementptr inbounds %struct.css_set, ptr %17, i32 0, i32 3
  br label %if.end8.i

if.else.i:                                        ; preds = %if.then4.i
  %parent.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %iter.0157, i32 0, i32 12
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i, %if.then6.i
  %cgroup.0.in.i = phi ptr [ %parent.i.i, %if.else.i ], [ %dfl_cgrp.i, %if.then6.i ]
  %18 = ptrtoint ptr %cgroup.0.in.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %cgroup.0.i = load ptr, ptr %cgroup.0.in.i, align 4
  %tobool9.not.i = icmp eq ptr %cgroup.0.i, null
  br i1 %tobool9.not.i, label %while.body, label %land.lhs.true.i74

land.lhs.true.i74:                                ; preds = %if.end8.i
  %parent.i23.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %cgroup.0.i, i32 0, i32 12
  %19 = ptrtoint ptr %parent.i23.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent.i23.i, align 8
  %tobool11.not.i = icmp eq ptr %20, null
  br i1 %tobool11.not.i, label %while.body, label %cleanup.i

cleanup.i:                                        ; preds = %land.lhs.true.i74
  %psi.i.i = getelementptr inbounds %struct.cgroup, ptr %cgroup.0.i, i32 0, i32 33
  br label %iterate_groups.exit

iterate_groups.exit:                              ; preds = %cleanup.i, %if.end.i
  %iter.1 = phi ptr [ %cgroup.0.i, %cleanup.i ], [ @psi_system, %if.end.i ]
  %retval.1.i = phi ptr [ %psi.i.i, %cleanup.i ], [ @psi_system, %if.end.i ]
  %tobool5.not = icmp eq ptr %retval.1.i, null
  br i1 %tobool5.not, label %if.end11, label %while.body

while.body:                                       ; preds = %iterate_groups.exit, %land.lhs.true.i74, %if.end8.i
  %retval.1.i140 = phi ptr [ %retval.1.i, %iterate_groups.exit ], [ @psi_system, %land.lhs.true.i74 ], [ @psi_system, %if.end8.i ]
  %iter.1139 = phi ptr [ %iter.1, %iterate_groups.exit ], [ @psi_system, %land.lhs.true.i74 ], [ @psi_system, %if.end8.i ]
  br i1 %cmp, label %do.body, label %if.end

do.body:                                          ; preds = %while.body
  %pcpu = getelementptr inbounds %struct.psi_group, ptr %retval.1.i140, i32 0, i32 1
  %21 = ptrtoint ptr %pcpu to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcpu, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %add = add i32 %25, %23
  %26 = inttoptr i32 %add to ptr
  %arrayidx8 = getelementptr %struct.psi_group_cpu, ptr %26, i32 0, i32 1, i32 3
  %27 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx8, align 4
  %tobool9.not = icmp eq i32 %28, 0
  br i1 %tobool9.not, label %if.end, label %if.end11

if.end:                                           ; preds = %do.body, %while.body
  tail call fastcc void @psi_group_change(ptr noundef nonnull %retval.1.i140, i32 noundef %3, i32 noundef 0, i32 noundef 8, i64 noundef %call.i, i1 noundef zeroext true)
  %cmp.i = icmp eq ptr %iter.1139, @psi_system
  br i1 %cmp.i, label %if.end11, label %if.end.i

if.end11:                                         ; preds = %if.end, %do.body, %iterate_groups.exit, %entry
  %common.1 = phi ptr [ null, %entry ], [ null, %if.end ], [ %retval.1.i140, %do.body ], [ null, %iterate_groups.exit ]
  %pid12 = getelementptr inbounds %struct.task_struct, ptr %prev, i32 0, i32 68
  %29 = ptrtoint ptr %pid12 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pid12, align 8
  %tobool13.not = icmp eq i32 %30, 0
  br i1 %tobool13.not, label %if.end41, label %if.then14

if.then14:                                        ; preds = %if.end11
  br i1 %sleep, label %if.then16, label %if.end29

if.then16:                                        ; preds = %if.then14
  %in_memstall = getelementptr inbounds %struct.task_struct, ptr %prev, i32 0, i32 65
  %31 = ptrtoint ptr %in_memstall to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load = load i16, ptr %in_memstall, align 8
  %32 = and i16 %bf.load, 128
  %tobool17.not = icmp eq i16 %32, 0
  %spec.select = select i1 %tobool17.not, i32 12, i32 28
  %33 = lshr i16 %bf.load, 13
  %.lobit = and i16 %33, 1
  %34 = zext i16 %.lobit to i32
  br label %if.end29

if.end29:                                         ; preds = %if.then16, %if.then14
  %clear.1 = phi i32 [ 8, %if.then14 ], [ %spec.select, %if.then16 ]
  %set.0 = phi i32 [ 0, %if.then14 ], [ %34, %if.then16 ]
  %psi_flags.i75 = getelementptr inbounds %struct.task_struct, ptr %prev, i32 0, i32 156
  %35 = ptrtoint ptr %psi_flags.i75 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %psi_flags.i75, align 32
  %and.i76 = and i32 %36, %set.0
  %tobool.not.i77 = icmp eq i32 %and.i76, 0
  %and2.i = and i32 %36, %clear.1
  %cmp.not.i = icmp eq i32 %and2.i, %clear.1
  %or.cond.i = and i1 %tobool.not.i77, %cmp.not.i
  br i1 %or.cond.i, label %psi_flags_change.exit88, label %land.lhs.true.i79

land.lhs.true.i79:                                ; preds = %if.end29
  %.b.i78 = load i1, ptr @psi_bug, align 4
  br i1 %.b.i78, label %psi_flags_change.exit88, label %do.end.i85

do.end.i85:                                       ; preds = %land.lhs.true.i79
  %comm.i81 = getelementptr inbounds %struct.task_struct, ptr %prev, i32 0, i32 101
  %37 = ptrtoint ptr %stack.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %stack.i, align 4
  %cpu.i.i83 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %cpu.i.i83 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %cpu.i.i83, align 4
  %call5.i84 = tail call i32 (ptr, ...) @_printk_deferred(ptr noundef nonnull @.str.23, i32 noundef %30, ptr noundef %comm.i81, i32 noundef %40, i32 noundef %36, i32 noundef %clear.1, i32 noundef %set.0) #17
  store i1 true, ptr @psi_bug, align 4
  br label %psi_flags_change.exit88

psi_flags_change.exit88:                          ; preds = %do.end.i85, %land.lhs.true.i79, %if.end29
  %neg.i = xor i32 %clear.1, -1
  %41 = ptrtoint ptr %psi_flags.i75 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %psi_flags.i75, align 32
  %and7.i = and i32 %42, %neg.i
  %or.i86 = or i32 %and7.i, %set.0
  store i32 %or.i86, ptr %psi_flags.i75, align 32
  %cgroups.i93 = getelementptr inbounds %struct.task_struct, ptr %prev, i32 0, i32 164
  br label %if.end.i90

if.end.i90:                                       ; preds = %while.body34, %psi_flags_change.exit88
  %iter.2158 = phi ptr [ null, %psi_flags_change.exit88 ], [ %iter.3, %while.body34 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @psi_cgroups_enabled, i32 1), ptr blockaddress(@psi_task_switch, %iterate_groups.exit109)) #14
          to label %if.then4.i92 [label %iterate_groups.exit109], !srcloc !121

if.then4.i92:                                     ; preds = %if.end.i90
  %tobool5.not.i91 = icmp eq ptr %iter.2158, null
  br i1 %tobool5.not.i91, label %if.then6.i95, label %if.else.i97

if.then6.i95:                                     ; preds = %if.then4.i92
  %43 = ptrtoint ptr %cgroups.i93 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cgroups.i93, align 16
  %dfl_cgrp.i94 = getelementptr inbounds %struct.css_set, ptr %44, i32 0, i32 3
  br label %if.end8.i101

if.else.i97:                                      ; preds = %if.then4.i92
  %parent.i.i96 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %iter.2158, i32 0, i32 12
  br label %if.end8.i101

if.end8.i101:                                     ; preds = %if.else.i97, %if.then6.i95
  %cgroup.0.in.i98 = phi ptr [ %parent.i.i96, %if.else.i97 ], [ %dfl_cgrp.i94, %if.then6.i95 ]
  %45 = ptrtoint ptr %cgroup.0.in.i98 to i32
  call void @__asan_load4_noabort(i32 %45)
  %cgroup.0.i99 = load ptr, ptr %cgroup.0.in.i98, align 4
  %tobool9.not.i100 = icmp eq ptr %cgroup.0.i99, null
  br i1 %tobool9.not.i100, label %iterate_groups.exit109, label %land.lhs.true.i104

land.lhs.true.i104:                               ; preds = %if.end8.i101
  %parent.i23.i102 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %cgroup.0.i99, i32 0, i32 12
  %46 = ptrtoint ptr %parent.i23.i102 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %parent.i23.i102, align 8
  %tobool11.not.i103 = icmp eq ptr %47, null
  %psi.i.i105 = getelementptr inbounds %struct.cgroup, ptr %cgroup.0.i99, i32 0, i32 33
  %spec.select153 = select i1 %tobool11.not.i103, ptr @psi_system, ptr %cgroup.0.i99
  %spec.select154 = select i1 %tobool11.not.i103, ptr @psi_system, ptr %psi.i.i105
  br label %iterate_groups.exit109

iterate_groups.exit109:                           ; preds = %land.lhs.true.i104, %if.end8.i101, %if.end.i90
  %iter.3 = phi ptr [ @psi_system, %if.end8.i101 ], [ @psi_system, %if.end.i90 ], [ %spec.select153, %land.lhs.true.i104 ]
  %retval.1.i108 = phi ptr [ @psi_system, %if.end8.i101 ], [ @psi_system, %if.end.i90 ], [ %spec.select154, %land.lhs.true.i104 ]
  %tobool32.not = icmp eq ptr %retval.1.i108, null
  %cmp33.not = icmp eq ptr %retval.1.i108, %common.1
  %or.cond = select i1 %tobool32.not, i1 true, i1 %cmp33.not
  br i1 %or.cond, label %while.end35, label %while.body34

while.body34:                                     ; preds = %iterate_groups.exit109
  tail call fastcc void @psi_group_change(ptr noundef nonnull %retval.1.i108, i32 noundef %3, i32 noundef %clear.1, i32 noundef %set.0, i64 noundef %call.i, i1 noundef zeroext true)
  %cmp.i89 = icmp eq ptr %iter.3, @psi_system
  br i1 %cmp.i89, label %if.end41, label %if.end.i90

while.end35:                                      ; preds = %iterate_groups.exit109
  br i1 %sleep, label %if.then37, label %if.end41

if.then37:                                        ; preds = %while.end35
  %and = and i32 %clear.1, 20
  %tobool38.not159 = icmp eq ptr %retval.1.i108, null
  br i1 %tobool38.not159, label %if.end41, label %for.body

for.body:                                         ; preds = %iterate_groups.exit130, %if.then37
  %group.0161 = phi ptr [ %retval.1.i129, %iterate_groups.exit130 ], [ %retval.1.i108, %if.then37 ]
  %iter.4160 = phi ptr [ %iter.5, %iterate_groups.exit130 ], [ %iter.3, %if.then37 ]
  tail call fastcc void @psi_group_change(ptr noundef nonnull %group.0161, i32 noundef %3, i32 noundef %and, i32 noundef %set.0, i64 noundef %call.i, i1 noundef zeroext true)
  %cmp.i110 = icmp eq ptr %iter.4160, @psi_system
  br i1 %cmp.i110, label %if.end41, label %if.end.i111

if.end.i111:                                      ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @psi_cgroups_enabled, i32 1), ptr blockaddress(@psi_task_switch, %iterate_groups.exit130)) #14
          to label %if.else.i118 [label %iterate_groups.exit130], !srcloc !121

if.else.i118:                                     ; preds = %if.end.i111
  %parent.i.i117 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %iter.4160, i32 0, i32 12
  %48 = ptrtoint ptr %parent.i.i117 to i32
  call void @__asan_load4_noabort(i32 %48)
  %cgroup.0.i120 = load ptr, ptr %parent.i.i117, align 4
  %tobool9.not.i121 = icmp eq ptr %cgroup.0.i120, null
  br i1 %tobool9.not.i121, label %iterate_groups.exit130, label %land.lhs.true.i125

land.lhs.true.i125:                               ; preds = %if.else.i118
  %parent.i23.i123 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %cgroup.0.i120, i32 0, i32 12
  %49 = ptrtoint ptr %parent.i23.i123 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %parent.i23.i123, align 8
  %tobool11.not.i124 = icmp eq ptr %50, null
  %psi.i.i126 = getelementptr inbounds %struct.cgroup, ptr %cgroup.0.i120, i32 0, i32 33
  %spec.select175 = select i1 %tobool11.not.i124, ptr @psi_system, ptr %cgroup.0.i120
  %spec.select176 = select i1 %tobool11.not.i124, ptr @psi_system, ptr %psi.i.i126
  br label %iterate_groups.exit130

iterate_groups.exit130:                           ; preds = %land.lhs.true.i125, %if.else.i118, %if.end.i111
  %iter.5 = phi ptr [ @psi_system, %if.else.i118 ], [ @psi_system, %if.end.i111 ], [ %spec.select175, %land.lhs.true.i125 ]
  %retval.1.i129 = phi ptr [ @psi_system, %if.else.i118 ], [ @psi_system, %if.end.i111 ], [ %spec.select176, %land.lhs.true.i125 ]
  %tobool38.not = icmp eq ptr %retval.1.i129, null
  br i1 %tobool38.not, label %if.end41, label %for.body

if.end41:                                         ; preds = %iterate_groups.exit130, %for.body, %if.then37, %while.end35, %while.body34, %if.end11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @psi_memstall_enter(ptr nocapture noundef writeonly %flags) local_unnamed_addr #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @psi_disabled, i32 1), ptr blockaddress(@psi_memstall_enter, %if.end)) #14
          to label %cleanup [label %if.end], !srcloc !130

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !110) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %in_memstall = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 65
  %4 = ptrtoint ptr %in_memstall to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %in_memstall, align 8
  %bf.lshr = lshr i16 %bf.load, 7
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %bf.cast, ptr %flags, align 4
  %tobool5.not = icmp eq i16 %bf.clear, 0
  br i1 %tobool5.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.end
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !131
  %and.i.i.i = and i32 %6, 128
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #14, !srcloc !132
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end7
  tail call void @trace_hardirqs_off() #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end7
  %7 = tail call i32 @llvm.read_register.i32(metadata !110) #14
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %12, ptrtoint (ptr @runqueues to i32)
  %13 = inttoptr i32 %add.i to ptr
  tail call void @raw_spin_rq_lock_nested(ptr noundef %13, i32 noundef 0) #14
  %core_enabled.i.i.i.i = getelementptr inbounds %struct.rq, ptr %13, i32 0, i32 81
  %14 = ptrtoint ptr %core_enabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %core_enabled.i.i.i.i, align 128
  %tobool.not.i.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i.i.i, label %__rq_lockp.exit.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i
  %core.i.i.i.i = getelementptr inbounds %struct.rq, ptr %13, i32 0, i32 79
  %16 = ptrtoint ptr %core.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %core.i.i.i.i, align 8
  br label %__rq_lockp.exit.i.i.i

__rq_lockp.exit.i.i.i:                            ; preds = %if.then.i.i.i.i, %if.end.i
  %retval.0.i.i.i.i = phi ptr [ %17, %if.then.i.i.i.i ], [ %13, %if.end.i ]
  %dep_map.i.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i.i, i32 0, i32 4
  %call1.i.i.i = tail call i32 @lock_pin_lock(ptr noundef %dep_map.i.i.i) #14
  %clock_update_flags.i.i.i = getelementptr inbounds %struct.rq, ptr %13, i32 0, i32 25
  %18 = ptrtoint ptr %clock_update_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %clock_update_flags.i.i.i, align 4
  %and.i.i8.i = and i32 %19, 3
  store i32 %and.i.i8.i, ptr %clock_update_flags.i.i.i, align 4
  %balance_callback.i.i.i = getelementptr inbounds %struct.rq, ptr %13, i32 0, i32 39
  %20 = ptrtoint ptr %balance_callback.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %balance_callback.i.i.i, align 8
  %tobool.not.i.i.i = icmp ne ptr %21, null
  %cmp.i.i.i = icmp ne ptr %21, @balance_push_callback
  %spec.select.i.i.i = and i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %land.rhs6.i.i.i, label %this_rq_lock_irq.exit

land.rhs6.i.i.i:                                  ; preds = %__rq_lockp.exit.i.i.i
  %.b48.i.i.i = load i1, ptr @rq_pin_lock.__already_done, align 1
  br i1 %.b48.i.i.i, label %this_rq_lock_irq.exit, label %if.then.i.i.i, !prof !127

if.then.i.i.i:                                    ; preds = %land.rhs6.i.i.i
  store i1 true, ptr @rq_pin_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 1545, i32 noundef 9, ptr noundef nonnull @.str.33) #14
  br label %this_rq_lock_irq.exit

this_rq_lock_irq.exit:                            ; preds = %if.then.i.i.i, %land.rhs6.i.i.i, %__rq_lockp.exit.i.i.i
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %in_memstall11 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 65
  %24 = ptrtoint ptr %in_memstall11 to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load12 = load i16, ptr %in_memstall11, align 8
  %bf.set = or i16 %bf.load12, 128
  store i16 %bf.set, ptr %in_memstall11, align 8
  %25 = load ptr, ptr %task, align 8
  tail call void @psi_task_change(ptr noundef %25, i32 noundef 0, i32 noundef 18)
  %26 = ptrtoint ptr %core_enabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %core_enabled.i.i.i.i, align 128
  %tobool.not.i.i.i18 = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i.i18, label %rq_unlock_irq.exit, label %if.then.i.i.i19

if.then.i.i.i19:                                  ; preds = %this_rq_lock_irq.exit
  %core.i.i.i = getelementptr inbounds %struct.rq, ptr %13, i32 0, i32 79
  %28 = ptrtoint ptr %core.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %core.i.i.i, align 8
  br label %rq_unlock_irq.exit

rq_unlock_irq.exit:                               ; preds = %if.then.i.i.i19, %this_rq_lock_irq.exit
  %retval.0.i.i.i = phi ptr [ %29, %if.then.i.i.i19 ], [ %13, %this_rq_lock_irq.exit ]
  %dep_map.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i, i32 0, i32 4
  %30 = insertvalue [1 x i32] undef, i32 %call1.i.i.i, 0
  tail call void @lock_unpin_lock(ptr noundef %dep_map.i.i, [1 x i32] %30) #14
  tail call void @raw_spin_rq_unlock(ptr noundef %13) #14
  tail call void @trace_hardirqs_on() #14
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !133
  br label %cleanup

cleanup:                                          ; preds = %rq_unlock_irq.exit, %if.end, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @psi_memstall_leave(ptr nocapture noundef readonly %flags) local_unnamed_addr #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @psi_disabled, i32 1), ptr blockaddress(@psi_memstall_leave, %if.end)) #14
          to label %cleanup [label %if.end], !srcloc !130

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %tobool4.not = icmp eq i32 %1, 0
  br i1 %tobool4.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.end
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !131
  %and.i.i.i = and i32 %2, 128
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #14, !srcloc !132
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end6
  tail call void @trace_hardirqs_off() #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end6
  %3 = tail call i32 @llvm.read_register.i32(metadata !110) #14
  %and.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %8, ptrtoint (ptr @runqueues to i32)
  %9 = inttoptr i32 %add.i to ptr
  tail call void @raw_spin_rq_lock_nested(ptr noundef %9, i32 noundef 0) #14
  %core_enabled.i.i.i.i = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 81
  %10 = ptrtoint ptr %core_enabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %core_enabled.i.i.i.i, align 128
  %tobool.not.i.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i.i.i, label %__rq_lockp.exit.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i
  %core.i.i.i.i = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 79
  %12 = ptrtoint ptr %core.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core.i.i.i.i, align 8
  br label %__rq_lockp.exit.i.i.i

__rq_lockp.exit.i.i.i:                            ; preds = %if.then.i.i.i.i, %if.end.i
  %retval.0.i.i.i.i = phi ptr [ %13, %if.then.i.i.i.i ], [ %9, %if.end.i ]
  %dep_map.i.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i.i, i32 0, i32 4
  %call1.i.i.i = tail call i32 @lock_pin_lock(ptr noundef %dep_map.i.i.i) #14
  %clock_update_flags.i.i.i = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 25
  %14 = ptrtoint ptr %clock_update_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %clock_update_flags.i.i.i, align 4
  %and.i.i8.i = and i32 %15, 3
  store i32 %and.i.i8.i, ptr %clock_update_flags.i.i.i, align 4
  %balance_callback.i.i.i = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 39
  %16 = ptrtoint ptr %balance_callback.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %balance_callback.i.i.i, align 8
  %tobool.not.i.i.i = icmp ne ptr %17, null
  %cmp.i.i.i = icmp ne ptr %17, @balance_push_callback
  %spec.select.i.i.i = and i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %land.rhs6.i.i.i, label %this_rq_lock_irq.exit

land.rhs6.i.i.i:                                  ; preds = %__rq_lockp.exit.i.i.i
  %.b48.i.i.i = load i1, ptr @rq_pin_lock.__already_done, align 1
  br i1 %.b48.i.i.i, label %this_rq_lock_irq.exit, label %if.then.i.i.i, !prof !127

if.then.i.i.i:                                    ; preds = %land.rhs6.i.i.i
  store i1 true, ptr @rq_pin_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 1545, i32 noundef 9, ptr noundef nonnull @.str.33) #14
  br label %this_rq_lock_irq.exit

this_rq_lock_irq.exit:                            ; preds = %if.then.i.i.i, %land.rhs6.i.i.i, %__rq_lockp.exit.i.i.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !110) #14
  %and.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %in_memstall = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 65
  %22 = ptrtoint ptr %in_memstall to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load = load i16, ptr %in_memstall, align 8
  %bf.clear = and i16 %bf.load, -129
  store i16 %bf.clear, ptr %in_memstall, align 8
  %23 = load ptr, ptr %task, align 8
  tail call void @psi_task_change(ptr noundef %23, i32 noundef 18, i32 noundef 0)
  %24 = ptrtoint ptr %core_enabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %core_enabled.i.i.i.i, align 128
  %tobool.not.i.i.i12 = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i.i12, label %rq_unlock_irq.exit, label %if.then.i.i.i13

if.then.i.i.i13:                                  ; preds = %this_rq_lock_irq.exit
  %core.i.i.i = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 79
  %26 = ptrtoint ptr %core.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %core.i.i.i, align 8
  br label %rq_unlock_irq.exit

rq_unlock_irq.exit:                               ; preds = %if.then.i.i.i13, %this_rq_lock_irq.exit
  %retval.0.i.i.i = phi ptr [ %27, %if.then.i.i.i13 ], [ %9, %this_rq_lock_irq.exit ]
  %dep_map.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i, i32 0, i32 4
  %28 = insertvalue [1 x i32] undef, i32 %call1.i.i.i, 0
  tail call void @lock_unpin_lock(ptr noundef %dep_map.i.i, [1 x i32] %28) #14
  tail call void @raw_spin_rq_unlock(ptr noundef %9) #14
  tail call void @trace_hardirqs_on() #14
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !133
  br label %cleanup

cleanup:                                          ; preds = %rq_unlock_irq.exit, %if.end, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psi_cgroup_alloc(ptr noundef %cgroup) local_unnamed_addr #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @psi_disabled, i32 1), ptr blockaddress(@psi_cgroup_alloc, %if.end)) #14
          to label %return [label %if.end], !srcloc !130

if.end:                                           ; preds = %entry
  %call4 = tail call noalias ptr @__alloc_percpu(i32 noundef 256, i32 noundef 128) #18
  %pcpu = getelementptr inbounds %struct.cgroup, ptr %cgroup, i32 0, i32 33, i32 1
  %0 = ptrtoint ptr %pcpu to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call4, ptr %pcpu, align 4
  %tobool7.not = icmp eq ptr %call4, null
  br i1 %tobool7.not, label %return, label %if.end9

if.end9:                                          ; preds = %if.end
  %psi = getelementptr inbounds %struct.cgroup, ptr %cgroup, i32 0, i32 33
  tail call fastcc void @group_init(ptr noundef %psi)
  br label %return

return:                                           ; preds = %if.end9, %if.end, %entry
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -12, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @psi_cgroup_free(ptr noundef %cgroup) local_unnamed_addr #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @psi_disabled, i32 1), ptr blockaddress(@psi_cgroup_free, %if.end)) #14
          to label %return [label %if.end], !srcloc !130

if.end:                                           ; preds = %entry
  %avgs_work = getelementptr inbounds %struct.cgroup, ptr %cgroup, i32 0, i32 33, i32 5
  %call4 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %avgs_work) #14
  %pcpu = getelementptr inbounds %struct.cgroup, ptr %cgroup, i32 0, i32 33, i32 1
  %0 = ptrtoint ptr %pcpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcpu, align 4
  tail call void @free_percpu(ptr noundef %1) #14
  %poll_states = getelementptr inbounds %struct.cgroup, ptr %cgroup, i32 0, i32 33, i32 15
  %2 = ptrtoint ptr %poll_states to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %poll_states, align 8
  %tobool7.not = icmp eq i32 %3, 0
  br i1 %tobool7.not, label %return, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %.b58 = load i1, ptr @psi_cgroup_free.__already_done, align 1
  br i1 %.b58, label %return, label %if.then23, !prof !127

if.then23:                                        ; preds = %land.rhs
  store i1 true, ptr @psi_cgroup_free.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 977, i32 noundef 9, ptr noundef nonnull @.str.1) #14
  br label %return

return:                                           ; preds = %if.then23, %land.rhs, %if.end, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cgroup_move_task(ptr noundef %task, ptr noundef %to) local_unnamed_addr #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %rf = alloca %struct.rq_flags, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rf) #14
  %0 = ptrtoint ptr %rf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rf, align 4, !annotation !122
  %1 = getelementptr inbounds %struct.rq_flags, ptr %rf, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !122
  %3 = getelementptr inbounds %struct.rq_flags, ptr %rf, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !122
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @psi_disabled, i32 1), ptr blockaddress(@cgroup_move_task, %if.end36)) #14
          to label %do.body [label %if.end36], !srcloc !130

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !134
  %cgroups25 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 164
  %5 = ptrtoint ptr %cgroups25 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %to, ptr %cgroups25, align 16
  br label %cleanup

if.end36:                                         ; preds = %entry
  %call37 = call ptr @task_rq_lock(ptr noundef %task, ptr noundef nonnull %rf) #14
  %psi_flags = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 156
  %6 = ptrtoint ptr %psi_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %psi_flags, align 32
  %tobool38.not = icmp eq i32 %7, 0
  br i1 %tobool38.not, label %if.end84.critedge, label %if.then39

if.then39:                                        ; preds = %if.end36
  call void @psi_task_change(ptr noundef %task, i32 noundef %7, i32 noundef 0)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !135
  %cgroups70.c97 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 164
  %8 = ptrtoint ptr %cgroups70.c97 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %to, ptr %cgroups70.c97, align 16
  call void @psi_task_change(ptr noundef %task, i32 noundef 0, i32 noundef %7)
  br label %if.end84

if.end84.critedge:                                ; preds = %if.end36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !135
  %cgroups70.c = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 164
  %9 = ptrtoint ptr %cgroups70.c to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %to, ptr %cgroups70.c, align 16
  br label %if.end84

if.end84:                                         ; preds = %if.end84.critedge, %if.then39
  %clock_update_flags.i.i = getelementptr inbounds %struct.rq, ptr %call37, i32 0, i32 25
  %10 = ptrtoint ptr %clock_update_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clock_update_flags.i.i, align 4
  %cmp.i.i = icmp ugt i32 %11, 2
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end84
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %3, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end84
  %core_enabled.i.i.i = getelementptr inbounds %struct.rq, ptr %call37, i32 0, i32 81
  %13 = ptrtoint ptr %core_enabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %core_enabled.i.i.i, align 128
  %tobool.not.i.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i.i, label %task_rq_unlock.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  %core.i.i.i = getelementptr inbounds %struct.rq, ptr %call37, i32 0, i32 79
  %15 = ptrtoint ptr %core.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %core.i.i.i, align 8
  br label %task_rq_unlock.exit

task_rq_unlock.exit:                              ; preds = %if.then.i.i.i, %if.end.i.i
  %retval.0.i.i.i = phi ptr [ %16, %if.then.i.i.i ], [ %call37, %if.end.i.i ]
  %dep_map.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack.i.i = load i32, ptr %1, align 4
  %18 = insertvalue [1 x i32] undef, i32 %.unpack.i.i, 0
  call void @lock_unpin_lock(ptr noundef %dep_map.i.i, [1 x i32] %18) #14
  call void @raw_spin_rq_unlock(ptr noundef %call37) #14
  %pi_lock.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 128
  %19 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rf, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pi_lock.i, i32 noundef %20) #14
  br label %cleanup

cleanup:                                          ; preds = %task_rq_unlock.exit, %do.body
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rf) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_rq_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psi_show(ptr noundef %m, ptr noundef %group, i32 noundef %res) local_unnamed_addr #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @psi_disabled, i32 1), ptr blockaddress(@psi_show, %if.end)) #14
          to label %cleanup [label %if.end], !srcloc !130

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef %group, i32 noundef 0) #14
  %call4 = tail call i64 @sched_clock() #14
  tail call fastcc void @collect_percpu_times(ptr noundef %group, i32 noundef 0, ptr noundef null)
  %avg_next_update = getelementptr inbounds %struct.psi_group, ptr %group, i32 0, i32 4
  %0 = ptrtoint ptr %avg_next_update to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %avg_next_update, align 8
  %cmp.not = icmp ult i64 %call4, %1
  br i1 %cmp.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end
  %call6 = tail call fastcc i64 @update_averages(ptr noundef %group, i64 noundef %call4)
  %2 = ptrtoint ptr %avg_next_update to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %call6, ptr %avg_next_update, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end
  tail call void @mutex_unlock(ptr noundef %group) #14
  %total17 = getelementptr inbounds %struct.psi_group, ptr %group, i32 0, i32 6
  %mul19 = shl i32 %res, 1
  %3 = mul i32 %res, 24
  %4 = add i32 %3, 360
  %uglygep = getelementptr i8, ptr %group, i32 %4
  %5 = ptrtoint ptr %uglygep to i32
  call void @__asan_load4_noabort(i32 %5)
  %avg.sroa.0.0.copyload = load i32, ptr %uglygep, align 4
  %avg.sroa.10.0.uglygep.sroa_idx = getelementptr inbounds i8, ptr %uglygep, i32 4
  %6 = ptrtoint ptr %avg.sroa.10.0.uglygep.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %avg.sroa.10.0.copyload = load i32, ptr %avg.sroa.10.0.uglygep.sroa_idx, align 4
  %avg.sroa.14.0.uglygep.sroa_idx = getelementptr inbounds i8, ptr %uglygep, i32 8
  %7 = ptrtoint ptr %avg.sroa.14.0.uglygep.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %avg.sroa.14.0.copyload = load i32, ptr %avg.sroa.14.0.uglygep.sroa_idx, align 4
  %arrayidx21 = getelementptr [6 x i64], ptr %total17, i32 0, i32 %mul19
  %8 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx21, align 8
  %10 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %9, i32 0) #19, !srcloc !136
  %asmresult.i.i.i = extractvalue { i64, i32 } %10, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %10, 1
  %11 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %9, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #19, !srcloc !137
  %asmresult10.i.i.i = extractvalue { i64, i32 } %11, 0
  %div158.i.i61 = lshr i64 %asmresult10.i.i.i, 9
  %shr = lshr i32 %avg.sroa.0.0.copyload, 11
  %and = and i32 %avg.sroa.0.0.copyload, 2047
  %mul26 = mul nuw nsw i32 %and, 100
  %shr27 = lshr i32 %mul26, 11
  %shr29 = lshr i32 %avg.sroa.10.0.copyload, 11
  %and31 = and i32 %avg.sroa.10.0.copyload, 2047
  %mul32 = mul nuw nsw i32 %and31, 100
  %shr33 = lshr i32 %mul32, 11
  %shr35 = lshr i32 %avg.sroa.14.0.copyload, 11
  %and37 = and i32 %avg.sroa.14.0.copyload, 2047
  %mul38 = mul nuw nsw i32 %and37, 100
  %shr39 = lshr i32 %mul38, 11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4, i32 noundef %shr, i32 noundef %shr27, i32 noundef %shr29, i32 noundef %shr33, i32 noundef %shr35, i32 noundef %shr39, i64 noundef %div158.i.i61) #14
  %12 = add i32 %3, 372
  %uglygep.1 = getelementptr i8, ptr %group, i32 %12
  %13 = ptrtoint ptr %uglygep.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %avg.sroa.0.0.copyload65 = load i32, ptr %uglygep.1, align 4
  %avg.sroa.10.0.uglygep.1.sroa_idx = getelementptr inbounds i8, ptr %uglygep.1, i32 4
  %14 = ptrtoint ptr %avg.sroa.10.0.uglygep.1.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %avg.sroa.10.0.copyload66 = load i32, ptr %avg.sroa.10.0.uglygep.1.sroa_idx, align 4
  %avg.sroa.14.0.uglygep.1.sroa_idx = getelementptr inbounds i8, ptr %uglygep.1, i32 8
  %15 = ptrtoint ptr %avg.sroa.14.0.uglygep.1.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %avg.sroa.14.0.copyload68 = load i32, ptr %avg.sroa.14.0.uglygep.1.sroa_idx, align 4
  %add20.1 = or i32 %mul19, 1
  %arrayidx21.1 = getelementptr [6 x i64], ptr %total17, i32 0, i32 %add20.1
  %16 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx21.1, align 8
  %18 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %17, i32 0) #19, !srcloc !136
  %asmresult.i.i.i.1 = extractvalue { i64, i32 } %18, 0
  %asmresult4.i.i.i.1 = extractvalue { i64, i32 } %18, 1
  %19 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %17, i64 %asmresult.i.i.i.1, i32 %asmresult4.i.i.i.1) #19, !srcloc !137
  %asmresult10.i.i.i.1 = extractvalue { i64, i32 } %19, 0
  %div158.i.i61.1 = lshr i64 %asmresult10.i.i.i.1, 9
  %shr.1 = lshr i32 %avg.sroa.0.0.copyload65, 11
  %and.1 = and i32 %avg.sroa.0.0.copyload65, 2047
  %mul26.1 = mul nuw nsw i32 %and.1, 100
  %shr27.1 = lshr i32 %mul26.1, 11
  %shr29.1 = lshr i32 %avg.sroa.10.0.copyload66, 11
  %and31.1 = and i32 %avg.sroa.10.0.copyload66, 2047
  %mul32.1 = mul nuw nsw i32 %and31.1, 100
  %shr33.1 = lshr i32 %mul32.1, 11
  %shr35.1 = lshr i32 %avg.sroa.14.0.copyload68, 11
  %and37.1 = and i32 %avg.sroa.14.0.copyload68, 2047
  %mul38.1 = mul nuw nsw i32 %and37.1, 100
  %shr39.1 = lshr i32 %mul38.1, 11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %shr.1, i32 noundef %shr27.1, i32 noundef %shr29.1, i32 noundef %shr33.1, i32 noundef %shr35.1, i32 noundef %shr39.1, i64 noundef %div158.i.i61.1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry
  %retval.0 = phi i32 [ -95, %entry ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @collect_percpu_times(ptr nocapture noundef %group, i32 noundef %aggregator, ptr noundef writeonly %pchanged_states) unnamed_addr #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %deltas = alloca [6 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %deltas) #14
  %0 = call ptr @memset(ptr %deltas, i32 0, i32 48)
  %call62 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %cmp63 = icmp ult i32 %call62, %1
  br i1 %cmp63, label %for.body.lr.ph, label %for.cond12.preheader

for.body.lr.ph:                                   ; preds = %entry
  %pcpu.i = getelementptr inbounds %struct.psi_group, ptr %group, i32 0, i32 1
  %arrayidx9.1 = getelementptr inbounds [6 x i64], ptr %deltas, i32 0, i32 1
  %arrayidx9.2 = getelementptr inbounds [6 x i64], ptr %deltas, i32 0, i32 2
  %arrayidx9.3 = getelementptr inbounds [6 x i64], ptr %deltas, i32 0, i32 3
  %arrayidx9.4 = getelementptr inbounds [6 x i64], ptr %deltas, i32 0, i32 4
  %arrayidx9.5 = getelementptr inbounds [6 x i64], ptr %deltas, i32 0, i32 5
  %2 = ptrtoint ptr %deltas to i32
  call void @__asan_load8_noabort(i32 %2)
  %deltas.promoted = load i64, ptr %deltas, align 8
  %3 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load8_noabort(i32 %3)
  %arrayidx9.1.promoted = load i64, ptr %arrayidx9.1, align 8
  %4 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %arrayidx9.2.promoted = load i64, ptr %arrayidx9.2, align 8
  %5 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_load8_noabort(i32 %5)
  %arrayidx9.3.promoted = load i64, ptr %arrayidx9.3, align 8
  %6 = ptrtoint ptr %arrayidx9.4 to i32
  call void @__asan_load8_noabort(i32 %6)
  %arrayidx9.4.promoted = load i64, ptr %arrayidx9.4, align 8
  %7 = ptrtoint ptr %arrayidx9.5 to i32
  call void @__asan_load8_noabort(i32 %7)
  %arrayidx9.5.promoted = load i64, ptr %arrayidx9.5, align 8
  br label %for.body

for.cond12.preheader.loopexit:                    ; preds = %for.cond.preheader.i
  %8 = ptrtoint ptr %deltas to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %add10, ptr %deltas, align 8
  %9 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %add10.1, ptr %arrayidx9.1, align 8
  %10 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %add10.2, ptr %arrayidx9.2, align 8
  %11 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %add10.3, ptr %arrayidx9.3, align 8
  %12 = ptrtoint ptr %arrayidx9.4 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %add10.4, ptr %arrayidx9.4, align 8
  %13 = ptrtoint ptr %arrayidx9.5 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %add10.5, ptr %arrayidx9.5, align 8
  br label %for.cond12.preheader

for.cond12.preheader:                             ; preds = %for.cond12.preheader.loopexit, %entry
  %changed_states.0.lcssa = phi i32 [ 0, %entry ], [ %or, %for.cond12.preheader.loopexit ]
  %nonidle_total.0.lcssa = phi i32 [ 0, %entry ], [ %add, %for.cond12.preheader.loopexit ]
  %14 = tail call i32 @llvm.umax.i32(i32 %nonidle_total.0.lcssa, i32 1)
  %15 = ptrtoint ptr %deltas to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %deltas, align 8
  %cmp164.i.i = icmp ult i64 %16, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !127

for.body:                                         ; preds = %for.cond.preheader.i, %for.body.lr.ph
  %17 = phi i64 [ %arrayidx9.5.promoted, %for.body.lr.ph ], [ %add10.5, %for.cond.preheader.i ]
  %18 = phi i64 [ %arrayidx9.4.promoted, %for.body.lr.ph ], [ %add10.4, %for.cond.preheader.i ]
  %19 = phi i64 [ %arrayidx9.3.promoted, %for.body.lr.ph ], [ %add10.3, %for.cond.preheader.i ]
  %20 = phi i64 [ %arrayidx9.2.promoted, %for.body.lr.ph ], [ %add10.2, %for.cond.preheader.i ]
  %21 = phi i64 [ %arrayidx9.1.promoted, %for.body.lr.ph ], [ %add10.1, %for.cond.preheader.i ]
  %22 = phi i64 [ %deltas.promoted, %for.body.lr.ph ], [ %add10, %for.cond.preheader.i ]
  %call66 = phi i32 [ %call62, %for.body.lr.ph ], [ %call, %for.cond.preheader.i ]
  %nonidle_total.065 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.cond.preheader.i ]
  %changed_states.064 = phi i32 [ 0, %for.body.lr.ph ], [ %or, %for.cond.preheader.i ]
  %23 = ptrtoint ptr %pcpu.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcpu.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call66
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %27, %25
  %28 = inttoptr i32 %add.i to ptr
  %dep_map.c48.i.i = getelementptr inbounds %struct.seqcount, ptr %28, i32 0, i32 1
  %times25.i = getelementptr inbounds %struct.psi_group_cpu, ptr %28, i32 0, i32 3
  %state_mask26.i = getelementptr inbounds %struct.psi_group_cpu, ptr %28, i32 0, i32 2
  %state_start27.i = getelementptr inbounds %struct.psi_group_cpu, ptr %28, i32 0, i32 4
  %times.sroa.9.0.times25.i.sroa_idx = getelementptr inbounds %struct.psi_group_cpu, ptr %28, i32 0, i32 3, i32 1
  %times.sroa.15.0.times25.i.sroa_idx = getelementptr inbounds %struct.psi_group_cpu, ptr %28, i32 0, i32 3, i32 2
  %times.sroa.21.0.times25.i.sroa_idx = getelementptr inbounds %struct.psi_group_cpu, ptr %28, i32 0, i32 3, i32 3
  %times.sroa.27.0.times25.i.sroa_idx = getelementptr inbounds %struct.psi_group_cpu, ptr %28, i32 0, i32 3, i32 4
  %times.sroa.33.0.times25.i.sroa_idx = getelementptr inbounds %struct.psi_group_cpu, ptr %28, i32 0, i32 3, i32 5
  %times.sroa.39.0.times25.i.sroa_idx = getelementptr inbounds %struct.psi_group_cpu, ptr %28, i32 0, i32 3, i32 6
  br label %do.body2.i

do.body2.i:                                       ; preds = %while.end.i, %for.body
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !138
  %and.i.i.i = and i32 %29, 128
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body2.i
  tail call void @trace_hardirqs_off() #14
  %30 = tail call ptr @llvm.returnaddress(i32 0) #14
  %31 = ptrtoint ptr %30 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %31) #14
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %31) #14
  tail call void @trace_hardirqs_on() #14
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body2.i
  %32 = tail call ptr @llvm.returnaddress(i32 0) #14
  %33 = ptrtoint ptr %32 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %33) #14
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %33) #14
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %34 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !131
  %and.i.i.i.i = and i32 %34, 128
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %seqcount_lockdep_reader_access.exit.i, !prof !139

if.then36.i.i:                                    ; preds = %do.body24.i.i
  tail call void @warn_bogus_irq_restore() #14
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %29) #14, !srcloc !140
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %28, align 4
  %and78.i = and i32 %36, 1
  %tobool.not79.i = icmp eq i32 %and78.i, 0
  br i1 %tobool.not79.i, label %while.end.i, label %do.end11.i

do.end11.i:                                       ; preds = %do.end11.i, %seqcount_lockdep_reader_access.exit.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !141
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !142
  %37 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %28, align 4
  %and.i = and i32 %38, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.end.i, label %do.end11.i

while.end.i:                                      ; preds = %do.end11.i, %seqcount_lockdep_reader_access.exit.i
  %.lcssa.i = phi i32 [ %36, %seqcount_lockdep_reader_access.exit.i ], [ %38, %do.end11.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !143
  %call.i.i = tail call i64 @sched_clock() #14
  %39 = ptrtoint ptr %times25.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %times.sroa.0.0.copyload = load i32, ptr %times25.i, align 8
  %40 = ptrtoint ptr %times.sroa.9.0.times25.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %40)
  %times.sroa.9.0.copyload = load i32, ptr %times.sroa.9.0.times25.i.sroa_idx, align 4
  %41 = ptrtoint ptr %times.sroa.15.0.times25.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %41)
  %times.sroa.15.0.copyload = load i32, ptr %times.sroa.15.0.times25.i.sroa_idx, align 8
  %42 = ptrtoint ptr %times.sroa.21.0.times25.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %42)
  %times.sroa.21.0.copyload = load i32, ptr %times.sroa.21.0.times25.i.sroa_idx, align 4
  %43 = ptrtoint ptr %times.sroa.27.0.times25.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %43)
  %times.sroa.27.0.copyload = load i32, ptr %times.sroa.27.0.times25.i.sroa_idx, align 8
  %44 = ptrtoint ptr %times.sroa.33.0.times25.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %44)
  %times.sroa.33.0.copyload = load i32, ptr %times.sroa.33.0.times25.i.sroa_idx, align 4
  %45 = ptrtoint ptr %times.sroa.39.0.times25.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %45)
  %times.sroa.39.0.copyload = load i32, ptr %times.sroa.39.0.times25.i.sroa_idx, align 8
  %46 = ptrtoint ptr %state_mask26.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %state_mask26.i, align 4
  %48 = ptrtoint ptr %state_start27.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %state_start27.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !144
  %50 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %28, align 4
  %cmp.i.i.not.i = icmp eq i32 %51, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %for.cond.preheader.i, label %do.body2.i

for.cond.preheader.i:                             ; preds = %while.end.i
  %sub.i = sub i64 %call.i.i, %49
  %52 = trunc i64 %sub.i to i32
  %and34.i = and i32 %47, 1
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  %conv38.i = select i1 %tobool35.not.i, i32 0, i32 %52
  %spec.select87 = add i32 %times.sroa.0.0.copyload, %conv38.i
  %arrayidx41.i = getelementptr %struct.psi_group_cpu, ptr %28, i32 0, i32 6, i32 %aggregator, i32 0
  %53 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx41.i, align 4
  %sub42.i = sub i32 %spec.select87, %54
  store i32 %spec.select87, ptr %arrayidx41.i, align 4
  %tobool48.not.i = icmp ne i32 %spec.select87, %54
  %spec.select = zext i1 %tobool48.not.i to i32
  %and34.1.i = and i32 %47, 2
  %tobool35.not.1.i = icmp eq i32 %and34.1.i, 0
  %conv38.1.i = select i1 %tobool35.not.1.i, i32 0, i32 %52
  %times.sroa.9.0 = add i32 %times.sroa.9.0.copyload, %conv38.1.i
  %arrayidx41.1.i = getelementptr %struct.psi_group_cpu, ptr %28, i32 0, i32 6, i32 %aggregator, i32 1
  %55 = ptrtoint ptr %arrayidx41.1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx41.1.i, align 4
  %sub42.1.i = sub i32 %times.sroa.9.0, %56
  store i32 %times.sroa.9.0, ptr %arrayidx41.1.i, align 4
  %tobool48.not.1.i = icmp eq i32 %times.sroa.9.0, %56
  %or.1.i = or i32 %spec.select, 2
  %spec.select53 = select i1 %tobool48.not.1.i, i32 %spec.select, i32 %or.1.i
  %and34.2.i = and i32 %47, 4
  %tobool35.not.2.i = icmp eq i32 %and34.2.i, 0
  %conv38.2.i = select i1 %tobool35.not.2.i, i32 0, i32 %52
  %times.sroa.15.0 = add i32 %times.sroa.15.0.copyload, %conv38.2.i
  %arrayidx41.2.i = getelementptr %struct.psi_group_cpu, ptr %28, i32 0, i32 6, i32 %aggregator, i32 2
  %57 = ptrtoint ptr %arrayidx41.2.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx41.2.i, align 4
  %sub42.2.i = sub i32 %times.sroa.15.0, %58
  store i32 %times.sroa.15.0, ptr %arrayidx41.2.i, align 4
  %tobool48.not.2.i = icmp eq i32 %times.sroa.15.0, %58
  %or.2.i = or i32 %spec.select53, 4
  %spec.select54 = select i1 %tobool48.not.2.i, i32 %spec.select53, i32 %or.2.i
  %and34.3.i = and i32 %47, 8
  %tobool35.not.3.i = icmp eq i32 %and34.3.i, 0
  %conv38.3.i = select i1 %tobool35.not.3.i, i32 0, i32 %52
  %times.sroa.21.0 = add i32 %times.sroa.21.0.copyload, %conv38.3.i
  %arrayidx41.3.i = getelementptr %struct.psi_group_cpu, ptr %28, i32 0, i32 6, i32 %aggregator, i32 3
  %59 = ptrtoint ptr %arrayidx41.3.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx41.3.i, align 4
  %sub42.3.i = sub i32 %times.sroa.21.0, %60
  store i32 %times.sroa.21.0, ptr %arrayidx41.3.i, align 4
  %tobool48.not.3.i = icmp eq i32 %times.sroa.21.0, %60
  %or.3.i = or i32 %spec.select54, 8
  %spec.select55 = select i1 %tobool48.not.3.i, i32 %spec.select54, i32 %or.3.i
  %and34.4.i = and i32 %47, 16
  %tobool35.not.4.i = icmp eq i32 %and34.4.i, 0
  %conv38.4.i = select i1 %tobool35.not.4.i, i32 0, i32 %52
  %times.sroa.27.0 = add i32 %times.sroa.27.0.copyload, %conv38.4.i
  %arrayidx41.4.i = getelementptr %struct.psi_group_cpu, ptr %28, i32 0, i32 6, i32 %aggregator, i32 4
  %61 = ptrtoint ptr %arrayidx41.4.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx41.4.i, align 4
  %sub42.4.i = sub i32 %times.sroa.27.0, %62
  store i32 %times.sroa.27.0, ptr %arrayidx41.4.i, align 4
  %tobool48.not.4.i = icmp eq i32 %times.sroa.27.0, %62
  %or.4.i = or i32 %spec.select55, 16
  %spec.select56 = select i1 %tobool48.not.4.i, i32 %spec.select55, i32 %or.4.i
  %and34.5.i = and i32 %47, 32
  %tobool35.not.5.i = icmp eq i32 %and34.5.i, 0
  %conv38.5.i = select i1 %tobool35.not.5.i, i32 0, i32 %52
  %times.sroa.33.0 = add i32 %times.sroa.33.0.copyload, %conv38.5.i
  %arrayidx41.5.i = getelementptr %struct.psi_group_cpu, ptr %28, i32 0, i32 6, i32 %aggregator, i32 5
  %63 = ptrtoint ptr %arrayidx41.5.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx41.5.i, align 4
  %sub42.5.i = sub i32 %times.sroa.33.0, %64
  store i32 %times.sroa.33.0, ptr %arrayidx41.5.i, align 4
  %tobool48.not.5.i = icmp eq i32 %times.sroa.33.0, %64
  %or.5.i = or i32 %spec.select56, 32
  %spec.select57 = select i1 %tobool48.not.5.i, i32 %spec.select56, i32 %or.5.i
  %and34.6.i = and i32 %47, 64
  %tobool35.not.6.i = icmp eq i32 %and34.6.i, 0
  %conv38.6.i = select i1 %tobool35.not.6.i, i32 0, i32 %52
  %times.sroa.39.0 = add i32 %times.sroa.39.0.copyload, %conv38.6.i
  %arrayidx41.6.i = getelementptr %struct.psi_group_cpu, ptr %28, i32 0, i32 6, i32 %aggregator, i32 6
  %65 = ptrtoint ptr %arrayidx41.6.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx41.6.i, align 4
  %sub42.6.i = sub i32 %times.sroa.39.0, %66
  store i32 %times.sroa.39.0, ptr %arrayidx41.6.i, align 4
  %tobool48.not.6.i = icmp eq i32 %times.sroa.39.0, %66
  %or.6.i = or i32 %spec.select57, 64
  %spec.select58 = select i1 %tobool48.not.6.i, i32 %spec.select57, i32 %or.6.i
  %conv = zext i32 %sub42.6.i to i64
  %call1 = tail call i32 @nsecs_to_jiffies(i64 noundef %conv) #14
  %conv8 = zext i32 %call1 to i64
  %conv7 = zext i32 %sub42.i to i64
  %mul = mul nuw i64 %conv7, %conv8
  %add10 = add i64 %mul, %22
  %conv7.1 = zext i32 %sub42.1.i to i64
  %mul.1 = mul nuw i64 %conv7.1, %conv8
  %add10.1 = add i64 %mul.1, %21
  %conv7.2 = zext i32 %sub42.2.i to i64
  %mul.2 = mul nuw i64 %conv7.2, %conv8
  %add10.2 = add i64 %mul.2, %20
  %conv7.3 = zext i32 %sub42.3.i to i64
  %mul.3 = mul nuw i64 %conv7.3, %conv8
  %add10.3 = add i64 %mul.3, %19
  %conv7.4 = zext i32 %sub42.4.i to i64
  %mul.4 = mul nuw i64 %conv7.4, %conv8
  %add10.4 = add i64 %mul.4, %18
  %conv7.5 = zext i32 %sub42.5.i to i64
  %mul.5 = mul nuw i64 %conv7.5, %conv8
  %add10.5 = add i64 %mul.5, %17
  %or = or i32 %spec.select58, %changed_states.064
  %add = add i32 %call1, %nonidle_total.065
  %call = tail call i32 @cpumask_next(i32 noundef %call66, ptr noundef nonnull @__cpu_possible_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %67 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %67
  br i1 %cmp, label %for.body, label %for.cond12.preheader.loopexit

if.then168.i.i:                                   ; preds = %for.cond12.preheader
  %conv169.i.i = trunc i64 %16 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %14
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %for.cond12.preheader
  %68 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %14, i64 %16) #19, !srcloc !145
  %asmresult1.i.i.i = extractvalue { i64, i64 } %68, 1
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %arrayidx21 = getelementptr %struct.psi_group, ptr %group, i32 0, i32 6, i32 %aggregator, i32 0
  %69 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %arrayidx21, align 8
  %add22 = add i64 %70, %dividend.addr.0.i.i
  store i64 %add22, ptr %arrayidx21, align 8
  %arrayidx16.1 = getelementptr inbounds [6 x i64], ptr %deltas, i32 0, i32 1
  %71 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %arrayidx16.1, align 8
  %cmp164.i.i.1 = icmp ult i64 %72, 4294967296
  br i1 %cmp164.i.i.1, label %if.then168.i.i.1, label %if.else174.i.i.1, !prof !127

if.else174.i.i.1:                                 ; preds = %div_u64.exit
  %73 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %14, i64 %72) #19, !srcloc !145
  %asmresult1.i.i.i.1 = extractvalue { i64, i64 } %73, 1
  br label %div_u64.exit.1

if.then168.i.i.1:                                 ; preds = %div_u64.exit
  %conv169.i.i.1 = trunc i64 %72 to i32
  %div172.i.i.1 = udiv i32 %conv169.i.i.1, %14
  %conv173.i.i.1 = zext i32 %div172.i.i.1 to i64
  br label %div_u64.exit.1

div_u64.exit.1:                                   ; preds = %if.then168.i.i.1, %if.else174.i.i.1
  %dividend.addr.0.i.i.1 = phi i64 [ %conv173.i.i.1, %if.then168.i.i.1 ], [ %asmresult1.i.i.i.1, %if.else174.i.i.1 ]
  %arrayidx21.1 = getelementptr %struct.psi_group, ptr %group, i32 0, i32 6, i32 %aggregator, i32 1
  %74 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %arrayidx21.1, align 8
  %add22.1 = add i64 %75, %dividend.addr.0.i.i.1
  store i64 %add22.1, ptr %arrayidx21.1, align 8
  %arrayidx16.2 = getelementptr inbounds [6 x i64], ptr %deltas, i32 0, i32 2
  %76 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %arrayidx16.2, align 8
  %cmp164.i.i.2 = icmp ult i64 %77, 4294967296
  br i1 %cmp164.i.i.2, label %if.then168.i.i.2, label %if.else174.i.i.2, !prof !127

if.else174.i.i.2:                                 ; preds = %div_u64.exit.1
  %78 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %14, i64 %77) #19, !srcloc !145
  %asmresult1.i.i.i.2 = extractvalue { i64, i64 } %78, 1
  br label %div_u64.exit.2

if.then168.i.i.2:                                 ; preds = %div_u64.exit.1
  %conv169.i.i.2 = trunc i64 %77 to i32
  %div172.i.i.2 = udiv i32 %conv169.i.i.2, %14
  %conv173.i.i.2 = zext i32 %div172.i.i.2 to i64
  br label %div_u64.exit.2

div_u64.exit.2:                                   ; preds = %if.then168.i.i.2, %if.else174.i.i.2
  %dividend.addr.0.i.i.2 = phi i64 [ %conv173.i.i.2, %if.then168.i.i.2 ], [ %asmresult1.i.i.i.2, %if.else174.i.i.2 ]
  %arrayidx21.2 = getelementptr %struct.psi_group, ptr %group, i32 0, i32 6, i32 %aggregator, i32 2
  %79 = ptrtoint ptr %arrayidx21.2 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %arrayidx21.2, align 8
  %add22.2 = add i64 %80, %dividend.addr.0.i.i.2
  store i64 %add22.2, ptr %arrayidx21.2, align 8
  %arrayidx16.3 = getelementptr inbounds [6 x i64], ptr %deltas, i32 0, i32 3
  %81 = ptrtoint ptr %arrayidx16.3 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %arrayidx16.3, align 8
  %cmp164.i.i.3 = icmp ult i64 %82, 4294967296
  br i1 %cmp164.i.i.3, label %if.then168.i.i.3, label %if.else174.i.i.3, !prof !127

if.else174.i.i.3:                                 ; preds = %div_u64.exit.2
  %83 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %14, i64 %82) #19, !srcloc !145
  %asmresult1.i.i.i.3 = extractvalue { i64, i64 } %83, 1
  br label %div_u64.exit.3

if.then168.i.i.3:                                 ; preds = %div_u64.exit.2
  %conv169.i.i.3 = trunc i64 %82 to i32
  %div172.i.i.3 = udiv i32 %conv169.i.i.3, %14
  %conv173.i.i.3 = zext i32 %div172.i.i.3 to i64
  br label %div_u64.exit.3

div_u64.exit.3:                                   ; preds = %if.then168.i.i.3, %if.else174.i.i.3
  %dividend.addr.0.i.i.3 = phi i64 [ %conv173.i.i.3, %if.then168.i.i.3 ], [ %asmresult1.i.i.i.3, %if.else174.i.i.3 ]
  %arrayidx21.3 = getelementptr %struct.psi_group, ptr %group, i32 0, i32 6, i32 %aggregator, i32 3
  %84 = ptrtoint ptr %arrayidx21.3 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %arrayidx21.3, align 8
  %add22.3 = add i64 %85, %dividend.addr.0.i.i.3
  store i64 %add22.3, ptr %arrayidx21.3, align 8
  %arrayidx16.4 = getelementptr inbounds [6 x i64], ptr %deltas, i32 0, i32 4
  %86 = ptrtoint ptr %arrayidx16.4 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %arrayidx16.4, align 8
  %cmp164.i.i.4 = icmp ult i64 %87, 4294967296
  br i1 %cmp164.i.i.4, label %if.then168.i.i.4, label %if.else174.i.i.4, !prof !127

if.else174.i.i.4:                                 ; preds = %div_u64.exit.3
  %88 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %14, i64 %87) #19, !srcloc !145
  %asmresult1.i.i.i.4 = extractvalue { i64, i64 } %88, 1
  br label %div_u64.exit.4

if.then168.i.i.4:                                 ; preds = %div_u64.exit.3
  %conv169.i.i.4 = trunc i64 %87 to i32
  %div172.i.i.4 = udiv i32 %conv169.i.i.4, %14
  %conv173.i.i.4 = zext i32 %div172.i.i.4 to i64
  br label %div_u64.exit.4

div_u64.exit.4:                                   ; preds = %if.then168.i.i.4, %if.else174.i.i.4
  %dividend.addr.0.i.i.4 = phi i64 [ %conv173.i.i.4, %if.then168.i.i.4 ], [ %asmresult1.i.i.i.4, %if.else174.i.i.4 ]
  %arrayidx21.4 = getelementptr %struct.psi_group, ptr %group, i32 0, i32 6, i32 %aggregator, i32 4
  %89 = ptrtoint ptr %arrayidx21.4 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %arrayidx21.4, align 8
  %add22.4 = add i64 %90, %dividend.addr.0.i.i.4
  store i64 %add22.4, ptr %arrayidx21.4, align 8
  %arrayidx16.5 = getelementptr inbounds [6 x i64], ptr %deltas, i32 0, i32 5
  %91 = ptrtoint ptr %arrayidx16.5 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %arrayidx16.5, align 8
  %cmp164.i.i.5 = icmp ult i64 %92, 4294967296
  br i1 %cmp164.i.i.5, label %if.then168.i.i.5, label %if.else174.i.i.5, !prof !127

if.else174.i.i.5:                                 ; preds = %div_u64.exit.4
  %93 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %14, i64 %92) #19, !srcloc !145
  %asmresult1.i.i.i.5 = extractvalue { i64, i64 } %93, 1
  br label %div_u64.exit.5

if.then168.i.i.5:                                 ; preds = %div_u64.exit.4
  %conv169.i.i.5 = trunc i64 %92 to i32
  %div172.i.i.5 = udiv i32 %conv169.i.i.5, %14
  %conv173.i.i.5 = zext i32 %div172.i.i.5 to i64
  br label %div_u64.exit.5

div_u64.exit.5:                                   ; preds = %if.then168.i.i.5, %if.else174.i.i.5
  %dividend.addr.0.i.i.5 = phi i64 [ %conv173.i.i.5, %if.then168.i.i.5 ], [ %asmresult1.i.i.i.5, %if.else174.i.i.5 ]
  %arrayidx21.5 = getelementptr %struct.psi_group, ptr %group, i32 0, i32 6, i32 %aggregator, i32 5
  %94 = ptrtoint ptr %arrayidx21.5 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %arrayidx21.5, align 8
  %add22.5 = add i64 %95, %dividend.addr.0.i.i.5
  store i64 %add22.5, ptr %arrayidx21.5, align 8
  %tobool.not = icmp eq ptr %pchanged_states, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %div_u64.exit.5
  %96 = ptrtoint ptr %pchanged_states to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %changed_states.0.lcssa, ptr %pchanged_states, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %div_u64.exit.5
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %deltas) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @update_averages(ptr nocapture noundef %group, i64 noundef %now) unnamed_addr #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %avg_next_update1 = getelementptr inbounds %struct.psi_group, ptr %group, i32 0, i32 4
  %0 = ptrtoint ptr %avg_next_update1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %avg_next_update1, align 8
  %sub = sub i64 %now, %1
  %2 = load i64, ptr @psi_period, align 8
  %cmp.not = icmp ult i64 %sub, %2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = trunc i64 %2 to i32
  %cmp164.i.i = icmp ult i64 %sub, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !127

if.then168.i.i:                                   ; preds = %if.then
  %conv169.i.i = trunc i64 %sub to i32
  %div172.i.i = udiv i32 %conv169.i.i, %conv
  br label %if.end

if.else174.i.i:                                   ; preds = %if.then
  %3 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv, i64 %sub) #19, !srcloc !145
  %asmresult1.i.i.i = extractvalue { i64, i64 } %3, 1
  %extract.t54 = trunc i64 %asmresult1.i.i.i to i32
  br label %if.end

if.end:                                           ; preds = %if.else174.i.i, %if.then168.i.i, %entry
  %missed_periods.0 = phi i32 [ 0, %entry ], [ %div172.i.i, %if.then168.i.i ], [ %extract.t54, %if.else174.i.i ]
  %avg_last_update = getelementptr inbounds %struct.psi_group, ptr %group, i32 0, i32 3
  %4 = ptrtoint ptr %avg_last_update to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %avg_last_update, align 8
  %conv6 = zext i32 %missed_periods.0 to i64
  %mul7 = mul i64 %2, %conv6
  %6 = add i64 %5, %mul7
  %sub9 = sub i64 %now, %6
  store i64 %now, ptr %avg_last_update, align 8
  %total = getelementptr inbounds %struct.psi_group, ptr %group, i32 0, i32 6
  %conv21 = trunc i64 %sub9 to i32
  %tobool.not.i = icmp eq i32 %missed_periods.0, 0
  br label %for.body

for.body:                                         ; preds = %calc_avgs.exit, %if.end
  %s.056 = phi i32 [ 0, %if.end ], [ %inc, %calc_avgs.exit ]
  %arrayidx13 = getelementptr [6 x i64], ptr %total, i32 0, i32 %s.056
  %7 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %arrayidx13, align 8
  %arrayidx14 = getelementptr %struct.psi_group, ptr %group, i32 0, i32 2, i32 %s.056
  %9 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx14, align 8
  %sub15 = sub i64 %8, %10
  %conv16 = trunc i64 %sub15 to i32
  %conv17 = and i64 %sub15, 4294967295
  %cmp18 = icmp ugt i64 %conv17, %sub9
  %spec.select = select i1 %cmp18, i32 %conv21, i32 %conv16
  %conv23 = zext i32 %spec.select to i64
  %add26 = add i64 %10, %conv23
  store i64 %add26, ptr %arrayidx14, align 8
  %arrayidx27 = getelementptr %struct.psi_group, ptr %group, i32 0, i32 7, i32 %s.056
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  %11 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx27, align 4
  %call.i = tail call i32 @calc_load_n(i32 noundef %12, i32 noundef 1677, i32 noundef 0, i32 noundef %missed_periods.0) #14
  %13 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call.i, ptr %arrayidx27, align 4
  %arrayidx2.i = getelementptr i32, ptr %arrayidx27, i32 1
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx2.i, align 4
  %call3.i = tail call i32 @calc_load_n(i32 noundef %15, i32 noundef 1981, i32 noundef 0, i32 noundef %missed_periods.0) #14
  %16 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call3.i, ptr %arrayidx2.i, align 4
  %arrayidx5.i = getelementptr i32, ptr %arrayidx27, i32 2
  %17 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx5.i, align 4
  %call6.i = tail call i32 @calc_load_n(i32 noundef %18, i32 noundef 2034, i32 noundef 0, i32 noundef %missed_periods.0) #14
  %19 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call6.i, ptr %arrayidx5.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body
  %mul.i = mul nuw nsw i64 %conv23, 100
  %cmp164.i.i.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !127

if.then168.i.i.i:                                 ; preds = %if.end.i
  %conv169.i.i.i = trunc i64 %mul.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %conv21
  br label %calc_avgs.exit

if.else174.i.i.i:                                 ; preds = %if.end.i
  %20 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv21, i64 %mul.i) #19, !srcloc !145
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %20, 1
  %extract.t52.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %calc_avgs.exit

calc_avgs.exit:                                   ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t52.i, %if.else174.i.i.i ]
  %mul10.i = shl i32 %dividend.addr.0.i.i.off0.i, 11
  %21 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx27, align 4
  %mul.i.i51 = mul i32 %22, 1677
  %mul1.i.i = mul i32 %dividend.addr.0.i.i.off0.i, 759808
  %add.i.i52 = add i32 %mul.i.i51, %mul1.i.i
  %cmp.not.i.i = icmp ult i32 %mul10.i, %22
  %add2.i.i = add i32 %add.i.i52, 2047
  %spec.select.i.i = select i1 %cmp.not.i.i, i32 %add.i.i52, i32 %add2.i.i
  %div7.i.i = lshr i32 %spec.select.i.i, 11
  store i32 %div7.i.i, ptr %arrayidx27, align 4
  %arrayidx14.i = getelementptr i32, ptr %arrayidx27, i32 1
  %23 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx14.i, align 4
  %mul.i37.i = mul i32 %24, 1981
  %mul1.i38.i = mul i32 %dividend.addr.0.i.i.off0.i, 137216
  %add.i39.i = add i32 %mul.i37.i, %mul1.i38.i
  %cmp.not.i40.i = icmp ult i32 %mul10.i, %24
  %add2.i41.i = add i32 %add.i39.i, 2047
  %spec.select.i42.i = select i1 %cmp.not.i40.i, i32 %add.i39.i, i32 %add2.i41.i
  %div7.i43.i = lshr i32 %spec.select.i42.i, 11
  store i32 %div7.i43.i, ptr %arrayidx14.i, align 4
  %arrayidx17.i = getelementptr i32, ptr %arrayidx27, i32 2
  %25 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx17.i, align 4
  %mul.i44.i = mul i32 %26, 2034
  %mul1.i45.i = mul i32 %dividend.addr.0.i.i.off0.i, 28672
  %add.i46.i = add i32 %mul.i44.i, %mul1.i45.i
  %cmp.not.i47.i = icmp ult i32 %mul10.i, %26
  %add2.i48.i = add i32 %add.i46.i, 2047
  %spec.select.i49.i = select i1 %cmp.not.i47.i, i32 %add.i46.i, i32 %add2.i48.i
  %div7.i50.i = lshr i32 %spec.select.i49.i, 11
  store i32 %div7.i50.i, ptr %arrayidx17.i, align 4
  %inc = add nuw nsw i32 %s.056, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %calc_avgs.exit
  %add = add i32 %missed_periods.0, 1
  %conv4 = zext i32 %add to i64
  %mul = mul i64 %2, %conv4
  %add5 = add i64 %mul, %1
  ret i64 %add5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @psi_trigger_create(ptr noundef %group, ptr nocapture noundef readonly %buf, i32 %nbytes, i32 noundef %res) local_unnamed_addr #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %threshold_us = alloca i32, align 4
  %window_us = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %threshold_us) #14
  %0 = ptrtoint ptr %threshold_us to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %threshold_us, align 4, !annotation !122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %window_us) #14
  %1 = ptrtoint ptr %window_us to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %window_us, align 4, !annotation !122
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @psi_disabled, i32 1), ptr blockaddress(@psi_trigger_create, %if.end)) #14
          to label %cleanup107 [label %if.end], !srcloc !130

if.end:                                           ; preds = %entry
  %call5 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.5, ptr noundef nonnull %threshold_us, ptr noundef nonnull %window_us)
  %cmp = icmp eq i32 %call5, 2
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %mul = shl i32 %res, 1
  br label %if.end15

if.else:                                          ; preds = %if.end
  %call7 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.6, ptr noundef nonnull %threshold_us, ptr noundef nonnull %window_us)
  %cmp8 = icmp eq i32 %call7, 2
  br i1 %cmp8, label %if.then9, label %cleanup107

if.then9:                                         ; preds = %if.else
  %mul10 = shl i32 %res, 1
  %add11 = or i32 %mul10, 1
  br label %if.end15

if.end15:                                         ; preds = %if.then9, %if.then6
  %state.0 = phi i32 [ %mul, %if.then6 ], [ %add11, %if.then9 ]
  %cmp16 = icmp ugt i32 %state.0, 5
  br i1 %cmp16, label %cleanup107, label %if.end19

if.end19:                                         ; preds = %if.end15
  %2 = ptrtoint ptr %window_us to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %window_us, align 4
  %4 = add i32 %3, -10000001
  %5 = icmp ult i32 %4, -9500001
  br i1 %5, label %cleanup107, label %if.end24

if.end24:                                         ; preds = %if.end19
  %6 = ptrtoint ptr %threshold_us to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %threshold_us, align 4
  %cmp25 = icmp eq i32 %7, 0
  %cmp27 = icmp ugt i32 %7, %3
  %or.cond148 = select i1 %cmp25, i1 true, i1 %cmp27
  br i1 %or.cond148, label %cleanup107, label %if.end30

if.end30:                                         ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 128) #20
  %tobool32.not = icmp eq ptr %call7.i, null
  br i1 %tobool32.not, label %cleanup107, label %if.end35

if.end35:                                         ; preds = %if.end30
  %group36 = getelementptr inbounds %struct.psi_trigger, ptr %call7.i, i32 0, i32 3
  %9 = ptrtoint ptr %group36 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %group, ptr %group36, align 8
  %10 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %state.0, ptr %call7.i, align 8
  %11 = ptrtoint ptr %threshold_us to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %threshold_us, align 4
  %mul38 = mul i32 %12, 1000
  %conv = zext i32 %mul38 to i64
  %threshold = getelementptr inbounds %struct.psi_trigger, ptr %call7.i, i32 0, i32 1
  %13 = ptrtoint ptr %threshold to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv, ptr %threshold, align 8
  %14 = ptrtoint ptr %window_us to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %window_us, align 4
  %mul39 = mul i32 %15, 1000
  %conv40 = zext i32 %mul39 to i64
  %win = getelementptr inbounds %struct.psi_trigger, ptr %call7.i, i32 0, i32 6
  %16 = ptrtoint ptr %win to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv40, ptr %win, align 8
  %start_time.i = getelementptr inbounds %struct.psi_trigger, ptr %call7.i, i32 0, i32 6, i32 1
  %event = getelementptr inbounds %struct.psi_trigger, ptr %call7.i, i32 0, i32 5
  %17 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %event, align 8
  %event_wait = getelementptr inbounds %struct.psi_trigger, ptr %call7.i, i32 0, i32 4
  %18 = call ptr @memset(ptr %start_time.i, i32 0, i32 32)
  call void @__init_waitqueue_head(ptr noundef %event_wait, ptr noundef nonnull @.str.7, ptr noundef nonnull @psi_trigger_create.__key) #14
  %trigger_lock = getelementptr inbounds %struct.psi_group, ptr %group, i32 0, i32 12
  call void @mutex_lock_nested(ptr noundef %trigger_lock, i32 noundef 0) #14
  %poll_task = getelementptr inbounds %struct.psi_group, ptr %group, i32 0, i32 8
  %19 = ptrtoint ptr %poll_task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %poll_task, align 8
  %tobool47.not = icmp eq ptr %20, null
  br i1 %tobool47.not, label %if.then48, label %if.end96

if.then48:                                        ; preds = %if.end35
  %call49 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @psi_poll_worker, ptr noundef %group, i32 noundef -1, ptr noundef nonnull @.str.8) #14
  %cmp.i = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then48
  call void @kfree(ptr noundef nonnull %call7.i) #14
  br label %cleanup107.sink.split

cleanup:                                          ; preds = %if.then48
  %poll_wakeup = getelementptr inbounds %struct.psi_group, ptr %group, i32 0, i32 11
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %poll_wakeup, i32 noundef 4) #14
  %21 = ptrtoint ptr %poll_wakeup to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 0, ptr %poll_wakeup, align 4
  %call55 = call i32 @wake_up_process(ptr noundef %call49) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !146
  %22 = ptrtoint ptr %poll_task to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %call49, ptr %poll_task, align 8
  br label %if.end96

if.end96:                                         ; preds = %cleanup, %if.end35
  %node = getelementptr inbounds %struct.psi_trigger, ptr %call7.i, i32 0, i32 2
  %triggers = getelementptr inbounds %struct.psi_group, ptr %group, i32 0, i32 13
  %23 = ptrtoint ptr %triggers to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %triggers, align 4
  %call.i.i149 = call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %triggers, ptr noundef %24) #14
  br i1 %call.i.i149, label %if.end.i.i, label %list_add.exit

if.end.i.i:                                       ; preds = %if.end96
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %node, ptr %prev1.i.i, align 4
  %26 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %node, align 8
  %prev3.i.i = getelementptr inbounds %struct.psi_trigger, ptr %call7.i, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %triggers, ptr %prev3.i.i, align 4
  %28 = ptrtoint ptr %triggers to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %node, ptr %triggers, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end96
  %poll_min_period = getelementptr inbounds %struct.psi_group, ptr %group, i32 0, i32 16
  %29 = ptrtoint ptr %poll_min_period to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %poll_min_period, align 8
  %31 = ptrtoint ptr %win to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %win, align 8
  %div79.i.i151 = lshr i64 %32, 1
  %33 = call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div79.i.i151, i64 3689348814741910323) #19, !srcloc !147
  %34 = call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div79.i.i151, i64 %33) #19, !srcloc !148
  %35 = call i64 @llvm.umin.i64(i64 %30, i64 %34)
  %36 = ptrtoint ptr %poll_min_period to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %poll_min_period, align 8
  %37 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %call7.i, align 8
  %arrayidx = getelementptr %struct.psi_group, ptr %group, i32 0, i32 14, i32 %38
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %40, 1
  store i32 %inc, ptr %arrayidx, align 4
  %shl = shl nuw i32 1, %38
  %poll_states = getelementptr inbounds %struct.psi_group, ptr %group, i32 0, i32 15
  %41 = ptrtoint ptr %poll_states to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %poll_states, align 8
  %or = or i32 %42, %shl
  store i32 %or, ptr %poll_states, align 8
  br label %cleanup107.sink.split

cleanup107.sink.split:                            ; preds = %list_add.exit, %cleanup.thread
  %retval.1.ph = phi ptr [ %call49, %cleanup.thread ], [ %call7.i, %list_add.exit ]
  call void @mutex_unlock(ptr noundef %trigger_lock) #14
  br label %cleanup107

cleanup107:                                       ; preds = %cleanup107.sink.split, %if.end30, %if.end24, %if.end19, %if.end15, %if.else, %entry
  %retval.1 = phi ptr [ inttoptr (i32 -95 to ptr), %entry ], [ inttoptr (i32 -22 to ptr), %if.else ], [ inttoptr (i32 -22 to ptr), %if.end15 ], [ inttoptr (i32 -22 to ptr), %if.end19 ], [ inttoptr (i32 -22 to ptr), %if.end24 ], [ inttoptr (i32 -12 to ptr), %if.end30 ], [ %retval.1.ph, %cleanup107.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %window_us) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %threshold_us) #14
  ret ptr %retval.1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psi_poll_worker(ptr noundef %data) #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %changed_states.i = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %0 = tail call i32 @llvm.read_register.i32(metadata !110) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  tail call void @sched_set_fifo_low(ptr noundef %3) #14
  %poll_wakeup = getelementptr inbounds %struct.psi_group, ptr %data, i32 0, i32 11
  %poll_wait = getelementptr inbounds %struct.psi_group, ptr %data, i32 0, i32 10
  %trigger_lock.i = getelementptr inbounds %struct.psi_group, ptr %data, i32 0, i32 12
  %poll_states.i = getelementptr inbounds %struct.psi_group, ptr %data, i32 0, i32 15
  %polling_until.i = getelementptr inbounds %struct.psi_group, ptr %data, i32 0, i32 19
  %triggers.i.i = getelementptr inbounds %struct.psi_group, ptr %data, i32 0, i32 13
  %polling_total.i.i = getelementptr inbounds %struct.psi_group, ptr %data, i32 0, i32 17
  %arrayidx9.i.i = getelementptr %struct.psi_group, ptr %data, i32 0, i32 6, i32 1
  %poll_min_period.i.i = getelementptr inbounds %struct.psi_group, ptr %data, i32 0, i32 16
  %polling_next_update.i.i = getelementptr inbounds %struct.psi_group, ptr %data, i32 0, i32 18
  br label %while.cond

while.cond:                                       ; preds = %psi_poll_work.exit, %entry
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 646) #14
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %poll_wakeup, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !149
  call void @llvm.prefetch.p0(ptr %poll_wakeup, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i, %while.cond
  %4 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %poll_wakeup, ptr %poll_wakeup, i32 1, i32 0, ptr elementtype(i32) %poll_wakeup) #14, !srcloc !150
  %asmresult.i.i.i = extractvalue { i32, i32 } %4, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %4, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !151
  %tobool.not = icmp eq i32 %asmresult3.i.i.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end18

lor.lhs.false:                                    ; preds = %atomic_cmpxchg.exit
  %call5 = call zeroext i1 @kthread_should_stop() #14
  br i1 %call5, label %if.end18, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %5 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then
  %call7 = call i32 @prepare_to_wait_event(ptr noundef %poll_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %call.i.i29 = call zeroext i1 @__kasan_check_write(ptr noundef %poll_wakeup, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !149
  call void @llvm.prefetch.p0(ptr %poll_wakeup, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i32

do.body.i.i.i32:                                  ; preds = %do.body.i.i.i32, %for.cond
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %poll_wakeup, ptr %poll_wakeup, i32 1, i32 0, ptr elementtype(i32) %poll_wakeup) #14, !srcloc !150
  %asmresult.i.i.i30 = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i31 = icmp eq i32 %asmresult.i.i.i30, 0
  br i1 %tobool.not.i.i.i31, label %atomic_cmpxchg.exit34, label %do.body.i.i.i32

atomic_cmpxchg.exit34:                            ; preds = %do.body.i.i.i32
  %asmresult3.i.i.i33 = extractvalue { i32, i32 } %6, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !151
  %tobool10.not = icmp eq i32 %asmresult3.i.i.i33, 0
  br i1 %tobool10.not, label %lor.lhs.false11, label %for.end

lor.lhs.false11:                                  ; preds = %atomic_cmpxchg.exit34
  %call12 = call zeroext i1 @kthread_should_stop() #14
  br i1 %call12, label %for.end, label %if.end

if.end:                                           ; preds = %lor.lhs.false11
  %tobool14.not = icmp eq i32 %call7, 0
  br i1 %tobool14.not, label %cleanup, label %__out

cleanup:                                          ; preds = %if.end
  call void @schedule() #14
  br label %for.cond

for.end:                                          ; preds = %lor.lhs.false11, %atomic_cmpxchg.exit34
  call void @finish_wait(ptr noundef %poll_wait, ptr noundef nonnull %__wq_entry) #14
  br label %__out

__out:                                            ; preds = %for.end, %if.end
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %if.end18

if.end18:                                         ; preds = %__out, %lor.lhs.false, %atomic_cmpxchg.exit
  %call20 = call zeroext i1 @kthread_should_stop() #14
  br i1 %call20, label %while.end, label %if.end22

if.end22:                                         ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %changed_states.i) #14
  %7 = ptrtoint ptr %changed_states.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %changed_states.i, align 4, !annotation !122
  call void @mutex_lock_nested(ptr noundef %trigger_lock.i, i32 noundef 0) #14
  %call.i = call i64 @sched_clock() #14
  call fastcc void @collect_percpu_times(ptr noundef %data, i32 noundef 1, ptr noundef nonnull %changed_states.i) #14
  %8 = ptrtoint ptr %changed_states.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %changed_states.i, align 4
  %10 = ptrtoint ptr %poll_states.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %poll_states.i, align 8
  %and.i35 = and i32 %11, %9
  %tobool.not.i = icmp eq i32 %and.i35, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.then.i

if.then.i:                                        ; preds = %if.end22
  %12 = ptrtoint ptr %polling_until.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %polling_until.i, align 8
  %cmp.i = icmp ugt i64 %call.i, %13
  br i1 %cmp.i, label %if.then1.i, label %if.end.i

if.then1.i:                                       ; preds = %if.then.i
  %14 = ptrtoint ptr %triggers.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn21.i.i = load ptr, ptr %triggers.i.i, align 8
  %cmp.not22.i.i = icmp eq ptr %.pn21.i.i, %triggers.i.i
  br i1 %cmp.not22.i.i, label %init_triggers.exit.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i, %if.then1.i
  %.pn23.i.i = phi ptr [ %.pn.i.i, %for.body.i.i ], [ %.pn21.i.i, %if.then1.i ]
  %t.0.i.i = getelementptr i8, ptr %.pn23.i.i, i32 -16
  %15 = ptrtoint ptr %t.0.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %t.0.i.i, align 8
  %arrayidx2.i.i = getelementptr %struct.psi_group, ptr %data, i32 0, i32 6, i32 1, i32 %16
  %17 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx2.i.i, align 8
  %start_time.i.i.i = getelementptr i8, ptr %.pn23.i.i, i32 80
  %19 = ptrtoint ptr %start_time.i.i.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %call.i, ptr %start_time.i.i.i, align 8
  %start_value.i.i.i = getelementptr i8, ptr %.pn23.i.i, i32 88
  %20 = ptrtoint ptr %start_value.i.i.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %18, ptr %start_value.i.i.i, align 8
  %prev_growth1.i.i.i = getelementptr i8, ptr %.pn23.i.i, i32 96
  %21 = ptrtoint ptr %prev_growth1.i.i.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 0, ptr %prev_growth1.i.i.i, align 8
  %22 = ptrtoint ptr %.pn23.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn.i.i = load ptr, ptr %.pn23.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %triggers.i.i
  br i1 %cmp.not.i.i, label %init_triggers.exit.i, label %for.body.i.i

init_triggers.exit.i:                             ; preds = %for.body.i.i, %if.then1.i
  %23 = call ptr @memcpy(ptr %polling_total.i.i, ptr %arrayidx9.i.i, i32 48)
  %24 = ptrtoint ptr %poll_min_period.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %poll_min_period.i.i, align 8
  %add.i.i = add i64 %25, %call.i
  %26 = ptrtoint ptr %polling_next_update.i.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %add.i.i, ptr %polling_next_update.i.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %init_triggers.exit.i, %if.then.i
  %27 = ptrtoint ptr %poll_min_period.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %poll_min_period.i.i, align 8
  %mul.i = mul i64 %28, 10
  %add.i = add i64 %mul.i, %call.i
  %29 = ptrtoint ptr %polling_until.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %add.i, ptr %polling_until.i, align 8
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i, %if.end22
  %30 = ptrtoint ptr %polling_until.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %polling_until.i, align 8
  %cmp5.i = icmp ugt i64 %call.i, %31
  br i1 %cmp5.i, label %if.then6.i, label %if.end7.i

if.then6.i:                                       ; preds = %if.end3.i
  %32 = ptrtoint ptr %polling_next_update.i.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 -1, ptr %polling_next_update.i.i, align 8
  br label %psi_poll_work.exit

if.end7.i:                                        ; preds = %if.end3.i
  %33 = ptrtoint ptr %polling_next_update.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %polling_next_update.i.i, align 8
  %cmp9.not.i = icmp ult i64 %call.i, %34
  br i1 %cmp9.not.i, label %if.end13.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end7.i
  %35 = ptrtoint ptr %triggers.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn73.i.i = load ptr, ptr %triggers.i.i, align 8
  %cmp.not74.i.i = icmp eq ptr %.pn73.i.i, %triggers.i.i
  br i1 %cmp.not74.i.i, label %update_triggers.exit.i, label %for.body.i40.i

for.body.i40.i:                                   ; preds = %cleanup.i.i, %if.then10.i
  %.pn76.i.i = phi ptr [ %.pn.i44.i, %cleanup.i.i ], [ %.pn73.i.i, %if.then10.i ]
  %new_stall.0.off075.i.i = phi i1 [ %new_stall.1.off0.i.i, %cleanup.i.i ], [ false, %if.then10.i ]
  %t.0.i39.i = getelementptr i8, ptr %.pn76.i.i, i32 -16
  %36 = ptrtoint ptr %t.0.i39.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %t.0.i39.i, align 8
  %arrayidx3.i.i = getelementptr %struct.psi_group, ptr %data, i32 0, i32 17, i32 %37
  %38 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx3.i.i, align 8
  %arrayidx5.i.i = getelementptr i64, ptr %arrayidx9.i.i, i32 %37
  %40 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx5.i.i, align 8
  %cmp6.i.i = icmp eq i64 %39, %41
  br i1 %cmp6.i.i, label %cleanup.i.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body.i40.i
  %win.i.i = getelementptr i8, ptr %.pn76.i.i, i32 72
  %start_time.i.i41.i = getelementptr i8, ptr %.pn76.i.i, i32 80
  %42 = ptrtoint ptr %start_time.i.i41.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %start_time.i.i41.i, align 8
  %sub.i.i.i = sub i64 %call.i, %43
  %start_value.i.i42.i = getelementptr i8, ptr %.pn76.i.i, i32 88
  %44 = ptrtoint ptr %start_value.i.i42.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %start_value.i.i42.i, align 8
  %sub1.i.i.i = sub i64 %41, %45
  %46 = ptrtoint ptr %win.i.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %win.i.i, align 8
  %cmp.i.i.i = icmp ult i64 %47, %sub.i.i.i
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  %48 = ptrtoint ptr %start_time.i.i41.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %call.i, ptr %start_time.i.i41.i, align 8
  %49 = ptrtoint ptr %start_value.i.i42.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %41, ptr %start_value.i.i42.i, align 8
  %prev_growth1.i.i.i.i = getelementptr i8, ptr %.pn76.i.i, i32 96
  %50 = ptrtoint ptr %prev_growth1.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %sub1.i.i.i, ptr %prev_growth1.i.i.i.i, align 8
  br label %window_update.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i
  %sub3.i.i.i = sub i64 %47, %sub.i.i.i
  %prev_growth.i.i.i = getelementptr i8, ptr %.pn76.i.i, i32 96
  %51 = ptrtoint ptr %prev_growth.i.i.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %prev_growth.i.i.i, align 8
  %conv4.i.i.i = and i64 %sub3.i.i.i, 4294967295
  %mul.i.i.i = mul i64 %52, %conv4.i.i.i
  %call.i72.i.i = call i64 @div64_u64(i64 noundef %mul.i.i.i, i64 noundef %47) #14
  %add.i.i.i = add i64 %call.i72.i.i, %sub1.i.i.i
  br label %window_update.exit.i.i

window_update.exit.i.i:                           ; preds = %if.else.i.i.i, %if.then.i.i.i
  %growth.0.i.i.i = phi i64 [ %sub1.i.i.i, %if.then.i.i.i ], [ %add.i.i.i, %if.else.i.i.i ]
  %threshold.i.i = getelementptr i8, ptr %.pn76.i.i, i32 -8
  %53 = ptrtoint ptr %threshold.i.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %threshold.i.i, align 8
  %cmp9.i.i = icmp ult i64 %growth.0.i.i.i, %54
  br i1 %cmp9.i.i, label %cleanup.i.i, label %if.end11.i.i

if.end11.i.i:                                     ; preds = %window_update.exit.i.i
  %last_event_time.i.i = getelementptr i8, ptr %.pn76.i.i, i32 104
  %55 = ptrtoint ptr %last_event_time.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %last_event_time.i.i, align 8
  %57 = ptrtoint ptr %win.i.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %win.i.i, align 8
  %add.i43.i = add i64 %58, %56
  %cmp13.i.i = icmp ugt i64 %add.i43.i, %call.i
  br i1 %cmp13.i.i, label %cleanup.i.i, label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.end11.i.i
  %event.i.i = getelementptr i8, ptr %.pn76.i.i, i32 64
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %event.i.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !152
  call void @llvm.prefetch.p0(ptr %event.i.i, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i38

do.body.i.i.i38:                                  ; preds = %do.body.i.i.i38, %if.end15.i.i
  %59 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %event.i.i, i32 0, i32 1) #14, !srcloc !153
  %asmresult.i.i.i36 = extractvalue { i32, i32 } %59, 0
  %tobool.not.i.i.i37 = icmp eq i32 %asmresult.i.i.i36, 0
  br i1 %tobool.not.i.i.i37, label %__cmpxchg.exit.i.i, label %do.body.i.i.i38

__cmpxchg.exit.i.i:                               ; preds = %do.body.i.i.i38
  %asmresult1.i.i.i = extractvalue { i32, i32 } %59, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !154
  %cmp32.i.i = icmp eq i32 %asmresult1.i.i.i, 0
  br i1 %cmp32.i.i, label %if.then33.i.i, label %if.end34.i.i

if.then33.i.i:                                    ; preds = %__cmpxchg.exit.i.i
  %event_wait.i.i = getelementptr i8, ptr %.pn76.i.i, i32 12
  call void @__wake_up(ptr noundef %event_wait.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %if.then33.i.i, %__cmpxchg.exit.i.i
  %60 = ptrtoint ptr %last_event_time.i.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %call.i, ptr %last_event_time.i.i, align 8
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end34.i.i, %if.end11.i.i, %window_update.exit.i.i, %for.body.i40.i
  %new_stall.1.off0.i.i = phi i1 [ true, %if.end34.i.i ], [ %new_stall.0.off075.i.i, %for.body.i40.i ], [ true, %window_update.exit.i.i ], [ true, %if.end11.i.i ]
  %61 = ptrtoint ptr %.pn76.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pn.i44.i = load ptr, ptr %.pn76.i.i, align 8
  %cmp.not.i45.i = icmp eq ptr %.pn.i44.i, %triggers.i.i
  br i1 %cmp.not.i45.i, label %for.end.i.i, label %for.body.i40.i

for.end.i.i:                                      ; preds = %cleanup.i.i
  br i1 %new_stall.1.off0.i.i, label %if.then41.i.i, label %update_triggers.exit.i

if.then41.i.i:                                    ; preds = %for.end.i.i
  %62 = call ptr @memcpy(ptr %polling_total.i.i, ptr %arrayidx9.i.i, i32 48)
  br label %update_triggers.exit.i

update_triggers.exit.i:                           ; preds = %if.then41.i.i, %for.end.i.i, %if.then10.i
  %63 = ptrtoint ptr %poll_min_period.i.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %poll_min_period.i.i, align 8
  %add45.i.i = add i64 %64, %call.i
  %65 = ptrtoint ptr %polling_next_update.i.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %add45.i.i, ptr %polling_next_update.i.i, align 8
  br label %if.end13.i

if.end13.i:                                       ; preds = %update_triggers.exit.i, %if.end7.i
  %66 = ptrtoint ptr %polling_next_update.i.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %polling_next_update.i.i, align 8
  %sub.i = sub i64 %67, %call.i
  %call15.i = call i32 @nsecs_to_jiffies(i64 noundef %sub.i) #14
  %add16.i = add i32 %call15.i, 1
  call fastcc void @psi_schedule_poll_work(ptr noundef %data, i32 noundef %add16.i) #14
  br label %psi_poll_work.exit

psi_poll_work.exit:                               ; preds = %if.end13.i, %if.then6.i
  call void @mutex_unlock(ptr noundef %trigger_lock.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %changed_states.i) #14
  br label %while.cond

while.end:                                        ; preds = %if.end18
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @psi_trigger_destroy(ptr noundef %t) local_unnamed_addr #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %t, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %group1 = getelementptr inbounds %struct.psi_trigger, ptr %t, i32 0, i32 3
  %0 = ptrtoint ptr %group1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %group1, align 8
  %event_wait = getelementptr inbounds %struct.psi_trigger, ptr %t, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %event_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  %trigger_lock = getelementptr inbounds %struct.psi_group, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %trigger_lock, i32 noundef 0) #14
  %node = getelementptr inbounds %struct.psi_trigger, ptr %t, i32 0, i32 2
  %2 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %node, align 4
  %cmp.i.not = icmp eq ptr %3, %node
  br i1 %cmp.i.not, label %if.end76, label %if.then3

if.then3:                                         ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #14
  br i1 %call.i.i, label %if.end.i.i, label %list_del.exit

if.end.i.i:                                       ; preds = %if.then3
  %prev.i.i = getelementptr inbounds %struct.psi_trigger, ptr %t, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then3
  %10 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.psi_trigger, ptr %t, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %12 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %t, align 8
  %arrayidx = getelementptr %struct.psi_group, ptr %1, i32 0, i32 14, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %dec = add i32 %15, -1
  store i32 %dec, ptr %arrayidx, align 4
  %16 = load i32, ptr %t, align 8
  %arrayidx7 = getelementptr %struct.psi_group, ptr %1, i32 0, i32 14, i32 %16
  %17 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq i32 %18, 0
  br i1 %tobool8.not, label %if.then9, label %if.end11

if.then9:                                         ; preds = %list_del.exit
  %shl = shl nuw i32 1, %16
  %neg = xor i32 %shl, -1
  %poll_states = getelementptr inbounds %struct.psi_group, ptr %1, i32 0, i32 15
  %19 = ptrtoint ptr %poll_states to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %poll_states, align 8
  %and = and i32 %20, %neg
  store i32 %and, ptr %poll_states, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %list_del.exit
  %triggers = getelementptr inbounds %struct.psi_group, ptr %1, i32 0, i32 13
  %21 = ptrtoint ptr %triggers to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn115 = load ptr, ptr %triggers, align 8
  %cmp.not116 = icmp eq ptr %.pn115, %triggers
  br i1 %cmp.not116, label %for.end, label %for.body

for.body:                                         ; preds = %for.body, %if.end11
  %.pn118 = phi ptr [ %.pn, %for.body ], [ %.pn115, %if.end11 ]
  %period.0117 = phi i64 [ %26, %for.body ], [ -1, %if.end11 ]
  %win = getelementptr i8, ptr %.pn118, i32 72
  %22 = ptrtoint ptr %win to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %win, align 8
  %div79.i.i114 = lshr i64 %23, 1
  %24 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div79.i.i114, i64 3689348814741910323) #19, !srcloc !147
  %25 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div79.i.i114, i64 %24) #19, !srcloc !148
  %26 = tail call i64 @llvm.umin.i64(i64 %period.0117, i64 %25)
  %27 = ptrtoint ptr %.pn118 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn = load ptr, ptr %.pn118, align 8
  %cmp.not = icmp eq ptr %.pn, %triggers
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end11
  %period.0.lcssa = phi i64 [ -1, %if.end11 ], [ %26, %for.body ]
  %poll_min_period = getelementptr inbounds %struct.psi_group, ptr %1, i32 0, i32 16
  %28 = ptrtoint ptr %poll_min_period to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %period.0.lcssa, ptr %poll_min_period, align 8
  %poll_states23 = getelementptr inbounds %struct.psi_group, ptr %1, i32 0, i32 15
  %29 = ptrtoint ptr %poll_states23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %poll_states23, align 8
  %cmp24 = icmp eq i32 %30, 0
  br i1 %cmp24, label %if.then25, label %if.end76

if.then25:                                        ; preds = %for.end
  %polling_until = getelementptr inbounds %struct.psi_group, ptr %1, i32 0, i32 19
  %31 = ptrtoint ptr %polling_until to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 0, ptr %polling_until, align 8
  %dep_map = getelementptr inbounds %struct.psi_group, ptr %1, i32 0, i32 12, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #14
  %tobool28.not = icmp eq i32 %call.i, 0
  br i1 %tobool28.not, label %land.lhs.true, label %do.end

land.lhs.true:                                    ; preds = %if.then25
  %call29 = tail call i32 @debug_lockdep_rcu_enabled() #14
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %do.end, label %land.lhs.true31

land.lhs.true31:                                  ; preds = %land.lhs.true
  %.b113 = load i1, ptr @psi_trigger_destroy.__warned, align 1
  br i1 %.b113, label %do.end, label %if.then33

if.then33:                                        ; preds = %land.lhs.true31
  store i1 true, ptr @psi_trigger_destroy.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1194, ptr noundef nonnull @.str.9) #14
  br label %do.end

do.end:                                           ; preds = %if.then33, %land.lhs.true31, %land.lhs.true, %if.then25
  %poll_task = getelementptr inbounds %struct.psi_group, ptr %1, i32 0, i32 8
  %32 = ptrtoint ptr %poll_task to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %poll_task, align 8
  store volatile ptr null, ptr %poll_task, align 8
  %poll_timer = getelementptr inbounds %struct.psi_group, ptr %1, i32 0, i32 9
  %call74 = tail call i32 @del_timer(ptr noundef %poll_timer) #14
  br label %if.end76

if.end76:                                         ; preds = %do.end, %for.end, %if.end
  %task_to_destroy.1 = phi ptr [ null, %if.end ], [ %33, %do.end ], [ null, %for.end ]
  tail call void @mutex_unlock(ptr noundef %trigger_lock) #14
  tail call void @synchronize_rcu() #14
  %tobool78.not = icmp eq ptr %task_to_destroy.1, null
  br i1 %tobool78.not, label %if.end81, label %if.then79

if.then79:                                        ; preds = %if.end76
  %call80 = tail call i32 @kthread_stop(ptr noundef nonnull %task_to_destroy.1) #14
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %if.end76
  tail call void @kfree(ptr noundef nonnull %t) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end81, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psi_trigger_poll(ptr noundef %trigger_ptr, ptr noundef %file, ptr noundef %wait) local_unnamed_addr #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @psi_disabled, i32 1), ptr blockaddress(@psi_trigger_poll, %if.end)) #14
          to label %cleanup [label %if.end], !srcloc !130

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %trigger_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %trigger_ptr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !155
  %tobool9.not = icmp eq ptr %1, null
  br i1 %tobool9.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end
  %event_wait = getelementptr inbounds %struct.psi_trigger, ptr %1, i32 0, i32 4
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %poll_wait.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end11
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %event_wait, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %poll_wait.exit, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true.i
  tail call void %3(ptr noundef %file, ptr noundef nonnull %event_wait, ptr noundef nonnull %wait) #14
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i, %if.end11
  %event = getelementptr inbounds %struct.psi_trigger, ptr %1, i32 0, i32 5
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !156
  tail call void @llvm.prefetch.p0(ptr %event, i32 1, i32 3, i32 1) #14
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i, %poll_wait.exit
  %4 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %event, i32 1, i32 0) #14, !srcloc !153
  %asmresult.i = extractvalue { i32, i32 } %4, 0
  %tobool.not.i38 = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i38, label %__cmpxchg.exit, label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %4, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !157
  %cmp = icmp eq i32 %asmresult1.i, 1
  %spec.select = select i1 %cmp, i32 327, i32 325
  br label %cleanup

cleanup:                                          ; preds = %__cmpxchg.exit, %if.end, %entry
  %retval.0 = phi i32 [ %spec.select, %__cmpxchg.exit ], [ 335, %if.end ], [ 335, %entry ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @psi_proc_init() #0 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @psi_enable, align 1, !range !120
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call ptr @proc_mkdir(ptr noundef nonnull @.str.34, ptr noundef null) #14
  %call1 = tail call ptr @proc_create(ptr noundef nonnull @.str.35, i16 noundef zeroext 438, ptr noundef null, ptr noundef nonnull @psi_io_proc_ops) #14
  %call2 = tail call ptr @proc_create(ptr noundef nonnull @.str.36, i16 noundef zeroext 438, ptr noundef null, ptr noundef nonnull @psi_memory_proc_ops) #14
  %call3 = tail call ptr @proc_create(ptr noundef nonnull @.str.37, i16 noundef zeroext 438, ptr noundef null, ptr noundef nonnull @psi_cpu_proc_ops) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @poll_timer_fn(ptr noundef %t) #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %poll_wakeup = getelementptr i8, ptr %t, i32 100
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %poll_wakeup, i32 noundef 4) #14
  %0 = ptrtoint ptr %poll_wakeup to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 1, ptr %poll_wakeup, align 4
  %poll_wait = getelementptr i8, ptr %t, i32 48
  tail call void @__wake_up(ptr noundef %poll_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk_deferred(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsecs_to_jiffies(i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @psi_schedule_poll_work(ptr noundef %group, i32 noundef %delay) unnamed_addr #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %poll_timer = getelementptr inbounds %struct.psi_group, ptr %group, i32 0, i32 9
  %pprev.i.i = getelementptr inbounds %struct.psi_group, ptr %group, i32 0, i32 9, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !110) #14
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !158
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %rcu_read_lock.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %rcu_read_lock.exit, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %rcu_read_lock.exit, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true2.i
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 696, ptr noundef nonnull @.str.30) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i, %land.lhs.true.i, %if.end
  %poll_task = getelementptr inbounds %struct.psi_group, ptr %group, i32 0, i32 8
  %6 = ptrtoint ptr %poll_task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %poll_task, align 8
  %call2 = tail call i32 @rcu_read_lock_held() #14
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %do.end11

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #14
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.end11, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b22 = load i1, ptr @psi_schedule_poll_work.__warned, align 1
  br i1 %.b22, label %do.end11, label %if.then8

if.then8:                                         ; preds = %land.lhs.true6
  store i1 true, ptr @psi_schedule_poll_work.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 586, ptr noundef nonnull @.str.28) #14
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %land.lhs.true6, %land.lhs.true, %rcu_read_lock.exit
  %tobool13.not = icmp eq ptr %7, null
  br i1 %tobool13.not, label %if.end19, label %if.then16, !prof !139

if.then16:                                        ; preds = %do.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %8, %delay
  %call18 = tail call i32 @mod_timer(ptr noundef %poll_timer, i32 noundef %add) #14
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %do.end11
  %call.i23 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i23, label %rcu_read_unlock.exit, label %land.lhs.true.i26

land.lhs.true.i26:                                ; preds = %if.end19
  %call1.i24 = tail call i32 @debug_lockdep_rcu_enabled() #14
  %tobool.not.i25 = icmp eq i32 %call1.i24, 0
  br i1 %tobool.not.i25, label %rcu_read_unlock.exit, label %land.lhs.true2.i28

land.lhs.true2.i28:                               ; preds = %land.lhs.true.i26
  %.b4.i27 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i27, label %rcu_read_unlock.exit, label %if.then.i29

if.then.i29:                                      ; preds = %land.lhs.true2.i28
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 724, ptr noundef nonnull @.str.31) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i29, %land.lhs.true2.i28, %land.lhs.true.i26, %if.end19
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !159
  %9 = tail call i32 @llvm.read_register.i32(metadata !110) #14
  %and.i.i.i.i.i30 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i30 to ptr
  %preempt_count.i.i.i.i31 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i31, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i31, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_spin_rq_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_pin_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_unpin_lock(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_spin_rq_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @calc_load_n(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_set_fifo_low(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psi_io_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %0 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_mode.i, align 8
  %and.i = and i32 %1, 2
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call zeroext i1 @capable(i32 noundef 24) #14
  br i1 %call.i, label %if.end.i, label %psi_open.exit

if.end.i:                                         ; preds = %land.lhs.true.i, %entry
  %call1.i = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @psi_io_show, ptr noundef null) #14
  br label %psi_open.exit

psi_open.exit:                                    ; preds = %if.end.i, %land.lhs.true.i
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ -1, %land.lhs.true.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psi_io_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %nbytes, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @psi_write(ptr noundef %file, ptr noundef %user_buf, i32 noundef %nbytes, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psi_fop_release(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  tail call void @psi_trigger_destroy(ptr noundef %3)
  %call = tail call i32 @single_release(ptr noundef %inode, ptr noundef %file) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psi_fop_poll(ptr noundef %file, ptr noundef %wait) #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @psi_disabled, i32 1), ptr blockaddress(@psi_fop_poll, %if.end.i)) #14
          to label %psi_trigger_poll.exit [label %if.end.i], !srcloc !130

if.end.i:                                         ; preds = %entry
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !155
  %tobool9.not.i = icmp eq ptr %3, null
  br i1 %tobool9.not.i, label %psi_trigger_poll.exit, label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i
  %event_wait.i = getelementptr inbounds %struct.psi_trigger, ptr %3, i32 0, i32 4
  %tobool.not.i.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i.i, label %poll_wait.exit.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.end11.i
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wait, align 4
  %tobool1.not.i.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i.i, label %poll_wait.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  tail call void %5(ptr noundef %file, ptr noundef nonnull %event_wait.i, ptr noundef nonnull %wait) #14
  br label %poll_wait.exit.i

poll_wait.exit.i:                                 ; preds = %if.then.i.i, %land.lhs.true.i.i, %if.end11.i
  %event.i = getelementptr inbounds %struct.psi_trigger, ptr %3, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !156
  tail call void @llvm.prefetch.p0(ptr %event.i, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i, %poll_wait.exit.i
  %6 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %event.i, i32 1, i32 0) #14, !srcloc !153
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i38.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i38.i, label %__cmpxchg.exit.i, label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %6, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !157
  %cmp.i = icmp eq i32 %asmresult1.i.i, 1
  %spec.select.i = select i1 %cmp.i, i32 327, i32 325
  br label %psi_trigger_poll.exit

psi_trigger_poll.exit:                            ; preds = %__cmpxchg.exit.i, %if.end.i, %entry
  %retval.0.i = phi i32 [ %spec.select.i, %__cmpxchg.exit.i ], [ 335, %if.end.i ], [ 335, %entry ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psi_io_show(ptr noundef %m, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @psi_show(ptr noundef %m, ptr noundef nonnull @psi_system, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psi_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %nbytes, i32 noundef %res) unnamed_addr #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #14
  %0 = call ptr @memset(ptr %buf, i32 255, i32 32)
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @psi_disabled, i32 1), ptr blockaddress(@psi_write, %if.end)) #14
          to label %cleanup [label %if.end], !srcloc !130

if.end:                                           ; preds = %entry
  %tobool4.not = icmp eq i32 %nbytes, 0
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %1 = tail call i32 @llvm.umin.i32(i32 %nbytes, i32 32)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %1, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.40, i32 noundef 156) #14
  %call.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.then11.i.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.end6
  %2 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %1, i32 -1226833920) #19, !srcloc !160
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %if.then11.i.i, !prof !127

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %1) #14
  %3 = call i32 @llvm.read_register.i32(metadata !110) #14
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !161
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !162
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !163
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %1) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #14, !srcloc !162
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !163
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end11, label %if.then11.i.i, !prof !127

if.then11.i.i:                                    ; preds = %if.end.i.i, %land.lhs.true.i.i, %if.end6
  %res.0.i.i62 = phi i32 [ %call1.i.i.i, %if.end.i.i ], [ %1, %if.end6 ], [ %1, %land.lhs.true.i.i ]
  %sub.i.i = sub i32 %1, %res.0.i.i62
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i62)
  br label %cleanup

if.end11:                                         ; preds = %if.end.i.i
  %sub = add nsw i32 %1, -1
  %arrayidx = getelementptr [32 x i8], ptr %buf, i32 0, i32 %sub
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx, align 1
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.seq_file, ptr %9, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  %private = getelementptr inbounds %struct.seq_file, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private, align 8
  %tobool12.not = icmp eq ptr %11, null
  br i1 %tobool12.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end11
  call void @mutex_unlock(ptr noundef %lock) #14
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %call17 = call ptr @psi_trigger_create(ptr noundef nonnull @psi_system, ptr noundef nonnull %buf, i32 undef, i32 noundef %res)
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %do.end27

if.then19:                                        ; preds = %if.end15
  call void @mutex_unlock(ptr noundef %lock) #14
  %12 = ptrtoint ptr %call17 to i32
  br label %cleanup

do.end27:                                         ; preds = %if.end15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !164
  %13 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %call17, ptr %private, align 8
  call void @mutex_unlock(ptr noundef %lock) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %if.then19, %if.then13, %if.then11.i.i, %if.end, %entry
  %retval.0 = phi i32 [ -16, %if.then13 ], [ %12, %if.then19 ], [ %nbytes, %do.end27 ], [ -22, %if.end ], [ -95, %entry ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psi_memory_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %0 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_mode.i, align 8
  %and.i = and i32 %1, 2
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call zeroext i1 @capable(i32 noundef 24) #14
  br i1 %call.i, label %if.end.i, label %psi_open.exit

if.end.i:                                         ; preds = %land.lhs.true.i, %entry
  %call1.i = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @psi_memory_show, ptr noundef null) #14
  br label %psi_open.exit

psi_open.exit:                                    ; preds = %if.end.i, %land.lhs.true.i
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ -1, %land.lhs.true.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psi_memory_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %nbytes, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @psi_write(ptr noundef %file, ptr noundef %user_buf, i32 noundef %nbytes, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psi_memory_show(ptr noundef %m, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @psi_show(ptr noundef %m, ptr noundef nonnull @psi_system, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psi_cpu_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %0 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_mode.i, align 8
  %and.i = and i32 %1, 2
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call zeroext i1 @capable(i32 noundef 24) #14
  br i1 %call.i, label %if.end.i, label %psi_open.exit

if.end.i:                                         ; preds = %land.lhs.true.i, %entry
  %call1.i = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @psi_cpu_show, ptr noundef null) #14
  br label %psi_open.exit

psi_open.exit:                                    ; preds = %if.end.i, %land.lhs.true.i
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ -1, %land.lhs.true.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psi_cpu_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %nbytes, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @psi_write(ptr noundef %file, ptr noundef %user_buf, i32 noundef %nbytes, i32 noundef 2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psi_cpu_show(ptr noundef %m, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @psi_show(ptr noundef %m, ptr noundef nonnull @psi_system, i32 noundef 2)
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nounwind readonly willreturn }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind readnone }
attributes #20 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !14, !16, !18, !20, !22, !24, !25, !27, !29, !30, !32, !34, !36, !38, !39, !40, !42, !43, !45, !46, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !64, !65, !67, !69, !70, !71, !72, !74, !75, !77, !78, !80, !81, !82, !84, !85, !87, !88, !89, !91, !93, !95, !97, !99, !101, !102, !104, !106, !108}
!llvm.named.register.sp = !{!110}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @psi_disabled, !1, !"psi_disabled", i1 false, i1 false}
!1 = !{!"../kernel/sched/psi.c", i32 157, i32 1}
!2 = !{ptr @psi_cgroups_enabled, !3, !"psi_cgroups_enabled", i1 false, i1 false}
!3 = !{!"../kernel/sched/psi.c", i32 158, i32 1}
!4 = !{ptr @__setup_setup_psi, !5, !"__setup_setup_psi", i1 false, i1 false}
!5 = !{!"../kernel/sched/psi.c", i32 169, i32 1}
!6 = !{ptr @psi_system, !7, !"psi_system", i1 false, i1 false}
!7 = !{!"../kernel/sched/psi.c", i32 187, i32 18}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../kernel/sched/psi.c", i32 977, i32 2}
!10 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../kernel/sched/psi.c", i32 1074, i32 17}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../kernel/sched/psi.c", i32 1075, i32 14}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../kernel/sched/psi.c", i32 1075, i32 23}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../kernel/sched/psi.c", i32 1096, i32 18}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../kernel/sched/psi.c", i32 1098, i32 23}
!22 = !{ptr @psi_trigger_create.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../kernel/sched/psi.c", i32 1126, i32 2}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../kernel/sched/psi.c", i32 1133, i32 10}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../kernel/sched/psi.c", i32 1192, i32 22}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @__initcall__kmod_psi__517_1395_psi_proc_init6, !31, !"__initcall__kmod_psi__517_1395_psi_proc_init6", i1 false, i1 false}
!31 = !{!"../kernel/sched/psi.c", i32 1395, i32 1}
!32 = !{ptr @psi_enable, !33, !"psi_enable", i1 false, i1 false}
!33 = !{!"../kernel/sched/psi.c", i32 161, i32 13}
!34 = !{ptr @psi_period, !35, !"psi_period", i1 false, i1 false}
!35 = !{!"../kernel/sched/psi.c", i32 183, i32 12}
!36 = !{ptr @__pcpu_unique_system_group_pcpu, !37, !"__pcpu_unique_system_group_pcpu", i1 false, i1 false}
!37 = !{!"../kernel/sched/psi.c", i32 186, i32 8}
!38 = !{ptr @system_group_pcpu, !37, !"system_group_pcpu", i1 false, i1 false}
!39 = !{ptr @__setup_str_setup_psi, !5, !"__setup_str_setup_psi", i1 false, i1 false}
!40 = !{ptr @group_init.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../kernel/sched/psi.c", i32 200, i32 3}
!42 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @group_init.__key.11, !44, !"__key", i1 false, i1 false}
!44 = !{!"../kernel/sched/psi.c", i32 203, i32 2}
!45 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @group_init.__key.13, !44, !"__key", i1 false, i1 false}
!47 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @group_init.__key.15, !49, !"__key", i1 false, i1 false}
!49 = !{!"../kernel/sched/psi.c", i32 204, i32 2}
!50 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @group_init.__key.17, !52, !"__key", i1 false, i1 false}
!52 = !{!"../kernel/sched/psi.c", i32 206, i32 2}
!53 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @group_init.__key.19, !55, !"__key", i1 false, i1 false}
!55 = !{!"../kernel/sched/psi.c", i32 214, i32 2}
!56 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @group_init.__key.21, !58, !"__key", i1 false, i1 false}
!58 = !{!"../kernel/sched/psi.c", i32 215, i32 2}
!59 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../kernel/sched/psi.c", i32 791, i32 3}
!62 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @psi_flags_change._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @psi_flags_change._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = distinct !{null, !66, !"psi_bug", i1 false, i1 false}
!66 = !{!"../kernel/sched/psi.c", i32 155, i32 12}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../kernel/sched/psi.c", i32 721, i32 4}
!69 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @psi_group_change._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @psi_group_change._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!74 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!75 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!76 = !{!"../kernel/sched/psi.c", i32 586, i32 9}
!77 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!80 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!82 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!83 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!84 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!85 = distinct !{null, !86, !"__already_done", i1 false, i1 false}
!86 = !{!"../kernel/sched/sched.h", i32 1545, i32 2}
!87 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../kernel/sched/psi.c", i32 1388, i32 14}
!91 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../kernel/sched/psi.c", i32 1389, i32 15}
!93 = !{ptr @.str.36, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../kernel/sched/psi.c", i32 1390, i32 15}
!95 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../kernel/sched/psi.c", i32 1391, i32 15}
!97 = !{ptr @psi_io_proc_ops, !98, !"psi_io_proc_ops", i1 false, i1 false}
!98 = !{!"../kernel/sched/psi.c", i32 1358, i32 30}
!99 = distinct !{null, !100, !"__already_done", i1 false, i1 false}
!100 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!101 = distinct !{null, !100, !"<string literal>", i1 false, i1 false}
!102 = distinct !{null, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!104 = !{ptr @.str.40, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!106 = !{ptr @psi_memory_proc_ops, !107, !"psi_memory_proc_ops", i1 false, i1 false}
!107 = !{!"../kernel/sched/psi.c", i32 1367, i32 30}
!108 = !{ptr @psi_cpu_proc_ops, !109, !"psi_cpu_proc_ops", i1 false, i1 false}
!109 = !{!"../kernel/sched/psi.c", i32 1376, i32 30}
!110 = !{!"sp"}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{i8 0, i8 2}
!121 = !{i64 2148937752, i64 2148937757, i64 2148937770, i64 2148937814, i64 2148937848, i64 2148937869}
!122 = !{!"auto-init"}
!123 = !{i64 2150114383}
!124 = !{i64 2150119317}
!125 = !{i64 2150141035}
!126 = !{i64 2150145929}
!127 = !{!"branch_weights", i32 2000, i32 1}
!128 = !{i64 2150222456}
!129 = !{i64 2150222781}
!130 = !{i64 2148938155, i64 2148938160, i64 2148938181, i64 2148938225, i64 2148938259, i64 2148938280}
!131 = !{i64 786919}
!132 = !{i64 784622}
!133 = !{i64 784432}
!134 = !{i64 2158545875}
!135 = !{i64 2158553438}
!136 = !{i64 741367, i64 741394, i64 741416, i64 741444}
!137 = !{i64 741775, i64 741802, i64 741835, i64 741856, i64 741883, i64 741909}
!138 = !{i64 784187, i64 784248}
!139 = !{!"branch_weights", i32 1, i32 2000}
!140 = !{i64 787204}
!141 = !{i64 2158498626}
!142 = !{i64 2158498468}
!143 = !{i64 2158498796}
!144 = !{i64 2150222131}
!145 = !{i64 2148226911, i64 2148227191, i64 2148227525, i64 2148227859}
!146 = !{i64 2158566823}
!147 = !{i64 741250, i64 741277}
!148 = !{i64 741590, i64 741617, i64 741651, i64 741672}
!149 = !{i64 2148482334}
!150 = !{i64 865020, i64 865044, i64 865065, i64 865082, i64 865099}
!151 = !{i64 2148482560}
!152 = !{i64 2158510205}
!153 = !{i64 889979, i64 890000, i64 890023, i64 890042, i64 890061}
!154 = !{i64 2158510606}
!155 = !{i64 2158591401}
!156 = !{i64 2158592519}
!157 = !{i64 2158592920}
!158 = !{i64 2149371808}
!159 = !{i64 2149372074}
!160 = !{i64 2152233679, i64 2152233704}
!161 = !{i64 4729234}
!162 = !{i64 4729431}
!163 = !{i64 2152214664}
!164 = !{i64 2158597016}
